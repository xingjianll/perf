   0: 00000000             jmp_incomplete 0
   4: 00000000             jmp_incomplete 0
   8: 00000000             jmp_incomplete 0
   c: 00000000             jmp_incomplete 0
  10: 00000000             jmp_incomplete 0
  14: 00000000             jmp_incomplete 0
  18: 00000000             jmp_incomplete 0
  1c: 00000000             jmp_incomplete 0
  20: 00000000             jmp_incomplete 0
  24: 00000000             jmp_incomplete 0
  28: 00000000             jmp_incomplete 0
  2c: 00000000             jmp_incomplete 0
  30: 00000000             jmp_incomplete 0
  34: 00000000             jmp_incomplete 0
  38: 00000000             jmp_incomplete 0
  3c: 00000000             jmp_incomplete 0
  40: f2051004             mov      $r1, thread_in_grid_x
  44: 8e05c2222c001000     iadd     $r1, ^r1, ^r1, lsl 2
  4c: 0e0d0020a8000000     iadd     r3, 0, $r1, lsl 1
  54: 0e350220a8000000     iadd     r13, 2, $r1, lsl 1
  5c: 0e390420a8000000     iadd     r14, 4, $r1, lsl 1
  64: 0e3d0620a8000000     iadd     r15, 6, $r1, lsl 1
  6c: 0e050820ac000000     iadd     r1, 8, ^r1, lsl 1
  74: 0559240e00c03200     load     r11_r12, du2, r1, i32, xy, a
  7c: 0549640e00c03200     load     r9_r10, du2, r3, i32, xy, a
  84: 0539a40e01c03200     load     r7_r8, du2, r13, i32, xy, a
  8c: 0529c40e01c03200     load     r5_r6, du2, r14, i32, xy, a
  94: 0509e40e01c03200     load     r1_r2, du2, r15, i32, xy, a
  9c: 3800                 wait     a
  9e: e24500000000         ldimm    $r17, 0
  a4: e2000000             ldimm    $r0l, 0
  a8: 8e4501202e000000     iadd     $r17, 1, ^r17
  b0: 3aa5968229520200     ffma     r9, $r11, $r12, r9
  b8: 3aa9968229540200     ffma     r10, $r11, $r12, r10
  c0: 3a9d9682294e0200     ffma     r7, $r11, $r12, r7
  c8: 3aa1968229500200     ffma     r8, $r11, $r12, r8
  d0: 3a959682294a0200     ffma     r5, $r11, $r12, r5
  d8: 3a999682294c0200     ffma     r6, $r11, $r12, r6
  e0: 3a85968229420200     ffma     r1, $r11, $r12, r1
  e8: 3a89568225440200     ffma     r2, r11, r12, r2
  f0: 529562821800         while    r17, u4, 2, nseq
  f6: 00c0b2ffffff         jmp_any  -78
  fc: 521600000000         pop_exec 2
 102: 4549640e00c03200     store    r9_r10, du2, r3, i32, xy, a
 10a: 4539a40e01c03200     store    r7_r8, du2, r13, i32, xy, a
 112: 4529c40e01c03200     store    r5_r6, du2, r14, i32, xy, a
 11a: 4509e40e01c03200     store    r1_r2, du2, r15, i32, xy, a
 122: 8800                 stop
