// Harness for llama.cpp's add.comp.
//
// Replicates test-backend-ops case:
//   ADD(type=f32, ne=[4096,1,1,1], nr=[1,512,1,1])
//
//   src0 (a):  shape [4096, 512, 1, 1]   (output shape)
//   src1 (b):  shape [4096, 1,   1, 1]   (broadcast along dim 1)
//   dst  (d):  shape [4096, 512, 1, 1]   (= src0 shape)
//
// Each output element does: d[i,j] = a[i,j] + b[i,0]   — bandwidth-bound.

use std::sync::Arc;
use std::time::Instant;

use vulkano::buffer::{Buffer, BufferContents, BufferCreateInfo, BufferUsage};
use vulkano::command_buffer::allocator::StandardCommandBufferAllocator;
use vulkano::command_buffer::{AutoCommandBufferBuilder, CommandBufferUsage};
use vulkano::descriptor_set::allocator::StandardDescriptorSetAllocator;
use vulkano::descriptor_set::{DescriptorSet, WriteDescriptorSet};
use vulkano::device::{Device, DeviceCreateInfo, DeviceFeatures, QueueCreateInfo, QueueFlags};
use vulkano::instance::{Instance, InstanceCreateFlags, InstanceCreateInfo, InstanceExtensions};
use vulkano::memory::allocator::{AllocationCreateInfo, MemoryTypeFilter, StandardMemoryAllocator};
use vulkano::pipeline::compute::ComputePipelineCreateInfo;
use vulkano::pipeline::layout::PipelineDescriptorSetLayoutCreateInfo;
use vulkano::pipeline::{
    ComputePipeline, Pipeline, PipelineBindPoint, PipelineLayout, PipelineShaderStageCreateInfo,
};
use vulkano::shader::SpecializationConstant;
use vulkano::sync::{self, GpuFuture};
use vulkano::VulkanLibrary;

mod cs {
    vulkano_shaders::shader! {
        ty: "compute",
        path: "shaders/add.comp",
        include: ["shaders"],
        define: [
            ("A_TYPE",    "float"),
            ("B_TYPE",    "float"),
            ("D_TYPE",    "float"),
            ("FLOAT_TYPE","float"),
            ("ADD_RMS",   "0"),
        ],
        vulkan_version: "1.2",
    }
}

#[derive(Clone, Copy, BufferContents)]
#[repr(C)]
struct PushConstants {
    ne: u32,
    // src0 (a)
    ne00: u32, ne01: u32, ne02: u32, ne03: u32,
    nb00: u32, nb01: u32, nb02: u32, nb03: u32,
    // src1 (b)
    ne10: u32, ne11: u32, ne12: u32, ne13: u32,
    nb10: u32, nb11: u32, nb12: u32, nb13: u32,
    // dst (d)
    ne20: u32, ne21: u32, ne22: u32, ne23: u32,
    nb20: u32, nb21: u32, nb22: u32, nb23: u32,
    misalign_offsets: u32,
    param1: f32,
    param2: f32,
    param3: i32,
}

fn main() {
    // ------------------------------------------------------------------ Vulkan setup
    let library = VulkanLibrary::new().expect("no Vulkan library");
    let instance = Instance::new(
        library,
        InstanceCreateInfo {
            flags: InstanceCreateFlags::ENUMERATE_PORTABILITY,
            enabled_extensions: InstanceExtensions {
                khr_portability_enumeration: true,
                ..Default::default()
            },
            ..Default::default()
        },
    )
    .unwrap();

    let physical = instance.enumerate_physical_devices().unwrap().next().unwrap();
    println!("device: {}", physical.properties().device_name);

    let queue_family_index = physical
        .queue_family_properties()
        .iter()
        .position(|q| q.queue_flags.contains(QueueFlags::COMPUTE))
        .unwrap() as u32;

    // generic_binary_head.glsl requires 16-bit storage extension at the shader level.
    // We don't actually use any 16-bit types in our config, but enabling the feature
    // keeps the validator happy when the SPIR-V declares the capability.
    let enabled_features = DeviceFeatures {
        storage_buffer16_bit_access: true,
        uniform_and_storage_buffer16_bit_access: true,
        ..DeviceFeatures::empty()
    };

    let (device, mut queues) = Device::new(
        physical,
        DeviceCreateInfo {
            queue_create_infos: vec![QueueCreateInfo { queue_family_index, ..Default::default() }],
            enabled_features,
            ..Default::default()
        },
    )
    .unwrap();
    let queue = queues.next().unwrap();

    // ------------------------------------------------------------------ Pipeline
    let shader = cs::load(device.clone()).unwrap();

    // Spec constant 0: norepeat=false (we are broadcasting, so we hit the fastmod path).
    let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
    spec.insert(0, SpecializationConstant::Bool(false));

    let entry = shader.specialize(spec).unwrap().entry_point("main").unwrap();
    let stage = PipelineShaderStageCreateInfo::new(entry);

    let layout = PipelineLayout::new(
        device.clone(),
        PipelineDescriptorSetLayoutCreateInfo::from_stages([&stage])
            .into_pipeline_layout_create_info(device.clone())
            .unwrap(),
    )
    .unwrap();

    let pipeline = ComputePipeline::new(
        device.clone(),
        None,
        ComputePipelineCreateInfo::stage_layout(stage, layout),
    )
    .unwrap();

    // ------------------------------------------------------------------ Problem
    // src0 = [4096, 512, 1, 1], src1 = [4096, 1, 1, 1] (broadcast), dst = src0 shape.
    let n0: u32 = 4096;
    let n1: u32 = 512;

    let a_len = (n0 * n1) as usize;       // 2,097,152
    let b_len = n0 as usize;              // 4,096
    let d_len = a_len;

    // Deterministic f32 inputs (values don't affect timing; we just want non-zero
    // memory traffic and a way to spot-check that the output is plausible).
    let a_data: Vec<f32> = (0..a_len).map(|i| (i as f32) * 1e-4).collect();
    let b_data: Vec<f32> = (0..b_len).map(|i| -(i as f32) * 1e-4).collect();

    let mem = Arc::new(StandardMemoryAllocator::new_default(device.clone()));
    let mk = |usage, iter| {
        Buffer::from_iter(
            mem.clone(),
            BufferCreateInfo { usage, ..Default::default() },
            AllocationCreateInfo {
                memory_type_filter: MemoryTypeFilter::PREFER_DEVICE
                    | MemoryTypeFilter::HOST_SEQUENTIAL_WRITE,
                ..Default::default()
            },
            iter,
        )
        .unwrap()
    };
    let a_buf = mk(BufferUsage::STORAGE_BUFFER, a_data.iter().copied());
    let b_buf = mk(BufferUsage::STORAGE_BUFFER, b_data.iter().copied());
    let d_buf = Buffer::from_iter(
        mem.clone(),
        BufferCreateInfo { usage: BufferUsage::STORAGE_BUFFER, ..Default::default() },
        AllocationCreateInfo {
            memory_type_filter: MemoryTypeFilter::PREFER_DEVICE
                | MemoryTypeFilter::HOST_RANDOM_ACCESS,
            ..Default::default()
        },
        (0..d_len).map(|_| 0.0f32),
    )
    .unwrap();
    // (No partial_sums binding: ADD_RMS=0 makes it unused, so SPIR-V reflection
    // pruned it from the descriptor set layout.)

    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(
        device.clone(),
        Default::default(),
    ));
    let set = DescriptorSet::new(
        ds_alloc,
        pipeline.layout().set_layouts().get(0).unwrap().clone(),
        [
            WriteDescriptorSet::buffer(0, a_buf.clone()),
            WriteDescriptorSet::buffer(1, b_buf.clone()),
            WriteDescriptorSet::buffer(2, d_buf.clone()),
        ],
        [],
    )
    .unwrap();

    let push = PushConstants {
        ne: n0 * n1,
        // src0: [n0, n1, 1, 1], element-stride (in floats)
        ne00: n0, ne01: n1, ne02: 1, ne03: 1,
        nb00: 1,  nb01: n0, nb02: n0 * n1, nb03: n0 * n1,
        // src1: [n0, 1, 1, 1] (broadcast over dim 1)
        ne10: n0, ne11: 1,  ne12: 1, ne13: 1,
        nb10: 1,  nb11: n0, nb12: n0,    nb13: n0,
        // dst: same as src0
        ne20: n0, ne21: n1, ne22: 1, ne23: 1,
        nb20: 1,  nb21: n0, nb22: n0 * n1, nb23: n0 * n1,
        misalign_offsets: 0,
        param1: 0.0,
        param2: 0.0,
        param3: 0,
    };

    // Dispatch grid mirrors ggml-vulkan.cpp's generic op logic at line 10245:
    //   ne > 262144  ->  elements = (512, 512, CEIL_DIV(ne, 262144))
    //   wg_denoms = (512, 1, 1) so workgroups = (1, 512, CEIL_DIV(ne, 262144))
    let ne = push.ne;
    let groups = if ne > 262144 {
        [1u32, 512, (ne + 262143) / 262144]
    } else if ne > 512 {
        [1u32, (ne + 511) / 512, 1]
    } else {
        [(ne + 511) / 512, 1, 1]  // rounded up to one wg
    };
    println!(
        "shape: a=[{},{},1,1]  b=[{},1,1,1]  d=[{},{},1,1]  ne={}",
        n0, n1, n0, n0, n1, ne
    );
    println!("dispatch: workgroups=({},{},{})", groups[0], groups[1], groups[2]);

    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(
        device.clone(),
        Default::default(),
    ));

    // Pack N_INNER dispatches into a single command buffer per submission. This
    // amortizes the vkQueueSubmit + vkWaitForFences round-trip across N_INNER
    // dispatches and is what test-backend-ops effectively does by building a
    // ggml graph with `n_runs` copies of the same op.
    const N_INNER: u32 = 64;

    let run_batch = |n_inner: u32| {
        let mut builder = AutoCommandBufferBuilder::primary(
            cb_alloc.clone(),
            queue.queue_family_index(),
            CommandBufferUsage::OneTimeSubmit,
        )
        .unwrap();
        unsafe {
            builder
                .bind_pipeline_compute(pipeline.clone())
                .unwrap()
                .bind_descriptor_sets(
                    PipelineBindPoint::Compute,
                    pipeline.layout().clone(),
                    0,
                    set.clone(),
                )
                .unwrap()
                .push_constants(pipeline.layout().clone(), 0, push)
                .unwrap();
            for _ in 0..n_inner {
                builder.dispatch(groups).unwrap();
            }
        }
        let cb = builder.build().unwrap();
        sync::now(device.clone())
            .then_execute(queue.clone(), cb)
            .unwrap()
            .then_signal_fence_and_flush()
            .unwrap()
            .wait(None)
            .unwrap();
    };
    let run_once = || run_batch(1);

    // Sanity-check
    run_once();
    let d_view = d_buf.read().unwrap();
    // d[i, j] = a[i + j*n0] + b[i]
    let mut max_err = 0.0f32;
    for &(i, j) in &[(0u32, 0u32), (1, 1), (123, 256), (n0 - 1, n1 - 1), (n0 / 2, n1 / 2)] {
        let gpu = d_view[(i + j * n0) as usize];
        let cpu = a_data[(i + j * n0) as usize] + b_data[i as usize];
        let err = (gpu - cpu).abs();
        max_err = max_err.max(err);
        println!("d[{:>4},{:>4}]  gpu={:>10.4}  cpu={:>10.4}", i, j, gpu, cpu);
    }
    drop(d_view);
    println!("max abs err over samples: {:.3e}", max_err);

    // Perf -- each outer iter submits N_INNER dispatches in one command buffer.
    let warmup = 3;
    let outer_iters = 10;
    for _ in 0..warmup { run_batch(N_INNER); }
    let t0 = Instant::now();
    for _ in 0..outer_iters { run_batch(N_INNER); }
    let elapsed = t0.elapsed();
    let total_dispatches = outer_iters * N_INNER;
    let per_run = elapsed / total_dispatches;

    // test-backend-ops reports throughput as `op_size(out) = ggml_nbytes(out) * 3`
    // — i.e. it counts: 1 read of A, 1 read of B (effective), 1 write of D, each
    // sized as `dst`. With dst = 2,097,152 f32 = 8 MB, op_size = 24 MB.
    let bytes_per_run = (d_len * 4 * 3) as f64;
    let gbps = bytes_per_run / per_run.as_secs_f64() / 1e9;

    println!(
        "outer_iters={}  inner_batch={}  total_dispatches={}  total={:?}  per-dispatch={:?}  {:.2} GB/s",
        outer_iters, N_INNER, total_dispatches, elapsed, per_run, gbps
    );
}
