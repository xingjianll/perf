device: Apple M1 Ultra (G13D C0)
shader: MESA_SHADER_COMPUTE
source_blake3: {0x83560bba, 0x9ccace2e, 0xfb919484, 0x7ff74220, 0x6473ee91, 0x2293cd1b, 0xfe969b7a, 0xab5790c1}
workgroup_size: 128, 1, 1
num_ssbos: 1
system_values_read: 0x00000000'00000000'00000800'00000000
api_subgroup_size: 32
max_subgroup_size: 32
min_subgroup_size: 32
bit_sizes_float: 0x20
bit_sizes_int: 0x61
flrp_lowered: true
io_lowered: true
writes_memory: true
decl_function main () (entrypoint)

impl main {
    preamble @preamble
    block b0:   // preds:
    32x3   %0 = @load_global_invocation_id
    32     %1 = @load_preamble (base=8)
    64     %2 = @load_preamble (base=12)
    32     %3 = iadd %0.x, %1
    32     %4 = load_const (0x0000000a = 10)
    32     %5 = imul %3, %4 (0xa)
    32     %6 = @load_agx (%2, %5) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32     %7 = load_const (0x00000001)
    32     %8 = iadd %7 (0x1), %5
    32     %9 = @load_agx (%2, %8) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %10 = load_const (0x00000002)
    32    %11 = iadd %10 (0x2), %5
    32    %12 = @load_agx (%2, %11) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %13 = load_const (0x00000003)
    32    %14 = iadd %13 (0x3), %5
    32    %15 = @load_agx (%2, %14) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %16 = load_const (0x00000004)
    32    %17 = iadd %16 (0x4), %5
    32    %18 = @load_agx (%2, %17) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %19 = load_const (0x00000005)
    32    %20 = iadd %19 (0x5), %5
    32    %21 = @load_agx (%2, %20) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %22 = load_const (0x00000006)
    32    %23 = iadd %22 (0x6), %5
    32    %24 = @load_agx (%2, %23) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %25 = load_const (0x00000007)
    32    %26 = iadd %25 (0x7), %5
    32    %27 = @load_agx (%2, %26) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %28 = load_const (0x00000008)
    32    %29 = iadd %28 (0x8), %5
    32    %30 = @load_agx (%2, %29) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %31 = load_const (0x00000009)
    32    %32 = iadd %31 (0x9), %5
    32    %33 = @load_agx (%2, %32) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    32    %34 = load_const (0x00000000)
                // succs: b1
    loop {
        block b1:   // preds: b0 b4
        32    %35 = phi b0: %34 (0x0), b4: %54
        32    %36 = phi b0: %27, b4: %53
        32    %37 = phi b0: %24, b4: %52
        32    %38 = phi b0: %21, b4: %51
        32    %39 = phi b0: %18, b4: %50
        32    %40 = phi b0: %15, b4: %49
        32    %41 = phi b0: %12, b4: %48
        32    %42 = phi b0: %9, b4: %47
        32    %43 = phi b0: %6, b4: %46
        32    %44 = load_const (0x00010000 = 65536)
        1     %45 = uge %35, %44 (0x10000)
                    // succs: b2 b3
        if %45 {
            block b2:// preds: b1
            break
            // succs: b5
        } else {
            block b3:  // preds: b1, succs: b4
        }
        block b4:   // preds: b3
        32    %46 = ffma %30, %33, %43
        32    %47 = ffma %30, %33, %42
        32    %48 = ffma %30, %33, %41
        32    %49 = ffma %30, %33, %40
        32    %50 = ffma %30, %33, %39
        32    %51 = ffma %30, %33, %38
        32    %52 = ffma %30, %33, %37
        32    %53 = ffma %30, %33, %36
        32    %54 = iadd %35, %7 (0x1)
                    // succs: b1
    }
    block b5:// preds: b2
    @store_agx (%43, %2, %5) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%42, %2, %8) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%41, %2, %11) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%40, %2, %14) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%39, %2, %17) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%38, %2, %20) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%37, %2, %23) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    @store_agx (%36, %2, %26) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    // succs: b6
    block b6:
}

decl_function @preamble ()

impl @preamble {
    block b0:  // preds:
    64    %0 = @load_preamble (base=0)
    32    %1 = load_const (0x00000007)
    32    %2 = load_const (0x00000005 = 0.000000)
    32x3  %3 = @load_constant_agx (%0, %2 (0x5)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
    32    %4 = ishl %3.x, %1 (0x7)
               @store_preamble (%4) (base=8)
    64    %5 = @load_preamble (base=4)
    32    %6 = load_const (0x00000000 = 0.000000)
    32x4  %7 = @load_constant_agx (%5, %6 (0x0)) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    64    %8 = pack_64_2x32_split %7.x, %7.y
               @store_preamble (%8) (base=12)
               // succs: b1
    block b1:
}

block0 {
   55 = get_sr #0x50
   3 = iadd 55, u4, #0x0
   5 = imad 3, #10, #0, #0x0
   6 = device_load u6:u7, 5.abs, x, #0x0, slot 0
   8 = iadd #1, 5, #0x0
   9 = device_load u6:u7, 8.abs, x, #0x0, slot 0
   11 = iadd #2, 5, #0x0
   12 = device_load u6:u7, 11.abs, x, #0x0, slot 0
   14 = iadd #3, 5, #0x0
   15 = device_load u6:u7, 14.abs, x, #0x0, slot 0
   17 = iadd #4, 5, #0x0
   18 = device_load u6:u7, 17.abs, x, #0x0, slot 0
   20 = iadd #5, 5, #0x0
   21 = device_load u6:u7, 20.abs, x, #0x0, slot 0
   23 = iadd #6, 5, #0x0
   24 = device_load u6:u7, 23.abs, x, #0x0, slot 0
   26 = iadd #7, 5, #0x0
   27 = device_load u6:u7, 26.abs, x, #0x0, slot 0
   29 = iadd #8, 5, #0x0
   30 = device_load u6:u7, 29.abs, x, #0x0, slot 0
   32 = iadd #9, 5, #0x0
   33 = device_load u6:u7, 32.abs, x, #0x0, slot 0
   begin_cf 
} -> block1 

block1 {
   35 = phi #0, 54
   36 = phi 27, 53
   37 = phi 24, 52
   38 = phi 21, 51
   39 = phi 18, 50
   40 = phi 15, 49
   41 = phi 12, 48
   42 = phi 9, 47
   43 = phi 6, 46
   if_icmp 35, u8, #0xaaab04f189d0, n=1, inv
} -> block2 block3  from block0 block4

block2 {
   break #0xaaab04f17e10, n=2
} -> block5  from block1

block3 {
   else_fcmp #0.000000, #0.000000, #0xaaab04f189d0, n=1
   pop_exec #0x0, n=1
} -> block4  from block1

block4 {
   46 = ffma 30, 33, 43
   47 = ffma 30, 33, 42
   48 = ffma 30, 33, 41
   49 = ffma 30, 33, 40
   50 = ffma 30, 33, 39
   51 = ffma 30, 33, 38
   52 = ffma 30, 33, 37
   53 = ffma 30, 33, 36
   54 = iadd 35, #1, #0x0
   jmp_exec_any #0xaaab04f17f50
   pop_exec #0x0, n=1
} -> block1  from block3

block5 {
   device_store 43, u6:u7, 5.abs, x, #0x0, slot 0
   device_store 42, u6:u7, 8.abs, x, #0x0, slot 0
   device_store 41, u6:u7, 11.abs, x, #0x0, slot 0
   device_store 40, u6:u7, 14.abs, x, #0x0, slot 0
   device_store 39, u6:u7, 17.abs, x, #0x0, slot 0
   device_store 38, u6:u7, 20.abs, x, #0x0, slot 0
   device_store 37, u6:u7, 23.abs, x, #0x0, slot 0
   device_store 36, u6:u7, 26.abs, x, #0x0, slot 0
   stop 
} from block2

block0 {
   55 = get_sr #0x50
   3 = iadd 55, u4, #0x0
   5 = imad 3, #10, #0, #0x0
   6 = device_load u6:u7, 5.abs, x, #0x0, slot 0
   8 = iadd #1, 5, #0x0
   9 = device_load u6:u7, 8.abs, x, #0x0, slot 0
   11 = iadd #2, 5, #0x0
   12 = device_load u6:u7, 11.abs, x, #0x0, slot 0
   14 = iadd #3, 5, #0x0
   15 = device_load u6:u7, 14.abs, x, #0x0, slot 0
   17 = iadd #4, 5, #0x0
   18 = device_load u6:u7, 17.abs, x, #0x0, slot 0
   20 = iadd #5, 5, #0x0
   21 = device_load u6:u7, 20.abs, x, #0x0, slot 0
   23 = iadd #6, 5, #0x0
   24 = device_load u6:u7, 23.abs, x, #0x0, slot 0
   26 = iadd #7, 5, #0x0
   27 = device_load u6:u7, 26.abs, x, #0x0, slot 0
   29 = iadd #8, 5, #0x0
   30 = device_load u6:u7, 29.abs, x, #0x0, slot 0
   32 = iadd #9, 5, #0x0
   33 = device_load u6:u7, 32.abs, x, #0x0, slot 0
   begin_cf 
} -> block1 

block1 {
   35 = phi #0, 54
   36 = phi 27, 53
   37 = phi 24, 52
   38 = phi 21, 51
   39 = phi 18, 50
   40 = phi 15, 49
   41 = phi 12, 48
   42 = phi 9, 47
   43 = phi 6, 46
   if_icmp 35, u8, #0xaaab04f189d0, n=1, inv
} -> block2 block3  from block0 block4

block2 {
   break #0xaaab04f17e10, n=2
} -> block5  from block1

block3 {
   else_fcmp #0.000000, #0.000000, #0xaaab04f189d0, n=1
   pop_exec #0x0, n=1
} -> block4  from block1

block4 {
   46 = ffma 30, 33, 43
   47 = ffma 30, 33, 42
   48 = ffma 30, 33, 41
   49 = ffma 30, 33, 40
   50 = ffma 30, 33, 39
   51 = ffma 30, 33, 38
   52 = ffma 30, 33, 37
   53 = ffma 30, 33, 36
   54 = iadd 35, #1, #0x0
   jmp_exec_any #0xaaab04f17f50
   pop_exec #0x0, n=1
} -> block1  from block3

block5 {
   device_store 43, u6:u7, 5.abs, x, #0x0, slot 0
   device_store 42, u6:u7, 8.abs, x, #0x0, slot 0
   device_store 41, u6:u7, 11.abs, x, #0x0, slot 0
   device_store 40, u6:u7, 14.abs, x, #0x0, slot 0
   device_store 39, u6:u7, 17.abs, x, #0x0, slot 0
   device_store 38, u6:u7, 20.abs, x, #0x0, slot 0
   device_store 37, u6:u7, 23.abs, x, #0x0, slot 0
   device_store 36, u6:u7, 26.abs, x, #0x0, slot 0
   stop 
} from block2

block0 {
   $r1 = get_sr #0x50
   $r1 = iadd ^r1, u4, #0x0
   $r1 = imad ^r1, #10, #0, #0x0
   $r2 = device_load u6:u7, $r1.abs, x, #0x0, slot 0
   r3 = iadd #1, $r1, #0x0
   r4 = device_load u6:u7, r3.abs, x, #0x0, slot 1
   r5 = iadd #2, $r1, #0x0
   r6 = device_load u6:u7, r5.abs, x, #0x0, slot 0
   r7 = iadd #3, $r1, #0x0
   r8 = device_load u6:u7, r7.abs, x, #0x0, slot 0
   r9 = iadd #4, $r1, #0x0
   r10 = device_load u6:u7, r9.abs, x, #0x0, slot 0
   r11 = iadd #5, $r1, #0x0
   r12 = device_load u6:u7, r11.abs, x, #0x0, slot 0
   r13 = iadd #6, $r1, #0x0
   r14 = device_load u6:u7, r13.abs, x, #0x0, slot 0
   r15 = iadd #7, $r1, #0x0
   r16 = device_load u6:u7, r15.abs, x, #0x0, slot 0
   r17 = iadd #8, $r1, #0x0
   r17 = device_load u6:u7, ^r17.abs, x, #0x0, slot 0
   r18 = iadd #9, r1, #0x0
   wait #0x0, slot 0
   r18 = device_load u6:u7, ^r18.abs, x, #0x0, slot 0
   r0l = mov_imm #0x0
   r19 = mov1 ^r2, #0
   r2 = mov_imm #0x0
   wait #0x0, slot 0
   wait #0x0, slot 1
} -> block1 

block1 {
} -> block2 block3  from block0 block4

block2 {
} -> block5  from block1

block3 {
} -> block4  from block1

block4 {
   while_icmp $r2, u8, #0x0, n=1
   r19 = ffma $r17, $r18, r19
   r4 = ffma $r17, $r18, r4
   r6 = ffma $r17, $r18, r6
   r8 = ffma $r17, $r18, r8
   r10 = ffma $r17, $r18, r10
   r12 = ffma $r17, $r18, r12
   r14 = ffma $r17, $r18, r14
   r16 = ffma r17, r18, r16
   r2 = iadd r2, #1, #0x0
   jmp_exec_any #0xaaab04f17f50
   pop_exec #0x0, n=1
} -> block1  from block3

block5 {
   device_store r19, u6:u7, r1.abs, x, #0x0, slot 0
   device_store r4, u6:u7, r3.abs, x, #0x0, slot 1
   device_store r6, u6:u7, r5.abs, x, #0x0, slot 0
   device_store r8, u6:u7, r7.abs, x, #0x0, slot 0
   device_store r10, u6:u7, r9.abs, x, #0x0, slot 0
   device_store r12, u6:u7, r11.abs, x, #0x0, slot 0
   device_store r14, u6:u7, r13.abs, x, #0x0, slot 0
   device_store r16, u6:u7, r15.abs, x, #0x0, slot 0
   stop 
} from block2

   0: f2051004               mov      $r1, thread_in_grid_x
   4: 8e05c28658000000       iadd     $r1, ^r1.sx, u4.sx
   c: 9e05c2a600000000       imul     $r1, ^r1.sx, 10
  14: 05112c0e00c01200       load     r2, du6, r1, i32, x, a
  1c: 0e0d012068000000       iadd     r3, 1, $r1.sx
  24: 05216c4e00c01200       load     r4, du6, r3, i32, x, b
  2c: 0e15022068000000       iadd     r5, 2, $r1.sx
  34: 0531ac0e00c01200       load     r6, du6, r5, i32, x, a
  3c: 0e1d032068000000       iadd     r7, 3, $r1.sx
  44: 0541ec0e00c01200       load     r8, du6, r7, i32, x, a
  4c: 0e25042068000000       iadd     r9, 4, $r1.sx
  54: 05512c0e01c01200       load     r10, du6, r9, i32, x, a
  5c: 0e2d052068000000       iadd     r11, 5, $r1.sx
  64: 05616c0e01c01200       load     r12, du6, r11, i32, x, a
  6c: 0e35062068000000       iadd     r13, 6, $r1.sx
  74: 0571ac0e01c01200       load     r14, du6, r13, i32, x, a
  7c: 0e3d072068000000       iadd     r15, 7, $r1.sx
  84: 0581ec0e01c01200       load     r16, du6, r15, i32, x, a
  8c: 0e45082068000000       iadd     r17, 8, $r1.sx
  94: 05892c0e02c01200       load     r17, du6, r17, i32, x, a
  9c: 0e49092064000000       iadd     r18, 9, r1.sx
  a4: 3800                   wait     a
  a6: 05914c0e02c01200       load     r18, du6, r18, i32, x, a
  ae: 62000000               ldimm    r0l, 0
  b2: 7e4dc40a8000           mov      r19, ^r2
  b8: 620900000000           ldimm    r2, 0
  be: 3800                   wait     a
  c0: 3801                   wait     b
  c2: 522c84021900           while    $r2, u8, 1, ult
  c8: 3acda2422a660200       ffma     r19, $r17, $r18, r19
  d0: 3a91a2422a480200       ffma     r4, $r17, $r18, r4
  d8: 3a99a2422a4c0200       ffma     r6, $r17, $r18, r6
  e0: 3aa1a2422a500200       ffma     r8, $r17, $r18, r8
  e8: 3aa9a2422a540200       ffma     r10, $r17, $r18, r10
  f0: 3ab1a2422a580200       ffma     r12, $r17, $r18, r12
  f8: 3ab9a2422a5c0200       ffma     r14, $r17, $r18, r14
 100: 3ac1624226600200       ffma     r16, r17, r18, r16
 108: 0e09441600000000       iadd     r2, r2.sx, 1
 110: 00c0b2ffffff           jmp_any  -78
 116: 520e00000000           pop_exec 1
 11c: 45992WGs=2048  WG_SIZE=128  OUTER_ITERS=65536  FMAS/outer=8  -> 137438953472 FMAs/dispatch
outer_iters=10  inner_batch=16  per-dispatch=53.435726ms  5144.1 GFLOPS

Use this as the FMA-throughput ceiling: matmul/this = FMA utilization.
c0e00c01200       store    r19, du6, r1, i32, x, a
 124: 45216c4e00c01200       store    r4, du6, r3, i32, x, b
 12c: 4531ac0e00c01200       store    r6, du6, r5, i32, x, a
 134: 4541ec0e00c01200       store    r8, du6, r7, i32, x, a
 13c: 45512c0e01c01200       store    r10, du6, r9, i32, x, a
 144: 45616c0e01c01200       store    r12, du6, r11, i32, x, a
 14c: 4571ac0e01c01200       store    r14, du6, r13, i32, x, a
 154: 4581ec0e01c01200       store    r16, du6, r15, i32, x, a
 15c: 8800                   stop
block0 {
   3 = device_load u0:u1, #5, xyz, #0x0, slot 0
   9, _, _ = split 3
   4 = bfi #0, 9, #7, #0x0
   uniform_store 4, #8, x, #0x0
   7 = device_load u2:u3, #0, xyzw, #0x0, slot 0
   13, 14, _, _ = split 7
   8d = collect 13, 14
   17d = mov 8d
   uniform_store 17d, #12, x, #0x0
   stop 
}

block0 {
   3 = device_load u0:u1, #5, xyz, #0x0, slot 0
   9, _, _ = split 3
   4 = bfi #0, 9, #7, #0x0
   uniform_store 4, #8, x, #0x0
   7 = device_load u2:u3, #0, xyzw, #0x0, slot 0
   13, 14, _, _ = split 7
   8d = collect 13, 14
   17d = mov 8d
   uniform_store 17d, #12, x, #0x0
   stop 
}

block0 {
   $r0...r2 = device_load u0:u1, #5, xyz, #0x0, slot 0
   wait #0x0, slot 0
   r0 = bfi #0, ^r0, #7, #0x0
   uniform_store ^r0, #8, x, #0x0
   r0...r3 = device_load u2:u3, #0, xyzw, #0x0, slot 0
   wait #0x0, slot 0
   uniform_store ^r0:r1, #12, x, #0x0
   stop 
}

   0: 0501500d00c87200       load     r0_r1_r2, du0, 5, lsl 2, i32, xyz, a
   8: 3800                   wait     a
   a: 2e0100002c070000       shl      r0, ^r0, 7
  12: c500803d00803000       mov      u4, r0
  1a: 0501040d00c0f200       load     r0_r1_r2_r3, du2, 0, i32, xyzw, a
  22: 3800                   wait     a
  24: c500c03d0080f000       mov      du6, dr0
  2c: 8800                   stop
