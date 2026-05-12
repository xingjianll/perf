   0: 0521040d00c8f200     device_load      0, i32, xyzw, r4_r5_r6_r7, u2_u3, 0, signed, lsl 2
   8: 0501940d00c0f200     device_load      0, i32, xyzw, r0_r1_r2_r3, u2_u3, 9, signed
  10: 0541940d01c01200     device_load      0, i32, x, r8, u2_u3, 25, signed
  18: 3800                 wait             0
  1a: becd0a242800         convert          u32_to_f, r19.cache, r1.cache, rte
  20: bebd0a642800         convert          u32_to_f, r15.cache, r3.cache, rte
  26: 0a496682             rcp              r18, r19
  2a: beb50aa42800         convert          u32_to_f, r13.cache, r5.cache, rte
  30: 0a395e82             rcp              r14, r15
  34: 0e71861a00000000     isub             r28, r3.cache, 1
  3c: be25460a0000         popcount         r9.cache, r3
  42: 0a315a82             rcp              r12, r13
  46: 0e69841a00000000     isub             r26, r2.cache, 1
  4e: bec50a442800         convert          u32_to_f, r17.cache, r2.cache, rte
  54: e258003c             mov_imm          r22l.cache, 15360
  58: 9e7dcca224000000     imadd            r31.cache, r6.discard, r5, 0
  60: 126cd2220000c12a     icmpsel          ult, r27l, r9.discard, 2, 0, r22l.cache
  68: 0a416282             rcp              r16, r17
  6c: be19440a0000         popcount         r6.cache, r2
  72: bead0ae42b00         convert          u32_to_f, r11.cache, r31.cache, rte
  78: 126ecc220000c12a     icmpsel          ult, r27h, r6.discard, 2, 0, r22l.cache
  80: 0e65821a00000000     isub             r25, r1.cache, 1
  88: 0a295682             rcp              r10, r11
  8c: be19420a0000         popcount         r6.cache, r1
  92: bed50a042800         convert          u32_to_f, r21.cache, r0.cache, rte
  98: 1260cc220000c12a     icmpsel          ult, r24l, r6.discard, 2, 0, r22l.cache
  a0: 9e797ee22c000000     imadd            r30.cache, r31, r7.discard, 0
  a8: be19800a0000         popcount         r6.cache, r0.cache
  ae: 0a516a82             rcp              r20, r21
  b2: 1262cc220000c12e     icmpsel          ult, r24h, r6.discard, 2, 0, r22l.discard
  ba: be9d0ac42700         convert          u32_to_f, r7.cache, r30, rte
  c0: 0e5d401a00000000     isub             r23, r0, 1
  c8: 2ef5000029080800     bfeil            r29, 0, r8.cache, 8, mask 0xFF
  d0: 7e5950f28303         and              r22, r8, 255
  d6: 0a194e82             rcp              r6, r7
  da: 62240000             mov_imm          r9l, 0
  de: c520803d00803000     uniform_store    2, i16, xy, 0, r4l_r4h, 8
  e6: c528a03d00803000     uniform_store    2, i16, xy, 0, r5l_r5h, 10
  ee: c5f8c03d00803000     uniform_store    2, i16, xy, 0, r31l_r31h, 12
  f6: c5f0e03d00803000     uniform_store    2, i16, xy, 0, r30l_r30h, 14
  fe: c544003d01803000     uniform_store    2, i16, xy, 0, r8h_r9l, 16
 106: c5e8203d01803000     uniform_store    2, i16, xy, 0, r29l_r29h, 18
 10e: c500403d01803000     uniform_store    2, i16, xy, 0, r0l_r0h, 20
 116: c508603d01803000     uniform_store    2, i16, xy, 0, r1l_r1h, 22
 11e: c510803d01803000     uniform_store    2, i16, xy, 0, r2l_r2h, 24
 126: c518a03d01803000     uniform_store    2, i16, xy, 0, r3l_r3h, 26
 12e: c5e0c03d01803000     uniform_store    2, i16, xy, 0, r28l_r28h, 28
 136: c5d8203d04803000     uniform_store    2, i16, xy, 0, r27l_r27h, 66
 13e: c5d0e03d01803000     uniform_store    2, i16, xy, 0, r26l_r26h, 30
 146: c5c8003d02803000     uniform_store    2, i16, xy, 0, r25l_r25h, 32
 14e: c5c0403d04803000     uniform_store    2, i16, xy, 0, r24l_r24h, 68
 156: c5b8203d02803000     uniform_store    2, i16, xy, 0, r23l_r23h, 34
 15e: c5b0403d02803000     uniform_store    2, i16, xy, 0, r22l_r22h, 36
 166: c5a8603d02803000     uniform_store    2, i16, xy, 0, r21l_r21h, 38
 16e: c5a0803d02803000     uniform_store    2, i16, xy, 0, r20l_r20h, 40
 176: c598a03d02803000     uniform_store    2, i16, xy, 0, r19l_r19h, 42
 17e: c590c03d02803000     uniform_store    2, i16, xy, 0, r18l_r18h, 44
 186: c588e03d02803000     uniform_store    2, i16, xy, 0, r17l_r17h, 46
 18e: c580003d03803000     uniform_store    2, i16, xy, 0, r16l_r16h, 48
 196: c578203d03803000     uniform_store    2, i16, xy, 0, r15l_r15h, 50
 19e: c570403d03803000     uniform_store    2, i16, xy, 0, r14l_r14h, 52
 1a6: c568603d03803000     uniform_store    2, i16, xy, 0, r13l_r13h, 54
 1ae: c560803d03803000     uniform_store    2, i16, xy, 0, r12l_r12h, 56
 1b6: c558a03d03803000     uniform_store    2, i16, xy, 0, r11l_r11h, 58
 1be: c550c03d03803000     uniform_store    2, i16, xy, 0, r10l_r10h, 60
 1c6: c538e03d03803000     uniform_store    2, i16, xy, 0, r7l_r7h, 62
 1ce: c530003d04803000     uniform_store    2, i16, xy, 0, r6l_r6h, 64
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

 240: f2091004             get_sr           r2.cache, sr80 (thread_position_in_grid.x)
 244: f2051104             get_sr           r1.cache, sr81 (thread_position_in_grid.y)
 248: 9e05c2d212c40201     imadd            r1.cache, r1.discard, u54h, r2.discard
 250: f2091204             get_sr           r2.cache, sr82 (thread_position_in_grid.z)
 254: 9e05c4e21ac20201     imadd            r1.cache, r2.discard, u55, r1.discard
 25c: e2000000             mov_imm          r0l.cache, 0
 260: 522842821800         if_icmp          r0l, ult, r1, u4, 1
 266: 20c064060000         jmp_exec_none    0x8CA
 26c: be8d0a242800         convert          u32_to_f, r3.cache, r1.cache, rte
 272: be8908602800         convert          f_to_u32, r2.cache, r3.cache, rtz
 278: 8e09824a2c000000     isub             r2.cache, r1.cache, r2.discard
 280: 8e15841a00000000     isub             r5.cache, r2.cache, 1
 288: 828986a21aca400c0001 fcmpsel          eq, r2.cache, r3.cache, u53, r5.discard, r2.discard
 292: 9a9580612804         fmul32           r5.cache, u32, r3.cache
 298: be990b442c00         convert          s32_to_f, r6.cache, r2.discard, rte
 29e: be8908a02800         convert          f_to_u32, r2.cache, r5.cache, rtz
 2a4: ba8dbea928c60200     fmadd32          r3.cache, u31.neg, r5.cache, r3.discard
 2ac: 9a9d80c12c04         fmul32           r7.cache, u32, r6.discard
 2b2: be990a442800         convert          u32_to_f, r6.cache, r2.cache, rte
 2b8: ba8d80612cce0204     fmadd32          r3.cache, u32, r3.discard, r7.discard
 2c0: aa95cac2ac00         fadd32           r5.cache, r5.discard, r6.discard.neg
 2c6: aa8dc6c21201         fadd32           r3.cache, r3.discard, u54l
 2cc: aa8dc6a22c00         fadd32           r3.cache, r3.discard, r5.discard
 2d2: be8d09602c00         convert          f_to_s32, r3.cache, r3.discard, rtz
 2d8: 8e0bc4626c000000     iadd             r2_r3.cache, r2.discard, r3.discard.sx
 2e0: fe158e098000         mov              r5.cache, u7
 2e6: 9e1f84a22c000000     imadd            r7_r8.cache, r2.cache, r5.discard, 0
 2ee: 9e0dc6e218d00200     imadd            r3.cache, r3.discard, u7, r8.discard
 2f6: 921082e22c010130     icmpsel          ult, r4l.cache, r1.cache, r7.discard, 1, 0
 2fe: 9202006028010130     icmpsel          ult, r0h.cache, 0, r3.cache, 1, 0
 306: 920200602cc8108c     icmpsel          seq, r0h.cache, 0, r3.discard, r4l.discard, r0h.discard
 30e: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 316: 8e09c41a0c000000     isub             r2.cache, r2.discard, r0h.discard
 31e: 920982e21800412c     icmpsel          ult, r2.cache, r1.cache, u7, 0, r2.discard
 326: 923582e21800412c     icmpsel          ult, r13.cache, r1.cache, u7, 0, r2.discard
 32e: 9e299ae218000000     imadd            r10.cache, r13.cache, u7, 0
 336: 8e1d424a25000000     isub             r7.cache, r1, r10
 33e: be8d0ae42800         convert          u32_to_f, r3.cache, r7.cache, rte
 344: be8908602800         convert          f_to_u32, r2.cache, r3.cache, rtz
 34a: 8e098e4a2c000000     isub             r2.cache, r7.cache, r2.discard
 352: 8e15841a00000000     isub             r5.cache, r2.cache, 1
 35a: 828986a21aca400c0001 fcmpsel          eq, r2.cache, r3.cache, u53, r5.discard, r2.discard
 364: 9a95bc612800         fmul32           r5.cache, u30, r3.cache
 36a: be990b442c00         convert          s32_to_f, r6.cache, r2.discard, rte
 370: be8908a02800         convert          f_to_u32, r2.cache, r5.cache, rtz
 376: ba8dbaa928c60200     fmadd32          r3.cache, u29.neg, r5.cache, r3.discard
 37e: 9aa1bcc12c00         fmul32           r8.cache, u30, r6.discard
 384: be990a442800         convert          u32_to_f, r6.cache, r2.cache, rte
 38a: ba8dbc612cd00200     fmadd32          r3.cache, u30, r3.discard, r8.discard
 392: aa95cac2ac00         fadd32           r5.cache, r5.discard, r6.discard.neg
 398: aa8dc6c21201         fadd32           r3.cache, r3.discard, u54l
 39e: aa8dc6a22c00         fadd32           r3.cache, r3.discard, r5.discard
 3a4: be8d09602c00         convert          f_to_s32, r3.cache, r3.discard, rtz
 3aa: 8e0bc4626c000000     iadd             r2_r3.cache, r2.discard, r3.discard.sx
 3b2: fe158c098000         mov              r5.cache, u6
 3b8: bea50aa42900         convert          u32_to_f, r9.cache, r13.cache, rte
 3be: 9e1784a22c000000     imadd            r5_r6.cache, r2.cache, r5.discard, 0
 3c6: 7e4598098000         mov              r17, u12
 3cc: 9aa1b4212900         fmul32           r8.cache, u26, r9.cache
 3d2: 9e19c6c218cc0200     imadd            r6.cache, r3.discard, u6, r6.discard
 3da: 92108ea22c010130     icmpsel          ult, r4l.cache, r7.cache, r5.discard, 1, 0
 3e2: be8d08202900         convert          f_to_u32, r3.cache, r9.cache, rtz
 3e8: 920200c028010130     icmpsel          ult, r0h.cache, 0, r6.cache, 1, 0
 3f0: 920200c02cc8108c     icmpsel          seq, r0h.cache, 0, r6.discard, r4l.discard, r0h.discard
 3f8: 8e0d5a6a2c000000     isub             r3.cache, r13, r3.discard
 400: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 408: 8e19861a00000000     isub             r6.cache, r3.cache, 1
 410: 8e09c41a0c000000     isub             r2.cache, r2.discard, r0h.discard
 418: 92098ec21800412c     icmpsel          ult, r2.cache, r7.cache, u6, 0, r2.discard
 420: 9231cec21800412c     icmpsel          ult, r12.cache, r7.discard, u6, 0, r2.discard
 428: be9d08002900         convert          f_to_u32, r7.cache, r8.cache, rtz
 42e: 828d92a21acc600c0001 fcmpsel          eq, r3.cache, r9.cache, u53, r6.discard, r3.discard
 438: 9e3998c218d40200     imadd            r14.cache, r12.cache, u6, r10.discard
 440: ba89b20929d20200     fmadd32          r2.cache, u25.neg, r8.cache, r9.discard
 448: be8d0b642c00         convert          s32_to_f, r3.cache, r3.discard, rte
 44e: 8e3d42ca25000000     isub             r15.cache, r1, r14
 456: be950ae42800         convert          u32_to_f, r5.cache, r7.cache, rte
 45c: 9a8db4612c00         fmul32           r3.cache, u26, r3.discard
 462: be990ae42900         convert          u32_to_f, r6.cache, r15.cache, rte
 468: aaa1d0a2ac00         fadd32           r8.cache, r8.discard, r5.discard.neg
 46e: ba8db4412cc60200     fmadd32          r3.cache, u26, r2.discard, r3.discard
 476: be8908c02800         convert          f_to_u32, r2.cache, r6.cache, rtz
 47c: aa95c6c21201         fadd32           r5.cache, r3.discard, u54l
 482: be8d0a842900         convert          u32_to_f, r3.cache, r12.cache, rte
 488: aaa1ca022d00         fadd32           r8.cache, r5.discard, r8.discard
 48e: 8e095e4a2c000000     isub             r2.cache, r15, r2.discard
 496: 9ac1b0612800         fmul32           r16.cache, u24, r3.cache
 49c: 8e15841a00000000     isub             r5.cache, r2.cache, 1
 4a4: 82958ca21aca400c0001 fcmpsel          eq, r5.cache, r6.cache, u53, r5.discard, r2.discard
 4ae: be8908602400         convert          f_to_u32, r2.cache, r3, rtz
 4b4: 9aa5b8c12800         fmul32           r9.cache, u28, r6.cache
 4ba: bea90ba42c00         convert          s32_to_f, r10.cache, r5.discard, rte
 4c0: 8e09584a2c000000     isub             r2.cache, r12, r2.discard
 4c8: be9508202900         convert          f_to_u32, r5.cache, r9.cache, rtz
 4ce: ba99b62929cc0200     fmadd32          r6.cache, u27.neg, r9.cache, r6.discard
 4d6: 9aadb8412d00         fmul32           r11.cache, u28, r10.discard
 4dc: bea90aa42400         convert          u32_to_f, r10.cache, r5, rte
 4e2: ba99b8c12cd60200     fmadd32          r6.cache, u28, r6.discard, r11.discard
 4ea: bea109002d00         convert          f_to_s32, r8.cache, r8.discard, rtz
 4f0: aaa5d242ad00         fadd32           r9.cache, r9.discard, r10.discard.neg
 4f6: aa99ccc21201         fadd32           r6.cache, r6.discard, u54l
 4fc: 8e1fce026d000000     iadd             r7_r8.cache, r7.discard, r8.discard.sx
 504: 8e29841a00000000     isub             r10.cache, r2.cache, 1
 50c: aa99cc222d00         fadd32           r6.cache, r6.discard, r9.discard
 512: bea508002a00         convert          f_to_u32, r9.cache, r16.cache, rtz
 518: 828986a21ad4400c0001 fcmpsel          eq, r2.cache, r3.cache, u53, r10.discard, r2.discard
 522: be9909c02c00         convert          f_to_s32, r6.cache, r6.discard, rtz
 528: 7e298a098000         mov              r10, u5
 52e: bead0b442c00         convert          s32_to_f, r11.cache, r2.discard, rte
 534: fe099a098000         mov              r2.cache, u13
 53a: 8e17cac26c000000     iadd             r5_r6.cache, r5.discard, r6.discard.sx
 542: ba8dae092ac60200     fmadd32          r3.cache, u23.neg, r16.cache, r3.discard
 54a: 9aadb0612d00         fmul32           r11.cache, u24, r11.discard
 550: bec90a242500         convert          u32_to_f, r18.cache, r9, rte
 556: baadb0612cd60200     fmadd32          r11.cache, u24, r3.discard, r11.discard
 55e: 9e0b4e422c000000     imadd            r2_r3.cache, r7, r2.discard, 0
 566: aac9e042ae00         fadd32           r18.cache, r16.discard, r18.discard.neg
 56c: aac1d6c21201         fadd32           r16.cache, r11.discard, u54l
 572: 9e2b8a422d000000     imadd            r10_r11.cache, r5.cache, r10.discard, 0
 57a: aac1e0422e00         fadd32           r16.cache, r16.discard, r18.discard
 580: 7e4996098000         mov              r18, u11
 586: bec109002e00         convert          f_to_s32, r16.cache, r16.discard, rtz
 58c: 924c5a422c010130     icmpsel          ult, r19l.cache, r13, r2.discard, 1, 0
 594: 9e09cca218d60200     imadd            r2.cache, r6.discard, u5, r11.discard
 59c: 92109e422d010130     icmpsel          ult, r4l.cache, r15.cache, r10.discard, 1, 0
 5a4: 9e19d0a219c60200     imadd            r6.cache, r8.discard, u13, r3.discard
 5ac: 9202004028010130     icmpsel          ult, r0h.cache, 0, r2.cache, 1, 0
 5b4: 8e23d2026e000000     iadd             r8_r9.cache, r9.discard, r16.discard.sx
 5bc: 920800402cc8108c     icmpsel          seq, r2l.cache, 0, r2.discard, r4l.discard, r0h.discard
 5c4: 920200c028010130     icmpsel          ult, r0h.cache, 0, r6.cache, 1, 0
 5cc: 9210c40000001190     icmpsel          seq, r4l.cache, r2l.discard, 0, 0, 1
 5d4: 9e0b50222e000000     imadd            r2_r3.cache, r8, r17.discard, 0
 5dc: 120200c02ce6108c     icmpsel          seq, r0h, 0, r6.discard, r19l.discard, r0h.discard
 5e4: 8e15ca8a0c000000     isub             r5.cache, r5.discard, r4l.discard
 5ec: 922ddea21800a12c     icmpsel          ult, r11.cache, r15.discard, u5, 0, r5.discard
 5f4: 9e15d28219c60200     imadd            r5.cache, r9.discard, u12, r3.discard
 5fc: 921858422c010130     icmpsel          ult, r6l.cache, r12, r2.discard, 1, 0
 604: 9e0996a218dc0200     imadd            r2.cache, r11.cache, u5, r14.discard
 60c: 921000a028010130     icmpsel          ult, r4l.cache, 0, r5.cache, 1, 0
 614: be8d0a642900         convert          u32_to_f, r3.cache, r11.cache, rte
 61a: 121000a02ccc808c     icmpsel          seq, r4l, 0, r5.discard, r6l.discard, r4l.discard
 622: 8e25424a2c000000     isub             r9.cache, r1, r2.discard
 62a: 9ab9ac612800         fmul32           r14.cache, u22, r3.cache
 630: be8908602800         convert          f_to_u32, r2.cache, r3.cache, rtz
 636: ba99aac929860200     fmadd32          r6.cache, u21.neg, r14.cache, r3.cache
 63e: be9508c02900         convert          f_to_u32, r5.cache, r14.cache, rtz
 644: 8e29564a2c000000     isub             r10.cache, r11, r2.discard
 64c: be890a242900         convert          u32_to_f, r2.cache, r9.cache, rte
 652: 8e3d941a00000000     isub             r15.cache, r10.cache, 1
 65a: bec10aa42400         convert          u32_to_f, r16.cache, r5, rte
 660: 82bdc6a21ade400d0001 fcmpsel          eq, r15.cache, r3.discard, u53, r15.discard, r10.discard
 66a: bea908402800         convert          f_to_u32, r10.cache, r2.cache, rtz
 670: 9a8da8412800         fmul32           r3.cache, u20, r2.cache
 676: bebd0be42d00         convert          s32_to_f, r15.cache, r15.discard, rte
 67c: aab9dc02ae00         fadd32           r14.cache, r14.discard, r16.discard.neg
 682: 8e29924a2d000000     isub             r10.cache, r9.cache, r10.discard
 68a: 9ac1ace12d00         fmul32           r16.cache, u22, r15.discard
 690: 8e3d941a00000000     isub             r15.cache, r10.cache, 1
 698: ba99acc12ce00200     fmadd32          r6.cache, u22, r6.discard, r16.discard
 6a0: 82a984a21ade400d0001 fcmpsel          eq, r10.cache, r2.cache, u53, r15.discard, r10.discard
 6aa: aa99ccc21201         fadd32           r6.cache, r6.discard, u54l
 6b0: bebd08602800         convert          f_to_u32, r15.cache, r3.cache, rtz
 6b6: aa99ccc22d00         fadd32           r6.cache, r6.discard, r14.discard
 6bc: beb90b442d00         convert          s32_to_f, r14.cache, r10.discard, rte
 6c2: 9244c80000001190     icmpsel          seq, r17l.cache, r4l.discard, 0, 0, 1
 6ca: be9909c02c00         convert          f_to_s32, r6.cache, r6.discard, rtz
 6d0: ba89a66928c40200     fmadd32          r2.cache, u19.neg, r3.cache, r2.discard
 6d8: bea90ae42900         convert          u32_to_f, r10.cache, r15.cache, rte
 6de: 9ab9a8c12d00         fmul32           r14.cache, u20, r14.discard
 6e4: 8e17cac26c000000     iadd             r5_r6.cache, r5.discard, r6.discard.sx
 6ec: ba89a8412cdc0200     fmadd32          r2.cache, u20, r2.discard, r14.discard
 6f4: aac1c642ad00         fadd32           r16.cache, r3.discard, r10.discard.neg
 6fa: aab9c4c21201         fadd32           r14.cache, r2.discard, u54l
 700: 9e0b8a422e000000     imadd            r2_r3.cache, r5.cache, r18.discard, 0
 708: 8e29d02a0e000000     isub             r10.cache, r8.discard, r17l.discard
 710: aaa1dc022e00         fadd32           r8.cache, r14.discard, r16.discard
 716: 9e39d48219000000     imadd            r14.cache, r10.discard, u12, 0
 71e: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 726: bea109002d00         convert          f_to_s32, r8.cache, r8.discard, rtz
 72c: 8e29ce1a0c000000     isub             r10.cache, r7.discard, r0h.discard
 734: 9e1dcc6219c60200     imadd            r7.cache, r6.discard, u11, r3.discard
 73c: 921056422c010130     icmpsel          ult, r4l.cache, r11, r2.discard, 1, 0
 744: 8e0bde026d000000     iadd             r2_r3.cache, r15.discard, r8.discard.sx
 74c: 920200e028010130     icmpsel          ult, r0h.cache, 0, r7.cache, 1, 0
 754: fe1994098000         mov              r6.cache, u10
 75a: 120200e02cc8108c     icmpsel          seq, r0h, 0, r7.discard, r4l.discard, r0h.discard
 762: 9e1f44c22c000000     imadd            r7_r8.cache, r2, r6.discard, 0
 76a: 8e3998ca2d000000     isub             r14.cache, r12.cache, r14.discard
 772: fe1998e29900         and              r6.cache, r12.cache, u15
 778: 923998821998c02d     icmpsel          ult, r14.cache, r12.cache, u12, r12.cache, r14.discard
 780: 8299030100ccc00d0004 fcmpsel          eq, r6.cache, u33h, 0.0, r6.discard, r14.discard
 78a: 9e29d4a219000000     imadd            r10.cache, r10.discard, u13, 0
 792: 921092e22c010130     icmpsel          ult, r4l.cache, r9.cache, r7.discard, 1, 0
 79a: 9e1dc64219d00200     imadd            r7.cache, r3.discard, u10, r8.discard
 7a2: 8e219a4a2d000000     isub             r8.cache, r13.cache, r10.discard
 7aa: fe0d9ac29900         and              r3.cache, r13.cache, u14
 7b0: 92219aa2199a002d     icmpsel          ult, r8.cache, r13.cache, u13, r13.cache, r8.discard
 7b8: 828d020100c6000d0004 fcmpsel          eq, r3.cache, u33l, 0.0, r3.discard, r8.discard
 7c2: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 7ca: 9e0dc64219920101     imadd            r3.cache, r3.discard, u42, u9
 7d2: 8e15ca1a0c000000     isub             r5.cache, r5.discard, r0h.discard
 7da: 920200e028010130     icmpsel          ult, r0h.cache, 0, r7.cache, 1, 0
 7e2: 9e15ca6219000000     imadd            r5.cache, r5.discard, u11, 0
 7ea: 920200e02cc8108c     icmpsel          seq, r0h.cache, 0, r7.discard, r4l.discard, r0h.discard
 7f2: 9e0dcc2219c60201     imadd            r3.cache, r6.discard, u41, r3.discard
 7fa: 8e1996aa2c000000     isub             r6.cache, r11.cache, r5.discard
 802: fe1596029a00         and              r5.cache, r11.cache, u16
 808: 921996621996c02c     icmpsel          ult, r6.cache, r11.cache, u11, r11.cache, r6.discard
 810: 8295040100cac00c0004 fcmpsel          eq, r5.cache, u34l, 0.0, r5.discard, r6.discard
 81a: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 822: 9e0dca0219c60201     imadd            r3.cache, r5.discard, u40, r3.discard
 82a: 8e15c41a0c000000     isub             r5.cache, r2.discard, r0h.discard
 832: 9e095ac218900101     imadd            r2.cache, r13, u38, u8
 83a: 9e15ca4219000000     imadd            r5.cache, r5.discard, u10, 0
 842: 9e0958a218c40201     imadd            r2.cache, r12, u37, r2.discard
 84a: 8e1992aa2c000000     isub             r6.cache, r9.cache, r5.discard
 852: fe1592229a00         and              r5.cache, r9.cache, u17
 858: 921992421992c02c     icmpsel          ult, r6.cache, r9.cache, u10, r9.cache, r6.discard
 860: 8295050100cac00c0004 fcmpsel          eq, r5.cache, u34h, 0.0, r5.discard, r6.discard
 86a: 9e09568218c40201     imadd            r2.cache, r11, u36, r2.discard
 872: 1e0dcae218c60201     imadd            r3, r5.discard, u39, r3.discard
 87a: 1e09526218c40201     imadd            r2, r9, u35, r2.discard
 882: 05114e0e50c01200     device_load      0, i32, x, r2, u47_u48, r2, unsigned
 88a: 0529620e60c01200     device_load      0, i32, x, r5, u49_u50, r3, unsigned
 892: 3800                 wait             0
 894: 9e0ddac219a40101     imadd            r3.cache, r13.discard, u46, u18
 89c: 9e0dd8a219c60201     imadd            r3.cache, r12.discard, u45, r3.discard
 8a4: 9e0dd68219c60201     imadd            r3.cache, r11.discard, u44, r3.discard
 8ac: 1e0dd26219c60201     imadd            r3, r9.discard, u43, r3.discard
 8b4: 2a89ca422c00         fadd32           r2, r5.discard, r2.discard
 8ba: 4511660e60c01200     device_store     0, i32, x, r2, u51_u52, r3, unsigned, 0
 8c2: 8e05820280020000     iadd             r1.cache, r1.cache, 128, lsl 1
 8ca: d20e00000000         pop_exec         r0l.cache, 1
 8d0: 522842821800         if_icmp          r0l, ult, r1, u4, 1
 8d6: 20c05c060000         jmp_exec_none    0xF32
 8dc: be8d0a242800         convert          u32_to_f, r3.cache, r1.cache, rte
 8e2: be8908602800         convert          f_to_u32, r2.cache, r3.cache, rtz
 8e8: 8e09824a2c000000     isub             r2.cache, r1.cache, r2.discard
 8f0: 8e15841a00000000     isub             r5.cache, r2.cache, 1
 8f8: 828986a21aca400c0001 fcmpsel          eq, r2.cache, r3.cache, u53, r5.discard, r2.discard
 902: 9a9580612804         fmul32           r5.cache, u32, r3.cache
 908: be990b442c00         convert          s32_to_f, r6.cache, r2.discard, rte
 90e: be8908a02800         convert          f_to_u32, r2.cache, r5.cache, rtz
 914: ba8dbea928c60200     fmadd32          r3.cache, u31.neg, r5.cache, r3.discard
 91c: 9a9d80c12c04         fmul32           r7.cache, u32, r6.discard
 922: be990a442800         convert          u32_to_f, r6.cache, r2.cache, rte
 928: ba8d80612cce0204     fmadd32          r3.cache, u32, r3.discard, r7.discard
 930: aa95cac2ac00         fadd32           r5.cache, r5.discard, r6.discard.neg
 936: aa8dc6c21201         fadd32           r3.cache, r3.discard, u54l
 93c: aa8dc6a22c00         fadd32           r3.cache, r3.discard, r5.discard
 942: be8d09602c00         convert          f_to_s32, r3.cache, r3.discard, rtz
 948: 8e0bc4626c000000     iadd             r2_r3.cache, r2.discard, r3.discard.sx
 950: fe158e098000         mov              r5.cache, u7
 956: 9e1f84a22c000000     imadd            r7_r8.cache, r2.cache, r5.discard, 0
 95e: 9e0dc6e218d00200     imadd            r3.cache, r3.discard, u7, r8.discard
 966: 921082e22c010130     icmpsel          ult, r4l.cache, r1.cache, r7.discard, 1, 0
 96e: 9202006028010130     icmpsel          ult, r0h.cache, 0, r3.cache, 1, 0
 976: 920200602cc8108c     icmpsel          seq, r0h.cache, 0, r3.discard, r4l.discard, r0h.discard
 97e: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 986: 8e09c41a0c000000     isub             r2.cache, r2.discard, r0h.discard
 98e: 920982e21800412c     icmpsel          ult, r2.cache, r1.cache, u7, 0, r2.discard
 996: 923582e21800412c     icmpsel          ult, r13.cache, r1.cache, u7, 0, r2.discard
 99e: 9e299ae218000000     imadd            r10.cache, r13.cache, u7, 0
 9a6: 8e1d424a25000000     isub             r7.cache, r1, r10
 9ae: be8d0ae42800         convert          u32_to_f, r3.cache, r7.cache, rte
 9b4: be8908602800         convert          f_to_u32, r2.cache, r3.cache, rtz
 9ba: 8e098e4a2c000000     isub             r2.cache, r7.cache, r2.discard
 9c2: 8e15841a00000000     isub             r5.cache, r2.cache, 1
 9ca: 828986a21aca400c0001 fcmpsel          eq, r2.cache, r3.cache, u53, r5.discard, r2.discard
 9d4: 9a95bc612800         fmul32           r5.cache, u30, r3.cache
 9da: be990b442c00         convert          s32_to_f, r6.cache, r2.discard, rte
 9e0: be8908a02800         convert          f_to_u32, r2.cache, r5.cache, rtz
 9e6: ba8dbaa928c60200     fmadd32          r3.cache, u29.neg, r5.cache, r3.discard
 9ee: 9aa1bcc12c00         fmul32           r8.cache, u30, r6.discard
 9f4: be990a442800         convert          u32_to_f, r6.cache, r2.cache, rte
 9fa: ba8dbc612cd00200     fmadd32          r3.cache, u30, r3.discard, r8.discard
 a02: aa95cac2ac00         fadd32           r5.cache, r5.discard, r6.discard.neg
 a08: aa8dc6c21201         fadd32           r3.cache, r3.discard, u54l
 a0e: aa8dc6a22c00         fadd32           r3.cache, r3.discard, r5.discard
 a14: be8d09602c00         convert          f_to_s32, r3.cache, r3.discard, rtz
 a1a: 8e0bc4626c000000     iadd             r2_r3.cache, r2.discard, r3.discard.sx
 a22: fe158c098000         mov              r5.cache, u6
 a28: bea50aa42900         convert          u32_to_f, r9.cache, r13.cache, rte
 a2e: 9e1784a22c000000     imadd            r5_r6.cache, r2.cache, r5.discard, 0
 a36: 7e4598098000         mov              r17, u12
 a3c: 9aa1b4212900         fmul32           r8.cache, u26, r9.cache
 a42: 9e19c6c218cc0200     imadd            r6.cache, r3.discard, u6, r6.discard
 a4a: 92108ea22c010130     icmpsel          ult, r4l.cache, r7.cache, r5.discard, 1, 0
 a52: be8d08202900         convert          f_to_u32, r3.cache, r9.cache, rtz
 a58: 920200c028010130     icmpsel          ult, r0h.cache, 0, r6.cache, 1, 0
 a60: 920200c02cc8108c     icmpsel          seq, r0h.cache, 0, r6.discard, r4l.discard, r0h.discard
 a68: 8e0d5a6a2c000000     isub             r3.cache, r13, r3.discard
 a70: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 a78: 8e19861a00000000     isub             r6.cache, r3.cache, 1
 a80: 8e09c41a0c000000     isub             r2.cache, r2.discard, r0h.discard
 a88: 92098ec21800412c     icmpsel          ult, r2.cache, r7.cache, u6, 0, r2.discard
 a90: 9231cec21800412c     icmpsel          ult, r12.cache, r7.discard, u6, 0, r2.discard
 a98: be9d08002900         convert          f_to_u32, r7.cache, r8.cache, rtz
 a9e: 828d92a21acc600c0001 fcmpsel          eq, r3.cache, r9.cache, u53, r6.discard, r3.discard
 aa8: 9e3998c218d40200     imadd            r14.cache, r12.cache, u6, r10.discard
 ab0: ba89b20929d20200     fmadd32          r2.cache, u25.neg, r8.cache, r9.discard
 ab8: be8d0b642c00         convert          s32_to_f, r3.cache, r3.discard, rte
 abe: 8e3d42ca25000000     isub             r15.cache, r1, r14
 ac6: be950ae42800         convert          u32_to_f, r5.cache, r7.cache, rte
 acc: 9a8db4612c00         fmul32           r3.cache, u26, r3.discard
 ad2: be990ae42900         convert          u32_to_f, r6.cache, r15.cache, rte
 ad8: aaa1d0a2ac00         fadd32           r8.cache, r8.discard, r5.discard.neg
 ade: ba8db4412cc60200     fmadd32          r3.cache, u26, r2.discard, r3.discard
 ae6: be8908c02800         convert          f_to_u32, r2.cache, r6.cache, rtz
 aec: aa95c6c21201         fadd32           r5.cache, r3.discard, u54l
 af2: be8d0a842900         convert          u32_to_f, r3.cache, r12.cache, rte
 af8: aaa1ca022d00         fadd32           r8.cache, r5.discard, r8.discard
 afe: 8e095e4a2c000000     isub             r2.cache, r15, r2.discard
 b06: 9ac1b0612800         fmul32           r16.cache, u24, r3.cache
 b0c: 8e15841a00000000     isub             r5.cache, r2.cache, 1
 b14: 82958ca21aca400c0001 fcmpsel          eq, r5.cache, r6.cache, u53, r5.discard, r2.discard
 b1e: be8908602400         convert          f_to_u32, r2.cache, r3, rtz
 b24: 9aa5b8c12800         fmul32           r9.cache, u28, r6.cache
 b2a: bea90ba42c00         convert          s32_to_f, r10.cache, r5.discard, rte
 b30: 8e09584a2c000000     isub             r2.cache, r12, r2.discard
 b38: be9508202900         convert          f_to_u32, r5.cache, r9.cache, rtz
 b3e: ba99b62929cc0200     fmadd32          r6.cache, u27.neg, r9.cache, r6.discard
 b46: 9aadb8412d00         fmul32           r11.cache, u28, r10.discard
 b4c: bea90aa42400         convert          u32_to_f, r10.cache, r5, rte
 b52: ba99b8c12cd60200     fmadd32          r6.cache, u28, r6.discard, r11.discard
 b5a: bea109002d00         convert          f_to_s32, r8.cache, r8.discard, rtz
 b60: aaa5d242ad00         fadd32           r9.cache, r9.discard, r10.discard.neg
 b66: aa99ccc21201         fadd32           r6.cache, r6.discard, u54l
 b6c: 8e1fce026d000000     iadd             r7_r8.cache, r7.discard, r8.discard.sx
 b74: 8e29841a00000000     isub             r10.cache, r2.cache, 1
 b7c: aa99cc222d00         fadd32           r6.cache, r6.discard, r9.discard
 b82: bea508002a00         convert          f_to_u32, r9.cache, r16.cache, rtz
 b88: 828986a21ad4400c0001 fcmpsel          eq, r2.cache, r3.cache, u53, r10.discard, r2.discard
 b92: be9909c02c00         convert          f_to_s32, r6.cache, r6.discard, rtz
 b98: 7e298a098000         mov              r10, u5
 b9e: bead0b442c00         convert          s32_to_f, r11.cache, r2.discard, rte
 ba4: fe099a098000         mov              r2.cache, u13
 baa: 8e17cac26c000000     iadd             r5_r6.cache, r5.discard, r6.discard.sx
 bb2: ba8dae092ac60200     fmadd32          r3.cache, u23.neg, r16.cache, r3.discard
 bba: 9aadb0612d00         fmul32           r11.cache, u24, r11.discard
 bc0: bec90a242500         convert          u32_to_f, r18.cache, r9, rte
 bc6: baadb0612cd60200     fmadd32          r11.cache, u24, r3.discard, r11.discard
 bce: 9e0b4e422c000000     imadd            r2_r3.cache, r7, r2.discard, 0
 bd6: aac9e042ae00         fadd32           r18.cache, r16.discard, r18.discard.neg
 bdc: aac1d6c21201         fadd32           r16.cache, r11.discard, u54l
 be2: 9e2b8a422d000000     imadd            r10_r11.cache, r5.cache, r10.discard, 0
 bea: aac9e0422e00         fadd32           r18.cache, r16.discard, r18.discard
 bf0: 7e4196098000         mov              r16, u11
 bf6: bec909402e00         convert          f_to_s32, r18.cache, r18.discard, rtz
 bfc: 924c5a422c010130     icmpsel          ult, r19l.cache, r13, r2.discard, 1, 0
 c04: 9e09cca218d60200     imadd            r2.cache, r6.discard, u5, r11.discard
 c0c: 92109e422d010130     icmpsel          ult, r4l.cache, r15.cache, r10.discard, 1, 0
 c14: 9e19d0a219c60200     imadd            r6.cache, r8.discard, u13, r3.discard
 c1c: 9202004028010130     icmpsel          ult, r0h.cache, 0, r2.cache, 1, 0
 c24: 8e23d2426e000000     iadd             r8_r9.cache, r9.discard, r18.discard.sx
 c2c: 920800402cc8108c     icmpsel          seq, r2l.cache, 0, r2.discard, r4l.discard, r0h.discard
 c34: 920200c028010130     icmpsel          ult, r0h.cache, 0, r6.cache, 1, 0
 c3c: 9210c40000001190     icmpsel          seq, r4l.cache, r2l.discard, 0, 0, 1
 c44: 9e0b50222e000000     imadd            r2_r3.cache, r8, r17.discard, 0
 c4c: 120200c02ce6108c     icmpsel          seq, r0h, 0, r6.discard, r19l.discard, r0h.discard
 c54: 8e15ca8a0c000000     isub             r5.cache, r5.discard, r4l.discard
 c5c: 922ddea21800a12c     icmpsel          ult, r11.cache, r15.discard, u5, 0, r5.discard
 c64: 9e15d28219c60200     imadd            r5.cache, r9.discard, u12, r3.discard
 c6c: 921858422c010130     icmpsel          ult, r6l.cache, r12, r2.discard, 1, 0
 c74: 9e0996a218dc0200     imadd            r2.cache, r11.cache, u5, r14.discard
 c7c: 921000a028010130     icmpsel          ult, r4l.cache, 0, r5.cache, 1, 0
 c84: be8d0a642900         convert          u32_to_f, r3.cache, r11.cache, rte
 c8a: 121000a02ccc808c     icmpsel          seq, r4l, 0, r5.discard, r6l.discard, r4l.discard
 c92: 8e25c24a2c000000     isub             r9.cache, r1.discard, r2.discard
 c9a: 9ab9ac612800         fmul32           r14.cache, u22, r3.cache
 ca0: be8908602800         convert          f_to_u32, r2.cache, r3.cache, rtz
 ca6: ba85aac929860200     fmadd32          r1.cache, u21.neg, r14.cache, r3.cache
 cae: be9508c02900         convert          f_to_u32, r5.cache, r14.cache, rtz
 cb4: 8e19564a2c000000     isub             r6.cache, r11, r2.discard
 cbc: be890a242900         convert          u32_to_f, r2.cache, r9.cache, rte
 cc2: 8e298c1a00000000     isub             r10.cache, r6.cache, 1
 cca: bebd0aa42400         convert          u32_to_f, r15.cache, r5, rte
 cd0: 82a9c6a21ad4c00c0001 fcmpsel          eq, r10.cache, r3.discard, u53, r10.discard, r6.discard
 cda: be9908402800         convert          f_to_u32, r6.cache, r2.cache, rtz
 ce0: 9a8da8412800         fmul32           r3.cache, u20, r2.cache
 ce6: bea90b442d00         convert          s32_to_f, r10.cache, r10.discard, rte
 cec: aab9dce2ad00         fadd32           r14.cache, r14.discard, r15.discard.neg
 cf2: 8e1992ca2c000000     isub             r6.cache, r9.cache, r6.discard
 cfa: 9abdac412d00         fmul32           r15.cache, u22, r10.discard
 d00: 8e298c1a00000000     isub             r10.cache, r6.cache, 1
 d08: ba85ac212cde0200     fmadd32          r1.cache, u22, r1.discard, r15.discard
 d10: 82a984a21ad4c00c0001 fcmpsel          eq, r10.cache, r2.cache, u53, r10.discard, r6.discard
 d1a: aa99c2c21201         fadd32           r6.cache, r1.discard, u54l
 d20: be8508602800         convert          f_to_u32, r1.cache, r3.cache, rtz
 d26: aa99ccc22d00         fadd32           r6.cache, r6.discard, r14.discard
 d2c: beb90b442d00         convert          s32_to_f, r14.cache, r10.discard, rte
 d32: 9244c80000001190     icmpsel          seq, r17l.cache, r4l.discard, 0, 0, 1
 d3a: be9909c02c00         convert          f_to_s32, r6.cache, r6.discard, rtz
 d40: ba89a66928c40200     fmadd32          r2.cache, u19.neg, r3.cache, r2.discard
 d48: bea90a242800         convert          u32_to_f, r10.cache, r1.cache, rte
 d4e: 9ab9a8c12d00         fmul32           r14.cache, u20, r14.discard
 d54: 8e17cac26c000000     iadd             r5_r6.cache, r5.discard, r6.discard.sx
 d5c: ba89a8412cdc0200     fmadd32          r2.cache, u20, r2.discard, r14.discard
 d64: aabdc642ad00         fadd32           r15.cache, r3.discard, r10.discard.neg
 d6a: aab9c4c21201         fadd32           r14.cache, r2.discard, u54l
 d70: 9e0b8a022e000000     imadd            r2_r3.cache, r5.cache, r16.discard, 0
 d78: 8e29d02a0e000000     isub             r10.cache, r8.discard, r17l.discard
 d80: aaa1dce22d00         fadd32           r8.cache, r14.discard, r15.discard
 d86: 9e39d48219000000     imadd            r14.cache, r10.discard, u12, 0
 d8e: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 d96: bea109002d00         convert          f_to_s32, r8.cache, r8.discard, rtz
 d9c: 8e29ce1a0c000000     isub             r10.cache, r7.discard, r0h.discard
 da4: 9e19cc6219c60200     imadd            r6.cache, r6.discard, u11, r3.discard
 dac: 921056422c010130     icmpsel          ult, r4l.cache, r11, r2.discard, 1, 0
 db4: 8e07c2026d000000     iadd             r1_r2.cache, r1.discard, r8.discard.sx
 dbc: 920200c028010130     icmpsel          ult, r0h.cache, 0, r6.cache, 1, 0
 dc4: fe0d94098000         mov              r3.cache, u10
 dca: 120200c02cc8108c     icmpsel          seq, r0h, 0, r6.discard, r4l.discard, r0h.discard
 dd2: 9e1b42622c000000     imadd            r6_r7.cache, r1, r3.discard, 0
 dda: 8e2198ca2d000000     isub             r8.cache, r12.cache, r14.discard
 de2: fe0d98e29900         and              r3.cache, r12.cache, u15
 de8: 922198821998002d     icmpsel          ult, r8.cache, r12.cache, u12, r12.cache, r8.discard
 df0: 82a1030100c6000d0004 fcmpsel          eq, r8.cache, u33h, 0.0, r3.discard, r8.discard
 dfa: 9e0dd4a219000000     imadd            r3.cache, r10.discard, u13, 0
 e02: 921092c22c010130     icmpsel          ult, r4l.cache, r9.cache, r6.discard, 1, 0
 e0a: 9e19c44219ce0200     imadd            r6.cache, r2.discard, u10, r7.discard
 e12: 8e0d9a6a2c000000     isub             r3.cache, r13.cache, r3.discard
 e1a: fe099ac29900         and              r2.cache, r13.cache, u14
 e20: 920d9aa2199a602c     icmpsel          ult, r3.cache, r13.cache, u13, r13.cache, r3.discard
 e28: 8289020100c4600c0004 fcmpsel          eq, r2.cache, u33l, 0.0, r2.discard, r3.discard
 e32: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 e3a: 9e09c44219920101     imadd            r2.cache, r2.discard, u42, u9
 e42: 8e0dca1a0c000000     isub             r3.cache, r5.discard, r0h.discard
 e4a: 920200c028010130     icmpsel          ult, r0h.cache, 0, r6.cache, 1, 0
 e52: 9e0dc66219000000     imadd            r3.cache, r3.discard, u11, 0
 e5a: 920200c02cc8108c     icmpsel          seq, r0h.cache, 0, r6.discard, r4l.discard, r0h.discard
 e62: 9e09d02219c40201     imadd            r2.cache, r8.discard, u41, r2.discard
 e6a: 8e15966a2c000000     isub             r5.cache, r11.cache, r3.discard
 e72: fe0d96029a00         and              r3.cache, r11.cache, u16
 e78: 921596621996a02c     icmpsel          ult, r5.cache, r11.cache, u11, r11.cache, r5.discard
 e80: 828d040100c6a00c0004 fcmpsel          eq, r3.cache, u34l, 0.0, r3.discard, r5.discard
 e8a: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 e92: 9e09c60219c40201     imadd            r2.cache, r3.discard, u40, r2.discard
 e9a: 8e0dc21a0c000000     isub             r3.cache, r1.discard, r0h.discard
 ea2: 9e055ac218900101     imadd            r1.cache, r13, u38, u8
 eaa: 9e0dc64219000000     imadd            r3.cache, r3.discard, u10, 0
 eb2: 9e0558a218c20201     imadd            r1.cache, r12, u37, r1.discard
 eba: 8e15926a2c000000     isub             r5.cache, r9.cache, r3.discard
 ec2: fe0d92229a00         and              r3.cache, r9.cache, u17
 ec8: 921592421992a02c     icmpsel          ult, r5.cache, r9.cache, u10, r9.cache, r5.discard
 ed0: 828d050100c6a00c0004 fcmpsel          eq, r3.cache, u34h, 0.0, r3.discard, r5.discard
 eda: 9e05568218c20201     imadd            r1.cache, r11, u36, r1.discard
 ee2: 1e09c6e218c40201     imadd            r2, r3.discard, u39, r2.discard
 eea: 1e05526218c20201     imadd            r1, r9, u35, r1.discard
 ef2: 05092e0e50c01200     device_load      0, i32, x, r1, u47_u48, r1, unsigned
 efa: 0519420e60c01200     device_load      0, i32, x, r3, u49_u50, r2, unsigned
 f02: 3800                 wait             0
 f04: 9e09dac219a40101     imadd            r2.cache, r13.discard, u46, u18
 f0c: 9e09d8a219c40201     imadd            r2.cache, r12.discard, u45, r2.discard
 f14: 9e09d68219c40201     imadd            r2.cache, r11.discard, u44, r2.discard
 f1c: 1e09d26219c40201     imadd            r2, r9.discard, u43, r2.discard
 f24: 2a85c6222c00         fadd32           r1, r3.discard, r1.discard
 f2a: 4509460e60c01200     device_store     0, i32, x, r1, u51_u52, r2, unsigned, 0
 f32: 520e00000000         pop_exec         r0l, 1
 f38: 8800                 stop             
