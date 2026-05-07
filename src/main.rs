// Minimum harness for llama.cpp's Vulkan F32xF32 matmul kernel (mul_mm.comp).
//
// Computes  D[m, n] = sum_k A[m, k] * B[n, k]   i.e.  D = A @ B^T
//   A is M x K, row-major (data_a[m*K + k])
//   B is N x K, row-major (data_b[n*K + k])
//   D is M x N, column-major (data_d[n*M + m])

use std::sync::Arc;
use std::time::Instant;

use vulkano::buffer::{Buffer, BufferContents, BufferCreateInfo, BufferUsage};
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
        path: "shaders/mul_mm.comp",
        include: ["shaders"],
        define: [
            ("DATA_A_F32", "1"),
            ("LOAD_VEC_A", "1"),
            ("B_TYPE", "float"),
            ("D_TYPE", "float"),
            ("FLOAT_TYPE", "float"),
            ("FLOAT_TYPEV2", "vec2"),
            ("FLOAT_TYPEV4", "vec4"),
            ("FLOAT_TYPEV8", "mat2x4"),
            ("ACC_TYPE", "float"),
            ("ACC_TYPEV2", "vec2"),
        ],
        vulkan_version: "1.2",
    }
}

#[derive(Clone, Copy, BufferContents)]
#[repr(C)]
struct PushConstants {
    m: u32,
    n: u32,
    k: u32,
    stride_a: u32,
    stride_b: u32,
    stride_d: u32,
    batch_stride_a: u32,
    batch_stride_b: u32,
    batch_stride_d: u32,
    base_work_group_z: u32,
    num_batches: u32,
    k_split: u32,
    ne02: u32,
    ne12: u32,
    broadcast2: u32,
    broadcast3: u32,
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
    .expect("failed to create instance");

    let physical = instance
        .enumerate_physical_devices()
        .unwrap()
        .next()
        .expect("no physical device");
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

    // ------------------------------------------------------------------ Tile config
    // These must satisfy the kernel's invariants:
    //   NUM_WARPS = (BM/WM) * (BN/WN)
    //   BLOCK_SIZE = WARP * NUM_WARPS
    //   WNITER = (WM*WN) / (WARP*TM*TN*WMITER)
    //   WARP = (WSUBM/TM) * (WSUBN/TN)
    //
    // Pick: BM=BN=64, WM=WN=32 -> NUM_WARPS=4
    //       WMITER=2, TM=4, TN=2, WARP=32 -> WNITER=2, BLOCK_SIZE=128.
    const BLOCK_SIZE: u32 = 128;
    const BM: u32 = 64;
    const BN: u32 = 64;
    const WM: u32 = 32;
    const WN: u32 = 32;
    const WMITER: u32 = 2;
    const TM: u32 = 4;
    const TN: u32 = 2;
    const TK: u32 = 1;
    const WARP: u32 = 32;

    let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
    spec.insert(0, SpecializationConstant::U32(BLOCK_SIZE));
    spec.insert(1, SpecializationConstant::U32(BM));
    spec.insert(2, SpecializationConstant::U32(BN));
    // id=3 is BK -- skipped because for DATA_A_F32 the shader hardcodes BK=32.
    spec.insert(4, SpecializationConstant::U32(WM));
    spec.insert(5, SpecializationConstant::U32(WN));
    spec.insert(6, SpecializationConstant::U32(WMITER));
    spec.insert(7, SpecializationConstant::U32(TM));
    spec.insert(8, SpecializationConstant::U32(TN));
    spec.insert(9, SpecializationConstant::U32(TK));
    spec.insert(10, SpecializationConstant::U32(WARP));

    // ------------------------------------------------------------------ Pipeline
    let shader = cs::load(device.clone()).unwrap();
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
    .expect("compute pipeline");

    // ------------------------------------------------------------------ Problem
    let m: u32 = 1024;
    let n: u32 = 1024;
    let k: u32 = 1024;

    let a_len = (m * k) as usize;
    let b_len = (n * k) as usize;
    let d_len = (m * n) as usize;

    // Deterministic but non-periodic inputs (so each row of A/B is distinct).
    let a_data: Vec<f32> = (0..a_len)
        .map(|i| (i as f32 * 0.12345 + 0.7).sin() * 0.5)
        .collect();
    let b_data: Vec<f32> = (0..b_len)
        .map(|i| (i as f32 * 0.07891 - 0.3).sin() * 0.5)
        .collect();

    // ------------------------------------------------------------------ Buffers
    let mem = Arc::new(StandardMemoryAllocator::new_default(device.clone()));

    let a_buf = Buffer::from_iter(
        mem.clone(),
        BufferCreateInfo { usage: BufferUsage::STORAGE_BUFFER, ..Default::default() },
        AllocationCreateInfo {
            memory_type_filter: MemoryTypeFilter::PREFER_DEVICE
                | MemoryTypeFilter::HOST_SEQUENTIAL_WRITE,
            ..Default::default()
        },
        a_data.iter().copied(),
    )
    .unwrap();

    let b_buf = Buffer::from_iter(
        mem.clone(),
        BufferCreateInfo { usage: BufferUsage::STORAGE_BUFFER, ..Default::default() },
        AllocationCreateInfo {
            memory_type_filter: MemoryTypeFilter::PREFER_DEVICE
                | MemoryTypeFilter::HOST_SEQUENTIAL_WRITE,
            ..Default::default()
        },
        b_data.iter().copied(),
    )
    .unwrap();

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

    // ------------------------------------------------------------------ Descriptor set
    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(
        device.clone(),
        Default::default(),
    ));
    let ds_layout = pipeline.layout().set_layouts().get(0).unwrap();
    let set = DescriptorSet::new(
        ds_alloc,
        ds_layout.clone(),
        [
            WriteDescriptorSet::buffer(0, a_buf.clone()),
            WriteDescriptorSet::buffer(1, b_buf.clone()),
            WriteDescriptorSet::buffer(2, d_buf.clone()),
        ],
        [],
    )
    .unwrap();

    // ------------------------------------------------------------------ Push constants / dispatch
    // k_split is K-elements processed per workgroup along K (not the number of splits).
    // For a single split that covers all of K we set k_split = K.
    let num_splits: u32 = 1;
    let k_split = k.div_ceil(num_splits);

    let push = PushConstants {
        m,
        n,
        k,
        stride_a: k,
        stride_b: k,
        stride_d: m,
        batch_stride_a: m * k,
        batch_stride_b: n * k,
        batch_stride_d: m * n,
        base_work_group_z: 0,
        num_batches: 1,
        k_split,
        ne02: 1,
        ne12: 1,
        broadcast2: 1,
        broadcast3: 1,
    };

    let blocks_m = (m + BM - 1) / BM;
    let blocks_n = (n + BN - 1) / BN;
    let groups = [blocks_m * num_splits, blocks_n, push.num_batches];

    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(
        device.clone(),
        Default::default(),
    ));

    // Submit a single dispatch and wait for it.
    let run_once = || {
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
                .unwrap()
                .dispatch(groups)
                .unwrap();
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

    // ------------------------------------------------------------------ Verify a few entries
    run_once();
    let d_view = d_buf.read().unwrap();

    // Random-ish sample of (m, n) coords.
    let samples = [(0, 0), (1, 1), (37, 411), (m - 1, n - 1), (m / 2, n / 2)];
    let mut max_err: f32 = 0.0;
    for &(mm, nn) in &samples {
        let mut acc = 0.0f64;
        for kk in 0..k {
            acc += (a_data[(mm * k + kk) as usize] as f64)
                * (b_data[(nn * k + kk) as usize] as f64);
        }
        let gpu = d_view[(nn * m + mm) as usize];
        let err = (gpu as f64 - acc).abs() as f32;
        max_err = max_err.max(err);
        println!("D[{:>4},{:>4}]  gpu={:>11.4}  cpu={:>11.4}  err={:.2e}", mm, nn, gpu, acc, err);
    }
    drop(d_view);
    println!("max abs err over samples: {:.3e}", max_err);

    // ------------------------------------------------------------------ Perf
    let warmup = 3;
    let iters = 20;
    for _ in 0..warmup {
        run_once();
    }
    let t0 = Instant::now();
    for _ in 0..iters {
        run_once();
    }
    let elapsed = t0.elapsed();
    let per_run = elapsed / iters;
    let flops_per_run = 2.0 * (m as f64) * (n as f64) * (k as f64);
    let gflops = flops_per_run / per_run.as_secs_f64() / 1e9;

    println!(
        "M=N=K={}  BM={} BN={} WM={} WN={} WMITER={} TM={} TN={} WARP={} BLOCK_SIZE={}",
        m, BM, BN, WM, WN, WMITER, TM, TN, WARP, BLOCK_SIZE
    );
    println!(
        "iters={}  total={:?}  per-run={:?}  {:.1} GFLOPS",
        iters, elapsed, per_run, gflops
    );
}
