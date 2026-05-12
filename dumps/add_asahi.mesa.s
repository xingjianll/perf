shader: MESA_SHADER_COMPUTE
source_blake3: {0xd331222e, 0x35743631, 0x4519e9d1, 0x9d40cce3, 0x5fed8e1e, 0x365c5383, 0xdfb464a0, 0x8ea4f0a5}
workgroup_size: 256, 1, 1
num_ssbos: 4
system_values_read: 0x00000000'00000000'00003000'00000000
subgroup_size: 2
bit_sizes_float: 0x20
bit_sizes_int: 0x21
io_lowered: true
writes_memory: true
uniforms: 116
decl_function main () (entrypoint)

impl main {
    preamble @preamble
    block b0:    // preds:
    32x3    %0 = @load_global_invocation_id
    32x3    %1 = @load_preamble (base=8)
    32      %2 = @load_preamble (base=14)
    32      %3 = load_const (0x00000000)
    32      %4 = iadd %0.y, %1.y
    32      %5 = iadd %0.z, %1.z
    32      %6 = load_const (0x00000012 = 18)
    32      %7 = ishl %5, %6 (0x12)
    32      %8 = load_const (0x00000200 = 512)
    32      %9 = imadshl_agx %4, %8 (0x200), %7, %3 (0x0)
    32     %10 = iadd %0.x, %2
    32     %11 = iadd %9, %10
    1      %12 = load_const (false)
    32     %13 = load_const (0x00000001)
                 // succs: b1
    loop {
        block b1:    // preds: b0 b7
        1      %14 = phi b0: %12 (false), b7: %183 (true)
        32     %15 = phi b0: %3 (0x0), b7: %18
        32     %16 = phi b0: %11, b7: %182
        32     %17 = iadd %15, %13 (0x1)
        32     %18 = bcsel %14, %17, %15
        32     %19 = load_const (0x00000002)
        1      %20 = uge %18, %19 (0x2)
                     // succs: b2 b3
        if %20 {
            block b2:// preds: b1
            break
            // succs: b8
        } else {
            block b3:  // preds: b1, succs: b4
        }
        block b4:    // preds: b3
        32     %21 = @load_preamble (base=16)
        1      %22 = ult %16, %21
                     // succs: b5 b6
        if %22 {
            block b5:    // preds: b4
            32     %23 = @load_preamble (base=18)
            32     %24 = @load_preamble (base=20)
            32     %25 = @load_preamble (base=22)
            32     %26 = @load_preamble (base=24)
            32     %27 = @load_preamble (base=26)
            32     %28 = umul_high! %16, %27
            32     %29 = imul! %28, %26
            32     %30 = isub! %16, %29
            32     %31 = iadd! %28, %13 (0x1)
            1      %32 = uge! %30, %26
            32     %33 = bcsel! %32, %31, %28
            32     %34 = @load_preamble (base=28)
            32     %35 = iadd! %30, %34
            32     %36 = bcsel! %32, %35, %30
            32     %37 = iadd! %33, %13 (0x1)
            1      %38 = uge! %36, %26
            32     %39 = bcsel! %38, %37, %33
            1      %40 = ult %16, %26
            32     %41 = bcsel %40, %3 (0x0), %39
            32     %42 = imul %41, %23
            32     %43 = imul %42, %25
            32     %44 = imul %43, %24
            32     %45 = isub %16, %44
            32     %46 = @load_preamble (base=30)
            32     %47 = @load_preamble (base=32)
            32     %48 = umul_high! %45, %47
            32     %49 = imul! %48, %46
            32     %50 = isub! %45, %49
            32     %51 = iadd! %48, %13 (0x1)
            1      %52 = uge! %50, %46
            32     %53 = bcsel! %52, %51, %48
            32     %54 = @load_preamble (base=34)
            32     %55 = iadd! %50, %54
            32     %56 = bcsel! %52, %55, %50
            32     %57 = iadd! %53, %13 (0x1)
            1      %58 = uge! %56, %46
            32     %59 = bcsel! %58, %57, %53
            1      %60 = ult %45, %46
            32     %61 = bcsel %60, %3 (0x0), %59
            32     %62 = imul %61, %25
            32     %63 = imul %62, %24
            32     %64 = isub %45, %63
            32     %65 = @load_preamble (base=36)
            32     %66 = umul_high! %64, %65
            32     %67 = imul! %66, %24
            32     %68 = isub! %64, %67
            32     %69 = iadd! %66, %13 (0x1)
            1      %70 = uge! %68, %24
            32     %71 = bcsel! %70, %69, %66
            32     %72 = @load_preamble (base=38)
            32     %73 = iadd! %68, %72
            32     %74 = bcsel! %70, %73, %68
            32     %75 = iadd! %71, %13 (0x1)
            1      %76 = uge! %74, %24
            32     %77 = bcsel! %76, %75, %71
            32     %78 = imul %77, %24
            32     %79 = isub %64, %78
            32     %80 = @load_preamble (base=40)
            32     %81 = @load_preamble (base=42)
            32     %82 = @load_preamble (base=44)
            32     %83 = @load_preamble (base=46)
            32     %84 = imul %77, %83
            32     %85 = imadshl_agx %61, %81, %84, %3 (0x0)
            32     %86 = imadshl_agx %41, %80, %85, %3 (0x0)
            32     %87 = imadshl_agx %79, %82, %86, %3 (0x0)
            32     %88 = @load_preamble (base=48)
            64     %89 = @load_preamble (base=52)
            32     %90 = iadd %88, %87
            32     %91 = @load_agx (%89, %90) (access=readonly|reorderable|speculatable, base=0, format=r32_uint, sign_extend=0)
            32     %92 = @load_preamble (base=56)
            32     %93 = @load_preamble (base=58)
            32     %94 = @load_preamble (base=60)
            32     %95 = umul_high! %41, %94
            32     %96 = imul! %95, %92
            32     %97 = isub! %41, %96
            32     %98 = @load_preamble (base=62)
            1      %99 = uge! %97, %92
            32    %100 = iadd! %97, %98
            32    %101 = bcsel! %99, %100, %97
            1     %102 = uge! %101, %92
            32    %103 = iadd! %101, %98
            32    %104 = bcsel! %102, %103, %101
            1     %105 = @load_preamble (base=64)
            32    %106 = iand %41, %93
            32    %107 = bcsel %105, %106, %104
            32    %108 = @load_preamble (base=66)
            32    %109 = @load_preamble (base=68)
            32    %110 = @load_preamble (base=70)
            32    %111 = @load_preamble (base=72)
            32    %112 = umul_high! %61, %111
            32    %113 = imul! %112, %109
            32    %114 = isub! %61, %113
            32    %115 = @load_preamble (base=74)
            1     %116 = uge! %114, %109
            32    %117 = iadd! %114, %115
            32    %118 = bcsel! %116, %117, %114
            1     %119 = uge! %118, %109
            32    %120 = iadd! %118, %115
            32    %121 = bcsel! %119, %120, %118
            1     %122 = @load_preamble (base=76)
            32    %123 = iand %61, %110
            32    %124 = bcsel %122, %123, %121
            32    %125 = @load_preamble (base=78)
            32    %126 = @load_preamble (base=80)
            32    %127 = @load_preamble (base=82)
            32    %128 = @load_preamble (base=84)
            32    %129 = @load_preamble (base=86)
            32    %130 = umul_high! %77, %129
            32    %131 = imul! %130, %127
            32    %132 = isub! %77, %131
            32    %133 = @load_preamble (base=88)
            1     %134 = uge! %132, %127
            32    %135 = iadd! %132, %133
            32    %136 = bcsel! %134, %135, %132
            1     %137 = uge! %136, %127
            32    %138 = iadd! %136, %133
            32    %139 = bcsel! %137, %138, %136
            1     %140 = @load_preamble (base=90)
            32    %141 = iand %77, %128
            32    %142 = bcsel %140, %141, %139
            32    %143 = @load_preamble (base=92)
            32    %144 = @load_preamble (base=94)
            32    %145 = imul %142, %144
            32    %146 = imadshl_agx %124, %125, %145, %3 (0x0)
            32    %147 = imadshl_agx %107, %108, %146, %3 (0x0)
            32    %148 = @load_preamble (base=96)
            32    %149 = @load_preamble (base=98)
            32    %150 = umul_high! %79, %149
            32    %151 = imul! %150, %126
            32    %152 = isub! %79, %151
            32    %153 = @load_preamble (base=100)
            1     %154 = uge! %152, %126
            32    %155 = iadd! %152, %153
            32    %156 = bcsel! %154, %155, %152
            1     %157 = uge! %156, %126
            32    %158 = iadd! %156, %153
            32    %159 = bcsel! %157, %158, %156
            1     %160 = @load_preamble (base=102)
            32    %161 = iand %79, %148
            32    %162 = bcsel %160, %161, %159
            32    %163 = imadshl_agx %162, %143, %147, %3 (0x0)
            32    %164 = @load_preamble (base=104)
            64    %165 = @load_preamble (base=108)
            32    %166 = iadd %164, %163
            32    %167 = @load_agx (%165, %166) (access=readonly|reorderable|speculatable, base=0, format=r32_uint, sign_extend=0)
            32    %168 = fadd %91, %167
            32    %169 = @load_preamble (base=112)
            32    %170 = @load_preamble (base=114)
            32    %171 = @load_preamble (base=116)
            32    %172 = @load_preamble (base=118)
            32    %173 = imul %77, %172
            32    %174 = imadshl_agx %61, %170, %173, %3 (0x0)
            32    %175 = imadshl_agx %41, %169, %174, %3 (0x0)
            32    %176 = imadshl_agx %79, %171, %175, %3 (0x0)
            32    %177 = @load_preamble (base=120)
            64    %178 = @load_preamble (base=124)
            32    %179 = iadd %177, %176
                         @store_agx (%168, %178, %179) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
            32    %180 = load_const (0x00000100 = 256)
            32    %181 = iadd %16, %180 (0x100)
                         // succs: b7
        } else {
            block b6:  // preds: b4, succs: b7
        }
        block b7:    // preds: b5 b6
        32    %182 = phi b5: %181, b6: %16
        1     %183 = load_const (true)
                     // succs: b1
    }
    block b8:  // preds: b2, succs: b9
    block b9:
}

decl_function @preamble ()

impl @preamble {
    block b0:    // preds:
    64      %0 = @load_preamble (base=0)
    32      %1 = load_const (0x00000001 = 0.000000)
    32x3    %2 = @load_constant_agx (%0, %1 (0x1)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
                 @store_preamble (%2) (base=8)
    32      %3 = load_const (0x00000008)
    32      %4 = ishl %2.x, %3 (0x8)
                 @store_preamble (%4) (base=14)
    32      %5 = load_const (0x00000017 = 0.000000 = 23)
    32      %6 = @load_constant_agx (%0, %5 (0x17)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
                 @store_preamble (%6) (base=16)
    32      %7 = load_const (0x0000005d = 0.000000 = 93)
    32x3    %8 = @load_constant_agx (%0, %7 (0x5d)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
    32      %9 = mov %8.z
                 @store_preamble (%9) (base=18)
    32     %10 = mov %8.x
                 @store_preamble (%10) (base=20)
    32     %11 = mov %8.y
                 @store_preamble (%11) (base=22)
    32     %12 = imul %8.z, %8.y
    32     %13 = imul %12, %8.x
                 @store_preamble (%13) (base=24)
    32     %14 = u2f32! %13
    32     %15 = fneg %14
    32     %16 = frcp %14
    32     %17 = load_const (0x3f800000 = 1.000000)
    32     %18 = ffma %15, %16, %17 (1.000000)
    32     %19 = ffma %18, %16, %16
    1      %20 = fneu! %19, %19
    32     %21 = bcsel %20, %16, %19
    32     %22 = load_const (0x4f7ffffe = 4.294967e+09)
    32     %23 = fmul! %21, %22 (4.294967e+09)
    32     %24 = f2u32! %23
    32     %25 = imul! %13, %24
    32     %26 = ineg! %25
    32     %27 = umul_high! %24, %26
    32     %28 = iadd! %24, %27
                 @store_preamble (%28) (base=26)
    32     %29 = ineg! %13
                 @store_preamble (%29) (base=28)
    32     %30 = imul %8.y, %8.x
                 @store_preamble (%30) (base=30)
    32     %31 = u2f32! %30
    32     %32 = fneg %31
    32     %33 = frcp %31
    32     %34 = ffma %32, %33, %17 (1.000000)
    32     %35 = ffma %34, %33, %33
    1      %36 = fneu! %35, %35
    32     %37 = bcsel %36, %33, %35
    32     %38 = fmul! %37, %22 (4.294967e+09)
    32     %39 = f2u32! %38
    32     %40 = imul! %30, %39
    32     %41 = ineg! %40
    32     %42 = umul_high! %39, %41
    32     %43 = iadd! %39, %42
                 @store_preamble (%43) (base=32)
    32     %44 = ineg! %30
                 @store_preamble (%44) (base=34)
    32     %45 = u2f32! %8.x
    32     %46 = fneg %45
    32     %47 = frcp %45
    32     %48 = ffma %46, %47, %17 (1.000000)
    32     %49 = ffma %48, %47, %47
    1      %50 = fneu! %49, %49
    32     %51 = bcsel %50, %47, %49
    32     %52 = fmul! %51, %22 (4.294967e+09)
    32     %53 = f2u32! %52
    32     %54 = imul! %8.x, %53
    32     %55 = ineg! %54
    32     %56 = umul_high! %53, %55
    32     %57 = iadd! %53, %56
                 @store_preamble (%57) (base=36)
    32     %58 = ineg! %8.x
                 @store_preamble (%58) (base=38)
    32     %59 = load_const (0x00000061 = 0.000000 = 97)
    32x4   %60 = @load_constant_agx (%0, %59 (0x61)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
    32     %61 = mov %60.w
                 @store_preamble (%61) (base=40)
    32     %62 = mov %60.z
                 @store_preamble (%62) (base=42)
    32     %63 = mov %60.x
                 @store_preamble (%63) (base=44)
    32     %64 = mov %60.y
                 @store_preamble (%64) (base=46)
    32     %65 = load_const (0x00000075 = 0.000000 = 117)
    32     %66 = @load_constant_agx (%0, %65 (0x75)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
    16     %67 = unpack_32_2x16_split_y %66
    32     %68 = u2u32 %67
                 @store_preamble (%68) (base=48)
    32     %69 = load_const (0x00000027 = 0.000000 = 39)
    32x2   %70 = @load_constant_agx (%0, %69 (0x27)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
    64     %71 = pack_64_2x32_split %70.x, %70.y
    32     %72 = load_const (0x00000000)
    32x4   %73 = @load_constant_agx (%71, %72 (0x0)) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    64     %74 = pack_64_2x32_split %73.x, %73.y
                 @store_preamble (%74) (base=52)
    32     %75 = load_const (0x00000065 = 0.000000 = 101)
    32x4   %76 = @load_constant_agx (%0, %75 (0x65)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
    32     %77 = mov %76.w
                 @store_preamble (%77) (base=56)
    32     %78 = load_const (0xffffffff = -1 = 4294967295)
    32     %79 = iadd %76.w, %78 (0xffffffff)
                 @store_preamble (%79) (base=58)
    32     %80 = iand %76.w, %79
    32     %81 = u2f32! %76.w
    32     %82 = fneg %81
    32     %83 = frcp %81
    32     %84 = ffma %82, %83, %17 (1.000000)
    32     %85 = ffma %84, %83, %83
    1      %86 = fneu! %85, %85
    32     %87 = bcsel %86, %83, %85
    32     %88 = fmul! %87, %22 (4.294967e+09)
    32     %89 = f2u32! %88
    32     %90 = imul! %76.w, %89
    32     %91 = ineg! %90
    32     %92 = umul_high! %89, %91
    32     %93 = iadd! %89, %92
                 @store_preamble (%93) (base=60)
    32     %94 = ineg! %76.w
                 @store_preamble (%94) (base=62)
    1      %95 = ieq %80, %72 (0x0)
                 @store_preamble (%95) (base=64)
    32     %96 = load_const (0x00000069 = 0.000000 = 105)
    32x4   %97 = @load_constant_agx (%0, %96 (0x69)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
    32     %98 = mov %97.w
                 @store_preamble (%98) (base=66)
    32     %99 = mov %76.z
                 @store_preamble (%99) (base=68)
    32    %100 = iadd %76.z, %78 (0xffffffff)
                 @store_preamble (%100) (base=70)
    32    %101 = iand %76.z, %100
    32    %102 = u2f32! %76.z
    32    %103 = fneg %102
    32    %104 = frcp %102
    32    %105 = ffma %103, %104, %17 (1.000000)
    32    %106 = ffma %105, %104, %104
    1     %107 = fneu! %106, %106
    32    %108 = bcsel %107, %104, %106
    32    %109 = fmul! %108, %22 (4.294967e+09)
    32    %110 = f2u32! %109
    32    %111 = imul! %76.z, %110
    32    %112 = ineg! %111
    32    %113 = umul_high! %110, %112
    32    %114 = iadd! %110, %113
                 @store_preamble (%114) (base=72)
    32    %115 = ineg! %76.z
                 @store_preamble (%115) (base=74)
    1     %116 = ieq %101, %72 (0x0)
                 @store_preamble (%116) (base=76)
    32    %117 = mov %97.z
                 @store_preamble (%117) (base=78)
    32    %118 = mov %76.x
                 @store_preamble (%118) (base=80)
    32    %119 = mov %76.y
                 @store_preamble (%119) (base=82)
    32    %120 = iadd %76.y, %78 (0xffffffff)
                 @store_preamble (%120) (base=84)
    32    %121 = iand %76.y, %120
    32    %122 = u2f32! %76.y
    32    %123 = fneg %122
    32    %124 = frcp %122
    32    %125 = ffma %123, %124, %17 (1.000000)
    32    %126 = ffma %125, %124, %124
    1     %127 = fneu! %126, %126
    32    %128 = bcsel %127, %124, %126
    32    %129 = fmul! %128, %22 (4.294967e+09)
    32    %130 = f2u32! %129
    32    %131 = imul! %76.y, %130
    32    %132 = ineg! %131
    32    %133 = umul_high! %130, %132
    32    %134 = iadd! %130, %133
                 @store_preamble (%134) (base=86)
    32    %135 = ineg! %76.y
                 @store_preamble (%135) (base=88)
    1     %136 = ieq %121, %72 (0x0)
                 @store_preamble (%136) (base=90)
    32    %137 = mov %97.x
                 @store_preamble (%137) (base=92)
    32    %138 = mov %97.y
                 @store_preamble (%138) (base=94)
    32    %139 = iadd %76.x, %78 (0xffffffff)
                 @store_preamble (%139) (base=96)
    32    %140 = iand %76.x, %139
    32    %141 = u2f32! %76.x
    32    %142 = fneg %141
    32    %143 = frcp %141
    32    %144 = ffma %142, %143, %17 (1.000000)
    32    %145 = ffma %144, %143, %143
    1     %146 = fneu! %145, %145
    32    %147 = bcsel %146, %143, %145
    32    %148 = fmul! %147, %22 (4.294967e+09)
    32    %149 = f2u32! %148
    32    %150 = imul! %76.x, %149
    32    %151 = ineg! %150
    32    %152 = umul_high! %149, %151
    32    %153 = iadd! %149, %152
                 @store_preamble (%153) (base=98)
    32    %154 = ineg! %76.x
                 @store_preamble (%154) (base=100)
    1     %155 = ieq %140, %72 (0x0)
                 @store_preamble (%155) (base=102)
    32    %156 = ubitfield_extract %66, %3 (0x8), %3 (0x8)
                 @store_preamble (%156) (base=104)
    32x4  %157 = @load_constant_agx (%71, %1 (0x1)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
    64    %158 = pack_64_2x32_split %157.x, %157.y
                 @store_preamble (%158) (base=108)
    32    %159 = load_const (0x00000071 = 0.000000 = 113)
    32x4  %160 = @load_constant_agx (%0, %159 (0x71)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
    32    %161 = mov %160.w
                 @store_preamble (%161) (base=112)
    32    %162 = mov %160.z
                 @store_preamble (%162) (base=114)
    32    %163 = mov %160.x
                 @store_preamble (%163) (base=116)
    32    %164 = mov %160.y
                 @store_preamble (%164) (base=118)
    32    %165 = load_const (0x000000ff = 255)
    32    %166 = iand %66, %165 (0xff)
                 @store_preamble (%166) (base=120)
    32    %167 = load_const (0x00000002 = 0.000000)
    32x4  %168 = @load_constant_agx (%71, %167 (0x2)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
    64    %169 = pack_64_2x32_split %168.x, %168.y
                 @store_preamble (%169) (base=124)
                 // succs: b1
    block b1:
}

block0 {
   184 = get_sr #50
   185 = get_sr #51
   186 = get_sr #52
   4 = iadd 185, u5, #0
   5 = iadd 186, u6, #0
   7 = bfi #0, 5, #18, #0
   9 = imad 4, u64, 7, #0
   10 = iadd 184, u7, #0
   11 = iadd 9, 10, #0
   begin_cf 
} -> block1 

block1 {
   14h = phi #0, 183h
   15 = phi #0, 18
   16 = phi 11, 182
   17 = iadd 15, #1, #0
   18 = icmpsel 14h, #0, 15, 17, #0
   if_icmp 18, #2, #aaab575702d0, n=1, inv
} -> block2 block3  from block0 block7

block2 {
   break #aaab575732c0, n=2
} -> block8  from block1

block3 {
   else_fcmp #0.000000, #0.000000, #aaab575702d0, n=1
   pop_exec #0, n=1
} -> block4  from block1

block4 {
   if_icmp 16, u8, #aaab575636c0, n=1
} -> block5 block6  from block3

block5 {
   187d = imad 16.abs, u13.abs, #0, #0
   _, 28 = split 187d
   29 = imad 28, u12, #0, #0
   30 = iadd 16, 29.neg, #0
   31 = iadd 28, #1, #0
   33 = icmpsel 30, u12, 28, 31, #0
   35 = iadd 30, u14, #0
   36 = icmpsel 30, u12, 30, 35, #0
   37 = iadd 33, #1, #0
   39 = icmpsel 36, u12, 33, 37, #0
   41 = icmpsel 16, u12, #0, 39, #0
   42 = imad 41, u9, #0, #0
   43 = imad 42, u11, #0, #0
   44 = imad 43, u10, #0, #0
   45 = iadd 16, 44.neg, #0
   189d = imad 45.abs, u16.abs, #0, #0
   _, 48 = split 189d
   49 = imad 48, u15, #0, #0
   50 = iadd 45, 49.neg, #0
   51 = iadd 48, #1, #0
   53 = icmpsel 50, u15, 48, 51, #0
   55 = iadd 50, u17, #0
   56 = icmpsel 50, u15, 50, 55, #0
   57 = iadd 53, #1, #0
   59 = icmpsel 56, u15, 53, 57, #0
   61 = icmpsel 45, u15, #0, 59, #0
   62 = imad 61, u11, #0, #0
   63 = imad 62, u10, #0, #0
   64 = iadd 45, 63.neg, #0
   191d = imad 64.abs, u18.abs, #0, #0
   _, 66 = split 191d
   67 = imad 66, u10, #0, #0
   68 = iadd 64, 67.neg, #0
   69 = iadd 66, #1, #0
   71 = icmpsel 68, u10, 66, 69, #0
   73 = iadd 68, u19, #0
   74 = icmpsel 68, u10, 68, 73, #0
   75 = iadd 71, #1, #0
   77 = icmpsel 74, u10, 71, 75, #0
   78 = imad 77, u10, #0, #0
   79 = iadd 64, 78.neg, #0
   84 = imad 77, u23, #0, #0
   85 = imad 61, u21, 84, #0
   86 = imad 41, u20, 85, #0
   87 = imad 79, u22, 86, #0
   90 = iadd u24, 87, #0
   91 = device_load u26:u27, 90.abs, x, #0, slot 0
   194d = imad 41.abs, u30.abs, #0, #0
   _, 95 = split 194d
   96 = imad 95, u28, #0, #0
   97 = iadd 41, 96.neg, #0
   100 = iadd 97, u31, #0
   101 = icmpsel 97, u28, 97, 100, #0
   103 = iadd 101, u31, #0
   104 = icmpsel 101, u28, 101, 103, #0
   106 = and 41, u29
   107 = icmpsel u32l, #0, 104, 106, #0
   196d = imad 61.abs, u36.abs, #0, #0
   _, 112 = split 196d
   113 = imad 112, u34, #0, #0
   114 = iadd 61, 113.neg, #0
   117 = iadd 114, u37, #0
   118 = icmpsel 114, u34, 114, 117, #0
   120 = iadd 118, u37, #0
   121 = icmpsel 118, u34, 118, 120, #0
   123 = and 61, u35
   124 = icmpsel u38l, #0, 121, 123, #0
   198d = imad 77.abs, u43.abs, #0, #0
   _, 130 = split 198d
   131 = imad 130, u41, #0, #0
   132 = iadd 77, 131.neg, #0
   135 = iadd 132, u44, #0
   136 = icmpsel 132, u41, 132, 135, #0
   138 = iadd 136, u44, #0
   139 = icmpsel 136, u41, 136, 138, #0
   141 = and 77, u42
   142 = icmpsel u45l, #0, 139, 141, #0
   145 = imad 142, u47, #0, #0
   146 = imad 124, u39, 145, #0
   147 = imad 107, u33, 146, #0
   200d = imad 79.abs, u49.abs, #0, #0
   _, 150 = split 200d
   151 = imad 150, u40, #0, #0
   152 = iadd 79, 151.neg, #0
   155 = iadd 152, u50, #0
   156 = icmpsel 152, u40, 152, 155, #0
   158 = iadd 156, u50, #0
   159 = icmpsel 156, u40, 156, 158, #0
   161 = and 79, u48
   162 = icmpsel u51l, #0, 159, 161, #0
   163 = imad 162, u46, 147, #0
   166 = iadd u52, 163, #0
   167 = device_load u54:u55, 166.abs, x, #0, slot 0
   168 = fadd 91, 167
   173 = imad 77, u59, #0, #0
   174 = imad 61, u57, 173, #0
   175 = imad 41, u56, 174, #0
   176 = imad 79, u58, 175, #0
   179 = iadd u60, 176, #0
   device_store 168, u62:u63, 179.abs, x, #0, slot 0
   181 = iadd 16, u65, #0
} -> block7  from block4

block6 {
   else_fcmp #0.000000, #0.000000, #aaab575636c0, n=1
   pop_exec #0, n=1
} -> block7  from block4

block7 {
   182 = phi 181, 16
   183h = mov_imm #1
   jmp_exec_any #aaab575733a0
   pop_exec #0, n=1
} -> block1  from block5 block6

block8 {
   stop 
} from block2

block0 {
   186 = get_sr #52
   5 = iadd 186, u6, #0
   7 = bfi #0, 5, #18, #0
   185 = get_sr #51
   4 = iadd 185, u5, #0
   9 = imad 4, u64, 7, #0
   184 = get_sr #50
   10 = iadd 184, u7, #0
   11 = iadd 9, 10, #0
   begin_cf 
} -> block1 

block1 {
   14h = phi #0, 183h
   15 = phi #0, 18
   16 = phi 11, 182
   17 = iadd 15, #1, #0
   18 = icmpsel 14h, #0, 15, 17, #0
   if_icmp 18, #2, #aaab575702d0, n=1, inv
} -> block2 block3  from block0 block7

block2 {
   break #aaab575732c0, n=2
} -> block8  from block1

block3 {
   else_fcmp #0.000000, #0.000000, #aaab575702d0, n=1
   pop_exec #0, n=1
} -> block4  from block1

block4 {
   if_icmp 16, u8, #aaab575636c0, n=1
} -> block5 block6  from block3

block5 {
   187d = imad 16.abs, u13.abs, #0, #0
   _, 28 = split 187d
   29 = imad 28, u12, #0, #0
   30 = iadd 16, 29.neg, #0
   31 = iadd 28, #1, #0
   33 = icmpsel 30, u12, 28, 31, #0
   35 = iadd 30, u14, #0
   36 = icmpsel 30, u12, 30, 35, #0
   37 = iadd 33, #1, #0
   39 = icmpsel 36, u12, 33, 37, #0
   41 = icmpsel 16, u12, #0, 39, #0
   42 = imad 41, u9, #0, #0
   43 = imad 42, u11, #0, #0
   44 = imad 43, u10, #0, #0
   45 = iadd 16, 44.neg, #0
   189d = imad 45.abs, u16.abs, #0, #0
   _, 48 = split 189d
   49 = imad 48, u15, #0, #0
   50 = iadd 45, 49.neg, #0
   51 = iadd 48, #1, #0
   53 = icmpsel 50, u15, 48, 51, #0
   55 = iadd 50, u17, #0
   56 = icmpsel 50, u15, 50, 55, #0
   57 = iadd 53, #1, #0
   59 = icmpsel 56, u15, 53, 57, #0
   61 = icmpsel 45, u15, #0, 59, #0
   62 = imad 61, u11, #0, #0
   63 = imad 62, u10, #0, #0
   64 = iadd 45, 63.neg, #0
   191d = imad 64.abs, u18.abs, #0, #0
   _, 66 = split 191d
   67 = imad 66, u10, #0, #0
   68 = iadd 64, 67.neg, #0
   69 = iadd 66, #1, #0
   71 = icmpsel 68, u10, 66, 69, #0
   73 = iadd 68, u19, #0
   74 = icmpsel 68, u10, 68, 73, #0
   75 = iadd 71, #1, #0
   77 = icmpsel 74, u10, 71, 75, #0
   78 = imad 77, u10, #0, #0
   79 = iadd 64, 78.neg, #0
   84 = imad 77, u23, #0, #0
   85 = imad 61, u21, 84, #0
   86 = imad 41, u20, 85, #0
   87 = imad 79, u22, 86, #0
   90 = iadd u24, 87, #0
   91 = device_load u26:u27, 90.abs, x, #0, slot 0
   194d = imad 41.abs, u30.abs, #0, #0
   _, 95 = split 194d
   96 = imad 95, u28, #0, #0
   97 = iadd 41, 96.neg, #0
   100 = iadd 97, u31, #0
   101 = icmpsel 97, u28, 97, 100, #0
   103 = iadd 101, u31, #0
   104 = icmpsel 101, u28, 101, 103, #0
   106 = and 41, u29
   107 = icmpsel u32l, #0, 104, 106, #0
   196d = imad 61.abs, u36.abs, #0, #0
   _, 112 = split 196d
   113 = imad 112, u34, #0, #0
   114 = iadd 61, 113.neg, #0
   117 = iadd 114, u37, #0
   118 = icmpsel 114, u34, 114, 117, #0
   120 = iadd 118, u37, #0
   121 = icmpsel 118, u34, 118, 120, #0
   123 = and 61, u35
   124 = icmpsel u38l, #0, 121, 123, #0
   198d = imad 77.abs, u43.abs, #0, #0
   _, 130 = split 198d
   131 = imad 130, u41, #0, #0
   132 = iadd 77, 131.neg, #0
   135 = iadd 132, u44, #0
   136 = icmpsel 132, u41, 132, 135, #0
   138 = iadd 136, u44, #0
   139 = icmpsel 136, u41, 136, 138, #0
   141 = and 77, u42
   142 = icmpsel u45l, #0, 139, 141, #0
   145 = imad 142, u47, #0, #0
   146 = imad 124, u39, 145, #0
   147 = imad 107, u33, 146, #0
   200d = imad 79.abs, u49.abs, #0, #0
   _, 150 = split 200d
   151 = imad 150, u40, #0, #0
   152 = iadd 79, 151.neg, #0
   155 = iadd 152, u50, #0
   156 = icmpsel 152, u40, 152, 155, #0
   158 = iadd 156, u50, #0
   159 = icmpsel 156, u40, 156, 158, #0
   161 = and 79, u48
   162 = icmpsel u51l, #0, 159, 161, #0
   163 = imad 162, u46, 147, #0
   166 = iadd u52, 163, #0
   167 = device_load u54:u55, 166.abs, x, #0, slot 0
   168 = fadd 91, 167
   173 = imad 77, u59, #0, #0
   174 = imad 61, u57, 173, #0
   175 = imad 41, u56, 174, #0
   176 = imad 79, u58, 175, #0
   179 = iadd u60, 176, #0
   device_store 168, u62:u63, 179.abs, x, #0, slot 0
   181 = iadd 16, u65, #0
} -> block7  from block4

block6 {
   else_fcmp #0.000000, #0.000000, #aaab575636c0, n=1
   pop_exec #0, n=1
} -> block7  from block4

block7 {
   182 = phi 181, 16
   183h = mov_imm #1
   jmp_exec_any #aaab575733a0
   pop_exec #0, n=1
} -> block1  from block5 block6

block8 {
   stop 
} from block2

block0 {
   r1 = get_sr #52
   r1 = iadd r1, u6, #0
   r1 = bfi #0, r1, #18, #0
   r2 = get_sr #51
   r2 = iadd r2, u5, #0
   r1 = imad r2, u64, r1, #0
   r2 = get_sr #50
   r2 = iadd r2, u7, #0
   r1 = iadd r1, r2, #0
   r0l = mov_imm #0
   r0h = mov_imm #0
   r2 = bitop r1, #0, #a
   r1 = mov_imm #0
} -> block1 

block1 {
   r3 = iadd r1, #1, #0
   r3 = icmpsel r0h, #0, r1, r3, #0
} -> block2 block3  from block0 block7

block2 {
} -> block8  from block1

block3 {
} -> block4  from block1

block4 {
   while_icmp r3, #2, #0, n=1
   if_icmp r2, u8, #aaab575636c0, n=1
   jmp_exec_none #aaab575636c0
} -> block5 block6  from block3

block5 {
   r4:r5 = imad r2.abs, u13.abs, #0, #0
   r1 = imad r5, u12, #0, #0
   r1 = iadd r2, r1.neg, #0
   r4 = iadd r5, #1, #0
   r4 = icmpsel r1, u12, r5, r4, #0
   r5 = iadd r1, u14, #0
   r1 = icmpsel r1, u12, r1, r5, #0
   r5 = iadd r4, #1, #0
   r1 = icmpsel r1, u12, r4, r5, #0
   r1 = icmpsel r2, u12, #0, r1, #0
   r4 = imad r1, u9, #0, #0
   r4 = imad r4, u11, #0, #0
   r4 = imad r4, u10, #0, #0
   r4 = iadd r2, r4.neg, #0
   r6:r7 = imad r4.abs, u16.abs, #0, #0
   r5 = imad r7, u15, #0, #0
   r5 = iadd r4, r5.neg, #0
   r6 = iadd r7, #1, #0
   r6 = icmpsel r5, u15, r7, r6, #0
   r7 = iadd r5, u17, #0
   r5 = icmpsel r5, u15, r5, r7, #0
   r7 = iadd r6, #1, #0
   r5 = icmpsel r5, u15, r6, r7, #0
   r5 = icmpsel r4, u15, #0, r5, #0
   r6 = imad r5, u11, #0, #0
   r6 = imad r6, u10, #0, #0
   r4 = iadd r4, r6.neg, #0
   r6:r7 = imad r4.abs, u18.abs, #0, #0
   r6 = imad r7, u10, #0, #0
   r6 = iadd r4, r6.neg, #0
   r8 = iadd r7, #1, #0
   r7 = icmpsel r6, u10, r7, r8, #0
   r8 = iadd r6, u19, #0
   r6 = icmpsel r6, u10, r6, r8, #0
   r8 = iadd r7, #1, #0
   r6 = icmpsel r6, u10, r7, r8, #0
   r7 = imad r6, u10, #0, #0
   r4 = iadd r4, r7.neg, #0
   r7 = imad r6, u23, #0, #0
   r7 = imad r5, u21, r7, #0
   r7 = imad r1, u20, r7, #0
   r7 = imad r4, u22, r7, #0
   r7 = iadd u24, r7, #0
   r7 = device_load u26:u27, r7.abs, x, #0, slot 0
   r8:r9 = imad r1.abs, u30.abs, #0, #0
   r8 = imad r9, u28, #0, #0
   r8 = iadd r1, r8.neg, #0
   r9 = iadd r8, u31, #0
   r8 = icmpsel r8, u28, r8, r9, #0
   r9 = iadd r8, u31, #0
   r8 = icmpsel r8, u28, r8, r9, #0
   r9 = and r1, u29
   r8 = icmpsel u32l, #0, r8, r9, #0
   r10:r11 = imad r5.abs, u36.abs, #0, #0
   r9 = imad r11, u34, #0, #0
   r9 = iadd r5, r9.neg, #0
   r10 = iadd r9, u37, #0
   r9 = icmpsel r9, u34, r9, r10, #0
   r10 = iadd r9, u37, #0
   r9 = icmpsel r9, u34, r9, r10, #0
   r10 = and r5, u35
   r9 = icmpsel u38l, #0, r9, r10, #0
   r10:r11 = imad r6.abs, u43.abs, #0, #0
   r10 = imad r11, u41, #0, #0
   r10 = iadd r6, r10.neg, #0
   r11 = iadd r10, u44, #0
   r10 = icmpsel r10, u41, r10, r11, #0
   r11 = iadd r10, u44, #0
   r10 = icmpsel r10, u41, r10, r11, #0
   r11 = and r6, u42
   r10 = icmpsel u45l, #0, r10, r11, #0
   r10 = imad r10, u47, #0, #0
   r9 = imad r9, u39, r10, #0
   r8 = imad r8, u33, r9, #0
   r10:r11 = imad r4.abs, u49.abs, #0, #0
   r9 = imad r11, u40, #0, #0
   r9 = iadd r4, r9.neg, #0
   r10 = iadd r9, u50, #0
   r9 = icmpsel r9, u40, r9, r10, #0
   r10 = iadd r9, u50, #0
   r9 = icmpsel r9, u40, r9, r10, #0
   r10 = and r4, u48
   r9 = icmpsel u51l, #0, r9, r10, #0
   r8 = imad r9, u46, r8, #0
   r8 = iadd u52, r8, #0
   r8 = device_load u54:u55, r8.abs, x, #0, slot 1
   wait #0, slot 0
   wait #0, slot 1
   r7 = fadd r7, r8
   r6 = imad r6, u59, #0, #0
   r5 = imad r5, u57, r6, #0
   r1 = imad r1, u56, r5, #0
   r1 = imad r4, u58, r1, #0
   r1 = iadd u60, r1, #0
   device_store r7, u62:u63, r1.abs, x, #0, slot 0
   r1 = iadd r2, u65, #0
   wait #0, slot 0
} -> block7  from block4

block6 {
   else_fcmp #0.000000, #0.000000, #aaab575636c0, n=1
   r1 = bitop r2, #0, #a
   pop_exec #0, n=1
} -> block7  from block4

block7 {
   r0h = mov_imm #1
   r2 = bitop r1, #0, #a
   r1 = bitop r3, #0, #a
   jmp_exec_any #aaab575733a0
   pop_exec #0, n=1
} -> block1  from block5 block6

block8 {
   stop 
} from block2

   0: 72051204               mov      r1, thread_in_grid_z
   4: 0e0542c658000000       iadd     r1, r1.sx, u6.sx
   c: 2e05002024120000       shl      r1, r1, 18
  14: 72091104               mov      r2, thread_in_grid_y
  18: 0e0944a658000000       iadd     r2, r2.sx, u5.sx
  20: 1e05440658420602       imadd    r1, r2.sx, u64.sx, r1.sx
  28: 72091004               mov      r2, thread_in_grid_x
  2c: 0e0944e658000000       iadd     r2, r2.sx, u7.sx
  34: 0e05424664000000       iadd     r1, r1.sx, r2.sx
  3c: 62000000               ldimm    r0l, 0
  40: 62020000               ldimm    r0h, 0
  44: 7e09420a8000           mov      r2, r1
  4a: 620500000000           ldimm    r1, 0
  50: 0e0d421600000000       iadd     r3, r1.sx, 1
  58: 120d410000426004       csel     r3, r0h, 0, r1, r3, ieq
  60: 522c46220000           while    r3, 2, 1, ult
  66: 522844021900           if       r2, u8, 1, ult
  6c: 20c006030000           jmp_none 774
  72: 1e1344a219000000       imul     dr4, r2, u13
  7a: 1e054a8659000000       imul     r1, r5.sx, u12.sx
  82: 0e05442e64000000       isub     r1, r2.sx, r1.sx
  8a: 0e114a1600000000       iadd     r4, r5.sx, 1
  92: 12114282194a8024       csel     r4, r1, u12, r5, r4, ult
  9a: 0e1542c659000000       iadd     r5, r1.sx, u14.sx
  a2: 120542821942a024       csel     r1, r1, u12, r1, r5, ult
  aa: 0e15481600000000       iadd     r5, r4.sx, 1
  b2: 120542821948a024       csel     r1, r1, u12, r4, r5, ult
  ba: 1205448219002124       csel     r1, r2, u12, 0, r1, ult
  c2: 1e11422659000000       imul     r4, r1.sx, u9.sx
  ca: 1e11486659000000       imul     r4, r4.sx, u11.sx
  d2: 1e11484659000000       imul     r4, r4.sx, u10.sx
  da: 0e11448e64000000       isub     r4, r2.sx, r4.sx
  e2: 1e1b48021a000000       imul     dr6, r4, u16
  ea: 1e154ee659000000       imul     r5, r7.sx, u15.sx
  f2: 0e1548ae64000000       isub     r5, r4.sx, r5.sx
  fa: 0e194e1600000000       iadd     r6, r7.sx, 1
 102: 12194ae2194ec024       csel     r6, r5, u15, r7, r6, ult
 10a: 0e1d4a265a000000       iadd     r7, r5.sx, u17.sx
 112: 12154ae2194ae024       csel     r5, r5, u15, r5, r7, ult
 11a: 0e1d4c1600000000       iadd     r7, r6.sx, 1
 122: 12154ae2194ce024       csel     r5, r5, u15, r6, r7, ult
 12a: 121548e21900a124       csel     r5, r4, u15, 0, r5, ult
 132: 1e194a6659000000       imul     r6, r5.sx, u11.sx
 13a: 1e194c4659000000       imul     r6, r6.sx, u10.sx
 142: 0e1148ce64000000       isub     r4, r4.sx, r6.sx
 14a: 1e1b48421a000000       imul     dr6, r4, u18
 152: 1e194e4659000000       imul     r6, r7.sx, u10.sx
 15a: 0e1948ce64000000       isub     r6, r4.sx, r6.sx
 162: 0e214e1600000000       iadd     r8, r7.sx, 1
 16a: 121d4c42194e0025       csel     r7, r6, u10, r7, r8, ult
 172: 0e214c665a000000       iadd     r8, r6.sx, u19.sx
 17a: 12194c42194c0025       csel     r6, r6, u10, r6, r8, ult
 182: 0e214e1600000000       iadd     r8, r7.sx, 1
 18a: 12194c42194e0025       csel     r6, r6, u10, r7, r8, ult
 192: 1e1d4c4659000000       imul     r7, r6.sx, u10.sx
 19a: 0e1148ee64000000       isub     r4, r4.sx, r7.sx
 1a2: 1e1d4ce65a000000       imul     r7, r6.sx, u23.sx
 1aa: 1e1d4aa65a4e0600       imadd    r7, r5.sx, u21.sx, r7.sx
 1b2: 1e1d42865a4e0600       imadd    r7, r1.sx, u20.sx, r7.sx
 1ba: 1e1d48c65a4e0600       imadd    r7, r4.sx, u22.sx, r7.sx
 1c2: 0e1db0e564000000       iadd     r7, u24.sx, r7.sx
 1ca: 0539e40e30c01200       load     r7, du26, r7, i32, x, a
 1d2: 1e2342c21b000000       imul     dr8, r1, u30
 1da: 1e2152865b000000       imul     r8, r9.sx, u28.sx
 1e2: 0e21420e65000000       isub     r8, r1.sx, r8.sx
 1ea: 0e2550e65b000000       iadd     r9, r8.sx, u31.sx
 1f2: 122150821b502025       csel     r8, r8, u28, r8, r9, ult
 1fa: 0e2550e65b000000       iadd     r9, r8.sx, u31.sx
 202: 122150821b502025       csel     r8, r8, u28, r8, r9, ult
 20a: 7e2542a29b00           and      r9, r1, u29
 210: 12a10001005020050004   csel     r8, u32l, 0, r8, r9, ieq
 21a: 1e2b4a8218000001       imul     dr10, r5, u36
 222: 1e25564658000001       imul     r9, r11.sx, u34.sx
 22a: 0e254a2e65000000       isub     r9, r5.sx, r9.sx
 232: 0e2952a658010000       iadd     r10, r9.sx, u37.sx
 23a: 12a55242185240250001   csel     r9, r9, u34, r9, r10, ult
 244: 0e2952a658010000       iadd     r10, r9.sx, u37.sx
 24c: 12a55242185240250001   csel     r9, r9, u34, r9, r10, ult
 256: 7e294a629801           and      r10, r5, u35
 25c: 12a50c01005240050004   csel     r9, u38l, 0, r9, r10, ieq
 266: 1e2b4c6219000001       imul     dr10, r6, u43
 26e: 1e29562659000001       imul     r10, r11.sx, u41.sx
 276: 0e294c4e65000000       isub     r10, r6.sx, r10.sx
 27e: 0e2d548659010000       iadd     r11, r10.sx, u44.sx
 286: 12a95422195460250001   csel     r10, r10, u41, r10, r11, ult
 290: 0e2d548659010000       iadd     r11, r10.sx, u44.sx
 298: 12a95422195460250001   csel     r10, r10, u41, r10, r11, ult
 2a2: 7e2d4c429901           and      r11, r6, u42
 2a8: 12a91a01005460050004   csel     r10, u45l, 0, r10, r11, ieq
 2b2: 1e2954e659000001       imul     r10, r10.sx, u47.sx
 2ba: 1e2552e658540601       imadd    r9, r9.sx, u39.sx, r10.sx
 2c2: 1e21502658520601       imadd    r8, r8.sx, u33.sx, r9.sx
 2ca: 1e2b48221a000001       imul     dr10, r4, u49
 2d2: 1e25560659000001       imul     r9, r11.sx, u40.sx
 2da: 0e25482e65000000       isub     r9, r4.sx, r9.sx
 2e2: 0e2952465a010000       iadd     r10, r9.sx, u50.sx
 2ea: 12a55202195240250001   csel     r9, r9, u40, r9, r10, ult
 2f4: 0e2952465a010000       iadd     r10, r9.sx, u50.sx
 2fc: 12a55202195240250001   csel     r9, r9, u40, r9, r10, ult
 306: 7e2948029a01           and      r10, r4, u48
 30c: 12a52601005240050004   csel     r9, u51l, 0, r9, r10, ieq
 316: 1e2152c659500601       imadd    r8, r9.sx, u46.sx, r8.sx
 31e: 0e21a80565040000       iadd     r8, u52.sx, r8.sx
 326: 05410c4e61c01200       load     r8, du54, r8, i32, x, b
 32e: 3800                   wait     a
 330: 3801                   wait     b
 332: 2a9d4e022500           fadd     r7, r7, r8
 338: 1e194c665b000001       imul     r6, r6.sx, u59.sx
 340: 1e154a265b4c0601       imadd    r5, r5.sx, u57.sx, r6.sx
 348: 1e0542065b4a0601       imadd    r1, r1.sx, u56.sx, r5.sx
 350: 1e0548465b420601       imadd    r1, r4.sx, u58.sx, r1.sx
 358: 0e05b82564040000       iadd     r1, u60.sx, r1.sx
 360: 45392c0e70c01200       store    r7, du62, r1, i32, x, a
 368: 0e05442658020000       iadd     r1, r2.sx, u65.sx
 370: 3800                   wait     a
 372: 420a00000000           else     0.0, 0.0, 1, feq
 378: 7e05440a8000           mov      r1, r2
 37e: 520e00000000           pop_exec 1
 384: 62020100               ldimm    r0h, 1
 388: 7e09420a8000           mov      r2, r1
 38e: 7e05460a8000           mov      r1, r3
 394: 00c0bcfcffff           jmp_any  -836
 39a: 520e00000000           pop_exec 1
 3a0: 8800                   stop
block0 {
   2 = device_load u0:u1, #1, xyz, #0, slot 0
   170, 171, 172 = split 2
   173 = collect 170, 171
   uniform_store 173, #8, xy, #0
   uniform_store 172, #12, x, #0
   4 = bfi #0, 170, #8, #0
   uniform_store 4, #14, x, #0
   6 = device_load u0:u1, #23, x, #0, slot 0
   uniform_store 6, #16, x, #0
   8 = device_load u0:u1, #93, xyz, #0, slot 0
   178, 179, 180 = split 8
   uniform_store 180, #18, x, #0
   uniform_store 178, #20, x, #0
   uniform_store 179, #22, x, #0
   12 = imad 180, 179, #0, #0
   13 = imad 12, 178, #0, #0
   uniform_store 13, #24, x, #0
   14 = convert #10, 13, #1
   16 = rcp 14
   18 = ffma 14.neg, 16, #1.000000
   19 = ffma 18, 16, 16
   21 = fcmpsel 19, 19, 19, 16, #0
   22 = mov_imm #4f7ffffe
   23 = fmul 21, 22
   24 = convert #8, 23, #0
   25 = imad 13, 24, #0, #0
   26 = iadd #0, 25.neg, #0
   185d = imad 24.abs, 26.abs, #0, #0
   _, 27 = split 185d
   28 = iadd 24, 27, #0
   uniform_store 28, #26, x, #0
   29 = iadd #0, 13.neg, #0
   uniform_store 29, #28, x, #0
   30 = imad 179, 178, #0, #0
   uniform_store 30, #30, x, #0
   31 = convert #10, 30, #1
   33 = rcp 31
   34 = ffma 31.neg, 33, #1.000000
   35 = ffma 34, 33, 33
   37 = fcmpsel 35, 35, 35, 33, #0
   38 = fmul 37, 22
   39 = convert #8, 38, #0
   40 = imad 30, 39, #0, #0
   41 = iadd #0, 40.neg, #0
   190d = imad 39.abs, 41.abs, #0, #0
   _, 42 = split 190d
   43 = iadd 39, 42, #0
   uniform_store 43, #32, x, #0
   44 = iadd #0, 30.neg, #0
   uniform_store 44, #34, x, #0
   45 = convert #10, 178, #1
   47 = rcp 45
   48 = ffma 45.neg, 47, #1.000000
   49 = ffma 48, 47, 47
   51 = fcmpsel 49, 49, 49, 47, #0
   52 = fmul 51, 22
   53 = convert #8, 52, #0
   54 = imad 178, 53, #0, #0
   55 = iadd #0, 54.neg, #0
   194d = imad 53.abs, 55.abs, #0, #0
   _, 56 = split 194d
   57 = iadd 53, 56, #0
   uniform_store 57, #36, x, #0
   58 = iadd #0, 178.neg, #0
   uniform_store 58, #38, x, #0
   60 = device_load u0:u1, #97, xyzw, #0, slot 0
   198, 199, 200, 201 = split 60
   uniform_store 201, #40, x, #0
   uniform_store 200, #42, x, #0
   uniform_store 198, #44, x, #0
   uniform_store 199, #46, x, #0
   66 = device_load u0:u1, #117, x, #0, slot 0
   _, 67h = split 66
   68 = mov 67h
   uniform_store 68, #48, x, #0
   70 = device_load u0:u1, #39, xy, #0, slot 0
   209, 210 = split 70
   71d = collect 209, 210
   73 = device_load 71d, #0, xyzw, #0, slot 0
   211, 212, _, _ = split 73
   74d = collect 211, 212
   215d = mov 74d
   uniform_store 215d, #52, x, #0
   76 = device_load u0:u1, #101, xyzw, #0, slot 0
   216, 217, 218, 219 = split 76
   uniform_store 219, #56, x, #0
   79 = iadd 219, #1.neg, #0
   uniform_store 79, #58, x, #0
   80 = and 219, 79
   81 = convert #10, 219, #1
   83 = rcp 81
   84 = ffma 81.neg, 83, #1.000000
   85 = ffma 84, 83, 83
   87 = fcmpsel 85, 85, 85, 83, #0
   88 = fmul 87, 22
   89 = convert #8, 88, #0
   90 = imad 219, 89, #0, #0
   91 = iadd #0, 90.neg, #0
   222d = imad 89.abs, 91.abs, #0, #0
   _, 92 = split 222d
   93 = iadd 89, 92, #0
   uniform_store 93, #60, x, #0
   94 = iadd #0, 219.neg, #0
   uniform_store 94, #62, x, #0
   95h = icmp 80, #0, #0
   uniform_store 95h, #64, x, #0
   97 = device_load u0:u1, #105, xyzw, #0, slot 0
   227, 228, 229, 230 = split 97
   uniform_store 230, #66, x, #0
   uniform_store 218, #68, x, #0
   100 = iadd 218, #1.neg, #0
   uniform_store 100, #70, x, #0
   101 = and 218, 100
   102 = convert #10, 218, #1
   104 = rcp 102
   105 = ffma 102.neg, 104, #1.000000
   106 = ffma 105, 104, 104
   108 = fcmpsel 106, 106, 106, 104, #0
   109 = fmul 108, 22
   110 = convert #8, 109, #0
   111 = imad 218, 110, #0, #0
   112 = iadd #0, 111.neg, #0
   234d = imad 110.abs, 112.abs, #0, #0
   _, 113 = split 234d
   114 = iadd 110, 113, #0
   uniform_store 114, #72, x, #0
   115 = iadd #0, 218.neg, #0
   uniform_store 115, #74, x, #0
   116h = icmp 101, #0, #0
   uniform_store 116h, #76, x, #0
   uniform_store 229, #78, x, #0
   uniform_store 216, #80, x, #0
   uniform_store 217, #82, x, #0
   120 = iadd 217, #1.neg, #0
   uniform_store 120, #84, x, #0
   121 = and 217, 120
   122 = convert #10, 217, #1
   124 = rcp 122
   125 = ffma 122.neg, 124, #1.000000
   126 = ffma 125, 124, 124
   128 = fcmpsel 126, 126, 126, 124, #0
   129 = fmul 128, 22
   130 = convert #8, 129, #0
   131 = imad 217, 130, #0, #0
   132 = iadd #0, 131.neg, #0
   243d = imad 130.abs, 132.abs, #0, #0
   _, 133 = split 243d
   134 = iadd 130, 133, #0
   uniform_store 134, #86, x, #0
   135 = iadd #0, 217.neg, #0
   uniform_store 135, #88, x, #0
   136h = icmp 121, #0, #0
   uniform_store 136h, #90, x, #0
   uniform_store 227, #92, x, #0
   uniform_store 228, #94, x, #0
   139 = iadd 216, #1.neg, #0
   uniform_store 139, #96, x, #0
   140 = and 216, 139
   141 = convert #10, 216, #1
   143 = rcp 141
   144 = ffma 141.neg, 143, #1.000000
   145 = ffma 144, 143, 143
   147 = fcmpsel 145, 145, 145, 143, #0
   148 = fmul 147, 22
   149 = convert #8, 148, #0
   150 = imad 216, 149, #0, #0
   151 = iadd #0, 150.neg, #0
   251d = imad 149.abs, 151.abs, #0, #0
   _, 152 = split 251d
   153 = iadd 149, 152, #0
   uniform_store 153, #98, x, #0
   154 = iadd #0, 216.neg, #0
   uniform_store 154, #100, x, #0
   155h = icmp 140, #0, #0
   uniform_store 155h, #102, x, #0
   156 = bfeil #0, 66, #8, #8
   uniform_store 156, #104, x, #0
   157 = device_load 71d, #1, xyzw, #0, slot 0
   257, 258, _, _ = split 157
   158d = collect 257, 258
   261d = mov 158d
   uniform_store 261d, #108, x, #0
   160 = device_load u0:u1, #113, xyzw, #0, slot 0
   262, 263, 264, 265 = split 160
   uniform_store 265, #112, x, #0
   uniform_store 264, #114, x, #0
   uniform_store 262, #116, x, #0
   uniform_store 263, #118, x, #0
   166 = and 66, #255
   uniform_store 166, #120, x, #0
   168 = device_load 71d, #2, xyzw, #0, slot 0
   271, 272, _, _ = split 168
   169d = collect 271, 272
   275d = mov 169d
   uniform_store 275d, #124, x, #0
   stop 
}

block0 {
   2 = device_load u0:u1, #1, xyz, #0, slot 0
   170, 171, 172 = split 2
   173 = collect 170, 171
   uniform_store 173, #8, xy, #0
   uniform_store 172, #12, x, #0
   4 = bfi #0, 170, #8, #0
   uniform_store 4, #14, x, #0
   6 = device_load u0:u1, #23, x, #0, slot 0
   uniform_store 6, #16, x, #0
   8 = device_load u0:u1, #93, xyz, #0, slot 0
   178, 179, 180 = split 8
   uniform_store 180, #18, x, #0
   uniform_store 178, #20, x, #0
   uniform_store 179, #22, x, #0
   12 = imad 180, 179, #0, #0
   13 = imad 12, 178, #0, #0
   uniform_store 13, #24, x, #0
   14 = convert #10, 13, #1
   16 = rcp 14
   18 = ffma 14.neg, 16, #1.000000
   19 = ffma 18, 16, 16
   21 = fcmpsel 19, 19, 19, 16, #0
   22 = mov_imm #4f7ffffe
   23 = fmul 21, 22
   24 = convert #8, 23, #0
   25 = imad 13, 24, #0, #0
   26 = iadd #0, 25.neg, #0
   185d = imad 24.abs, 26.abs, #0, #0
   _, 27 = split 185d
   28 = iadd 24, 27, #0
   uniform_store 28, #26, x, #0
   29 = iadd #0, 13.neg, #0
   uniform_store 29, #28, x, #0
   30 = imad 179, 178, #0, #0
   uniform_store 30, #30, x, #0
   31 = convert #10, 30, #1
   33 = rcp 31
   34 = ffma 31.neg, 33, #1.000000
   35 = ffma 34, 33, 33
   37 = fcmpsel 35, 35, 35, 33, #0
   38 = fmul 37, 22
   39 = convert #8, 38, #0
   40 = imad 30, 39, #0, #0
   41 = iadd #0, 40.neg, #0
   190d = imad 39.abs, 41.abs, #0, #0
   _, 42 = split 190d
   43 = iadd 39, 42, #0
   uniform_store 43, #32, x, #0
   44 = iadd #0, 30.neg, #0
   uniform_store 44, #34, x, #0
   45 = convert #10, 178, #1
   47 = rcp 45
   48 = ffma 45.neg, 47, #1.000000
   49 = ffma 48, 47, 47
   51 = fcmpsel 49, 49, 49, 47, #0
   52 = fmul 51, 22
   53 = convert #8, 52, #0
   54 = imad 178, 53, #0, #0
   55 = iadd #0, 54.neg, #0
   194d = imad 53.abs, 55.abs, #0, #0
   _, 56 = split 194d
   57 = iadd 53, 56, #0
   uniform_store 57, #36, x, #0
   58 = iadd #0, 178.neg, #0
   uniform_store 58, #38, x, #0
   60 = device_load u0:u1, #97, xyzw, #0, slot 0
   198, 199, 200, 201 = split 60
   uniform_store 201, #40, x, #0
   uniform_store 200, #42, x, #0
   uniform_store 198, #44, x, #0
   uniform_store 199, #46, x, #0
   66 = device_load u0:u1, #117, x, #0, slot 0
   _, 67h = split 66
   68 = mov 67h
   uniform_store 68, #48, x, #0
   70 = device_load u0:u1, #39, xy, #0, slot 0
   209, 210 = split 70
   71d = collect 209, 210
   73 = device_load 71d, #0, xyzw, #0, slot 0
   211, 212, _, _ = split 73
   74d = collect 211, 212
   215d = mov 74d
   uniform_store 215d, #52, x, #0
   76 = device_load u0:u1, #101, xyzw, #0, slot 0
   216, 217, 218, 219 = split 76
   uniform_store 219, #56, x, #0
   79 = iadd 219, #1.neg, #0
   uniform_store 79, #58, x, #0
   80 = and 219, 79
   81 = convert #10, 219, #1
   83 = rcp 81
   84 = ffma 81.neg, 83, #1.000000
   85 = ffma 84, 83, 83
   87 = fcmpsel 85, 85, 85, 83, #0
   88 = fmul 87, 22
   89 = convert #8, 88, #0
   90 = imad 219, 89, #0, #0
   91 = iadd #0, 90.neg, #0
   222d = imad 89.abs, 91.abs, #0, #0
   _, 92 = split 222d
   93 = iadd 89, 92, #0
   uniform_store 93, #60, x, #0
   94 = iadd #0, 219.neg, #0
   uniform_store 94, #62, x, #0
   95h = icmp 80, #0, #0
   uniform_store 95h, #64, x, #0
   97 = device_load u0:u1, #105, xyzw, #0, slot 0
   227, 228, 229, 230 = split 97
   uniform_store 230, #66, x, #0
   uniform_store 218, #68, x, #0
   100 = iadd 218, #1.neg, #0
   uniform_store 100, #70, x, #0
   101 = and 218, 100
   102 = convert #10, 218, #1
   104 = rcp 102
   105 = ffma 102.neg, 104, #1.000000
   106 = ffma 105, 104, 104
   108 = fcmpsel 106, 106, 106, 104, #0
   109 = fmul 108, 22
   110 = convert #8, 109, #0
   111 = imad 218, 110, #0, #0
   112 = iadd #0, 111.neg, #0
   234d = imad 110.abs, 112.abs, #0, #0
   _, 113 = split 234d
   114 = iadd 110, 113, #0
   uniform_store 114, #72, x, #0
   115 = iadd #0, 218.neg, #0
   uniform_store 115, #74, x, #0
   116h = icmp 101, #0, #0
   uniform_store 116h, #76, x, #0
   uniform_store 229, #78, x, #0
   uniform_store 216, #80, x, #0
   uniform_store 217, #82, x, #0
   120 = iadd 217, #1.neg, #0
   uniform_store 120, #84, x, #0
   121 = and 217, 120
   122 = convert #10, 217, #1
   124 = rcp 122
   125 = ffma 122.neg, 124, #1.000000
   126 = ffma 125, 124, 124
   128 = fcmpsel 126, 126, 126, 124, #0
   129 = fmul 128, 22
   130 = convert #8, 129, #0
   131 = imad 217, 130, #0, #0
   132 = iadd #0, 131.neg, #0
   243d = imad 130.abs, 132.abs, #0, #0
   _, 133 = split 243d
   134 = iadd 130, 133, #0
   uniform_store 134, #86, x, #0
   135 = iadd #0, 217.neg, #0
   uniform_store 135, #88, x, #0
   136h = icmp 121, #0, #0
   uniform_store 136h, #90, x, #0
   uniform_store 227, #92, x, #0
   uniform_store 228, #94, x, #0
   139 = iadd 216, #1.neg, #0
   uniform_store 139, #96, x, #0
   140 = and 216, 139
   141 = convert #10, 216, #1
   143 = rcp 141
   144 = ffma 141.neg, 143, #1.000000
   145 = ffma 144, 143, 143
   147 = fcmpsel 145, 145, 145, 143, #0
   148 = fmul 147, 22
   149 = convert #8, 148, #0
   150 = imad 216, 149, #0, #0
   151 = iadd #0, 150.neg, #0
   251d = imad 149.abs, 151.abs, #0, #0
   _, 152 = split 251d
   153 = iadd 149, 152, #0
   uniform_store 153, #98, x, #0
   154 = iadd #0, 216.neg, #0
   uniform_store 154, #100, x, #0
   155h = icmp 140, #0, #0
   uniform_store 155h, #102, x, #0
   156 = bfeil #0, 66, #8, #8
   uniform_store 156, #104, x, #0
   157 = device_load 71d, #1, xyzw, #0, slot 0
   257, 258, _, _ = split 157
   158d = collect 257, 258
   261d = mov 158d
   uniform_store 261d, #108, x, #0
   160 = device_load u0:u1, #113, xyzw, #0, slot 0
   262, 263, 264, 265 = split 160
   uniform_store 265, #112, x, #0
   uniform_store 264, #114, x, #0
   uniform_store 262, #116, x, #0
   uniform_store 263, #118, x, #0
   166 = and 66, #255
   uniform_store 166, #120, x, #0
   168 = device_load 71d, #2, xyzw, #0, slot 0
   271, 272, _, _ = split 168
   169d = collect 271, 272
   275d = mov 169d
   uniform_store 275d, #124, x, #0
   stop 
}

block0 {
   r0...r2 = device_load u0:u1, #1, xyz, #0, slot 0
   wait #0, slot 0
   r4 = bitop r0, #0, #a
   r5 = bitop r1, #0, #a
   uniform_store r4...r5, #8, xy, #0
   uniform_store r2, #12, x, #0
   r0 = bfi #0, r0, #8, #0
   uniform_store r0, #14, x, #0
   r0 = device_load u0:u1, #23, x, #0, slot 0
   wait #0, slot 0
   uniform_store r0, #16, x, #0
   r0...r2 = device_load u0:u1, #93, xyz, #0, slot 0
   wait #0, slot 0
   uniform_store r2, #18, x, #0
   uniform_store r0, #20, x, #0
   uniform_store r1, #22, x, #0
   r2 = imad r2, r1, #0, #0
   r2 = imad r2, r0, #0, #0
   uniform_store r2, #24, x, #0
   r3 = convert #10, r2, #1
   r4 = rcp r3
   r3 = ffma r3.neg, r4, #1.000000
   r3 = ffma r3, r4, r4
   r3 = fcmpsel r3, r3, r3, r4, #0
   r4 = mov_imm #4f7ffffe
   r3 = fmul r3, r4
   r3 = convert #8, r3, #0
   r5 = imad r2, r3, #0, #0
   r5 = iadd #0, r5.neg, #0
   r6:r7 = imad r3.abs, r5.abs, #0, #0
   r3 = iadd r3, r7, #0
   uniform_store r3, #26, x, #0
   r2 = iadd #0, r2.neg, #0
   uniform_store r2, #28, x, #0
   r1 = imad r1, r0, #0, #0
   uniform_store r1, #30, x, #0
   r2 = convert #10, r1, #1
   r3 = rcp r2
   r2 = ffma r2.neg, r3, #1.000000
   r2 = ffma r2, r3, r3
   r2 = fcmpsel r2, r2, r2, r3, #0
   r2 = fmul r2, r4
   r2 = convert #8, r2, #0
   r3 = imad r1, r2, #0, #0
   r3 = iadd #0, r3.neg, #0
   r6:r7 = imad r2.abs, r3.abs, #0, #0
   r2 = iadd r2, r7, #0
   uniform_store r2, #32, x, #0
   r1 = iadd #0, r1.neg, #0
   uniform_store r1, #34, x, #0
   r1 = convert #10, r0, #1
   r2 = rcp r1
   r1 = ffma r1.neg, r2, #1.000000
   r1 = ffma r1, r2, r2
   r1 = fcmpsel r1, r1, r1, r2, #0
   r1 = fmul r1, r4
   r1 = convert #8, r1, #0
   r2 = imad r0, r1, #0, #0
   r2 = iadd #0, r2.neg, #0
   r6:r7 = imad r1.abs, r2.abs, #0, #0
   r1 = iadd r1, r7, #0
   uniform_store r1, #36, x, #0
   r0 = iadd #0, r0.neg, #0
   uniform_store r0, #38, x, #0
   r0...r3 = device_load u0:u1, #97, xyzw, #0, slot 0
   wait #0, slot 0
   uniform_store r3, #40, x, #0
   uniform_store r2, #42, x, #0
   uniform_store r0, #44, x, #0
   uniform_store r1, #46, x, #0
   r0 = device_load u0:u1, #117, x, #0, slot 0
   wait #0, slot 0
   r1l = bitop r0h, #0, #a
   r1 = bitop r1l, #0, #a
   uniform_store r1, #48, x, #0
   r2...r3 = device_load u0:u1, #39, xy, #0, slot 0
   wait #0, slot 0
   r8...r11 = device_load r2:r3, #0, xyzw, #0, slot 1
   wait #0, slot 1
   uniform_store r8:r9, #52, x, #0
   r8...r11 = device_load u0:u1, #101, xyzw, #0, slot 0
   wait #0, slot 0
   uniform_store r11, #56, x, #0
   r1 = iadd r11, #1.neg, #0
   uniform_store r1, #58, x, #0
   r1 = and r11, r1
   r5 = convert #10, r11, #1
   r6 = rcp r5
   r5 = ffma r5.neg, r6, #1.000000
   r5 = ffma r5, r6, r6
   r5 = fcmpsel r5, r5, r5, r6, #0
   r5 = fmul r5, r4
   r5 = convert #8, r5, #0
   r6 = imad r11, r5, #0, #0
   r6 = iadd #0, r6.neg, #0
   r12:r13 = imad r5.abs, r6.abs, #0, #0
   r5 = iadd r5, r13, #0
   uniform_store r5, #60, x, #0
   r5 = iadd #0, r11.neg, #0
   uniform_store r5, #62, x, #0
   r1l = icmpsel r1, #0, #1, #0, #0
   uniform_store r1l, #64, x, #0
   r12...r15 = device_load u0:u1, #105, xyzw, #0, slot 0
   wait #0, slot 0
   uniform_store r15, #66, x, #0
   uniform_store r10, #68, x, #0
   r1 = iadd r10, #1.neg, #0
   uniform_store r1, #70, x, #0
   r1 = and r10, r1
   r5 = convert #10, r10, #1
   r6 = rcp r5
   r5 = ffma r5.neg, r6, #1.000000
   r5 = ffma r5, r6, r6
   r5 = fcmpsel r5, r5, r5, r6, #0
   r5 = fmul r5, r4
   r5 = convert #8, r5, #0
   r6 = imad r10, r5, #0, #0
   r6 = iadd #0, r6.neg, #0
   r16:r17 = imad r5.abs, r6.abs, #0, #0
   r5 = iadd r5, r17, #0
   uniform_store r5, #72, x, #0
   r5 = iadd #0, r10.neg, #0
   uniform_store r5, #74, x, #0
   r1l = icmpsel r1, #0, #1, #0, #0
   uniform_store r1l, #76, x, #0
   uniform_store r14, #78, x, #0
   uniform_store r8, #80, x, #0
   uniform_store r9, #82, x, #0
   r1 = iadd r9, #1.neg, #0
   uniform_store r1, #84, x, #0
   r1 = and r9, r1
   r5 = convert #10, r9, #1
   r6 = rcp r5
   r5 = ffma r5.neg, r6, #1.000000
   r5 = ffma r5, r6, r6
   r5 = fcmpsel r5, r5, r5, r6, #0
   r5 = fmul r5, r4
   r5 = convert #8, r5, #0
   r6 = imad r9, r5, #0, #0
   r6 = iadd #0, r6.neg, #0
   r10:r11 = imad r5.abs, r6.abs, #0, #0
   r5 = iadd r5, r11, #0
   uniform_store r5, #86, x, #0
   r5 = iadd #0, r9.neg, #0
   uniform_store r5, #88, x, #0
   r1l = icmpsel r1, #0, #1, #0, #0
   uniform_store r1l, #90, x, #0
   uniform_store r12, #92, x, #0
   uniform_store r13, #94, x, #0
   r1 = iadd r8, #1.neg, #0
   uniform_store r1, #96, x, #0
   r1 = and r8, r1
   r5 = convert #10, r8, #1
   r6 = rcp r5
   r5 = ffma r5.neg, r6, #1.000000
   r5 = ffma r5, r6, r6
   r5 = fcmpsel r5, r5, r5, r6, #0
   r4 = fmul r5, r4
   r4 = convert #8, r4, #0
   r5 = imad r8, r4, #0, #0
   r5 = iadd #0, r5.neg, #0
   r6:r7 = imad r4.abs, r5.abs, #0, #0
   r4 = iadd r4, r7, #0
   uniform_store r4, #98, x, #0
   r4 = iadd #0, r8.neg, #0
   uniform_store r4, #100, x, #0
   r1l = icmpsel r1, #0, #1, #0, #0
   uniform_store r1l, #102, x, #0
   r1 = bfeil #0, r0, #8, #8
   uniform_store r1, #104, x, #0
   r4...r7 = device_load r2:r3, #1, xyzw, #0, slot 0
   wait #0, slot 0
   uniform_store r4:r5, #108, x, #0
   r4...r7 = device_load u0:u1, #113, xyzw, #0, slot 0
   wait #0, slot 0
   uniform_store r7, #112, x, #0
   uniform_store r6, #114, x, #0
   uniform_store r4, #116, x, #0
   uniform_store r5, #118, x, #0
   r0 = and r0, #255
   uniform_store r0, #120, x, #0
   r4...r7 = device_load r2:r3, #2, xyzw, #0, slot 0
   wait #0, slot 0
   uniform_store r4:r5, #124, x, #0
   stop 
}

   0: 0501100d00c87200       load     r0_r1_r2, du0, 1, lsl 2, i32, xyz, a
   8: 3800                   wait     a
   a: 7e11400a8000           mov      r4, r0
  10: 7e15420a8000           mov      r5, r1
  16: c520803d0080f000       mov      du4, dr4
  1e: c510c03d00803000       mov      u6, r2
  26: 2e01000024080000       shl      r0, r0, 8
  2e: c500e03d00803000       mov      u7, r0
  36: 0501700d01c81200       load     r0, du0, 23, lsl 2, i32, x, a
  3e: 3800                   wait     a
  40: c500003d01803000       mov      u8, r0
  48: 0501d00d05c07200       load     r0_r1_r2, du0, 93, i32, xyz, a
  50: 3800                   wait     a
  52: c510203d01803000       mov      u9, r2
  5a: c500403d01803000       mov      u10, r0
  62: c508603d01803000       mov      u11, r1
  6a: 1e09442664000000       imul     r2, r2.sx, r1.sx
  72: 1e09440664000000       imul     r2, r2.sx, r0.sx
  7a: c510803d01803000       mov      u12, r2
  82: 3e8d0a442400           u32_to_f r3, r2, rte
  88: 0a114682               rcp      r4, r3
  8c: 3a0d468a2430           ffma     r3, r3.neg, r4, 1.0
  92: 3a8d468224480200       ffma     r3, r3, r4, r4
  9a: 020d466224468004       csel     r3, r3, r3, r3, r4, feq
  a2: 6211feff7f4f           ldimm    r4, 1333788670
  a8: 1a8d46822400           fmul     r3, r3, r4
  ae: 3e8d08602400           f_to_u32 r3, r3, rtz
  b4: 1e15446664000000       imul     r5, r2.sx, r3.sx
  bc: 0e1500a864000000       isub     r5, 0, r5.sx
  c4: 1e1b46a224000000       imul     dr6, r3, r5
  cc: 0e0d46e664000000       iadd     r3, r3.sx, r7.sx
  d4: c518a03d01803000       mov      u13, r3
  dc: 0e09004864000000       isub     r2, 0, r2.sx
  e4: c510c03d01803000       mov      u14, r2
  ec: 1e05420664000000       imul     r1, r1.sx, r0.sx
  f4: c508e03d01803000       mov      u15, r1
  fc: 3e890a242400           u32_to_f r2, r1, rte
 102: 0a0d4482               rcp      r3, r2
 106: 3a09446a2430           ffma     r2, r2.neg, r3, 1.0
 10c: 3a89446224460200       ffma     r2, r2, r3, r3
 114: 0209444224446004       csel     r2, r2, r2, r2, r3, feq
 11c: 1a8944822400           fmul     r2, r2, r4
 122: 3e8908402400           f_to_u32 r2, r2, rtz
 128: 1e0d424664000000       imul     r3, r1.sx, r2.sx
 130: 0e0d006864000000       isub     r3, 0, r3.sx
 138: 1e1b446224000000       imul     dr6, r2, r3
 140: 0e0944e664000000       iadd     r2, r2.sx, r7.sx
 148: c510003d02803000       mov      u16, r2
 150: 0e05002864000000       isub     r1, 0, r1.sx
 158: c508203d02803000       mov      u17, r1
 160: 3e850a042400           u32_to_f r1, r0, rte
 166: 0a094282               rcp      r2, r1
 16a: 3a05424a2430           ffma     r1, r1.neg, r2, 1.0
 170: 3a85424224440200       ffma     r1, r1, r2, r2
 178: 0205422224424004       csel     r1, r1, r1, r1, r2, feq
 180: 1a8542822400           fmul     r1, r1, r4
 186: 3e8508202400           f_to_u32 r1, r1, rtz
 18c: 1e09402664000000       imul     r2, r0.sx, r1.sx
 194: 0e09004864000000       isub     r2, 0, r2.sx
 19c: 1e1b424224000000       imul     dr6, r1, r2
 1a4: 0e0542e664000000       iadd     r1, r1.sx, r7.sx
 1ac: c508403d02803000       mov      u18, r1
 1b4: 0e01000864000000       isub     r0, 0, r0.sx
 1bc: c500603d02803000       mov      u19, r0
 1c4: 0501100d06c0f200       load     r0_r1_r2_r3, du0, 97, i32, xyzw, a
 1cc: 3800                   wait     a
 1ce: c518803d02803000       mov      u20, r3
 1d6: c510a03d02803000       mov      u21, r2
 1de: c500c03d02803000       mov      u22, r0
 1e6: c508e03d02803000       mov      u23, r1
 1ee: 0501500d07c01200       load     r0, du0, 117, i32, x, a
 1f6: 3800                   wait     a
 1f8: 7e0441088000           mov      r1l, r0h
 1fe: 7e0542088000           mov      r1, r1l
 204: c508003d03803000       mov      u24, r1
 20c: 0511700d02c83200       load     r2_r3, du0, 39, lsl 2, i32, xy, a
 214: 3800                   wait     a
 216: 0541044500c0f200       load     r8_r9_r10_r11, dr2, 0, i32, xyzw, b
 21e: 3801                   wait     b
 220: c540403d0380f000       mov      du26, dr8
 228: 0541500d06c0f200       load     r8_r9_r10_r11, du0, 101, i32, xyzw, a
 230: 3800                   wait     a
 232: c558803d03803000       mov      u28, r11
 23a: 0e05561e00000000       isub     r1, r11.sx, 1
 242: c508a03d03shape: a=[4096,512,1,1]  b=[4096,1,1,1]  d=[4096,512,1,1]  ne=2097152
803000       mov      u29, r1
 24a: 7e055622a400           and      r1, r11, r1
 250: 3e950a642500           u32_to_f r5, r11, rte
 256: 0a194a82               rcp      r6, r5
 25a: 3a154aca2430           ffma     r5, r5.neg, r6, 1.0
 260: 3a954ac2244c0200       ffma     r5, r5, r6, r6
 268: 02154aa2244ac004       csel     r5, r5, r5, r5, r6, feq
 270: 1a954a822400           fmul     r5, r5, r4
 276: 3e9508a02400           f_to_u32 r5, r5, rtz
 27c: 1e1956a664000000       imul     r6, r11.sx, r5.sx
 284: 0e1900c864000000       isub     r6, 0, r6.sx
 28c: 1e334ac224000000       imul     dr12, r5, r6
 294: 0e154aa665000000       iadd     r5, r5.sx, r13.sx
 29c: c528c03d03803000       mov      u30, r5
 2a4: 0e15006865000000       isub     r5, 0, r11.sx
 2ac: c528e03d03803000       mov      u31, r5
 2b4: 1204420200010110       csel     r1l, r1, 0, 1, 0, ieq
 2bc: c508003d04801000       mov      u32l, r1l
 2c4: 0561900d06c0f200       load     r12_r13_r14_r15, du0, 105, i32, xyzw, a
 2cc: 3800                   wait     a
 2ce: c578203d04803000       mov      u33, r15
 2d6: c550403d04803000       mov      u34, r10
 2de: 0e05541e00000000       isub     r1, r10.sx, 1
 2e6: c508603d04803000       mov      u35, r1
 2ee: 7e055422a400           and      r1, r10, r1
 2f4: 3e950a442500           u32_to_f r5, r10, rte
 2fa: 0a194a82               rcp      r6, r5
 2fe: 3a154aca2430           ffma     r5, r5.neg, r6, 1.0
 304: 3a954ac2244c0200       ffma     r5, r5, r6, r6
 30c: 02154aa2244ac004       csel     r5, r5, r5, r5, r6, feq
 314: 1a954a822400           fmul     r5, r5, r4
 31a: 3e9508a02400           f_to_u32 r5, r5, rtz
 320: 1e1954a664000000       imul     r6, r10.sx, r5.sx
 328: 0e1900c864000000       isub     r6, 0, r6.sx
 330: 1e434ac224000000       imul     dr16, r5, r6
 338: 0e154a2666000000       iadd     r5, r5.sx, r17.sx
 340: c528803d04803000       mov      u36, r5
 348: 0e15004865000000       isub     r5, 0, r10.sx
 350: c528a03d04803000       mov      u37, r5
 358: 1204420200010110       csel     r1l, r1, 0, 1, 0, ieq
 360: c508c03d04801000       mov      u38l, r1l
 368: c570e03d04803000       mov      u39, r14
 370: c540003d05803000       mov      u40, r8
 378: c548203d05803000       mov      u41, r9
 380: 0e05521e00000000       isub     r1, r9.sx, 1
 388: c508403d05803000       mov      u42, r1
 390: 7e055222a400           and      r1, r9, r1
 396: 3e950a242500           u32_to_f r5, r9, rte
 39c: 0a194a82               rcp      r6, r5
 3a0: 3a154aca2430           ffma     r5, r5.neg, r6, 1.0
 3a6: 3a954ac2244c0200       ffma     r5, r5, r6, r6
 3ae: 02154aa2244ac004       csel     r5, r5, r5, r5, r6, feq
 3b6: 1a954a822400           fmul     r5, r5, r4
 3bc: 3e9508a02400           f_to_u32 r5, r5, rtz
 3c2: 1e1952a664000000       imul     r6, r9.sx, r5.sx
 3ca: 0e1900c864000000       isub     r6, 0, r6.sx
 3d2: 1e2b4ac224000000       imul     dr10, r5, r6
 3da: 0e154a6665000000       iadd     r5, r5.sx, r11.sx
 3e2: c528603d05803000       mov      u43, r5
 3ea: 0e15002865000000       isub     r5, 0, r9.sx
 3f2: c528803d05803000       mov      u44, r5
 3fa: 1204420200010110       csel     r1l, r1, 0, 1, 0, ieq
 402: c508a03d05801000       mov      u45l, r1l
 40a: c560c03d05803000       mov      u46, r12
 412: c568e03d05803000       mov      u47, r13
 41a: 0e05501e00000000       isub     r1, r8.sx, 1
 422: c508003d06803000       mov      u48, r1
 42a: 7e055022a400           and      r1, r8, r1
 430: 3e950a042500           u32_to_f r5, r8, rte
 436: 0a194a82               rcp      r6, r5
 43a: 3a154aca2430           ffma     r5, r5.neg, r6, 1.0
 440: 3a954ac2244c0200       ffma     r5, r5, r6, r6
 448: 02154aa2244ac004       csel     r5, r5, r5, r5, r6, feq
 450: 1a914a822400           fmul     r4, r5, r4
 456: 3e9108802400           f_to_u32 r4, r4, rtz
 45c: 1e15508664000000       imul     r5, r8.sx, r4.sx
 464: 0e1500a864000000       isub     r5, 0, r5.sx
 46c: 1e1b48a224000000       imul     dr6, r4, r5
 474: 0e1148e664000000       iadd     r4, r4.sx, r7.sx
 47c: c520203d06803000       mov      u49, r4
 484: 0e11000865000000       isub     r4, 0, r8.sx
 48c: c520403d06803000       mov      u50, r4
 494: 1204420200010110       csel     r1l, r1, 0, 1, 0, ieq
 49c: c508603d06801000       mov      u51l, r1l
 4a4: 2e85000024080800       bfeil    r1, 0, r0, 8, 8
 4ac: c508803d06803000       mov      u52, r1
 4b4: 0521140500c8f200       load     r4_r5_r6_r7, dr2, 1, lsl 2, i32, xyzw, a
 4bc: 3800                   wait     a
 4be: c520c03d0680f000       mov      du54, dr4
 4c6: 0521100d07c0f200       load     r4_r5_r6_r7, du0, 113, i32, xyzw, a
 4ce: 3800                   wait     a
 4d0: c538003d07803000       mov      u56, r7
 4d8: c530203d07803000       mov      u57, r6
 4e0: c520403d07803000       mov      u58, r4
 4e8: c528603d07803000       mov      u59, r5
 4f0: 7e0140f28303           and      r0, r0, 255
 4f6: c500803d07803000       mov      u60, r0
 4fe: 0521240500c8f200       load     r4_r5_r6_r7, dr2, 2, lsl 2, i32, xyzw, a
 506: 3800                   wait     a
 508: c520c03d0780f000       mov      du62, dr4
 510: 8800                   stop
