// Vary dispatched WG count → vary subgroups-per-core → see if stall hides at high occupancy.

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
        path: "shaders/war_probe.comp",
        vulkan_version: "1.2",
    }
}

fn run_one(
    device: &Arc<Device>,
    queue: &Arc<vulkano::device::Queue>,
    ds_alloc: &Arc<StandardDescriptorSetAllocator>,
    cb_alloc: &Arc<StandardCommandBufferAllocator>,
    mem: &Arc<StandardMemoryAllocator>,
    workgroups: u32,
    wg_size: u32,
    outer_iters: u32,
) -> f64 {
    let shader = cs::load(device.clone()).unwrap();
    let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
    spec.insert(0, SpecializationConstant::U32(outer_iters));
    spec.insert(1, SpecializationConstant::U32(1)); // SHARED_ADDR (doesn't matter, compiler folds)
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
    let total = (workgroups * wg_size * 2) as usize;
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
    const N_INNER: u32 = 8;
    run_batch(1);
    let outer = 5u32;
    let t0 = Instant::now();
    for _ in 0..outer {
        run_batch(N_INNER);
    }
    let elapsed = t0.elapsed();
    elapsed.as_secs_f64() / (outer * N_INNER) as f64 * 1e6
}

fn main() {
    const WG_SIZE: u32 = 128;
    const OUTER_ITERS: u32 = 32768;

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

    println!("\nSweep dispatched WG count → vary resident subgroup count per SIMD.");
    println!("Each WG = 4 subgroups. 64 cores × 4 SIMDs = 256 SIMDs.");
    println!("Per-iter scaling: time/WG should be constant if occupancy fully hides stall.");
    println!();
    println!("{:>5} {:>10} {:>14} {:>14}", "WGs", "sg/SIMD*", "time (µs)", "time/WG (µs)");

    /* 64 WGs = 1 WG per core = ~1 subgroup per SIMD (very low)
     * 256 WGs = 4 WGs per core ≈ 4 subgroups per SIMD
     * 1024 WGs ≈ 16 WGs per core ≈ 16 sg/SIMD (high)
     * 2048 WGs ≈ 32 WGs per core ≈ saturated
     *
     * Time should scale ~linearly with WG count if execution is fully serialized,
     * sublinearly (saturated parallelism) if occupancy gives parallel work. */
    for &wgs in &[64u32, 128, 256, 512, 1024, 2048] {
        let sg_per_simd = (wgs * 4) / (64 * 4); // approx resident if all fit
        let t = run_one(&device, &queue, &ds_alloc, &cb_alloc, &mem,
                        wgs, WG_SIZE, OUTER_ITERS);
        println!("{:>5} {:>10} {:>14.1} {:>14.3}", wgs, sg_per_simd, t, t / wgs as f64);
    }
}
