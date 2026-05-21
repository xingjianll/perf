   0: 00000000                 jmp_incomplete 0
   4: 00000000                 jmp_incomplete 0
   8: 00000000                 jmp_incomplete 0
   c: 00000000                 jmp_incomplete 0
  10: 00000000                 jmp_incomplete 0
  14: 00000000                 jmp_incomplete 0
  18: 00000000                 jmp_incomplete 0
  1c: 00000000                 jmp_incomplete 0
  20: 00000000                 jmp_incomplete 0
  24: 00000000                 jmp_incomplete 0
  28: 00000000                 jmp_incomplete 0
  2c: 00000000                 jmp_incomplete 0
  30: 00000000                 jmp_incomplete 0
  34: 00000000                 jmp_incomplete 0
  38: 00000000                 jmp_incomplete 0
  3c: 00000000                 jmp_incomplete 0
  40: f2051004                 mov      $r1, thread_in_grid_x
  44: 8e05c2222c001000         iadd     $r1, ^r1, ^r1, lsl 2
  4c: f2083000                 mov      $r2l, thread_in_threadgroup_x
  50: 0e0d0020a8000000         iadd     r3, 0, $r1, lsl 1
  58: 0e350220a8000000         iadd     r13, 2, $r1, lsl 1
  60: 0e390420a8000000         iadd     r14, 4, $r1, lsl 1
  68: 0e3d0620a8000000         iadd     r15, 6, $r1, lsl 1
  70: 0e050820ac000000         iadd     r1, 8, ^r1, lsl 1
  78: 0e02004008001000         iadd     r0h, 0, $r2l, lsl 2
  80: 3e8906440c00             u16_to_f r2, ^r2l, rte
Unexpected set bits: [40, 47]
  86: 290901021481             lstore   r2, r0h, 0, i32, x
  8c: 6800                     barrier
  8e: 0559240e00c03200         load     r11_r12, du2, r1, i32, xy, a
  96: 0549640e00c03200         load     r9_r10, du2, r3, i32, xy, a
  9e: 0539a40e01c03200         load     r7_r8, du2, r13, i32, xy, a
  a6: 0529c40e01c03200         load     r5_r6, du2, r14, i32, xy, a
  ae: 0509e40e01c03200         load     r1_r2, du2, r15, i32, xy, a
  b6: 3800                     wait     a
  b8: e24500000000             ldimm    $r17, 0
  be: e2000000                 ldimm    $r0l, 0
  c2: 8e4501202e000000         iadd     $r17, 1, ^r17
  ca: 3aa5968229520200         ffma     r9, $r11, $r12, r9
  d2: 3aa9968229540200         ffma     r10, $r11, $r12, r10
  da: 3a9d9682294e0200         ffma     r7, $r11, $r12, r7
  e2: 3aa1968229500200         ffma     r8, $r11, $r12, r8
  ea: 3a959682294a0200         ffma     r5, $r11, $r12, r5
  f2: 3a999682294c0200         ffma     r6, $r11, $r12, r6
  fa: 3a85968229420200         ffma     r1, $r11, $r12, r1
 102: 3a89568225440200         ffma     r2, r11, r12, r2
 10a: 521562821000             while    r17, u4l, 2, ine
 110: 00c0b2ffffff             jmp_any  -78
 116: 521600000000             pop_exec 2
 11c: f2023000                 mov      $r0h, thread_in_threadgroup_x
 120: 0e0200100c001000         iadd     r0h, 0, ^r0h, lsl 2
Unexpected set bits: [40, 47]
 128: 692d01021481             lload    r11, r0h, 0, i32, x
 12e: 2aa5d6222d00             fadd     r9, ^r11, ^r9
 134: 4549640e00c03200         store    r9_r10, du2, r3, i32, xy, a
 13c: 4539a40e01c03200         store    r7_r8, du2, r13, i32, xy, a
 144: 4529c40e01c03200         store    r5_r6, du2, r14, i32, xy, a
 14c: 4509e40e01c03200         store    r1_r2, du2, r15, i32, xy, a
 154: 8800                     stop
