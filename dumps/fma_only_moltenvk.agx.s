
  40: f2051004             get_sr           r1.cache, sr80 (thread_position_in_grid.x)
  44: 8e05c2222c001000     iadd             r1.cache, r1.discard, r1.discard, lsl 2
  4c: 0e0d0020a8000000     iadd             r3, 0, r1.cache, lsl 1
  54: 0e350220a8000000     iadd             r13, 2, r1.cache, lsl 1
  5c: 0e390420a8000000     iadd             r14, 4, r1.cache, lsl 1
  64: 0e3d0620a8000000     iadd             r15, 6, r1.cache, lsl 1
  6c: 0e050820ac000000     iadd             r1, 8, r1.discard, lsl 1
  74: 0559240e00c03200     device_load      0, i32, xy, r11_r12, u2_u3, r1, unsigned
  7c: 0549640e00c03200     device_load      0, i32, xy, r9_r10, u2_u3, r3, unsigned
  84: 0539a40e01c03200     device_load      0, i32, xy, r7_r8, u2_u3, r13, unsigned
  8c: 0529c40e01c03200     device_load      0, i32, xy, r5_r6, u2_u3, r14, unsigned
  94: 0509e40e01c03200     device_load      0, i32, xy, r1_r2, u2_u3, r15, unsigned
  9c: 3800                 wait             0
  9e: e24500000000         mov_imm          r17.cache, 0, 0b0
  a4: e2000000             mov_imm          r0l.cache, 0
  a8: 8e4501202e000000     iadd             r17.cache, 1, r17.discard
  b0: 3aa5968229520200     fmadd32          r9, r11.cache, r12.cache, r9
  b8: 3aa9968229540200     fmadd32          r10, r11.cache, r12.cache, r10
  c0: 3a9d9682294e0200     fmadd32          r7, r11.cache, r12.cache, r7
  c8: 3aa1968229500200     fmadd32          r8, r11.cache, r12.cache, r8
  d0: 3a959682294a0200     fmadd32          r5, r11.cache, r12.cache, r5
  d8: 3a999682294c0200     fmadd32          r6, r11.cache, r12.cache, r6
  e0: 3a85968229420200     fmadd32          r1, r11.cache, r12.cache, r1
  e8: 3a89568225440200     fmadd32          r2, r11, r12, r2
  f0: 529562821800         while_icmp       r0l, nseq, r17, u4, 2
  f6: 00c0b2ffffff         jmp_exec_any     0xA8
  fc: 521600000000         pop_exec         r0l, 2
 102: 4549640e00c03200     device_store     0, i32, xy, r9_r10, u2_u3, r3, unsigned, 0
 10a: 4539a40e01c03200     device_store     0, i32, xy, r7_r8, u2_u3, r13, unsigned, 0
 112: 4529c40e01c03200     device_store     0, i32, xy, r5_r6, u2_u3, r14, unsigned, 0
 11a: 4509e40e01c03200     device_store     0, i32, xy, r1_r2, u2_u3, r15, unsigned, 0
 122: 8800                 stop             
