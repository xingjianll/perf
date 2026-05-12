# perf

Minimum harness around llama.cpp's Vulkan F32×F32 matmul kernel
(`mul_mm.comp`), built with vulkano. Computes `D = A @ B^T` and times it.

Shaders under `shaders/` are copied verbatim from
`llama.cpp/ggml/src/ggml-vulkan/vulkan-shaders/`:

- `mul_mm.comp` — the kernel
- `mul_mm_funcs.glsl` — A/B shmem loaders (per dtype)
- `mul_mm_id_funcs.glsl` — MoE helpers (unused here, included to satisfy `#include`)
- `types.glsl` — quant block type defs

Build defines pin the kernel to the `matmul_f32_f32` (unaligned) variant.

## Run

```
cargo run --release
```

On GCC 15+, `shaderc-sys` 0.8.3's vendored glslang fails to build (missing
`#include <cstdint>`). Workaround:

```
CXXFLAGS="-include cstdint" cargo run --release
```

## Results

### F32 x F32, M=N=K=1024

| Run | Driver | Per-iter | GFLOPS | Max abs err vs f64 CPU |
|---|---|---|---|---|
| 1 | MoltenVK 1.4.313 (macOS)               | 1.90 ms | 1127 | 2.2e-6 |
| 2 | Honeykrisp / Mesa 25.2.7 (Asahi Linux) | 2.30 ms | 932  | 3.2e-6 |

Both harnesses batch N dispatches per command-buffer submission to amortize
the vkQueueSubmit + vkWaitForFences round-trip, matching what test-backend-ops
does by building a ggml graph with N copies of the same op.

### Q4_K x F32, M=4096 N=512 K=14336 (matches llama.cpp's mul_mm.comp dispatch case)

Run via `cargo run --release --bin matmul`.

| Run | Driver | Per-dispatch | GFLOPS |
|---|---|---|---|
| 3 | MoltenVK 1.4.313 (macOS) | 14.0 ms | 4303 |
| 4 | Honeykrisp (Asahi)       | _todo_  | _todo_ |

llama.cpp's `test-backend-ops perf` measures **5810 GFLOPS** on MoltenVK for
this exact shape; we get ~74% of that. The remaining gap isn't sync overhead
(matmul kernel takes 14 ms, so submit overhead is ~3%) — likely allocator or
descriptor-binding differences.

For N≤8 (decode), llama.cpp dispatches `mul_mat_vec.comp` instead of
`mul_mm.comp`; this harness intentionally targets the larger-N matmul path.

### ADD F32, ne=[4096,1,1,1], nr=[1,512,1,1] (broadcast along dim 1)

Run via `cargo run --release --bin add`.

| Run | Driver | Per-dispatch | GB/s |
|---|---|---|---|
| 5 | MoltenVK 1.4.313 (macOS) | 153 µs | 164 |
| 6 | Honeykrisp (Asahi)       | _todo_ | _todo_ |

llama.cpp's `test-backend-ops perf` measures **159 GB/s** on MoltenVK for this
case (Metal hits 1119 GB/s). Our 164 GB/s matches llama.cpp within noise after
batching 64 dispatches per submit. Without batching the same harness reports
~46 GB/s — 75% of the wall time is then submit/fence round-trip, since the
underlying kernel is only ~148 µs.

Tile config: `BM=BN=64, WM=WN=32, WMITER=2, TM=4, TN=2, WARP=32, BLOCK_SIZE=128`.
20 iterations after 3 warmup, single-dispatch wall-clock timing.

## TODO

- Sweep tile config (BM/BN/WM/WN/TM/TN) per driver.
- Diff AGX assembly between MoltenVK→Metal→AGX and Honeykrisp→AGX paths.
