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

| Run | Device | Driver | M=N=K | Per-iter | GFLOPS | Max abs err vs f64 CPU |
|---|---|---|---|---|---|---|
| 1  | Apple M1 Ultra | MoltenVK 1.4.313 (macOS) | 1024 | 1.90 ms | 1127 | 2.2e-6 |
| 2  | Apple M1 Ultra | Honeykrisp / Mesa 25.2.7 (Asahi Linux) | 1024 | 2.30 ms | 932 | 3.2e-6 |

Tile config: `BM=BN=64, WM=WN=32, WMITER=2, TM=4, TN=2, WARP=32, BLOCK_SIZE=128`.
20 iterations after 3 warmup, single-dispatch wall-clock timing.

## TODO

- Sweep tile config (BM/BN/WM/WN/TM/TN) per driver.
- Diff AGX assembly between MoltenVK→Metal→AGX and Honeykrisp→AGX paths.
