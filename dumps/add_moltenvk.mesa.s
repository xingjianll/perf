   0: 0521040d00c8f200     load     r4_r5_r6_r7, du2, 0, lsl 2, i32, xyzw, a
   8: 0501940d00c0f200     load     r0_r1_r2_r3, du2, 9, i32, xyzw, a
  10: 0541940d01c01200     load     r8, du2, 25, i32, x, a
  18: 3800                 wait     a
  1a: becd0a242800         u32_to_f $r19, $r1, rte
  20: bebd0a642800         u32_to_f $r15, $r3, rte
  26: 0a496682             rcp      r18, r19
  2a: beb50aa42800         u32_to_f $r13, $r5, rte
  30: 0a395e82             rcp      r14, r15
  34: 0e71861a00000000     isub     r28, $r3, 1
  3c: be25460a0000         popcnt   $r9, r3
  42: 0a315a82             rcp      r12, r13
  46: 0e69841a00000000     isub     r26, $r2, 1
  4e: bec50a442800         u32_to_f $r17, $r2, rte
  54: e258003c             ldimm    $r22l, 15360
  58: 9e7dcca224000000     imul     $r31, ^r6, r5
  60: 126cd2220000c12a     csel     r27l, ^r9, 2, 0, $r22l, ult
  68: 0a416282             rcp      r16, r17
  6c: be19440a0000         popcnt   $r6, r2
  72: bead0ae42b00         u32_to_f $r11, $r31, rte
  78: 126ecc220000c12a     csel     r27h, ^r6, 2, 0, $r22l, ult
  80: 0e65821a00000000     isub     r25, $r1, 1
  88: 0a295682             rcp      r10, r11
  8c: be19420a0000         popcnt   $r6, r1
  92: bed50a042800         u32_to_f $r21, $r0, rte
  98: 1260cc220000c12a     csel     r24l, ^r6, 2, 0, $r22l, ult
  a0: 9e797ee22c000000     imul     $r30, r31, ^r7
  a8: be19800a0000         popcnt   $r6, $r0
  ae: 0a516a82             rcp      r20, r21
  b2: 1262cc220000c12e     csel     r24h, ^r6, 2, 0, ^r22l, ult
  ba: be9d0ac42700         u32_to_f $r7, r30, rte
  c0: 0e5d401a00000000     isub     r23, r0, 1
  c8: 2ef5000029080800     bfeil    r29, 0, $r8, 8, 8
  d0: 7e5950f28303         and      r22, r8, 255
  d6: 0a194e82             rcp      r6, r7
  da: 62240000             ldimm    r9l, 0
  de: c520803d00803000     mov      u4, r4
  e6: c528a03d00803000     mov      u5, r5
  ee: c5f8c03d00803000     mov      u6, r31
  f6: c5f0e03d00803000     mov      u7, r30
  fe: c544003d01803000     mov      u8, r8h_r9l
 106: c5e8203d01803000     mov      u9, r29
 10e: c500403d01803000     mov      u10, r0
 116: c508603d01803000     mov      u11, r1
 11e: c510803d01803000     mov      u12, r2
 126: c518a03d01803000     mov      u13, r3
 12e: c5e0c03d01803000     mov      u14, r28
 136: c5d8203d04803000     mov      u33, r27
 13e: c5d0e03d01803000     mov      u15, r26
 146: c5c8003d02803000     mov      u16, r25
 14e: c5c0403d04803000     mov      u34, r24
 156: c5b8203d02803000     mov      u17, r23
 15e: c5b0403d02803000     mov      u18, r22
 166: c5a8603d02803000     mov      u19, r21
 16e: c5a0803d02803000     mov      u20, r20
 176: c598a03d02803000     mov      u21, r19
 17e: c590c03d02803000     mov      u22, r18
 186: c588e03d02803000     mov      u23, r17
 18e: c580003d03803000     mov      u24, r16
 196: c578203d03803000     mov      u25, r15
 19e: c570403d03803000     mov      u26, r14
 1a6: c568603d03803000     mov      u27, r13
 1ae: c560803d03803000     mov      u28, r12
 1b6: c558a03d03803000     mov      u29, r11
 1be: c550c03d03803000     mov      u30, r10
 1c6: c538e03d03803000     mov      u31, r7
 1ce: c530003d04803000     mov      u32, r6
 1d6: 8800                 stop
 1d8: 0800                 trap
 1da: 0800                 trap
 1dc: 0800                 trap
 1de: 0800                 trap
 1e0: 0800                 trap
 1e2: 0800                 trap
 1e4: 0800                 trap
 1e6: 0800                 trap
 1e8: 0800                 trap
 1ea: 0800                 trap
 1ec: 0800                 trap
 1ee: 0800                 trap
 1f0: 0800                 trap
 1f2: 0800                 trap
 1f4: 0800                 trap
 1f6: 0800                 trap
 1f8: 0800                 trap
 1fa: 0800                 trap
 1fc: 0800                 trap
 1fe: 0800                 trap
 200: 00000000             jmp_incomplete 0
 204: 00000000             jmp_incomplete 0
 208: 00000000             jmp_incomplete 0
 20c: 00000000             jmp_incomplete 0
 210: 00000000             jmp_incomplete 0
 214: 00000000             jmp_incomplete 0
 218: 00000000             jmp_incomplete 0
 21c: 00000000             jmp_incomplete 0
 220: 00000000             jmp_incomplete 0
 224: 00000000             jmp_incomplete 0
 228: 00000000             jmp_incomplete 0
 22c: 00000000             jmp_incomplete 0
 230: 00000000             jmp_incomplete 0
 234: 00000000             jmp_incomplete 0
 238: 00000000             jmp_incomplete 0
 23c: 00000000             jmp_incomplete 0
 240: f2091004             mov      $r2, thread_in_grid_x
 244: f2051104             mov      $r1, thread_in_grid_y
 248: 9e05c2d212c40201     imadd    $r1, ^r1, u54h, ^r2
 250: f2091204             mov      $r2, thread_in_grid_z
 254: 9e05c4e21ac20201     imadd    $r1, ^r2, u55, ^r1
 25c: e2000000             ldimm    $r0l, 0
 260: 522842821800         if       r1, u4, 1, ult
 266: 20c064060000         jmp_none 1636
 26c: be8d0a242800         u32_to_f $r3, $r1, rte
 272: be8908602800         f_to_u32 $r2, $r3, rtz
 278: 8e09824a2c000000     isub     $r2, $r1, ^r2
 280: 8e15841a00000000     isub     $r5, $r2, 1
 288: 828986a21aca400c0001 csel     $r2, $r3, u53, ^r5, ^r2, feq
 292: 9a9580612804         fmul     $r5, u32, $r3
 298: be990b442c00         s32_to_f $r6, ^r2, rte
 29e: be8908a02800         f_to_u32 $r2, $r5, rtz
 2a4: ba8dbea928c60200     ffma     $r3, u31.neg, $r5, ^r3
 2ac: 9a9d80c12c04         fmul     $r7, u32, ^r6
 2b2: be990a442800         u32_to_f $r6, $r2, rte
 2b8: ba8d80612cce0204     ffma     $r3, u32, ^r3, ^r7
 2c0: aa95cac2ac00         fadd     $r5, ^r5, ^r6.neg
 2c6: aa8dc6c21201         fadd     $r3, ^r3, u54l
 2cc: aa8dc6a22c00         fadd     $r3, ^r3, ^r5
 2d2: be8d09602c00         f_to_s32 $r3, ^r3, rtz
 2d8: 8e0bc4626c000000     iadd     $dr2, ^r2, ^r3.sx
 2e0: fe158e098000         mov      $r5, u7
 2e6: 9e1f84a22c000000     imul     $dr7, $r2, ^r5
 2ee: 9e0dc6e218d00200     imadd    $r3, ^r3, u7, ^r8
 2f6: 921082e22c010130     csel     $r4l, $r1, ^r7, 1, 0, ult
 2fe: 9202006028010130     csel     $r0h, 0, $r3, 1, 0, ult
 306: 920200602cc8108c     csel     $r0h, 0, ^r3, ^r4l, ^r0h, seq
 30e: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 316: 8e09c41a0c000000     isub     $r2, ^r2, ^r0h
 31e: 920982e21800412c     csel     $r2, $r1, u7, 0, ^r2, ult
 326: 923582e21800412c     csel     $r13, $r1, u7, 0, ^r2, ult
 32e: 9e299ae218000000     imul     $r10, $r13, u7
 336: 8e1d424a25000000     isub     $r7, r1, r10
 33e: be8d0ae42800         u32_to_f $r3, $r7, rte
 344: be8908602800         f_to_u32 $r2, $r3, rtz
 34a: 8e098e4a2c000000     isub     $r2, $r7, ^r2
 352: 8e15841a00000000     isub     $r5, $r2, 1
 35a: 828986a21aca400c0001 csel     $r2, $r3, u53, ^r5, ^r2, feq
 364: 9a95bc612800         fmul     $r5, u30, $r3
 36a: be990b442c00         s32_to_f $r6, ^r2, rte
 370: be8908a02800         f_to_u32 $r2, $r5, rtz
 376: ba8dbaa928c60200     ffma     $r3, u29.neg, $r5, ^r3
 37e: 9aa1bcc12c00         fmul     $r8, u30, ^r6
 384: be990a442800         u32_to_f $r6, $r2, rte
 38a: ba8dbc612cd00200     ffma     $r3, u30, ^r3, ^r8
 392: aa95cac2ac00         fadd     $r5, ^r5, ^r6.neg
 398: aa8dc6c21201         fadd     $r3, ^r3, u54l
 39e: aa8dc6a22c00         fadd     $r3, ^r3, ^r5
 3a4: be8d09602c00         f_to_s32 $r3, ^r3, rtz
 3aa: 8e0bc4626c000000     iadd     $dr2, ^r2, ^r3.sx
 3b2: fe158c098000         mov      $r5, u6
 3b8: bea50aa42900         u32_to_f $r9, $r13, rte
 3be: 9e1784a22c000000     imul     $dr5, $r2, ^r5
 3c6: 7e4598098000         mov      r17, u12
 3cc: 9aa1b4212900         fmul     $r8, u26, $r9
 3d2: 9e19c6c218cc0200     imadd    $r6, ^r3, u6, ^r6
 3da: 92108ea22c010130     csel     $r4l, $r7, ^r5, 1, 0, ult
 3e2: be8d08202900         f_to_u32 $r3, $r9, rtz
 3e8: 920200c028010130     csel     $r0h, 0, $r6, 1, 0, ult
 3f0: 920200c02cc8108c     csel     $r0h, 0, ^r6, ^r4l, ^r0h, seq
 3f8: 8e0d5a6a2c000000     isub     $r3, r13, ^r3
 400: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 408: 8e19861a00000000     isub     $r6, $r3, 1
 410: 8e09c41a0c000000     isub     $r2, ^r2, ^r0h
 418: 92098ec21800412c     csel     $r2, $r7, u6, 0, ^r2, ult
 420: 9231cec21800412c     csel     $r12, ^r7, u6, 0, ^r2, ult
 428: be9d08002900         f_to_u32 $r7, $r8, rtz
 42e: 828d92a21acc600c0001 csel     $r3, $r9, u53, ^r6, ^r3, feq
 438: 9e3998c218d40200     imadd    $r14, $r12, u6, ^r10
 440: ba89b20929d20200     ffma     $r2, u25.neg, $r8, ^r9
 448: be8d0b642c00         s32_to_f $r3, ^r3, rte
 44e: 8e3d42ca25000000     isub     $r15, r1, r14
 456: be950ae42800         u32_to_f $r5, $r7, rte
 45c: 9a8db4612c00         fmul     $r3, u26, ^r3
 462: be990ae42900         u32_to_f $r6, $r15, rte
 468: aaa1d0a2ac00         fadd     $r8, ^r8, ^r5.neg
 46e: ba8db4412cc60200     ffma     $r3, u26, ^r2, ^r3
 476: be8908c02800         f_to_u32 $r2, $r6, rtz
 47c: aa95c6c21201         fadd     $r5, ^r3, u54l
 482: be8d0a842900         u32_to_f $r3, $r12, rte
 488: aaa1ca022d00         fadd     $r8, ^r5, ^r8
 48e: 8e095e4a2c000000     isub     $r2, r15, ^r2
 496: 9ac1b0612800         fmul     $r16, u24, $r3
 49c: 8e15841a00000000     isub     $r5, $r2, 1
 4a4: 82958ca21aca400c0001 csel     $r5, $r6, u53, ^r5, ^r2, feq
 4ae: be8908602400         f_to_u32 $r2, r3, rtz
 4b4: 9aa5b8c12800         fmul     $r9, u28, $r6
 4ba: bea90ba42c00         s32_to_f $r10, ^r5, rte
 4c0: 8e09584a2c000000     isub     $r2, r12, ^r2
 4c8: be9508202900         f_to_u32 $r5, $r9, rtz
 4ce: ba99b62929cc0200     ffma     $r6, u27.neg, $r9, ^r6
 4d6: 9aadb8412d00         fmul     $r11, u28, ^r10
 4dc: bea90aa42400         u32_to_f $r10, r5, rte
 4e2: ba99b8c12cd60200     ffma     $r6, u28, ^r6, ^r11
 4ea: bea109002d00         f_to_s32 $r8, ^r8, rtz
 4f0: aaa5d242ad00         fadd     $r9, ^r9, ^r10.neg
 4f6: aa99ccc21201         fadd     $r6, ^r6, u54l
 4fc: 8e1fce026d000000     iadd     $dr7, ^r7, ^r8.sx
 504: 8e29841a00000000     isub     $r10, $r2, 1
 50c: aa99cc222d00         fadd     $r6, ^r6, ^r9
 512: bea508002a00         f_to_u32 $r9, $r16, rtz
 518: 828986a21ad4400c0001 csel     $r2, $r3, u53, ^r10, ^r2, feq
 522: be9909c02c00         f_to_s32 $r6, ^r6, rtz
 528: 7e298a098000         mov      r10, u5
 52e: bead0b442c00         s32_to_f $r11, ^r2, rte
 534: fe099a098000         mov      $r2, u13
 53a: 8e17cac26c000000     iadd     $dr5, ^r5, ^r6.sx
 542: ba8dae092ac60200     ffma     $r3, u23.neg, $r16, ^r3
 54a: 9aadb0612d00         fmul     $r11, u24, ^r11
 550: bec90a242500         u32_to_f $r18, r9, rte
 556: baadb0612cd60200     ffma     $r11, u24, ^r3, ^r11
 55e: 9e0b4e422c000000     imul     $dr2, r7, ^r2
 566: aac9e042ae00         fadd     $r18, ^r16, ^r18.neg
 56c: aac1d6c21201         fadd     $r16, ^r11, u54l
 572: 9e2b8a422d000000     imul     $dr10, $r5, ^r10
 57a: aac1e0422e00         fadd     $r16, ^r16, ^r18
 580: 7e4996098000         mov      r18, u11
 586: bec109002e00         f_to_s32 $r16, ^r16, rtz
 58c: 924c5a422c010130     csel     $r19l, r13, ^r2, 1, 0, ult
 594: 9e09cca218d60200     imadd    $r2, ^r6, u5, ^r11
 59c: 92109e422d010130     csel     $r4l, $r15, ^r10, 1, 0, ult
 5a4: 9e19d0a219c60200     imadd    $r6, ^r8, u13, ^r3
 5ac: 9202004028010130     csel     $r0h, 0, $r2, 1, 0, ult
 5b4: 8e23d2026e000000     iadd     $dr8, ^r9, ^r16.sx
 5bc: 920800402cc8108c     csel     $r2l, 0, ^r2, ^r4l, ^r0h, seq
 5c4: 920200c028010130     csel     $r0h, 0, $r6, 1, 0, ult
 5cc: 9210c40000001190     csel     $r4l, ^r2l, 0, 0, 1, seq
 5d4: 9e0b50222e000000     imul     $dr2, r8, ^r17
 5dc: 120200c02ce6108c     csel     r0h, 0, ^r6, ^r19l, ^r0h, seq
 5e4: 8e15ca8a0c000000     isub     $r5, ^r5, ^r4l
 5ec: 922ddea21800a12c     csel     $r11, ^r15, u5, 0, ^r5, ult
 5f4: 9e15d28219c60200     imadd    $r5, ^r9, u12, ^r3
 5fc: 921858422c010130     csel     $r6l, r12, ^r2, 1, 0, ult
 604: 9e0996a218dc0200     imadd    $r2, $r11, u5, ^r14
 60c: 921000a028010130     csel     $r4l, 0, $r5, 1, 0, ult
 614: be8d0a642900         u32_to_f $r3, $r11, rte
 61a: 121000a02ccc808c     csel     r4l, 0, ^r5, ^r6l, ^r4l, seq
 622: 8e25424a2c000000     isub     $r9, r1, ^r2
 62a: 9ab9ac612800         fmul     $r14, u22, $r3
 630: be8908602800         f_to_u32 $r2, $r3, rtz
 636: ba99aac929860200     ffma     $r6, u21.neg, $r14, $r3
 63e: be9508c02900         f_to_u32 $r5, $r14, rtz
 644: 8e29564a2c000000     isub     $r10, r11, ^r2
 64c: be890a242900         u32_to_f $r2, $r9, rte
 652: 8e3d941a00000000     isub     $r15, $r10, 1
 65a: bec10aa42400         u32_to_f $r16, r5, rte
 660: 82bdc6a21ade400d0001 csel     $r15, ^r3, u53, ^r15, ^r10, feq
 66a: bea908402800         f_to_u32 $r10, $r2, rtz
 670: 9a8da8412800         fmul     $r3, u20, $r2
 676: bebd0be42d00         s32_to_f $r15, ^r15, rte
 67c: aab9dc02ae00         fadd     $r14, ^r14, ^r16.neg
 682: 8e29924a2d000000     isub     $r10, $r9, ^r10
 68a: 9ac1ace12d00         fmul     $r16, u22, ^r15
 690: 8e3d941a00000000     isub     $r15, $r10, 1
 698: ba99acc12ce00200     ffma     $r6, u22, ^r6, ^r16
 6a0: 82a984a21ade400d0001 csel     $r10, $r2, u53, ^r15, ^r10, feq
 6aa: aa99ccc21201         fadd     $r6, ^r6, u54l
 6b0: bebd08602800         f_to_u32 $r15, $r3, rtz
 6b6: aa99ccc22d00         fadd     $r6, ^r6, ^r14
 6bc: beb90b442d00         s32_to_f $r14, ^r10, rte
 6c2: 9244c80000001190     csel     $r17l, ^r4l, 0, 0, 1, seq
 6ca: be9909c02c00         f_to_s32 $r6, ^r6, rtz
 6d0: ba89a66928c40200     ffma     $r2, u19.neg, $r3, ^r2
 6d8: bea90ae42900         u32_to_f $r10, $r15, rte
 6de: 9ab9a8c12d00         fmul     $r14, u20, ^r14
 6e4: 8e17cac26c000000     iadd     $dr5, ^r5, ^r6.sx
 6ec: ba89a8412cdc0200     ffma     $r2, u20, ^r2, ^r14
 6f4: aac1c642ad00         fadd     $r16, ^r3, ^r10.neg
 6fa: aab9c4c21201         fadd     $r14, ^r2, u54l
 700: 9e0b8a422e000000     imul     $dr2, $r5, ^r18
 708: 8e29d02a0e000000     isub     $r10, ^r8, ^r17l
 710: aaa1dc022e00         fadd     $r8, ^r14, ^r16
 716: 9e39d48219000000     imul     $r14, ^r10, u12
 71e: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 726: bea109002d00         f_to_s32 $r8, ^r8, rtz
 72c: 8e29ce1a0c000000     isub     $r10, ^r7, ^r0h
 734: 9e1dcc6219c60200     imadd    $r7, ^r6, u11, ^r3
 73c: 921056422c010130     csel     $r4l, r11, ^r2, 1, 0, ult
 744: 8e0bde026d000000     iadd     $dr2, ^r15, ^r8.sx
 74c: 920200e028010130     csel     $r0h, 0, $r7, 1, 0, ult
 754: fe1994098000         mov      $r6, u10
 75a: 120200e02cc8108c     csel     r0h, 0, ^r7, ^r4l, ^r0h, seq
 762: 9e1f44c22c000000     imul     $dr7, r2, ^r6
 76a: 8e3998ca2d000000     isub     $r14, $r12, ^r14
 772: fe1998e29900         and      $r6, $r12, u15
 778: 923998821998c02d     csel     $r14, $r12, u12, $r12, ^r14, ult
 780: 8299030100ccc00d0004 csel     $r6, u33h, 0.0, ^r6, ^r14, feq
 78a: 9e29d4a219000000     imul     $r10, ^r10, u13
 792: 921092e22c010130     csel     $r4l, $r9, ^r7, 1, 0, ult
 79a: 9e1dc64219d00200     imadd    $r7, ^r3, u10, ^r8
 7a2: 8e219a4a2d000000     isub     $r8, $r13, ^r10
 7aa: fe0d9ac29900         and      $r3, $r13, u14
 7b0: 92219aa2199a002d     csel     $r8, $r13, u13, $r13, ^r8, ult
 7b8: 828d020100c6000d0004 csel     $r3, u33l, 0.0, ^r3, ^r8, feq
 7c2: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 7ca: 9e0dc64219920101     imadd    $r3, ^r3, u42, u9
 7d2: 8e15ca1a0c000000     isub     $r5, ^r5, ^r0h
 7da: 920200e028010130     csel     $r0h, 0, $r7, 1, 0, ult
 7e2: 9e15ca6219000000     imul     $r5, ^r5, u11
 7ea: 920200e02cc8108c     csel     $r0h, 0, ^r7, ^r4l, ^r0h, seq
 7f2: 9e0dcc2219c60201     imadd    $r3, ^r6, u41, ^r3
 7fa: 8e1996aa2c000000     isub     $r6, $r11, ^r5
 802: fe1596029a00         and      $r5, $r11, u16
 808: 921996621996c02c     csel     $r6, $r11, u11, $r11, ^r6, ult
 810: 8295040100cac00c0004 csel     $r5, u34l, 0.0, ^r5, ^r6, feq
 81a: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 822: 9e0dca0219c60201     imadd    $r3, ^r5, u40, ^r3
 82a: 8e15c41a0c000000     isub     $r5, ^r2, ^r0h
 832: 9e095ac218900101     imadd    $r2, r13, u38, u8
 83a: 9e15ca4219000000     imul     $r5, ^r5, u10
 842: 9e0958a218c40201     imadd    $r2, r12, u37, ^r2
 84a: 8e1992aa2c000000     isub     $r6, $r9, ^r5
 852: fe1592229a00         and      $r5, $r9, u17
 858: 921992421992c02c     csel     $r6, $r9, u10, $r9, ^r6, ult
 860: 8295050100cac00c0004 csel     $r5, u34h, 0.0, ^r5, ^r6, feq
 86a: 9e09568218c40201     imadd    $r2, r11, u36, ^r2
 872: 1e0dcae218c60201     imadd    r3, ^r5, u39, ^r3
 87a: 1e09526218c40201     imadd    r2, r9, u35, ^r2
 882: 05114e0e50c01200     load     r2, du47, r2, i32, x, a
 88a: 0529620e60c01200     load     r5, du49, r3, i32, x, a
 892: 3800                 wait     a
 894: 9e0ddac219a40101     imadd    $r3, ^r13, u46, u18
 89c: 9e0dd8a219c60201     imadd    $r3, ^r12, u45, ^r3
 8a4: 9e0dd68219c60201     imadd    $r3, ^r11, u44, ^r3
 8ac: 1e0dd26219c60201     imadd    r3, ^r9, u43, ^r3
 8b4: 2a89ca422c00         fadd     r2, ^r5, ^r2
 8ba: 4511660e60c01200     store    r2, du51, r3, i32, x, a
 8c2: 8e05820280020000     iadd     $r1, $r1, 128, lsl 1
 8ca: d20e00000000         pop_exec 1, cache
 8d0: 522842821800         if       r1, u4, 1, ult
 8d6: 20c05c060000         jmp_none 1628
 8dc: be8d0a242800         u32_to_f $r3, $r1, rte
 8e2: be8908602800         f_to_u32 $r2, $r3, rtz
 8e8: 8e09824a2c000000     isub     $r2, $r1, ^r2
 8f0: 8e15841a00000000     isub     $r5, $r2, 1
 8f8: 828986a21aca400c0001 csel     $r2, $r3, u53, ^r5, ^r2, feq
 902: 9a9580612804         fmul     $r5, u32, $r3
 908: be990b442c00         s32_to_f $r6, ^r2, rte
 90e: be8908a02800         f_to_u32 $r2, $r5, rtz
 914: ba8dbea928c60200     ffma     $r3, u31.neg, $r5, ^r3
 91c: 9a9d80c12c04         fmul     $r7, u32, ^r6
 922: be990a442800         u32_to_f $r6, $r2, rte
 928: ba8d80612cce0204     ffma     $r3, u32, ^r3, ^r7
 930: aa95cac2ac00         fadd     $r5, ^r5, ^r6.neg
 936: aa8dc6c21201         fadd     $r3, ^r3, u54l
 93c: aa8dc6a22c00         fadd     $r3, ^r3, ^r5
 942: be8d09602c00         f_to_s32 $r3, ^r3, rtz
 948: 8e0bc4626c000000     iadd     $dr2, ^r2, ^r3.sx
 950: fe158e098000         mov      $r5, u7
 956: 9e1f84a22c000000     imul     $dr7, $r2, ^r5
 95e: 9e0dc6e218d00200     imadd    $r3, ^r3, u7, ^r8
 966: 921082e22c010130     csel     $r4l, $r1, ^r7, 1, 0, ult
 96e: 9202006028010130     csel     $r0h, 0, $r3, 1, 0, ult
 976: 920200602cc8108c     csel     $r0h, 0, ^r3, ^r4l, ^r0h, seq
 97e: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 986: 8e09c41a0c000000     isub     $r2, ^r2, ^r0h
 98e: 920982e21800412c     csel     $r2, $r1, u7, 0, ^r2, ult
 996: 923582e21800412c     csel     $r13, $r1, u7, 0, ^r2, ult
 99e: 9e299ae218000000     imul     $r10, $r13, u7
 9a6: 8e1d424a25000000     isub     $r7, r1, r10
 9ae: be8d0ae42800         u32_to_f $r3, $r7, rte
 9b4: be8908602800         f_to_u32 $r2, $r3, rtz
 9ba: 8e098e4a2c000000     isub     $r2, $r7, ^r2
 9c2: 8e15841a00000000     isub     $r5, $r2, 1
 9ca: 828986a21aca400c0001 csel     $r2, $r3, u53, ^r5, ^r2, feq
 9d4: 9a95bc612800         fmul     $r5, u30, $r3
 9da: be990b442c00         s32_to_f $r6, ^r2, rte
 9e0: be8908a02800         f_to_u32 $r2, $r5, rtz
 9e6: ba8dbaa928c60200     ffma     $r3, u29.neg, $r5, ^r3
 9ee: 9aa1bcc12c00         fmul     $r8, u30, ^r6
 9f4: be990a442800         u32_to_f $r6, $r2, rte
 9fa: ba8dbc612cd00200     ffma     $r3, u30, ^r3, ^r8
 a02: aa95cac2ac00         fadd     $r5, ^r5, ^r6.neg
 a08: aa8dc6c21201         fadd     $r3, ^r3, u54l
 a0e: aa8dc6a22c00         fadd     $r3, ^r3, ^r5
 a14: be8d09602c00         f_to_s32 $r3, ^r3, rtz
 a1a: 8e0bc4626c000000     iadd     $dr2, ^r2, ^r3.sx
 a22: fe158c098000         mov      $r5, u6
 a28: bea50aa42900         u32_to_f $r9, $r13, rte
 a2e: 9e1784a22c000000     imul     $dr5, $r2, ^r5
 a36: 7e4598098000         mov      r17, u12
 a3c: 9aa1b4212900         fmul     $r8, u26, $r9
 a42: 9e19c6c218cc0200     imadd    $r6, ^r3, u6, ^r6
 a4a: 92108ea22c010130     csel     $r4l, $r7, ^r5, 1, 0, ult
 a52: be8d08202900         f_to_u32 $r3, $r9, rtz
 a58: 920200c028010130     csel     $r0h, 0, $r6, 1, 0, ult
 a60: 920200c02cc8108c     csel     $r0h, 0, ^r6, ^r4l, ^r0h, seq
 a68: 8e0d5a6a2c000000     isub     $r3, r13, ^r3
 a70: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 a78: 8e19861a00000000     isub     $r6, $r3, 1
 a80: 8e09c41a0c000000     isub     $r2, ^r2, ^r0h
 a88: 92098ec21800412c     csel     $r2, $r7, u6, 0, ^r2, ult
 a90: 9231cec21800412c     csel     $r12, ^r7, u6, 0, ^r2, ult
 a98: be9d08002900         f_to_u32 $r7, $r8, rtz
 a9e: 828d92a21acc600c0001 csel     $r3, $r9, u53, ^r6, ^r3, feq
 aa8: 9e3998c218d40200     imadd    $r14, $r12, u6, ^r10
 ab0: ba89b20929d20200     ffma     $r2, u25.neg, $r8, ^r9
 ab8: be8d0b642c00         s32_to_f $r3, ^r3, rte
 abe: 8e3d42ca25000000     isub     $r15, r1, r14
 ac6: be950ae42800         u32_to_f $r5, $r7, rte
 acc: 9a8db4612c00         fmul     $r3, u26, ^r3
 ad2: be990ae42900         u32_to_f $r6, $r15, rte
 ad8: aaa1d0a2ac00         fadd     $r8, ^r8, ^r5.neg
 ade: ba8db4412cc60200     ffma     $r3, u26, ^r2, ^r3
 ae6: be8908c02800         f_to_u32 $r2, $r6, rtz
 aec: aa95c6c21201         fadd     $r5, ^r3, u54l
 af2: be8d0a842900         u32_to_f $r3, $r12, rte
 af8: aaa1ca022d00         fadd     $r8, ^r5, ^r8
 afe: 8e095e4a2c000000     isub     $r2, r15, ^r2
 b06: 9ac1b0612800         fmul     $r16, u24, $r3
 b0c: 8e15841a00000000     isub     $r5, $r2, 1
 b14: 82958ca21aca400c0001 csel     $r5, $r6, u53, ^r5, ^r2, feq
 b1e: be8908602400         f_to_u32 $r2, r3, rtz
 b24: 9aa5b8c12800         fmul     $r9, u28, $r6
 b2a: bea90ba42c00         s32_to_f $r10, ^r5, rte
 b30: 8e09584a2c000000     isub     $r2, r12, ^r2
 b38: be9508202900         f_to_u32 $r5, $r9, rtz
 b3e: ba99b62929cc0200     ffma     $r6, u27.neg, $r9, ^r6
 b46: 9aadb8412d00         fmul     $r11, u28, ^r10
 b4c: bea90aa42400         u32_to_f $r10, r5, rte
 b52: ba99b8c12cd60200     ffma     $r6, u28, ^r6, ^r11
 b5a: bea109002d00         f_to_s32 $r8, ^r8, rtz
 b60: aaa5d242ad00         fadd     $r9, ^r9, ^r10.neg
 b66: aa99ccc21201         fadd     $r6, ^r6, u54l
 b6c: 8e1fce026d000000     iadd     $dr7, ^r7, ^r8.sx
 b74: 8e29841a00000000     isub     $r10, $r2, 1
 b7c: aa99cc222d00         fadd     $r6, ^r6, ^r9
 b82: bea508002a00         f_to_u32 $r9, $r16, rtz
 b88: 828986a21ad4400c0001 csel     $r2, $r3, u53, ^r10, ^r2, feq
 b92: be9909c02c00         f_to_s32 $r6, ^r6, rtz
 b98: 7e298a098000         mov      r10, u5
 b9e: bead0b442c00         s32_to_f $r11, ^r2, rte
 ba4: fe099a098000         mov      $r2, u13
 baa: 8e17cac26c000000     iadd     $dr5, ^r5, ^r6.sx
 bb2: ba8dae092ac60200     ffma     $r3, u23.neg, $r16, ^r3
 bba: 9aadb0612d00         fmul     $r11, u24, ^r11
 bc0: bec90a242500         u32_to_f $r18, r9, rte
 bc6: baadb0612cd60200     ffma     $r11, u24, ^r3, ^r11
 bce: 9e0b4e422c000000     imul     $dr2, r7, ^r2
 bd6: aac9e042ae00         fadd     $r18, ^r16, ^r18.neg
 bdc: aac1d6c21201         fadd     $r16, ^r11, u54l
 be2: 9e2b8a422d000000     imul     $dr10, $r5, ^r10
 bea: aac9e0422e00         fadd     $r18, ^r16, ^r18
 bf0: 7e4196098000         mov      r16, u11
 bf6: bec909402e00         f_to_s32 $r18, ^r18, rtz
 bfc: 924c5a422c010130     csel     $r19l, r13, ^r2, 1, 0, ult
 c04: 9e09cca218d60200     imadd    $r2, ^r6, u5, ^r11
 c0c: 92109e422d010130     csel     $r4l, $r15, ^r10, 1, 0, ult
 c14: 9e19d0a219c60200     imadd    $r6, ^r8, u13, ^r3
 c1c: 9202004028010130     csel     $r0h, 0, $r2, 1, 0, ult
 c24: 8e23d2426e000000     iadd     $dr8, ^r9, ^r18.sx
 c2c: 920800402cc8108c     csel     $r2l, 0, ^r2, ^r4l, ^r0h, seq
 c34: 920200c028010130     csel     $r0h, 0, $r6, 1, 0, ult
 c3c: 9210c40000001190     csel     $r4l, ^r2l, 0, 0, 1, seq
 c44: 9e0b50222e000000     imul     $dr2, r8, ^r17
 c4c: 120200c02ce6108c     csel     r0h, 0, ^r6, ^r19l, ^r0h, seq
 c54: 8e15ca8a0c000000     isub     $r5, ^r5, ^r4l
 c5c: 922ddea21800a12c     csel     $r11, ^r15, u5, 0, ^r5, ult
 c64: 9e15d28219c60200     imadd    $r5, ^r9, u12, ^r3
 c6c: 921858422c010130     csel     $r6l, r12, ^r2, 1, 0, ult
 c74: 9e0996a218dc0200     imadd    $r2, $r11, u5, ^r14
 c7c: 921000a028010130     csel     $r4l, 0, $r5, 1, 0, ult
 c84: be8d0a642900         u32_to_f $r3, $r11, rte
 c8a: 121000a02ccc808c     csel     r4l, 0, ^r5, ^r6l, ^r4l, seq
 c92: 8e25c24a2c000000     isub     $r9, ^r1, ^r2
 c9a: 9ab9ac612800         fmul     $r14, u22, $r3
 ca0: be8908602800         f_to_u32 $r2, $r3, rtz
 ca6: ba85aac929860200     ffma     $r1, u21.neg, $r14, $r3
 cae: be9508c02900         f_to_u32 $r5, $r14, rtz
 cb4: 8e19564a2c000000     isub     $r6, r11, ^r2
 cbc: be890a242900         u32_to_f $r2, $r9, rte
 cc2: 8e298c1a00000000     isub     $r10, $r6, 1
 cca: bebd0aa42400         u32_to_f $r15, r5, rte
 cd0: 82a9c6a21ad4c00c0001 csel     $r10, ^r3, u53, ^r10, ^r6, feq
 cda: be9908402800         f_to_u32 $r6, $r2, rtz
 ce0: 9a8da8412800         fmul     $r3, u20, $r2
 ce6: bea90b442d00         s32_to_f $r10, ^r10, rte
 cec: aab9dce2ad00         fadd     $r14, ^r14, ^r15.neg
 cf2: 8e1992ca2c000000     isub     $r6, $r9, ^r6
 cfa: 9abdac412d00         fmul     $r15, u22, ^r10
 d00: 8e298c1a00000000     isub     $r10, $r6, 1
 d08: ba85ac212cde0200     ffma     $r1, u22, ^r1, ^r15
 d10: 82a984a21ad4c00c0001 csel     $r10, $r2, u53, ^r10, ^r6, feq
 d1a: aa99c2c21201         fadd     $r6, ^r1, u54l
 d20: be8508602800         f_to_u32 $r1, $r3, rtz
 d26: aa99ccc22d00         fadd     $r6, ^r6, ^r14
 d2c: beb90b442d00         s32_to_f $r14, ^r10, rte
 d32: 9244c80000001190     csel     $r17l, ^r4l, 0, 0, 1, seq
 d3a: be9909c02c00         f_to_s32 $r6, ^r6, rtz
 d40: ba89a66928c40200     ffma     $r2, u19.neg, $r3, ^r2
 d48: bea90a242800         u32_to_f $r10, $r1, rte
 d4e: 9ab9a8c12d00         fmul     $r14, u20, ^r14
 d54: 8e17cac26c000000     iadd     $dr5, ^r5, ^r6.sx
 d5c: ba89a8412cdc0200     ffma     $r2, u20, ^r2, ^r14
 d64: aabdc642ad00         fadd     $r15, ^r3, ^r10.neg
 d6a: aab9c4c21201         fadd     $r14, ^r2, u54l
 d70: 9e0b8a022e000000     imul     $dr2, $r5, ^r16
 d78: 8e29d02a0e000000     isub     $r10, ^r8, ^r17l
 d80: aaa1dce22d00         fadd     $r8, ^r14, ^r15
 d86: 9e39d48219000000     imul     $r14, ^r10, u12
 d8e: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 d96: bea109002d00         f_to_s32 $r8, ^r8, rtz
 d9c: 8e29ce1a0c000000     isub     $r10, ^r7, ^r0h
 da4: 9e19cc6219c60200     imadd    $r6, ^r6, u11, ^r3
 dac: 921056422c010130     csel     $r4l, r11, ^r2, 1, 0, ult
 db4: 8e07c2026d000000     iadd     $dr1, ^r1, ^r8.sx
 dbc: 920200c028010130     csel     $r0h, 0, $r6, 1, 0, ult
 dc4: fe0d94098000         mov      $r3, u10
 dca: 120200c02cc8108c     csel     r0h, 0, ^r6, ^r4l, ^r0h, seq
 dd2: 9e1b42622c000000     imul     $dr6, r1, ^r3
 dda: 8e2198ca2d000000     isub     $r8, $r12, ^r14
 de2: fe0d98e29900         and      $r3, $r12, u15
 de8: 922198821998002d     csel     $r8, $r12, u12, $r12, ^r8, ult
 df0: 82a1030100c6000d0004 csel     $r8, u33h, 0.0, ^r3, ^r8, feq
 dfa: 9e0dd4a219000000     imul     $r3, ^r10, u13
 e02: 921092c22c010130     csel     $r4l, $r9, ^r6, 1, 0, ult
 e0a: 9e19c44219ce0200     imadd    $r6, ^r2, u10, ^r7
 e12: 8e0d9a6a2c000000     isub     $r3, $r13, ^r3
 e1a: fe099ac29900         and      $r2, $r13, u14
 e20: 920d9aa2199a602c     csel     $r3, $r13, u13, $r13, ^r3, ult
 e28: 8289020100c4600c0004 csel     $r2, u33l, 0.0, ^r2, ^r3, feq
 e32: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 e3a: 9e09c44219920101     imadd    $r2, ^r2, u42, u9
 e42: 8e0dca1a0c000000     isub     $r3, ^r5, ^r0h
 e4a: 920200c028010130     csel     $r0h, 0, $r6, 1, 0, ult
 e52: 9e0dc66219000000     imul     $r3, ^r3, u11
 e5a: 920200c02cc8108c     csel     $r0h, 0, ^r6, ^r4l, ^r0h, seq
 e62: 9e09d02219c40201     imadd    $r2, ^r8, u41, ^r2
 e6a: 8e15966a2c000000     isub     $r5, $r11, ^r3
 e72: fe0d96029a00         and      $r3, $r11, u16
 e78: 921596621996a02c     csel     $r5, $r11, u11, $r11, ^r5, ult
 e80: 828d040100c6a00c0004 csel     $r3, u34l, 0.0, ^r3, ^r5, feq
 e8a: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 e92: 9e09c60219c40201     imadd    $r2, ^r3, u40, ^r2
 e9a: 8e0dc21a0c000000     isub     $r3, ^r1, ^r0h
 ea2: 9e055ac218900101     imadd    $r1, r13, u38, u8
 eaa: 9e0dc64219000000     imul     $r3, ^r3, u10
 eb2: 9e0558a218c20201     imadd    $r1, r12, u37, ^r1
 eba: 8e15926a2c000000     isub     $r5, $r9, ^r3
 ec2: fe0d92229a00         and      $r3, $r9, u17
 ec8: 921592421992a02c     csel     $r5, $r9, u10, $r9, ^r5, ult
 ed0: 828d050100c6a00c0004 csel     $r3, u34h, 0.0, ^r3, ^r5, feq
 eda: 9e05568218c20201     imadd    $r1, r11, u36, ^r1
 ee2: 1e09c6e218c40201     imadd    r2, ^r3, u39, ^r2
 eea: 1e05526218c20201     imadd    r1, r9, u35, ^r1
 ef2: 05092e0e50c01200     load     r1, du47, r1, i32, x, a
 efa: 0519420e60c01200     load     r3, du49, r2, i32, x, a
 f02: 3800                 wait     a
 f04: 9e09dac219a40101     imadd    $r2, ^r13, u46, u18
 f0c: 9e09d8a219c40201     imadd    $r2, ^r12, u45, ^r2
 f14: 9e09d68219c40201     imadd    $r2, ^r11, u44, ^r2
 f1c: 1e09d26219c40201     imadd    r2, ^r9, u43, ^r2
 f24: 2a85c6222c00         fadd     r1, ^r3, ^r1
 f2a: 4509460e60c01200     store    r1, du51, r2, i32, x, a
 f32: 520e00000000         pop_exec 1
 f38: 8800                 stop
