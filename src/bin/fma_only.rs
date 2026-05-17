// Pure FMA microbenchmark — measures peak FFMA throughput on AGX with zero
// memory traffic in the inner loop. Used as the "what's the maximum we could
// see" baseline for comparing against matmul utilization.

use std::sync::Arc;
use std::time::Instant;

use vulkano::buffer::{Buffer, BufferCreateInfo, BufferUsage};
use vulkano::command_buffer::allocator::StandardCommandBufferAllocator;
use vulkano::command_buffer::{AutoCommandBufferBuilder, CommandBufferUsage};
use vulkano::descriptor_set::allocator::StandardDescriptorSetAllocator;
use vulkano::descriptor_set::{DescriptorSet, WriteDescriptorSet};
use vulkano::device::{Device, DeviceCreateInfo, QueueCreateInfo, QueueFlags};
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
        path: "shaders/fma_only.comp",
        vulkan_version: "1.2",
    }
}

fn main() {
    // Tunables.
    const OUTER_ITERS: u32 = 65536;
    const FMAS_PER_OUTER: u32 = 8; // matches the shader's body
    const WORKGROUPS: u32 = 64 * 32; // 64 cores * 32 WGs = 2048 — fully oversubscribed
    const WG_SIZE: u32 = 128;

    let library = VulkanLibrary::new().unwrap();
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

    let (device, mut queues) = Device::new(
        physical,
        DeviceCreateInfo {
            queue_create_infos: vec![QueueCreateInfo {
                queue_family_index,
                ..Default::default()
            }],
            ..Default::default()
        },
    )
    .unwrap();
    let queue = queues.next().unwrap();

    let shader = cs::load(device.clone()).unwrap();
    let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
    spec.insert(0, SpecializationConstant::U32(OUTER_ITERS));
    let specialized = shader.specialize(spec).unwrap();
    let entry = specialized.entry_point("main").unwrap();
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

    let total_threads = (WORKGROUPS * WG_SIZE) as usize;
    let buf_floats_per_thread: usize = 10; // matches `base+0..9` in the shader
    let buf_len = total_threads * buf_floats_per_thread;

    let mem = Arc::new(StandardMemoryAllocator::new_default(device.clone()));
    let buf = Buffer::from_iter(
        mem.clone(),
        BufferCreateInfo {
            usage: BufferUsage::STORAGE_BUFFER,
            ..Default::default()
        },
        AllocationCreateInfo {
            memory_type_filter: MemoryTypeFilter::PREFER_DEVICE
                | MemoryTypeFilter::HOST_SEQUENTIAL_WRITE
                | MemoryTypeFilter::HOST_RANDOM_ACCESS,
            ..Default::default()
        },
        (0..buf_len).map(|i| (i as f32 * 1e-6) + 1.0),
    )
    .unwrap();

    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(
        device.clone(),
        Default::default(),
    ));
    let set = DescriptorSet::new(
        ds_alloc,
        pipeline.layout().set_layouts()[0].clone(),
        [WriteDescriptorSet::buffer(0, buf.clone())],
        [],
    )
    .unwrap();

    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(
        device.clone(),
        Default::default(),
    ));

    const N_INNER: u32 = 16;

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
                .unwrap();
            for _ in 0..n_inner {
                builder.dispatch([WORKGROUPS, 1, 1]).unwrap();
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

    // Warmup
    run_batch(1);
    run_batch(N_INNER);

    let outer_iters_loop: u32 = 10;
    let t0 = Instant::now();
    for _ in 0..outer_iters_loop {
        run_batch(N_INNER);
    }
    let elapsed = t0.elapsed();

    let total_dispatches = outer_iters_loop * N_INNER;
    let per_run = elapsed / total_dispatches;
    let fmas_per_dispatch = (WORKGROUPS as u64)
        * (WG_SIZE as u64)
        * (OUTER_ITERS as u64)
        * (FMAS_PER_OUTER as u64);
    let gflops = (fmas_per_dispatch as f64 * 2.0) / per_run.as_secs_f64() / 1e9;

    println!(
        "WGs={}  WG_SIZE={}  OUTER_ITERS={}  FMAS/outer={}  -> {} FMAs/dispatch",
        WORKGROUPS, WG_SIZE, OUTER_ITERS, FMAS_PER_OUTER, fmas_per_dispatch
    );
    println!(
        "outer_iters={}  inner_batch={}  per-dispatch={:?}  {:.1} GFLOPS",
        outer_iters_loop, N_INNER, per_run, gflops
    );

    // Compute-relative metric: this is our measured peak FFMA throughput on
    // this hardware via this driver, with no memory traffic inside the loop.
    // The matmul harness's GFLOPS divided by this number gives the fraction of
    // matmul GPU time that's actually doing FMAs vs everything else.
    println!();
    println!("Use this as the FMA-throughput ceiling: matmul/this = FMA utilization.");
}
