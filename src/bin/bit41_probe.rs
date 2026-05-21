// Driver for occupancy_probe.comp. Primary use here is to get the shader
// compiled + dispatched once so its AGX lands in the Metal cache and we can
// dump it. occupancy_probe.comp contains an isolated shared-memory load
// (`scratch[...]`), so its AGX is the cleanest place to inspect the `lload`
// encoding (e.g. whether the undocumented bits 40/47 are set there too).

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
        path: "shaders/bit41_probe.comp",
        vulkan_version: "1.2",
    }
}

fn main() {
    const OUTER_ITERS: u32 = 4096; // short — we only need it to run, not to be a long bench
    const SHMEM_FLOATS: u32 = 1024; // 4 KB of shared memory
    const WORKGROUPS: u32 = 64;
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
    let buf_len = total_threads * 10;

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
            .dispatch([WORKGROUPS, 1, 1])
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

    println!(
        "ran occupancy_probe: WGs={} WG_SIZE={} OUTER_ITERS={} SHMEM_FLOATS={} (shader compiled + cached)",
        WORKGROUPS, WG_SIZE, OUTER_ITERS, SHMEM_FLOATS
    );
}
