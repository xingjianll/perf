# icache_probe on RDNA4 (Radeon AI PRO R9700, RADV GFX1201)

Date: 2026-06-11. Mesa 25.3.3 (RADV warns non-conformant on GFX1201), kernel
6.17.10. `MESA_SHADER_CACHE_DISABLE=true`, stock probe parameters
(WG_SIZE=256, WORKGROUPS=2048, BODY × OUTER = 8192 FMA-groups/thread).

Code sizes are **measured** via `RADV_DEBUG=shaderstats` (not the 8 B/FMA
estimate, though they match: marginal cost is exactly 8.0 B/FMA + ~210 B
prologue). VGPRs are constant at 12 with 0 spills across all variants, so the
sweep isolates code-size/fetch effects from register pressure.

## Looped mode (constant dynamic work)

| BODY (groups) | FMAs in body | Code size | GFMA/s |
|---:|---:|---:|---:|
| 1 | 8 | 0.3 KB | 9,783 |
| 2 | 16 | 0.3 KB | 11,304 |
| 4 | 32 | 0.5 KB | 12,149 |
| 8 | 64 | 0.7 KB | 13,414 |
| 16 | 128 | 1.2 KB | 14,730 |
| 32 | 256 | 2.2 KB | 15,557 |
| 64 | 512 | 4.2 KB | 15,488 |
| 128 | 1,024 | 8.2 KB | 14,135 |
| 256 | 2,048 | 16.2 KB | 14,221 |
| 512 | 4,096 | 32.2 KB | 15,759 |
| 1024 | 8,192 | 64.2 KB | 12,825 |
| 2048 | 16,384 | 128.2 KB | 12,054 |
| 4096 | 32,768 | 256.2 KB | 11,943 |

## ONEPASS control (body executed once, OUTER=1)

| BODY (groups) | FMAs in body | Code size | GFMA/s |
|---:|---:|---:|---:|
| 128 | 1,024 | 8.2 KB | 7,534 |
| 256 | 2,048 | 16.2 KB | 10,081 |
| 512 | 4,096 | 32.2 KB | 11,208 |
| 1024 | 8,192 | 64.2 KB | 12,332 |
| 2048 | 16,384 | 128.2 KB | 12,271 |
| 4096 | 32,768 | 256.2 KB | 12,335 |

(ONEPASS code sizes taken from the looped-mode compiles; the OUTER=1
specializations differ only by loop scaffolding bytes.)

## Findings

- **Knee between 32.2 KB and 64.2 KB** → L0 i-cache capacity is 32 KB,
  matching AMD's documented 32 KB I$ per WGP (RDNA whitepaper; no RDNA4
  change published).
- **Penalty past the knee: ~20–24%** (15.8k → ~12k GFMA/s). Much larger than
  RDNA2 (RX 6800 XT, same probe: ~5–7%).
- **ONEPASS converges to ~12.3k GFMA/s at large bodies — the same plateau the
  looped mode falls to.** Streaming fresh code from beyond L0 caps the front
  end at ~12.3k; post-knee re-execution is fetch-bound at that same rate.
- Generational read: peak FMA throughput grew ~50% over the RDNA2 part while
  the fetch-limited rate grew only ~16%, so blowing the i-cache hurts
  relatively more on RDNA4.

## RDNA2 comparison (RX 6800 XT, RADV NAVI21, same probe, same day)

| | RDNA2 | RDNA4 |
|---|---:|---:|
| Peak (in-cache) | ~10.4k GFMA/s | ~15.8k GFMA/s |
| Post-knee / streaming | ~9.8k / ~10.6k | ~12.0k / ~12.3k |
| Knee location | 32→64 KB | 32→64 KB |
| Penalty | ~5–7% | ~20–24% |
