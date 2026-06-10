   0: f2050200               mov      $r1, threadgroup_in_grid_z
   4: 8e05c2c658000000       iadd     $r1, ^r1.sx, u6.sx
   c: 8e058e256c000000       iadd     $r1, u7.sx, ^r1.sx
  14: 1e0b828219000000       imul     dr2, $r1, u12
  1c: 9e09864659000000       imul     $r2, $r3.sx, u10.sx
  24: 8e09824e6c000000       isub     $r2, $r1.sx, ^r2.sx
  2c: 8e11861600000000       iadd     $r4, $r3.sx, 1
  34: 920d844219c6802c       csel     $r3, $r2, u10, ^r3, ^r4, ult
  3c: 8e1184a659000000       iadd     $r4, $r2.sx, u13.sx
  44: 9209c44219c4802c       csel     $r2, ^r2, u10, ^r2, ^r4, ult
  4c: 8e11861600000000       iadd     $r4, $r3.sx, 1
  54: 920d844219c6802c       csel     $r3, $r2, u10, ^r3, ^r4, ult
  5c: 8e1184a659000000       iadd     $r4, $r2.sx, u13.sx
  64: 9209c44219c4802c       csel     $r2, ^r2, u10, ^r2, ^r4, ult
  6c: 1e1384221a000000       imul     dr4, $r2, u17
  74: 9e118a6659000000       imul     $r4, $r5.sx, u11.sx
  7c: 8e09c48e6c000000       isub     $r2, ^r2.sx, ^r4.sx
  84: 8e118a1600000000       iadd     $r4, $r5.sx, 1
  8c: 9211846219ca802c       csel     $r4, $r2, u11, ^r5, ^r4, ult
  94: 8e1584465a000000       iadd     $r5, $r2.sx, u18.sx
  9c: 9209c46219c4a02c       csel     $r2, ^r2, u11, ^r2, ^r5, ult
  a4: 8e15881600000000       iadd     $r5, $r4.sx, 1
  ac: 9209c46219c8a02c       csel     $r2, ^r2, u11, ^r4, ^r5, ult
  b4: 1e1386e219000000       imul     dr4, $r3, u15
  bc: 9e118ac659000000       imul     $r4, $r5.sx, u14.sx
  c4: 8e0dc68e6c000000       isub     $r3, ^r3.sx, ^r4.sx
  cc: 8e118a1600000000       iadd     $r4, $r5.sx, 1
  d4: 921186c219ca802c       csel     $r4, $r3, u14, ^r5, ^r4, ult
  dc: 8e1586065a000000       iadd     $r5, $r3.sx, u16.sx
  e4: 920dc6c219c6a02c       csel     $r3, ^r3, u14, ^r3, ^r5, ult
  ec: 8e15881600000000       iadd     $r5, $r4.sx, 1
  f4: 920dc6c219c8a02c       csel     $r3, ^r3, u14, ^r4, ^r5, ult
  fc: f2110000               mov      $r4, threadgroup_in_grid_x
 100: 8e11c88658000000       iadd     $r4, ^r4.sx, u4.sx
 108: 1e1b88a21a000000       imul     dr6, $r4, u21
 110: 9e158e865a000000       imul     $r5, $r7.sx, u20.sx
 118: 8e11c8ae6c000000       isub     $r4, ^r4.sx, ^r5.sx
 120: 8e158e1600000000       iadd     $r5, $r7.sx, 1
 128: 921588821acea02c       csel     $r5, $r4, u20, ^r7, ^r5, ult
 130: 8e1988c65a000000       iadd     $r6, $r4.sx, u22.sx
 138: 9211c8821ac8c02c       csel     $r4, ^r4, u20, ^r4, ^r6, ult
 140: 8e198a1600000000       iadd     $r6, $r5.sx, 1
 148: 921588821acac02c       csel     $r5, $r4, u20, ^r5, ^r6, ult
 150: 8e1988c65a000000       iadd     $r6, $r4.sx, u22.sx
 158: 9211c8821ac8c02c       csel     $r4, ^r4, u20, ^r4, ^r6, ult
 160: 9e09c62659c40600       imadd    $r2, ^r3.sx, u9.sx, ^r2.sx
 168: ae0d00802c060000       shl      $r3, ^r4, 6
 170: 9e118a0659000000       imul     $r4, $r5.sx, u8.sx
 178: 9e1946065b880600       imadd    $r6, r3.sx, u24.sx, $r4.sx
 180: ae9900c02c020000       shr      $r6, ^r6, 2
 188: 9e09c4a65bcc0600       imadd    $r2, ^r2.sx, u29.sx, ^r6.sx
 190: f2190100               mov      $r6, threadgroup_in_grid_y
 194: 8e19cca658000000       iadd     $r6, ^r6.sx, u5.sx
 19c: ae1900c02c060000       shl      $r6, ^r6, 6
 1a4: 9e1d42665b880600       imadd    $r7, r1.sx, u27.sx, $r4.sx
 1ac: 9e1d4c265bce0600       imadd    $r7, r6.sx, u25.sx, ^r7.sx
 1b4: 8e214a1600000000       iadd     $r8, r5.sx, 1
 1bc: 9e21d00659000000       imul     $r8, ^r8.sx, u8.sx
 1c4: 62000000               ldimm    r0l, 0
 1c8: f2253000               mov      $r9, thread_in_threadgroup_x
 1cc: fe2992f28100           and      $r10, $r9, 31
 1d2: 2ea900402d020000       shr      r10, ^r10, 2
 1da: ae9d00e02c020000       shr      $r7, ^r7, 2
 1e2: 1221ae012dae012d       csel     r8, u23, ^r8, u23, ^r8, ult
 1ea: 2ead002029060000       shr      r11, $r9, 6
 1f2: 2eb1002069050000       bfeil    r12, 0, $r9, 5, 1
 1fa: 7e350320a900           and      r13, 3, $r9
 200: 2eb9002029030000       shr      r14, $r9, 3
 208: 7e25d2728000           and      r9, ^r9, 7
 20e: 623d00000000           ldimm    r15, 0
 214: 624100000000           ldimm    r16, 0
 21a: 624500000000           ldimm    r17, 0
 220: 624900000000           ldimm    r18, 0
 226: 624d00000000           ldimm    r19, 0
 22c: 625100000000           ldimm    r20, 0
 232: 625500000000           ldimm    r21, 0
 238: 625900000000           ldimm    r22, 0
 23e: 625d00000000           ldimm    r23, 0
 244: 626100000000           ldimm    r24, 0
 24a: 626500000000           ldimm    r25, 0
 250: 626900000000           ldimm    r26, 0
 256: 626d00000000           ldimm    r27, 0
 25c: 627100000000           ldimm    r28, 0
 262: 627500000000           ldimm    r29, 0
 268: 627900000000           ldimm    r30, 0
 26e: 627d00000000           ldimm    r31, 0
 274: 6281000000000010       ldimm    r32, 0
 27c: 6285000000000010       ldimm    r33, 0
 284: 6289000000000010       ldimm    r34, 0
 28c: 628d000000000010       ldimm    r35, 0
 294: 6291000000000010       ldimm    r36, 0
 29c: 6295000000000010       ldimm    r37, 0
 2a4: 6299000000000010       ldimm    r38, 0
 2ac: 629d000000000010       ldimm    r39, 0
 2b4: 62a1000000000010       ldimm    r40, 0
 2bc: 62a5000000000010       ldimm    r41, 0
 2c4: 62a9000000000010       ldimm    r42, 0
 2cc: 62ad000000000010       ldimm    r43, 0
 2d4: 7e31c80a8010           mov      r44, ^r4
 2da: 7e35ce0a8010           mov      r45, ^r7
 2e0: 7e39c40a8010           mov      r46, ^r2
 2e6: 620900000000           ldimm    r2, 0
 2ec: 621100000000           ldimm    r4, 0
 2f2: 621d00000000           ldimm    r7, 0
 2f8: 522c58022504           while    r44, r8, 1, ult
 2fe: 20c044060000           jmp_none 1604
 304: 52093c010000           if       u30l, 0, 1, ine
 30a: 20c0ea020000           jmp_none 746
 310: 9e3d9c065b000010       imul     $r47, $r14.sx, u24.sx
 318: aebd00e025020011       shr      $r47, r47, 2
 320: 8e415c2669140000       iadd     $r48, r46.sx, $r9.sx
 328: 8e3d5e0666150000       iadd     $r47, r47.sx, r48.sx
 330: fe419ef28314           and      $r48, $r47, 63
 336: 8e410000e6110000       iadd     $r48, 0, r48.sx, lsl 1
 33e: fe45a0429d15           and      $r49, $r48, u170
 344: 8e45102066110000       iadd     $r49, 16, r49.sx
 34c: fe49a0f28014           and      $r50, $r48, 15
 352: 8e456246e6150000       iadd     $r49, r49.sx, r50.sx, lsl 1
 35a: aebd00e025060011       shr      $r47, r47, 6
 362: 8e499ee6e9151000       iadd     $r50, $r47.sx, $r47.sx, lsl 3
 36a: 9e515e0601000016       imul     $r52, r47.sx, 144
 372: aed50040261c0011       shr      $r53, r50, 28
 37a: fe4980098014           mov      $r50, u32
 380: fe4d82098014           mov      $r51, u33
 386: 8e59a82666150000       iadd     $r54, $r52.sx, r49.sx
 38e: fe61a80a8014           mov      $r56, $r52
 394: fe656a0a8014           mov      $r57, r53
 39a: 0e63a40337150000       iadd     dr56, $dr50, dr56
 3a2: fe696c0a8014           mov      $r58, r54
 3a8: fe6dce098014           mov      $r59, u167
 3ae: 0e4b644337150000       iadd     dr50, dr50, dr58
 3b6: 8578000570c13000       load     r47l_r47h, dr56, 0, i16, xy, a
 3be: fe45a0f28114           and      $r49, $r48, 31
 3c4: aec1000026050011       shr      $r48, r48, 5
 3cc: aec5002026040011       shr      $r49, r49, 4
 3d4: 8e41a206e6150000       iadd     $r48, $r49.sx, r48.sx, lsl 1
 3dc: 8e51048066110000       iadd     $r52, 4, r52.sx
 3e4: 8e55a04e00140000       isub     $r53, $r48.sx, 4
 3ec: 92d5a04200a0a0265014   csel     $r53, $r48, 4, $r48, r53, ult
 3f6: 8e59a04600140000       iadd     $r54, $r48.sx, 4
 3fe: 92dda04200a0c02a5014   csel     $r55, $r48, 4, $r48, $r54, ult
 408: 0e5da8e666150000       iadd     r55, $r52.sx, r55.sx
 410: 0e55a8a666150000       iadd     r53, $r52.sx, r53.sx
 418: 92e1a04200ac002a5014   csel     $r56, $r48, 4, $r54, $r48, ult
 422: 0e59a8c666150000       iadd     r54, $r52.sx, r54.sx
 42a: 0e51680667150000       iadd     r52, r52.sx, r56.sx
 432: 0504e04e46c01000       load     r0h, du32, r55, i8, x, b
 43a: 05a8a00e46c11000       load     r53l, du32, r53, i8, x, a
 442: 05acc00e46c11000       load     r53h, du32, r54, i8, x, a
 44a: 92d9a042000f01333014   csel     $r54, $r48, 4, 15, 240, ult
 454: 3800                   wait     a
 456: fe5d6bc0a615           and      $r55, r53h, r54
 45c: 92d9a042000041300014   csel     $r54, $r48, 4, 0, 4, ult
 466: aed900e0266c4211       shr      $r54, r55, r54
 46e: 05a0800e46c11000       load     r52l, du32, r52, i8, x, a
 476: 92dda042003001303014   csel     $r55, $r48, 4, 48, 192, ult
 480: 3800                   wait     a
 482: fe6168e0aa15           and      $r56, r52l, $r55
 488: fe516ae0a615           and      $r52, r53l, r55
 48e: 92c16042000021300014   csel     $r48, r48, 4, 0, 2, ult
 498: aed5000027a04211       shr      $r53, r56, $r48
 4a0: aec1008026604211       shr      $r48, r52, r48
 4a8: 0591040560c11200       load     r50, dr50, 0, i32, x, a
 4b0: fe4d6caae615           or       $r51, r54, r53
 4b6: 3801                   wait     b
 4b8: fe5141f08010           and      $r52, r0h, 15
 4be: fe41680ae615           or       $r48, r52, r48
 4c4: 8e45002066111000       iadd     $r49, 0, r49.sx, lsl 2
 4cc: fe4562f28114           and      $r49, r49, 31
 4d2: 3800                   wait     a
 4d4: aec5004026624211       shr      $r49, r50, r49
 4dc: 7e0266f28307           and      r0h, r51, 255
 4e2: 7e4060f28317           and      r48l, r48, 255
 4e8: fe4562a29d15           and      $r49, r49, u173
 4ee: aec900202a080011       shr      $r50, $r49, 8
 4f6: 7e4264f28317           and      r48h, r50, 255
 4fc: bec900140410           u8_to_f  $r50, r0h, rte
 502: 9ac95f402615           fmul     $r50, r47h, r50
 508: becd00040611           u8_to_f  $r51, r48l, rte
 50e: 9abd5e602615           fmul     $r47, r47l, r51
 514: 8e4d002069101000       iadd     $r51, 0, $r9.sx, lsl 2
 51c: aecd006026010011       shr      $r51, r51, 1
 524: 9e4d9c1601664610       imadd    $r51, $r14.sx, 17, r51.sx
 52c: bed100140611           u8_to_f  $r52, r48h, rte
 532: 3ad59e8226a44a15       ffma     r53, $r47, r52, $r50.neg
 53a: 7e02a2f28307           and      r0h, $r49, 255
 540: bec100140410           u8_to_f  $r48, r0h, rte
 546: 3ad19e0226a44a15       ffma     r52, $r47, r48, $r50.neg
 54e: 8e410060e6111000       iadd     $r48, 0, r51.sx, lsl 3
 556: 7e02a0088004           mov      r0h, $r48l
 55c: 29d1010234800010       lstore   r52_r53, r0h, 0, i32, xy
 564: fe02a3088004           mov      $r0h, $r49h
 56a: aec5002026180011       shr      $r49, r49, 24
 572: 7e4462f28317           and      r49l, r49, 255
 578: 7e0241f08303           and      r0h, r0h, 255
 57e: becd00240611           u8_to_f  $r51, r49l, rte
 584: 3ad59e6226a44a15       ffma     r53, $r47, r51, $r50.neg
 58c: bec500140410           u8_to_f  $r49, r0h, rte
 592: 3ad15e2226644a15       ffma     r52, r47, r49, r50.neg
 59a: 0e3da08600140000       iadd     r47, $r48.sx, 8
 5a2: 29d11e0234800014       lstore   r52_r53, r47l, 0, i32, xy
 5aa: 9e3d5c265b000010       imul     $r47, r14.sx, u25.sx
 5b2: aebd00e025020011       shr      $r47, r47, 2
 5ba: 8e455a2665140000       iadd     $r49, r45.sx, r9.sx
 5c2: 0e3d5e2666150000       iadd     r47, r47.sx, r49.sx
 5ca: 0e45cc056a150000       iadd     r49, u166.sx, $r48.sx
 5d2: 05a1e40e45c9f200       load     r52_r53_r54_r55, du34, r47, lsl 2, i32, xyzw, a
 5da: 3800                   wait     a
 5dc: 29d1220234800014       lstore   r52_r53, r49l, 0, i32, xy
 5e4: 0e3de40566150000       iadd     r47, u178.sx, r48.sx
 5ec: 29d91e0234800014       lstore   r54_r55, r47l, 0, i32, xy
 5f4: 520e00000000           pop_exec 1
 5fa: 6800                   barrier
 5fc: 62bd000000000010       ldimm    r47, 0
 604: 420800000000           if       0.0, 0.0, 1, feq
 60a: 522c9e020104           while    $r47, 16, 1, ult
 610: ae41008025050010       shl      $r48, r12, 5
 618: 8e4160a665141000       iadd     $r48, r48.sx, r13.sx, lsl 2
 620: 9e416016019e4614       imadd    $r48, r48.sx, 17, $r47.sx
 628: 8e410000e6111000       iadd     $r48, 0, r48.sx, lsl 3
 630: 0e45a08600160000       iadd     r49, $r48.sx, 136
 638: 0e49a0865d150000       iadd     r50, $r48.sx, u172.sx
 640: 0e4da0065d150000       iadd     r51, $r48.sx, u168.sx
 648: 0e51a0665e150000       iadd     r52, $r48.sx, u179.sx
 650: 0e55a0265d150000       iadd     r53, $r48.sx, u169.sx
 658: 0e59a0665d150000       iadd     r54, $r48.sx, u171.sx
 660: 7e02a0088004           mov      r0h, $r48l
 666: 0e4160e65d150000       iadd     r48, r48.sx, u175.sx
 66e: ae5d006025050010       shl      $r55, r11, 5
 676: 8e5d6e46e5140000       iadd     $r55, r55.sx, r10.sx, lsl 1
 67e: 9e5d6e16019e4614       imadd    $r55, r55.sx, 17, $r47.sx
 686: 8e5d00e0e6111000       iadd     $r55, 0, r55.sx, lsl 3
 68e: 0e61cce56a150000       iadd     r56, u166.sx, $r55.sx
 696: 0e65dce56a150000       iadd     r57, u174.sx, $r55.sx
 69e: 0e69e0e56a150000       iadd     r58, u176.sx, $r55.sx
 6a6: 0e5de2e566150000       iadd     r55, u177.sx, r55.sx
 6ae: 69f1010234800010       lload    r60_r61, r0h, 0, i32, xy
 6b6: 69f9220234800014       lload    r62_r63, r49l, 0, i32, xy
 6be: 6981240234800024       lload    r64_r65, r50l, 0, i32, xy
 6c6: 6989260234800024       lload    r66_r67, r51l, 0, i32, xy
 6ce: 69c9280234800014       lload    r50_r51, r52l, 0, i32, xy
 6d6: 69912a0234800024       lload    r68_r69, r53l, 0, i32, xy
 6de: 69d12c0234800014       lload    r52_r53, r54l, 0, i32, xy
 6e6: 6999200234800024       lload    r70_r71, r48l, 0, i32, xy
 6ee: 69c1300234800014       lload    r48_r49, r56l, 0, i32, xy
 6f6: 69a1320234800024       lload    r72_r73, r57l, 0, i32, xy
 6fe: 69e1340234800014       lload    r56_r57, r58l, 0, i32, xy
 706: 69e92e0234800014       lload    r58_r59, r55l, 0, i32, xy
 70e: ba918e622b480209       ffma     $r4, $r71, $r59, r4
 716: ba89aa622b440205       ffma     $r2, $r53, $r59, r2
 71e: babd8a622b5e0209       ffma     $r15, $r69, $r59, r15
 726: ba9da6622b4e0205       ffma     $r7, $r51, $r59, r7
 72e: bac586622b620209       ffma     $r17, $r67, $r59, r17
 736: bac182622b600209       ffma     $r16, $r65, $r59, r16
 73e: bacdbe622b660205       ffma     $r19, $r63, $r59, r19
 746: bac9ba6227640205       ffma     $r18, $r61, r59, r18
 74e: bad58e222b6a0209       ffma     $r21, $r71, $r57, r21
 756: bad1aa222b680205       ffma     $r20, $r53, $r57, r20
 75e: badd8a222b6e0209       ffma     $r23, $r69, $r57, r23
 766: bad9a6222b6c0205       ffma     $r22, $r51, $r57, r22
 76e: bae586222b720209       ffma     $r25, $r67, $r57, r25
 776: bae182222b700209       ffma     $r24, $r65, $r57, r24
 77e: baedbe222b760205       ffma     $r27, $r63, $r57, r27
 786: bae9ba2227740205       ffma     $r26, $r61, r57, r26
 78e: baf58e22297a020a       ffma     $r29, $r71, $r73, r29
 796: baf1aa2229780206       ffma     $r28, $r53, $r73, r28
 79e: bafd8a22297e020a       ffma     $r31, $r69, $r73, r31
 7a6: baf9a622297c0206       ffma     $r30, $r51, $r73, r30
 7ae: ba8586222942421a       ffma     $r33, $r67, $r73, r33
 7b6: ba8182222940421a       ffma     $r32, $r65, $r73, r32
 7be: ba8dbe2229464216       ffma     $r35, $r63, $r73, r35
 7c6: ba89ba2225444216       ffma     $r34, $r61, r73, r34
 7ce: ba954e222a4a4219       ffma     $r37, r71, $r49, r37
 7d6: ba916a222a484215       ffma     $r36, r53, $r49, r36
 7de: ba9d4a222a4e4219       ffma     $r39, r69, $r49, r39
 7e6: ba9966222a4c4215       ffma     $r38, r51, $r49, r38
 7ee: baa546222a524219       ffma     $r41, r67, $r49, r41
 7f6: baa142222a504219       ffma     $r40, r65, $r49, r40
 7fe: baad7e222a564215       ffma     $r43, r63, $r49, r43
 806: baa97a2226544215       ffma     $r42, r61, r49, r42
 80e: 3a918c422b480209       ffma     r4, $r70, $r58, r4
 816: 3a89a8422b440205       ffma     r2, $r52, $r58, r2
 81e: 3abd88422b5e0209       ffma     r15, $r68, $r58, r15
 826: 3a9da4422b4e0205       ffma     r7, $r50, $r58, r7
 82e: 3ac584422b620209       ffma     r17, $r66, $r58, r17
 836: 3ac180422b600209       ffma     r16, $r64, $r58, r16
 83e: 3acdbc422b660205       ffma     r19, $r62, $r58, r19
 846: 3ac9b84227640205       ffma     r18, $r60, r58, r18
 84e: 3ad58c022b6a0209       ffma     r21, $r70, $r56, r21
 856: 3ad1a8022b680205       ffma     r20, $r52, $r56, r20
 85e: 3add88022b6e0209       ffma     r23, $r68, $r56, r23
 866: 3ad9a4022b6c0205       ffma     r22, $r50, $r56, r22
 86e: 3ae584022b720209       ffma     r25, $r66, $r56, r25
 876: 3ae180022b700209       ffma     r24, $r64, $r56, r24
 87e: 3aedbc022b760205       ffma     r27, $r62, $r56, r27
 886: 3ae9b80227740205       ffma     r26, $r60, r56, r26
 88e: 3af58c02297a020a       ffma     r29, $r70, $r72, r29
 896: 3af1a80229780206       ffma     r28, $r52, $r72, r28
 89e: 3afd8802297e020a       ffma     r31, $r68, $r72, r31
 8a6: 3af9a402297c0206       ffma     r30, $r50, $r72, r30
 8ae: 3a8584022942421a       ffma     r33, $r66, $r72, r33
 8b6: 3a8180022940421a       ffma     r32, $r64, $r72, r32
 8be: 3a8dbc0229464216       ffma     r35, $r62, $r72, r35
 8c6: 3a89b80225444216       ffma     r34, $r60, r72, r34
 8ce: 3a954c022a4a4219       ffma     r37, r70, $r48, r37
 8d6: 3a9168022a484215       ffma     r36, r52, $r48, r36
 8de: 3a9d48022a4e4219       ffma     r39, r68, $r48, r39
 8e6: 3a9964022a4c4215       ffma     r38, r50, $r48, r38
 8ee: 3aa544022a524219       ffma     r41, r66, $r48, r41
 8f6: 3aa140022a504219       ffma     r40, r64, $r48, r40
 8fe: 3aad7c022a564215       ffma     r43, r62, $r48, r43
 906: 3aa9780226544215       ffma     r42, r60, r48, r42
 90e: 0e3d5e1600140000       iadd     r47, r47.sx, 1
 916: 00c0f4fcffff           jmp_any  -780
 91c: 520e00000000           pop_exec 1
 922: 0e31580602140000       iadd     r44, r44.sx, 32
 92a: 0e355a8600140000       iadd     r45, r45.sx, 8
 932: 0e395c8600140000       iadd     r46, r46.sx, 8
 93a: 6800                   barrier
 93c: 00c0bcf9ffff           jmp_any  -1604
 942: 520e00000000           pop_exec 1
 948: 9e195606024c0600       imadd    $r6, r11.sx, 32, r6.sx
 950: 9e0d580602460600       imadd    $r3, r12.sx, 32, r3.sx
 958: 8e194c46e5000000       iadd     $r6, r6.sx, r10.sx, lsl 1
 960: 8e0d46a665001000       iadd     $r3, r3.sx, r13.sx, lsl 2
 968: 9e154a865b000000       imul     $r5, r5.sx, u28.sx
 970: 9e1588a564000004       imul     $r5, u36.sx, r5.sx
 978: 1e0542865b4a0600       imadd    r1, r1.sx, u28.sx, r5.sx
 980: 92824ca2180101300001   csel     $r0h, r6, u37, 1, 0, ult
 98a: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 992: 520941000000           if       r0h, 0, 1, ine
 998: 8e15426664000000       iadd     $r5, r1.sx, r3.sx
 9a0: 1e154cc6584a0601       imadd    r5, r6.sx, u38.sx, r5.sx
 9a8: 4551a00e50c11200       store    r42, du40, r5, i32, x, a
 9b0: 3800                   wait     a
 9b2: 520e00000000           pop_exec 1
 9b8: 92824c42190101300001   csel     $r0h, r6, u42, 1, 0, ult
 9c2: 8e15016064000000       iadd     $r5, 1, r3.sx
 9ca: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 9d2: 520941000000           if       r0h, 0, 1, ine
 9d8: 8e21421600000000       iadd     $r8, r1.sx, 1
 9e0: 8e21506664000000       iadd     $r8, r8.sx, r3.sx
 9e8: 1e214c6659500601       imadd    r8, r6.sx, u43.sx, r8.sx
 9f0: 4559080e51c11200       store    r43, du44, r8, i32, x, a
 9f8: 3800                   wait     a
 9fa: 520e00000000           pop_exec 1
 a00: 92824cc2190101300001   csel     $r0h, r6, u46, 1, 0, ult
 a0a: 8e21462600000000       iadd     $r8, r3.sx, 2
 a12: 120250621a410030       csel     r0h, r8, u19, r0h, 0, ult
 a1a: 520941000000           if       r0h, 0, 1, ine
 a20: 8e25422600000000       iadd     $r9, r1.sx, 2
 a28: 8e25526664000000       iadd     $r9, r9.sx, r3.sx
 a30: 1e254ce659520601       imadd    r9, r6.sx, u47.sx, r9.sx
 a38: 4541200e61c11200       store    r40, du48, r9, i32, x, a
 a40: 3800                   wait     a
 a42: 520e00000000           pop_exec 1
 a48: 92824c421a0101300001   csel     $r0h, r6, u50, 1, 0, ult
 a52: 8e25036064000000       iadd     $r9, 3, r3.sx
 a5a: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 a62: 520941000000           if       r0h, 0, 1, ine
 a68: 8e29423600000000       iadd     $r10, r1.sx, 3
 a70: 8e29546664000000       iadd     $r10, r10.sx, r3.sx
 a78: 1e294c665a540601       imadd    r10, r6.sx, u51.sx, r10.sx
 a80: 4549480e61c11200       store    r41, du52, r10, i32, x, a
 a88: 3800                   wait     a
 a8a: 520e00000000           pop_exec 1
 a90: 8e294c1600000000       iadd     $r10, r6.sx, 1
 a98: 928254c21a0101300001   csel     $r0h, r10, u54, 1, 0, ult
 aa2: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 aaa: 520941000000           if       r0h, 0, 1, ine
 ab0: 8e2d426664000000       iadd     $r11, r1.sx, r3.sx
 ab8: 1e2d54e65a560601       imadd    r11, r10.sx, u55.sx, r11.sx
 ac0: 4511600e71c11200       store    r34, du56, r11, i32, x, a
 ac8: 3800                   wait     a
 aca: 520e00000000           pop_exec 1
 ad0: 928254421b0101300001   csel     $r0h, r10, u58, 1, 0, ult
 ada: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 ae2: 520941000000           if       r0h, 0, 1, ine
 ae8: 8e2d421600000000       iadd     $r11, r1.sx, 1
 af0: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 af8: 1e2d54665b560601       imadd    r11, r10.sx, u59.sx, r11.sx
 b00: 4519680e71c11200       store    r35, du60, r11, i32, x, a
 b08: 3800                   wait     a
 b0a: 520e00000000           pop_exec 1
 b10: 928254c21b0101300001   csel     $r0h, r10, u62, 1, 0, ult
 b1a: 120250621a410030       csel     r0h, r8, u19, r0h, 0, ult
 b22: 520941000000           if       r0h, 0, 1, ine
 b28: 8e2d422600000000       iadd     $r11, r1.sx, 2
 b30: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 b38: 1e2d54e65b560601       imadd    r11, r10.sx, u63.sx, r11.sx
 b40: 4501600e81c11200       store    r32, du64, r11, i32, x, a
 b48: 3800                   wait     a
 b4a: 520e00000000           pop_exec 1
 b50: 92825442180101300002   csel     $r0h, r10, u66, 1, 0, ult
 b5a: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 b62: 520941000000           if       r0h, 0, 1, ine
 b68: 8e2d423600000000       iadd     $r11, r1.sx, 3
 b70: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 b78: 1e2d546658560602       imadd    r11, r10.sx, u67.sx, r11.sx
 b80: 4509680e81c11200       store    r33, du68, r11, i32, x, a
 b88: 3800                   wait     a
 b8a: 520e00000000           pop_exec 1
 b90: 92824cc2180101300002   csel     $r0h, r6, u70, 1, 0, ult
 b9a: 8e2d106064000000       iadd     $r11, 16, r3.sx
 ba2: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 baa: 520941000000           if       r0h, 0, 1, ine
 bb0: 8e31426665000000       iadd     $r12, r1.sx, r11.sx
 bb8: 1e314ce658580602       imadd    r12, r6.sx, u71.sx, r12.sx
 bc0: 4531800e91c11200       store    r38, du72, r12, i32, x, a
 bc8: 3800                   wait     a
 bca: 520e00000000           pop_exec 1
 bd0: 92824c42190101300002   csel     $r0h, r6, u74, 1, 0, ult
 bda: 8e31116064000000       iadd     $r12, 17, r3.sx
 be2: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
 bea: 520941000000           if       r0h, 0, 1, ine
 bf0: 8e35421600000000       iadd     $r13, r1.sx, 1
 bf8: 8e355a6665000000       iadd     $r13, r13.sx, r11.sx
 c00: 1e354c66595a0602       imadd    r13, r6.sx, u75.sx, r13.sx
 c08: 4539a80e91c11200       store    r39, du76, r13, i32, x, a
 c10: 3800                   wait     a
 c12: 520e00000000           pop_exec 1
 c18: 92824cc2190101300002   csel     $r0h, r6, u78, 1, 0, ult
 c22: 8e35126064000000       iadd     $r13, 18, r3.sx
 c2a: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
 c32: 520941000000           if       r0h, 0, 1, ine
 c38: 8e39422600000000       iadd     $r14, r1.sx, 2
 c40: 8e395c6665000000       iadd     $r14, r14.sx, r11.sx
 c48: 1e394ce6595c0602       imadd    r14, r6.sx, u79.sx, r14.sx
 c50: 4521c00ea1c11200       store    r36, du80, r14, i32, x, a
 c58: 3800                   wait     a
 c5a: 520e00000000           pop_exec 1
 c60: 92824c421a0101300002   csel     $r0h, r6, u82, 1, 0, ult
 c6a: 8e39136064000000       iadd     $r14, 19, r3.sx
 c72: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
 c7a: 520941000000           if       r0h, 0, 1, ine
 c80: 8e01423600100000       iadd     $r32, r1.sx, 3
 c88: 8e01406665140000       iadd     $r32, r32.sx, r11.sx
 c90: 1e014c665a404612       imadd    r32, r6.sx, u83.sx, r32.sx
 c98: 4529080ea4c11200       store    r37, du84, r32, i32, x, a
 ca0: 3800                   wait     a
 ca2: 520e00000000           pop_exec 1
 ca8: 928254c21a0101300002   csel     $r0h, r10, u86, 1, 0, ult
 cb2: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 cba: 520941000000           if       r0h, 0, 1, ine
 cc0: 8e01426665100000       iadd     $r32, r1.sx, r11.sx
 cc8: 1e0154e65a404612       imadd    r32, r10.sx, u87.sx, r32.sx
 cd0: 45f1000eb4c01200       store    r30, du88, r32, i32, x, a
 cd8: 3800                   wait     a
 cda: 520e00000000           pop_exec 1
 ce0: 928254421b0101300002   csel     $r0h, r10, u90, 1, 0, ult
 cea: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
 cf2: 520941000000           if       r0h, 0, 1, ine
 cf8: 8e79421600000000       iadd     $r30, r1.sx, 1
 d00: 8e797c6665000000       iadd     $r30, r30.sx, r11.sx
 d08: 1e7954665b7c0602       imadd    r30, r10.sx, u91.sx, r30.sx
 d10: 45f9c80eb3c01200       store    r31, du92, r30, i32, x, a
 d18: 3800                   wait     a
 d1a: 520e00000000           pop_exec 1
 d20: 928254c21b0101300002   csel     $r0h, r10, u94, 1, 0, ult
 d2a: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
 d32: 520941000000           if       r0h, 0, 1, ine
 d38: 8e79422600000000       iadd     $r30, r1.sx, 2
 d40: 8e797c6665000000       iadd     $r30, r30.sx, r11.sx
 d48: 1e7954e65b7c0602       imadd    r30, r10.sx, u95.sx, r30.sx
 d50: 45e1c00ec3c01200       store    r28, du96, r30, i32, x, a
 d58: 3800                   wait     a
 d5a: 520e00000000           pop_exec 1
 d60: 92825442180101300003   csel     $r0h, r10, u98, 1, 0, ult
 d6a: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
 d72: 520941000000           if       r0h, 0, 1, ine
 d78: 8e71423600000000       iadd     $r28, r1.sx, 3
 d80: 8e71786665000000       iadd     $r28, r28.sx, r11.sx
 d88: 1e29546658780603       imadd    r10, r10.sx, u99.sx, r28.sx
 d90: 45e9480ec1c01200       store    r29, du100, r10, i32, x, a
 d98: 3800                   wait     a
 d9a: 520e00000000           pop_exec 1
 da0: 8e2910c064000000       iadd     $r10, 16, r6.sx
 da8: 928254c2180101300003   csel     $r0h, r10, u102, 1, 0, ult
 db2: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 dba: 520941000000           if       r0h, 0, 1, ine
 dc0: 8e71426664000000       iadd     $r28, r1.sx, r3.sx
 dc8: 1e7154e658780603       imadd    r28, r10.sx, u103.sx, r28.sx
 dd0: 45d1800ed3c01200       store    r26, du104, r28, i32, x, a
 dd8: 3800                   wait     a
 dda: 520e00000000           pop_exec 1
 de0: 92825442190101300003   csel     $r0h, r10, u106, 1, 0, ult
 dea: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 df2: 520941000000           if       r0h, 0, 1, ine
 df8: 8e69421600000000       iadd     $r26, r1.sx, 1
 e00: 8e69746664000000       iadd     $r26, r26.sx, r3.sx
 e08: 1e69546659740603       imadd    r26, r10.sx, u107.sx, r26.sx
 e10: 45d9480ed3c01200       store    r27, du108, r26, i32, x, a
 e18: 3800                   wait     a
 e1a: 520e00000000           pop_exec 1
 e20: 928254c2190101300003   csel     $r0h, r10, u110, 1, 0, ult
 e2a: 120250621a410030       csel     r0h, r8, u19, r0h, 0, ult
 e32: 520941000000           if       r0h, 0, 1, ine
 e38: 8e69422600000000       iadd     $r26, r1.sx, 2
 e40: 8e69746664000000       iadd     $r26, r26.sx, r3.sx
 e48: 1e6954e659740603       imadd    r26, r10.sx, u111.sx, r26.sx
 e50: 45c1400ee3c01200       store    r24, du112, r26, i32, x, a
 e58: 3800                   wait     a
 e5a: 520e00000000           pop_exec 1
 e60: 928254421a0101300003   csel     $r0h, r10, u114, 1, 0, ult
 e6a: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 e72: 520941000000           if       r0h, 0, 1, ine
 e78: 8e61423600000000       iadd     $r24, r1.sx, 3
 e80: 8e61706664000000       iadd     $r24, r24.sx, r3.sx
 e88: 1e6154665a700603       imadd    r24, r10.sx, u115.sx, r24.sx
 e90: 45c9080ee3c01200       store    r25, du116, r24, i32, x, a
 e98: 3800                   wait     a
 e9a: 520e00000000           pop_exec 1
 ea0: 8e1911c064000000       iadd     $r6, 17, r6.sx
 ea8: 92824cc21a0101300003   csel     $r0h, r6, u118, 1, 0, ult
 eb2: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 eba: 520941000000           if       r0h, 0, 1, ine
 ec0: 8e61426664000000       iadd     $r24, r1.sx, r3.sx
 ec8: 1e614ce65a700603       imadd    r24, r6.sx, u119.sx, r24.sx
 ed0: 4591000ef3c01200       store    r18, du120, r24, i32, x, a
 ed8: 3800                   wait     a
 eda: 520e00000000           pop_exec 1
 ee0: 92824c421b0101300003   csel     $r0h, r6, u122, 1, 0, ult
 eea: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 ef2: 520941000000           if       r0h, 0, 1, ine
 ef8: 8e15421600000000       iadd     $r5, r1.sx, 1
 f00: 8e154a6664000000       iadd     $r5, r5.sx, r3.sx
 f08: 1e154c665b4a0603       imadd    r5, r6.sx, u123.sx, r5.sx
 f10: 4599a80ef0c01200       store    r19, du124, r5, i32, x, a
 f18: 3800                   wait     a
 f1a: 520e00000000           pop_exec 1
 f20: 92824cc21b0101300003   csel     $r0h, r6, u126, 1, 0, ult
 f2a: 120250621a410030       csel     r0h, r8, u19, r0h, 0, ult
 f32: 520941000000           if       r0h, 0, 1, ine
 f38: 8e15422600000000       iadd     $r5, r1.sx, 2
 f40: 8e154a6664000000       iadd     $r5, r5.sx, r3.sx
 f48: 1e154ce65b4a0603       imadd    r5, r6.sx, u127.sx, r5.sx
 f50: 7e49c0098000           mov      r18, u128
 f56: 7e4dc2098000           mov      r19, u129
 f5c: 4581a40620c01200       store    r16, dr18, r5, i32, x, a
 f64: 3800                   wait     a
 f66: 520e00000000           pop_exec 1
 f6c: 92024c421c010130       csel     $r0h, r6, u130, 1, 0, ult
 f74: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 f7c: 520941000000           if       r0h, 0, 1, ine
 f82: 8e15423600000000       iadd     $r5, r1.sx, 3
 f8a: 8e0d4a6664000000       iadd     $r3, r5.sx, r3.sx
 f92: 1e0d4c665c460600       imadd    r3, r6.sx, u131.sx, r3.sx
 f9a: 7e21c8098000           mov      r8, u132
 fa0: 7e25ca098000           mov      r9, u133
 fa6: 4589600610c01200       store    r17, dr8, r3, i32, x, a
 fae: 3800                   wait     a
 fb0: 520e00000000           pop_exec 1
 fb6: 920254c21c010130       csel     $r0h, r10, u134, 1, 0, ult
 fbe: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 fc6: 520941000000           if       r0h, 0, 1, ine
 fcc: 8e0d426665000000       iadd     $r3, r1.sx, r11.sx
 fd4: 1e0d54e65c460600       imadd    r3, r10.sx, u135.sx, r3.sx
 fdc: 7e21d0098000           mov      r8, u136
 fe2: 7e25d2098000           mov      r9, u137
 fe8: 45b1600610c01200       store    r22, dr8, r3, i32, x, a
 ff0: 3800                   wait     a
 ff2: 520e00000000           pop_exec 1
 ff8: 920254421d010130       csel     $r0h, r10, u138, 1, 0, ult
1000: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
1008: 520941000000           if       r0h, 0, 1, ine
100e: 8e0d421600000000       iadd     $r3, r1.sx, 1
1016: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
101e: 1e0d54665d460600       imadd    r3, r10.sx, u139.sx, r3.sx
1026: 7e21d8098000           mov      r8, u140
102c: 7e25da098000           mov      r9, u141
1032: 45b9600610c01200       store    r23, dr8, r3, i32, x, a
103a: 3800                   wait     a
103c: 520e00000000           pop_exec 1
1042: 920254c21d010130       csel     $r0h, r10, u142, 1, 0, ult
104a: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
1052: 520941000000           if       r0h, 0, 1, ine
1058: 8e0d422600000000       iadd     $r3, r1.sx, 2
1060: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
1068: 1e0d54e65d460600       imadd    r3, r10.sx, u143.sx, r3.sx
1070: 7e21e0098000           mov      r8, u144
1076: 7e25e2098000           mov      r9, u145
107c: 45a1600610c01200       store    r20, dr8, r3, i32, x, a
1084: 3800                   wait     a
1086: 520e00000000           pop_exec 1
108c: 920254421e010130       csel     $r0h, r10, u146, 1, 0, ult
1094: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
109c: 520941000000           if       r0h, 0, 1, ine
10a2: 8e0d423600000000       iadd     $r3, r1.sx, 3
10aa: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
10b2: 1e0d54665e460600       imadd    r3, r10.sx, u147.sx, r3.sx
10ba: 7e21e8098000           mov      r8, u148
10c0: 7e25ea098000           mov      r9, u149
10c6: 45a9600610c01200       store    r21, dr8, r3, i32, x, a
10ce: 3800                   wait     a
10d0: 520e00000000           pop_exec 1
10d6: 92024cc21e010130       csel     $r0h, r6, u150, 1, 0, ult
10de: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
10e6: 520941000000           if       r0h, 0, 1, ine
10ec: 8e0d426665000000       iadd     $r3, r1.sx, r11.sx
10f4: 1e0d4ce65e460600       imadd    r3, r6.sx, u151.sx, r3.sx
10fc: 7e21f0098000           mov      r8, u152
1102: 7e25f2098000           mov      r9, u153
1108: 4539600610c01200       store    r7, dr8, r3, i32, x, a
1110: 3800                   wait     a
1112: 520e00000000           pop_exec 1
1118: 92024c421f010130       csel     $r0h, r6, u154, 1, 0, ult
1120: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
1128: 520941000000           if       r0h, 0, 1, ine
112e: 8e0d421600000000       iadd     $r3, r1.sx, 1
1136: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
113e: 1e0d4c665f460600       imadd    r3, r6.sx, u155.sx, r3.sx
1146: 7e21f8098000           mov      r8, u156
114c: 7e25fa098000           mov      r9, u157
1152: 4579600610c01200       store    r15, dr8, r3, i32, x, a
115a: 3800                   wait     a
115c: 520e00000000           pop_exec 1
1162: 92024cc21f010130       csel     $r0h, r6, u158, 1, 0, ult
116a: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
1172: 520941000000           if       r0h, 0, 1, ine
1178: 8e0d422600000000       iadd     $r3, r1.sx, 2
1180: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
1188: 1e0d4ce65f460600       imadd    r3, r6.sx, u159.sx, r3.sx
1190: 7e21c0098004           mov      r8, u160
1196: 7e25c2098004           mov      r9, u161
119c: 4511600610c01200       store    r2, dr8, r3, i32, x, a
11a4: 3800                   wait     a
11a6: 520e00000000           pop_exec 1
11ac: 92824c421c0101300001   csel     $r0h, r6, u162, 1, 0, ult
11b6: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
11be: 520941000000           if       r0h, 0, 1, ine
11c4: 8e05423600000000       iadd     $r1, r1.sx, 3
11cc: 8e05426665000000       iadd     $r1, r1.sx, r11.sx
11d4: 1e054c665c420601       imadd    r1, r6.sx, u163.sx, r1.sx
11dc: 7e09c8098004           mov      r2, u164
11e2: 7e0dca098004           mov      r3, u165
11e8: 4521240600c01200       store    r4, dr2, r1, i32, x, a
11f0: 3800                   wait     a
11f2: 520e00000000           pop_exec 1
11f8: 8800                   stop
   0: 0501500d00c87200       load     r0_r1_r2, du0, 5, lsl 2, i32, xyz, a
   8: 3800                   wait     a
   a: c500803d0080f000       mov      du4, dr0
  12: c510c03d00803000       mov      u6, r2
  1a: 0501300d08c01200       load     r0, du0, 131, i32, x, a
  22: 3800                   wait     a
  24: c500e03d00803000       mov      u7, r0
  2c: 0501500d08c0f200       load     r0_r1_r2_r3, du0, 133, i32, xyzw, a
  34: 3800                   wait     a
  36: c500003d0180f000       mov      du8, dr0
  3e: 7e01840a8000           mov      r0, $r2
  44: 7e05860a8000           mov      r1, $r3
  4a: c500403d0180f000       mov      du10, dr0
  52: be810a442800           u32_to_f $r0, $r2, rte
  58: 8a058082               rcp      $r1, $r0
  5c: ba01c02a2830           ffma     $r0, ^r0.neg, $r1, 1.0
  62: ba81c02228820200       ffma     $r0, ^r0, $r1, $r1
  6a: 8201c0022cc0200c       csel     $r0, ^r0, ^r0, ^r0, ^r1, feq
  72: e205feff7f4f           ldimm    $r1, 1333788670
  78: 1a81c0222800           fmul     r0, ^r0, $r1
  7e: be8108002c00           f_to_u32 $r0, ^r0, rtz
  84: 9e11840668000000       imul     $r4, $r2.sx, $r0.sx
  8c: 8e1100886c000000       isub     $r4, 0, ^r4.sx
  94: 1e1380822c000000       imul     dr4, $r0, ^r4
  9c: 0e01c0a66c000000       iadd     r0, ^r0.sx, ^r5.sx
  a4: c500803d01803000       mov      u12, r0
  ac: 0e0100486c000000       isub     r0, 0, ^r2.sx
  b4: c500a03d01803000       mov      u13, r0
  bc: 0501900d08c01200       load     r0, du0, 137, i32, x, a
  c4: 3800                   wait     a
  c6: c500c03d01803000       mov      u14, r0
  ce: be890a042800           u32_to_f $r2, $r0, rte
  d4: 8a118482               rcp      $r4, $r2
  d8: ba09c48a2830           ffma     $r2, ^r2.neg, $r4, 1.0
  de: ba89c48228880200       ffma     $r2, ^r2, $r4, $r4
  e6: 8209c4422cc4800c       csel     $r2, ^r2, ^r2, ^r2, ^r4, feq
  ee: 1a89c4222800           fmul     r2, ^r2, $r1
  f4: be8908402c00           f_to_u32 $r2, ^r2, rtz
  fa: 9e11804668000000       imul     $r4, $r0.sx, $r2.sx
 102: 8e1100886c000000       isub     $r4, 0, ^r4.sx
 10a: 1e1384822c000000       imul     dr4, $r2, ^r4
 112: 0e09c4a66c000000       iadd     r2, ^r2.sx, ^r5.sx
 11a: c510e03d01803000       mov      u15, r2
 122: 0e0100086c000000       isub     r0, 0, ^r0.sx
 12a: c500003d02803000       mov      u16, r0
 132: be810a642800           u32_to_f $r0, $r3, rte
 138: 8a098082               rcp      $r2, $r0
 13c: ba01c04a2830           ffma     $r0, ^r0.neg, $r2, 1.0
 142: ba81c04228840200       ffma     $r0, ^r0, $r2, $r2
 14a: 8201c0022cc0400c       csel     $r0, ^r0, ^r0, ^r0, ^r2, feq
 152: 1a81c0222800           fmul     r0, ^r0, $r1
 158: be8108002c00           f_to_u32 $r0, ^r0, rtz
 15e: 9e09860668000000       imul     $r2, $r3.sx, $r0.sx
 166: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 16e: 1e1380422c000000       imul     dr4, $r0, ^r2
 176: 0e01c0a66c000000       iadd     r0, ^r0.sx, ^r5.sx
 17e: c500203d02803000       mov      u17, r0
 186: 0e0100686c000000       isub     r0, 0, ^r3.sx
 18e: c500403d02803000       mov      u18, r0
 196: 0501d00d03c41200       load     r0, du0, 61, lsl 1, i32, x, a
 19e: 3800                   wait     a
 1a0: c500603d02803000       mov      u19, r0
 1a8: 8e013f006c000000       iadd     $r0, 63, ^r0.sx
 1b0: ae8100002c060000       shr      $r0, ^r0, 6
 1b8: c500803d02803000       mov      u20, r0
 1c0: be890a042800           u32_to_f $r2, $r0, rte
 1c6: 8a0d8482               rcp      $r3, $r2
 1ca: ba09c46a2830           ffma     $r2, ^r2.neg, $r3, 1.0
 1d0: ba89c46228860200       ffma     $r2, ^r2, $r3, $r3
 1d8: 8209c4422cc4600c       csel     $r2, ^r2, ^r2, ^r2, ^r3, feq
 1e0: 1a85c4222c00           fmul     r1, ^r2, ^r1
 1e6: be8508202c00           f_to_u32 $r1, ^r1, rtz
 1ec: 9e09802668000000       imul     $r2, $r0.sx, $r1.sx
 1f4: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 1fc: 1e0b82422c000000       imul     dr2, $r1, ^r2
 204: 0e05c2666c000000       iadd     r1, ^r1.sx, ^r3.sx
 20c: c508a03d02803000       mov      u21, r1
 214: 0e0100086c000000       isub     r0, 0, ^r0.sx
 21c: c500c03d02803000       mov      u22, r0
 224: 0501f00d01c87200       load     r0_r1_r2, du0, 31, lsl 2, i32, xyz, a
 22c: 3800                   wait     a
 22e: 7e11800a8000           mov      r4, $r0
 234: 7e15c20a8000           mov      r5, ^r1
 23a: c520e03d0280f000       mov      du23, dr4
 242: c510203d03803000       mov      u25, r2
 24a: 0521000d02c87200       load     r4_r5_r6, du0, 32, lsl 2, i32, xyz, a
 252: 3800                   wait     a
 254: 7e09880a8000           mov      r2, $r4
 25a: 7e0dca0a8000           mov      r3, ^r5
 260: c510403d0380f000       mov      du26, dr2
 268: c530803d03803000       mov      u28, r6
 270: 2e8500802c020000       shr      r1, ^r4, 2
 278: c508a03d03803000       mov      u29, r1
 280: e205efbeadde           ldimm    $r1, 3735928559
 286: 1200c0222c010110       csel     r0l, ^r0, ^r1, 1, 0, ieq
 28e: c500c03d03801000       mov      u30l, r0l
 296: 0501040d00c0f200       load     r0_r1_r2_r3, du2, 0, i32, xyzw, a
 29e: 3800                   wait     a
 2a0: c500003d0480f000       mov      du32, dr0
 2a8: 0501140d00c8f200       load     r0_r1_r2_r3, du2, 1, lsl 2, i32, xyzw, a
 2b0: 3800                   wait     a
 2b2: c500403d0480f000       mov      du34, dr0
 2ba: 0501100d02c81200       load     r0, du0, 33, lsl 2, i32, x, a
 2c2: 3800                   wait     a
 2c4: c500803d04803000       mov      u36, r0
 2cc: 0501b00d07c01200       load     r0, du0, 123, i32, x, a
 2d4: 3800                   wait     a
 2d6: c500a03d04803000       mov      u37, r0
 2de: 0509f00d07c01200       load     r1, du0, 127, i32, x, a
 2e6: 3800                   wait     a
 2e8: c508c03d04803000       mov      u38, r1
 2f0: 0521240d00c8f200       load     r4_r5_r6_r7, du2, 2, lsl 2, i32, xyzw, a
 2f8: 3800                   wait     a
 2fa: c520003d0580f000       mov      du40, dr4
 302: c500403d05803000       mov      u42, r0
 30a: c508603d05803000       mov      u43, r1
 312: c520803d0580f000       mov      du44, dr4
 31a: c500c03d05803000       mov      u46, r0
 322: c508e03d05803000       mov      u47, r1
 32a: c520003d0680f000       mov      du48, dr4
 332: c500403d06803000       mov      u50, r0
 33a: c508603d06803000       mov      u51, r1
 342: c520803d0680f000       mov      du52, dr4
 34a: c500c03d06803000       mov      u54, r0
 352: c508e03d06803000       mov      u55, r1
 35a: c520003d0780f000       mov      du56, dr4
 362: c500403d07803000       mov      u58, r0
 36a: c508603d07803000       mov      u59, r1
 372: c520803d0780f000       mov      du60, dr4
 37a: c500c03d07803000       mov      u62, r0
 382: c508e03d07803000       mov      u63, r1
 38a: c520003d0880f000       mov      du64, dr4
 392: c500403d08803000       mov      u66, r0
 39a: c508603d08803000       mov      u67, r1
 3a2: c520803d0880f000       mov      du68, dr4
 3aa: c500c03d08803000       mov      u70, r0
 3b2: c508e03d08803000       mov      u71, r1
 3ba: c520003d0980f000       mov      du72, dr4
 3c2: c500403d09803000       mov      u74, r0
 3ca: c508603d09803000       mov      u75, r1
 3d2: c520803d0980f000       mov      du76, dr4
 3da: c500c03d09803000       mov      u78, r0
 3e2: c508e03d09803000       mov      u79, r1
 3ea: c520003d0a80f000       mov      du80, dr4
 3f2: c500403d0a803000       mov      u82, r0
 3fa: c508603d0a803000       mov      u83, r1
 402: c520803d0a80f000       mov      du84, dr4
 40a: c500c03d0a803000       mov      u86, r0
 412: c508e03d0a803000       mov      u87, r1
 41a: c520003d0b80f000       mov      du88, dr4
 422: c500403d0b803000       mov      u90, r0
 42a: c508603d0b803000       mov      u91, r1
 432: c520803d0b80f000       mov      du92, dr4
 43a: c500c03M=4096 N=512 K=14336  A=229376 blocks (33.0 MB)  B=29360.1 KB  D=8388.6 KB
 442: c508e03d0b803000       mov      u95, r1
 44a: c520003d0c80f000       mov      du96, dr4
 452: c500403d0c803000       mov      u98, r0
 45a: c508603d0c803000       mov      u99, r1
 462: c520803d0c80f000       mov      du100, dr4
 46a: c500c03d0c803000       mov      u102, r0
 472: c508e03d0c803000       mov      u103, r1
 47a: c520003d0d80f000       mov      du104, dr4
 482: c500403d0d803000       mov      u106, r0
 48a: c508603d0d803000       mov      u107, r1
 492: c520803d0d80f000       mov      du108, dr4
 49a: c500c03d0d803000       mov      u110, r0
 4a2: c508e03d0d803000       mov      u111, r1
 4aa: c520003d0e80f000       mov      du112, dr4
 4b2: c500403d0e803000       mov      u114, r0
 4ba: c508603d0e803000       mov      u115, r1
 4c2: c520803d0e80f000       mov      du116, dr4
 4ca: c500c03d0e803000       mov      u118, r0
 4d2: c508e03d0e803000       mov      u119, r1
 4da: c520003d0f80f000       mov      du120, dr4
 4e2: c500403d0f803000       mov      u122, r0
 4ea: c508603d0f803000       mov      u123, r1
 4f2: c520803d0f80f000       mov      du124, dr4
 4fa: c500c03d0f803000       mov      u126, r0
 502: c508e03d0f803000       mov      u127, r1
 50a: c520003d0080f001       mov      du128, dr4
 512: c500403d00803001       mov      u130, r0
 51a: c508603d00803001       mov      u131, r1
 522: c520803d0080f001       mov      du132, dr4
 52a: c500c03d00803001       mov      u134, r0
 532: c508e03d00803001       mov      u135, r1
 53a: c520003d0180f001       mov      du136, dr4
 542: c500403d01803001       mov      u138, r0
 54a: c508603d01803001       mov      u139, r1
 552: c520803d0180f001       mov      du140, dr4
 55a: c500c03d01803001       mov      u142, r0
 562: c508e03d01803001       mov      u143, r1
 56a: c520003d0280f001       mov      du144, dr4
 572: c500403d02803001       mov      u146, r0
 57a: c508603d02803001       mov      u147, r1
 582: c520803d0280f001       mov      du148, dr4
 58a: c500c03d02803001       mov      u150, r0
 592: c508e03d02803001       mov      u151, r1
 59a: c520003d0380f001       mov      du152, dr4
 5a2: c500403d03803001       mov      u154, r0
 5aa: c508603d03803001       mov      u155, r1
 5b2: c520803d0380f001       mov      du156, dr4
 5ba: c500c03d03803001       mov      u158, r0
 5c2: c508e03d03803001       mov      u159, r1
 5ca: c520003d0480f001       mov      du160, dr4
 5d2: c500403d04803001       mov      u162, r0
 5da: c508603d04803001       mov      u163, r1
 5e2: c520803d0480f001       mov      du164, dr4
 5ea: 8800                   stop
