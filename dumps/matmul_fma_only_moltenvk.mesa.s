   0: 0531040d00c01200     load     r6, du2, 0, i32, x, a
   8: 0521340d00c43200     load     r4_r5, du2, 3, lsl 1, i32, xy, a
  10: 0501340d00c8f200     load     r0_r1_r2_r3, du2, 3, lsl 2, i32, xyzw, a
  18: 3800                 wait     a
  1a: bead0a242400         u32_to_f $r11, r1, rte
  20: bea50a642400         u32_to_f $r9, r3, rte
  26: 0a295682             rcp      r10, r11
  2a: be9d0a442400         u32_to_f $r7, r2, rte
  30: 8e193fc02c000000     iadd     $r6, 63, ^r6
  38: 0a215282             rcp      r8, r9
  3c: aeb900c02c060000     shr      $r14, ^r6, 6
  44: 0a194e82             rcp      r6, r7
  48: beb50ac42500         u32_to_f $r13, r14, rte
  4e: 2e9100802c020000     shr      r4, ^r4, 2
  56: 0a315a82             rcp      r12, r13
  5a: c570803d00803000     mov      u4, r14
  62: c568a03d00803000     mov      u5, r13
  6a: c560c03d00803000     mov      u6, r12
  72: c528e03d00803000     mov      u7, r5
  7a: c520003d01803000     mov      u8, r4
  82: c500203d01803000     mov      u9, r0
  8a: c508403d01803000     mov      u10, r1
  92: c510603d01803000     mov      u11, r2
  9a: c518803d01803000     mov      u12, r3
  a2: c558a03d01803000     mov      u13, r11
  aa: c550c03d01803000     mov      u14, r10
  b2: c548e03d01803000     mov      u15, r9
  ba: c540003d02803000     mov      u16, r8
  c2: c538203d02803000     mov      u17, r7
  ca: c530403d02803000     mov      u18, r6
  d2: 8800                 stop
  d4: 0800                 trap
  d6: 0800                 trap
  d8: 0800                 trap
  da: 0800                 trap
  dc: 0800                 trap
  de: 0800                 trap
  e0: 0800                 trap
  e2: 0800                 trap
  e4: 0800                 trap
  e6: 0800                 trap
  e8: 0800                 trap
  ea: 0800                 trap
  ec: 0800                 trap
  ee: 0800                 trap
  f0: 0800                 trap
  f2: 0800                 trap
  f4: 0800                 trap
  f6: 0800                 trap
  f8: 0800                 trap
  fa: 0800                 trap
  fc: 0800                 trap
  fe: 0800                 trap
 100: 00000000             jmp_incomplete 0
 104: 00000000             jmp_incomplete 0
 108: 00000000             jmp_incomplete 0
 10c: 00000000             jmp_incomplete 0
 110: 00000000             jmp_incomplete 0
 114: 00000000             jmp_incomplete 0
 118: 00000000             jmp_incomplete 0
 11c: 00000000             jmp_incomplete 0
 120: 00000000             jmp_incomplete 0
 124: 00000000             jmp_incomplete 0
 128: 00000000             jmp_incomplete 0
 12c: 00000000             jmp_incomplete 0
 130: 00000000             jmp_incomplete 0
 134: 00000000             jmp_incomplete 0
 138: 00000000             jmp_incomplete 0
 13c: 00000000             jmp_incomplete 0
 140: f20d0000             mov      $r3, threadgroup_in_grid_x
 144: be890a642800         u32_to_f $r2, $r3, rte
 14a: be8508402800         f_to_u32 $r1, $r2, rtz
 150: 8e05c62a2c000000     isub     $r1, ^r3, ^r1
 158: 8e0d821a00000000     isub     $r3, $r1, 1
 160: 8285848218c6200c0001 csel     $r1, $r2, u36, ^r3, ^r1, feq
 16a: 9a8d8c412800         fmul     $r3, u6, $r2
 170: be950b242c00         s32_to_f $r5, ^r1, rte
 176: be8508602800         f_to_u32 $r1, $r3, rtz
 17c: ba898a6928c40200     ffma     $r2, u5.neg, $r3, ^r2
 184: 9a998ca12c00         fmul     $r6, u6, ^r5
 18a: be950a242800         u32_to_f $r5, $r1, rte
 190: ba898c412ccc0200     ffma     $r2, u6, ^r2, ^r6
 198: aa8dc6a2ac00         fadd     $r3, ^r3, ^r5.neg
 19e: aa89c4721001         fadd     $r2, ^r2, u35h
 1a4: aa89c4622c00         fadd     $r2, ^r2, ^r3
 1aa: be8909402c00         f_to_s32 $r2, ^r2, rtz
 1b0: f2023000             mov      $r0h, thread_in_threadgroup_x
 1b4: 8e07c2426c000000     iadd     $dr1, ^r1, ^r2.sx
 1bc: f2150100             mov      $r5, threadgroup_in_grid_y
 1c0: fe1d88098000         mov      $r7, u4
 1c6: f20d0200             mov      $r3, threadgroup_in_grid_z
 1ca: 9e3b82e228000000     imul     $dr14, $r1, $r7
 1d2: 0e19b4612c000000     iadd     r6, u26, ^r3
 1da: 8e0d00100c001000     iadd     $r3, 0, ^r0h, lsl 2
 1e2: 9e1f82e22c000000     imul     $dr7, $r1, ^r7
 1ea: 0e3100a02c001000     iadd     r12, 0, ^r5, lsl 2
 1f2: 7e2dc6c28000         and      r11, ^r3, 12
 1f8: 9e0d848218de0200     imadd    $r3, $r2, u4, ^r15
 200: f2150000             mov      $r5, threadgroup_in_grid_x
 204: 92248ac22d010130     csel     $r9l, $r5, ^r14, 1, 0, ult
 20c: 9e09c48218d00200     imadd    $r2, ^r2, u4, ^r8
 214: 92108ae22c010130     csel     $r4l, $r5, ^r7, 1, 0, ult
 21c: 921c006028010130     csel     $r7l, 0, $r3, 1, 0, ult
 224: 9202004028010130     csel     $r0h, 0, $r2, 1, 0, ult
 22c: 920c00602cd2e08c     csel     $r3l, 0, ^r3, ^r9l, ^r7l, seq
 234: 920200402cc8108c     csel     $r0h, 0, ^r2, ^r4l, ^r0h, seq
 23c: 9208c60000001190     csel     $r2l, ^r3l, 0, 0, 1, seq
 244: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 24c: 8e0d824a0c000000     isub     $r3, $r1, ^r2l
 254: 8e05c21a0c000000     isub     $r1, ^r1, ^r0h
 25c: f2023000             mov      $r0h, thread_in_threadgroup_x
 260: ae89001008010000     shr      $r2, $r0h, 1
 268: 92418a821800212c     csel     $r16, $r5, u4, 0, ^r1, ult
 270: 9e0dc68218000000     imul     $r3, ^r3, u4
 278: 7e3984a29001         and      r14, $r2, u37l
 27e: 8e0501002a000000     iadd     $r1, 1, $r16
 286: 8e0d8a6a2c000000     isub     $r3, $r5, ^r3
 28e: 920dca8218ca602c     csel     $r3, ^r5, u4, ^r5, ^r3, ult
 296: 9e05c2821b000000     imul     $r1, ^r1, u28
 29e: 0e4900602c001000     iadd     r18, 0, ^r3, lsl 2
 2a6: 9e01b80126000010     imul     $r32, u28, r16
 2ae: 7e45c4e28000         and      r17, ^r2, 14
 2b4: 9289aa212caa212c0010 csel     $r34, u21, ^r1, u21, ^r1, ult
 2be: 2ed100104c050000     bfeil    r20, 0, ^r0h, 5, 1
 2c6: 626900000000         ldimm    r26, 0
 2cc: 626100000000         ldimm    r24, 0
 2d2: 627500000000         ldimm    r29, 0
 2d8: 627100000000         ldimm    r28, 0
 2de: 6295000000000010     ldimm    r37, 0
 2e6: 6291000000000010     ldimm    r36, 0
 2ee: 629d000000000010     ldimm    r39, 0
 2f6: 6299000000000010     ldimm    r38, 0
 2fe: 627d00000000         ldimm    r31, 0
 304: 627900000000         ldimm    r30, 0
 30a: 628d000000000010     ldimm    r35, 0
 312: 6285000000000010     ldimm    r33, 0
 31a: 62a5000000000010     ldimm    r41, 0
 322: 62a1000000000010     ldimm    r40, 0
 32a: 62ad000000000010     ldimm    r43, 0
 332: 62a9000000000010     ldimm    r42, 0
 33a: 626d00000000         ldimm    r27, 0
 340: 626500000000         ldimm    r25, 0
 346: 625d00000000         ldimm    r23, 0
 34c: 625900000000         ldimm    r22, 0
 352: 622900000000         ldimm    r10, 0
 358: 622500000000         ldimm    r9, 0
 35e: 622100000000         ldimm    r8, 0
 364: 621500000000         ldimm    r5, 0
 36a: 625500000000         ldimm    r21, 0
 370: 624d00000000         ldimm    r19, 0
 376: 623d00000000         ldimm    r15, 0
 37c: 623500000000         ldimm    r13, 0
 382: 621d00000000         ldimm    r7, 0
 388: 620d00000000         ldimm    r3, 0
 38e: 620900000000         ldimm    r2, 0
 394: 620500000000         ldimm    r1, 0
 39a: e2000000             ldimm    $r0l, 0
 39e: 522840422405         if       r32, r34, 1, ult
 3a4: 20c0b40a0000         jmp_none 2740
 3aa: be9d0ac42800         u32_to_f $r7, $r6, rte
 3b0: be8508e02800         f_to_u32 $r1, $r7, rtz
 3b6: 8e058c2a28000000     isub     $r1, $r6, $r1
 3be: 8e09821a00000000     isub     $r2, $r1, 1
 3c6: 82858e82188420080001 csel     $r1, $r7, u36, $r2, $r1, feq
 3d0: 9a8d9ce12800         fmul     $r3, u14, $r7
 3d6: be950b242800         s32_to_f $r5, $r1, rte
 3dc: be8508602800         f_to_u32 $r1, $r3, rtz
 3e2: ba899a69288e0200     ffma     $r2, u13.neg, $r3, $r7
 3ea: 9a9d9ca12800         fmul     $r7, u14, $r5
 3f0: be950a242800         u32_to_f $r5, $r1, rte
 3f6: ba899c41288e0200     ffma     $r2, u14, $r2, $r7
 3fe: aa8d86a2a800         fadd     $r3, $r3, $r5.neg
 404: aa8984721001         fadd     $r2, $r2, u35h
 40a: aa8984622800         fadd     $r2, $r2, $r3
 410: be8909402800         f_to_s32 $r2, $r2, rtz
 416: 8e07824268000000     iadd     $dr1, $r1, $r2.sx
 41e: fe0d94098000         mov      $r3, u10
 424: 9e5f826228000000     imul     $dr23, $r1, $r3
 42c: 9e1f426228000000     imul     $dr7, r1, $r3
 434: 9e0d844219700200     imadd    $r3, $r2, u10, r24
 43c: 92108ce226010130     csel     $r4l, $r6, r23, 1, 0, ult
 444: 9e09844219900200     imadd    $r2, $r2, u10, $r8
 44c: 92168ce228010130     csel     $r5h, $r6, $r7, 1, 0, ult
 454: 9202006028010130     csel     $r0h, 0, $r3, 1, 0, ult
 45c: 9214004028010130     csel     $r5l, 0, $r2, 1, 0, ult
 464: 92080040288ba088     csel     $r2l, 0, $r2, $r5h, $r5l, seq
 46c: 9202006028c8108c     csel     $r0h, 0, $r3, ^r4l, ^r0h, seq
 474: 9208840000001190     csel     $r2l, $r2l, 0, 0, 1, seq
 47c: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 484: 8e09824a08000000     isub     $r2, $r1, $r2l
 48c: 8e05821a0c000000     isub     $r1, $r1, ^r0h
 494: 920d8c4219002128     csel     $r3, $r6, u10, 0, $r1, ult
 49c: 9e05844219000000     imul     $r1, $r2, u10
 4a4: be950a642800         u32_to_f $r5, $r3, rte
 4aa: 8e058c2a28000000     isub     $r1, $r6, $r1
 4b2: 92354c42194c2028     csel     $r13, r6, u10, r6, $r1, ult
 4ba: 9aa9a0a12800         fmul     $r10, u16, $r5
 4c0: be8908a02800         f_to_u32 $r2, $r5, rtz
 4c6: ba859e49298a0200     ffma     $r1, u15.neg, $r10, $r5
 4ce: be9d08402900         f_to_u32 $r7, $r10, rtz
 4d4: 8e21464a28000000     isub     $r8, r3, $r2
 4dc: be890aa42900         u32_to_f $r2, $r13, rte
 4e2: 8e25901a00000000     isub     $r9, $r8, 1
 4ea: bebd0ae42400         u32_to_f $r15, r7, rte
 4f0: 82a58a82189200090001 csel     $r9, $r5, u36, $r9, $r8, feq
 4fa: bea108402800         f_to_u32 $r8, $r2, rtz
 500: 9a95a4412800         fmul     $r5, u18, $r2
 506: bea50b242900         s32_to_f $r9, $r9, rte
 50c: aaa994e2a900         fadd     $r10, $r10, $r15.neg
 512: 8e215a0a29000000     isub     $r8, r13, $r8
 51a: 9abda0212900         fmul     $r15, u16, $r9
 520: 8e25901a00000000     isub     $r9, $r8, 1
 528: ba85a021289e0200     ffma     $r1, u16, $r1, $r15
 530: 82a58482189200090001 csel     $r9, $r2, u36, $r9, $r8, feq
 53a: aaa182721001         fadd     $r8, $r1, u35h
 540: be8508a02800         f_to_u32 $r1, $r5, rtz
 546: aaa190422900         fadd     $r8, $r8, $r10
 54c: bebd0b242900         s32_to_f $r15, $r9, rte
 552: fe2598098000         mov      $r9, u12
 558: bea109002900         f_to_s32 $r8, $r8, rtz
 55e: ba89a2a928840200     ffma     $r2, u17.neg, $r5, $r2
 566: bea90a242800         u32_to_f $r10, $r1, rte
 56c: 9abda4e12900         fmul     $r15, u18, $r15
 572: 8e1f8e0269000000     iadd     $dr7, $r7, $r8.sx
 57a: ba89a441285e0200     ffma     $r2, u18, $r2, r15
 582: aa958a42a900         fadd     $r5, $r5, $r10.neg
 588: aa8984721001         fadd     $r2, $r2, u35h
 58e: 9e278e2229000000     imul     $dr9, $r7, $r9
 596: aa8984a22800         fadd     $r2, $r2, $r5
 59c: be8909402800         f_to_s32 $r2, $r2, rtz
 5a2: 9e15908219540200     imadd    $r5, $r8, u12, r10
 5aa: 8e07824268000000     iadd     $dr1, $r1, $r2.sx
 5b2: fe2196098000         mov      $r8, u11
 5b8: 9210862229010130     csel     $r4l, $r3, $r9, 1, 0, ult
 5c0: 920200a028010130     csel     $r0h, 0, $r5, 1, 0, ult
 5c8: 9e23820229000000     imul     $dr8, $r1, $r8
 5d0: 920200a028c8108c     csel     $r0h, 0, $r5, ^r4l, ^r0h, seq
 5d8: 8e15004026002000     iadd     $r5, 0, r18, lsl 4
 5e0: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 5e8: 9e25846219920200     imadd    $r9, $r2, u11, $r9
 5f0: 92109a0225010130     csel     $r4l, $r13, r8, 1, 0, ult
 5f8: 8e098e1a0c000000     isub     $r2, $r7, ^r0h
 600: 9202002029010130     csel     $r0h, 0, $r9, 1, 0, ult
 608: 9202002029c8108c     csel     $r0h, 0, $r9, ^r4l, ^r0h, seq
 610: 920d868219004128     csel     $r3, $r3, u12, 0, $r2, ult
 618: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 620: 9e15aca128804200     imadd    $r5, u22, $r5, $r32
 628: 8e05821a0c000000     isub     $r1, $r1, ^r0h
 630: 92095a6219002128     csel     $r2, r13, u11, 0, $r1, ult
 638: ae8500a028020000     shr      $r1, $r5, 2
 640: 9e09926128840200     imadd    $r2, u9, $r3, $r2
 648: f2023000             mov      $r0h, thread_in_threadgroup_x
 64c: ae8c001048050000     bfeil    $r3l, 0, $r0h, 5, 1
 654: 1e31840219820210     imadd    r44, $r2, u8, $r1
 65c: 8e04001008001000     iadd     $r1l, 0, $r0h, lsl 2
 664: ae95001008030000     shr      $r5, $r0h, 3
 66c: fe1082c08000         and      $r4l, $r1l, 12
 672: 8e22006088000000     iadd     $r8h, 0, $r3l, lsl 1
 67a: 9e05aca128000000     imul     $r1, u22, $r5
 682: fe09c1708000         and      $r2, ^r0h, 7
 688: 9e0daea128000000     imul     $r3, u23, $r5
 690: 8e028aa008002000     iadd     $r0h, $r5l, $r5l, lsl 4
 698: 9e158ec124404200     imadd    $r5, u7, r6, r32
 6a0: 0e02c14088000000     iadd     r0h, ^r0h, $r2l, lsl 1
 6a8: ae9d002028020000     shr      $r7, $r1, 2
 6b0: 8e05008025002000     iadd     $r1, 0, r12, lsl 4
 6b8: ae8d006028020000     shr      $r3, $r3, 2
 6c0: 0e358e4208100000     iadd     r45, $r7, $r2l
 6c8: 9e05ae21288a0200     imadd    $r1, u23, $r1, $r5
 6d0: 0e39864208100000     iadd     r46, $r3, $r2l
 6d8: 0e10c81009002000     iadd     r4l, ^r4l, $r8h, lsl 4
 6e0: 2ebd002028020010     shr      r47, $r1, 2
 6e8: 0e4162c025100000     iadd     r48, r17l, r14
 6f0: 626900000000         ldimm    r26, 0
 6f6: 626100000000         ldimm    r24, 0
 6fc: 627500000000         ldimm    r29, 0
 702: 627100000000         ldimm    r28, 0
 708: 6295000000000010     ldimm    r37, 0
 710: 6291000000000010     ldimm    r36, 0
 718: 629d000000000010     ldimm    r39, 0
 720: 6299000000000010     ldimm    r38, 0
 728: 627d00000000         ldimm    r31, 0
 72e: 627900000000         ldimm    r30, 0
 734: 628d000000000010     ldimm    r35, 0
 73c: 6285000000000010     ldimm    r33, 0
 744: 62a5000000000010     ldimm    r41, 0
 74c: 62a1000000000010     ldimm    r40, 0
 754: 62ad000000000010     ldimm    r43, 0
 75c: 62a9000000000010     ldimm    r42, 0
 764: 626d00000000         ldimm    r27, 0
 76a: 626500000000         ldimm    r25, 0
 770: 625d00000000         ldimm    r23, 0
 776: 625900000000         ldimm    r22, 0
 77c: 622900000000         ldimm    r10, 0
 782: 622500000000         ldimm    r9, 0
 788: 622100000000         ldimm    r8, 0
 78e: 621500000000         ldimm    r5, 0
 794: 625500000000         ldimm    r21, 0
 79a: 624d00000000         ldimm    r19, 0
 7a0: 623d00000000         ldimm    r15, 0
 7a6: 623500000000         ldimm    r13, 0
 7ac: 621d00000000         ldimm    r7, 0
 7b2: 620d00000000         ldimm    r3, 0
 7b8: 620900000000         ldimm    r2, 0
 7be: 620500000000         ldimm    r1, 0
 7c4: c21000000000         if       0.0, 0.0, 2, cache, feq
 7ca: 5288aae11801         if       u21, u39, 1, seq
 7d0: 20c01c020000         jmp_none 540
 7d6: 8e495a8225150000     iadd     $r50, r45, r44
 7de: aedd00402a060011     shr      $r55, $r50, 6
 7e6: fe55a4728014         and      $r53, $r50, 7
 7ec: 8e650040ae110000     iadd     $r57, 0, ^r50, lsl 1
 7f4: 9e47ae0201000016     imul     $dr49, $r55, 144
 7fc: fe4db2028215         and      $r51, $r57, 96
 802: fe51ba098010         mov      $r52, u29
 808: 8e4de6a00e151000     iadd     $r51, ^r51l, ^r53l, lsl 2
 810: 8e55a8222e150000     iadd     $r53, $r52, ^r49
 818: fe45bc098010         mov      $r49, u30
 81e: 92c6aa822e0101300005 csel     $r17h, $r53, ^r52, 1, 0, ult
 828: 8e45e2422e150000     iadd     $r49, ^r49, ^r50
 830: aec900602e020011     shr      $r50, ^r51, 2
 838: 8e59e3202e110000     iadd     $r54, ^r17h, ^r49
 840: aef10020e7040011     bfeil    $r60, 0, r57, 4, 3
 848: 8e4504a02a110000     iadd     $r49, 4, $r53
 850: 0e4faa432e151000     iadd     dr51, $dr53, ^r50, lsl 2
 858: 92c662a22e0101300005 csel     $r17h, r49, ^r53, 1, 0, ult
 862: 8e55eee2ae151000     iadd     $r53, ^r55, ^r55, lsl 3
 86a: 0e49e3c02e110000     iadd     r50, ^r17h, ^r54
 872: 0e5900a0ae110000     iadd     r54, 0, ^r53, lsl 1
 87a: 8e55b84a00140000     isub     $r53, $r60, 4
 882: 12ddb84200b8a02e5014 csel     r55, $r60, 4, $r60, ^r53, ult
 88c: 0e555ce225150000     iadd     r53, r46, r47
 894: 8e6904802b110000     iadd     $r58, 4, $r60
 89c: 12edb84200b8402b5014 csel     r59, $r60, 4, $r60, $r58, ult
 8a6: 12e17842007480275014 csel     r56, r60, 4, r58, r60, ult
 8b0: 0599160560c91200     load     r51, dr51, 1, lsl 2, i32, x, a
 8b8: 0584624467c11000     load     r48h, dr49, r59.sx, i8, x, b
 8c0: 05e8420467c11000     load     r61l, dr49, r58.sx, i8, x, a
 8c8: 058c020467c01000     load     r17h, dr49, r56.sx, i8, x, a
 8d0: 0588e20666c11000     load     r49l, dr49, r55, i8, x, a
 8d8: 858cca4c36c93000     load     r49h_r50l, du29, r54.sx, lsl 2, i16, xy, b
 8e0: 05a9ae4e36c9f200     load     r53_r54_r55_r56, du31, r53, lsl 2, i32, xyzw, b
 8e8: 3800                 wait     a
 8ea: aee500202f040011     shr      $r57, ^r57, 4
 8f2: 92edb842000021300014 csel     $r59, $r60, 4, 0, 2, ult
 8fc: 92e9b842003001303014 csel     $r58, $r60, 4, 48, 192, ult
 906: 92d1b842000f01333014 csel     $r52, $r60, 4, 15, 240, ult
 910: 92f1f842000041300014 csel     $r60, ^r60, 4, 0, 4, ult
 91a: fe51e8a28f15         and      $r52, ^r52, ^r61l
 920: 8e6500202f111000     iadd     $r57, 0, ^r57, lsl 2
 928: 2ed100802ef84211     shr      r52, ^r52, ^r60
 930: fe71f2428014         and      $r60, ^r57, 4
 936: fe65b4328e14         and      $r57, $r58, ^r17h
 93c: aecd00602ef84211     shr      $r51, ^r51, ^r60
 944: 2ee500202fb64211     shr      r57, ^r57, $r59
 94c: fe4de6c29815         and      $r51, ^r51, u38
 952: 2ec6006006080001     shr      r17h, r51l, 8
 95a: fe69f4228e15         and      $r58, ^r58, ^r49l
 960: 2ee900402ff64211     shr      r58, ^r58, ^r59
 968: 3801                 wait     b
 96a: fe44e1f08014         and      $r49l, ^r48h, 15
 970: aec200700a080011     shr      $r48h, $r51h, 8
 978: fe4ae248cf15         or       $r50h, ^r49l, ^r58l
 97e: fe44f288ce15         or       $r49l, ^r57l, ^r52l
 984: bed106540e11         u16_to_f $r52, ^r50h, rte
 98a: bee506240e11         u16_to_f $r57, ^r49l, rte
 990: 9ad1e8320e15         fmul     $r52, ^r52, ^r49h
 996: bec500640e11         u8_to_f  $r49, ^r51l, rte
 99c: 9ae5e4282f15         fmul     $r57, ^r50l.neg, ^r57
 9a2: bec900340e10         u8_to_f  $r50, ^r17h, rte
 9a8: 3ac5a8222eb24215     ffma     r49, $r52, ^r49, $r57
 9b0: becd00740e11         u8_to_f  $r51, ^r51h, rte
 9b6: 0e46001084001000     iadd     r17h, 0, r0h, lsl 3
 9be: bee900140e11         u8_to_f  $r58, ^r48h, rte
 9c4: 3acda8622eb24215     ffma     r51, $r52, ^r51, $r57
 9cc: 3ac9a8422eb24215     ffma     r50, $r52, ^r50, $r57
 9d4: 3ad1e8422ff24215     ffma     r52, ^r52, ^r58, ^r57
Unexpected set bits: [40, 47]
 9dc: 29d52302f4810010     lstore   r53_r54_r55_r56, r17h, 0, i32, xyzw
Unexpected set bits: [42, 47]
 9e4: 29c52302f6840810     lstore   r49_r50_r51_r52, r17h, 544, i32, xyzw
 9ec: 520e00000000         pop_exec 1
 9f2: 0e3108802d110000     iadd     r44, 8, ^r44
 9fa: 0e46600006052000     iadd     r17h, r48l, r48l, lsl 4
 a02: 6800                 barrier
 a04: e2c5000000000010     ldimm    $r49, 0
 a0c: 421000000000         if       0.0, 0.0, 2, feq
 a12: 8e48888008102000     iadd     $r50l, $r4l, $r4l, lsl 4
 a1a: 8e42018008100000     iadd     $r48h, 1, $r4l
 a22: 8e48a2400e150000     iadd     $r50l, $r49l, ^r50l
 a2a: 8e42e1100e152000     iadd     $r48h, ^r48h, ^r48h, lsl 4
 a32: 8e4800408e111000     iadd     $r50l, 0, ^r50l, lsl 3
 a3a: 8e42a2100e150000     iadd     $r48h, $r49l, ^r48h
 a42: 0e5ce46010150000     iadd     r55l, ^r50l, u35l
 a4a: 8e4800108e111000     iadd     $r50l, 0, ^r48h, lsl 3
 a52: 8e42028008100000     iadd     $r48h, 2, $r4l
 a5a: 0e5ae46010150000     iadd     r54h, ^r50l, u35l
 a62: 8e48e1100e152000     iadd     $r50l, ^r48h, ^r48h, lsl 4
 a6a: 8e42038008100000     iadd     $r48h, 3, $r4l
 a72: 8e48a2400e150000     iadd     $r50l, $r49l, ^r50l
 a7a: 8e42e1100e152000     iadd     $r48h, ^r48h, ^r48h, lsl 4
 a82: 8e4800408e111000     iadd     $r50l, 0, ^r50l, lsl 3
 a8a: 8e42a2100e150000     iadd     $r48h, $r49l, ^r48h
 a92: 0e58e46010150000     iadd     r54l, ^r50l, u35l
 a9a: 8e4800108e111000     iadd     $r50l, 0, ^r48h, lsl 3
 aa2: 8e42108008100000     iadd     $r48h, 16, $r4l
 aaa: 0e56e46010150000     iadd     r53h, ^r50l, u35l
 ab2: 8e48e1100e152000     iadd     $r50l, ^r48h, ^r48h, lsl 4
 aba: 8e42118008100000     iadd     $r48h, 17, $r4l
 ac2: 8e48a2400e150000     iadd     $r50l, $r49l, ^r50l
 aca: 8e42e1100e152000     iadd     $r48h, ^r48h, ^r48h, lsl 4
 ad2: 8e4800408e111000     iadd     $r50l, 0, ^r50l, lsl 3
 ada: 8e42a2100e150000     iadd     $r48h, $r49l, ^r48h
 ae2: 0e54e46010150000     iadd     r53l, ^r50l, u35l
 aea: 8e4800108e111000     iadd     $r50l, 0, ^r48h, lsl 3
 af2: 8e42128008100000     iadd     $r48h, 18, $r4l
 afa: 0e52e46010150000     iadd     r52h, ^r50l, u35l
 b02: 8e48e1100e152000     iadd     $r50l, ^r48h, ^r48h, lsl 4
 b0a: 8e42138004100000     iadd     $r48h, 19, r4l
 b12: 8e48a2400e150000     iadd     $r50l, $r49l, ^r50l
 b1a: 8e42e1100e152000     iadd     $r48h, ^r48h, ^r48h, lsl 4
 b22: 8e4800408e111000     iadd     $r50l, 0, ^r50l, lsl 3
 b2a: 8e42a2100e150000     iadd     $r48h, $r49l, ^r48h
 b32: 0e48e46010150000     iadd     r50l, ^r50l, u35l
 b3a: 8e4200108e111000     iadd     $r48h, 0, ^r48h, lsl 3
 b42: 8e4a01000a110000     iadd     $r50h, 1, $r48l
 b4a: 0e42e16010150000     iadd     r48h, ^r48h, u35l
 b52: 8e4ae5500e152000     iadd     $r50h, ^r50h, ^r50h, lsl 4
 b5a: 8e4ca23006140000     iadd     $r51l, $r49l, r17h
 b62: 8e4aa2500e150000     iadd     $r50h, $r49l, ^r50h
 b6a: 0e5010608e111000     iadd     r52l, 16, ^r51l, lsl 3
 b72: 0e4e10508e111000     iadd     r51h, 16, ^r50h, lsl 3
 b7a: 8e4c10000a110000     iadd     $r51l, 16, $r48l
 b82: 8e4a110006110000     iadd     $r50h, 17, r48l
 b8a: 8e4ce6600e152000     iadd     $r51l, ^r51l, ^r51l, lsl 4
 b92: 8e4ae5500e152000     iadd     $r50h, ^r50h, ^r50h, lsl 4
 b9a: 8e4ca2600e150000     iadd     $r51l, $r49l, ^r51l
 ba2: 8e4a62500e150000     iadd     $r50h, r49l, ^r50h
 baa: 0e4c10608e111000     iadd     r51l, 16, ^r51l, lsl 3
 bb2: 0e4a10508e111000     iadd     r50h, 16, ^r50h, lsl 3
Unexpected set bits: [40, 47]
 bba: 69912ec23781ff27     lload    r68_r69, r55l, -4, i32, xy
Unexpected set bits: [40, 47]
 bc2: 69892dc23781ff27     lload    r66_r67, r54h, -4, i32, xy
Unexpected set bits: [40, 47]
 bca: 69fd2cc23781ff17     lload    r63_r64, r54l, -4, i32, xy
Unexpected set bits: [40, 47]
 bd2: 69f52bc23781ff17     lload    r61_r62, r53h, -4, i32, xy
Unexpected set bits: [40, 47]
 bda: 69e92ac23781ff17     lload    r58_r59, r53l, -4, i32, xy
Unexpected set bits: [40, 47]
 be2: 69d929c23781ff17     lload    r54_r55, r52h, -4, i32, xy
Unexpected set bits: [40, 47]
 bea: 69a928c23781ff27     lload    r74_r75, r52l, -4, i32, xy
Unexpected set bits: [40, 47]
 bf2: 69a127c23781ff27     lload    r72_r73, r51h, -4, i32, xy
Unexpected set bits: [40, 47]
 bfa: 699926c23781ff27     lload    r70_r71, r51l, -4, i32, xy
Unexpected set bits: [40, 47]
 c02: 69d125c23781ff17     lload    r52_r53, r50h, -4, i32, xy
Unexpected set bits: [40, 47]
 c0a: 69e124c23781ff17     lload    r56_r57, r50l, -4, i32, xy
Unexpected set bits: [40, 47]
 c12: 69c921c23781ff17     lload    r50_r51, r48h, -4, i32, xy
 c1a: baa540622992421a     ffma     $r41, r64, $r75, $r41
 c22: baa17c6229904216     ffma     $r40, r62, $r75, $r40
 c2a: 3aa57e4229524216     ffma     r41, r63, $r74, r41
 c32: 3aa17a4229504216     ffma     r40, r61, $r74, r40
 c3a: ba8db66229864216     ffma     $r35, $r59, $r75, $r35
 c42: ba85ae6229824216     ffma     $r33, $r55, $r75, $r33
 c4a: 3a8db44229464216     ffma     r35, $r58, $r74, r35
 c52: 3a856c4229424216     ffma     r33, r54, $r74, r33
 c5a: bafd726229be0206     ffma     $r31, r57, $r75, $r31
 c62: baf9666229bc0206     ffma     $r30, r51, $r75, $r30
 c6a: 3afd7042297e0206     ffma     r31, r56, $r74, r31
 c72: 3af96442297c0206     ffma     r30, r50, $r74, r30
 c7a: baad8a622996421a     ffma     $r43, $r69, $r75, $r43
 c82: baa986622d94421a     ffma     $r42, $r67, ^r75, $r42
 c8a: 3aad88422956421a     ffma     r43, $r68, $r74, r43
 c92: 3aa984422d54421a     ffma     r42, $r66, ^r74, r42
 c9a: 0e4501202e110000     iadd     r49, 1, ^r49
 ca2: ba9d4a22298e421a     ffma     $r39, r69, $r73, $r39
 caa: ba994622298c421a     ffma     $r38, r67, $r73, $r38
 cb2: 3a9d4802294e421a     ffma     r39, r68, $r72, r39
 cba: 3a994402294c421a     ffma     r38, r66, $r72, r38
 cc2: baf5b62229ba0206     ffma     $r29, $r59, $r73, $r29
 cca: baf1ae2229b80206     ffma     $r28, $r55, $r73, $r28
 cd2: 3af5b402297a0206     ffma     r29, $r58, $r72, r29
 cda: 3af16c0229780206     ffma     r28, r54, $r72, r28
 ce2: bae9722229b40206     ffma     $r26, r57, $r73, $r26
 cea: bae1662229b00206     ffma     $r24, r51, $r73, $r24
 cf2: 3ae9700229740206     ffma     r26, r56, $r72, r26
 cfa: 3ae1640229700206     ffma     r24, r50, $r72, r24
 d02: ba958022298a421a     ffma     $r37, $r64, $r73, $r37
 d0a: ba91bc222d884216     ffma     $r36, $r62, ^r73, $r36
 d12: 3a95be02294a4216     ffma     r37, $r63, $r72, r37
 d1a: 3a91ba022d484216     ffma     r36, $r61, ^r72, r36
 d22: badd40e228ae020a     ffma     $r23, r64, $r71, $r23
 d2a: bad97ce228ac0206     ffma     $r22, r62, $r71, $r22
 d32: 3addbec2286e0206     ffma     r23, $r63, $r70, r23
 d3a: 3ad9bac2286c0206     ffma     r22, $r61, $r70, r22
 d42: baa9b6e228940206     ffma     $r10, $r59, $r71, $r10
 d4a: baa56ee228920206     ffma     $r9, r55, $r71, $r9
 d52: 3aa974c228540206     ffma     r10, r58, $r70, r10
 d5a: 3aa56cc228520206     ffma     r9, r54, $r70, r9
 d62: baa172e228900206     ffma     $r8, r57, $r71, $r8
 d6a: ba9566e2288a0206     ffma     $r5, r51, $r71, $r5
 d72: 3aa170c228500206     ffma     r8, r56, $r70, r8
 d7a: 3a9564c2284a0206     ffma     r5, r50, $r70, r5
 d82: baed8ae228b6020a     ffma     $r27, $r69, $r71, $r27
 d8a: bae586e22cb2020a     ffma     $r25, $r67, ^r71, $r25
 d92: 3aed88c22876020a     ffma     r27, $r68, $r70, r27
 d9a: 3ae584c22c72020a     ffma     r25, $r66, ^r70, r25
 da2: bad5caa22aaa0209     ffma     $r21, ^r69, $r53, $r21
 daa: bacdc6a22aa60209     ffma     $r19, ^r67, $r53, $r19
 db2: 3ad5c8822a6a0209     ffma     r21, ^r68, $r52, r21
 dba: 3acdc4822a660209     ffma     r19, ^r66, $r52, r19
 dc2: babdc0a22a9e0209     ffma     $r15, ^r64, $r53, $r15
 dca: bab5fca22a9a0205     ffma     $r13, ^r62, $r53, $r13
 dd2: 3abdfe822a5e0205     ffma     r15, ^r63, $r52, r15
 dda: 3ab5fa822a5a0205     ffma     r13, ^r61, $r52, r13
 de2: ba9df6a22a8e0205     ffma     $r7, ^r59, $r53, $r7
 dea: ba8deea22a860205     ffma     $r3, ^r55, $r53, $r3
 df2: 3a9df4822a4e0205     ffma     r7, ^r58, $r52, r7
 dfa: 3a8dec822a460205     ffma     r3, ^r54, $r52, r3
 e02: ba89f2a22a840205     ffma     $r2, ^r57, $r53, $r2
 e0a: ba85e6a22e820205     ffma     $r1, ^r51, ^r53, $r1
 e12: 3a89f0822a440205     ffma     r2, ^r56, $r52, r2
 e1a: 3a85e4822e420205     ffma     r1, ^r50, ^r52, r1
 e22: 529562020104         while    r49, 16, 2, nseq
 e28: 00c0eafbffff         jmp_any  -1046
 e2e: 521600000000         pop_exec 2
 e34: 0e0120002c110000     iadd     r32, 32, ^r32
 e3c: 0e3d08e02d110000     iadd     r47, 8, ^r47
 e44: 6800                 barrier
 e46: 523440422405         while    r32, r34, 2, ult
 e4c: 00c07ef9ffff         jmp_any  -1666
 e52: d21600000000         pop_exec 2, cache
 e58: d20e00000000         pop_exec 1, cache
 e5e: 8e090080ae100000     iadd     $r34, 0, ^r20, lsl 1
 e66: 8e5100402c012000     iadd     $r20, 0, ^r34, lsl 4
 e6e: 9e35b6012ecc0210     imadd    $r45, u27, ^r16, ^r6
 e76: 8e41e8422e002000     iadd     $r16, ^r20, ^r18, lsl 4
 e7e: 8e49e2802d002000     iadd     $r18, ^r17l, ^r12, lsl 4
 e86: 8e19e0622d000000     iadd     $r6, ^r16, ^r11
 e8e: 8e31e4c22d000000     iadd     $r12, ^r18, ^r14
 e96: 9e2d5a221b8c0204     imadd    $r11, r45, u25, $r6
 e9e: 920298821a010130     csel     $r0h, $r12, u20, 1, 0, ult
 ea6: 92424c621a410030     csel     $r16h, r6, u19, r0h, 0, ult
 eae: 1e39b08125560200     imadd    r14, u24, r12, r11
 eb6: 5289e1000000         if       ^r16h, 0, 1, nseq
 ebc: 4559c20e41c11200     store    r43, du33, r14, i32, x, a
 ec4: d20e00000000         pop_exec 1, cache
 eca: 8e4101c024000000     iadd     $r16, 1, r6
 ed2: 924460621a410030     csel     $r17l, r16, u19, r0h, 0, ult
 eda: 5289e2000000         if       ^r17l, 0, 1, nseq
 ee0: 0e4501c025000000     iadd     r17, 1, r14
 ee8: 4551220e42c11200     store    r42, du33, r17, i32, x, a
 ef0: d20e00000000         pop_exec 1, cache
 ef6: 8e4502c024000000     iadd     $r17, 2, r6
 efe: 924862621a410030     csel     $r18l, r17, u19, r0h, 0, ult
 f06: 5289e4000000         if       ^r18l, 0, 1, nseq
 f0c: 0e5102c025000000     iadd     r20, 2, r14
 f14: 4549820e42c11200     store    r41, du33, r20, i32, x, a
 f1c: d20e00000000         pop_exec 1, cache
 f22: 8e5103c024000000     iadd     $r20, 3, r6
 f2a: 924868621a410030     csel     $r18l, r20, u19, r0h, 0, ult
 f32: 5289e4000000         if       ^r18l, 0, 1, nseq
 f38: 0e0103c02d100000     iadd     r32, 3, ^r14
 f40: 4541020e44c11200     store    r40, du33, r32, i32, x, a
 f48: d20e00000000         pop_exec 1, cache
 f4e: 8e25018025100000     iadd     $r41, 1, r12
 f56: 928892821a0101300014 csel     $r34l, $r41, u20, 1, 0, ult
 f60: 92904c621a4400304000 csel     $r4l, r6, u19, r34l, 0, ult
 f6a: 1e39b02125560201     imadd    r14, u24, r41, r11
 f72: 5289c8000000         if       ^r4l, 0, 1, nseq
 f78: 4539c20e41c11200     store    r39, du33, r14, i32, x, a
 f80: d20e00000000         pop_exec 1, cache
 f86: 92ca60621a4400304000 csel     $r18h, r16, u19, r34l, 0, ult
 f90: 5289e5000000         if       ^r18h, 0, 1, nseq
 f96: 0e0101c025100000     iadd     r32, 1, r14
 f9e: 4531020e44c11200     store    r38, du33, r32, i32, x, a
 fa6: d20e00000000         pop_exec 1, cache
 fac: 92ca62621a4400304000 csel     $r18h, r17, u19, r34l, 0, ult
 fb6: 5289e5000000         if       ^r18h, 0, 1, nseq
 fbc: 0e0102c025100000     iadd     r32, 2, r14
 fc4: 4529020e44c11200     store    r37, du33, r32, i32, x, a
 fcc: d20e00000000         pop_exec 1, cache
 fd2: 92ca68621a4400304000 csel     $r18h, r20, u19, r34l, 0, ult
 fdc: 5289e5000000         if       ^r18h, 0, 1, nseq
 fe2: 0e0103c02d100000     iadd     r32, 3, ^r14
 fea: 4521020e44c11200     store    r36, du33, r32, i32, x, a
 ff2: d20e00000000         pop_exec 1, cache
 ff8: 8e0110c024100000     iadd     $r32, 16, r6
1000: 9e39da221b804204     imadd    $r14, ^r45, u25, $r32
1008: 929040621a4100300004 csel     $r4l, r32, u19, r0h, 0, ult
1012: 1e49b081255c0200     imadd    r18, u24, r12, r14
101a: 5289c8000000         if       ^r4l, 0, 1, nseq
1020: 4519420e42c11200     store    r35, du33, r18, i32, x, a
1028: d20e00000000         pop_exec 1, cache
102e: 8e0d11c024100000     iadd     $r35, 17, r6
1036: 929046621a4100300004 csel     $r4l, r35, u19, r0h, 0, ult
1040: 5289c8000000         if       ^r4l, 0, 1, nseq
1046: 0e11014026100000     iadd     r36, 1, r18
104e: 4509820e44c11200     store    r33, du33, r36, i32, x, a
1056: d20e00000000         pop_exec 1, cache
105c: 8e0512c024100000     iadd     $r33, 18, r6
1064: 929042621a4100300004 csel     $r4l, r33, u19, r0h, 0, ult
106e: 5289c8000000         if       ^r4l, 0, 1, nseq
1074: 0e11024026100000     iadd     r36, 2, r18
107c: 45f9820e44c01200     store    r31, du33, r36, i32, x, a
1084: d20e00000000         pop_exec 1, cache
108a: 8e7d13c024000000     iadd     $r31, 19, r6
1092: 92027e621ac10030     csel     $r0h, r31, u19, ^r0h, 0, ult
109a: 5289c1000000         if       ^r0h, 0, 1, nseq
10a0: 0e1103402e100000     iadd     r36, 3, ^r18
10a8: 45f1820e44c01200     store    r30, du33, r36, i32, x, a
10b0: d20e00000000         pop_exec 1, cache
10b6: 1e11b0212d5c0211     imadd    r36, u24, ^r41, r14
10be: 92ca40621a4400304004 csel     $r18h, r32, u19, r34l, 0, ult
10c8: 5289e5000000         if       ^r18h, 0, 1, nseq
10ce: 45e9820e44c01200     store    r29, du33, r36, i32, x, a
10d6: d20e00000000         pop_exec 1, cache
10dc: 928246621a4400304004 csel     $r0h, r35, u19, r34l, 0, ult
10e6: 5289c1000000         if       ^r0h, 0, 1, nseq
10ec: 0e49018024010000     iadd     r18, 1, r36
10f4: 45e1420e42c01200     store    r28, du33, r18, i32, x, a
10fc: d20e00000000         pop_exec 1, cache
1102: 928242621a4400304004 csel     $r0h, r33, u19, r34l, 0, ult
110c: 5289c1000000         if       ^r0h, 0, 1, nseq
1112: 0e49028024010000     iadd     r18, 2, r36
111a: 45d1420e42c01200     store    r26, du33, r18, i32, x, a
1122: d20e00000000         pop_exec 1, cache
1128: 92827e621ac400304000 csel     $r0h, r31, u19, ^r34l, 0, ult
1132: 5289c1000000         if       ^r0h, 0, 1, nseq
1138: 0e4903802c010000     iadd     r18, 3, ^r36
1140: 45c1420e42c01200     store    r24, du33, r18, i32, x, a
1148: d20e00000000         pop_exec 1, cache
114e: 8e75108025000000     iadd     $r29, 16, r12
1156: 9268ba821a010130     csel     $r26l, $r29, u20, 1, 0, ult
115e: 92024c621a740030     csel     $r0h, r6, u19, r26l, 0, ult
1166: 1e49b0a127560200     imadd    r18, u24, r29, r11
116e: 5289c1000000         if       ^r0h, 0, 1, nseq
1174: 45d9420e42c01200     store    r27, du33, r18, i32, x, a
117c: d20e00000000         pop_exec 1, cache
1182: 920260621a740030     csel     $r0h, r16, u19, r26l, 0, ult
118a: 5289c1000000         if       ^r0h, 0, 1, nseq
1190: 0e61014026000000     iadd     r24, 1, r18
1198: 45c9020e43c01200     store    r25, du33, r24, i32, x, a
11a0: d20e00000000         pop_exec 1, cache
11a6: 920262621a740030     csel     $r0h, r17, u19, r26l, 0, ult
11ae: 5289c1000000         if       ^r0h, 0, 1, nseq
11b4: 0e61024026000000     iadd     r24, 2, r18
11bc: 45b9020e43c01200     store    r23, du33, r24, i32, x, a
11c4: d20e00000000         pop_exec 1, cache
11ca: 925c68621a740030     csel     $r23l, r20, u19, r26l, 0, ult
11d2: 5289ee000000         if       ^r23l, 0, 1, nseq
11d8: 0e5d03402e000000     iadd     r23, 3, ^r18
11e0: 45b1e20e42c01200     store    r22, du33, r23, i32, x, a
11e8: d20e00000000         pop_exec 1, cache
11ee: 8e5d11802d000000     iadd     $r23, 17, ^r12
11f6: 9248ae821a010130     csel     $r18l, $r23, u20, 1, 0, ult
11fe: 9202cc621a640030     csel     $r0h, ^r6, u19, r18l, 0, ult
1206: 1e19b0e126d60200     imadd    r6, u24, r23, ^r11
120e: 5289c1000000         if       ^r0h, 0, 1, nseq
1214: 45a9c20e40c01200     store    r21, du33, r6, i32, x, a
121c: d20e00000000         pop_exec 1, cache
1222: 922ce0621a640030     csel     $r11l, ^r16, u19, r18l, 0, ult
122a: 5289d6000000         if       ^r11l, 0, 1, nseq
1230: 0e2d01c024000000     iadd     r11, 1, r6
1238: 4599620e41c01200     store    r19, du33, r11, i32, x, a
1240: d20e00000000         pop_exec 1, cache
1246: 9202e2621a640030     csel     $r0h, ^r17, u19, r18l, 0, ult
124e: 5289c1000000         if       ^r0h, 0, 1, nseq
1254: 0e2d02c024000000     iadd     r11, 2, r6
125c: 4579620e41c01200     store    r15, du33, r11, i32, x, a
1264: d20e00000000         pop_exec 1, cache
126a: 922ce8621a640030     csel     $r11l, ^r20, u19, r18l, 0, ult
1272: 5289d6000000         if       ^r11l, 0, 1, nseq
1278: 0e2d03c02c000000     iadd     r11, 3, ^r6
1280: 4569620e41c01200     store    r13, du33, r11, i32, x, a
1288: d20e00000000         pop_exec 1, cache
128e: 1e2db0a12f5c0200     imadd    r11, u24, ^r29, r14
1296: 929a40621a7400300004 csel     $r6h, r32, u19, r26l, 0, ult
12a0: 5289cd000000         if       ^r6h, 0, 1, nseq
12a6: 4551620e41c01200     store    r10, du33, r11, i32, x, a
12ae: d20e00000000         pop_exec 1, cache
12b4: 928246621a7400300004 csel     $r0h, r35, u19, r26l, 0, ult
12be: 5289c1000000         if       ^r0h, 0, 1, nseq
12c4: 0e19016025000000     iadd     r6, 1, r11
12cc: 4549c20e40c01200     store    r9, du33, r6, i32, x, a
12d4: d20e00000000         pop_exec 1, cache
12da: 928242621a7400300004 csel     $r0h, r33, u19, r26l, 0, ult
12e4: 5289c1000000         if       ^r0h, 0, 1, nseq
12ea: 0e19026025000000     iadd     r6, 2, r11
12f2: 4541c20e40c01200     store    r8, du33, r6, i32, x, a
12fa: d20e00000000         pop_exec 1, cache
1300: 92027e621af40030     csel     $r0h, r31, u19, ^r26l, 0, ult
1308: 5289c1000000         if       ^r0h, 0, 1, nseq
130e: 0e1903602d000000     iadd     r6, 3, ^r11
1316: 4529c20e40c01200     store    r5, du33, r6, i32, x, a
131e: d20e00000000         pop_exec 1, cache
1324: 1e15b0e12edc0200     imadd    r5, u24, ^r23, ^r14
132c: 929ac0621a6400300004 csel     $r6h, ^r32, u19, r18l, 0, ult
1336: 5289cd000000         if       ^r6h, 0, 1, nseq
133c: 4539a20e40c01200     store    r7, du33, r5, i32, x, a
1344: d20e00000000         pop_exec 1, cache
134a: 9282c6621a6400300004 csel     $r0h, ^r35, u19, r18l, 0, ult
1354: 5289c1000000         if       ^r0h, 0, 1, nseq
135a: 0e1901a024000000     iadd     r6, 1, r5
1362: 4519c20e40c01200     store    r3, du33, r6, i32, x, a
136a: d20e00000000         pop_exec 1, cache
1370: 9282c2621a6400300004 csel     $r0h, ^r33, u19, r18l, 0, ult
137a: 5289c1000000         if       ^r0h, 0, 1, nseq
1380: 0e0d02a024000000     iadd     r3, 2, r5
1388: 4511620e40c01200     store    r2, du33, r3, i32, x, a
1390: d20e00000000         pop_exec 1, cache
1396: 9202fe621ae40030     csel     $r0h, ^r31, u19, ^r18l, 0, ult
139e: 5289c1000000         if       ^r0h, 0, 1, nseq
13a4: 0e0903a02c000000     iadd     r2, 3, ^r5
13ac: 4509420e40c01200     store    r1, du33, r2, i32, x, a
13b4: 520e00000000         pop_exec 1
13ba: 8800                 stop
