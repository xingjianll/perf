# AGX threadgroup load/store: bits 40-42 are a one-hot offset shift

## Question
The threadgroup `lstore`/`lload` encoding has bits 40/41/42 (byte 5 low bits)
that neither applegpu nor Mesa's AGX2.xml decode. They appeared set in
llama.cpp's matmul shared-memory stores and Mesa flagged them as
"Unexpected set bits: [40, 47]".

## Method
Perturb-and-observe on real M1 Ultra hardware via applegpu's hwtestbed:
inject hand-assembled AGX that stores a sentinel to threadgroup offset O with
a chosen one-hot bit (40/41/42), then read the whole threadgroup region back
and see which slot the sentinel landed in.

(Note: hwtestbed's compute.metal had to be modified to declare a `threadgroup`
array so the runtime sets up the threadgroup address space; without it,
base-0 threadgroup stores go nowhere. See compute.metal patch.)

## Result (hardware)
| O  | bit40 | bit41 | bit42 |
|----|-------|-------|-------|
| 0  | 0     | 0     | 0     |
| 1  | 1     | 2     | 4     |
| 2  | 2     | 4     | 8     |
| 5  | 5     | 10    | (>15) |
| 7  | 7     | 14    | (>15) |
| 15 | 15    | (>15) | (>15) |

## Conclusion
Bits 40/41/42 are a **one-hot left-shift applied to the offset immediate**:

    effective_offset = O << (set_bit_index - 40)
    bit40 -> O<<0 (x1),  bit41 -> O<<1 (x2),  bit42 -> O<<2 (x4)

They are part of the ADDRESS, not a sign/cache flag. applegpu reads the raw O
and ignores this shift, so:
  - large shifted offsets decode as 1/4 (or 1/2) their true value
  - two stores that applegpu shows as identical "O=1" can address different
    slots (1<<0 vs 1<<1)

applegpu's source already stubs this as a TODO:
`#self.add_operand(MemoryShiftDesc('s'))` in ThreadgroupLoadStoreInstructionDesc.
Mesa's AGX2.xml doesn't model it either (hence its "unexpected set bits").
