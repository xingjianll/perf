// Perturb-and-observe driver for sentinel_probe.comp. Dispatches one workgroup,
// reads back the whole shared array (copied to the output buffer), and reports
// which slot(s) hold the sentinel 12345.0. Used together with cache byte-patching
// to determine what threadgroup-store bits 40-42 do.

use std::sync::Arc;

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
        path: "shaders/sentinel_probe.comp",
        vulkan_version: "1.2",
    }
}

fn main() {
    const N: usize = 64;
    let sentinel_index: u32 = std::env::var("SENTINEL_INDEX")
        .ok()
        .and_then(|s| s.parse().ok())
        .unwrap_or(5);

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
    let queue_family_index = physical
        .queue_family_properties()
        .iter()
        .position(|q| q.queue_flags.contains(QueueFlags::COMPUTE))
        .unwrap() as u32;

    let (device, mut queues) = Device::new(
        physical,
        DeviceCreateInfo {
            queue_create_infos: vec![QueueCreateInfo { queue_family_index, ..Default::default() }],
            ..Default::default()
        },
    )
    .unwrap();
    let queue = queues.next().unwrap();

    let shader = cs::load(device.clone()).unwrap();
    let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
    spec.insert(0, SpecializationConstant::U32(sentinel_index));
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

    let mem = Arc::new(StandardMemoryAllocator::new_default(device.clone()));
    let out = Buffer::from_iter(
        mem.clone(),
        BufferCreateInfo { usage: BufferUsage::STORAGE_BUFFER, ..Default::default() },
        AllocationCreateInfo {
            memory_type_filter: MemoryTypeFilter::PREFER_DEVICE
                | MemoryTypeFilter::HOST_RANDOM_ACCESS,
            ..Default::default()
        },
        (0..N).map(|_| -1.0f32),
    )
    .unwrap();

    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(device.clone(), Default::default()));
    let set = DescriptorSet::new(
        ds_alloc,
        pipeline.layout().set_layouts()[0].clone(),
        [WriteDescriptorSet::buffer(0, out.clone())],
        [],
    )
    .unwrap();

    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(device.clone(), Default::default()));
    let mut builder = AutoCommandBufferBuilder::primary(
        cb_alloc.clone(),
        queue.queue_family_index(),
        CommandBufferUsage::OneTimeSubmit,
    )
    .unwrap();
    unsafe {
        builder
            .bind_pipeline_compute(pipeline.clone()).unwrap()
            .bind_descriptor_sets(PipelineBindPoint::Compute, pipeline.layout().clone(), 0, set.clone()).unwrap()
            .dispatch([1, 1, 1]).unwrap();
    }
    let cb = builder.build().unwrap();
    sync::now(device.clone())
        .then_execute(queue.clone(), cb).unwrap()
        .then_signal_fence_and_flush().unwrap()
        .wait(None).unwrap();

    let view = out.read().unwrap();
    let hits: Vec<usize> = (0..N).filter(|&i| (view[i] - 12345.0).abs() < 0.5).collect();
    let nonzero: Vec<(usize, f32)> = (0..N).filter(|&i| view[i].abs() > 1e-6).map(|i| (i, view[i])).collect();
    println!("sentinel_index(requested)={}", sentinel_index);
    println!("sentinel(12345) found at slots: {:?}", hits);
    println!("all non-zero slots: {:?}", nonzero);
}
