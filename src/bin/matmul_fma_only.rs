// FMA-phase-only variant of the q4_K matmul harness. Uses
// mul_mm_fma_only.comp (a copy of mul_mm.comp with SKIP_GLOBAL_LOADS that
// skips the global A/B loads inside the K loop). Shmem holds whatever junk
// was there at init, so output is meaningless — only the GPU timing is
// valid. Subtract this from the full matmul time to get the dequant-phase
// time, and compare GFLOPS to the full matmul to see the FMA-phase ceiling.
//
// Original harness header below.
// ----------------------------------------------------------------
// Harness for llama.cpp's Vulkan q4_K x f32 matmul kernel (mul_mm.comp,
// DATA_A_Q4_K variant). Computes  D = A @ B^T  where A is q4_K-quantized.
//
//   A is M x K, q4_K-quantized (256 elements per 144-byte block, row-major)
//   B is N x K, row-major f32 (data_b[n*K + k])
//   D is M x N, column-major f32 (data_d[n*M + m])
//
// Shape M=4096, N=4, K=14336 mirrors the test-backend-ops case
// "MUL_MAT type_a=q4_K m=4096 n=4 k=14336" which had the largest
// MoltenVK vs Honeykrisp gap in the spreadsheet (~8x).

use std::sync::Arc;
use std::time::Instant;

use vulkano::buffer::{Buffer, BufferContents, BufferCreateInfo, BufferUsage};
use vulkano::command_buffer::allocator::StandardCommandBufferAllocator;
use vulkano::command_buffer::{AutoCommandBufferBuilder, CommandBufferUsage};
use vulkano::descriptor_set::allocator::StandardDescriptorSetAllocator;
use vulkano::descriptor_set::{DescriptorSet, WriteDescriptorSet};
use vulkano::device::{Device, DeviceCreateInfo, DeviceExtensions, DeviceFeatures, QueueCreateInfo, QueueFlags};
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
        path: "shaders/mul_mm_fma_only.comp",
        include: ["shaders"],
        define: [
            ("DATA_A_Q4_K", "1"),
            ("LOAD_VEC_A", "4"),
            ("LOAD_VEC_B", "4"),
            ("ALIGNED",    "1"),
            ("B_TYPE",   "vec4"),
            ("D_TYPE", "float"),
            // Current baseline matches the README's measured numbers (fp32 inner-loop).
            ("FLOAT_TYPE", "float"),
            ("FLOAT_TYPEV2", "vec2"),
            ("FLOAT_TYPEV4", "vec4"),
            ("FLOAT_TYPEV8", "mat2x4"),
            ("ACC_TYPE", "float"),
            ("ACC_TYPEV2", "vec2"),
            //
            // TO SWAP IN THE fp16 INNER-LOOP VARIANT (matches llama.cpp's
            // matmul_shaders(fp16=true, f16acc=false) for Apple GPUs): comment out the
            // 6 lines above and uncomment the block below. Also re-run on macOS to
            // refresh the MoltenVK numbers in the README before reporting comparisons.
            //
            // Measured on Honeykrisp (M1 Ultra, Mesa 25.2.7): per-dispatch dropped
            // 35.23 ms -> 19.44 ms (1707 -> 3093 GFLOPS, +81%). shared_size dropped
            // 17408 -> 8704 bytes (1 WG/core -> 3 WGs/core, on a 32 KB budget).
            //
            // ("FLOAT_TYPE",   "float16_t"),
            // ("FLOAT_TYPEV2", "f16vec2"),
            // ("FLOAT_TYPEV4", "f16vec4"),
            // ("FLOAT_TYPEV8", "f16mat2x4"),
            // ("FLOAT16",      "1"),
            // ("ACC_TYPE",     "float"),
            // ("ACC_TYPEV2",   "vec2"),
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

// q4_K block layout: 256 weights per block, 144 bytes per block.
//   f16 d, f16 dmin   ( 4B)
//   uint8_t scales[12] (12B)
//   uint8_t qs[128]   (128B)
const QUANT_K: u32 = 256;
const Q4_K_BYTES: usize = 144;

// ---------------------------------------------------------------- CPU reference
// Deterministic PRNG (splitmix64-style) so test data is reproducible run-to-run.
fn prng(state: &mut u64) -> u32 {
    *state = state
        .wrapping_mul(6364136223846793005)
        .wrapping_add(1442695040888963407);
    let mut x = *state;
    x = (x ^ (x >> 30)).wrapping_mul(0xbf58476d1ce4e5b9);
    x = (x ^ (x >> 27)).wrapping_mul(0x94d049bb133111eb);
    ((x >> 32) ^ x) as u32
}

// Generate one 144-byte q4_K block with varied, non-degenerate content.
// d/dmin are written as IEEE half via the `half` crate so the GPU's hardware
// f16->f32 and our CPU reference agree bit-for-bit.
fn gen_q4k_block(block_idx: usize, out: &mut [u8]) {
    let mut state = (block_idx as u64)
        .wrapping_mul(0x9E3779B97F4A7C15)
        .wrapping_add(0xD1B54A32D192ED03);
    // d in ~[0.004, 0.020], dmin in ~[0.002, 0.010] — keeps dequant magnitudes sane.
    let d = 0.004 + (prng(&mut state) % 1000) as f32 / 1000.0 * 0.016;
    let dmin = 0.002 + (prng(&mut state) % 1000) as f32 / 1000.0 * 0.008;
    out[0..2].copy_from_slice(&half::f16::from_f32(d).to_bits().to_le_bytes());
    out[2..4].copy_from_slice(&half::f16::from_f32(dmin).to_bits().to_le_bytes());
    // scales[12] and qs[128]: full-range pseudo-random bytes.
    for b in out.iter_mut().take(Q4_K_BYTES).skip(4) {
        *b = (prng(&mut state) & 0xFF) as u8;
    }
}

// llama.cpp's get_scale_min_k4: extract the 6-bit scale and min for sub-block j.
fn get_scale_min_k4(j: usize, scales: &[u8]) -> (u8, u8) {
    if j < 4 {
        (scales[j] & 63, scales[j + 4] & 63)
    } else {
        let d = (scales[j + 4] & 0xF) | ((scales[j - 4] >> 6) << 4);
        let m = (scales[j + 4] >> 4) | ((scales[j] >> 6) << 4);
        (d, m)
    }
}

// llama.cpp's dequantize_row_q4_K for one 256-weight block.
fn dequant_q4k_block(block: &[u8], out: &mut [f32; 256]) {
    let d = half::f16::from_bits(u16::from_le_bytes([block[0], block[1]])).to_f32();
    let dmin = half::f16::from_bits(u16::from_le_bytes([block[2], block[3]])).to_f32();
    let scales = &block[4..16];
    let qs = &block[16..144];
    let mut oi = 0usize;
    let mut is = 0usize;
    let mut q_off = 0usize;
    for _ in 0..4 {
        let (sc1, m1) = get_scale_min_k4(is, scales);
        let d1 = d * sc1 as f32;
        let min1 = dmin * m1 as f32;
        let (sc2, m2) = get_scale_min_k4(is + 1, scales);
        let d2 = d * sc2 as f32;
        let min2 = dmin * m2 as f32;
        for l in 0..32 {
            out[oi] = d1 * (qs[q_off + l] & 0xF) as f32 - min1;
            oi += 1;
        }
        for l in 0..32 {
            out[oi] = d2 * (qs[q_off + l] >> 4) as f32 - min2;
            oi += 1;
        }
        q_off += 32;
        is += 2;
    }
}

// CPU reference for one output element D[n*M + m] = sum_k A[m,k] * B[n,k].
// Accumulates in f64 so the reference is tighter than the GPU's f32 path.
fn cpu_ref_point(a_data: &[u8], b_data: &[f32], m: u32, n: u32, k: u32) -> f64 {
    let blocks_per_row = (k / QUANT_K) as usize;
    let row_block_base = m as usize * blocks_per_row;
    let mut acc = 0.0f64;
    let mut dq = [0.0f32; 256];
    for blk in 0..blocks_per_row {
        let off = (row_block_base + blk) * Q4_K_BYTES;
        dequant_q4k_block(&a_data[off..off + Q4_K_BYTES], &mut dq);
        let k_base = blk * 256;
        let b_base = n as usize * k as usize + k_base;
        for kk in 0..256 {
            acc += dq[kk] as f64 * b_data[b_base + kk] as f64;
        }
    }
    acc
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

    // q4_K shader uses uint8_t / uint16_t / float16_t in storage buffers.
    // We must enable matching device features and core-1.2 promoted extensions.
    let enabled_features = DeviceFeatures {
        shader_int8: true,
        shader_int16: true,
        shader_float16: true,
        storage_buffer8_bit_access: true,
        uniform_and_storage_buffer8_bit_access: true,
        storage_buffer16_bit_access: true,
        uniform_and_storage_buffer16_bit_access: true,
        ..DeviceFeatures::empty()
    };
    let enabled_extensions = DeviceExtensions {
        khr_8bit_storage: true,
        khr_16bit_storage: true,
        khr_shader_float16_int8: true,
        ..DeviceExtensions::empty()
    };

    let (device, mut queues) = Device::new(
        physical,
        DeviceCreateInfo {
            queue_create_infos: vec![QueueCreateInfo {
                queue_family_index,
                ..Default::default()
            }],
            enabled_extensions,
            enabled_features,
            ..Default::default()
        },
    )
    .unwrap();
    let queue = queues.next().unwrap();

    // ------------------------------------------------------------------ Tile config
    // Matches llama.cpp's m_warptile_mmq for Apple (non-coopmat2) Q4_K path:
    // { 128, 64, 64, 32, 32, 32, 2, 4, 2, 1, 32 }
    //   BS  BM  BN  BK  WM  WN  WMITER TM TN TK WARP
    const BLOCK_SIZE: u32 = 128;
    const BM: u32 = 64;
    const BN: u32 = 64;
    const BK: u32 = 32;
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
    spec.insert(3, SpecializationConstant::U32(BK));
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
    // Match llama.cpp's "mul_mm.comp" dispatch case: m=4096, n=512, k=14336.
    // At n=512 llama.cpp uses mul_mm.comp (medium-tile, aligned variant) on M1 Ultra.
    let m: u32 = 4096;
    let n: u32 = 512;
    let k: u32 = 14336;

    assert!(k % QUANT_K == 0, "K must be a multiple of {}", QUANT_K);

    let a_blocks = (m as usize) * (k as usize) / QUANT_K as usize;
    let a_bytes = a_blocks * Q4_K_BYTES;
    let b_len = (n * k) as usize;
    let d_len = (m * n) as usize;

    println!(
        "M={} N={} K={}  A={} blocks ({:.1} MB)  B={:.1} KB  D={:.1} KB",
        m, n, k,
        a_blocks,
        a_bytes as f64 / 1e6,
        (b_len * 4) as f64 / 1e3,
        (d_len * 4) as f64 / 1e3,
    );

    // q4_K block bytes: real, varied, non-degenerate content so the matmul
    // actually exercises dequant + FMA on meaningful values. This is what makes
    // the CPU-reference check below able to catch a miscompile.
    let mut a_data: Vec<u8> = vec![0u8; a_bytes];
    for (bi, chunk) in a_data.chunks_exact_mut(Q4_K_BYTES).enumerate() {
        gen_q4k_block(bi, chunk);
    }

    // B as deterministic non-trivial f32 data.
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
    println!("dispatch: workgroups=({},{},{})  ({} total)", groups[0], groups[1], groups[2], groups[0]*groups[1]*groups[2]);

    let cb_alloc = Arc::new(StandardCommandBufferAllocator::new(
        device.clone(),
        Default::default(),
    ));

    // Pack N_INNER dispatches into a single command buffer per submission to
    // amortize the vkQueueSubmit + vkWaitForFences round-trip.
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

    // ------------------------------------------------------------------ Correctness
    // SKIPPED: shmem is uninitialized (we removed the global loads), so the
    // outputs are meaningless. Only the timing is valid.
    run_once();

    // ------------------------------------------------------------------ Perf
    let warmup = 3;
    let outer_iters: u32 = 10;
    for _ in 0..warmup {
        run_batch(N_INNER);
    }
    let t0 = Instant::now();
    for _ in 0..outer_iters {
        run_batch(N_INNER);
    }
    let elapsed = t0.elapsed();
    let total_dispatches = outer_iters * N_INNER;
    let per_run = elapsed / total_dispatches;
    let flops_per_run = 2.0 * (m as f64) * (n as f64) * (k as f64);
    let gflops = flops_per_run / per_run.as_secs_f64() / 1e9;

    println!(
        "tile: BM={} BN={} BK={} WM={} WN={} WMITER={} TM={} TN={} WARP={} BLOCK_SIZE={}",
        BM, BN, BK, WM, WN, WMITER, TM, TN, WARP, BLOCK_SIZE
    );
    println!(
        "outer_iters={}  inner_batch={}  total_dispatches={}  total={:?}  per-dispatch={:?}  {:.1} GFLOPS",
        outer_iters, N_INNER, total_dispatches, elapsed, per_run, gflops
    );
}
