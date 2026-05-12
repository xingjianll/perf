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
  7a: c500003d01803000     mov      u8, r0
  82: c508203d01803000     mov      u9, r1
  8a: c510403d01803000     mov      u10, r2
  92: c518603d01803000     mov      u11, r3
  9a: c520803d01803000     mov      u12, r4
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
 1b0: 8e07c2426c000000     iadd     $dr1, ^r1, ^r2.sx
 1b8: fe1988098000         mov      $r6, u4
 1be: f20d0200             mov      $r3, threadgroup_in_grid_z
 1c2: 9e2382c228000000     imul     $dr8, $r1, $r6
 1ca: f2150100             mov      $r5, threadgroup_in_grid_y
 1ce: 9e1b82c22c000000     imul     $dr6, $r1, ^r6
 1d6: 0e0db4612c000000     iadd     r3, u26, ^r3
 1de: 0e1500a02c001000     iadd     r5, 0, ^r5, lsl 2
 1e6: 9e25848218d20200     imadd    $r9, $r2, u4, ^r9
 1ee: f2290000             mov      $r10, threadgroup_in_grid_x
 1f2: 922094022d010130     csel     $r8l, $r10, ^r8, 1, 0, ult
 1fa: 9e09c48218ce0200     imadd    $r2, ^r2, u4, ^r7
 202: 921894c22c010130     csel     $r6l, $r10, ^r6, 1, 0, ult
 20a: 9210002029010130     csel     $r4l, 0, $r9, 1, 0, ult
 212: 9202004028010130     csel     $r0h, 0, $r2, 1, 0, ult
 21a: 921000202dd0808c     csel     $r4l, 0, ^r9, ^r8l, ^r4l, seq
 222: 920200402ccc108c     csel     $r0h, 0, ^r2, ^r6l, ^r0h, seq
 22a: 9208c80000001190     csel     $r2l, ^r4l, 0, 0, 1, seq
 232: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 23a: 8e09824a0c000000     isub     $r2, $r1, ^r2l
 242: 8e05c21a0c000000     isub     $r1, ^r1, ^r0h
 24a: 922594821800212c     csel     $r9, $r10, u4, 0, ^r1, ult
 252: 9e09c48218000000     imul     $r2, ^r2, u4
 25a: 8e19012029000000     iadd     $r6, 1, $r9
 262: f2023000             mov      $r0h, thread_in_threadgroup_x
 266: 2e85001048050000     bfeil    r1, 0, $r0h, 5, 1
 26e: 8e1d944a2c000000     isub     $r7, $r10, ^r2
 276: 2e890010c8020000     bfeil    r2, 0, $r0h, 2, 3
 27e: 921dd48218d4e02c     csel     $r7, ^r10, u4, ^r10, ^r7, ult
 286: 9e19cc821b000000     imul     $r6, ^r6, u28
 28e: 0e2d00e02c001000     iadd     r11, 0, ^r7, lsl 2
 296: 9e69b82125000000     imul     $r26, u28, r9
 29e: 926daac12caac12c     csel     $r27, u21, ^r6, u21, ^r6, ult
 2a6: 2e99001008060000     shr      r6, $r0h, 6
 2ae: 7e1dc1308000         and      r7, ^r0h, 3
 2b4: e2000000             ldimm    $r0l, 0
 2b8: 522874622700         if       r26, r27, 1, ult
 2be: 20c07c110000         jmp_none 4476
 2c4: bea90a642800         u32_to_f $r10, $r3, rte
 2ca: bea108402900         f_to_u32 $r8, $r10, rtz
 2d0: 8e21860a2d000000     isub     $r8, $r3, ^r8
 2d8: 8e31901a00000000     isub     $r12, $r8, 1
 2e0: 82a1948218d8000d0001 csel     $r8, $r10, u36, ^r12, ^r8, feq
 2ea: 9ab19c412900         fmul     $r12, u14, $r10
 2f0: beb50b042d00         s32_to_f $r13, ^r8, rte
 2f6: bea108802900         f_to_u32 $r8, $r12, rtz
 2fc: baa99a8929d40200     ffma     $r10, u13.neg, $r12, ^r10
 304: 9ab99ca12d00         fmul     $r14, u14, ^r13
 30a: beb50a042900         u32_to_f $r13, $r8, rte
 310: baa99c412ddc0200     ffma     $r10, u14, ^r10, ^r14
 318: aab1d8a2ad00         fadd     $r12, ^r12, ^r13.neg
 31e: aaa9d4721001         fadd     $r10, ^r10, u35h
 324: aaa9d4822d00         fadd     $r10, ^r10, ^r12
 32a: bea909402d00         f_to_s32 $r10, ^r10, rtz
 330: 8e33d0426d000000     iadd     $dr12, ^r8, ^r10.sx
 338: fe2192098000         mov      $r8, u9
 33e: 9e47980229000000     imul     $dr17, $r12, $r8
 346: 9e3b98022d000000     imul     $dr14, $r12, ^r8
 34e: 9e219a2219e40200     imadd    $r8, $r13, u9, ^r18
 356: 921e86222e010130     csel     $r7h, $r3, ^r17, 1, 0, ult
 35e: 9e29da2219de0200     imadd    $r10, ^r13, u9, ^r15
 366: 923486c22d010130     csel     $r13l, $r3, ^r14, 1, 0, ult
 36e: 9202000029010130     csel     $r0h, 0, $r8, 1, 0, ult
 376: 9210004029010130     csel     $r4l, 0, $r10, 1, 0, ult
 37e: 921000402dda808c     csel     $r4l, 0, ^r10, ^r13l, ^r4l, seq
 386: 920200002dcf108c     csel     $r0h, 0, ^r8, ^r7h, ^r0h, seq
 38e: 9210c80000001190     csel     $r4l, ^r4l, 0, 0, 1, seq
 396: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 39e: 8e21988a0c000000     isub     $r8, $r12, ^r4l
 3a6: 8e29d81a0c000000     isub     $r10, ^r12, ^r0h
 3ae: 924d86221900412d     csel     $r19, $r3, u9, 0, ^r10, ult
 3b6: 9e21d02219000000     imul     $r8, ^r8, u9
 3be: bea90a642a00         u32_to_f $r10, $r19, rte
 3c4: 8e21860a2d000000     isub     $r8, $r3, ^r8
 3cc: 924946221946002d     csel     $r18, r3, u9, r3, ^r8, ult
 3d4: 9abda0412900         fmul     $r15, u16, $r10
 3da: beb108402900         f_to_u32 $r12, $r10, rtz
 3e0: baa19ee929940200     ffma     $r8, u15.neg, $r15, $r10
 3e8: beb908e02900         f_to_u32 $r14, $r15, rtz
 3ee: 8e31668a2d000000     isub     $r12, r19, ^r12
 3f6: bed50a442a00         u32_to_f $r21, $r18, rte
 3fc: 8e35981a00000000     isub     $r13, $r12, 1
 404: bec10ac42500         u32_to_f $r16, r14, rte
 40a: 82b5d48218da800d0001 csel     $r13, ^r10, u36, ^r13, ^r12, feq
 414: bea908a02a00         f_to_u32 $r10, $r21, rtz
 41a: 9ab1a4a12a00         fmul     $r12, u18, $r21
 420: beb50ba42d00         s32_to_f $r13, ^r13, rte
 426: aabdde02ae00         fadd     $r15, ^r15, ^r16.neg
 42c: 8e29644a2d000000     isub     $r10, r18, ^r10
 434: 9ac1a0a12d00         fmul     $r16, u16, ^r13
 43a: 8e35941a00000000     isub     $r13, $r10, 1
 442: baa1a0012de00200     ffma     $r8, u16, ^r8, ^r16
 44a: 82b5aa8218da400d0001 csel     $r13, $r21, u36, ^r13, ^r10, feq
 454: aaa1d0721001         fadd     $r8, ^r8, u35h
 45a: bea908802900         f_to_u32 $r10, $r12, rtz
 460: aaa1d0e22d00         fadd     $r8, ^r8, ^r15
 466: bec50ba42d00         s32_to_f $r17, ^r13, rte
 46c: fe3596098000         mov      $r13, u11
 472: bebd09002d00         f_to_s32 $r15, ^r8, rtz
 478: baa1a28929ea0200     ffma     $r8, u17.neg, $r12, ^r21
 480: bec10a442900         u32_to_f $r16, $r10, rte
 486: 9ac5a4212e00         fmul     $r17, u18, ^r17
 48c: 8e3bdce26d000000     iadd     $dr14, ^r14, ^r15.sx
 494: baa1a4012de20200     ffma     $r8, u18, ^r8, ^r17
 49c: aab1d802ae00         fadd     $r12, ^r12, ^r16.neg
 4a2: aaa1d0721001         fadd     $r8, ^r8, u35h
 4a8: 9e439ca22d000000     imul     $dr16, $r14, ^r13
 4b0: aaa1d0822d00         fadd     $r8, ^r8, ^r12
 4b6: beb109002d00         f_to_s32 $r12, ^r8, rtz
 4bc: 9e21de6219e20200     imadd    $r8, ^r15, u11, ^r17
 4c4: 8e33d4826d000000     iadd     $dr12, ^r10, ^r12.sx
 4cc: fe2994098000         mov      $r10, u10
 4d2: 9210a6022e010130     csel     $r4l, $r19, ^r16, 1, 0, ult
 4da: 9202000029010130     csel     $r0h, 0, $r8, 1, 0, ult
 4e2: 9e3f98422d000000     imul     $dr15, $r12, ^r10
 4ea: 920200002dc8108c     csel     $r0h, 0, ^r8, ^r4l, ^r0h, seq
 4f2: 8e21006025002000     iadd     $r8, 0, r11, lsl 4
 4fa: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 502: 9e35da4219e00200     imadd    $r13, ^r13, u10, ^r16
 50a: 9210a4e22d010130     csel     $r4l, $r18, ^r15, 1, 0, ult
 512: 8e29dc1a0c000000     isub     $r10, ^r14, ^r0h
 51a: 920200a029010130     csel     $r0h, 0, $r13, 1, 0, ult
 522: 920200a02dc8108c     csel     $r0h, 0, ^r13, ^r4l, ^r0h, seq
 52a: 9235e6621900412d     csel     $r13, ^r19, u11, 0, ^r10, ult
 532: 9202c10000001190     csel     $r0h, ^r0h, 0, 0, 1, seq
 53a: 9e21ac012db40200     imadd    $r8, u22, ^r8, $r26
 542: 8e29d81a0c000000     isub     $r10, ^r12, ^r0h
 54a: 9229e4421900412d     csel     $r10, ^r18, u10, 0, ^r10, ult
 552: aea100002d020000     shr      $r8, ^r8, 2
 55a: 9e31da0219d40200     imadd    $r12, ^r13, u8, ^r10
 562: 9e298e6124740200     imadd    $r10, u7, r3, r26
 56a: 9e31d88219d00210     imadd    $r44, ^r12, u12, ^r8
 572: 8e2100a024002000     iadd     $r8, 0, r5, lsl 4
 57a: 9e21ae012dd40200     imadd    $r8, u23, ^r8, ^r10
 582: 8e1100e008101000     iadd     $r36, 0, $r7l, lsl 2
 58a: 8e190040a8100000     iadd     $r38, 0, $r2, lsl 1
 592: 2eb500002d020010     shr      r45, ^r8, 2
 59a: 8e090020a8000000     iadd     $r2, 0, $r1, lsl 1
 5a2: 8e0500c0a8000000     iadd     $r1, 0, $r6, lsl 1
 5aa: 8e1d004028102000     iadd     $r39, 0, $r2, lsl 4
 5b2: 8e15002028102000     iadd     $r37, 0, $r1, lsl 4
 5ba: 0e024e8004050000     iadd     r0h, r39l, r36l
 5c2: 0e104ca004050000     iadd     r4l, r38l, r37l
 5ca: f2043000             mov      $r1l, thread_in_threadgroup_x
 5ce: 625100000000         ldimm    r20, 0
 5d4: fe3982708010         and      $r46, $r1l, 7
 5da: aebd002008030010     shr      $r47, $r1l, 3
 5e2: 624500000000         ldimm    r17, 0
 5e8: 626500000000         ldimm    r25, 0
 5ee: 626100000000         ldimm    r24, 0
 5f4: 6285000000000010     ldimm    r33, 0
 5fc: 627d00000000         ldimm    r31, 0
 602: 628d000000000010     ldimm    r35, 0
 60a: 6289000000000010     ldimm    r34, 0
 612: 627500000000         ldimm    r29, 0
 618: 627100000000         ldimm    r28, 0
 61e: 6281000000000010     ldimm    r32, 0
 626: 627900000000         ldimm    r30, 0
 62c: 62a5000000000010     ldimm    r41, 0
 634: 62a1000000000010     ldimm    r40, 0
 63c: 62ad000000000010     ldimm    r43, 0
 644: 62a9000000000010     ldimm    r42, 0
 64c: 625d00000000         ldimm    r23, 0
 652: 625900000000         ldimm    r22, 0
 658: 625500000000         ldimm    r21, 0
 65e: 624900000000         ldimm    r18, 0
 664: 623500000000         ldimm    r13, 0
 66a: 623100000000         ldimm    r12, 0
 670: 622900000000         ldimm    r10, 0
 676: 621d00000000         ldimm    r7, 0
 67c: 624d00000000         ldimm    r19, 0
 682: 624100000000         ldimm    r16, 0
 688: 623d00000000         ldimm    r15, 0
 68e: 623900000000         ldimm    r14, 0
 694: 622100000000         ldimm    r8, 0
 69a: 621900000000         ldimm    r6, 0
 6a0: 620900000000         ldimm    r2, 0
 6a6: 620500000000         ldimm    r1, 0
 6ac: 421000000000         if       0.0, 0.0, 2, feq
 6b2: 8e3530e029210000     iadd     $r77, 48, $r47
 6ba: 9e49aca125000012     imul     $r50, u22, r77
 6c2: 8e4920e029210000     iadd     $r82, 32, $r47
 6ca: 9e45ace125000011     imul     $r49, u22, r47
 6d2: 9e41ac4126000012     imul     $r48, u22, r82
 6da: aecd00202e020011     shr      $r51, ^r49, 2
 6e2: 8e4558c205150000     iadd     $r49, r44, r46l
 6ea: aec100002e020011     shr      $r48, ^r48, 2
 6f2: 8e55a2622e150000     iadd     $r53, $r49, ^r51
 6fa: aec900402e020011     shr      $r50, ^r50, 2
 702: 8e51a2022e150000     iadd     $r52, $r49, ^r48
 70a: aec100a026060011     shr      $r48, r53, 6
 712: 8e7562422e150000     iadd     $r61, r49, ^r50
 71a: aedd008026060011     shr      $r55, r52, 6
 722: 8e496002a6151000     iadd     $r50, r48, r48, lsl 3
 72a: aee900a027060011     shr      $r58, r61, 6
 732: 0e590040ae110000     iadd     r54, 0, ^r50, lsl 1
 73a: 8e4d6ee2a6151000     iadd     $r51, r55, r55, lsl 3
 742: 8e497442a7151000     iadd     $r50, r58, r58, lsl 3
 74a: 0e4d0060ae110000     iadd     r51, 0, ^r51, lsl 1
 752: 0e490040ae110000     iadd     r50, 0, ^r50, lsl 1
 75a: 8538ca0c36ca3000     load     r71l_r71h, du29, r54.sx, lsl 2, i16, xy, a
 762: 85246a4c36ca3000     load     r68h_r69l, du29, r51.sx, lsl 2, i16, xy, b
 76a: 85104a4c36ca3000     load     r66l_r66h, du29, r50.sx, lsl 2, i16, xy, b
 772: 8e7910e025110000     iadd     $r62, 16, r47
 77a: 9e49acc127000011     imul     $r50, u22, r62
 782: fe71bc098010         mov      $r60, u30
 788: aec900402e020011     shr      $r50, ^r50, 2
 790: fe6dba098010         mov      $r59, u29
 796: fe4daa728014         and      $r51, $r53, 7
 79c: 8e49e2422e150000     iadd     $r50, ^r49, ^r50
 7a4: 9e43e00201000016     imul     $dr48, ^r48, 144
 7ac: 8e2d00a0ae210000     iadd     $r75, 0, ^r53, lsl 1
 7b4: 8e0d0040aa210000     iadd     $r67, 0, $r50, lsl 1
 7bc: 7e59a4728014         and      r54, $r50, 7
 7c2: 8e61b6022e150000     iadd     $r56, $r59, ^r48
 7ca: ae8500402e060021     shr      $r65, ^r50, 6
 7d2: 8e5578222e150000     iadd     $r53, r60, ^r49
 7da: 92bab0622b0101300015 csel     $r46h, $r56, $r59, 1, 0, ult
 7e4: 9e4342020100001a     imul     $dr48, r65, 144
 7ec: fe4956028219         and      $r50, r75, 96
 7f2: 8e65dda02e150000     iadd     $r57, ^r46h, ^r53
 7fa: 8e49e4600e151000     iadd     $r50, ^r50l, ^r51l, lsl 2
 802: 8e55b6022e150000     iadd     $r53, $r59, ^r48
 80a: aec900402e020011     shr      $r50, ^r50, 2
 812: 92baaa62270101300015 csel     $r46h, $r53, r59, 1, 0, ult
 81c: fe4146028219         and      $r48, r67, 96
 822: 0e4b70432e151000     iadd     dr50, dr56, ^r50, lsl 2
 82a: 8e41e0c00e151000     iadd     $r48, ^r48l, ^r54l, lsl 2
 832: 8e4578222e150000     iadd     $r49, r60, ^r49
 83a: aec100002e020011     shr      $r48, ^r48, 2
 842: 8e59dd202e150000     iadd     $r54, ^r46h, ^r49
 84a: 0e436a032e151000     iadd     dr48, dr53, ^r48, lsl 2
 852: 0541140560ca1200     load     r72, dr50, 1, lsl 2, i32, x, a
 85a: 0531104560ca1200     load     r70, dr48, 1, lsl 2, i32, x, b
 862: 8e2900a0ab210000     iadd     $r74, 0, $r61, lsl 1
 86a: fe4dfa728014         and      $r51, ^r61, 7
 870: fe4954028219         and      $r50, r74, 96
 876: 9e43f40201000016     imul     $dr48, ^r58, 144
 87e: 8e69e4600e151000     iadd     $r58, ^r50l, ^r51l, lsl 2
 886: 9e4bee0201000016     imul     $dr50, ^r55, 144
 88e: fe5da8728014         and      $r55, $r52, 7
 894: 8e250080ae210000     iadd     $r73, 0, ^r52, lsl 1
 89c: 8e51b8222e150000     iadd     $r52, $r60, ^r49
 8a4: 8e71f8622e150000     iadd     $r60, ^r60, ^r51
 8ac: 8e45b6422e150000     iadd     $r49, $r59, ^r50
 8b4: fe4952028219         and      $r50, r73, 96
 8ba: 8e4db6022e150000     iadd     $r51, $r59, ^r48
 8c2: 8e41e4e00e151000     iadd     $r48, ^r50l, ^r55l, lsl 2
 8ca: 92baa2622b0101300015 csel     $r46h, $r49, $r59, 1, 0, ult
 8d4: aedd00002e020011     shr      $r55, ^r48, 2
 8dc: 8e49dd802f150000     iadd     $r50, ^r46h, ^r60
 8e4: aec100402f020011     shr      $r48, ^r58, 2
 8ec: 92baa6622f0101300015 csel     $r46h, $r51, ^r59, 1, 0, ult
 8f6: 0e7362e32e151000     iadd     dr60, dr49, ^r55, lsl 2
 8fe: 8e51dd802e150000     iadd     $r52, ^r46h, ^r52
 906: 0e6b66032e151000     iadd     dr58, dr51, ^r48, lsl 2
 90e: 05e9180570c91200     load     r61, dr60, 1, lsl 2, i32, x, a
 916: 05d9140570c91200     load     r59, dr58, 1, lsl 2, i32, x, a
 91e: aee90060e5040012     bfeil    $r58, 0, r75, 4, 3
 926: 8e3904402b210000     iadd     $r78, 4, $r58
 92e: 8e41b44a00140000     isub     $r48, $r58, 4
 936: 12bdb44200b4002e5024 csel     r79, $r58, 4, $r58, ^r48, ult
 940: aefd0020e5040012     bfeil    $r63, 0, r73, 4, 3
 948: 12c1b44200b4c0296024 csel     r80, $r58, 4, $r58, $r78, ult
 952: 12b17442005c40279024 csel     r76, r58, 4, r78, r58, ult
 95c: 8e41be4a00140000     isub     $r48, $r63, 4
 964: 8e5d04002b110000     iadd     $r55, 4, $r56
 96c: 12f1be4200be002e5014 csel     r60, $r63, 4, $r63, ^r48, ult
 976: 92ba6e022f0101300015 csel     $r46h, r55, ^r56, 1, 0, ult
 980: 8e4104202a110000     iadd     $r48, 4, $r49
 988: 0e61dd202f150000     iadd     r56, ^r46h, ^r57
 990: 92ba60222e0101300015 csel     $r46h, r48, ^r49, 1, 0, ult
 99a: 8e6504e02b110000     iadd     $r57, 4, $r63
 9a2: 0e45dd402e150000     iadd     r49, ^r46h, ^r50
 9aa: 1281be4200be202b5024 csel     r64, $r63, 4, $r63, $r57, ult
 9b4: 12c97e420072e0275014 csel     r50, r63, 4, r57, r63, ult
 9be: 058c0e446ac21000     load     r81h, dr55, r80.sx, i8, x, b
 9c6: 0598ee4669c21000     load     r83l, dr55, r79, i8, x, b
 9ce: 05a0ce4469c21000     load     r84l, dr55, r78.sx, i8, x, b
 9d6: 059c8e4469c21000     load     r83h, dr55, r76.sx, i8, x, b
 9de: 0578004468c21000     load     r79l, dr48, r64.sx, i8, x, b
 9e6: 057c800667c21000     load     r79h, dr48, r60, i8, x, a
 9ee: 0588200467c21000     load     r81l, dr48, r57.sx, i8, x, a
 9f6: 0584400466c21000     load     r80h, dr48, r50.sx, i8, x, a
 9fe: ae810060e4040022     bfeil    $r64, 0, r67, 4, 3
 a06: aef10040e5040012     bfeil    $r60, 0, r74, 4, 3
 a0e: 8e31040028220000     iadd     $r76, 4, $r64
 a16: 8e41804a00180000     isub     $r48, $r64, 4
 a1e: 12b980420080002e9028 csel     r78, $r64, 4, $r64, ^r48, ult
 a28: 12dd804200808029a018 csel     r55, $r64, 4, $r64, $r76, ult
 a32: 12e5404200580024a018 csel     r57, r64, 4, r76, r64, ult
 a3c: 8e61b84a00140000     isub     $r56, $r60, 4
 a44: 8e4104a02a110000     iadd     $r48, 4, $r53
 a4c: 8e4904602a110000     iadd     $r50, 4, $r51
 a54: 92c460a22e0101300015 csel     $r49l, r48, ^r53, 1, 0, ult
 a5e: 92ba64622e0101300015 csel     $r46h, r50, ^r51, 1, 0, ult
 a68: 0e45e2c02e150000     iadd     r49, ^r49l, ^r54
 a70: 0e4ddd802e150000     iadd     r51, ^r46h, ^r52
 a78: 12d9b84200b8002f5014 csel     r54, $r60, 4, $r60, ^r56, ult
 a82: 8e6104802b110000     iadd     $r56, 4, $r60
 a8a: 12d1b84200b8002b5014 csel     r52, $r60, 4, $r60, $r56, ult
 a94: 12d57842007080275014 csel     r53, r60, 4, r56, r60, ult
 a9e: 0574c00669c21000     load     r78h, dr48, r78, i8, x, a
 aa6: 3800                 wait     a
 aa8: 0580800469c21000     load     r80l, dr48, r76.sx, i8, x, a
 ab0: 0564200467c21000     load     r76h, dr48, r57.sx, i8, x, a
 ab8: 0520040467c21000     load     r68l, dr50, r56.sx, i8, x, a
 ac0: 0560c40666c21000     load     r76l, dr50, r54, i8, x, a
 ac8: 0570a40466c21000     load     r78l, dr50, r53.sx, i8, x, a
 ad0: 052c840466c21000     load     r69h, dr50, r52.sx, i8, x, a
 ad8: 0574e00466c11000     load     r46h, dr48, r55.sx, i8, x, a
 ae0: aec900602d040012     shr      $r50, ^r75, 4
 ae8: aec100402d040012     shr      $r48, ^r74, 4
 af0: aec500202d040012     shr      $r49, ^r73, 4
 af8: 8e4900402e111000     iadd     $r50, 0, ^r50, lsl 2
 b00: 8e4100002e111000     iadd     $r48, 0, ^r48, lsl 2
 b08: 8e4500202e111000     iadd     $r49, 0, ^r49, lsl 2
 b10: fe49e4428014         and      $r50, ^r50, 4
 b16: fe45e2428014         and      $r49, ^r49, 4
 b1c: aec900002de44212     shr      $r50, ^r72, ^r50
 b24: fe41e0428014         and      $r48, ^r48, 4
 b2a: aec500a02fe24211     shr      $r49, ^r61, ^r49
 b32: fe75e4a29815         and      $r61, ^r50, u37
 b38: aec100602fe04211     shr      $r48, ^r59, ^r48
 b40: fe45e2a29815         and      $r49, ^r49, u37
 b46: 3ee100a40711         u8_to_f  r56, r61l, rte
 b4c: 7e49e0a29815         and      r50, ^r48, u37
 b52: 3ed100240611         u8_to_f  r52, r49l, rte
 b58: 12c1b442000f01333014 csel     r48, $r58, 4, 15, 240, ult
 b62: 12cd7442000021300014 csel     r51, r58, 4, 0, 2, ult
 b6c: 3801                 wait     b
 b6e: fe55e0828e16         and      $r53, ^r48, ^r84l
 b74: 92d9b442000041300014 csel     $r54, $r58, 4, 0, 4, ult
 b7e: 92c1f442003001303014 csel     $r48, ^r58, 4, 48, 192, ult
 b88: aed900a02eec4211     shr      $r54, ^r53, ^r54
 b90: fe55a0728e16         and      $r53, $r48, ^r83h
 b96: fe41e0628e16         and      $r48, ^r48, ^r83l
 b9c: aee500a02ea64211     shr      $r57, ^r53, $r51
 ba4: 92ddbe42000021300014 csel     $r55, $r63, 4, 0, 2, ult
 bae: 92d5be42003001303014 csel     $r53, $r63, 4, 48, 192, ult
 bb8: fe5af2c8ce15         or       $r54h, ^r57l, ^r54l
 bbe: aecd00002ee64211     shr      $r51, ^r48, ^r51
 bc6: fe4ee3f08018         and      $r51h, ^r81h, 15
 bcc: fe41aaf28d16         and      $r48, $r53, ^r79h
 bd2: fe4ce768ce15         or       $r51l, ^r51h, ^r51l
 bd8: aec100002eae4211     shr      $r48, ^r48, $r55
 be0: fe42def08018         and      $r48h, ^r79l, 15
 be6: becd06640e11         u16_to_f $r51, ^r51l, rte
 bec: fe58e108ce15         or       $r54l, ^r48h, ^r48l
 bf2: bec106d40e11         u16_to_f $r48, ^r54h, rte
 bf8: 1ae9e6e20c16         fmul     r58, ^r51, ^r71l
 bfe: becd06c40e11         u16_to_f $r51, ^r54l, rte
 c04: 1abdcf082e29         fmul     r79, ^r71h.neg, ^r48
 c0a: 3ec100440611         u8_to_f  r48, r50l, rte
 c10: 1aede6920c16         fmul     r59, ^r51, ^r68h
 c16: 2ee500602c040012     shr      r57, ^r67, 4
 c1e: 92cdbe42000f01333014 csel     $r51, $r63, 4, 15, 240, ult
 c28: 92d9fe42000041300014 csel     $r54, ^r63, 4, 0, 4, ult
 c32: fe4de6228e16         and      $r51, ^r51, ^r81l
 c38: 12fd8042000041300018 csel     r63, $r64, 4, 0, 4, ult
 c42: 2ecd00602eec4211     shr      r51, ^r51, ^r54
 c4a: fe55ea128e16         and      $r53, ^r53, ^r80h
 c50: 12d94042000f01333018 csel     r54, r64, 4, 15, 240, ult
 c5a: 2ed500a02eee4211     shr      r53, ^r53, ^r55
 c62: 3800                 wait     a
 c64: fe59ec028e16         and      $r54, ^r54, ^r80l
 c6a: 92ddb842000041300014 csel     $r55, $r60, 4, 0, 4, ult
 c74: 2efd00c02efe4211     shr      r63, ^r54, ^r63
 c7c: 92d9b842000f01333014 csel     $r54, $r60, 4, 15, 240, ult
 c86: 8e6500202f111000     iadd     $r57, 0, ^r57, lsl 2
 c8e: fe59ec828c16         and      $r54, ^r54, ^r68l
 c94: fe65f2428014         and      $r57, ^r57, 4
 c9a: aedd00c02eee4211     shr      $r55, ^r54, ^r55
 ca2: 928d8042000021300028 csel     $r67, $r64, 4, 0, 2, ult
 cac: 9e59aee125000011     imul     $r54, u23, r47
 cb4: 9281c042003001303028 csel     $r64, ^r64, 4, 48, 192, ult
 cbe: ae9100c02cf24222     shr      $r68, ^r70, ^r57
 cc6: fe4cea68ce15         or       $r51l, ^r53l, ^r51l
 ccc: 92d5b842000021300014 csel     $r53, $r60, 4, 0, 2, ult
 cd6: be9906640e21         u16_to_f $r70, ^r51l, rte
 cdc: fe6580d28d1a         and      $r57, $r64, ^r78h
 ce2: 92cdf842003001303014 csel     $r51, ^r60, 4, 48, 192, ult
 cec: 2ef100202f868211     shr      r60, ^r57, $r67
 cf4: fe65a6c28d16         and      $r57, $r51, ^r78l
 cfa: 9ac5cac82c2a         fmul     $r81, ^r69l.neg, ^r70
 d00: aee500202faa4211     shr      $r57, ^r57, $r53
 d08: fe01c0928d2a         and      $r64, ^r64, ^r76h
 d0e: 7e39c8a29829         and      r78, ^r68, u37
 d14: ae8100002cc68222     shr      $r64, ^r64, ^r67
 d1c: fe4de6828d16         and      $r51, ^r51, ^r76l
 d22: fe5cf2e8ce15         or       $r55l, ^r57l, ^r55l
 d28: aecd00602eea4211     shr      $r51, ^r51, ^r53
 d30: fe4ecbf08018         and      $r51h, ^r69h, 15
 d36: bed506e40e11         u16_to_f $r53, ^r55l, rte
 d3c: fe4ce768ce15         or       $r51l, ^r51h, ^r51l
 d42: 3ab174022f5e8225     ffma     r76, r58, ^r56, r79
 d4a: becd06640e11         u16_to_f $r51, ^r51l, rte
 d50: 3ae176822e628215     ffma     r56, r59, ^r52, r81
 d58: 9e51aec127000011     imul     $r52, u23, r62
 d60: 9acde6420c16         fmul     $r51, ^r51, ^r66l
 d66: aedd00c02e020011     shr      $r55, ^r54, 2
 d6e: 9ac1c5a82e29         fmul     $r80, ^r66h.neg, ^r53
 d74: aed900802e020011     shr      $r54, ^r52, 2
 d7c: 3ac166022e608215     ffma     r48, r51, ^r48, r80
 d84: 9e55ae4126000012     imul     $r53, u23, r82
 d8c: 8e515ac205150000     iadd     $r52, r45, r46l
 d94: 9e65aea125000012     imul     $r57, u23, r77
 d9c: 0e5da8e22e150000     iadd     r55, $r52, ^r55
 da4: aed500a02e020011     shr      $r53, ^r53, 2
 dac: 0e59a8c22e150000     iadd     r54, $r52, ^r54
 db4: aee500202f020011     shr      $r57, ^r57, 2
 dbc: fe3addf08014         and      $r46h, ^r46h, 15
 dc2: 0e55a8a22e150000     iadd     r53, $r52, ^r53
 dca: fe3add88cf15         or       $r46h, ^r46h, ^r60l
 dd0: 0e51e8222f150000     iadd     r52, ^r52, ^r57
 dd8: 3ee506d40d11         u16_to_f r57, ^r46h, rte
 dde: 8e71c222ac1a1000     iadd     $r60, ^r65, ^r65, lsl 3
 de6: fe3ac0e8cf19         or       $r46h, ^r64l, ^r63l
 dec: 0e710080af110000     iadd     r60, 0, ^r60, lsl 1
 df4: 3ecd06d40d21         u16_to_f r83, ^r46h, rte
 dfa: 85f48a0c37c93000     load     r62h_r63l, du29, r60.sx, lsl 2, i16, xy, a
 e02: 0541ee4e36caf200     load     r72_r73_r74_r75, du31, r55, lsl 2, i32, xyzw, b
 e0a: 0521ce4e36caf200     load     r68_r69_r70_r71, du31, r54, lsl 2, i32, xyzw, b
 e12: 0501ae4e36caf200     load     r64_r65_r66_r67, du31, r53, lsl 2, i32, xyzw, b
 e1a: 05a18e4e36c9f200     load     r52_r53_r54_r55, du31, r52, lsl 2, i32, xyzw, b
 e22: 3800                 wait     a
 e24: 9ae5f2d20f15         fmul     $r57, ^r57, ^r62h
 e2a: bef100c40912         u8_to_f  $r60, $r78l, rte
 e30: 9afdfe682e16         fmul     $r63, ^r63l.neg, ^r83
 e36: aed800200e080021     shr      $r86l, ^r49l, 8
 e3e: 3af1b2822fbe4215     ffma     r60, $r57, ^r60, $r63
 e46: 2ed600300a080021     shr      r85h, $r49h, 8
 e4e: 8e3a5ee005152000     iadd     $r46h, r47l, r47l, lsl 4
 e56: 3ec500340e11         u8_to_f  r49, ^r49h, rte
 e5c: 8e7addc089150000     iadd     $r62h, ^r46h, $r46l, lsl 1
 e64: 8e3afcc00f152000     iadd     $r46h, ^r62l, ^r62l, lsl 4
 e6c: 0e5400d08f211000     iadd     r85l, 0, ^r62h, lsl 3
 e74: 8e3addc089150000     iadd     $r46h, ^r46h, $r46l, lsl 1
 e7c: bef900d40912         u8_to_f  $r62, $r78h, rte
 e82: 0e5200d08d211000     iadd     r84h, 0, ^r46h, lsl 3
 e8a: aeca00c00d080022     shr      $r82h, ^r78l, 8
 e92: 8e3ae4400e1a2000     iadd     $r46h, ^r82l, ^r82l, lsl 4
 e9a: aec800d00d080022     shr      $r82l, ^r78h, 8
 ea2: 8e3addc089150000     iadd     $r46h, ^r46h, $r46l, lsl 1
 eaa: aef400a00f080011     shr      $r61l, ^r61l, 8
 eb2: 0e5000d08d211000     iadd     r84l, 0, ^r46h, lsl 3
 eba: aeb600b00b080021     shr      $r77h, $r61h, 8
 ec2: 8e3adaa00d1a2000     iadd     $r46h, ^r77l, ^r77l, lsl 4
 eca: beb900b40f21         u8_to_f  $r78, ^r61h, rte
 ed0: 8e3addc085150000     iadd     $r46h, ^r46h, r46l, lsl 1
 ed8: bef500a40f11         u8_to_f  $r61, ^r61l, rte
 ede: 0e3a00d08d111000     iadd     r46h, 0, ^r46h, lsl 3
 ee6: becd00b40d22         u8_to_f  $r83, ^r77h, rte
 eec: 3ab5b4a22f9e8225     ffma     r77, $r58, ^r61, $r79
 ef4: bef500540e12         u8_to_f  $r61, ^r82h, rte
 efa: 3ab9b4c22d9e8226     ffma     r78, $r58, ^r78, $r79
 f02: bec900440e22         u8_to_f  $r82, ^r82l, rte
 f08: 3abdf4622ede8226     ffma     r79, ^r58, ^r83, ^r79
 f10: bee900c40e12         u8_to_f  $r58, ^r86l, rte
 f16: 3af5b2a22fbe4215     ffma     r61, $r57, ^r61, $r63
 f1e: aece00400e080021     shr      $r83h, ^r50l, 8
 f26: 3af9b2c22fbe4215     ffma     r62, $r57, ^r62, $r63
 f2e: aecc00500a080021     shr      $r83l, $r50h, 8
 f36: 3afdf2422efe4216     ffma     r63, ^r57, ^r82, ^r63
 f3e: bec900540e11         u8_to_f  $r50, ^r50h, rte
 f44: 3ae5b6422fa28215     ffma     r57, $r59, ^r58, $r81
 f4c: bec900b40e22         u8_to_f  $r82, ^r85h, rte
 f52: 3ae9b6222ea28215     ffma     r58, $r59, ^r49, $r81
 f5a: bec500740e12         u8_to_f  $r49, ^r83h, rte
 f60: 3aedf6422ee28216     ffma     r59, ^r59, ^r82, ^r81
 f68: bec500640e22         u8_to_f  $r81, ^r83l, rte
 f6e: 3ac5a6222ea08215     ffma     r49, $r51, ^r49, $r80
 f76: 3ac9a6422ea08215     ffma     r50, $r51, ^r50, $r80
 f7e: 3acde6222ee08216     ffma     r51, ^r51, ^r81, ^r80
Unexpected set bits: [42, 47]
 f86: 29b12a02f6840828     lstore   r76_r77_r78_r79, r85l, 544, i32, xyzw
 f8e: 3801                 wait     b
Unexpected set bits: [40, 47]
 f90: 29a12a02f4810028     lstore   r72_r73_r74_r75, r85l, 0, i32, xyzw
Unexpected set bits: [40, 47]
 f98: 29912902f4810028     lstore   r68_r69_r70_r71, r84h, 0, i32, xyzw
Unexpected set bits: [40, 47]
 fa0: 29812802f4810028     lstore   r64_r65_r66_r67, r84l, 0, i32, xyzw
Unexpected set bits: [42, 47]
 fa8: 29f12902f6840818     lstore   r60_r61_r62_r63, r84h, 544, i32, xyzw
Unexpected set bits: [42, 47]
 fb0: 29e12802f6840818     lstore   r56_r57_r58_r59, r84l, 544, i32, xyzw
Unexpected set bits: [40, 47]
 fb8: 29d11d02f4810014     lstore   r52_r53_r54_r55, r46h, 0, i32, xyzw
Unexpected set bits: [42, 47]
 fc0: 29c11d02f6840814     lstore   r48_r49_r50_r51, r46h, 544, i32, xyzw
 fc8: 6800                 barrier
 fca: e2c1000000000010     ldimm    $r48, 0
 fd2: 421000000000         if       0.0, 0.0, 2, feq
 fd8: 8e46011008100000     iadd     $r49h, 1, $r0h
 fe0: 8e44811008102000     iadd     $r49l, $r0h, $r0h, lsl 4
 fe8: 8e3a00300a112000     iadd     $r46h, 0, $r49h, lsl 4
 ff0: 8e44a0200e150000     iadd     $r49l, $r48l, ^r49l
 ff8: fe3ae3d8cd15         or       $r46h, ^r49h, ^r46h
 ffe: 8e4400208e111000     iadd     $r49l, 0, ^r49l, lsl 3
1006: 8e3aa0d00d150000     iadd     $r46h, $r48l, ^r46h
100e: 0e58e26010150000     iadd     r54l, ^r49l, u35l
1016: 8e4400d08d111000     iadd     $r49l, 0, ^r46h, lsl 3
101e: 8e3a021008100000     iadd     $r46h, 2, $r0h
1026: 0e54e26010150000     iadd     r53l, ^r49l, u35l
102e: 8e44ddd00d152000     iadd     $r49l, ^r46h, ^r46h, lsl 4
1036: 8e3a031008100000     iadd     $r46h, 3, $r0h
103e: 8e44a0200e150000     iadd     $r49l, $r48l, ^r49l
1046: 8e3addd00d152000     iadd     $r46h, ^r46h, ^r46h, lsl 4
104e: 8e4400208e111000     iadd     $r49l, 0, ^r49l, lsl 3
1056: 8e3aa0d00d150000     iadd     $r46h, $r48l, ^r46h
105e: 0e56e26010150000     iadd     r53h, ^r49l, u35l
1066: 8e3a00d08d111000     iadd     $r46h, 0, ^r46h, lsl 3
106e: 8e46101008100000     iadd     $r49h, 16, $r0h
1076: 0e4add6010150000     iadd     r50h, ^r46h, u35l
107e: 8e3a00300a112000     iadd     $r46h, 0, $r49h, lsl 4
1086: 8e44111008100000     iadd     $r49l, 17, $r0h
108e: fe3ae3d8cd15         or       $r46h, ^r49h, ^r46h
1094: 8e44e2200e152000     iadd     $r49l, ^r49l, ^r49l, lsl 4
109c: 8e3aa0d00d150000     iadd     $r46h, $r48l, ^r46h
10a4: 8e44a0200e150000     iadd     $r49l, $r48l, ^r49l
10ac: 8e3a00d08d111000     iadd     $r46h, 0, ^r46h, lsl 3
10b4: 8e4400208e111000     iadd     $r49l, 0, ^r49l, lsl 3
10bc: 0e3add6010150000     iadd     r46h, ^r46h, u35l
10c4: 0e48e26010150000     iadd     r50l, ^r49l, u35l
10cc: 8e46121008100000     iadd     $r49h, 18, $r0h
10d4: 8e44131004100000     iadd     $r49l, 19, r0h
10dc: 8e46e3300e152000     iadd     $r49h, ^r49h, ^r49h, lsl 4
10e4: 8e44e2200e152000     iadd     $r49l, ^r49l, ^r49l, lsl 4
10ec: 8e46a0300e150000     iadd     $r49h, $r48l, ^r49h
10f4: 8e44a0200e150000     iadd     $r49l, $r48l, ^r49l
10fc: 8e4600308e111000     iadd     $r49h, 0, ^r49h, lsl 3
1104: 8e4400208e111000     iadd     $r49l, 0, ^r49l, lsl 3
110c: 0e46e36010150000     iadd     r49h, ^r49h, u35l
1114: 0e44e26010150000     iadd     r49l, ^r49l, u35l
111c: 8e4c018008100000     iadd     $r51l, 1, $r4l
1124: 8e4e888008102000     iadd     $r51h, $r4l, $r4l, lsl 4
112c: 8e4ce6600e152000     iadd     $r51l, ^r51l, ^r51l, lsl 4
1134: 8e4ea0700e150000     iadd     $r51h, $r48l, ^r51h
113c: 8e4ca0600e150000     iadd     $r51l, $r48l, ^r51l
1144: 0e5210708e111000     iadd     r52h, 16, ^r51h, lsl 3
114c: 0e5010608e111000     iadd     r52l, 16, ^r51l, lsl 3
1154: 8e4e108008100000     iadd     $r51h, 16, $r4l
115c: 8e4c118004100000     iadd     $r51l, 17, r4l
1164: 8e4ee7700e152000     iadd     $r51h, ^r51h, ^r51h, lsl 4
116c: 8e4ce6600e152000     iadd     $r51l, ^r51l, ^r51l, lsl 4
1174: 8e4ea0700e150000     iadd     $r51h, $r48l, ^r51h
117c: 8e4c60600e150000     iadd     $r51l, r48l, ^r51l
1184: 0e4e10708e111000     iadd     r51h, 16, ^r51h, lsl 3
118c: 0e4c10608e111000     iadd     r51l, 16, ^r51l, lsl 3
Unexpected set bits: [40, 47]
1194: 698d2cc23781ff27     lload    r67_r68, r54l, -4, i32, xy
Unexpected set bits: [40, 47]
119c: 69fd2bc23781ff17     lload    r63_r64, r53h, -4, i32, xy
Unexpected set bits: [40, 47]
11a4: 69f125c23781ff17     lload    r60_r61, r50h, -4, i32, xy
Unexpected set bits: [40, 47]
11ac: 69e124c23781ff17     lload    r56_r57, r50l, -4, i32, xy
Unexpected set bits: [40, 47]
11b4: 69d923c23781ff17     lload    r54_r55, r49h, -4, i32, xy
Unexpected set bits: [40, 47]
11bc: 69c522c23781ff17     lload    r49_r50, r49l, -4, i32, xy
Unexpected set bits: [40, 47]
11c4: 69a529c23781ff27     lload    r73_r74, r52h, -4, i32, xy
Unexpected set bits: [40, 47]
11cc: 699d28c23781ff27     lload    r71_r72, r52l, -4, i32, xy
Unexpected set bits: [40, 47]
11d4: 699527c23781ff27     lload    r69_r70, r51h, -4, i32, xy
Unexpected set bits: [40, 47]
11dc: 69cd26c23781ff17     lload    r51_r52, r51l, -4, i32, xy
Unexpected set bits: [40, 47]
11e4: 69852ac23781ff27     lload    r65_r66, r53l, -4, i32, xy
Unexpected set bits: [40, 47]
11ec: 69e91dc23781ff17     lload    r58_r59, r46h, -4, i32, xy
11f4: baa540422992421a     ffma     $r41, r64, $r74, $r41
11fc: baa17a4229904216     ffma     $r40, r61, $r74, $r40
1204: 3aa57e2229524216     ffma     r41, r63, $r73, r41
120c: 3aa1782229504216     ffma     r40, r60, $r73, r40
1214: ba81b64229804216     ffma     $r32, $r59, $r74, $r32
121c: baf9b24229bc0206     ffma     $r30, $r57, $r74, $r30
1224: 3a81b42229404216     ffma     r32, $r58, $r73, r32
122c: 3af97022297c0206     ffma     r30, r56, $r73, r30
1234: baf56e4229ba0206     ffma     $r29, r55, $r74, $r29
123c: baf1644229b80206     ffma     $r28, r50, $r74, $r28
1244: 3af56c22297a0206     ffma     r29, r54, $r73, r29
124c: 3af1622229780206     ffma     r28, r49, $r73, r28
1254: baad88422996421a     ffma     $r43, $r68, $r74, $r43
125c: baa984422d94421a     ffma     $r42, $r66, ^r74, $r42
1264: 3aad86222956421a     ffma     r43, $r67, $r73, r43
126c: 3aa982222d54421a     ffma     r42, $r65, ^r73, r42
1274: 0e4101002e110000     iadd     r48, 1, ^r48
127c: ba8d48022986421a     ffma     $r35, r68, $r72, $r35
1284: ba8944022984421a     ffma     $r34, r66, $r72, $r34
128c: 3a8d46e22846421a     ffma     r35, r67, $r71, r35
1294: 3a8942e22844421a     ffma     r34, r65, $r71, r34
129c: bae5b60229b20206     ffma     $r25, $r59, $r72, $r25
12a4: bae1b20229b00206     ffma     $r24, $r57, $r72, $r24
12ac: 3ae5b4e228720206     ffma     r25, $r58, $r71, r25
12b4: 3ae170e228700206     ffma     r24, r56, $r71, r24
12bc: bad16e0229a80206     ffma     $r20, r55, $r72, $r20
12c4: bac5640229a20206     ffma     $r17, r50, $r72, $r17
12cc: 3ad16ce228680206     ffma     r20, r54, $r71, r20
12d4: 3ac562e228620206     ffma     r17, r49, $r71, r17
12dc: ba8580022982421a     ffma     $r33, $r64, $r72, $r33
12e4: bafdba022dbe0206     ffma     $r31, $r61, ^r72, $r31
12ec: 3a85bee228424216     ffma     r33, $r63, $r71, r33
12f4: 3afdb8e22c7e0206     ffma     r31, $r60, ^r71, r31
12fc: bad540c228aa020a     ffma     $r21, r64, $r70, $r21
1304: bac97ac228a40206     ffma     $r18, r61, $r70, $r18
130c: 3ad5bea2286a0206     ffma     r21, $r63, $r69, r21
1314: 3ac9b8a228640206     ffma     r18, $r60, $r69, r18
131c: bab5b6c2289a0206     ffma     $r13, $r59, $r70, $r13
1324: bab172c228980206     ffma     $r12, r57, $r70, $r12
132c: 3ab574a2285a0206     ffma     r13, r58, $r69, r13
1334: 3ab170a228580206     ffma     r12, r56, $r69, r12
133c: baa96ec228940206     ffma     $r10, r55, $r70, $r10
1344: ba9d64c2288e0206     ffma     $r7, r50, $r70, $r7
134c: 3aa96ca228540206     ffma     r10, r54, $r69, r10
1354: 3a9d62a2284e0206     ffma     r7, r49, $r69, r7
135c: badd88c228ae020a     ffma     $r23, $r68, $r70, $r23
1364: bad984c22cac020a     ffma     $r22, $r66, ^r70, $r22
136c: 3add86a2286e020a     ffma     r23, $r67, $r69, r23
1374: 3ad982a22c6c020a     ffma     r22, $r65, ^r69, r22
137c: bacdc8822aa60209     ffma     $r19, ^r68, $r52, $r19
1384: bac1c4822aa00209     ffma     $r16, ^r66, $r52, $r16
138c: 3acdc6622a660209     ffma     r19, ^r67, $r51, r19
1394: 3ac1c2622a600209     ffma     r16, ^r65, $r51, r16
139c: babdc0822a9e0209     ffma     $r15, ^r64, $r52, $r15
13a4: bab9fa822a9c0205     ffma     $r14, ^r61, $r52, $r14
13ac: 3abdfe622a5e0205     ffma     r15, ^r63, $r51, r15
13b4: 3ab9f8622a5c0205     ffma     r14, ^r60, $r51, r14
13bc: baa1f6822a900205     ffma     $r8, ^r59, $r52, $r8
13c4: ba99f2822a8c0205     ffma     $r6, ^r57, $r52, $r6
13cc: 3aa1f4622a500205     ffma     r8, ^r58, $r51, r8
13d4: 3a99f0622a4c0205     ffma     r6, ^r56, $r51, r6
13dc: ba89ee822a840205     ffma     $r2, ^r55, $r52, $r2
13e4: ba85e4822e820205     ffma     $r1, ^r50, ^r52, $r1
13ec: 3a89ec622a440205     ffma     r2, ^r54, $r51, r2
13f4: 3a85e2622e420205     ffma     r1, ^r49, ^r51, r1
13fc: 529560020104         while    r48, 16, 2, nseq
1402: 00c0d6fbffff         jmp_any  -1066
1408: 521600000000         pop_exec 2
140e: 0e3108802d110000     iadd     r44, 8, ^r44
1416: 0e6920402f000000     iadd     r26, 32, ^r26
141e: 0e3508a02d110000     iadd     r45, 8, ^r45
1426: 6800                 barrier
1428: 523474622700         while    r26, r27, 2, ult
142e: 00c084f2ffff         jmp_any  -3452
1434: d21600000000         pop_exec 2, cache
143a: 420a00000000         else     0.0, 0.0, 1, feq
1440: 20c006010000         jmp_none 262
1446: 8e1100e008101000     iadd     $r36, 0, $r7l, lsl 2
144e: 8e190040a8100000     iadd     $r38, 0, $r2, lsl 1
1456: 8e1d00c0a8000000     iadd     $r7, 0, $r6, lsl 1
145e: 8e090020a8000000     iadd     $r2, 0, $r1, lsl 1
1466: 0e1500e028102000     iadd     r37, 0, $r7, lsl 4
146e: 8e1d004028102000     iadd     $r39, 0, $r2, lsl 4
1476: 625100000000         ldimm    r20, 0
147c: 624500000000         ldimm    r17, 0
1482: 626500000000         ldimm    r25, 0
1488: 626100000000         ldimm    r24, 0
148e: 6285000000000010     ldimm    r33, 0
1496: 627d00000000         ldimm    r31, 0
149c: 628d000000000010     ldimm    r35, 0
14a4: 6289000000000010     ldimm    r34, 0
14ac: 627500000000         ldimm    r29, 0
14b2: 627100000000         ldimm    r28, 0
14b8: 6281000000000010     ldimm    r32, 0
14c0: 627900000000         ldimm    r30, 0
14c6: 62a5000000000010     ldimm    r41, 0
14ce: 62a1000000000010     ldimm    r40, 0
14d6: 62ad000000000010     ldimm    r43, 0
14de: 62a9000000000010     ldimm    r42, 0
14e6: 625d00000000         ldimm    r23, 0
14ec: 625900000000         ldimm    r22, 0
14f2: 625500000000         ldimm    r21, 0
14f8: 624900000000         ldimm    r18, 0
14fe: 623500000000         ldimm    r13, 0
1504: 623100000000         ldimm    r12, 0
150a: 622900000000         ldimm    r10, 0
1510: 621d00000000         ldimm    r7, 0
1516: 624d00000000         ldimm    r19, 0
151c: 624100000000         ldimm    r16, 0
1522: 623d00000000         ldimm    r15, 0
1528: 623900000000         ldimm    r14, 0
152e: 622100000000         ldimm    r8, 0
1534: 621900000000         ldimm    r6, 0
153a: 620900000000         ldimm    r2, 0
1540: 620500000000         ldimm    r1, 0
1546: d20e00000000         pop_exec 1, cache
154c: 9e69b6212dc60200     imadd    $r26, u27, ^r9, ^r3
1554: 8e25ce622d042000     iadd     $r9, ^r39, ^r11, lsl 4
155c: 8e0dcca22c042000     iadd     $r3, ^r38, ^r5, lsl 4
1564: 8e19d2822c110000     iadd     $r38, ^r9, ^r36
156c: 8e1dc6a22c110000     iadd     $r39, ^r3, ^r37
1574: 9e1574221b8c4210     imadd    $r37, r26, u25, $r38
157c: 92908e821a0101300004 csel     $r4l, $r39, u20, 1, 0, ult
1586: 92824c621a4800300004 csel     $r0h, r38, u19, r4l, 0, ult
1590: 1e0db0e1244a4201     imadd    r3, u24, r39, r37
1598: 5289c1000000         if       ^r0h, 0, 1, nseq
159e: 4559620e40c11200     store    r43, du33, r3, i32, x, a
15a6: d20e00000000         pop_exec 1, cache
15ac: 8e1101c024110000     iadd     $r36, 1, r38
15b4: 928248621a4800300004 csel     $r0h, r36, u19, r4l, 0, ult
15be: 5289c1000000         if       ^r0h, 0, 1, nseq
15c4: 0e15016024000000     iadd     r5, 1, r3
15cc: 4551a20e40c11200     store    r42, du33, r5, i32, x, a
15d4: d20e00000000         pop_exec 1, cache
15da: 8e6d02c024010000     iadd     $r27, 2, r38
15e2: 920276621a480030     csel     $r0h, r27, u19, r4l, 0, ult
15ea: 5289c1000000         if       ^r0h, 0, 1, nseq
15f0: 0e15026024000000     iadd     r5, 2, r3
15f8: 4549a20e40c11200     store    r41, du33, r5, i32, x, a
1600: d20e00000000         pop_exec 1, cache
1606: 8e2d03c024010000     iadd     $r11, 3, r38
160e: 920256621a480030     csel     $r0h, r11, u19, r4l, 0, ult
1616: 5289c1000000         if       ^r0h, 0, 1, nseq
161c: 0e1503602c000000     iadd     r5, 3, ^r3
1624: 4541a20e40c11200     store    r40, du33, r5, i32, x, a
162c: d20e00000000         pop_exec 1, cache
1632: 8e2101e024110000     iadd     $r40, 1, r39
163a: 928290821a0101300004 csel     $r0h, $r40, u20, 1, 0, ult
1644: 92944c621a4100300004 csel     $r5l, r38, u19, r0h, 0, ult
164e: 1e0db001254a4201     imadd    r3, u24, r40, r37
1656: 5289ca000000         if       ^r5l, 0, 1, nseq
165c: 4519620e40c11200     store    r35, du33, r3, i32, x, a
1664: d20e00000000         pop_exec 1, cache
166a: 929448621a4100300004 csel     $r5l, r36, u19, r0h, 0, ult
1674: 5289ca000000         if       ^r5l, 0, 1, nseq
167a: 0e15016024000000     iadd     r5, 1, r3
1682: 4511a20e40c11200     store    r34, du33, r5, i32, x, a
168a: d20e00000000         pop_exec 1, cache
1690: 921476621a410030     csel     $r5l, r27, u19, r0h, 0, ult
1698: 5289ca000000         if       ^r5l, 0, 1, nseq
169e: 0e15026024000000     iadd     r5, 2, r3
16a6: 4509a20e40c11200     store    r33, du33, r5, i32, x, a
16ae: d20e00000000         pop_exec 1, cache
16b4: 921456621a410030     csel     $r5l, r11, u19, r0h, 0, ult
16bc: 5289ca000000         if       ^r5l, 0, 1, nseq
16c2: 0e1503602c000000     iadd     r5, 3, ^r3
16ca: 45f9a20e40c01200     store    r31, du33, r5, i32, x, a
16d2: d20e00000000         pop_exec 1, cache
16d8: 8e0d10c024010000     iadd     $r3, 16, r38
16e0: 9e15f4221b860200     imadd    $r5, ^r26, u25, $r3
16e8: 922446621a480030     csel     $r9l, r3, u19, r4l, 0, ult
16f0: 1e05b0e1244a0211     imadd    r33, u24, r39, r5
16f8: 5289d2000000         if       ^r9l, 0, 1, nseq
16fe: 4501220e44c11200     store    r32, du33, r33, i32, x, a
1706: d20e00000000         pop_exec 1, cache
170c: 8e25016024000000     iadd     $r9, 1, r3
1714: 926852621a480030     csel     $r26l, r9, u19, r4l, 0, ult
171c: 5289f4000000         if       ^r26l, 0, 1, nseq
1722: 0e69012024010000     iadd     r26, 1, r33
172a: 45f1420e43c01200     store    r30, du33, r26, i32, x, a
1732: d20e00000000         pop_exec 1, cache
1738: 8e69026024000000     iadd     $r26, 2, r3
1740: 927874621a480030     csel     $r30l, r26, u19, r4l, 0, ult
1748: 5289fc000000         if       ^r30l, 0, 1, nseq
174e: 0e79022024010000     iadd     r30, 2, r33
1756: 45e9c20e43c01200     store    r29, du33, r30, i32, x, a
175e: d20e00000000         pop_exec 1, cache
1764: 8e75036024000000     iadd     $r29, 3, r3
176c: 92107a621ac80030     csel     $r4l, r29, u19, ^r4l, 0, ult
1774: 5289c8000000         if       ^r4l, 0, 1, nseq
177a: 0e7903202c010000     iadd     r30, 3, ^r33
1782: 45e1c20e43c01200     store    r28, du33, r30, i32, x, a
178a: d20e00000000         pop_exec 1, cache
1790: 1e79b0012d4a0201     imadd    r30, u24, ^r40, r5
1798: 921046621a410030     csel     $r4l, r3, u19, r0h, 0, ult
17a0: 5289c8000000         if       ^r4l, 0, 1, nseq
17a6: 45c9c20e43c01200     store    r25, du33, r30, i32, x, a
17ae: d20e00000000         pop_exec 1, cache
17b4: 927c52621a410030     csel     $r31l, r9, u19, r0h, 0, ult
17bc: 5289fe000000         if       ^r31l, 0, 1, nseq
17c2: 0e6501c027000000     iadd     r25, 1, r30
17ca: 45c1220e43c01200     store    r24, du33, r25, i32, x, a
17d2: d20e00000000         pop_exec 1, cache
17d8: 926474621a410030     csel     $r25l, r26, u19, r0h, 0, ult
17e0: 5289f2000000         if       ^r25l, 0, 1, nseq
17e6: 0e6102c027000000     iadd     r24, 2, r30
17ee: 45a1020e43c01200     store    r20, du33, r24, i32, x, a
17f6: d20e00000000         pop_exec 1, cache
17fc: 927c7a621ac10030     csel     $r31l, r29, u19, ^r0h, 0, ult
1804: 5289fe000000         if       ^r31l, 0, 1, nseq
180a: 0e5103c02f000000     iadd     r20, 3, ^r30
1812: 4589820e42c01200     store    r17, du33, r20, i32, x, a
181a: d20e00000000         pop_exec 1, cache
1820: 8e5110e02c010000     iadd     $r20, 16, ^r39
1828: 9202a8821a010130     csel     $r0h, $r20, u20, 1, 0, ult
1830: 92c44c621a4100300004 csel     $r17l, r38, u19, r0h, 0, ult
183a: 1e61b081264a4200     imadd    r24, u24, r20, r37
1842: 5289e2000000         if       ^r17l, 0, 1, nseq
1848: 45b9020e43c01200     store    r23, du33, r24, i32, x, a
1850: d20e00000000         pop_exec 1, cache
1856: 92c448621a4100300004 csel     $r17l, r36, u19, r0h, 0, ult
1860: 5289e2000000         if       ^r17l, 0, 1, nseq
1866: 0e45010027000000     iadd     r17, 1, r24
186e: 45b1220e42c01200     store    r22, du33, r17, i32, x, a
1876: d20e00000000         pop_exec 1, cache
187c: 924476621a410030     csel     $r17l, r27, u19, r0h, 0, ult
1884: 5289e2000000         if       ^r17l, 0, 1, nseq
188a: 0e45020027000000     iadd     r17, 2, r24
1892: 45a9220e42c01200     store    r21, du33, r17, i32, x, a
189a: d20e00000000         pop_exec 1, cache
18a0: 924456621a410030     csel     $r17l, r11, u19, r0h, 0, ult
18a8: 5289e2000000         if       ^r17l, 0, 1, nseq
18ae: 0e4503002f000000     iadd     r17, 3, ^r24
18b6: 4591220e42c01200     store    r18, du33, r17, i32, x, a
18be: d20e00000000         pop_exec 1, cache
18c4: 8e49018026000000     iadd     $r18, 1, r20
18cc: 9210a4821a010130     csel     $r4l, $r18, u20, 1, 0, ult
18d4: 92c4cc621a4800300004 csel     $r17l, ^r38, u19, r4l, 0, ult
18de: 1e59b04126ca4200     imadd    r22, u24, r18, ^r37
18e6: 5289e2000000         if       ^r17l, 0, 1, nseq
18ec: 4599c20e42c01200     store    r19, du33, r22, i32, x, a
18f4: d20e00000000         pop_exec 1, cache
18fa: 92c4c8621a4800300004 csel     $r17l, ^r36, u19, r4l, 0, ult
1904: 5289e2000000         if       ^r17l, 0, 1, nseq
190a: 0e4501c026000000     iadd     r17, 1, r22
1912: 4581220e42c01200     store    r16, du33, r17, i32, x, a
191a: d20e00000000         pop_exec 1, cache
1920: 9242f6621a480030     csel     $r16h, ^r27, u19, r4l, 0, ult
1928: 5289e1000000         if       ^r16h, 0, 1, nseq
192e: 0e4102c026000000     iadd     r16, 2, r22
1936: 4579020e42c01200     store    r15, du33, r16, i32, x, a
193e: d20e00000000         pop_exec 1, cache
1944: 9242d6621a480030     csel     $r16h, ^r11, u19, r4l, 0, ult
194c: 5289e1000000         if       ^r16h, 0, 1, nseq
1952: 0e2d03c02e000000     iadd     r11, 3, ^r22
195a: 4571620e41c01200     store    r14, du33, r11, i32, x, a
1962: d20e00000000         pop_exec 1, cache
1968: 1e2db0812e4a0200     imadd    r11, u24, ^r20, r5
1970: 923846621a410030     csel     $r14l, r3, u19, r0h, 0, ult
1978: 5289dc000000         if       ^r14l, 0, 1, nseq
197e: 4569620e41c01200     store    r13, du33, r11, i32, x, a
1986: d20e00000000         pop_exec 1, cache
198c: 923852621a410030     csel     $r14l, r9, u19, r0h, 0, ult
1994: 5289dc000000         if       ^r14l, 0, 1, nseq
199a: 0e35016025000000     iadd     r13, 1, r11
19a2: 4561a20e41c01200     store    r12, du33, r13, i32, x, a
19aa: d20e00000000         pop_exec 1, cache
19b0: 923474621a410030     csel     $r13l, r26, u19, r0h, 0, ult
19b8: 5289da000000         if       ^r13l, 0, 1, nseq
19be: 0e31026025000000     iadd     r12, 2, r11
19c6: 4551820e41c01200     store    r10, du33, r12, i32, x, a
19ce: d20e00000000         pop_exec 1, cache
19d4: 92287a621ac10030     csel     $r10l, r29, u19, ^r0h, 0, ult
19dc: 5289d4000000         if       ^r10l, 0, 1, nseq
19e2: 0e2903602d000000     iadd     r10, 3, ^r11
19ea: 4539420e41c01200     store    r7, du33, r10, i32, x, a
19f2: d20e00000000         pop_exec 1, cache
19f8: 1e1db0412eca0200     imadd    r7, u24, ^r18, ^r5
1a00: 9202c6621a480030     csel     $r0h, ^r3, u19, r4l, 0, ult
1a08: 5289c1000000         if       ^r0h, 0, 1, nseq
1a0e: 4541e20e40c01200     store    r8, du33, r7, i32, x, a
1a16: d20e00000000         pop_exec 1, cache
1a1c: 9202d2621a480030     csel     $r0h, ^r9, u19, r4l, 0, ult
1a24: 5289c1000000         if       ^r0h, 0, 1, nseq
1a2a: 0e1501e024000000     iadd     r5, 1, r7
1a32: 4531a20e40c01200     store    r6, du33, r5, i32, x, a
1a3a: d20e00000000         pop_exec 1, cache
1a40: 9202f4621a480030     csel     $r0h, ^r26, u19, r4l, 0, ult
1a48: 5289c1000000         if       ^r0h, 0, 1, nseq
1a4e: 0e1502e024000000     iadd     r5, 2, r7
1a56: 4511a20e40c01200     store    r2, du33, r5, i32, x, a
1a5e: d20e00000000         pop_exec 1, cache
1a64: 9202fa621ac80030     csel     $r0h, ^r29, u19, ^r4l, 0, ult
1a6c: 5289c1000000         if       ^r0h, 0, 1, nseq
1a72: 0e0903e02c000000     iadd     r2, 3, ^r7
1a7a: 4509420e40c01200     store    r1, du33, r2, i32, x, a
1a82: 520e00000000         pop_exec 1
1a88: 8800                 stop
