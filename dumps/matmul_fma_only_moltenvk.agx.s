   0: 0531040d00c01200     device_load      0, i32, x, r6, u2_u3, 0, signed
   8: 0521340d00c43200     device_load      0, i32, xy, r4_r5, u2_u3, 3, signed, lsl 1
  10: 0501340d00c8f200     device_load      0, i32, xyzw, r0_r1_r2_r3, u2_u3, 3, signed, lsl 2
  18: 3800                 wait             0
  1a: bead0a242400         convert          u32_to_f, r11.cache, r1, rte
  20: bea50a642400         convert          u32_to_f, r9.cache, r3, rte
  26: 0a295682             rcp              r10, r11
  2a: be9d0a442400         convert          u32_to_f, r7.cache, r2, rte
  30: 8e193fc02c000000     iadd             r6.cache, 63, r6.discard
  38: 0a215282             rcp              r8, r9
  3c: aeb900c02c060000     bfeil            r14.cache, 0, r6.discard, 6
  44: 0a194e82             rcp              r6, r7
  48: beb50ac42500         convert          u32_to_f, r13.cache, r14, rte
  4e: 2e9100802c020000     bfeil            r4, 0, r4.discard, 2
  56: 0a315a82             rcp              r12, r13
  5a: c570803d00803000     uniform_store    2, i16, xy, 0, r14l_r14h, 8
  62: c568a03d00803000     uniform_store    2, i16, xy, 0, r13l_r13h, 10
  6a: c560c03d00803000     uniform_store    2, i16, xy, 0, r12l_r12h, 12
  72: c528e03d00803000     uniform_store    2, i16, xy, 0, r5l_r5h, 14
  7a: c520003d01803000     uniform_store    2, i16, xy, 0, r4l_r4h, 16
  82: c500203d01803000     uniform_store    2, i16, xy, 0, r0l_r0h, 18
  8a: c508403d01803000     uniform_store    2, i16, xy, 0, r1l_r1h, 20
  92: c510603d01803000     uniform_store    2, i16, xy, 0, r2l_r2h, 22
  9a: c518803d01803000     uniform_store    2, i16, xy, 0, r3l_r3h, 24
  a2: c558a03d01803000     uniform_store    2, i16, xy, 0, r11l_r11h, 26
  aa: c550c03d01803000     uniform_store    2, i16, xy, 0, r10l_r10h, 28
  b2: c548e03d01803000     uniform_store    2, i16, xy, 0, r9l_r9h, 30
  ba: c540003d02803000     uniform_store    2, i16, xy, 0, r8l_r8h, 32
  c2: c538203d02803000     uniform_store    2, i16, xy, 0, r7l_r7h, 34
  ca: c530403d02803000     uniform_store    2, i16, xy, 0, r6l_r6h, 36
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

 140: f20d0000             get_sr           r3.cache, sr0 (threadgroup_position_in_grid.x)
 144: be890a642800         convert          u32_to_f, r2.cache, r3.cache, rte
 14a: be8508402800         convert          f_to_u32, r1.cache, r2.cache, rtz
 150: 8e05c62a2c000000     isub             r1.cache, r3.discard, r1.discard
 158: 8e0d821a00000000     isub             r3.cache, r1.cache, 1
 160: 8285848218c6200c0001 fcmpsel          eq, r1.cache, r2.cache, u36, r3.discard, r1.discard
 16a: 9a8d8c412800         fmul32           r3.cache, u6, r2.cache
 170: be950b242c00         convert          s32_to_f, r5.cache, r1.discard, rte
 176: be8508602800         convert          f_to_u32, r1.cache, r3.cache, rtz
 17c: ba898a6928c40200     fmadd32          r2.cache, u5.neg, r3.cache, r2.discard
 184: 9a998ca12c00         fmul32           r6.cache, u6, r5.discard
 18a: be950a242800         convert          u32_to_f, r5.cache, r1.cache, rte
 190: ba898c412ccc0200     fmadd32          r2.cache, u6, r2.discard, r6.discard
 198: aa8dc6a2ac00         fadd32           r3.cache, r3.discard, r5.discard.neg
 19e: aa89c4721001         fadd32           r2.cache, r2.discard, u35h
 1a4: aa89c4622c00         fadd32           r2.cache, r2.discard, r3.discard
 1aa: be8909402c00         convert          f_to_s32, r2.cache, r2.discard, rtz
 1b0: f2023000             get_sr           r0h.cache, sr48 (thread_position_in_threadgroup.x)
 1b4: 8e07c2426c000000     iadd             r1_r2.cache, r1.discard, r2.discard.sx
 1bc: f2150100             get_sr           r5.cache, sr1 (threadgroup_position_in_grid.y)
 1c0: fe1d88098000         mov              r7.cache, u4
 1c6: f20d0200             get_sr           r3.cache, sr2 (threadgroup_position_in_grid.z)
 1ca: 9e3b82e228000000     imadd            r14_r15.cache, r1.cache, r7.cache, 0
 1d2: 0e19b4612c000000     iadd             r6, u26, r3.discard
 1da: 8e0d00100c001000     iadd             r3.cache, 0, r0h.discard, lsl 2
 1e2: 9e1f82e22c000000     imadd            r7_r8.cache, r1.cache, r7.discard, 0
 1ea: 0e3100a02c001000     iadd             r12, 0, r5.discard, lsl 2
 1f2: 7e2dc6c28000         and              r11, r3.discard, 12
 1f8: 9e0d848218de0200     imadd            r3.cache, r2.cache, u4, r15.discard
 200: f2150000             get_sr           r5.cache, sr0 (threadgroup_position_in_grid.x)
 204: 92248ac22d010130     icmpsel          ult, r9l.cache, r5.cache, r14.discard, 1, 0
 20c: 9e09c48218d00200     imadd            r2.cache, r2.discard, u4, r8.discard
 214: 92108ae22c010130     icmpsel          ult, r4l.cache, r5.cache, r7.discard, 1, 0
 21c: 921c006028010130     icmpsel          ult, r7l.cache, 0, r3.cache, 1, 0
 224: 9202004028010130     icmpsel          ult, r0h.cache, 0, r2.cache, 1, 0
 22c: 920c00602cd2e08c     icmpsel          seq, r3l.cache, 0, r3.discard, r9l.discard, r7l.discard
 234: 920200402cc8108c     icmpsel          seq, r0h.cache, 0, r2.discard, r4l.discard, r0h.discard
 23c: 9208c60000001190     icmpsel          seq, r2l.cache, r3l.discard, 0, 0, 1
 244: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 24c: 8e0d824a0c000000     isub             r3.cache, r1.cache, r2l.discard
 254: 8e05c21a0c000000     isub             r1.cache, r1.discard, r0h.discard
 25c: f2023000             get_sr           r0h.cache, sr48 (thread_position_in_threadgroup.x)
 260: ae89001008010000     bfeil            r2.cache, 0, r0h.cache, 1
 268: 92418a821800212c     icmpsel          ult, r16.cache, r5.cache, u4, 0, r1.discard
 270: 9e0dc68218000000     imadd            r3.cache, r3.discard, u4, 0
 278: 7e3984a29001         and              r14, r2.cache, u37l
 27e: 8e0501002a000000     iadd             r1.cache, 1, r16.cache
 286: 8e0d8a6a2c000000     isub             r3.cache, r5.cache, r3.discard
 28e: 920dca8218ca602c     icmpsel          ult, r3.cache, r5.discard, u4, r5.discard, r3.discard
 296: 9e05c2821b000000     imadd            r1.cache, r1.discard, u28, 0
 29e: 0e4900602c001000     iadd             r18, 0, r3.discard, lsl 2
 2a6: 9e01b80126000010     imadd            r32.cache, u28, r16, 0
 2ae: 7e45c4e28000         and              r17, r2.discard, 14
 2b4: 9289aa212caa212c0010 icmpsel          ult, r34.cache, u21, r1.discard, u21, r1.discard
 2be: 2ed100104c050000     bfeil            r20, 0, r0h.discard, 5, mask 0x1
 2c6: 626900000000         mov_imm          r26, 0, 0b0
 2cc: 626100000000         mov_imm          r24, 0, 0b0
 2d2: 627500000000         mov_imm          r29, 0, 0b0
 2d8: 627100000000         mov_imm          r28, 0, 0b0
 2de: 6295000000000010     mov_imm          r37, 0, 0b0
 2e6: 6291000000000010     mov_imm          r36, 0, 0b0
 2ee: 629d000000000010     mov_imm          r39, 0, 0b0
 2f6: 6299000000000010     mov_imm          r38, 0, 0b0
 2fe: 627d00000000         mov_imm          r31, 0, 0b0
 304: 627900000000         mov_imm          r30, 0, 0b0
 30a: 628d000000000010     mov_imm          r35, 0, 0b0
 312: 6285000000000010     mov_imm          r33, 0, 0b0
 31a: 62a5000000000010     mov_imm          r41, 0, 0b0
 322: 62a1000000000010     mov_imm          r40, 0, 0b0
 32a: 62ad000000000010     mov_imm          r43, 0, 0b0
 332: 62a9000000000010     mov_imm          r42, 0, 0b0
 33a: 626d00000000         mov_imm          r27, 0, 0b0
 340: 626500000000         mov_imm          r25, 0, 0b0
 346: 625d00000000         mov_imm          r23, 0, 0b0
 34c: 625900000000         mov_imm          r22, 0, 0b0
 352: 622900000000         mov_imm          r10, 0, 0b0
 358: 622500000000         mov_imm          r9, 0, 0b0
 35e: 622100000000         mov_imm          r8, 0, 0b0
 364: 621500000000         mov_imm          r5, 0, 0b0
 36a: 625500000000         mov_imm          r21, 0, 0b0
 370: 624d00000000         mov_imm          r19, 0, 0b0
 376: 623d00000000         mov_imm          r15, 0, 0b0
 37c: 623500000000         mov_imm          r13, 0, 0b0
 382: 621d00000000         mov_imm          r7, 0, 0b0
 388: 620d00000000         mov_imm          r3, 0, 0b0
 38e: 620900000000         mov_imm          r2, 0, 0b0
 394: 620500000000         mov_imm          r1, 0, 0b0
 39a: e2000000             mov_imm          r0l.cache, 0
 39e: 522840422405         if_icmp          r0l, ult, r32, r34, 1
 3a4: 20c0b40a0000         jmp_exec_none    0xE58
 3aa: be9d0ac42800         convert          u32_to_f, r7.cache, r6.cache, rte
 3b0: be8508e02800         convert          f_to_u32, r1.cache, r7.cache, rtz
 3b6: 8e058c2a28000000     isub             r1.cache, r6.cache, r1.cache
 3be: 8e09821a00000000     isub             r2.cache, r1.cache, 1
 3c6: 82858e82188420080001 fcmpsel          eq, r1.cache, r7.cache, u36, r2.cache, r1.cache
 3d0: 9a8d9ce12800         fmul32           r3.cache, u14, r7.cache
 3d6: be950b242800         convert          s32_to_f, r5.cache, r1.cache, rte
 3dc: be8508602800         convert          f_to_u32, r1.cache, r3.cache, rtz
 3e2: ba899a69288e0200     fmadd32          r2.cache, u13.neg, r3.cache, r7.cache
 3ea: 9a9d9ca12800         fmul32           r7.cache, u14, r5.cache
 3f0: be950a242800         convert          u32_to_f, r5.cache, r1.cache, rte
 3f6: ba899c41288e0200     fmadd32          r2.cache, u14, r2.cache, r7.cache
 3fe: aa8d86a2a800         fadd32           r3.cache, r3.cache, r5.cache.neg
 404: aa8984721001         fadd32           r2.cache, r2.cache, u35h
 40a: aa8984622800         fadd32           r2.cache, r2.cache, r3.cache
 410: be8909402800         convert          f_to_s32, r2.cache, r2.cache, rtz
 416: 8e07824268000000     iadd             r1_r2.cache, r1.cache, r2.cache.sx
 41e: fe0d94098000         mov              r3.cache, u10
 424: 9e5f826228000000     imadd            r23_r24.cache, r1.cache, r3.cache, 0
 42c: 9e1f426228000000     imadd            r7_r8.cache, r1, r3.cache, 0
 434: 9e0d844219700200     imadd            r3.cache, r2.cache, u10, r24
 43c: 92108ce226010130     icmpsel          ult, r4l.cache, r6.cache, r23, 1, 0
 444: 9e09844219900200     imadd            r2.cache, r2.cache, u10, r8.cache
 44c: 92168ce228010130     icmpsel          ult, r5h.cache, r6.cache, r7.cache, 1, 0
 454: 9202006028010130     icmpsel          ult, r0h.cache, 0, r3.cache, 1, 0
 45c: 9214004028010130     icmpsel          ult, r5l.cache, 0, r2.cache, 1, 0
 464: 92080040288ba088     icmpsel          seq, r2l.cache, 0, r2.cache, r5h.cache, r5l.cache
 46c: 9202006028c8108c     icmpsel          seq, r0h.cache, 0, r3.cache, r4l.discard, r0h.discard
 474: 9208840000001190     icmpsel          seq, r2l.cache, r2l.cache, 0, 0, 1
 47c: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 484: 8e09824a08000000     isub             r2.cache, r1.cache, r2l.cache
 48c: 8e05821a0c000000     isub             r1.cache, r1.cache, r0h.discard
 494: 920d8c4219002128     icmpsel          ult, r3.cache, r6.cache, u10, 0, r1.cache
 49c: 9e05844219000000     imadd            r1.cache, r2.cache, u10, 0
 4a4: be950a642800         convert          u32_to_f, r5.cache, r3.cache, rte
 4aa: 8e058c2a28000000     isub             r1.cache, r6.cache, r1.cache
 4b2: 92354c42194c2028     icmpsel          ult, r13.cache, r6, u10, r6, r1.cache
 4ba: 9aa9a0a12800         fmul32           r10.cache, u16, r5.cache
 4c0: be8908a02800         convert          f_to_u32, r2.cache, r5.cache, rtz
 4c6: ba859e49298a0200     fmadd32          r1.cache, u15.neg, r10.cache, r5.cache
 4ce: be9d08402900         convert          f_to_u32, r7.cache, r10.cache, rtz
 4d4: 8e21464a28000000     isub             r8.cache, r3, r2.cache
 4dc: be890aa42900         convert          u32_to_f, r2.cache, r13.cache, rte
 4e2: 8e25901a00000000     isub             r9.cache, r8.cache, 1
 4ea: bebd0ae42400         convert          u32_to_f, r15.cache, r7, rte
 4f0: 82a58a82189200090001 fcmpsel          eq, r9.cache, r5.cache, u36, r9.cache, r8.cache
 4fa: bea108402800         convert          f_to_u32, r8.cache, r2.cache, rtz
 500: 9a95a4412800         fmul32           r5.cache, u18, r2.cache
 506: bea50b242900         convert          s32_to_f, r9.cache, r9.cache, rte
 50c: aaa994e2a900         fadd32           r10.cache, r10.cache, r15.cache.neg
 512: 8e215a0a29000000     isub             r8.cache, r13, r8.cache
 51a: 9abda0212900         fmul32           r15.cache, u16, r9.cache
 520: 8e25901a00000000     isub             r9.cache, r8.cache, 1
 528: ba85a021289e0200     fmadd32          r1.cache, u16, r1.cache, r15.cache
 530: 82a58482189200090001 fcmpsel          eq, r9.cache, r2.cache, u36, r9.cache, r8.cache
 53a: aaa182721001         fadd32           r8.cache, r1.cache, u35h
 540: be8508a02800         convert          f_to_u32, r1.cache, r5.cache, rtz
 546: aaa190422900         fadd32           r8.cache, r8.cache, r10.cache
 54c: bebd0b242900         convert          s32_to_f, r15.cache, r9.cache, rte
 552: fe2598098000         mov              r9.cache, u12
 558: bea109002900         convert          f_to_s32, r8.cache, r8.cache, rtz
 55e: ba89a2a928840200     fmadd32          r2.cache, u17.neg, r5.cache, r2.cache
 566: bea90a242800         convert          u32_to_f, r10.cache, r1.cache, rte
 56c: 9abda4e12900         fmul32           r15.cache, u18, r15.cache
 572: 8e1f8e0269000000     iadd             r7_r8.cache, r7.cache, r8.cache.sx
 57a: ba89a441285e0200     fmadd32          r2.cache, u18, r2.cache, r15
 582: aa958a42a900         fadd32           r5.cache, r5.cache, r10.cache.neg
 588: aa8984721001         fadd32           r2.cache, r2.cache, u35h
 58e: 9e278e2229000000     imadd            r9_r10.cache, r7.cache, r9.cache, 0
 596: aa8984a22800         fadd32           r2.cache, r2.cache, r5.cache
 59c: be8909402800         convert          f_to_s32, r2.cache, r2.cache, rtz
 5a2: 9e15908219540200     imadd            r5.cache, r8.cache, u12, r10
 5aa: 8e07824268000000     iadd             r1_r2.cache, r1.cache, r2.cache.sx
 5b2: fe2196098000         mov              r8.cache, u11
 5b8: 9210862229010130     icmpsel          ult, r4l.cache, r3.cache, r9.cache, 1, 0
 5c0: 920200a028010130     icmpsel          ult, r0h.cache, 0, r5.cache, 1, 0
 5c8: 9e23820229000000     imadd            r8_r9.cache, r1.cache, r8.cache, 0
 5d0: 920200a028c8108c     icmpsel          seq, r0h.cache, 0, r5.cache, r4l.discard, r0h.discard
 5d8: 8e15004026002000     iadd             r5.cache, 0, r18, lsl 4
 5e0: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 5e8: 9e25846219920200     imadd            r9.cache, r2.cache, u11, r9.cache
 5f0: 92109a0225010130     icmpsel          ult, r4l.cache, r13.cache, r8, 1, 0
 5f8: 8e098e1a0c000000     isub             r2.cache, r7.cache, r0h.discard
 600: 9202002029010130     icmpsel          ult, r0h.cache, 0, r9.cache, 1, 0
 608: 9202002029c8108c     icmpsel          seq, r0h.cache, 0, r9.cache, r4l.discard, r0h.discard
 610: 920d868219004128     icmpsel          ult, r3.cache, r3.cache, u12, 0, r2.cache
 618: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 620: 9e15aca128804200     imadd            r5.cache, u22, r5.cache, r32.cache
 628: 8e05821a0c000000     isub             r1.cache, r1.cache, r0h.discard
 630: 92095a6219002128     icmpsel          ult, r2.cache, r13, u11, 0, r1.cache
 638: ae8500a028020000     bfeil            r1.cache, 0, r5.cache, 2
 640: 9e09926128840200     imadd            r2.cache, u9, r3.cache, r2.cache
 648: f2023000             get_sr           r0h.cache, sr48 (thread_position_in_threadgroup.x)
 64c: ae8c001048050000     bfeil            r3l.cache, 0, r0h.cache, 5, mask 0x1
 654: 1e31840219820210     imadd            r44, r2.cache, u8, r1.cache
 65c: 8e04001008001000     iadd             r1l.cache, 0, r0h.cache, lsl 2
 664: ae95001008030000     bfeil            r5.cache, 0, r0h.cache, 3
 66c: fe1082c08000         and              r4l.cache, r1l.cache, 12
 672: 8e22006088000000     iadd             r8h.cache, 0, r3l.cache, lsl 1
 67a: 9e05aca128000000     imadd            r1.cache, u22, r5.cache, 0
 682: fe09c1708000         and              r2.cache, r0h.discard, 7
 688: 9e0daea128000000     imadd            r3.cache, u23, r5.cache, 0
 690: 8e028aa008002000     iadd             r0h.cache, r5l.cache, r5l.cache, lsl 4
 698: 9e158ec124404200     imadd            r5.cache, u7, r6, r32
 6a0: 0e02c14088000000     iadd             r0h, r0h.discard, r2l.cache, lsl 1
 6a8: ae9d002028020000     bfeil            r7.cache, 0, r1.cache, 2
 6b0: 8e05008025002000     iadd             r1.cache, 0, r12, lsl 4
 6b8: ae8d006028020000     bfeil            r3.cache, 0, r3.cache, 2
 6c0: 0e358e4208100000     iadd             r45, r7.cache, r2l.cache
 6c8: 9e05ae21288a0200     imadd            r1.cache, u23, r1.cache, r5.cache
 6d0: 0e39864208100000     iadd             r46, r3.cache, r2l.cache
 6d8: 0e10c81009002000     iadd             r4l, r4l.discard, r8h.cache, lsl 4
 6e0: 2ebd002028020010     bfeil            r47, 0, r1.cache, 2
 6e8: 0e4162c025100000     iadd             r48, r17l, r14
 6f0: 626900000000         mov_imm          r26, 0, 0b0
 6f6: 626100000000         mov_imm          r24, 0, 0b0
 6fc: 627500000000         mov_imm          r29, 0, 0b0
 702: 627100000000         mov_imm          r28, 0, 0b0
 708: 6295000000000010     mov_imm          r37, 0, 0b0
 710: 6291000000000010     mov_imm          r36, 0, 0b0
 718: 629d000000000010     mov_imm          r39, 0, 0b0
 720: 6299000000000010     mov_imm          r38, 0, 0b0
 728: 627d00000000         mov_imm          r31, 0, 0b0
 72e: 627900000000         mov_imm          r30, 0, 0b0
 734: 628d000000000010     mov_imm          r35, 0, 0b0
 73c: 6285000000000010     mov_imm          r33, 0, 0b0
 744: 62a5000000000010     mov_imm          r41, 0, 0b0
 74c: 62a1000000000010     mov_imm          r40, 0, 0b0
 754: 62ad000000000010     mov_imm          r43, 0, 0b0
 75c: 62a9000000000010     mov_imm          r42, 0, 0b0
 764: 626d00000000         mov_imm          r27, 0, 0b0
 76a: 626500000000         mov_imm          r25, 0, 0b0
 770: 625d00000000         mov_imm          r23, 0, 0b0
 776: 625900000000         mov_imm          r22, 0, 0b0
 77c: 622900000000         mov_imm          r10, 0, 0b0
 782: 622500000000         mov_imm          r9, 0, 0b0
 788: 622100000000         mov_imm          r8, 0, 0b0
 78e: 621500000000         mov_imm          r5, 0, 0b0
 794: 625500000000         mov_imm          r21, 0, 0b0
 79a: 624d00000000         mov_imm          r19, 0, 0b0
 7a0: 623d00000000         mov_imm          r15, 0, 0b0
 7a6: 623500000000         mov_imm          r13, 0, 0b0
 7ac: 621d00000000         mov_imm          r7, 0, 0b0
 7b2: 620d00000000         mov_imm          r3, 0, 0b0
 7b8: 620900000000         mov_imm          r2, 0, 0b0
 7be: 620500000000         mov_imm          r1, 0, 0b0
 7c4: c21000000000         push_exec        r0l.cache, 2
 7ca: 5288aae11801         if_icmp          r0l, seq, u21, u39, 1
 7d0: 20c01c020000         jmp_exec_none    0x9EC
 7d6: 8e495a8225150000     iadd             r50.cache, r45, r44
 7de: aedd00402a060011     bfeil            r55.cache, 0, r50.cache, 6
 7e6: fe55a4728014         and              r53.cache, r50.cache, 7
 7ec: 8e650040ae110000     iadd             r57.cache, 0, r50.discard, lsl 1
 7f4: 9e47ae0201000016     imadd            r49_r50.cache, r55.cache, 144, 0
 7fc: fe4db2028215         and              r51.cache, r57.cache, 96
 802: fe51ba098010         mov              r52.cache, u29
 808: 8e4de6a00e151000     iadd             r51.cache, r51l.discard, r53l.discard, lsl 2
 810: 8e55a8222e150000     iadd             r53.cache, r52.cache, r49.discard
 818: fe45bc098010         mov              r49.cache, u30
 81e: 92c6aa822e0101300005 icmpsel          ult, r17h.cache, r53.cache, r52.discard, 1, 0
 828: 8e45e2422e150000     iadd             r49.cache, r49.discard, r50.discard
 830: aec900602e020011     bfeil            r50.cache, 0, r51.discard, 2
 838: 8e59e3202e110000     iadd             r54.cache, r17h.discard, r49.discard
 840: aef10020e7040011     bfeil            r60.cache, 0, r57, 4, mask 0x7
 848: 8e4504a02a110000     iadd             r49.cache, 4, r53.cache
 850: 0e4faa432e151000     iadd             r51_r52, r53_r54.cache, r50.discard, lsl 2
 858: 92c662a22e0101300005 icmpsel          ult, r17h.cache, r49, r53.discard, 1, 0
 862: 8e55eee2ae151000     iadd             r53.cache, r55.discard, r55.discard, lsl 3
 86a: 0e49e3c02e110000     iadd             r50, r17h.discard, r54.discard
 872: 0e5900a0ae110000     iadd             r54, 0, r53.discard, lsl 1
 87a: 8e55b84a00140000     isub             r53.cache, r60.cache, 4
 882: 12ddb84200b8a02e5014 icmpsel          ult, r55, r60.cache, 4, r60.cache, r53.discard
 88c: 0e555ce225150000     iadd             r53, r46, r47
 894: 8e6904802b110000     iadd             r58.cache, 4, r60.cache
 89c: 12edb84200b8402b5014 icmpsel          ult, r59, r60.cache, 4, r60.cache, r58.cache
 8a6: 12e17842007480275014 icmpsel          ult, r56, r60, 4, r58, r60
 8b0: 0599160560c91200     device_load      0, i32, x, r51, r51_r52, 1, signed, lsl 2
 8b8: 0584624467c11000     device_load      1, i8, x, r48h, r49_r50, r59, signed
 8c0: 05e8420467c11000     device_load      0, i8, x, r61l, r49_r50, r58, signed
 8c8: 058c020467c01000     device_load      0, i8, x, r17h, r49_r50, r56, signed
 8d0: 0588e20666c11000     device_load      0, i8, x, r49l, r49_r50, r55, unsigned
 8d8: 858cca4c36c93000     device_load      1, i16, xy, r49h_r50l, u29_u30, r54, signed, lsl 2
 8e0: 05a9ae4e36c9f200     device_load      1, i32, xyzw, r53_r54_r55_r56, u31_u32, r53, unsigned, lsl 2
 8e8: 3800                 wait             0
 8ea: aee500202f040011     bfeil            r57.cache, 0, r57.discard, 4
 8f2: 92edb842000021300014 icmpsel          ult, r59.cache, r60.cache, 4, 0, 2
 8fc: 92e9b842003001303014 icmpsel          ult, r58.cache, r60.cache, 4, 48, 192
 906: 92d1b842000f01333014 icmpsel          ult, r52.cache, r60.cache, 4, 15, 240
 910: 92f1f842000041300014 icmpsel          ult, r60.cache, r60.discard, 4, 0, 4
 91a: fe51e8a28f15         and              r52.cache, r52.discard, r61l.discard
 920: 8e6500202f111000     iadd             r57.cache, 0, r57.discard, lsl 2
 928: 2ed100802ef84211     bfeil            r52, 0, r52.discard, r60.discard
 930: fe71f2428014         and              r60.cache, r57.discard, 4
 936: fe65b4328e14         and              r57.cache, r58.cache, r17h.discard
 93c: aecd00602ef84211     bfeil            r51.cache, 0, r51.discard, r60.discard
 944: 2ee500202fb64211     bfeil            r57, 0, r57.discard, r59.cache
 94c: fe4de6c29815         and              r51.cache, r51.discard, u38
 952: 2ec6006006080001     bfeil            r17h, 0, r51l, 8
 95a: fe69f4228e15         and              r58.cache, r58.discard, r49l.discard
 960: 2ee900402ff64211     bfeil            r58, 0, r58.discard, r59.discard
 968: 3801                 wait             1
 96a: fe44e1f08014         and              r49l.cache, r48h.discard, 15
 970: aec200700a080011     bfeil            r48h.cache, 0, r51h.cache, 8
 978: fe4ae248cf15         or               r50h.cache, r49l.discard, r58l.discard
 97e: fe44f288ce15         or               r49l.cache, r57l.discard, r52l.discard
 984: bed106540e11         convert          u16_to_f, r52.cache, r50h.discard, rte
 98a: bee506240e11         convert          u16_to_f, r57.cache, r49l.discard, rte
 990: 9ad1e8320e15         fmul32           r52.cache, r52.discard, r49h.discard
 996: bec500640e11         convert          u8_to_f, r49.cache, r51l.discard, rte
 99c: 9ae5e4282f15         fmul32           r57.cache, r50l.discard.neg, r57.discard
 9a2: bec900340e10         convert          u8_to_f, r50.cache, r17h.discard, rte
 9a8: 3ac5a8222eb24215     fmadd32          r49, r52.cache, r49.discard, r57.cache
 9b0: becd00740e11         convert          u8_to_f, r51.cache, r51h.discard, rte
 9b6: 0e46001084001000     iadd             r17h, 0, r0h, lsl 3
 9be: bee900140e11         convert          u8_to_f, r58.cache, r48h.discard, rte
 9c4: 3acda8622eb24215     fmadd32          r51, r52.cache, r51.discard, r57.cache
 9cc: 3ac9a8422eb24215     fmadd32          r50, r52.cache, r50.discard, r57.cache
 9d4: 3ad1e8422ff24215     fmadd32          r52, r52.discard, r58.discard, r57.discard
 9dc: 29d52302f4810010     threadgroup_store i32, xyzw, r53_r54_r55_r56, r17h, 0
 9e4: 29c52302f6840810     threadgroup_store i32, xyzw, r49_r50_r51_r52, r17h, 544
 9ec: 520e00000000         pop_exec         r0l, 1
 9f2: 0e3108802d110000     iadd             r44, 8, r44.discard
 9fa: 0e46600006052000     iadd             r17h, r48l, r48l, lsl 4
 a02: 6800                 threadgroup_barrier 
 a04: e2c5000000000010     mov_imm          r49.cache, 0, 0b0
 a0c: 421000000000         push_exec        r0l, 2
 a12: 8e48888008102000     iadd             r50l.cache, r4l.cache, r4l.cache, lsl 4
 a1a: 8e42018008100000     iadd             r48h.cache, 1, r4l.cache
 a22: 8e48a2400e150000     iadd             r50l.cache, r49l.cache, r50l.discard
 a2a: 8e42e1100e152000     iadd             r48h.cache, r48h.discard, r48h.discard, lsl 4
 a32: 8e4800408e111000     iadd             r50l.cache, 0, r50l.discard, lsl 3
 a3a: 8e42a2100e150000     iadd             r48h.cache, r49l.cache, r48h.discard
 a42: 0e5ce46010150000     iadd             r55l, r50l.discard, u35l
 a4a: 8e4800108e111000     iadd             r50l.cache, 0, r48h.discard, lsl 3
 a52: 8e42028008100000     iadd             r48h.cache, 2, r4l.cache
 a5a: 0e5ae46010150000     iadd             r54h, r50l.discard, u35l
 a62: 8e48e1100e152000     iadd             r50l.cache, r48h.discard, r48h.discard, lsl 4
 a6a: 8e42038008100000     iadd             r48h.cache, 3, r4l.cache
 a72: 8e48a2400e150000     iadd             r50l.cache, r49l.cache, r50l.discard
 a7a: 8e42e1100e152000     iadd             r48h.cache, r48h.discard, r48h.discard, lsl 4
 a82: 8e4800408e111000     iadd             r50l.cache, 0, r50l.discard, lsl 3
 a8a: 8e42a2100e150000     iadd             r48h.cache, r49l.cache, r48h.discard
 a92: 0e58e46010150000     iadd             r54l, r50l.discard, u35l
 a9a: 8e4800108e111000     iadd             r50l.cache, 0, r48h.discard, lsl 3
 aa2: 8e42108008100000     iadd             r48h.cache, 16, r4l.cache
 aaa: 0e56e46010150000     iadd             r53h, r50l.discard, u35l
 ab2: 8e48e1100e152000     iadd             r50l.cache, r48h.discard, r48h.discard, lsl 4
 aba: 8e42118008100000     iadd             r48h.cache, 17, r4l.cache
 ac2: 8e48a2400e150000     iadd             r50l.cache, r49l.cache, r50l.discard
 aca: 8e42e1100e152000     iadd             r48h.cache, r48h.discard, r48h.discard, lsl 4
 ad2: 8e4800408e111000     iadd             r50l.cache, 0, r50l.discard, lsl 3
 ada: 8e42a2100e150000     iadd             r48h.cache, r49l.cache, r48h.discard
 ae2: 0e54e46010150000     iadd             r53l, r50l.discard, u35l
 aea: 8e4800108e111000     iadd             r50l.cache, 0, r48h.discard, lsl 3
 af2: 8e42128008100000     iadd             r48h.cache, 18, r4l.cache
 afa: 0e52e46010150000     iadd             r52h, r50l.discard, u35l
 b02: 8e48e1100e152000     iadd             r50l.cache, r48h.discard, r48h.discard, lsl 4
 b0a: 8e42138004100000     iadd             r48h.cache, 19, r4l
 b12: 8e48a2400e150000     iadd             r50l.cache, r49l.cache, r50l.discard
 b1a: 8e42e1100e152000     iadd             r48h.cache, r48h.discard, r48h.discard, lsl 4
 b22: 8e4800408e111000     iadd             r50l.cache, 0, r50l.discard, lsl 3
 b2a: 8e42a2100e150000     iadd             r48h.cache, r49l.cache, r48h.discard
 b32: 0e48e46010150000     iadd             r50l, r50l.discard, u35l
 b3a: 8e4200108e111000     iadd             r48h.cache, 0, r48h.discard, lsl 3
 b42: 8e4a01000a110000     iadd             r50h.cache, 1, r48l.cache
 b4a: 0e42e16010150000     iadd             r48h, r48h.discard, u35l
 b52: 8e4ae5500e152000     iadd             r50h.cache, r50h.discard, r50h.discard, lsl 4
 b5a: 8e4ca23006140000     iadd             r51l.cache, r49l.cache, r17h
 b62: 8e4aa2500e150000     iadd             r50h.cache, r49l.cache, r50h.discard
 b6a: 0e5010608e111000     iadd             r52l, 16, r51l.discard, lsl 3
 b72: 0e4e10508e111000     iadd             r51h, 16, r50h.discard, lsl 3
 b7a: 8e4c10000a110000     iadd             r51l.cache, 16, r48l.cache
 b82: 8e4a110006110000     iadd             r50h.cache, 17, r48l
 b8a: 8e4ce6600e152000     iadd             r51l.cache, r51l.discard, r51l.discard, lsl 4
 b92: 8e4ae5500e152000     iadd             r50h.cache, r50h.discard, r50h.discard, lsl 4
 b9a: 8e4ca2600e150000     iadd             r51l.cache, r49l.cache, r51l.discard
 ba2: 8e4a62500e150000     iadd             r50h.cache, r49l, r50h.discard
 baa: 0e4c10608e111000     iadd             r51l, 16, r51l.discard, lsl 3
 bb2: 0e4a10508e111000     iadd             r50h, 16, r50h.discard, lsl 3
 bba: 69912ec23781ff27     threadgroup_load i32, xy, r68_r69, r55l, -4
 bc2: 69892dc23781ff27     threadgroup_load i32, xy, r66_r67, r54h, -4
 bca: 69fd2cc23781ff17     threadgroup_load i32, xy, r63_r64, r54l, -4
 bd2: 69f52bc23781ff17     threadgroup_load i32, xy, r61_r62, r53h, -4
 bda: 69e92ac23781ff17     threadgroup_load i32, xy, r58_r59, r53l, -4
 be2: 69d929c23781ff17     threadgroup_load i32, xy, r54_r55, r52h, -4
 bea: 69a928c23781ff27     threadgroup_load i32, xy, r74_r75, r52l, -4
 bf2: 69a127c23781ff27     threadgroup_load i32, xy, r72_r73, r51h, -4
 bfa: 699926c23781ff27     threadgroup_load i32, xy, r70_r71, r51l, -4
 c02: 69d125c23781ff17     threadgroup_load i32, xy, r52_r53, r50h, -4
 c0a: 69e124c23781ff17     threadgroup_load i32, xy, r56_r57, r50l, -4
 c12: 69c921c23781ff17     threadgroup_load i32, xy, r50_r51, r48h, -4
 c1a: baa540622992421a     fmadd32          r41.cache, r64, r75.cache, r41.cache
 c22: baa17c6229904216     fmadd32          r40.cache, r62, r75.cache, r40.cache
 c2a: 3aa57e4229524216     fmadd32          r41, r63, r74.cache, r41
 c32: 3aa17a4229504216     fmadd32          r40, r61, r74.cache, r40
 c3a: ba8db66229864216     fmadd32          r35.cache, r59.cache, r75.cache, r35.cache
 c42: ba85ae6229824216     fmadd32          r33.cache, r55.cache, r75.cache, r33.cache
 c4a: 3a8db44229464216     fmadd32          r35, r58.cache, r74.cache, r35
 c52: 3a856c4229424216     fmadd32          r33, r54, r74.cache, r33
 c5a: bafd726229be0206     fmadd32          r31.cache, r57, r75.cache, r31.cache
 c62: baf9666229bc0206     fmadd32          r30.cache, r51, r75.cache, r30.cache
 c6a: 3afd7042297e0206     fmadd32          r31, r56, r74.cache, r31
 c72: 3af96442297c0206     fmadd32          r30, r50, r74.cache, r30
 c7a: baad8a622996421a     fmadd32          r43.cache, r69.cache, r75.cache, r43.cache
 c82: baa986622d94421a     fmadd32          r42.cache, r67.cache, r75.discard, r42.cache
 c8a: 3aad88422956421a     fmadd32          r43, r68.cache, r74.cache, r43
 c92: 3aa984422d54421a     fmadd32          r42, r66.cache, r74.discard, r42
 c9a: 0e4501202e110000     iadd             r49, 1, r49.discard
 ca2: ba9d4a22298e421a     fmadd32          r39.cache, r69, r73.cache, r39.cache
 caa: ba994622298c421a     fmadd32          r38.cache, r67, r73.cache, r38.cache
 cb2: 3a9d4802294e421a     fmadd32          r39, r68, r72.cache, r39
 cba: 3a994402294c421a     fmadd32          r38, r66, r72.cache, r38
 cc2: baf5b62229ba0206     fmadd32          r29.cache, r59.cache, r73.cache, r29.cache
 cca: baf1ae2229b80206     fmadd32          r28.cache, r55.cache, r73.cache, r28.cache
 cd2: 3af5b402297a0206     fmadd32          r29, r58.cache, r72.cache, r29
 cda: 3af16c0229780206     fmadd32          r28, r54, r72.cache, r28
 ce2: bae9722229b40206     fmadd32          r26.cache, r57, r73.cache, r26.cache
 cea: bae1662229b00206     fmadd32          r24.cache, r51, r73.cache, r24.cache
 cf2: 3ae9700229740206     fmadd32          r26, r56, r72.cache, r26
 cfa: 3ae1640229700206     fmadd32          r24, r50, r72.cache, r24
 d02: ba958022298a421a     fmadd32          r37.cache, r64.cache, r73.cache, r37.cache
 d0a: ba91bc222d884216     fmadd32          r36.cache, r62.cache, r73.discard, r36.cache
 d12: 3a95be02294a4216     fmadd32          r37, r63.cache, r72.cache, r37
 d1a: 3a91ba022d484216     fmadd32          r36, r61.cache, r72.discard, r36
 d22: badd40e228ae020a     fmadd32          r23.cache, r64, r71.cache, r23.cache
 d2a: bad97ce228ac0206     fmadd32          r22.cache, r62, r71.cache, r22.cache
 d32: 3addbec2286e0206     fmadd32          r23, r63.cache, r70.cache, r23
 d3a: 3ad9bac2286c0206     fmadd32          r22, r61.cache, r70.cache, r22
 d42: baa9b6e228940206     fmadd32          r10.cache, r59.cache, r71.cache, r10.cache
 d4a: baa56ee228920206     fmadd32          r9.cache, r55, r71.cache, r9.cache
 d52: 3aa974c228540206     fmadd32          r10, r58, r70.cache, r10
 d5a: 3aa56cc228520206     fmadd32          r9, r54, r70.cache, r9
 d62: baa172e228900206     fmadd32          r8.cache, r57, r71.cache, r8.cache
 d6a: ba9566e2288a0206     fmadd32          r5.cache, r51, r71.cache, r5.cache
 d72: 3aa170c228500206     fmadd32          r8, r56, r70.cache, r8
 d7a: 3a9564c2284a0206     fmadd32          r5, r50, r70.cache, r5
 d82: baed8ae228b6020a     fmadd32          r27.cache, r69.cache, r71.cache, r27.cache
 d8a: bae586e22cb2020a     fmadd32          r25.cache, r67.cache, r71.discard, r25.cache
 d92: 3aed88c22876020a     fmadd32          r27, r68.cache, r70.cache, r27
 d9a: 3ae584c22c72020a     fmadd32          r25, r66.cache, r70.discard, r25
 da2: bad5caa22aaa0209     fmadd32          r21.cache, r69.discard, r53.cache, r21.cache
 daa: bacdc6a22aa60209     fmadd32          r19.cache, r67.discard, r53.cache, r19.cache
 db2: 3ad5c8822a6a0209     fmadd32          r21, r68.discard, r52.cache, r21
 dba: 3acdc4822a660209     fmadd32          r19, r66.discard, r52.cache, r19
 dc2: babdc0a22a9e0209     fmadd32          r15.cache, r64.discard, r53.cache, r15.cache
 dca: bab5fca22a9a0205     fmadd32          r13.cache, r62.discard, r53.cache, r13.cache
 dd2: 3abdfe822a5e0205     fmadd32          r15, r63.discard, r52.cache, r15
 dda: 3ab5fa822a5a0205     fmadd32          r13, r61.discard, r52.cache, r13
 de2: ba9df6a22a8e0205     fmadd32          r7.cache, r59.discard, r53.cache, r7.cache
 dea: ba8deea22a860205     fmadd32          r3.cache, r55.discard, r53.cache, r3.cache
 df2: 3a9df4822a4e0205     fmadd32          r7, r58.discard, r52.cache, r7
 dfa: 3a8dec822a460205     fmadd32          r3, r54.discard, r52.cache, r3
 e02: ba89f2a22a840205     fmadd32          r2.cache, r57.discard, r53.cache, r2.cache
 e0a: ba85e6a22e820205     fmadd32          r1.cache, r51.discard, r53.discard, r1.cache
 e12: 3a89f0822a440205     fmadd32          r2, r56.discard, r52.cache, r2
 e1a: 3a85e4822e420205     fmadd32          r1, r50.discard, r52.discard, r1
 e22: 529562020104         while_icmp       r0l, nseq, r49, 16, 2
 e28: 00c0eafbffff         jmp_exec_any     0xA12
 e2e: 521600000000         pop_exec         r0l, 2
 e34: 0e0120002c110000     iadd             r32, 32, r32.discard
 e3c: 0e3d08e02d110000     iadd             r47, 8, r47.discard
 e44: 6800                 threadgroup_barrier 
 e46: 523440422405         while_icmp       r0l, ult, r32, r34, 2
 e4c: 00c07ef9ffff         jmp_exec_any     0x7CA
 e52: d21600000000         pop_exec         r0l.cache, 2
 e58: d20e00000000         pop_exec         r0l.cache, 1
 e5e: 8e090080ae100000     iadd             r34.cache, 0, r20.discard, lsl 1
 e66: 8e5100402c012000     iadd             r20.cache, 0, r34.discard, lsl 4
 e6e: 9e35b6012ecc0210     imadd            r45.cache, u27, r16.discard, r6.discard
 e76: 8e41e8422e002000     iadd             r16.cache, r20.discard, r18.discard, lsl 4
 e7e: 8e49e2802d002000     iadd             r18.cache, r17l.discard, r12.discard, lsl 4
 e86: 8e19e0622d000000     iadd             r6.cache, r16.discard, r11.discard
 e8e: 8e31e4c22d000000     iadd             r12.cache, r18.discard, r14.discard
 e96: 9e2d5a221b8c0204     imadd            r11.cache, r45, u25, r6.cache
 e9e: 920298821a010130     icmpsel          ult, r0h.cache, r12.cache, u20, 1, 0
 ea6: 92424c621a410030     icmpsel          ult, r16h.cache, r6, u19, r0h, 0
 eae: 1e39b08125560200     imadd            r14, u24, r12, r11
 eb6: 5289e1000000         if_icmp          r0l, nseq, r16h.discard, 0, 1
 ebc: 4559c20e41c11200     device_store     0, i32, x, r43, u33_u34, r14, unsigned, 0
 ec4: d20e00000000         pop_exec         r0l.cache, 1
 eca: 8e4101c024000000     iadd             r16.cache, 1, r6
 ed2: 924460621a410030     icmpsel          ult, r17l.cache, r16, u19, r0h, 0
 eda: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
 ee0: 0e4501c025000000     iadd             r17, 1, r14
 ee8: 4551220e42c11200     device_store     0, i32, x, r42, u33_u34, r17, unsigned, 0
 ef0: d20e00000000         pop_exec         r0l.cache, 1
 ef6: 8e4502c024000000     iadd             r17.cache, 2, r6
 efe: 924862621a410030     icmpsel          ult, r18l.cache, r17, u19, r0h, 0
 f06: 5289e4000000         if_icmp          r0l, nseq, r18l.discard, 0, 1
 f0c: 0e5102c025000000     iadd             r20, 2, r14
 f14: 4549820e42c11200     device_store     0, i32, x, r41, u33_u34, r20, unsigned, 0
 f1c: d20e00000000         pop_exec         r0l.cache, 1
 f22: 8e5103c024000000     iadd             r20.cache, 3, r6
 f2a: 924868621a410030     icmpsel          ult, r18l.cache, r20, u19, r0h, 0
 f32: 5289e4000000         if_icmp          r0l, nseq, r18l.discard, 0, 1
 f38: 0e0103c02d100000     iadd             r32, 3, r14.discard
 f40: 4541020e44c11200     device_store     0, i32, x, r40, u33_u34, r32, unsigned, 0
 f48: d20e00000000         pop_exec         r0l.cache, 1
 f4e: 8e25018025100000     iadd             r41.cache, 1, r12
 f56: 928892821a0101300014 icmpsel          ult, r34l.cache, r41.cache, u20, 1, 0
 f60: 92904c621a4400304000 icmpsel          ult, r4l.cache, r6, u19, r34l, 0
 f6a: 1e39b02125560201     imadd            r14, u24, r41, r11
 f72: 5289c8000000         if_icmp          r0l, nseq, r4l.discard, 0, 1
 f78: 4539c20e41c11200     device_store     0, i32, x, r39, u33_u34, r14, unsigned, 0
 f80: d20e00000000         pop_exec         r0l.cache, 1
 f86: 92ca60621a4400304000 icmpsel          ult, r18h.cache, r16, u19, r34l, 0
 f90: 5289e5000000         if_icmp          r0l, nseq, r18h.discard, 0, 1
 f96: 0e0101c025100000     iadd             r32, 1, r14
 f9e: 4531020e44c11200     device_store     0, i32, x, r38, u33_u34, r32, unsigned, 0
 fa6: d20e00000000         pop_exec         r0l.cache, 1
 fac: 92ca62621a4400304000 icmpsel          ult, r18h.cache, r17, u19, r34l, 0
 fb6: 5289e5000000         if_icmp          r0l, nseq, r18h.discard, 0, 1
 fbc: 0e0102c025100000     iadd             r32, 2, r14
 fc4: 4529020e44c11200     device_store     0, i32, x, r37, u33_u34, r32, unsigned, 0
 fcc: d20e00000000         pop_exec         r0l.cache, 1
 fd2: 92ca68621a4400304000 icmpsel          ult, r18h.cache, r20, u19, r34l, 0
 fdc: 5289e5000000         if_icmp          r0l, nseq, r18h.discard, 0, 1
 fe2: 0e0103c02d100000     iadd             r32, 3, r14.discard
 fea: 4521020e44c11200     device_store     0, i32, x, r36, u33_u34, r32, unsigned, 0
 ff2: d20e00000000         pop_exec         r0l.cache, 1
 ff8: 8e0110c024100000     iadd             r32.cache, 16, r6
1000: 9e39da221b804204     imadd            r14.cache, r45.discard, u25, r32.cache
1008: 929040621a4100300004 icmpsel          ult, r4l.cache, r32, u19, r0h, 0
1012: 1e49b081255c0200     imadd            r18, u24, r12, r14
101a: 5289c8000000         if_icmp          r0l, nseq, r4l.discard, 0, 1
1020: 4519420e42c11200     device_store     0, i32, x, r35, u33_u34, r18, unsigned, 0
1028: d20e00000000         pop_exec         r0l.cache, 1
102e: 8e0d11c024100000     iadd             r35.cache, 17, r6
1036: 929046621a4100300004 icmpsel          ult, r4l.cache, r35, u19, r0h, 0
1040: 5289c8000000         if_icmp          r0l, nseq, r4l.discard, 0, 1
1046: 0e11014026100000     iadd             r36, 1, r18
104e: 4509820e44c11200     device_store     0, i32, x, r33, u33_u34, r36, unsigned, 0
1056: d20e00000000         pop_exec         r0l.cache, 1
105c: 8e0512c024100000     iadd             r33.cache, 18, r6
1064: 929042621a4100300004 icmpsel          ult, r4l.cache, r33, u19, r0h, 0
106e: 5289c8000000         if_icmp          r0l, nseq, r4l.discard, 0, 1
1074: 0e11024026100000     iadd             r36, 2, r18
107c: 45f9820e44c01200     device_store     0, i32, x, r31, u33_u34, r36, unsigned, 0
1084: d20e00000000         pop_exec         r0l.cache, 1
108a: 8e7d13c024000000     iadd             r31.cache, 19, r6
1092: 92027e621ac10030     icmpsel          ult, r0h.cache, r31, u19, r0h.discard, 0
109a: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
10a0: 0e1103402e100000     iadd             r36, 3, r18.discard
10a8: 45f1820e44c01200     device_store     0, i32, x, r30, u33_u34, r36, unsigned, 0
10b0: d20e00000000         pop_exec         r0l.cache, 1
10b6: 1e11b0212d5c0211     imadd            r36, u24, r41.discard, r14
10be: 92ca40621a4400304004 icmpsel          ult, r18h.cache, r32, u19, r34l, 0
10c8: 5289e5000000         if_icmp          r0l, nseq, r18h.discard, 0, 1
10ce: 45e9820e44c01200     device_store     0, i32, x, r29, u33_u34, r36, unsigned, 0
10d6: d20e00000000         pop_exec         r0l.cache, 1
10dc: 928246621a4400304004 icmpsel          ult, r0h.cache, r35, u19, r34l, 0
10e6: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
10ec: 0e49018024010000     iadd             r18, 1, r36
10f4: 45e1420e42c01200     device_store     0, i32, x, r28, u33_u34, r18, unsigned, 0
10fc: d20e00000000         pop_exec         r0l.cache, 1
1102: 928242621a4400304004 icmpsel          ult, r0h.cache, r33, u19, r34l, 0
110c: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1112: 0e49028024010000     iadd             r18, 2, r36
111a: 45d1420e42c01200     device_store     0, i32, x, r26, u33_u34, r18, unsigned, 0
1122: d20e00000000         pop_exec         r0l.cache, 1
1128: 92827e621ac400304000 icmpsel          ult, r0h.cache, r31, u19, r34l.discard, 0
1132: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1138: 0e4903802c010000     iadd             r18, 3, r36.discard
1140: 45c1420e42c01200     device_store     0, i32, x, r24, u33_u34, r18, unsigned, 0
1148: d20e00000000         pop_exec         r0l.cache, 1
114e: 8e75108025000000     iadd             r29.cache, 16, r12
1156: 9268ba821a010130     icmpsel          ult, r26l.cache, r29.cache, u20, 1, 0
115e: 92024c621a740030     icmpsel          ult, r0h.cache, r6, u19, r26l, 0
1166: 1e49b0a127560200     imadd            r18, u24, r29, r11
116e: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1174: 45d9420e42c01200     device_store     0, i32, x, r27, u33_u34, r18, unsigned, 0
117c: d20e00000000         pop_exec         r0l.cache, 1
1182: 920260621a740030     icmpsel          ult, r0h.cache, r16, u19, r26l, 0
118a: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1190: 0e61014026000000     iadd             r24, 1, r18
1198: 45c9020e43c01200     device_store     0, i32, x, r25, u33_u34, r24, unsigned, 0
11a0: d20e00000000         pop_exec         r0l.cache, 1
11a6: 920262621a740030     icmpsel          ult, r0h.cache, r17, u19, r26l, 0
11ae: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
11b4: 0e61024026000000     iadd             r24, 2, r18
11bc: 45b9020e43c01200     device_store     0, i32, x, r23, u33_u34, r24, unsigned, 0
11c4: d20e00000000         pop_exec         r0l.cache, 1
11ca: 925c68621a740030     icmpsel          ult, r23l.cache, r20, u19, r26l, 0
11d2: 5289ee000000         if_icmp          r0l, nseq, r23l.discard, 0, 1
11d8: 0e5d03402e000000     iadd             r23, 3, r18.discard
11e0: 45b1e20e42c01200     device_store     0, i32, x, r22, u33_u34, r23, unsigned, 0
11e8: d20e00000000         pop_exec         r0l.cache, 1
11ee: 8e5d11802d000000     iadd             r23.cache, 17, r12.discard
11f6: 9248ae821a010130     icmpsel          ult, r18l.cache, r23.cache, u20, 1, 0
11fe: 9202cc621a640030     icmpsel          ult, r0h.cache, r6.discard, u19, r18l, 0
1206: 1e19b0e126d60200     imadd            r6, u24, r23, r11.discard
120e: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1214: 45a9c20e40c01200     device_store     0, i32, x, r21, u33_u34, r6, unsigned, 0
121c: d20e00000000         pop_exec         r0l.cache, 1
1222: 922ce0621a640030     icmpsel          ult, r11l.cache, r16.discard, u19, r18l, 0
122a: 5289d6000000         if_icmp          r0l, nseq, r11l.discard, 0, 1
1230: 0e2d01c024000000     iadd             r11, 1, r6
1238: 4599620e41c01200     device_store     0, i32, x, r19, u33_u34, r11, unsigned, 0
1240: d20e00000000         pop_exec         r0l.cache, 1
1246: 9202e2621a640030     icmpsel          ult, r0h.cache, r17.discard, u19, r18l, 0
124e: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1254: 0e2d02c024000000     iadd             r11, 2, r6
125c: 4579620e41c01200     device_store     0, i32, x, r15, u33_u34, r11, unsigned, 0
1264: d20e00000000         pop_exec         r0l.cache, 1
126a: 922ce8621a640030     icmpsel          ult, r11l.cache, r20.discard, u19, r18l, 0
1272: 5289d6000000         if_icmp          r0l, nseq, r11l.discard, 0, 1
1278: 0e2d03c02c000000     iadd             r11, 3, r6.discard
1280: 4569620e41c01200     device_store     0, i32, x, r13, u33_u34, r11, unsigned, 0
1288: d20e00000000         pop_exec         r0l.cache, 1
128e: 1e2db0a12f5c0200     imadd            r11, u24, r29.discard, r14
1296: 929a40621a7400300004 icmpsel          ult, r6h.cache, r32, u19, r26l, 0
12a0: 5289cd000000         if_icmp          r0l, nseq, r6h.discard, 0, 1
12a6: 4551620e41c01200     device_store     0, i32, x, r10, u33_u34, r11, unsigned, 0
12ae: d20e00000000         pop_exec         r0l.cache, 1
12b4: 928246621a7400300004 icmpsel          ult, r0h.cache, r35, u19, r26l, 0
12be: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
12c4: 0e19016025000000     iadd             r6, 1, r11
12cc: 4549c20e40c01200     device_store     0, i32, x, r9, u33_u34, r6, unsigned, 0
12d4: d20e00000000         pop_exec         r0l.cache, 1
12da: 928242621a7400300004 icmpsel          ult, r0h.cache, r33, u19, r26l, 0
12e4: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
12ea: 0e19026025000000     iadd             r6, 2, r11
12f2: 4541c20e40c01200     device_store     0, i32, x, r8, u33_u34, r6, unsigned, 0
12fa: d20e00000000         pop_exec         r0l.cache, 1
1300: 92027e621af40030     icmpsel          ult, r0h.cache, r31, u19, r26l.discard, 0
1308: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
130e: 0e1903602d000000     iadd             r6, 3, r11.discard
1316: 4529c20e40c01200     device_store     0, i32, x, r5, u33_u34, r6, unsigned, 0
131e: d20e00000000         pop_exec         r0l.cache, 1
1324: 1e15b0e12edc0200     imadd            r5, u24, r23.discard, r14.discard
132c: 929ac0621a6400300004 icmpsel          ult, r6h.cache, r32.discard, u19, r18l, 0
1336: 5289cd000000         if_icmp          r0l, nseq, r6h.discard, 0, 1
133c: 4539a20e40c01200     device_store     0, i32, x, r7, u33_u34, r5, unsigned, 0
1344: d20e00000000         pop_exec         r0l.cache, 1
134a: 9282c6621a6400300004 icmpsel          ult, r0h.cache, r35.discard, u19, r18l, 0
1354: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
135a: 0e1901a024000000     iadd             r6, 1, r5
1362: 4519c20e40c01200     device_store     0, i32, x, r3, u33_u34, r6, unsigned, 0
136a: d20e00000000         pop_exec         r0l.cache, 1
1370: 9282c2621a6400300004 icmpsel          ult, r0h.cache, r33.discard, u19, r18l, 0
137a: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1380: 0e0d02a024000000     iadd             r3, 2, r5
1388: 4511620e40c01200     device_store     0, i32, x, r2, u33_u34, r3, unsigned, 0
1390: d20e00000000         pop_exec         r0l.cache, 1
1396: 9202fe621ae40030     icmpsel          ult, r0h.cache, r31.discard, u19, r18l.discard, 0
139e: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
13a4: 0e0903a02c000000     iadd             r2, 3, r5.discard
13ac: 4509420e40c01200     device_store     0, i32, x, r1, u33_u34, r2, unsigned, 0
13b4: 520e00000000         pop_exec         r0l, 1
13ba: 8800                 stop             
