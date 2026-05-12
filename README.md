# perf

Minimum harnesses around llama.cpp's Vulkan compute kernels (`mul_mm.comp`,
`add.comp`), built with vulkano. Times Q4_K × F32 matmul and broadcast ADD.

Shaders under `shaders/` are copied verbatim from
`llama.cpp/ggml/src/ggml-vulkan/vulkan-shaders/`:

- `mul_mm.comp` — the matmul kernel
- `mul_mm_funcs.glsl` — A/B shmem loaders (per dtype)
- `mul_mm_id_funcs.glsl` — MoE helpers (unused here, included to satisfy `#include`)
- `add.comp`, `generic_binary_head.glsl`, `utils.glsl` — broadcast ADD kernel
- `types.glsl` — quant block type defs

## Run

```
cargo run --release --bin matmul    # Q4_K × F32 matmul
cargo run --release --bin add       # broadcast ADD F32
```

On GCC 15+, `shaderc-sys` 0.8.3's vendored glslang fails to build (missing
`#include <cstdint>`). Workaround:

```
CXXFLAGS="-include cstdint" cargo build --release --bins
```

## Results

Both harnesses batch N dispatches per command-buffer submission to amortize
the vkQueueSubmit + vkWaitForFences round-trip, matching what test-backend-ops
does by building a ggml graph with N copies of the same op.

### Q4_K x F32, M=4096 N=512 K=14336 (matches llama.cpp's mul_mm.comp dispatch case)

| Run | Driver | Per-dispatch | GFLOPS |
|---|---|---|---|
| 1 | MoltenVK 1.4.313 (macOS)               | 14.0 ms  | 4303 |
| 2 | Honeykrisp / Mesa 25.2.7 (Asahi Linux) | 35.23 ms | 1707 |

llama.cpp's `test-backend-ops perf` measures **5810 GFLOPS** on MoltenVK for
this exact shape; we get ~74% of that. The remaining gap isn't sync overhead
(matmul kernel takes 14 ms, so submit overhead is ~3%) — likely allocator or
descriptor-binding differences.

For N≤8 (decode), llama.cpp dispatches `mul_mat_vec.comp` instead of
`mul_mm.comp`; this harness intentionally targets the larger-N matmul path.

### ADD F32, ne=[4096,1,1,1], nr=[1,512,1,1] (broadcast along dim 1)

| Run | Driver | Per-dispatch | GB/s |
|---|---|---|---|
| 3 | MoltenVK 1.4.313 (macOS) | 153 µs    | 164 |
| 4 | Honeykrisp (Asahi)       | 101.86 µs | 247 |

llama.cpp's `test-backend-ops perf` measures **159 GB/s** on MoltenVK for this
case (Metal hits 1119 GB/s). Our 164 GB/s matches llama.cpp within noise after
batching 64 dispatches per submit. Without batching the same harness reports
~46 GB/s — 75% of the wall time is then submit/fence round-trip, since the
underlying kernel is only ~148 µs.

## AGX disassembly

`dumps/` contains AGX (Apple GPU ISA) disassembly for both kernels as produced by
MoltenVK → Metal → Apple's AGX compiler on macOS:

| File | Format |
|---|---|
| `add_agx.bin`, `matmul_agx.bin`     | Raw AGX `__text` bytes  |
| `*_moltenvk.mesa.s`                  | Disassembly via Mesa's `src/asahi/isa/test/disasm.py` (Alyssa Rosenzweig's XML-driven decoder) |
| `*_moltenvk.agx.s`                   | Disassembly via [applegpu](https://github.com/dougallj/applegpu) (Dougall Johnson) |

Re-generate after an edit with:
```
python3 dumps/extract_agx.py add matmul
```

The script wipes `$(getconf DARWIN_USER_CACHE_DIR)com.apple.metal/<gpu>/functions.{data,list}`,
runs each binary, then parses the resulting Mach-O object in `functions.data` to pull out
the `__text` section. Apple stores each compiled compute pipeline as a Mach-O 64
with cputype `0x01000013` (AGX).

The Asahi counterpart is one env var (Mesa writes to stdout, not stderr):
```
AGX_MESA_DEBUG=shaders ./target/release/add > dumps/add_asahi.mesa.s
```
The Asahi dump is a *superset* of the MoltenVK side — it includes NIR, AGX IR,
and encoded ISA. To get a direct line-for-line diff against the MoltenVK file,
strip everything except encoded-ISA lines:
```
grep -E '^\s+[0-9a-f]+:\s+[0-9a-f]{4,}' dumps/add_asahi.mesa.s > dumps/add_asahi.isa.s
```
The program's stdout (device line, dispatch params, timing) will be interleaved
mid-instruction at the moment Mesa's compile finishes; strip with:
```
grep -vE '^(device:|M=|shape:|dispatch:|d\[|output:|tile:|max abs|outer_iters)' ...
```

## TODO

- Diff instruction-mix / register pressure / shmem usage between the two paths.
