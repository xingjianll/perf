// Driver for icache_probe.comp: sweep the unrolled-body size (BODY) while
// holding total dynamic work constant (BODY * OUTER = 8192 fma-groups per
// thread). Reports per-variant best/median dispatch time. Flat time across
// BODY = front-end cost is negligible; a knee marks i-cache capacity.
//
// Run timed:   MESA_SHADER_CACHE_DISABLE=true VK_ICD_FILENAMES=... \
//                ./target/release/icache_probe
// Dump sizes:  AGX_MESA_DEBUG=shaders ... 2> /tmp/icache_dumps.txt (timings invalid)

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
        path: "shaders/icache_probe.comp",
        vulkan_version: "1.2",
    }
}

const WG_SIZE: u32 = 256; // matches local_size_x in the shader
const WORKGROUPS: u32 = 2048;
const GROUPS_PER_THREAD: u32 = 8192; // BODY * OUTER, constant across variants
const CHAINS: u64 = 8;
const WARMUP: u32 = 2;
const REPS: usize = 8;

fn main() {
    // ONEPASS=1: the literal "always unroll, sweep K" variant — no outer
    // re-execution (OUTER=1), work grows with K, report per-fma cost. Control
    // for the re-fetch hypothesis: flat ns/fma here + knee in the default
    // (re-executed) mode = the cost is re-fetching, i.e. i-cache capacity.
    let onepass = std::env::var("ONEPASS").is_ok();
    let bodies: Vec<u32> = if onepass {
        vec![128, 256, 512, 1024, 2048, 4096]
    } else {
        vec![1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]
    };
    let workgroups: u32 = if onepass { 16384 } else { WORKGROUPS };

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

    let gpu_index: usize = std::env::var("GPU_INDEX")
        .ok()
        .and_then(|s| s.parse().ok())
        .unwrap_or(0);
    let physical = instance
        .enumerate_physical_devices()
        .unwrap()
        .nth(gpu_index)
        .unwrap();
    eprintln!("device: {}", physical.properties().device_name);

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

    let total_threads = (workgroups * WG_SIZE) as usize;
    let buf_len = 2048 + total_threads;

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
        (0..buf_len).map(|i| {
            if i < 1024 {
                0.99999f32 // a
            } else if i < 2048 {
                1e-7f32 // b
            } else {
                0.0f32
            }
        }),
    )
    .unwrap();

    let ds_alloc = Arc::new(StandardDescriptorSetAllocator::new(
        device.clone(),
        Default::default(),
    ));
    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(
        device.clone(),
        Default::default(),
    ));

    println!("body_groups,body_fmas,outer,compile_ms,min_ms,median_ms,gfma_s");

    for &body in &bodies {
        let outer = if onepass {
            1
        } else {
            assert!(GROUPS_PER_THREAD % body == 0);
            GROUPS_PER_THREAD / body
        };
        let fmas_per_dispatch =
            (total_threads as u64) * CHAINS * (body as u64) * (outer as u64);

        // Marker for correlating AGX_MESA_DEBUG=shaders dumps with BODY.
        eprintln!("ICACHE_MARK BODY={} OUTER={}", body, outer);

        let mut spec = foldhash::HashMap::<u32, SpecializationConstant>::default();
        spec.insert(1, SpecializationConstant::U32(body));
        spec.insert(2, SpecializationConstant::U32(outer));

        let t_compile = Instant::now();
        let specialized = shader.clone().specialize(spec).unwrap();
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
        let compile_ms = t_compile.elapsed().as_secs_f64() * 1e3;

        let set = DescriptorSet::new(
            ds_alloc.clone(),
            pipeline.layout().set_layouts()[0].clone(),
            [WriteDescriptorSet::buffer(0, buf.clone())],
            [],
        )
        .unwrap();

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
                    .dispatch([workgroups, 1, 1])
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

        for _ in 0..WARMUP {
            run_once();
        }

        let mut times_ms: Vec<f64> = (0..REPS)
            .map(|_| {
                let t0 = Instant::now();
                run_once();
                t0.elapsed().as_secs_f64() * 1e3
            })
            .collect();
        times_ms.sort_by(|x, y| x.partial_cmp(y).unwrap());
        let min_ms = times_ms[0];
        let median_ms = times_ms[REPS / 2];
        let gfma = fmas_per_dispatch as f64 / (min_ms / 1e3) / 1e9;

        println!(
            "{},{},{},{:.1},{:.3},{:.3},{:.1}",
            body,
            body * 8,
            outer,
            compile_ms,
            min_ms,
            median_ms,
            gfma
        );
    }
}
