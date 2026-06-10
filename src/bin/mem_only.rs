// Pure memory-bandwidth microbenchmark. Each thread streams N_LOADS sequential
// 32-bit words from a large input buffer (XOR-accumulated to defeat DCE) and
// writes one output. Used as the "what's the maximum memory bandwidth we
// could see from this driver" ceiling. Pair with fma_only.rs to roofline the
// matmul.

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
        path: "shaders/mem_only.comp",
        vulkan_version: "1.2",
    }
}

fn main() {
    const N_LOADS: u32 = 512;
    const WORKGROUPS: u32 = 64 * 32; // 2048 — fully oversubscribed across 64 cores
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
    spec.insert(0, SpecializationConstant::U32(N_LOADS));
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

    let total_threads = (WORKGROUPS * WG_SIZE) as u64;
    let in_words: u64 = total_threads * (N_LOADS as u64);
    let in_bytes: u64 = in_words * 4;

    let mem = Arc::new(StandardMemoryAllocator::new_default(device.clone()));
    let in_buf = Buffer::from_iter(
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
        (0..in_words as usize).map(|i| i as u32),
    )
    .unwrap();

    let out_buf = Buffer::from_iter(
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
        (0..total_threads as usize).map(|_| 0u32),
    )
    .unwrap();

    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(
        device.clone(),
        Default::default(),
    ));
    let set = DescriptorSet::new(
        ds_alloc,
        pipeline.layout().set_layouts()[0].clone(),
        [
            WriteDescriptorSet::buffer(0, in_buf.clone()),
            WriteDescriptorSet::buffer(1, out_buf.clone()),
        ],
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

    run_batch(1);
    run_batch(N_INNER);

    let outer_iters_loop: u32 = 10;
    let t0 = Instant::now();
    for _ in 0..outer_iters_loop {
        run_batch(N_INNER);
    }
    let elapsed = t0.elapsed();

    let total_dispatches = (outer_iters_loop * N_INNER) as u64;
    let per_run = elapsed / (total_dispatches as u32);
    let gb_per_sec = (in_bytes as f64) / per_run.as_secs_f64() / 1e9;

    println!(
        "WGs={}  WG_SIZE={}  N_LOADS={}  -> {:.2} MB read per dispatch  ({} threads × {} B)",
        WORKGROUPS,
        WG_SIZE,
        N_LOADS,
        (in_bytes as f64) / (1024.0 * 1024.0),
        total_threads,
        4 * N_LOADS
    );
    println!(
        "dispatches={}  per-dispatch={:?}  {:.1} GB/s",
        total_dispatches, per_run, gb_per_sec
    );
    println!();
    println!("Use this as the global-memory bandwidth ceiling for roofline analysis.");
}
