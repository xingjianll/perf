// Sweep occupancy levels via shmem-padding spec constant.
// Measure batching gap at each occupancy.

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
        path: "shaders/war_occ_probe.comp",
        vulkan_version: "1.2",
    }
}

fn run_one(
    device: &Arc<Device>,
    queue: &Arc<vulkano::device::Queue>,
    ds_alloc: &Arc<StandardDescriptorSetAllocator>,
    cb_alloc: &Arc<StandardCommandBufferAllocator>,
    mem: &Arc<StandardMemoryAllocator>,
    outer_iters: u32,
    shmem_words: u32,
    workgroups: u32,
    wg_size: u32,
) -> f64 {
    let shader = cs::load(device.clone()).unwrap();
    let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
    spec.insert(0, SpecializationConstant::U32(outer_iters));
    spec.insert(1, SpecializationConstant::U32(shmem_words));
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

    let total = (workgroups * wg_size * 4) as usize;
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
        (0..total).map(|i| i as u32),
    )
    .unwrap();
    let set = DescriptorSet::new(
        ds_alloc.clone(),
        pipeline.layout().set_layouts()[0].clone(),
        [WriteDescriptorSet::buffer(0, buf.clone())],
        [],
    )
    .unwrap();
    let run_batch = |n: u32| {
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
            for _ in 0..n {
                builder.dispatch([workgroups, 1, 1]).unwrap();
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
    const N_INNER: u32 = 4;
    run_batch(1);
    let outer = 3u32;
    let t0 = Instant::now();
    for _ in 0..outer {
        run_batch(N_INNER);
    }
    let elapsed = t0.elapsed();
    elapsed.as_secs_f64() / (outer * N_INNER) as f64 * 1e6
}

fn main() {
    const OUTER_ITERS: u32 = 32768;
    const WORKGROUPS: u32 = 64 * 32;
    const WG_SIZE: u32 = 128;

    let library = VulkanLibrary::new().unwrap();
    let instance = Instance::new(library, InstanceCreateInfo {
        flags: InstanceCreateFlags::ENUMERATE_PORTABILITY,
        enabled_extensions: InstanceExtensions {
            khr_portability_enumeration: true,
            ..Default::default()
        },
        ..Default::default()
    }).unwrap();
    let physical = instance.enumerate_physical_devices().unwrap().next().unwrap();
    println!("device: {}", physical.properties().device_name);
    let qf = physical.queue_family_properties().iter()
        .position(|q| q.queue_flags.contains(QueueFlags::COMPUTE)).unwrap() as u32;
    let (device, mut queues) = Device::new(physical, DeviceCreateInfo {
        queue_create_infos: vec![QueueCreateInfo { queue_family_index: qf, ..Default::default() }],
        ..Default::default()
    }).unwrap();
    let queue = queues.next().unwrap();
    let mem = Arc::new(StandardMemoryAllocator::new_default(device.clone()));
    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(device.clone(), Default::default()));
    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(device.clone(), Default::default()));

    /* Per-core shmem pool is ~60 KB.
     *
     *   SHMEM_WORDS = 256  =>   1 KB / WG  =>  ~ many WGs/core (HIGH occupancy)
     *   SHMEM_WORDS = 2048 =>   8 KB / WG  =>  ~7 WGs/core
     *   SHMEM_WORDS = 4096 =>  16 KB / WG  =>  ~3 WGs/core
     *   SHMEM_WORDS = 8192 =>  32 KB / WG  =>  1 WG/core (LOW occupancy — also Vulkan max)
     */
    let shmem_levels = [256u32, 1024, 4096, 8192];

    println!("\nOccupancy sweep — measure per-dispatch time and compute batching ratio");
    println!("(set AGX_SCHED_NO_LLOAD_BATCH=1 to disable batching pass)");
    println!();
    println!("{:>8} {:>10} {:>12}", "shmem_kb", "wgs/core*", "per_dispatch_us");
    for &sw in &shmem_levels {
        let kb = sw * 4 / 1024;
        let wgs_per_core = if kb == 0 { 60 } else { 60 / std::cmp::max(kb, 1) };
        let t = run_one(&device, &queue, &ds_alloc, &cb_alloc, &mem,
                        OUTER_ITERS, sw, WORKGROUPS, WG_SIZE);
        println!("{:>8} {:>10} {:>12.1}", kb, wgs_per_core, t);
    }
    println!();
    println!("* approximate WGs/core from 60KB pool, assumes shmem-bound");
}
