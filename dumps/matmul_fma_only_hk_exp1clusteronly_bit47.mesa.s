warning: function `get_scale_min_k4` is never used
   --> src/bin/matmul_fma_only.rs:141:4
    |
141 | fn get_scale_min_k4(j: usize, scales: &[u8]) -> (u8, u8) {
    |    ^^^^^^^^^^^^^^^^
    |
    = note: `#[warn(dead_code)]` on by default

warning: function `dequant_q4k_block` is never used
   --> src/bin/matmul_fma_only.rs:152:4
    |
152 | fn dequant_q4k_block(block: &[u8], out: &mut [f32; 256]) {
    |    ^^^^^^^^^^^^^^^^^

warning: function `cpu_ref_point` is never used
   --> src/bin/matmul_fma_only.rs:182:4
    |
182 | fn cpu_ref_point(a_data: &[u8], b_data: &[f32], m: u32, n: u32, k: u32) -> f64 {
    |    ^^^^^^^^^^^^^

warning: `perf` (bin "matmul_fma_only") generated 3 warnings
    Finished `release` profile [optimized + debuginfo] target(s) in 0.02s
     Running `target/release/matmul_fma_only`
device: Apple M1 Ultra (G13D C0)
shader: MESA_SHADER_COMPUTE
source_blake3: {0x00c7d8d6, 0x203b4892, 0x9bb1e2f6, 0xb56d4480, 0xe2106eb7, 0x76077372, 0xdaad4190, 0x7ef0639b}
workgroup_size: 128, 1, 1
num_ssbos: 5
system_values_read: 0x00000000'00000000'00004200'00000000
shared_size: 17408
api_subgroup_size: 32
max_subgroup_size: 32
min_subgroup_size: 32
bit_sizes_float: 0x30
bit_sizes_int: 0x79
flrp_lowered: true
io_lowered: true
writes_memory: true
uniforms: 64
decl_function main () (entrypoint)

impl main {
    preamble @preamble
    block b0:    // preds:
    32x3    %0 = @load_workgroup_id
    32x3    %1 = @load_preamble (base=8)
    32      %2 = @load_preamble (base=14)
    32x4    %3 = @load_preamble (base=16)
    32      %4 = @load_preamble (base=24)
    32      %5 = iadd %0.z, %1.z
    32      %6 = iadd %2, %5
    32      %7 = umul_high %6, %4
    32      %8 = imul %7, %3.z
    32      %9 = isub %6, %8
    32     %10 = load_const (0x00000001)
    32     %11 = iadd %7, %10 (0x1)
    1      %12 = uge %9, %3.z
    32     %13 = bcsel %12, %11, %7
    32     %14 = @load_preamble (base=26)
    32     %15 = iadd %9, %14
    32     %16 = bcsel %12, %15, %9
    32     %17 = iadd %13, %10 (0x1)
    1      %18 = uge %16, %3.z
    32     %19 = bcsel %18, %17, %13
    32     %20 = iadd %16, %14
    32     %21 = bcsel %18, %20, %16
    32     %22 = @load_preamble (base=28)
    32     %23 = @load_preamble (base=30)
    32     %24 = umul_high %19, %23
    32     %25 = imul %24, %22
    32     %26 = isub %19, %25
    32     %27 = iadd %24, %10 (0x1)
    1      %28 = uge %26, %22
    32     %29 = bcsel %28, %27, %24
    32     %30 = @load_preamble (base=32)
    32     %31 = iadd %26, %30
    32     %32 = bcsel %28, %31, %26
    32     %33 = iadd %29, %10 (0x1)
    1      %34 = uge %32, %22
    32     %35 = bcsel %34, %33, %29
    32     %36 = @load_preamble (base=34)
    32     %37 = umul_high %21, %36
    32     %38 = imul %37, %3.w
    32     %39 = isub %21, %38
    32     %40 = iadd %37, %10 (0x1)
    1      %41 = uge %39, %3.w
    32     %42 = bcsel %41, %40, %37
    32     %43 = @load_preamble (base=36)
    32     %44 = iadd %39, %43
    32     %45 = bcsel %41, %44, %39
    32     %46 = iadd %42, %10 (0x1)
    1      %47 = uge %45, %3.w
    32     %48 = bcsel %47, %46, %42
    32     %49 = load_const (0x00000000 = 0.000000)
    32     %50 = imadshl_agx %35, %3.y, %48, %49 (0x0)
    32     %51 = @load_preamble (base=38)
    32     %52 = @load_preamble (base=40)
    32     %53 = @load_preamble (base=42)
    32     %54 = iadd %0.x, %1.x
    32     %55 = umul_high %54, %53
    32     %56 = imul %55, %52
    32     %57 = isub %54, %56
    32     %58 = @load_preamble (base=44)
    1      %59 = uge %57, %52
    32     %60 = iadd %57, %58
    32     %61 = bcsel %59, %60, %57
    1      %62 = uge %61, %52
    32     %63 = iadd %61, %58
    32     %64 = bcsel %62, %63, %61
    32     %65 = iadd %55, %10 (0x1)
    32     %66 = bcsel %59, %65, %55
    32     %67 = iadd %66, %10 (0x1)
    32     %68 = bcsel %62, %67, %66
    32x3   %69 = @load_local_invocation_id
    32x3   %70 = @load_preamble (base=46)
    32x3   %71 = @load_preamble (base=52)
    32     %72 = @load_preamble (base=58)
    32     %73 = load_const (0x00000006)
    32     %74 = ishl %64, %73 (0x6)
    32     %75 = imul %68, %3.x
    32     %76 = imadshl_agx %74, %70.y, %75, %49 (0x0)
    32     %77 = load_const (0x00000002)
    32     %78 = ushr %76, %77 (0x2)
    32     %79 = imadshl_agx %50, %72, %78, %49 (0x0)
    32     %80 = imadshl_agx %6, %71.y, %75, %49 (0x0)
    32     %81 = iadd %0.y, %1.y
    32     %82 = ishl %81, %73 (0x6)
    32     %83 = imadshl_agx %82, %70.z, %80, %49 (0x0)
    32     %84 = load_const (0x00000007)
    32     %85 = iand %69.x, %84 (0x7)
    32     %86 = load_const (0x00000005)
    32     %87 = load_const (0x0000003f = 63)
    32     %88 = load_const (0x0000001f = 31)
    32     %89 = iadd %68, %10 (0x1)
    32     %90 = imul %89, %3.x
    32     %91 = umin %70.x, %90
    32     %92 = load_const (0x00000020 = 32)
    32     %93 = load_const (0x00000003)
    32     %94 = ushr %69.x, %93 (0x3)
    32     %95 = ushr %83, %77 (0x2)
    32     %96 = iand %69.x, %88 (0x1f)
    32     %97 = load_const (0x00000004)
    32     %98 = iand %93 (0x3), %69.x
    32     %99 = ushr %96, %77 (0x2)
    32    %100 = ubitfield_extract %69.x, %86 (0x5), %10 (0x1)
    32    %101 = ushr %69.x, %73 (0x6)
    32    %102 = load_const (0x00000008)
                 // succs: b1
    loop {
        block b1:    // preds: b0 b12
        32    %103 = phi b0: %49 (0x0), b12: %262
        32    %104 = phi b0: %49 (0x0), b12: %263
        32    %105 = phi b0: %49 (0x0), b12: %264
        32    %106 = phi b0: %49 (0x0), b12: %265
        32    %107 = phi b0: %49 (0x0), b12: %266
        32    %108 = phi b0: %49 (0x0), b12: %267
        32    %109 = phi b0: %49 (0x0), b12: %268
        32    %110 = phi b0: %49 (0x0), b12: %269
        32    %111 = phi b0: %49 (0x0), b12: %270
        32    %112 = phi b0: %49 (0x0), b12: %271
        32    %113 = phi b0: %49 (0x0), b12: %272
        32    %114 = phi b0: %49 (0x0), b12: %273
        32    %115 = phi b0: %49 (0x0), b12: %274
        32    %116 = phi b0: %49 (0x0), b12: %275
        32    %117 = phi b0: %49 (0x0), b12: %276
        32    %118 = phi b0: %49 (0x0), b12: %277
        32    %119 = phi b0: %49 (0x0), b12: %278
        32    %120 = phi b0: %49 (0x0), b12: %279
        32    %121 = phi b0: %49 (0x0), b12: %280
        32    %122 = phi b0: %49 (0x0), b12: %281
        32    %123 = phi b0: %49 (0x0), b12: %282
        32    %124 = phi b0: %49 (0x0), b12: %283
        32    %125 = phi b0: %49 (0x0), b12: %284
        32    %126 = phi b0: %49 (0x0), b12: %285
        32    %127 = phi b0: %49 (0x0), b12: %286
        32    %128 = phi b0: %49 (0x0), b12: %287
        32    %129 = phi b0: %49 (0x0), b12: %288
        32    %130 = phi b0: %49 (0x0), b12: %289
        32    %131 = phi b0: %49 (0x0), b12: %290
        32    %132 = phi b0: %49 (0x0), b12: %291
        32    %133 = phi b0: %49 (0x0), b12: %292
        32    %134 = phi b0: %49 (0x0), b12: %293
        32    %135 = phi b0: %75, b12: %419
        32    %136 = phi b0: %95, b12: %418
        32    %137 = phi b0: %79, b12: %417
        1     %138 = uge %135, %91
                     // succs: b2 b3
        if %138 {
            block b2:// preds: b1
            break
            // succs: b13
        } else {
            block b3:  // preds: b1, succs: b4
        }
        block b4:    // preds: b3
        1     %139 = @load_preamble (base=60)
                     // succs: b5 b6
        if %139 {
            block b5:    // preds: b4
            32    %140 = iadd %137, %85
            32    %141 = imul %94, %70.y
            32    %142 = ushr %141, %77 (0x2)
            32    %143 = iadd %142, %140
            32    %144 = imadshl_agx %49 (0x0), %10 (0x1), %85, %77 (0x2)
            32    %145 = ushr %144, %10 (0x1)
            32    %146 = load_const (0x00000011 = 17)
            32    %147 = imadshl_agx %94, %146 (0x11), %145, %49 (0x0)
            32    %148 = iand %143, %87 (0x3f)
            32    %149 = imadshl_agx %49 (0x0), %10 (0x1), %148, %10 (0x1)
            32    %150 = ushr %149, %86 (0x5)
            32    %151 = iand %149, %88 (0x1f)
            32    %152 = ushr %151, %97 (0x4)
            32    %153 = imadshl_agx %152, %10 (0x1), %150, %10 (0x1)
            64    %154 = @load_preamble (base=64)
            32    %155 = load_const (0x0000001c = 28)
            32    %156 = ushr %143, %73 (0x6)
            32    %157 = imadshl_agx %156, %10 (0x1), %156, %93 (0x3)
            32    %158 = ushr %157, %155 (0x1c)
            32    %159 = load_const (0x00000090 = 144)
            32    %160 = imul %156, %159 (0x90)
            64    %161 = pack_64_2x32_split %160, %158
            64    %162 = iadd %154, %161
            16x2  %163 = @load_agx (%162, %49 (0x0)) (access=readonly|reorderable|speculatable, base=0, format=r16_uint, sign_extend=0)
            32    %164 = iadd %153, %97 (0x4)
            1     %165 = ult %153, %97 (0x4)
            32    %166 = bcsel %165, %153, %164
            32    %167 = load_const (0xfffffffc = -4 = 4294967292)
            32    %168 = iadd %153, %167 (0xfffffffc)
            32    %169 = bcsel %165, %153, %168
            32    %170 = bcsel %165, %164, %153
            32    %171 = iadd %97 (0x4), %160
            32    %172 = iadd %171, %166
            8     %173 = @load_agx (%154, %172) (access=readonly|reorderable|speculatable, base=0, format=r8_uint, sign_extend=0)
            32    %174 = iadd %171, %169
            8     %175 = @load_agx (%154, %174) (access=readonly|reorderable|speculatable, base=0, format=r8_uint, sign_extend=0)
            32    %176 = u2u32 %175
            32    %177 = load_const (0x000000c0 = 192)
            32    %178 = load_const (0x00000030 = 48)
            32    %179 = bcsel %165, %178 (0x30), %177 (0xc0)
            32    %180 = iand %176, %179
            32    %181 = bcsel %165, %49 (0x0), %77 (0x2)
            32    %182 = ushr %180, %181
            32    %183 = u2u32 %173
            32    %184 = load_const (0x0000000f = 15)
            32    %185 = iand %183, %184 (0xf)
            32    %186 = ior %185, %182
            8     %187 = u2u8 %186
            32    %188 = iadd %171, %164
            8     %189 = @load_agx (%154, %188) (access=readonly|reorderable|speculatable, base=0, format=r8_uint, sign_extend=0)
            32    %190 = u2u32 %189
            32    %191 = load_const (0x000000f0 = 240)
            32    %192 = bcsel %165, %184 (0xf), %191 (0xf0)
            32    %193 = iand %190, %192
            32    %194 = bcsel %165, %49 (0x0), %97 (0x4)
            32    %195 = ushr %193, %194
            32    %196 = iadd %171, %170
            8     %197 = @load_agx (%154, %196) (access=readonly|reorderable|speculatable, base=0, format=r8_uint, sign_extend=0)
            32    %198 = u2u32 %197
            32    %199 = iand %198, %179
            32    %200 = ushr %199, %181
            32    %201 = ior %195, %200
            8     %202 = u2u8 %201
            32    %203 = u2f32 %187
            32    %204 = f2f32 %163.x
            32    %205 = fmul %204, %203
            32    %206 = u2f32 %202
            32    %207 = f2f32 %163.y
            32    %208 = fmul %207, %206
            32    %209 = load_const (0x00000010 = 16)
            32    %210 = load_const (0xffffffe0 = -32 = 4294967264)
            32    %211 = iand %149, %210 (0xffffffe0)
            32    %212 = iadd %209 (0x10), %211
            32    %213 = iand %149, %184 (0xf)
            32    %214 = imadshl_agx %212, %10 (0x1), %213, %10 (0x1)
            32    %215 = iadd %160, %214
            64    %216 = pack_64_2x32_split %215, %49 (0x0)
            64    %217 = iadd %154, %216
            32    %218 = @load_agx (%217, %49 (0x0)) (access=readonly|reorderable|speculatable, base=0, format=r32_uint, sign_extend=0)
            32    %219 = imadshl_agx %49 (0x0), %10 (0x1), %152, %77 (0x2)
            32    %220 = iand %219, %88 (0x1f)
            32    %221 = ushr %218, %220
            32    %222 = load_const (0x0f0f0f0f = 252645135)
            32    %223 = iand %221, %222 (0xf0f0f0f)
            8     %224 = u2u8 %223
            32    %225 = ushr %223, %102 (0x8)
            8     %226 = u2u8 %225
            16    %227 = unpack_32_2x16_split_y %223
            32    %228 = u2u32 %227
            8     %229 = u2u8 %228
            32    %230 = load_const (0x00000018 = 24)
            32    %231 = ushr %223, %230 (0x18)
            8     %232 = u2u8 %231
            32    %233 = fneg %208
            32    %234 = u2f32 %224
            32    %235 = ffma %205, %234, %233
            32    %236 = u2f32 %226
            32    %237 = ffma %205, %236, %233
            32    %238 = imadshl_agx %49 (0x0), %10 (0x1), %147, %93 (0x3)
            16    %239 = u2u16 %238
            32x2  %240 = vec2 %235, %237
                         @store_shared (%240, %239) (base=0, access=speculatable, wrmask=xy, align_mul=8, align_offset=0)
            32    %241 = u2f32 %229
            32    %242 = ffma %205, %241, %233
            32    %243 = u2f32 %232
            32    %244 = ffma %205, %243, %233
            32    %245 = iadd %238, %102 (0x8)
            16    %246 = u2u16 %245
            32x2  %247 = vec2 %242, %244
                         @store_shared (%247, %246) (base=0, access=speculatable, wrmask=xy, align_mul=8, align_offset=0)
            32    %248 = iadd %136, %85
            32    %249 = imul %94, %70.z
            32    %250 = ushr %249, %77 (0x2)
            32    %251 = iadd %250, %248
            64    %252 = @load_preamble (base=68)
            32x4  %253 = @load_agx (%252, %251) (access=readonly|reorderable|speculatable, base=2, format=r32_uint, sign_extend=0)
            32    %254 = load_const (0x00002200 = 8704)
            32    %255 = iadd %254 (0x2200), %238
            16    %256 = u2u16 %255
            32x2  %257 = vec2 %253.x, %253.y
                         @store_shared (%257, %256) (base=0, access=speculatable, wrmask=xy, align_mul=8, align_offset=0)
            32    %258 = load_const (0x00002208 = 8712)
            32    %259 = iadd %258 (0x2208), %238
            16    %260 = u2u16 %259
            32x2  %261 = vec2 %253.z, %253.w
                         @store_shared (%261, %260) (base=0, access=speculatable, wrmask=xy, align_mul=8, align_offset=0)
                         // succs: b7
        } else {
            block b6:  // preds: b4, succs: b7
        }
        block b7:// preds: b5 b6
        @barrier (execution_scope=WORKGROUP, memory_scope=WORKGROUP, mem_semantics=ACQ|REL, mem_modes=shared)
        // succs: b8
        loop {
            block b8:    // preds: b7 b11
            32    %262 = phi b7: %103, b11: %413
            32    %263 = phi b7: %104, b11: %415
            32    %264 = phi b7: %105, b11: %409
            32    %265 = phi b7: %106, b11: %411
            32    %266 = phi b7: %107, b11: %405
            32    %267 = phi b7: %108, b11: %407
            32    %268 = phi b7: %109, b11: %401
            32    %269 = phi b7: %110, b11: %403
            32    %270 = phi b7: %111, b11: %393
            32    %271 = phi b7: %112, b11: %395
            32    %272 = phi b7: %113, b11: %389
            32    %273 = phi b7: %114, b11: %391
            32    %274 = phi b7: %115, b11: %385
            32    %275 = phi b7: %116, b11: %387
            32    %276 = phi b7: %117, b11: %381
            32    %277 = phi b7: %118, b11: %383
            32    %278 = phi b7: %119, b11: %373
            32    %279 = phi b7: %120, b11: %375
            32    %280 = phi b7: %121, b11: %369
            32    %281 = phi b7: %122, b11: %371
            32    %282 = phi b7: %123, b11: %365
            32    %283 = phi b7: %124, b11: %367
            32    %284 = phi b7: %125, b11: %361
            32    %285 = phi b7: %126, b11: %363
            32    %286 = phi b7: %127, b11: %353
            32    %287 = phi b7: %128, b11: %355
            32    %288 = phi b7: %129, b11: %349
            32    %289 = phi b7: %130, b11: %351
            32    %290 = phi b7: %131, b11: %345
            32    %291 = phi b7: %132, b11: %347
            32    %292 = phi b7: %133, b11: %341
            32    %293 = phi b7: %134, b11: %343
            32    %294 = phi b7: %49 (0x0), b11: %416
            32    %295 = load_const (0x00000010 = 16)
            1     %296 = uge %294, %295 (0x10)
                         // succs: b9 b10
            if %296 {
                block b9:// preds: b8
                break
                // succs: b12
            } else {
                block b10:  // preds: b8, succs: b11
            }
            block b11:   // preds: b10
            32    %297 = ishl %100, %86 (0x5)
            32    %298 = imadshl_agx %297, %10 (0x1), %98, %77 (0x2)
            32    %299 = load_const (0x00000011 = 17)
            32    %300 = imadshl_agx %298, %299 (0x11), %294, %49 (0x0)
            32    %301 = imadshl_agx %49 (0x0), %10 (0x1), %300, %93 (0x3)
            16    %302 = u2u16 %301
            32x2  %303 = @load_shared (%302) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %304 = load_const (0x00000088 = 136)
            32    %305 = iadd %301, %304 (0x88)
            16    %306 = u2u16 %305
            32x2  %307 = @load_shared (%306) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %308 = load_const (0x00000110 = 272)
            32    %309 = iadd %301, %308 (0x110)
            16    %310 = u2u16 %309
            32x2  %311 = @load_shared (%310) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %312 = load_const (0x00000198 = 408)
            32    %313 = iadd %301, %312 (0x198)
            16    %314 = u2u16 %313
            32x2  %315 = @load_shared (%314) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %316 = load_const (0x00000880 = 2176)
            32    %317 = iadd %301, %316 (0x880)
            16    %318 = u2u16 %317
            32x2  %319 = @load_shared (%318) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %320 = load_const (0x00000908 = 2312)
            32    %321 = iadd %301, %320 (0x908)
            16    %322 = u2u16 %321
            32x2  %323 = @load_shared (%322) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %324 = load_const (0x00000990 = 2448)
            32    %325 = iadd %301, %324 (0x990)
            16    %326 = u2u16 %325
            32x2  %327 = @load_shared (%326) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %328 = load_const (0x00000a18 = 2584)
            32    %329 = iadd %301, %328 (0xa18)
            16    %330 = u2u16 %329
            32x2  %331 = @load_shared (%330) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %332 = ishl %101, %86 (0x5)
            32    %333 = imadshl_agx %332, %10 (0x1), %99, %10 (0x1)
            32    %334 = imadshl_agx %333, %299 (0x11), %294, %49 (0x0)
            32    %335 = load_const (0x00002200 = 8704)
            32    %336 = imadshl_agx %49 (0x0), %10 (0x1), %334, %93 (0x3)
            32    %337 = iadd %335 (0x2200), %336
            16    %338 = u2u16 %337
            32x2  %339 = @load_shared (%338) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %340 = ffma %303.y, %339.y, %292
            32    %341 = ffma %303.x, %339.x, %340
            32    %342 = ffma %307.y, %339.y, %293
            32    %343 = ffma %307.x, %339.x, %342
            32    %344 = ffma %311.y, %339.y, %290
            32    %345 = ffma %311.x, %339.x, %344
            32    %346 = ffma %315.y, %339.y, %291
            32    %347 = ffma %315.x, %339.x, %346
            32    %348 = ffma %319.y, %339.y, %288
            32    %349 = ffma %319.x, %339.x, %348
            32    %350 = ffma %323.y, %339.y, %289
            32    %351 = ffma %323.x, %339.x, %350
            32    %352 = ffma %327.y, %339.y, %286
            32    %353 = ffma %327.x, %339.x, %352
            32    %354 = ffma %331.y, %339.y, %287
            32    %355 = ffma %331.x, %339.x, %354
            32    %356 = load_const (0x00002288 = 8840)
            32    %357 = iadd %356 (0x2288), %336
            16    %358 = u2u16 %357
            32x2  %359 = @load_shared (%358) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %360 = ffma %303.y, %359.y, %284
            32    %361 = ffma %303.x, %359.x, %360
            32    %362 = ffma %307.y, %359.y, %285
            32    %363 = ffma %307.x, %359.x, %362
            32    %364 = ffma %311.y, %359.y, %282
            32    %365 = ffma %311.x, %359.x, %364
            32    %366 = ffma %315.y, %359.y, %283
            32    %367 = ffma %315.x, %359.x, %366
            32    %368 = ffma %319.y, %359.y, %280
            32    %369 = ffma %319.x, %359.x, %368
            32    %370 = ffma %323.y, %359.y, %281
            32    %371 = ffma %323.x, %359.x, %370
            32    %372 = ffma %327.y, %359.y, %278
            32    %373 = ffma %327.x, %359.x, %372
            32    %374 = ffma %331.y, %359.y, %279
            32    %375 = ffma %331.x, %359.x, %374
            32    %376 = load_const (0x00002a80 = 10880)
            32    %377 = iadd %376 (0x2a80), %336
            16    %378 = u2u16 %377
            32x2  %379 = @load_shared (%378) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %380 = ffma %303.y, %379.y, %276
            32    %381 = ffma %303.x, %379.x, %380
            32    %382 = ffma %307.y, %379.y, %277
            32    %383 = ffma %307.x, %379.x, %382
            32    %384 = ffma %311.y, %379.y, %274
            32    %385 = ffma %311.x, %379.x, %384
            32    %386 = ffma %315.y, %379.y, %275
            32    %387 = ffma %315.x, %379.x, %386
            32    %388 = ffma %319.y, %379.y, %272
            32    %389 = ffma %319.x, %379.x, %388
            32    %390 = ffma %323.y, %379.y, %273
            32    %391 = ffma %323.x, %379.x, %390
            32    %392 = ffma %327.y, %379.y, %270
            32    %393 = ffma %327.x, %379.x, %392
            32    %394 = ffma %331.y, %379.y, %271
            32    %395 = ffma %331.x, %379.x, %394
            32    %396 = load_const (0x00002b08 = 11016)
            32    %397 = iadd %396 (0x2b08), %336
            16    %398 = u2u16 %397
            32x2  %399 = @load_shared (%398) (base=0, access=speculatable, align_mul=8, align_offset=0)
            32    %400 = ffma %303.y, %399.y, %268
            32    %401 = ffma %303.x, %399.x, %400
            32    %402 = ffma %307.y, %399.y, %269
            32    %403 = ffma %307.x, %399.x, %402
            32    %404 = ffma %311.y, %399.y, %266
            32    %405 = ffma %311.x, %399.x, %404
            32    %406 = ffma %315.y, %399.y, %267
            32    %407 = ffma %315.x, %399.x, %406
            32    %408 = ffma %319.y, %399.y, %264
            32    %409 = ffma %319.x, %399.x, %408
            32    %410 = ffma %323.y, %399.y, %265
            32    %411 = ffma %323.x, %399.x, %410
            32    %412 = ffma %327.y, %399.y, %262
            32    %413 = ffma %327.x, %399.x, %412
            32    %414 = ffma %331.y, %399.y, %263
            32    %415 = ffma %331.x, %399.x, %414
            32    %416 = iadd %294, %10 (0x1)
                         // succs: b8
        }
        block b12:   // preds: b9
                     @barrier (execution_scope=WORKGROUP, memory_scope=WORKGROUP, mem_semantics=ACQ|REL, mem_modes=shared)
        32    %417 = iadd %137, %102 (0x8)
        32    %418 = iadd %136, %102 (0x8)
        32    %419 = iadd %135, %92 (0x20)
                     // succs: b1
    }
    block b13:   // preds: b2
    32    %420 = imadshl_agx %100, %92 (0x20), %74, %49 (0x0)
    32    %421 = imadshl_agx %101, %92 (0x20), %82, %49 (0x0)
    32    %422 = @load_preamble (base=72)
    32    %423 = imul %68, %71.z
    32    %424 = imul %422, %423
    32    %425 = imadshl_agx %6, %71.z, %424, %49 (0x0)
    32    %426 = imadshl_agx %420, %10 (0x1), %98, %77 (0x2)
    32    %427 = imadshl_agx %421, %10 (0x1), %99, %10 (0x1)
    32    %428 = @load_preamble (base=74)
    1     %429 = load_const (false)
    1     %430 = ult %426, %51
    1     %431 = ult %427, %428
    1     %432 = bcsel %430, %431, %429 (false)
                 // succs: b14 b15
    if %432 {
        block b14:   // preds: b13
        32    %433 = @load_preamble (base=76)
        32    %434 = iadd %425, %426
        32    %435 = imadshl_agx %427, %433, %434, %49 (0x0)
        64    %436 = @load_preamble (base=80)
                     @store_agx (%133, %436, %435) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b16
    } else {
        block b15:  // preds: b13, succs: b16
    }
    block b16:   // preds: b14 b15
    32    %437 = @load_preamble (base=84)
    1     %438 = ult %427, %437
    32    %439 = iadd %10 (0x1), %426
    1     %440 = ult %439, %51
    1     %441 = bcsel %440, %438, %429 (false)
                 // succs: b17 b18
    if %441 {
        block b17:   // preds: b16
        32    %442 = @load_preamble (base=86)
        32    %443 = iadd %425, %10 (0x1)
        32    %444 = iadd %443, %426
        32    %445 = imadshl_agx %427, %442, %444, %49 (0x0)
        64    %446 = @load_preamble (base=88)
                     @store_agx (%134, %446, %445) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b19
    } else {
        block b18:  // preds: b16, succs: b19
    }
    block b19:   // preds: b17 b18
    32    %447 = @load_preamble (base=92)
    1     %448 = ult %427, %447
    32    %449 = iadd %426, %77 (0x2)
    1     %450 = ult %449, %51
    1     %451 = bcsel %450, %448, %429 (false)
                 // succs: b20 b21
    if %451 {
        block b20:   // preds: b19
        32    %452 = @load_preamble (base=94)
        32    %453 = iadd %425, %77 (0x2)
        32    %454 = iadd %453, %426
        32    %455 = imadshl_agx %427, %452, %454, %49 (0x0)
        64    %456 = @load_preamble (base=96)
                     @store_agx (%131, %456, %455) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b22
    } else {
        block b21:  // preds: b19, succs: b22
    }
    block b22:   // preds: b20 b21
    32    %457 = @load_preamble (base=100)
    1     %458 = ult %427, %457
    32    %459 = iadd %93 (0x3), %426
    1     %460 = ult %459, %51
    1     %461 = bcsel %460, %458, %429 (false)
                 // succs: b23 b24
    if %461 {
        block b23:   // preds: b22
        32    %462 = @load_preamble (base=102)
        32    %463 = iadd %425, %93 (0x3)
        32    %464 = iadd %463, %426
        32    %465 = imadshl_agx %427, %462, %464, %49 (0x0)
        64    %466 = @load_preamble (base=104)
                     @store_agx (%132, %466, %465) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b25
    } else {
        block b24:  // preds: b22, succs: b25
    }
    block b25:   // preds: b23 b24
    32    %467 = @load_preamble (base=108)
    32    %468 = iadd %427, %10 (0x1)
    1     %469 = ult %468, %467
    1     %470 = bcsel %430, %469, %429 (false)
                 // succs: b26 b27
    if %470 {
        block b26:   // preds: b25
        32    %471 = @load_preamble (base=110)
        32    %472 = iadd %425, %426
        32    %473 = imadshl_agx %468, %471, %472, %49 (0x0)
        64    %474 = @load_preamble (base=112)
                     @store_agx (%125, %474, %473) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b28
    } else {
        block b27:  // preds: b25, succs: b28
    }
    block b28:   // preds: b26 b27
    32    %475 = @load_preamble (base=116)
    1     %476 = ult %468, %475
    1     %477 = bcsel %440, %476, %429 (false)
                 // succs: b29 b30
    if %477 {
        block b29:   // preds: b28
        32    %478 = @load_preamble (base=118)
        32    %479 = iadd %425, %10 (0x1)
        32    %480 = iadd %479, %426
        32    %481 = imadshl_agx %468, %478, %480, %49 (0x0)
        64    %482 = @load_preamble (base=120)
                     @store_agx (%126, %482, %481) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b31
    } else {
        block b30:  // preds: b28, succs: b31
    }
    block b31:   // preds: b29 b30
    32    %483 = @load_preamble (base=124)
    1     %484 = ult %468, %483
    1     %485 = bcsel %450, %484, %429 (false)
                 // succs: b32 b33
    if %485 {
        block b32:   // preds: b31
        32    %486 = @load_preamble (base=126)
        32    %487 = iadd %425, %77 (0x2)
        32    %488 = iadd %487, %426
        32    %489 = imadshl_agx %468, %486, %488, %49 (0x0)
        64    %490 = @load_preamble (base=128)
                     @store_agx (%123, %490, %489) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b34
    } else {
        block b33:  // preds: b31, succs: b34
    }
    block b34:   // preds: b32 b33
    32    %491 = @load_preamble (base=132)
    1     %492 = ult %468, %491
    1     %493 = bcsel %460, %492, %429 (false)
                 // succs: b35 b36
    if %493 {
        block b35:   // preds: b34
        32    %494 = @load_preamble (base=134)
        32    %495 = iadd %425, %93 (0x3)
        32    %496 = iadd %495, %426
        32    %497 = imadshl_agx %468, %494, %496, %49 (0x0)
        64    %498 = @load_preamble (base=136)
                     @store_agx (%124, %498, %497) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b37
    } else {
        block b36:  // preds: b34, succs: b37
    }
    block b37:   // preds: b35 b36
    32    %499 = @load_preamble (base=140)
    1     %500 = ult %427, %499
    32    %501 = load_const (0x00000010 = 16)
    32    %502 = iadd %501 (0x10), %426
    1     %503 = ult %502, %51
    1     %504 = bcsel %503, %500, %429 (false)
                 // succs: b38 b39
    if %504 {
        block b38:   // preds: b37
        32    %505 = @load_preamble (base=142)
        32    %506 = iadd %425, %502
        32    %507 = imadshl_agx %427, %505, %506, %49 (0x0)
        64    %508 = @load_preamble (base=144)
                     @store_agx (%129, %508, %507) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b40
    } else {
        block b39:  // preds: b37, succs: b40
    }
    block b40:   // preds: b38 b39
    32    %509 = @load_preamble (base=148)
    1     %510 = ult %427, %509
    32    %511 = load_const (0x00000011 = 17)
    32    %512 = iadd %511 (0x11), %426
    1     %513 = ult %512, %51
    1     %514 = bcsel %513, %510, %429 (false)
                 // succs: b41 b42
    if %514 {
        block b41:   // preds: b40
        32    %515 = @load_preamble (base=150)
        32    %516 = iadd %425, %10 (0x1)
        32    %517 = iadd %516, %502
        32    %518 = imadshl_agx %427, %515, %517, %49 (0x0)
        64    %519 = @load_preamble (base=152)
                     @store_agx (%130, %519, %518) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b43
    } else {
        block b42:  // preds: b40, succs: b43
    }
    block b43:   // preds: b41 b42
    32    %520 = @load_preamble (base=156)
    1     %521 = ult %427, %520
    32    %522 = load_const (0x00000012 = 18)
    32    %523 = iadd %522 (0x12), %426
    1     %524 = ult %523, %51
    1     %525 = bcsel %524, %521, %429 (false)
                 // succs: b44 b45
    if %525 {
        block b44:   // preds: b43
        32    %526 = @load_preamble (base=158)
        32    %527 = iadd %425, %77 (0x2)
        32    %528 = iadd %527, %502
        32    %529 = imadshl_agx %427, %526, %528, %49 (0x0)
        64    %530 = @load_preamble (base=160)
                     @store_agx (%127, %530, %529) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b46
    } else {
        block b45:  // preds: b43, succs: b46
    }
    block b46:   // preds: b44 b45
    32    %531 = @load_preamble (base=164)
    1     %532 = ult %427, %531
    32    %533 = load_const (0x00000013 = 19)
    32    %534 = iadd %533 (0x13), %426
    1     %535 = ult %534, %51
    1     %536 = bcsel %535, %532, %429 (false)
                 // succs: b47 b48
    if %536 {
        block b47:   // preds: b46
        32    %537 = @load_preamble (base=166)
        32    %538 = iadd %425, %93 (0x3)
        32    %539 = iadd %538, %502
        32    %540 = imadshl_agx %427, %537, %539, %49 (0x0)
        64    %541 = @load_preamble (base=168)
                     @store_agx (%128, %541, %540) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b49
    } else {
        block b48:  // preds: b46, succs: b49
    }
    block b49:   // preds: b47 b48
    32    %542 = @load_preamble (base=172)
    1     %543 = ult %468, %542
    1     %544 = bcsel %503, %543, %429 (false)
                 // succs: b50 b51
    if %544 {
        block b50:   // preds: b49
        32    %545 = @load_preamble (base=174)
        32    %546 = iadd %425, %502
        32    %547 = imadshl_agx %468, %545, %546, %49 (0x0)
        64    %548 = @load_preamble (base=176)
                     @store_agx (%121, %548, %547) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b52
    } else {
        block b51:  // preds: b49, succs: b52
    }
    block b52:   // preds: b50 b51
    32    %549 = @load_preamble (base=180)
    1     %550 = ult %468, %549
    1     %551 = bcsel %513, %550, %429 (false)
                 // succs: b53 b54
    if %551 {
        block b53:   // preds: b52
        32    %552 = @load_preamble (base=182)
        32    %553 = iadd %425, %10 (0x1)
        32    %554 = iadd %553, %502
        32    %555 = imadshl_agx %468, %552, %554, %49 (0x0)
        64    %556 = @load_preamble (base=184)
                     @store_agx (%122, %556, %555) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b55
    } else {
        block b54:  // preds: b52, succs: b55
    }
    block b55:   // preds: b53 b54
    32    %557 = @load_preamble (base=188)
    1     %558 = ult %468, %557
    1     %559 = bcsel %524, %558, %429 (false)
                 // succs: b56 b57
    if %559 {
        block b56:   // preds: b55
        32    %560 = @load_preamble (base=190)
        32    %561 = iadd %425, %77 (0x2)
        32    %562 = iadd %561, %502
        32    %563 = imadshl_agx %468, %560, %562, %49 (0x0)
        64    %564 = @load_preamble (base=192)
                     @store_agx (%119, %564, %563) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b58
    } else {
        block b57:  // preds: b55, succs: b58
    }
    block b58:   // preds: b56 b57
    32    %565 = @load_preamble (base=196)
    1     %566 = ult %468, %565
    1     %567 = bcsel %535, %566, %429 (false)
                 // succs: b59 b60
    if %567 {
        block b59:   // preds: b58
        32    %568 = @load_preamble (base=198)
        32    %569 = iadd %425, %93 (0x3)
        32    %570 = iadd %569, %502
        32    %571 = imadshl_agx %468, %568, %570, %49 (0x0)
        64    %572 = @load_preamble (base=200)
                     @store_agx (%120, %572, %571) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b61
    } else {
        block b60:  // preds: b58, succs: b61
    }
    block b61:   // preds: b59 b60
    32    %573 = @load_preamble (base=204)
    32    %574 = iadd %501 (0x10), %427
    1     %575 = ult %574, %573
    1     %576 = bcsel %430, %575, %429 (false)
                 // succs: b62 b63
    if %576 {
        block b62:   // preds: b61
        32    %577 = @load_preamble (base=206)
        32    %578 = iadd %425, %426
        32    %579 = imadshl_agx %574, %577, %578, %49 (0x0)
        64    %580 = @load_preamble (base=208)
                     @store_agx (%117, %580, %579) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b64
    } else {
        block b63:  // preds: b61, succs: b64
    }
    block b64:   // preds: b62 b63
    32    %581 = @load_preamble (base=212)
    1     %582 = ult %574, %581
    1     %583 = bcsel %440, %582, %429 (false)
                 // succs: b65 b66
    if %583 {
        block b65:   // preds: b64
        32    %584 = @load_preamble (base=214)
        32    %585 = iadd %425, %10 (0x1)
        32    %586 = iadd %585, %426
        32    %587 = imadshl_agx %574, %584, %586, %49 (0x0)
        64    %588 = @load_preamble (base=216)
                     @store_agx (%118, %588, %587) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b67
    } else {
        block b66:  // preds: b64, succs: b67
    }
    block b67:   // preds: b65 b66
    32    %589 = @load_preamble (base=220)
    1     %590 = ult %574, %589
    1     %591 = bcsel %450, %590, %429 (false)
                 // succs: b68 b69
    if %591 {
        block b68:   // preds: b67
        32    %592 = @load_preamble (base=222)
        32    %593 = iadd %425, %77 (0x2)
        32    %594 = iadd %593, %426
        32    %595 = imadshl_agx %574, %592, %594, %49 (0x0)
        64    %596 = @load_preamble (base=224)
                     @store_agx (%115, %596, %595) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b70
    } else {
        block b69:  // preds: b67, succs: b70
    }
    block b70:   // preds: b68 b69
    32    %597 = @load_preamble (base=228)
    1     %598 = ult %574, %597
    1     %599 = bcsel %460, %598, %429 (false)
                 // succs: b71 b72
    if %599 {
        block b71:   // preds: b70
        32    %600 = @load_preamble (base=230)
        32    %601 = iadd %425, %93 (0x3)
        32    %602 = iadd %601, %426
        32    %603 = imadshl_agx %574, %600, %602, %49 (0x0)
        64    %604 = @load_preamble (base=232)
                     @store_agx (%116, %604, %603) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b73
    } else {
        block b72:  // preds: b70, succs: b73
    }
    block b73:   // preds: b71 b72
    32    %605 = @load_preamble (base=236)
    32    %606 = iadd %511 (0x11), %427
    1     %607 = ult %606, %605
    1     %608 = bcsel %430, %607, %429 (false)
                 // succs: b74 b75
    if %608 {
        block b74:   // preds: b73
        32    %609 = @load_preamble (base=238)
        32    %610 = iadd %425, %426
        32    %611 = imadshl_agx %606, %609, %610, %49 (0x0)
        64    %612 = @load_preamble (base=240)
                     @store_agx (%109, %612, %611) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b76
    } else {
        block b75:  // preds: b73, succs: b76
    }
    block b76:   // preds: b74 b75
    32    %613 = @load_preamble (base=244)
    1     %614 = ult %606, %613
    1     %615 = bcsel %440, %614, %429 (false)
                 // succs: b77 b78
    if %615 {
        block b77:   // preds: b76
        32    %616 = @load_preamble (base=246)
        32    %617 = iadd %425, %10 (0x1)
        32    %618 = iadd %617, %426
        32    %619 = imadshl_agx %606, %616, %618, %49 (0x0)
        64    %620 = @load_preamble (base=248)
                     @store_agx (%110, %620, %619) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b79
    } else {
        block b78:  // preds: b76, succs: b79
    }
    block b79:   // preds: b77 b78
    32    %621 = @load_preamble (base=252)
    1     %622 = ult %606, %621
    1     %623 = bcsel %450, %622, %429 (false)
                 // succs: b80 b81
    if %623 {
        block b80:   // preds: b79
        32    %624 = @load_preamble (base=254)
        32    %625 = iadd %425, %77 (0x2)
        32    %626 = iadd %625, %426
        32    %627 = imadshl_agx %606, %624, %626, %49 (0x0)
        64    %628 = @load_preamble (base=256)
                     @store_agx (%107, %628, %627) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b82
    } else {
        block b81:  // preds: b79, succs: b82
    }
    block b82:   // preds: b80 b81
    32    %629 = @load_preamble (base=260)
    1     %630 = ult %606, %629
    1     %631 = bcsel %460, %630, %429 (false)
                 // succs: b83 b84
    if %631 {
        block b83:   // preds: b82
        32    %632 = @load_preamble (base=262)
        32    %633 = iadd %425, %93 (0x3)
        32    %634 = iadd %633, %426
        32    %635 = imadshl_agx %606, %632, %634, %49 (0x0)
        64    %636 = @load_preamble (base=264)
                     @store_agx (%108, %636, %635) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b85
    } else {
        block b84:  // preds: b82, succs: b85
    }
    block b85:   // preds: b83 b84
    32    %637 = @load_preamble (base=268)
    1     %638 = ult %574, %637
    1     %639 = bcsel %503, %638, %429 (false)
                 // succs: b86 b87
    if %639 {
        block b86:   // preds: b85
        32    %640 = @load_preamble (base=270)
        32    %641 = iadd %425, %502
        32    %642 = imadshl_agx %574, %640, %641, %49 (0x0)
        64    %643 = @load_preamble (base=272)
                     @store_agx (%113, %643, %642) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b88
    } else {
        block b87:  // preds: b85, succs: b88
    }
    block b88:   // preds: b86 b87
    32    %644 = @load_preamble (base=276)
    1     %645 = ult %574, %644
    1     %646 = bcsel %513, %645, %429 (false)
                 // succs: b89 b90
    if %646 {
        block b89:   // preds: b88
        32    %647 = @load_preamble (base=278)
        32    %648 = iadd %425, %10 (0x1)
        32    %649 = iadd %648, %502
        32    %650 = imadshl_agx %574, %647, %649, %49 (0x0)
        64    %651 = @load_preamble (base=280)
                     @store_agx (%114, %651, %650) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b91
    } else {
        block b90:  // preds: b88, succs: b91
    }
    block b91:   // preds: b89 b90
    32    %652 = @load_preamble (base=284)
    1     %653 = ult %574, %652
    1     %654 = bcsel %524, %653, %429 (false)
                 // succs: b92 b93
    if %654 {
        block b92:   // preds: b91
        32    %655 = @load_preamble (base=286)
        32    %656 = iadd %425, %77 (0x2)
        32    %657 = iadd %656, %502
        32    %658 = imadshl_agx %574, %655, %657, %49 (0x0)
        64    %659 = @load_preamble (base=288)
                     @store_agx (%111, %659, %658) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b94
    } else {
        block b93:  // preds: b91, succs: b94
    }
    block b94:   // preds: b92 b93
    32    %660 = @load_preamble (base=292)
    1     %661 = ult %574, %660
    1     %662 = bcsel %535, %661, %429 (false)
                 // succs: b95 b96
    if %662 {
        block b95:   // preds: b94
        32    %663 = @load_preamble (base=294)
        32    %664 = iadd %425, %93 (0x3)
        32    %665 = iadd %664, %502
        32    %666 = imadshl_agx %574, %663, %665, %49 (0x0)
        64    %667 = @load_preamble (base=296)
                     @store_agx (%112, %667, %666) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b97
    } else {
        block b96:  // preds: b94, succs: b97
    }
    block b97:   // preds: b95 b96
    32    %668 = @load_preamble (base=300)
    1     %669 = ult %606, %668
    1     %670 = bcsel %503, %669, %429 (false)
                 // succs: b98 b99
    if %670 {
        block b98:   // preds: b97
        32    %671 = @load_preamble (base=302)
        32    %672 = iadd %425, %502
        32    %673 = imadshl_agx %606, %671, %672, %49 (0x0)
        64    %674 = @load_preamble (base=304)
                     @store_agx (%105, %674, %673) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b100
    } else {
        block b99:  // preds: b97, succs: b100
    }
    block b100:  // preds: b98 b99
    32    %675 = @load_preamble (base=308)
    1     %676 = ult %606, %675
    1     %677 = bcsel %513, %676, %429 (false)
                 // succs: b101 b102
    if %677 {
        block b101:  // preds: b100
        32    %678 = @load_preamble (base=310)
        32    %679 = iadd %425, %10 (0x1)
        32    %680 = iadd %679, %502
        32    %681 = imadshl_agx %606, %678, %680, %49 (0x0)
        64    %682 = @load_preamble (base=312)
                     @store_agx (%106, %682, %681) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b103
    } else {
        block b102:  // preds: b100, succs: b103
    }
    block b103:  // preds: b101 b102
    32    %683 = @load_preamble (base=316)
    1     %684 = ult %606, %683
    1     %685 = bcsel %524, %684, %429 (false)
                 // succs: b104 b105
    if %685 {
        block b104:  // preds: b103
        32    %686 = @load_preamble (base=318)
        32    %687 = iadd %425, %77 (0x2)
        32    %688 = iadd %687, %502
        32    %689 = imadshl_agx %606, %686, %688, %49 (0x0)
        64    %690 = @load_preamble (base=320)
                     @store_agx (%103, %690, %689) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b106
    } else {
        block b105:  // preds: b103, succs: b106
    }
    block b106:  // preds: b104 b105
    32    %691 = @load_preamble (base=324)
    1     %692 = ult %606, %691
    1     %693 = bcsel %535, %692, %429 (false)
                 // succs: b107 b108
    if %693 {
        block b107:  // preds: b106
        32    %694 = @load_preamble (base=326)
        32    %695 = iadd %425, %93 (0x3)
        32    %696 = iadd %695, %502
        32    %697 = imadshl_agx %606, %694, %696, %49 (0x0)
        64    %698 = @load_preamble (base=328)
                     @store_agx (%104, %698, %697) (access=writeonly|speculatable, base=0, format=r32_uint, sign_extend=0)
                     // succs: b109
    } else {
        block b108:  // preds: b106, succs: b109
    }
    block b109:  // preds: b107 b108, succs: b110
    block b110:
}

decl_function @preamble ()

impl @preamble {
    block b0:   // preds:
    64     %0 = @load_preamble (base=0)
    32     %1 = load_const (0x00000005 = 0.000000)
    32x3   %2 = @load_constant_agx (%0, %1 (0x5)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
                @store_preamble (%2) (base=8)
    32     %3 = load_const (0x00000083 = 0.000000 = 131)
    32     %4 = @load_constant_agx (%0, %3 (0x83)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
                @store_preamble (%4) (base=14)
    32     %5 = load_const (0x00000085 = 0.000000 = 133)
    32x4   %6 = @load_constant_agx (%0, %5 (0x85)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
                @store_preamble (%6) (base=16)
    32     %7 = u2f32 %6.z // exact
    32     %8 = fneg %7
    32     %9 = frcp %7
    32    %10 = load_const (0x3f800000 = 1.000000)
    32    %11 = ffma %8, %9, %10 (1.000000)
    32    %12 = ffma %11, %9, %9
    1     %13 = fneu %12, %12 // preserve:inf,nan
    32    %14 = bcsel %13, %9, %12
    32    %15 = load_const (0x4f7ffffe = 4.294967e+09)
    32    %16 = fmul %14, %15 (4.294967e+09) // exact
    32    %17 = f2u32 %16 // exact
    32    %18 = imul %6.z, %17
    32    %19 = ineg %18
    32    %20 = umul_high %17, %19
    32    %21 = iadd %17, %20
                @store_preamble (%21) (base=24)
    32    %22 = ineg %6.z
                @store_preamble (%22) (base=26)
    32    %23 = load_const (0x00000089 = 0.000000 = 137)
    32    %24 = @load_constant_agx (%0, %23 (0x89)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
                @store_preamble (%24) (base=28)
    32    %25 = u2f32 %24 // exact
    32    %26 = fneg %25
    32    %27 = frcp %25
    32    %28 = ffma %26, %27, %10 (1.000000)
    32    %29 = ffma %28, %27, %27
    1     %30 = fneu %29, %29 // preserve:inf,nan
    32    %31 = bcsel %30, %27, %29
    32    %32 = fmul %31, %15 (4.294967e+09) // exact
    32    %33 = f2u32 %32 // exact
    32    %34 = imul %24, %33
    32    %35 = ineg %34
    32    %36 = umul_high %33, %35
    32    %37 = iadd %33, %36
                @store_preamble (%37) (base=30)
    32    %38 = ineg %24
                @store_preamble (%38) (base=32)
    32    %39 = u2f32 %6.w // exact
    32    %40 = fneg %39
    32    %41 = frcp %39
    32    %42 = ffma %40, %41, %10 (1.000000)
    32    %43 = ffma %42, %41, %41
    1     %44 = fneu %43, %43 // preserve:inf,nan
    32    %45 = bcsel %44, %41, %43
    32    %46 = fmul %45, %15 (4.294967e+09) // exact
    32    %47 = f2u32 %46 // exact
    32    %48 = imul %6.w, %47
    32    %49 = ineg %48
    32    %50 = umul_high %47, %49
    32    %51 = iadd %47, %50
                @store_preamble (%51) (base=34)
    32    %52 = ineg %6.w
                @store_preamble (%52) (base=36)
    32    %53 = load_const (0x0000003d = 0.000000 = 61)
    32    %54 = @load_constant_agx (%0, %53 (0x3d)) (access=speculatable, base=1, format=r32_uint, sign_extend=1)
                @store_preamble (%54) (base=38)
    32    %55 = load_const (0x00000006)
    32    %56 = load_const (0x0000003f = 63)
    32    %57 = iadd %56 (0x3f), %54
    32    %58 = ushr %57, %55 (0x6)
                @store_preamble (%58) (base=40)
    32    %59 = u2f32 %58 // exact
    32    %60 = fneg %59
    32    %61 = frcp %59
    32    %62 = ffma %60, %61, %10 (1.000000)
    32    %63 = ffma %62, %61, %61
    1     %64 = fneu %63, %63 // preserve:inf,nan
    32    %65 = bcsel %64, %61, %63
    32    %66 = fmul %65, %15 (4.294967e+09) // exact
    32    %67 = f2u32 %66 // exact
    32    %68 = imul %58, %67
    32    %69 = ineg %68
    32    %70 = umul_high %67, %69
    32    %71 = iadd %67, %70
                @store_preamble (%71) (base=42)
    32    %72 = ineg %58
                @store_preamble (%72) (base=44)
    32    %73 = load_const (0x0000001f = 0.000000 = 31)
    32x3  %74 = @load_constant_agx (%0, %73 (0x1f)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
                @store_preamble (%74) (base=46)
    32    %75 = load_const (0x00000020 = 0.000000 = 32)
    32x3  %76 = @load_constant_agx (%0, %75 (0x20)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
                @store_preamble (%76) (base=52)
    32    %77 = load_const (0x00000002)
    32    %78 = ushr %76.x, %77 (0x2)
                @store_preamble (%78) (base=58)
    32    %79 = load_const (0xdeadbeef = -559038737 = 3735928559)
    1     %80 = ieq %74.x, %79 (0xdeadbeef)
                @store_preamble (%80) (base=60)
    64    %81 = @load_preamble (base=4)
    32    %82 = load_const (0x00000000 = 0.000000)
    32x4  %83 = @load_constant_agx (%81, %82 (0x0)) (access=speculatable, base=0, format=r32_uint, sign_extend=0)
    64    %84 = pack_64_2x32_split %83.x, %83.y
                @store_preamble (%84) (base=64)
    32    %85 = load_const (0x00000001 = 0.000000)
    32x4  %86 = @load_constant_agx (%81, %85 (0x1)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
    64    %87 = pack_64_2x32_split %86.x, %86.y
                @store_preamble (%87) (base=68)
    32    %88 = load_const (0x00000021 = 0.000000 = 33)
    32    %89 = @load_constant_agx (%0, %88 (0x21)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
                @store_preamble (%89) (base=72)
    32    %90 = load_const (0x0000007b = 0.000000 = 123)
    32    %91 = @load_constant_agx (%0, %90 (0x7b)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
                @store_preamble (%91) (base=74)
    32    %92 = load_const (0x0000007f = 0.000000 = 127)
    32    %93 = @load_constant_agx (%0, %92 (0x7f)) (access=speculatable, base=0, format=r32_uint, sign_extend=1)
                @store_preamble (%93) (base=76)
    32x4  %94 = @load_constant_agx (%81, %77 (0x2)) (access=speculatable, base=2, format=r32_uint, sign_extend=1)
    64    %95 = pack_64_2x32_split %94.x, %94.y
                @store_preamble (%95) (base=80)
                @store_preamble (%91) (base=84)
                @store_preamble (%93) (base=86)
                @store_preamble (%95) (base=88)
                @store_preamble (%91) (base=92)
                @store_preamble (%93) (base=94)
                @store_preamble (%95) (base=96)
                @store_preamble (%91) (base=100)
                @store_preamble (%93) (base=102)
                @store_preamble (%95) (base=104)
                @store_preamble (%91) (base=108)
                @store_preamble (%93) (base=110)
                @store_preamble (%95) (base=112)
                @store_preamble (%91) (base=116)
                @store_preamble (%93) (base=118)
                @store_preamble (%95) (base=120)
                @store_preamble (%91) (base=124)
                @store_preamble (%93) (base=126)
                @store_preamble (%95) (base=128)
                @store_preamble (%91) (base=132)
                @store_preamble (%93) (base=134)
                @store_preamble (%95) (base=136)
                @store_preamble (%91) (base=140)
                @store_preamble (%93) (base=142)
                @store_preamble (%95) (base=144)
                @store_preamble (%91) (base=148)
                @store_preamble (%93) (base=150)
                @store_preamble (%95) (base=152)
                @store_preamble (%91) (base=156)
                @store_preamble (%93) (base=158)
                @store_preamble (%95) (base=160)
                @store_preamble (%91) (base=164)
                @store_preamble (%93) (base=166)
                @store_preamble (%95) (base=168)
                @store_preamble (%91) (base=172)
                @store_preamble (%93) (base=174)
                @store_preamble (%95) (base=176)
                @store_preamble (%91) (base=180)
                @store_preamble (%93) (base=182)
                @store_preamble (%95) (base=184)
                @store_preamble (%91) (base=188)
                @store_preamble (%93) (base=190)
                @store_preamble (%95) (base=192)
                @store_preamble (%91) (base=196)
                @store_preamble (%93) (base=198)
                @store_preamble (%95) (base=200)
                @store_preamble (%91) (base=204)
                @store_preamble (%93) (base=206)
                @store_preamble (%95) (base=208)
                @store_preamble (%91) (base=212)
                @store_preamble (%93) (base=214)
                @store_preamble (%95) (base=216)
                @store_preamble (%91) (base=220)
                @store_preamble (%93) (base=222)
                @store_preamble (%95) (base=224)
                @store_preamble (%91) (base=228)
                @store_preamble (%93) (base=230)
                @store_preamble (%95) (base=232)
                @store_preamble (%91) (base=236)
                @store_preamble (%93) (base=238)
                @store_preamble (%95) (base=240)
                @store_preamble (%91) (base=244)
                @store_preamble (%93) (base=246)
                @store_preamble (%95) (base=248)
                @store_preamble (%91) (base=252)
                @store_preamble (%93) (base=254)
                @store_preamble (%95) (base=256)
                @store_preamble (%91) (base=260)
                @store_preamble (%93) (base=262)
                @store_preamble (%95) (base=264)
                @store_preamble (%91) (base=268)
                @store_preamble (%93) (base=270)
                @store_preamble (%95) (base=272)
                @store_preamble (%91) (base=276)
                @store_preamble (%93) (base=278)
                @store_preamble (%95) (base=280)
                @store_preamble (%91) (base=284)
                @store_preamble (%93) (base=286)
                @store_preamble (%95) (base=288)
                @store_preamble (%91) (base=292)
                @store_preamble (%93) (base=294)
                @store_preamble (%95) (base=296)
                @store_preamble (%91) (base=300)
                @store_preamble (%93) (base=302)
                @store_preamble (%95) (base=304)
                @store_preamble (%91) (base=308)
                @store_preamble (%93) (base=310)
                @store_preamble (%95) (base=312)
                @store_preamble (%91) (base=316)
                @store_preamble (%93) (base=318)
                @store_preamble (%95) (base=320)
                @store_preamble (%91) (base=324)
                @store_preamble (%93) (base=326)
                @store_preamble (%95) (base=328)
                // succs: b1
    block b1:
}

block0 {
   699 = get_sr #0x0
   700 = get_sr #0x1
   701 = get_sr #0x2
   5 = iadd 701, u6, #0x0
   6 = iadd u7, 5, #0x0
   702d = imad 6.abs, u12.abs, #0, #0x0
   _, 7 = split 702d
   8 = imad 7, u10, #0, #0x0
   9 = iadd 6, 8.neg, #0x0
   11 = iadd 7, #1, #0x0
   13 = icmpsel 9, u10, 7, 11, #0x0
   15 = iadd 9, u13, #0x0
   16 = icmpsel 9, u10, 9, 15, #0x0
   17 = iadd 13, #1, #0x0
   19 = icmpsel 16, u10, 13, 17, #0x0
   20 = iadd 16, u13, #0x0
   21 = icmpsel 16, u10, 16, 20, #0x0
   704d = imad 19.abs, u15.abs, #0, #0x0
   _, 24 = split 704d
   25 = imad 24, u14, #0, #0x0
   26 = iadd 19, 25.neg, #0x0
   27 = iadd 24, #1, #0x0
   29 = icmpsel 26, u14, 24, 27, #0x0
   31 = iadd 26, u16, #0x0
   32 = icmpsel 26, u14, 26, 31, #0x0
   33 = iadd 29, #1, #0x0
   35 = icmpsel 32, u14, 29, 33, #0x0
   706d = imad 21.abs, u17.abs, #0, #0x0
   _, 37 = split 706d
   38 = imad 37, u11, #0, #0x0
   39 = iadd 21, 38.neg, #0x0
   40 = iadd 37, #1, #0x0
   42 = icmpsel 39, u11, 37, 40, #0x0
   44 = iadd 39, u18, #0x0
   45 = icmpsel 39, u11, 39, 44, #0x0
   46 = iadd 42, #1, #0x0
   48 = icmpsel 45, u11, 42, 46, #0x0
   50 = imad 35, u9, 48, #0x0
   54 = iadd 699, u4, #0x0
   708d = imad 54.abs, u21.abs, #0, #0x0
   _, 55 = split 708d
   56 = imad 55, u20, #0, #0x0
   57 = iadd 54, 56.neg, #0x0
   60 = iadd 57, u22, #0x0
   61 = icmpsel 57, u20, 57, 60, #0x0
   63 = iadd 61, u22, #0x0
   64 = icmpsel 61, u20, 61, 63, #0x0
   65 = iadd 55, #1, #0x0
   66 = icmpsel 57, u20, 55, 65, #0x0
   67 = iadd 66, #1, #0x0
   68 = icmpsel 61, u20, 66, 67, #0x0
   710 = get_sr #0x30
   74 = bfi #0, 64, #6, #0x0
   75 = imad 68, u8, #0, #0x0
   76 = imad 74, u24, 75, #0x0
   78 = bfeil #0, 76, #2, #0x0
   79 = imad 50, u29, 78, #0x0
   80 = imad 6, u27, 75, #0x0
   81 = iadd 700, u5, #0x0
   82 = bfi #0, 81, #6, #0x0
   83 = imad 82, u25, 80, #0x0
   85 = and 710, #7
   89 = iadd 68, #1, #0x0
   90 = imad 89, u8, #0, #0x0
   91 = icmpsel u23, 90, u23, 90, #0x0
   94 = bfeil #0, 710, #3, #0x0
   95 = bfeil #0, 83, #2, #0x0
   96 = and 710, #31
   98 = and #3, 710
   99 = bfeil #0, 96, #2, #0x0
   100 = bfeil #0, 710, #5, #0x1
   101 = bfeil #0, 710, #6, #0x0
   begin_cf 
} -> block1 

block1 {
   103 = phi #0, 262
   104 = phi #0, 263
   105 = phi #0, 264
   106 = phi #0, 265
   107 = phi #0, 266
   108 = phi #0, 267
   109 = phi #0, 268
   110 = phi #0, 269
   111 = phi #0, 270
   112 = phi #0, 271
   113 = phi #0, 272
   114 = phi #0, 273
   115 = phi #0, 274
   116 = phi #0, 275
   117 = phi #0, 276
   118 = phi #0, 277
   119 = phi #0, 278
   120 = phi #0, 279
   121 = phi #0, 280
   122 = phi #0, 281
   123 = phi #0, 282
   124 = phi #0, 283
   125 = phi #0, 284
   126 = phi #0, 285
   127 = phi #0, 286
   128 = phi #0, 287
   129 = phi #0, 288
   130 = phi #0, 289
   131 = phi #0, 290
   132 = phi #0, 291
   133 = phi #0, 292
   134 = phi #0, 293
   135 = phi 75, 419
   136 = phi 95, 418
   137 = phi 79, 417
   if_icmp 135, 91, #0xaaab8cb611c0, n=1, inv
} -> block2 block3  from block0 block12

block2 {
   break #0xaaab8cb5f650, n=2
} -> block13  from block1

block3 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb611c0, n=1
   pop_exec #0x0, n=1
} -> block4  from block1

block4 {
   if_icmp u30l, #0, #0xaaab8cb776e0, n=1, inv
} -> block5 block6  from block3

block5 {
   140 = iadd 137, 85, #0x0
   141 = imad 94, u24, #0, #0x0
   142 = bfeil #0, 141, #2, #0x0
   143 = iadd 142, 140, #0x0
   144 = iadd #0, 85, #0x0
   145 = bfeil #0, 144, #1, #0x0
   147 = imad 94, #17, 145, #0x0
   148 = and 143, #63
   149 = iadd #0, 148, #0x0
   150 = bfeil #0, 149, #5, #0x0
   151 = and 149, #31
   152 = bfeil #0, 151, #4, #0x0
   153 = iadd 152, 150, #0x0
   797d = mov u32:u33
   154d = mov 797d
   156 = bfeil #0, 143, #6, #0x0
   157 = iadd 156, 156, #0x0
   158 = bfeil #0, 157, #28, #0x0
   160 = imad 156, #144, #0, #0x0
   161d = collect 160, 158
   162d = iadd 154d, 161d, #0x0
   163h = device_load 162d, #0, xy, #0x0, slot 0
   713h, 714h = split 163h
   164 = iadd 153, #4, #0x0
   166 = icmpsel 153, #4, 153, 164, #0x0
   168 = iadd 153, #4.neg, #0x0
   169 = icmpsel 153, #4, 153, 168, #0x0
   170 = icmpsel 153, #4, 164, 153, #0x0
   171 = iadd #4, 160, #0x0
   172 = iadd 171, 166, #0x0
   173h = device_load u32:u33, 172.abs, x, #0x0, slot 0
   174 = iadd 171, 169, #0x0
   175h = device_load u32:u33, 174.abs, x, #0x0, slot 0
   179 = icmpsel 153, #4, #48, #192, #0x0
   180 = and 175h, 179
   181 = icmpsel 153, #4, #0, #2, #0x0
   182 = bfeil #0, 180, 181, #0x0
   185 = and 173h, #15
   186 = or 185, 182
   187h = and 186, #255
   188 = iadd 171, 164, #0x0
   189h = device_load u32:u33, 188.abs, x, #0x0, slot 0
   192 = icmpsel 153, #4, #15, #240, #0x0
   193 = and 189h, 192
   194 = icmpsel 153, #4, #0, #4, #0x0
   195 = bfeil #0, 193, 194, #0x0
   196 = iadd 171, 170, #0x0
   197h = device_load u32:u33, 196.abs, x, #0x0, slot 0
   199 = and 197h, 179
   200 = bfeil #0, 199, 181, #0x0
   201 = or 195, 200
   202h = and 201, #255
   203 = convert #0, 187h, #0x1
   205 = fmul 713h, 203
   206 = convert #0, 202h, #0x1
   208 = fmul 714h, 206
   211 = and 149, u170
   212 = iadd #16, 211, #0x0
   213 = and 149, #15
   214 = iadd 212, 213, #0x0
   215 = iadd 160, 214, #0x0
   216d = collect 215, u167
   217d = iadd 154d, 216d, #0x0
   218 = device_load 217d, #0, x, #0x0, slot 0
   219 = iadd #0, 152, #0x0
   220 = and 219, #31
   221 = bfeil #0, 218, 220, #0x0
   223 = and 221, u173
   224h = and 223, #255
   225 = bfeil #0, 223, #8, #0x0
   226h = and 225, #255
   _, 227h = split 223
   229h = and 227h, #255
   231 = bfeil #0, 223, #24, #0x0
   232h = and 231, #255
   234 = convert #0, 224h, #0x1
   235 = ffma 205, 234, 208.neg
   236 = convert #0, 226h, #0x1
   237 = ffma 205, 236, 208.neg
   238 = iadd #0, 147, #0x0
   239h, _ = split 238
   240 = collect 235, 237
   local_store 240, 239h, #0, xy, #0x0
   241 = convert #0, 229h, #0x1
   242 = ffma 205, 241, 208.neg
   243 = convert #0, 232h, #0x1
   244 = ffma 205, 243, 208.neg
   245 = iadd 238, #8, #0x0
   246h, _ = split 245
   247 = collect 242, 244
   local_store 247, 246h, #0, xy, #0x0
   248 = iadd 136, 85, #0x0
   249 = imad 94, u25, #0, #0x0
   250 = bfeil #0, 249, #2, #0x0
   251 = iadd 250, 248, #0x0
   253 = device_load u34:u35, 251.abs, xyzw, #0x0, slot 0
   723, 724, 725, 726 = split 253
   255 = iadd u166, 238, #0x0
   256h, _ = split 255
   257 = collect 723, 724
   local_store 257, 256h, #0, xy, #0x0
   259 = iadd u178, 238, #0x0
   260h, _ = split 259
   261 = collect 725, 726
   local_store 261, 260h, #0, xy, #0x0
} -> block7  from block4

block6 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb776e0, n=1
   pop_exec #0x0, n=1
} -> block7  from block4

block7 {
   threadgroup_barrier 
   if_fcmp #0.000000, #0.000000, #0x0, n=1
} -> block8  from block5 block6

block8 {
   262 = phi 103, 413
   263 = phi 104, 415
   264 = phi 105, 409
   265 = phi 106, 411
   266 = phi 107, 405
   267 = phi 108, 407
   268 = phi 109, 401
   269 = phi 110, 403
   270 = phi 111, 393
   271 = phi 112, 395
   272 = phi 113, 389
   273 = phi 114, 391
   274 = phi 115, 385
   275 = phi 116, 387
   276 = phi 117, 381
   277 = phi 118, 383
   278 = phi 119, 373
   279 = phi 120, 375
   280 = phi 121, 369
   281 = phi 122, 371
   282 = phi 123, 365
   283 = phi 124, 367
   284 = phi 125, 361
   285 = phi 126, 363
   286 = phi 127, 353
   287 = phi 128, 355
   288 = phi 129, 349
   289 = phi 130, 351
   290 = phi 131, 345
   291 = phi 132, 347
   292 = phi 133, 341
   293 = phi 134, 343
   294 = phi #0, 416
   if_icmp 294, #16, #0xaaab8cb79680, n=1, inv
} -> block9 block10  from block7 block11

block9 {
   break #0xaaab8cb77b20, n=2
} -> block12  from block8

block10 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb79680, n=1
   pop_exec #0x0, n=1
} -> block11  from block8

block11 {
   297 = bfi #0, 100, #5, #0x0
   298 = iadd 297, 98, #0x0
   300 = imad 298, #17, 294, #0x0
   301 = iadd #0, 300, #0x0
   302h, _ = split 301
   303 = local_load 302h, #0, xy, #0x0
   730, 731 = split 303
   305 = iadd 301, #136, #0x0
   306h, _ = split 305
   307 = local_load 306h, #0, xy, #0x0
   733, 734 = split 307
   309 = iadd 301, u172, #0x0
   310h, _ = split 309
   311 = local_load 310h, #0, xy, #0x0
   736, 737 = split 311
   313 = iadd 301, u168, #0x0
   314h, _ = split 313
   315 = local_load 314h, #0, xy, #0x0
   739, 740 = split 315
   317 = iadd 301, u179, #0x0
   318h, _ = split 317
   319 = local_load 318h, #0, xy, #0x0
   742, 743 = split 319
   321 = iadd 301, u169, #0x0
   322h, _ = split 321
   323 = local_load 322h, #0, xy, #0x0
   745, 746 = split 323
   325 = iadd 301, u171, #0x0
   326h, _ = split 325
   327 = local_load 326h, #0, xy, #0x0
   748, 749 = split 327
   329 = iadd 301, u175, #0x0
   330h, _ = split 329
   331 = local_load 330h, #0, xy, #0x0
   751, 752 = split 331
   332 = bfi #0, 101, #5, #0x0
   333 = iadd 332, 99, #0x0
   334 = imad 333, #17, 294, #0x0
   336 = iadd #0, 334, #0x0
   337 = iadd u166, 336, #0x0
   338h, _ = split 337
   339 = local_load 338h, #0, xy, #0x0
   754, 755 = split 339
   340 = ffma 731, 755, 292
   341 = ffma 730, 754, 340
   342 = ffma 734, 755, 293
   343 = ffma 733, 754, 342
   344 = ffma 737, 755, 290
   345 = ffma 736, 754, 344
   346 = ffma 740, 755, 291
   347 = ffma 739, 754, 346
   348 = ffma 743, 755, 288
   349 = ffma 742, 754, 348
   350 = ffma 746, 755, 289
   351 = ffma 745, 754, 350
   352 = ffma 749, 755, 286
   353 = ffma 748, 754, 352
   354 = ffma 752, 755, 287
   355 = ffma 751, 754, 354
   357 = iadd u174, 336, #0x0
   358h, _ = split 357
   359 = local_load 358h, #0, xy, #0x0
   757, 758 = split 359
   360 = ffma 731, 758, 284
   361 = ffma 730, 757, 360
   362 = ffma 734, 758, 285
   363 = ffma 733, 757, 362
   364 = ffma 737, 758, 282
   365 = ffma 736, 757, 364
   366 = ffma 740, 758, 283
   367 = ffma 739, 757, 366
   368 = ffma 743, 758, 280
   369 = ffma 742, 757, 368
   370 = ffma 746, 758, 281
   371 = ffma 745, 757, 370
   372 = ffma 749, 758, 278
   373 = ffma 748, 757, 372
   374 = ffma 752, 758, 279
   375 = ffma 751, 757, 374
   377 = iadd u176, 336, #0x0
   378h, _ = split 377
   379 = local_load 378h, #0, xy, #0x0
   760, 761 = split 379
   380 = ffma 731, 761, 276
   381 = ffma 730, 760, 380
   382 = ffma 734, 761, 277
   383 = ffma 733, 760, 382
   384 = ffma 737, 761, 274
   385 = ffma 736, 760, 384
   386 = ffma 740, 761, 275
   387 = ffma 739, 760, 386
   388 = ffma 743, 761, 272
   389 = ffma 742, 760, 388
   390 = ffma 746, 761, 273
   391 = ffma 745, 760, 390
   392 = ffma 749, 761, 270
   393 = ffma 748, 760, 392
   394 = ffma 752, 761, 271
   395 = ffma 751, 760, 394
   397 = iadd u177, 336, #0x0
   398h, _ = split 397
   399 = local_load 398h, #0, xy, #0x0
   763, 764 = split 399
   400 = ffma 731, 764, 268
   401 = ffma 730, 763, 400
   402 = ffma 734, 764, 269
   403 = ffma 733, 763, 402
   404 = ffma 737, 764, 266
   405 = ffma 736, 763, 404
   406 = ffma 740, 764, 267
   407 = ffma 739, 763, 406
   408 = ffma 743, 764, 264
   409 = ffma 742, 763, 408
   410 = ffma 746, 764, 265
   411 = ffma 745, 763, 410
   412 = ffma 749, 764, 262
   413 = ffma 748, 763, 412
   414 = ffma 752, 764, 263
   415 = ffma 751, 763, 414
   416 = iadd 294, #1, #0x0
   jmp_exec_any #0xaaab8cb77c60
   pop_exec #0x0, n=1
} -> block8  from block10

block12 {
   threadgroup_barrier 
   417 = iadd 137, #8, #0x0
   418 = iadd 136, #8, #0x0
   419 = iadd 135, #32, #0x0
   jmp_exec_any #0xaaab8cb5f790
   pop_exec #0x0, n=1
} -> block1  from block9

block13 {
   420 = imad 100, #32, 74, #0x0
   421 = imad 101, #32, 82, #0x0
   423 = imad 68, u28, #0, #0x0
   424 = imad u36, 423, #0, #0x0
   425 = imad 6, u28, 424, #0x0
   426 = iadd 420, 98, #0x0
   427 = iadd 421, 99, #0x0
   431h = icmp 427, u37, #0x0
   432h = icmpsel 426, u19, 431h, #0, #0x0
   if_icmp 432h, #0, #0xaaab8ccabfb0, n=1, inv
} -> block14 block15  from block2

block14 {
   434 = iadd 425, 426, #0x0
   435 = imad 427, u38, 434, #0x0
   device_store 133, u40:u41, 435.abs, x, #0x0, slot 0
} -> block16  from block13

block15 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccabfb0, n=1
   pop_exec #0x0, n=1
} -> block16  from block13

block16 {
   438h = icmp 427, u42, #0x0
   439 = iadd #1, 426, #0x0
   441h = icmpsel 439, u19, 438h, #0, #0x0
   if_icmp 441h, #0, #0xaaab8ccacea0, n=1, inv
} -> block17 block18  from block14 block15

block17 {
   443 = iadd 425, #1, #0x0
   444 = iadd 443, 426, #0x0
   445 = imad 427, u43, 444, #0x0
   device_store 134, u44:u45, 445.abs, x, #0x0, slot 0
} -> block19  from block16

block18 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccacea0, n=1
   pop_exec #0x0, n=1
} -> block19  from block16

block19 {
   448h = icmp 427, u46, #0x0
   449 = iadd 426, #2, #0x0
   451h = icmpsel 449, u19, 448h, #0, #0x0
   if_icmp 451h, #0, #0xaaab8ccade90, n=1, inv
} -> block20 block21  from block17 block18

block20 {
   453 = iadd 425, #2, #0x0
   454 = iadd 453, 426, #0x0
   455 = imad 427, u47, 454, #0x0
   device_store 131, u48:u49, 455.abs, x, #0x0, slot 0
} -> block22  from block19

block21 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccade90, n=1
   pop_exec #0x0, n=1
} -> block22  from block19

block22 {
   458h = icmp 427, u50, #0x0
   459 = iadd #3, 426, #0x0
   461h = icmpsel 459, u19, 458h, #0, #0x0
   if_icmp 461h, #0, #0xaaab8ccaee80, n=1, inv
} -> block23 block24  from block20 block21

block23 {
   463 = iadd 425, #3, #0x0
   464 = iadd 463, 426, #0x0
   465 = imad 427, u51, 464, #0x0
   device_store 132, u52:u53, 465.abs, x, #0x0, slot 0
} -> block25  from block22

block24 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccaee80, n=1
   pop_exec #0x0, n=1
} -> block25  from block22

block25 {
   468 = iadd 427, #1, #0x0
   469h = icmp 468, u54, #0x0
   470h = icmpsel 426, u19, 469h, #0, #0x0
   if_icmp 470h, #0, #0xaaab8ccb04a0, n=1, inv
} -> block26 block27  from block23 block24

block26 {
   472 = iadd 425, 426, #0x0
   473 = imad 468, u55, 472, #0x0
   device_store 125, u56:u57, 473.abs, x, #0x0, slot 0
} -> block28  from block25

block27 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb04a0, n=1
   pop_exec #0x0, n=1
} -> block28  from block25

block28 {
   476h = icmp 468, u58, #0x0
   477h = icmpsel 439, u19, 476h, #0, #0x0
   if_icmp 477h, #0, #0xaaab8ccb1350, n=1, inv
} -> block29 block30  from block26 block27

block29 {
   479 = iadd 425, #1, #0x0
   480 = iadd 479, 426, #0x0
   481 = imad 468, u59, 480, #0x0
   device_store 126, u60:u61, 481.abs, x, #0x0, slot 0
} -> block31  from block28

block30 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb1350, n=1
   pop_exec #0x0, n=1
} -> block31  from block28

block31 {
   484h = icmp 468, u62, #0x0
   485h = icmpsel 449, u19, 484h, #0, #0x0
   if_icmp 485h, #0, #0xaaab8ccb2200, n=1, inv
} -> block32 block33  from block29 block30

block32 {
   487 = iadd 425, #2, #0x0
   488 = iadd 487, 426, #0x0
   489 = imad 468, u63, 488, #0x0
   device_store 123, u64:u65, 489.abs, x, #0x0, slot 0
} -> block34  from block31

block33 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb2200, n=1
   pop_exec #0x0, n=1
} -> block34  from block31

block34 {
   492h = icmp 468, u66, #0x0
   493h = icmpsel 459, u19, 492h, #0, #0x0
   if_icmp 493h, #0, #0xaaab8ccb30b0, n=1, inv
} -> block35 block36  from block32 block33

block35 {
   495 = iadd 425, #3, #0x0
   496 = iadd 495, 426, #0x0
   497 = imad 468, u67, 496, #0x0
   device_store 124, u68:u69, 497.abs, x, #0x0, slot 0
} -> block37  from block34

block36 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb30b0, n=1
   pop_exec #0x0, n=1
} -> block37  from block34

block37 {
   500h = icmp 427, u70, #0x0
   502 = iadd #16, 426, #0x0
   504h = icmpsel 502, u19, 500h, #0, #0x0
   if_icmp 504h, #0, #0xaaab8ccb4090, n=1, inv
} -> block38 block39  from block35 block36

block38 {
   506 = iadd 425, 502, #0x0
   507 = imad 427, u71, 506, #0x0
   device_store 129, u72:u73, 507.abs, x, #0x0, slot 0
} -> block40  from block37

block39 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb4090, n=1
   pop_exec #0x0, n=1
} -> block40  from block37

block40 {
   510h = icmp 427, u74, #0x0
   512 = iadd #17, 426, #0x0
   514h = icmpsel 512, u19, 510h, #0, #0x0
   if_icmp 514h, #0, #0xaaab8ccb5110, n=1, inv
} -> block41 block42  from block38 block39

block41 {
   516 = iadd 425, #1, #0x0
   517 = iadd 516, 502, #0x0
   518 = imad 427, u75, 517, #0x0
   device_store 130, u76:u77, 518.abs, x, #0x0, slot 0
} -> block43  from block40

block42 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb5110, n=1
   pop_exec #0x0, n=1
} -> block43  from block40

block43 {
   521h = icmp 427, u78, #0x0
   523 = iadd #18, 426, #0x0
   525h = icmpsel 523, u19, 521h, #0, #0x0
   if_icmp 525h, #0, #0xaaab8ccb6190, n=1, inv
} -> block44 block45  from block41 block42

block44 {
   527 = iadd 425, #2, #0x0
   528 = iadd 527, 502, #0x0
   529 = imad 427, u79, 528, #0x0
   device_store 127, u80:u81, 529.abs, x, #0x0, slot 0
} -> block46  from block43

block45 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb6190, n=1
   pop_exec #0x0, n=1
} -> block46  from block43

block46 {
   532h = icmp 427, u82, #0x0
   534 = iadd #19, 426, #0x0
   536h = icmpsel 534, u19, 532h, #0, #0x0
   if_icmp 536h, #0, #0xaaab8ccb7210, n=1, inv
} -> block47 block48  from block44 block45

block47 {
   538 = iadd 425, #3, #0x0
   539 = iadd 538, 502, #0x0
   540 = imad 427, u83, 539, #0x0
   device_store 128, u84:u85, 540.abs, x, #0x0, slot 0
} -> block49  from block46

block48 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb7210, n=1
   pop_exec #0x0, n=1
} -> block49  from block46

block49 {
   543h = icmp 468, u86, #0x0
   544h = icmpsel 502, u19, 543h, #0, #0x0
   if_icmp 544h, #0, #0xaaab8ccb8020, n=1, inv
} -> block50 block51  from block47 block48

block50 {
   546 = iadd 425, 502, #0x0
   547 = imad 468, u87, 546, #0x0
   device_store 121, u88:u89, 547.abs, x, #0x0, slot 0
} -> block52  from block49

block51 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb8020, n=1
   pop_exec #0x0, n=1
} -> block52  from block49

block52 {
   550h = icmp 468, u90, #0x0
   551h = icmpsel 512, u19, 550h, #0, #0x0
   if_icmp 551h, #0, #0xaaab8ccb8ed0, n=1, inv
} -> block53 block54  from block50 block51

block53 {
   553 = iadd 425, #1, #0x0
   554 = iadd 553, 502, #0x0
   555 = imad 468, u91, 554, #0x0
   device_store 122, u92:u93, 555.abs, x, #0x0, slot 0
} -> block55  from block52

block54 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb8ed0, n=1
   pop_exec #0x0, n=1
} -> block55  from block52

block55 {
   558h = icmp 468, u94, #0x0
   559h = icmpsel 523, u19, 558h, #0, #0x0
   if_icmp 559h, #0, #0xaaab8ccb9d80, n=1, inv
} -> block56 block57  from block53 block54

block56 {
   561 = iadd 425, #2, #0x0
   562 = iadd 561, 502, #0x0
   563 = imad 468, u95, 562, #0x0
   device_store 119, u96:u97, 563.abs, x, #0x0, slot 0
} -> block58  from block55

block57 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb9d80, n=1
   pop_exec #0x0, n=1
} -> block58  from block55

block58 {
   566h = icmp 468, u98, #0x0
   567h = icmpsel 534, u19, 566h, #0, #0x0
   if_icmp 567h, #0, #0xaaab8ccbac30, n=1, inv
} -> block59 block60  from block56 block57

block59 {
   569 = iadd 425, #3, #0x0
   570 = iadd 569, 502, #0x0
   571 = imad 468, u99, 570, #0x0
   device_store 120, u100:u101, 571.abs, x, #0x0, slot 0
} -> block61  from block58

block60 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbac30, n=1
   pop_exec #0x0, n=1
} -> block61  from block58

block61 {
   574 = iadd #16, 427, #0x0
   575h = icmp 574, u102, #0x0
   576h = icmpsel 426, u19, 575h, #0, #0x0
   if_icmp 576h, #0, #0xaaab8ccbbae0, n=1, inv
} -> block62 block63  from block59 block60

block62 {
   578 = iadd 425, 426, #0x0
   579 = imad 574, u103, 578, #0x0
   device_store 117, u104:u105, 579.abs, x, #0x0, slot 0
} -> block64  from block61

block63 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbbae0, n=1
   pop_exec #0x0, n=1
} -> block64  from block61

block64 {
   582h = icmp 574, u106, #0x0
   583h = icmpsel 439, u19, 582h, #0, #0x0
   if_icmp 583h, #0, #0xaaab8ccbc990, n=1, inv
} -> block65 block66  from block62 block63

block65 {
   585 = iadd 425, #1, #0x0
   586 = iadd 585, 426, #0x0
   587 = imad 574, u107, 586, #0x0
   device_store 118, u108:u109, 587.abs, x, #0x0, slot 0
} -> block67  from block64

block66 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbc990, n=1
   pop_exec #0x0, n=1
} -> block67  from block64

block67 {
   590h = icmp 574, u110, #0x0
   591h = icmpsel 449, u19, 590h, #0, #0x0
   if_icmp 591h, #0, #0xaaab8ccbd840, n=1, inv
} -> block68 block69  from block65 block66

block68 {
   593 = iadd 425, #2, #0x0
   594 = iadd 593, 426, #0x0
   595 = imad 574, u111, 594, #0x0
   device_store 115, u112:u113, 595.abs, x, #0x0, slot 0
} -> block70  from block67

block69 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbd840, n=1
   pop_exec #0x0, n=1
} -> block70  from block67

block70 {
   598h = icmp 574, u114, #0x0
   599h = icmpsel 459, u19, 598h, #0, #0x0
   if_icmp 599h, #0, #0xaaab8ccbe6f0, n=1, inv
} -> block71 block72  from block68 block69

block71 {
   601 = iadd 425, #3, #0x0
   602 = iadd 601, 426, #0x0
   603 = imad 574, u115, 602, #0x0
   device_store 116, u116:u117, 603.abs, x, #0x0, slot 0
} -> block73  from block70

block72 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbe6f0, n=1
   pop_exec #0x0, n=1
} -> block73  from block70

block73 {
   606 = iadd #17, 427, #0x0
   607h = icmp 606, u118, #0x0
   608h = icmpsel 426, u19, 607h, #0, #0x0
   if_icmp 608h, #0, #0xaaab8ccafd30, n=1, inv
} -> block74 block75  from block71 block72

block74 {
   610 = iadd 425, 426, #0x0
   611 = imad 606, u119, 610, #0x0
   device_store 109, u120:u121, 611.abs, x, #0x0, slot 0
} -> block76  from block73

block75 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccafd30, n=1
   pop_exec #0x0, n=1
} -> block76  from block73

block76 {
   614h = icmp 606, u122, #0x0
   615h = icmpsel 439, u19, 614h, #0, #0x0
   if_icmp 615h, #0, #0xaaab8ccbf5a0, n=1, inv
} -> block77 block78  from block74 block75

block77 {
   617 = iadd 425, #1, #0x0
   618 = iadd 617, 426, #0x0
   619 = imad 606, u123, 618, #0x0
   device_store 110, u124:u125, 619.abs, x, #0x0, slot 0
} -> block79  from block76

block78 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbf5a0, n=1
   pop_exec #0x0, n=1
} -> block79  from block76

block79 {
   622h = icmp 606, u126, #0x0
   623h = icmpsel 449, u19, 622h, #0, #0x0
   if_icmp 623h, #0, #0xaaab8caf8060, n=1, inv
} -> block80 block81  from block77 block78

block80 {
   625 = iadd 425, #2, #0x0
   626 = iadd 625, 426, #0x0
   627 = imad 606, u127, 626, #0x0
   822d = mov u128:u129
   device_store 107, 822d, 627.abs, x, #0x0, slot 0
} -> block82  from block79

block81 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caf8060, n=1
   pop_exec #0x0, n=1
} -> block82  from block79

block82 {
   630h = icmp 606, u130, #0x0
   631h = icmpsel 459, u19, 630h, #0, #0x0
   if_icmp 631h, #0, #0xaaab8caf8f10, n=1, inv
} -> block83 block84  from block80 block81

block83 {
   633 = iadd 425, #3, #0x0
   634 = iadd 633, 426, #0x0
   635 = imad 606, u131, 634, #0x0
   824d = mov u132:u133
   device_store 108, 824d, 635.abs, x, #0x0, slot 0
} -> block85  from block82

block84 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caf8f10, n=1
   pop_exec #0x0, n=1
} -> block85  from block82

block85 {
   638h = icmp 574, u134, #0x0
   639h = icmpsel 502, u19, 638h, #0, #0x0
   if_icmp 639h, #0, #0xaaab8caf9d20, n=1, inv
} -> block86 block87  from block83 block84

block86 {
   641 = iadd 425, 502, #0x0
   642 = imad 574, u135, 641, #0x0
   826d = mov u136:u137
   device_store 113, 826d, 642.abs, x, #0x0, slot 0
} -> block88  from block85

block87 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caf9d20, n=1
   pop_exec #0x0, n=1
} -> block88  from block85

block88 {
   645h = icmp 574, u138, #0x0
   646h = icmpsel 512, u19, 645h, #0, #0x0
   if_icmp 646h, #0, #0xaaab8cafabd0, n=1, inv
} -> block89 block90  from block86 block87

block89 {
   648 = iadd 425, #1, #0x0
   649 = iadd 648, 502, #0x0
   650 = imad 574, u139, 649, #0x0
   828d = mov u140:u141
   device_store 114, 828d, 650.abs, x, #0x0, slot 0
} -> block91  from block88

block90 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafabd0, n=1
   pop_exec #0x0, n=1
} -> block91  from block88

block91 {
   653h = icmp 574, u142, #0x0
   654h = icmpsel 523, u19, 653h, #0, #0x0
   if_icmp 654h, #0, #0xaaab8cafba80, n=1, inv
} -> block92 block93  from block89 block90

block92 {
   656 = iadd 425, #2, #0x0
   657 = iadd 656, 502, #0x0
   658 = imad 574, u143, 657, #0x0
   830d = mov u144:u145
   device_store 111, 830d, 658.abs, x, #0x0, slot 0
} -> block94  from block91

block93 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafba80, n=1
   pop_exec #0x0, n=1
} -> block94  from block91

block94 {
   661h = icmp 574, u146, #0x0
   662h = icmpsel 534, u19, 661h, #0, #0x0
   if_icmp 662h, #0, #0xaaab8cafc930, n=1, inv
} -> block95 block96  from block92 block93

block95 {
   664 = iadd 425, #3, #0x0
   665 = iadd 664, 502, #0x0
   666 = imad 574, u147, 665, #0x0
   832d = mov u148:u149
   device_store 112, 832d, 666.abs, x, #0x0, slot 0
} -> block97  from block94

block96 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafc930, n=1
   pop_exec #0x0, n=1
} -> block97  from block94

block97 {
   669h = icmp 606, u150, #0x0
   670h = icmpsel 502, u19, 669h, #0, #0x0
   if_icmp 670h, #0, #0xaaab8cafd740, n=1, inv
} -> block98 block99  from block95 block96

block98 {
   672 = iadd 425, 502, #0x0
   673 = imad 606, u151, 672, #0x0
   834d = mov u152:u153
   device_store 105, 834d, 673.abs, x, #0x0, slot 0
} -> block100  from block97

block99 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafd740, n=1
   pop_exec #0x0, n=1
} -> block100  from block97

block100 {
   676h = icmp 606, u154, #0x0
   677h = icmpsel 512, u19, 676h, #0, #0x0
   if_icmp 677h, #0, #0xaaab8cafe5f0, n=1, inv
} -> block101 block102  from block98 block99

block101 {
   679 = iadd 425, #1, #0x0
   680 = iadd 679, 502, #0x0
   681 = imad 606, u155, 680, #0x0
   836d = mov u156:u157
   device_store 106, 836d, 681.abs, x, #0x0, slot 0
} -> block103  from block100

block102 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafe5f0, n=1
   pop_exec #0x0, n=1
} -> block103  from block100

block103 {
   684h = icmp 606, u158, #0x0
   685h = icmpsel 523, u19, 684h, #0, #0x0
   if_icmp 685h, #0, #0xaaab8caff4a0, n=1, inv
} -> block104 block105  from block101 block102

block104 {
   687 = iadd 425, #2, #0x0
   688 = iadd 687, 502, #0x0
   689 = imad 606, u159, 688, #0x0
   838d = mov u160:u161
   device_store 103, 838d, 689.abs, x, #0x0, slot 0
} -> block106  from block103

block105 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caff4a0, n=1
   pop_exec #0x0, n=1
} -> block106  from block103

block106 {
   692h = icmp 606, u162, #0x0
   693h = icmpsel 534, u19, 692h, #0, #0x0
   if_icmp 693h, #0, #0xaaab8cb00350, n=1, inv
} -> block107 block108  from block104 block105

block107 {
   695 = iadd 425, #3, #0x0
   696 = iadd 695, 502, #0x0
   697 = imad 606, u163, 696, #0x0
   840d = mov u164:u165
   device_store 104, 840d, 697.abs, x, #0x0, slot 0
} -> block109  from block106

block108 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb00350, n=1
   pop_exec #0x0, n=1
} -> block109  from block106

block109 {
   stop 
} from block107 block108

block0 {
   699 = get_sr #0x0
   700 = get_sr #0x1
   701 = get_sr #0x2
   5 = iadd 701, u6, #0x0
   6 = iadd u7, 5, #0x0
   702d = imad 6.abs, u12.abs, #0, #0x0
   _, 7 = split 702d
   8 = imad 7, u10, #0, #0x0
   9 = iadd 6, 8.neg, #0x0
   11 = iadd 7, #1, #0x0
   13 = icmpsel 9, u10, 7, 11, #0x0
   15 = iadd 9, u13, #0x0
   16 = icmpsel 9, u10, 9, 15, #0x0
   17 = iadd 13, #1, #0x0
   19 = icmpsel 16, u10, 13, 17, #0x0
   20 = iadd 16, u13, #0x0
   21 = icmpsel 16, u10, 16, 20, #0x0
   704d = imad 19.abs, u15.abs, #0, #0x0
   _, 24 = split 704d
   25 = imad 24, u14, #0, #0x0
   26 = iadd 19, 25.neg, #0x0
   27 = iadd 24, #1, #0x0
   29 = icmpsel 26, u14, 24, 27, #0x0
   31 = iadd 26, u16, #0x0
   32 = icmpsel 26, u14, 26, 31, #0x0
   33 = iadd 29, #1, #0x0
   35 = icmpsel 32, u14, 29, 33, #0x0
   706d = imad 21.abs, u17.abs, #0, #0x0
   _, 37 = split 706d
   38 = imad 37, u11, #0, #0x0
   39 = iadd 21, 38.neg, #0x0
   40 = iadd 37, #1, #0x0
   42 = icmpsel 39, u11, 37, 40, #0x0
   44 = iadd 39, u18, #0x0
   45 = icmpsel 39, u11, 39, 44, #0x0
   46 = iadd 42, #1, #0x0
   48 = icmpsel 45, u11, 42, 46, #0x0
   50 = imad 35, u9, 48, #0x0
   54 = iadd 699, u4, #0x0
   708d = imad 54.abs, u21.abs, #0, #0x0
   _, 55 = split 708d
   56 = imad 55, u20, #0, #0x0
   57 = iadd 54, 56.neg, #0x0
   60 = iadd 57, u22, #0x0
   61 = icmpsel 57, u20, 57, 60, #0x0
   63 = iadd 61, u22, #0x0
   64 = icmpsel 61, u20, 61, 63, #0x0
   65 = iadd 55, #1, #0x0
   66 = icmpsel 57, u20, 55, 65, #0x0
   67 = iadd 66, #1, #0x0
   68 = icmpsel 61, u20, 66, 67, #0x0
   710 = get_sr #0x30
   74 = bfi #0, 64, #6, #0x0
   75 = imad 68, u8, #0, #0x0
   76 = imad 74, u24, 75, #0x0
   78 = bfeil #0, 76, #2, #0x0
   79 = imad 50, u29, 78, #0x0
   80 = imad 6, u27, 75, #0x0
   81 = iadd 700, u5, #0x0
   82 = bfi #0, 81, #6, #0x0
   83 = imad 82, u25, 80, #0x0
   85 = and 710, #7
   89 = iadd 68, #1, #0x0
   90 = imad 89, u8, #0, #0x0
   91 = icmpsel u23, 90, u23, 90, #0x0
   94 = bfeil #0, 710, #3, #0x0
   95 = bfeil #0, 83, #2, #0x0
   96 = and 710, #31
   98 = and #3, 710
   99 = bfeil #0, 96, #2, #0x0
   100 = bfeil #0, 710, #5, #0x1
   101 = bfeil #0, 710, #6, #0x0
   begin_cf 
} -> block1 

block1 {
   103 = phi #0, 262
   104 = phi #0, 263
   105 = phi #0, 264
   106 = phi #0, 265
   107 = phi #0, 266
   108 = phi #0, 267
   109 = phi #0, 268
   110 = phi #0, 269
   111 = phi #0, 270
   112 = phi #0, 271
   113 = phi #0, 272
   114 = phi #0, 273
   115 = phi #0, 274
   116 = phi #0, 275
   117 = phi #0, 276
   118 = phi #0, 277
   119 = phi #0, 278
   120 = phi #0, 279
   121 = phi #0, 280
   122 = phi #0, 281
   123 = phi #0, 282
   124 = phi #0, 283
   125 = phi #0, 284
   126 = phi #0, 285
   127 = phi #0, 286
   128 = phi #0, 287
   129 = phi #0, 288
   130 = phi #0, 289
   131 = phi #0, 290
   132 = phi #0, 291
   133 = phi #0, 292
   134 = phi #0, 293
   135 = phi 75, 419
   136 = phi 95, 418
   137 = phi 79, 417
   if_icmp 135, 91, #0xaaab8cb611c0, n=1, inv
} -> block2 block3  from block0 block12

block2 {
   break #0xaaab8cb5f650, n=2
} -> block13  from block1

block3 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb611c0, n=1
   pop_exec #0x0, n=1
} -> block4  from block1

block4 {
   if_icmp u30l, #0, #0xaaab8cb776e0, n=1, inv
} -> block5 block6  from block3

block5 {
   141 = imad 94, u24, #0, #0x0
   142 = bfeil #0, 141, #2, #0x0
   140 = iadd 137, 85, #0x0
   143 = iadd 142, 140, #0x0
   148 = and 143, #63
   149 = iadd #0, 148, #0x0
   211 = and 149, u170
   212 = iadd #16, 211, #0x0
   213 = and 149, #15
   214 = iadd 212, 213, #0x0
   156 = bfeil #0, 143, #6, #0x0
   157 = iadd 156, 156, #0x0
   160 = imad 156, #144, #0, #0x0
   158 = bfeil #0, 157, #28, #0x0
   797d = mov u32:u33
   154d = mov 797d
   215 = iadd 160, 214, #0x0
   161d = collect 160, 158
   162d = iadd 154d, 161d, #0x0
   216d = collect 215, u167
   217d = iadd 154d, 216d, #0x0
   163h = device_load 162d, #0, xy, #0x0, slot 0
   151 = and 149, #31
   150 = bfeil #0, 149, #5, #0x0
   152 = bfeil #0, 151, #4, #0x0
   153 = iadd 152, 150, #0x0
   171 = iadd #4, 160, #0x0
   164 = iadd 153, #4, #0x0
   166 = icmpsel 153, #4, 153, 164, #0x0
   172 = iadd 171, 166, #0x0
   168 = iadd 153, #4.neg, #0x0
   169 = icmpsel 153, #4, 153, 168, #0x0
   174 = iadd 171, 169, #0x0
   188 = iadd 171, 164, #0x0
   170 = icmpsel 153, #4, 164, 153, #0x0
   196 = iadd 171, 170, #0x0
   173h = device_load u32:u33, 172.abs, x, #0x0, slot 0
   175h = device_load u32:u33, 174.abs, x, #0x0, slot 0
   189h = device_load u32:u33, 188.abs, x, #0x0, slot 0
   197h = device_load u32:u33, 196.abs, x, #0x0, slot 0
   218 = device_load 217d, #0, x, #0x0, slot 0
   192 = icmpsel 153, #4, #15, #240, #0x0
   193 = and 189h, 192
   194 = icmpsel 153, #4, #0, #4, #0x0
   195 = bfeil #0, 193, 194, #0x0
   179 = icmpsel 153, #4, #48, #192, #0x0
   199 = and 197h, 179
   180 = and 175h, 179
   181 = icmpsel 153, #4, #0, #2, #0x0
   200 = bfeil #0, 199, 181, #0x0
   182 = bfeil #0, 180, 181, #0x0
   201 = or 195, 200
   185 = and 173h, #15
   186 = or 185, 182
   219 = iadd #0, 152, #0x0
   220 = and 219, #31
   221 = bfeil #0, 218, 220, #0x0
   202h = and 201, #255
   187h = and 186, #255
   223 = and 221, u173
   225 = bfeil #0, 223, #8, #0x0
   226h = and 225, #255
   713h, 714h = split 163h
   206 = convert #0, 202h, #0x1
   208 = fmul 714h, 206
   203 = convert #0, 187h, #0x1
   205 = fmul 713h, 203
   144 = iadd #0, 85, #0x0
   145 = bfeil #0, 144, #1, #0x0
   147 = imad 94, #17, 145, #0x0
   236 = convert #0, 226h, #0x1
   237 = ffma 205, 236, 208.neg
   224h = and 223, #255
   234 = convert #0, 224h, #0x1
   235 = ffma 205, 234, 208.neg
   238 = iadd #0, 147, #0x0
   240 = collect 235, 237
   239h, _ = split 238
   local_store 240, 239h, #0, xy, #0x0
   _, 227h = split 223
   231 = bfeil #0, 223, #24, #0x0
   232h = and 231, #255
   229h = and 227h, #255
   243 = convert #0, 232h, #0x1
   244 = ffma 205, 243, 208.neg
   241 = convert #0, 229h, #0x1
   242 = ffma 205, 241, 208.neg
   245 = iadd 238, #8, #0x0
   246h, _ = split 245
   247 = collect 242, 244
   local_store 247, 246h, #0, xy, #0x0
   249 = imad 94, u25, #0, #0x0
   250 = bfeil #0, 249, #2, #0x0
   248 = iadd 136, 85, #0x0
   251 = iadd 250, 248, #0x0
   255 = iadd u166, 238, #0x0
   256h, _ = split 255
   253 = device_load u34:u35, 251.abs, xyzw, #0x0, slot 0
   723, 724, 725, 726 = split 253
   257 = collect 723, 724
   local_store 257, 256h, #0, xy, #0x0
   259 = iadd u178, 238, #0x0
   260h, _ = split 259
   261 = collect 725, 726
   local_store 261, 260h, #0, xy, #0x0
} -> block7  from block4

block6 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb776e0, n=1
   pop_exec #0x0, n=1
} -> block7  from block4

block7 {
   threadgroup_barrier 
   if_fcmp #0.000000, #0.000000, #0x0, n=1
} -> block8  from block5 block6

block8 {
   262 = phi 103, 413
   263 = phi 104, 415
   264 = phi 105, 409
   265 = phi 106, 411
   266 = phi 107, 405
   267 = phi 108, 407
   268 = phi 109, 401
   269 = phi 110, 403
   270 = phi 111, 393
   271 = phi 112, 395
   272 = phi 113, 389
   273 = phi 114, 391
   274 = phi 115, 385
   275 = phi 116, 387
   276 = phi 117, 381
   277 = phi 118, 383
   278 = phi 119, 373
   279 = phi 120, 375
   280 = phi 121, 369
   281 = phi 122, 371
   282 = phi 123, 365
   283 = phi 124, 367
   284 = phi 125, 361
   285 = phi 126, 363
   286 = phi 127, 353
   287 = phi 128, 355
   288 = phi 129, 349
   289 = phi 130, 351
   290 = phi 131, 345
   291 = phi 132, 347
   292 = phi 133, 341
   293 = phi 134, 343
   294 = phi #0, 416
   if_icmp 294, #16, #0xaaab8cb79680, n=1, inv
} -> block9 block10  from block7 block11

block9 {
   break #0xaaab8cb77b20, n=2
} -> block12  from block8

block10 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb79680, n=1
   pop_exec #0x0, n=1
} -> block11  from block8

block11 {
   297 = bfi #0, 100, #5, #0x0
   298 = iadd 297, 98, #0x0
   300 = imad 298, #17, 294, #0x0
   301 = iadd #0, 300, #0x0
   302h, _ = split 301
   305 = iadd 301, #136, #0x0
   306h, _ = split 305
   309 = iadd 301, u172, #0x0
   310h, _ = split 309
   313 = iadd 301, u168, #0x0
   314h, _ = split 313
   317 = iadd 301, u179, #0x0
   318h, _ = split 317
   321 = iadd 301, u169, #0x0
   322h, _ = split 321
   325 = iadd 301, u171, #0x0
   326h, _ = split 325
   329 = iadd 301, u175, #0x0
   330h, _ = split 329
   332 = bfi #0, 101, #5, #0x0
   333 = iadd 332, 99, #0x0
   334 = imad 333, #17, 294, #0x0
   336 = iadd #0, 334, #0x0
   337 = iadd u166, 336, #0x0
   338h, _ = split 337
   357 = iadd u174, 336, #0x0
   358h, _ = split 357
   377 = iadd u176, 336, #0x0
   378h, _ = split 377
   397 = iadd u177, 336, #0x0
   398h, _ = split 397
   303 = local_load 302h, #0, xy, #0x0
   307 = local_load 306h, #0, xy, #0x0
   311 = local_load 310h, #0, xy, #0x0
   315 = local_load 314h, #0, xy, #0x0
   319 = local_load 318h, #0, xy, #0x0
   323 = local_load 322h, #0, xy, #0x0
   327 = local_load 326h, #0, xy, #0x0
   331 = local_load 330h, #0, xy, #0x0
   339 = local_load 338h, #0, xy, #0x0
   359 = local_load 358h, #0, xy, #0x0
   379 = local_load 378h, #0, xy, #0x0
   399 = local_load 398h, #0, xy, #0x0
   730, 731 = split 303
   733, 734 = split 307
   736, 737 = split 311
   739, 740 = split 315
   742, 743 = split 319
   745, 746 = split 323
   748, 749 = split 327
   751, 752 = split 331
   754, 755 = split 339
   340 = ffma 731, 755, 292
   341 = ffma 730, 754, 340
   342 = ffma 734, 755, 293
   343 = ffma 733, 754, 342
   344 = ffma 737, 755, 290
   345 = ffma 736, 754, 344
   346 = ffma 740, 755, 291
   347 = ffma 739, 754, 346
   348 = ffma 743, 755, 288
   349 = ffma 742, 754, 348
   350 = ffma 746, 755, 289
   351 = ffma 745, 754, 350
   352 = ffma 749, 755, 286
   353 = ffma 748, 754, 352
   354 = ffma 752, 755, 287
   355 = ffma 751, 754, 354
   757, 758 = split 359
   360 = ffma 731, 758, 284
   361 = ffma 730, 757, 360
   362 = ffma 734, 758, 285
   363 = ffma 733, 757, 362
   364 = ffma 737, 758, 282
   365 = ffma 736, 757, 364
   366 = ffma 740, 758, 283
   367 = ffma 739, 757, 366
   368 = ffma 743, 758, 280
   369 = ffma 742, 757, 368
   370 = ffma 746, 758, 281
   371 = ffma 745, 757, 370
   372 = ffma 749, 758, 278
   373 = ffma 748, 757, 372
   374 = ffma 752, 758, 279
   375 = ffma 751, 757, 374
   760, 761 = split 379
   380 = ffma 731, 761, 276
   381 = ffma 730, 760, 380
   382 = ffma 734, 761, 277
   383 = ffma 733, 760, 382
   384 = ffma 737, 761, 274
   385 = ffma 736, 760, 384
   386 = ffma 740, 761, 275
   387 = ffma 739, 760, 386
   388 = ffma 743, 761, 272
   389 = ffma 742, 760, 388
   390 = ffma 746, 761, 273
   391 = ffma 745, 760, 390
   392 = ffma 749, 761, 270
   393 = ffma 748, 760, 392
   394 = ffma 752, 761, 271
   395 = ffma 751, 760, 394
   763, 764 = split 399
   400 = ffma 731, 764, 268
   401 = ffma 730, 763, 400
   402 = ffma 734, 764, 269
   403 = ffma 733, 763, 402
   404 = ffma 737, 764, 266
   405 = ffma 736, 763, 404
   406 = ffma 740, 764, 267
   407 = ffma 739, 763, 406
   408 = ffma 743, 764, 264
   409 = ffma 742, 763, 408
   410 = ffma 746, 764, 265
   411 = ffma 745, 763, 410
   412 = ffma 749, 764, 262
   413 = ffma 748, 763, 412
   414 = ffma 752, 764, 263
   415 = ffma 751, 763, 414
   416 = iadd 294, #1, #0x0
   jmp_exec_any #0xaaab8cb77c60
   pop_exec #0x0, n=1
} -> block8  from block10

block12 {
   threadgroup_barrier 
   417 = iadd 137, #8, #0x0
   418 = iadd 136, #8, #0x0
   419 = iadd 135, #32, #0x0
   jmp_exec_any #0xaaab8cb5f790
   pop_exec #0x0, n=1
} -> block1  from block9

block13 {
   420 = imad 100, #32, 74, #0x0
   421 = imad 101, #32, 82, #0x0
   423 = imad 68, u28, #0, #0x0
   424 = imad u36, 423, #0, #0x0
   425 = imad 6, u28, 424, #0x0
   426 = iadd 420, 98, #0x0
   427 = iadd 421, 99, #0x0
   431h = icmp 427, u37, #0x0
   432h = icmpsel 426, u19, 431h, #0, #0x0
   if_icmp 432h, #0, #0xaaab8ccabfb0, n=1, inv
} -> block14 block15  from block2

block14 {
   434 = iadd 425, 426, #0x0
   435 = imad 427, u38, 434, #0x0
   device_store 133, u40:u41, 435.abs, x, #0x0, slot 0
} -> block16  from block13

block15 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccabfb0, n=1
   pop_exec #0x0, n=1
} -> block16  from block13

block16 {
   438h = icmp 427, u42, #0x0
   439 = iadd #1, 426, #0x0
   441h = icmpsel 439, u19, 438h, #0, #0x0
   if_icmp 441h, #0, #0xaaab8ccacea0, n=1, inv
} -> block17 block18  from block14 block15

block17 {
   443 = iadd 425, #1, #0x0
   444 = iadd 443, 426, #0x0
   445 = imad 427, u43, 444, #0x0
   device_store 134, u44:u45, 445.abs, x, #0x0, slot 0
} -> block19  from block16

block18 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccacea0, n=1
   pop_exec #0x0, n=1
} -> block19  from block16

block19 {
   448h = icmp 427, u46, #0x0
   449 = iadd 426, #2, #0x0
   451h = icmpsel 449, u19, 448h, #0, #0x0
   if_icmp 451h, #0, #0xaaab8ccade90, n=1, inv
} -> block20 block21  from block17 block18

block20 {
   453 = iadd 425, #2, #0x0
   454 = iadd 453, 426, #0x0
   455 = imad 427, u47, 454, #0x0
   device_store 131, u48:u49, 455.abs, x, #0x0, slot 0
} -> block22  from block19

block21 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccade90, n=1
   pop_exec #0x0, n=1
} -> block22  from block19

block22 {
   458h = icmp 427, u50, #0x0
   459 = iadd #3, 426, #0x0
   461h = icmpsel 459, u19, 458h, #0, #0x0
   if_icmp 461h, #0, #0xaaab8ccaee80, n=1, inv
} -> block23 block24  from block20 block21

block23 {
   463 = iadd 425, #3, #0x0
   464 = iadd 463, 426, #0x0
   465 = imad 427, u51, 464, #0x0
   device_store 132, u52:u53, 465.abs, x, #0x0, slot 0
} -> block25  from block22

block24 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccaee80, n=1
   pop_exec #0x0, n=1
} -> block25  from block22

block25 {
   468 = iadd 427, #1, #0x0
   469h = icmp 468, u54, #0x0
   470h = icmpsel 426, u19, 469h, #0, #0x0
   if_icmp 470h, #0, #0xaaab8ccb04a0, n=1, inv
} -> block26 block27  from block23 block24

block26 {
   472 = iadd 425, 426, #0x0
   473 = imad 468, u55, 472, #0x0
   device_store 125, u56:u57, 473.abs, x, #0x0, slot 0
} -> block28  from block25

block27 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb04a0, n=1
   pop_exec #0x0, n=1
} -> block28  from block25

block28 {
   476h = icmp 468, u58, #0x0
   477h = icmpsel 439, u19, 476h, #0, #0x0
   if_icmp 477h, #0, #0xaaab8ccb1350, n=1, inv
} -> block29 block30  from block26 block27

block29 {
   479 = iadd 425, #1, #0x0
   480 = iadd 479, 426, #0x0
   481 = imad 468, u59, 480, #0x0
   device_store 126, u60:u61, 481.abs, x, #0x0, slot 0
} -> block31  from block28

block30 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb1350, n=1
   pop_exec #0x0, n=1
} -> block31  from block28

block31 {
   484h = icmp 468, u62, #0x0
   485h = icmpsel 449, u19, 484h, #0, #0x0
   if_icmp 485h, #0, #0xaaab8ccb2200, n=1, inv
} -> block32 block33  from block29 block30

block32 {
   487 = iadd 425, #2, #0x0
   488 = iadd 487, 426, #0x0
   489 = imad 468, u63, 488, #0x0
   device_store 123, u64:u65, 489.abs, x, #0x0, slot 0
} -> block34  from block31

block33 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb2200, n=1
   pop_exec #0x0, n=1
} -> block34  from block31

block34 {
   492h = icmp 468, u66, #0x0
   493h = icmpsel 459, u19, 492h, #0, #0x0
   if_icmp 493h, #0, #0xaaab8ccb30b0, n=1, inv
} -> block35 block36  from block32 block33

block35 {
   495 = iadd 425, #3, #0x0
   496 = iadd 495, 426, #0x0
   497 = imad 468, u67, 496, #0x0
   device_store 124, u68:u69, 497.abs, x, #0x0, slot 0
} -> block37  from block34

block36 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb30b0, n=1
   pop_exec #0x0, n=1
} -> block37  from block34

block37 {
   500h = icmp 427, u70, #0x0
   502 = iadd #16, 426, #0x0
   504h = icmpsel 502, u19, 500h, #0, #0x0
   if_icmp 504h, #0, #0xaaab8ccb4090, n=1, inv
} -> block38 block39  from block35 block36

block38 {
   506 = iadd 425, 502, #0x0
   507 = imad 427, u71, 506, #0x0
   device_store 129, u72:u73, 507.abs, x, #0x0, slot 0
} -> block40  from block37

block39 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb4090, n=1
   pop_exec #0x0, n=1
} -> block40  from block37

block40 {
   510h = icmp 427, u74, #0x0
   512 = iadd #17, 426, #0x0
   514h = icmpsel 512, u19, 510h, #0, #0x0
   if_icmp 514h, #0, #0xaaab8ccb5110, n=1, inv
} -> block41 block42  from block38 block39

block41 {
   516 = iadd 425, #1, #0x0
   517 = iadd 516, 502, #0x0
   518 = imad 427, u75, 517, #0x0
   device_store 130, u76:u77, 518.abs, x, #0x0, slot 0
} -> block43  from block40

block42 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb5110, n=1
   pop_exec #0x0, n=1
} -> block43  from block40

block43 {
   521h = icmp 427, u78, #0x0
   523 = iadd #18, 426, #0x0
   525h = icmpsel 523, u19, 521h, #0, #0x0
   if_icmp 525h, #0, #0xaaab8ccb6190, n=1, inv
} -> block44 block45  from block41 block42

block44 {
   527 = iadd 425, #2, #0x0
   528 = iadd 527, 502, #0x0
   529 = imad 427, u79, 528, #0x0
   device_store 127, u80:u81, 529.abs, x, #0x0, slot 0
} -> block46  from block43

block45 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb6190, n=1
   pop_exec #0x0, n=1
} -> block46  from block43

block46 {
   532h = icmp 427, u82, #0x0
   534 = iadd #19, 426, #0x0
   536h = icmpsel 534, u19, 532h, #0, #0x0
   if_icmp 536h, #0, #0xaaab8ccb7210, n=1, inv
} -> block47 block48  from block44 block45

block47 {
   538 = iadd 425, #3, #0x0
   539 = iadd 538, 502, #0x0
   540 = imad 427, u83, 539, #0x0
   device_store 128, u84:u85, 540.abs, x, #0x0, slot 0
} -> block49  from block46

block48 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb7210, n=1
   pop_exec #0x0, n=1
} -> block49  from block46

block49 {
   543h = icmp 468, u86, #0x0
   544h = icmpsel 502, u19, 543h, #0, #0x0
   if_icmp 544h, #0, #0xaaab8ccb8020, n=1, inv
} -> block50 block51  from block47 block48

block50 {
   546 = iadd 425, 502, #0x0
   547 = imad 468, u87, 546, #0x0
   device_store 121, u88:u89, 547.abs, x, #0x0, slot 0
} -> block52  from block49

block51 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb8020, n=1
   pop_exec #0x0, n=1
} -> block52  from block49

block52 {
   550h = icmp 468, u90, #0x0
   551h = icmpsel 512, u19, 550h, #0, #0x0
   if_icmp 551h, #0, #0xaaab8ccb8ed0, n=1, inv
} -> block53 block54  from block50 block51

block53 {
   553 = iadd 425, #1, #0x0
   554 = iadd 553, 502, #0x0
   555 = imad 468, u91, 554, #0x0
   device_store 122, u92:u93, 555.abs, x, #0x0, slot 0
} -> block55  from block52

block54 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb8ed0, n=1
   pop_exec #0x0, n=1
} -> block55  from block52

block55 {
   558h = icmp 468, u94, #0x0
   559h = icmpsel 523, u19, 558h, #0, #0x0
   if_icmp 559h, #0, #0xaaab8ccb9d80, n=1, inv
} -> block56 block57  from block53 block54

block56 {
   561 = iadd 425, #2, #0x0
   562 = iadd 561, 502, #0x0
   563 = imad 468, u95, 562, #0x0
   device_store 119, u96:u97, 563.abs, x, #0x0, slot 0
} -> block58  from block55

block57 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccb9d80, n=1
   pop_exec #0x0, n=1
} -> block58  from block55

block58 {
   566h = icmp 468, u98, #0x0
   567h = icmpsel 534, u19, 566h, #0, #0x0
   if_icmp 567h, #0, #0xaaab8ccbac30, n=1, inv
} -> block59 block60  from block56 block57

block59 {
   569 = iadd 425, #3, #0x0
   570 = iadd 569, 502, #0x0
   571 = imad 468, u99, 570, #0x0
   device_store 120, u100:u101, 571.abs, x, #0x0, slot 0
} -> block61  from block58

block60 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbac30, n=1
   pop_exec #0x0, n=1
} -> block61  from block58

block61 {
   574 = iadd #16, 427, #0x0
   575h = icmp 574, u102, #0x0
   576h = icmpsel 426, u19, 575h, #0, #0x0
   if_icmp 576h, #0, #0xaaab8ccbbae0, n=1, inv
} -> block62 block63  from block59 block60

block62 {
   578 = iadd 425, 426, #0x0
   579 = imad 574, u103, 578, #0x0
   device_store 117, u104:u105, 579.abs, x, #0x0, slot 0
} -> block64  from block61

block63 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbbae0, n=1
   pop_exec #0x0, n=1
} -> block64  from block61

block64 {
   582h = icmp 574, u106, #0x0
   583h = icmpsel 439, u19, 582h, #0, #0x0
   if_icmp 583h, #0, #0xaaab8ccbc990, n=1, inv
} -> block65 block66  from block62 block63

block65 {
   585 = iadd 425, #1, #0x0
   586 = iadd 585, 426, #0x0
   587 = imad 574, u107, 586, #0x0
   device_store 118, u108:u109, 587.abs, x, #0x0, slot 0
} -> block67  from block64

block66 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbc990, n=1
   pop_exec #0x0, n=1
} -> block67  from block64

block67 {
   590h = icmp 574, u110, #0x0
   591h = icmpsel 449, u19, 590h, #0, #0x0
   if_icmp 591h, #0, #0xaaab8ccbd840, n=1, inv
} -> block68 block69  from block65 block66

block68 {
   593 = iadd 425, #2, #0x0
   594 = iadd 593, 426, #0x0
   595 = imad 574, u111, 594, #0x0
   device_store 115, u112:u113, 595.abs, x, #0x0, slot 0
} -> block70  from block67

block69 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbd840, n=1
   pop_exec #0x0, n=1
} -> block70  from block67

block70 {
   598h = icmp 574, u114, #0x0
   599h = icmpsel 459, u19, 598h, #0, #0x0
   if_icmp 599h, #0, #0xaaab8ccbe6f0, n=1, inv
} -> block71 block72  from block68 block69

block71 {
   601 = iadd 425, #3, #0x0
   602 = iadd 601, 426, #0x0
   603 = imad 574, u115, 602, #0x0
   device_store 116, u116:u117, 603.abs, x, #0x0, slot 0
} -> block73  from block70

block72 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbe6f0, n=1
   pop_exec #0x0, n=1
} -> block73  from block70

block73 {
   606 = iadd #17, 427, #0x0
   607h = icmp 606, u118, #0x0
   608h = icmpsel 426, u19, 607h, #0, #0x0
   if_icmp 608h, #0, #0xaaab8ccafd30, n=1, inv
} -> block74 block75  from block71 block72

block74 {
   610 = iadd 425, 426, #0x0
   611 = imad 606, u119, 610, #0x0
   device_store 109, u120:u121, 611.abs, x, #0x0, slot 0
} -> block76  from block73

block75 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccafd30, n=1
   pop_exec #0x0, n=1
} -> block76  from block73

block76 {
   614h = icmp 606, u122, #0x0
   615h = icmpsel 439, u19, 614h, #0, #0x0
   if_icmp 615h, #0, #0xaaab8ccbf5a0, n=1, inv
} -> block77 block78  from block74 block75

block77 {
   617 = iadd 425, #1, #0x0
   618 = iadd 617, 426, #0x0
   619 = imad 606, u123, 618, #0x0
   device_store 110, u124:u125, 619.abs, x, #0x0, slot 0
} -> block79  from block76

block78 {
   else_fcmp #0.000000, #0.000000, #0xaaab8ccbf5a0, n=1
   pop_exec #0x0, n=1
} -> block79  from block76

block79 {
   622h = icmp 606, u126, #0x0
   623h = icmpsel 449, u19, 622h, #0, #0x0
   if_icmp 623h, #0, #0xaaab8caf8060, n=1, inv
} -> block80 block81  from block77 block78

block80 {
   625 = iadd 425, #2, #0x0
   626 = iadd 625, 426, #0x0
   627 = imad 606, u127, 626, #0x0
   822d = mov u128:u129
   device_store 107, 822d, 627.abs, x, #0x0, slot 0
} -> block82  from block79

block81 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caf8060, n=1
   pop_exec #0x0, n=1
} -> block82  from block79

block82 {
   630h = icmp 606, u130, #0x0
   631h = icmpsel 459, u19, 630h, #0, #0x0
   if_icmp 631h, #0, #0xaaab8caf8f10, n=1, inv
} -> block83 block84  from block80 block81

block83 {
   633 = iadd 425, #3, #0x0
   634 = iadd 633, 426, #0x0
   635 = imad 606, u131, 634, #0x0
   824d = mov u132:u133
   device_store 108, 824d, 635.abs, x, #0x0, slot 0
} -> block85  from block82

block84 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caf8f10, n=1
   pop_exec #0x0, n=1
} -> block85  from block82

block85 {
   638h = icmp 574, u134, #0x0
   639h = icmpsel 502, u19, 638h, #0, #0x0
   if_icmp 639h, #0, #0xaaab8caf9d20, n=1, inv
} -> block86 block87  from block83 block84

block86 {
   641 = iadd 425, 502, #0x0
   642 = imad 574, u135, 641, #0x0
   826d = mov u136:u137
   device_store 113, 826d, 642.abs, x, #0x0, slot 0
} -> block88  from block85

block87 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caf9d20, n=1
   pop_exec #0x0, n=1
} -> block88  from block85

block88 {
   645h = icmp 574, u138, #0x0
   646h = icmpsel 512, u19, 645h, #0, #0x0
   if_icmp 646h, #0, #0xaaab8cafabd0, n=1, inv
} -> block89 block90  from block86 block87

block89 {
   648 = iadd 425, #1, #0x0
   649 = iadd 648, 502, #0x0
   650 = imad 574, u139, 649, #0x0
   828d = mov u140:u141
   device_store 114, 828d, 650.abs, x, #0x0, slot 0
} -> block91  from block88

block90 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafabd0, n=1
   pop_exec #0x0, n=1
} -> block91  from block88

block91 {
   653h = icmp 574, u142, #0x0
   654h = icmpsel 523, u19, 653h, #0, #0x0
   if_icmp 654h, #0, #0xaaab8cafba80, n=1, inv
} -> block92 block93  from block89 block90

block92 {
   656 = iadd 425, #2, #0x0
   657 = iadd 656, 502, #0x0
   658 = imad 574, u143, 657, #0x0
   830d = mov u144:u145
   device_store 111, 830d, 658.abs, x, #0x0, slot 0
} -> block94  from block91

block93 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafba80, n=1
   pop_exec #0x0, n=1
} -> block94  from block91

block94 {
   661h = icmp 574, u146, #0x0
   662h = icmpsel 534, u19, 661h, #0, #0x0
   if_icmp 662h, #0, #0xaaab8cafc930, n=1, inv
} -> block95 block96  from block92 block93

block95 {
   664 = iadd 425, #3, #0x0
   665 = iadd 664, 502, #0x0
   666 = imad 574, u147, 665, #0x0
   832d = mov u148:u149
   device_store 112, 832d, 666.abs, x, #0x0, slot 0
} -> block97  from block94

block96 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafc930, n=1
   pop_exec #0x0, n=1
} -> block97  from block94

block97 {
   669h = icmp 606, u150, #0x0
   670h = icmpsel 502, u19, 669h, #0, #0x0
   if_icmp 670h, #0, #0xaaab8cafd740, n=1, inv
} -> block98 block99  from block95 block96

block98 {
   672 = iadd 425, 502, #0x0
   673 = imad 606, u151, 672, #0x0
   834d = mov u152:u153
   device_store 105, 834d, 673.abs, x, #0x0, slot 0
} -> block100  from block97

block99 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafd740, n=1
   pop_exec #0x0, n=1
} -> block100  from block97

block100 {
   676h = icmp 606, u154, #0x0
   677h = icmpsel 512, u19, 676h, #0, #0x0
   if_icmp 677h, #0, #0xaaab8cafe5f0, n=1, inv
} -> block101 block102  from block98 block99

block101 {
   679 = iadd 425, #1, #0x0
   680 = iadd 679, 502, #0x0
   681 = imad 606, u155, 680, #0x0
   836d = mov u156:u157
   device_store 106, 836d, 681.abs, x, #0x0, slot 0
} -> block103  from block100

block102 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cafe5f0, n=1
   pop_exec #0x0, n=1
} -> block103  from block100

block103 {
   684h = icmp 606, u158, #0x0
   685h = icmpsel 523, u19, 684h, #0, #0x0
   if_icmp 685h, #0, #0xaaab8caff4a0, n=1, inv
} -> block104 block105  from block101 block102

block104 {
   687 = iadd 425, #2, #0x0
   688 = iadd 687, 502, #0x0
   689 = imad 606, u159, 688, #0x0
   838d = mov u160:u161
   device_store 103, 838d, 689.abs, x, #0x0, slot 0
} -> block106  from block103

block105 {
   else_fcmp #0.000000, #0.000000, #0xaaab8caff4a0, n=1
   pop_exec #0x0, n=1
} -> block106  from block103

block106 {
   692h = icmp 606, u162, #0x0
   693h = icmpsel 534, u19, 692h, #0, #0x0
   if_icmp 693h, #0, #0xaaab8cb00350, n=1, inv
} -> block107 block108  from block104 block105

block107 {
   695 = iadd 425, #3, #0x0
   696 = iadd 695, 502, #0x0
   697 = imad 606, u163, 696, #0x0
   840d = mov u164:u165
   device_store 104, 840d, 697.abs, x, #0x0, slot 0
} -> block109  from block106

block108 {
   else_fcmp #0.000000, #0.000000, #0xaaab8cb00350, n=1
   pop_exec #0x0, n=1
} -> block109  from block106

block109 {
   stop 
} from block107 block108

block0 {
   $r1 = get_sr #0x0
   $r2 = get_sr #0x1
   $r3 = get_sr #0x2
   $r3 = iadd ^r3, u6, #0x0
   $r3 = iadd u7, ^r3, #0x0
   r4:r5 = imad $r3.abs, u12.abs, #0, #0x0
   $r4 = imad $r5, u10, #0, #0x0
   $r4 = iadd $r3, ^r4.neg, #0x0
   $r6 = iadd $r5, #1, #0x0
   $r5 = icmpsel $r4, u10, ^r5, ^r6, #0x0
   $r6 = iadd $r4, u13, #0x0
   $r4 = icmpsel ^r4, u10, ^r4, ^r6, #0x0
   $r6 = iadd $r5, #1, #0x0
   $r5 = icmpsel $r4, u10, ^r5, ^r6, #0x0
   $r6 = iadd $r4, u13, #0x0
   $r4 = icmpsel ^r4, u10, ^r4, ^r6, #0x0
   r6:r7 = imad $r5.abs, u15.abs, #0, #0x0
   $r6 = imad $r7, u14, #0, #0x0
   $r5 = iadd ^r5, ^r6.neg, #0x0
   $r6 = iadd $r7, #1, #0x0
   $r6 = icmpsel $r5, u14, ^r7, ^r6, #0x0
   $r7 = iadd $r5, u16, #0x0
   $r5 = icmpsel ^r5, u14, ^r5, ^r7, #0x0
   $r7 = iadd $r6, #1, #0x0
   $r5 = icmpsel ^r5, u14, ^r6, ^r7, #0x0
   r6:r7 = imad $r4.abs, u17.abs, #0, #0x0
   $r6 = imad $r7, u11, #0, #0x0
   $r4 = iadd ^r4, ^r6.neg, #0x0
   $r6 = iadd $r7, #1, #0x0
   $r6 = icmpsel $r4, u11, ^r7, ^r6, #0x0
   $r7 = iadd $r4, u18, #0x0
   $r4 = icmpsel ^r4, u11, ^r4, ^r7, #0x0
   $r7 = iadd $r6, #1, #0x0
   $r4 = icmpsel ^r4, u11, ^r6, ^r7, #0x0
   $r4 = imad ^r5, u9, ^r4, #0x0
   $r1 = iadd ^r1, u4, #0x0
   r6:r7 = imad $r1.abs, u21.abs, #0, #0x0
   $r5 = imad $r7, u20, #0, #0x0
   $r1 = iadd ^r1, ^r5.neg, #0x0
   $r5 = iadd $r1, u22, #0x0
   $r5 = icmpsel $r1, u20, $r1, ^r5, #0x0
   $r6 = iadd $r5, u22, #0x0
   $r6 = icmpsel $r5, u20, $r5, ^r6, #0x0
   $r8 = iadd $r7, #1, #0x0
   $r1 = icmpsel ^r1, u20, ^r7, ^r8, #0x0
   $r7 = iadd $r1, #1, #0x0
   $r1 = icmpsel ^r5, u20, ^r1, ^r7, #0x0
   $r5 = get_sr #0x30
   $r6 = bfi #0, ^r6, #6, #0x0
   $r7 = imad $r1, u8, #0, #0x0
   $r8 = imad r6, u24, $r7, #0x0
   $r8 = bfeil #0, ^r8, #2, #0x0
   $r4 = imad ^r4, u29, ^r8, #0x0
   $r8 = imad r3, u27, $r7, #0x0
   $r2 = iadd ^r2, u5, #0x0
   $r2 = bfi #0, ^r2, #6, #0x0
   $r8 = imad r2, u25, ^r8, #0x0
   r9 = and $r5, #7
   $r10 = iadd r1, #1, #0x0
   $r10 = imad ^r10, u8, #0, #0x0
   r10 = icmpsel u23, ^r10, u23, ^r10, #0x0
   r11 = bfeil #0, $r5, #3, #0x0
   $r8 = bfeil #0, ^r8, #2, #0x0
   $r12 = and $r5, #31
   r13 = and #3, $r5
   r12 = bfeil #0, ^r12, #2, #0x0
   r14 = bfeil #0, $r5, #5, #0x1
   r5 = bfeil #0, ^r5, #6, #0x0
   r0l = mov_imm #0x0
   r15 = mov_imm #0x0
   r16 = mov_imm #0x0
   r17 = mov_imm #0x0
   r18 = mov_imm #0x0
   r19 = mov_imm #0x0
   r20 = mov_imm #0x0
   r21 = mov_imm #0x0
   r22 = mov_imm #0x0
   r23 = mov_imm #0x0
   r24 = mov_imm #0x0
   r25 = mov_imm #0x0
   r26 = mov_imm #0x0
   r27 = mov_imm #0x0
   r28 = mov_imm #0x0
   r29 = mov_imm #0x0
   r30 = mov_imm #0x0
   r31 = mov_imm #0x0
   r32 = mov_imm #0x0
   r33 = mov_imm #0x0
   r34 = mov_imm #0x0
   r35 = mov_imm #0x0
   r36 = mov_imm #0x0
   r37 = mov_imm #0x0
   r38 = mov_imm #0x0
   r39 = mov_imm #0x0
   r40 = mov_imm #0x0
   r41 = mov_imm #0x0
   r42 = mov_imm #0x0
   r43 = mov_imm #0x0
   r44 = mov1 ^r7, #0
   r45 = mov1 ^r8, #0
   r46 = mov1 ^r4, #0
   r4 = mov_imm #0x0
   r7 = mov_imm #0x0
   r8 = mov_imm #0x0
} -> block1 

block1 {
} -> block2 block3  from block0 block12

block2 {
} -> block13  from block1

block3 {
} -> block4  from block1

block4 {
   while_icmp r44, r10, #0x0, n=1
   jmp_exec_none_after #0xaaab8cb77b20
   if_icmp u30l, #0, #0xaaab8cb776e0, n=1, inv
   jmp_exec_none #0xaaab8cb776e0
} -> block5 block6  from block3

block5 {
   $r47 = imad $r11, u24, #0, #0x0
   $r47 = bfeil #0, r47, #2, #0x0
   $r48 = iadd r46, $r9, #0x0
   $r47 = iadd r47, r48, #0x0
   $r48 = and $r47, #63
   $r48 = iadd #0, r48, #0x0
   $r49 = and $r48, u170
   $r49 = iadd #16, r49, #0x0
   $r50 = and $r48, #15
   $r49 = iadd r49, r50, #0x0
   $r47 = bfeil #0, r47, #6, #0x0
   $r50 = iadd $r47, $r47, #0x0
   $r52 = imad r47, #144, #0, #0x0
   $r53 = bfeil #0, r50, #28, #0x0
   $r50 = mov1 u32, #0
   $r51 = mov1 u33, #0
   $r54 = iadd $r52, r49, #0x0
   $r56 = mov1 $r52, #0
   $r57 = mov1 r53, #0
   r56:r57 = iadd $r50:r51, r56:r57, #0x0
   $r58 = mov1 r54, #0
   $r59 = mov1 u167, #0
   r50:r51 = iadd r50:r51, r58:r59, #0x0
   $r47l...r47h = device_load r56:r57, #0, xy, #0x0, slot 0
   $r49 = and $r48, #31
   $r48 = bfeil #0, r48, #5, #0x0
   $r49 = bfeil #0, r49, #4, #0x0
   $r48 = iadd $r49, r48, #0x0
   $r52 = iadd #4, r52, #0x0
   $r53 = iadd $r48, #4, #0x0
   $r54 = icmpsel $r48, #4, $r48, $r53, #0x0
   r54 = iadd $r52, r54, #0x0
   $r55 = iadd $r48, #4.neg, #0x0
   $r55 = icmpsel $r48, #4, $r48, r55, #0x0
   r55 = iadd $r52, r55, #0x0
   r56 = iadd $r52, $r53, #0x0
   $r53 = icmpsel $r48, #4, r53, $r48, #0x0
   r52 = iadd r52, r53, #0x0
   $r0h = device_load u32:u33, r54.abs, x, #0x0, slot 1
   $r53l = device_load u32:u33, r55.abs, x, #0x0, slot 0
   $r53h = device_load u32:u33, r56.abs, x, #0x0, slot 0
   $r52l = device_load u32:u33, r52.abs, x, #0x0, slot 0
   $r50 = device_load r50:r51, #0, x, #0x0, slot 0
   $r51 = icmpsel $r48, #4, #15, #240, #0x0
   wait #0x0, slot 0
   $r51 = and r53h, r51
   $r54 = icmpsel $r48, #4, #0, #4, #0x0
   $r51 = bfeil #0, r51, r54, #0x0
   $r54 = icmpsel $r48, #4, #48, #192, #0x0
   $r55 = and r52l, $r54
   $r52 = and r53l, r54
   $r48 = icmpsel r48, #4, #0, #2, #0x0
   $r53 = bfeil #0, r55, $r48, #0x0
   $r48 = bfeil #0, r52, r48, #0x0
   $r51 = or r51, r53
   wait #0x0, slot 1
   $r52 = and r0h, #15
   $r48 = or r52, r48
   $r49 = iadd #0, r49, #0x0
   $r49 = and r49, #31
   $r49 = bfeil #0, r50, r49, #0x0
   r0h = and r51, #255
   r48l = and r48, #255
   $r49 = and r49, u173
   $r50 = bfeil #0, $r49, #8, #0x0
   r48h = and r50, #255
   $r50 = convert #0, r0h, #0x1
   $r50 = fmul r47h, r50
   $r51 = convert #0, r48l, #0x1
   $r47 = fmul r47l, r51
   $r51 = iadd #0, $r9, #0x0
   $r51 = bfeil #0, r51, #1, #0x0
   $r51 = imad $r11, #17, r51, #0x0
   $r52 = convert #0, r48h, #0x1
   r53 = ffma $r47, r52, $r50.neg
   r0h = and $r49, #255
   $r48 = convert #0, r0h, #0x1
   r52 = ffma $r47, r48, $r50.neg
   $r48 = iadd #0, r51, #0x0
   r0h = mov1 $r48l, #0
   local_store r52...r53, r0h, #0, xy, #0x0
   $r0h = mov1 $r49h, #0
   $r49 = bfeil #0, r49, #24, #0x0
   r49l = and r49, #255
   r0h = and r0h, #255
   $r51 = convert #0, r49l, #0x1
   r53 = ffma $r47, r51, $r50.neg
   $r49 = convert #0, r0h, #0x1
   r52 = ffma r47, r49, r50.neg
   r47 = iadd $r48, #8, #0x0
   local_store r52...r53, r47l, #0, xy, #0x0
   $r47 = imad r11, u25, #0, #0x0
   $r47 = bfeil #0, r47, #2, #0x0
   $r49 = iadd r45, r9, #0x0
   r47 = iadd r47, r49, #0x0
   r49 = iadd u166, $r48, #0x0
   r52...r55 = device_load u34:u35, r47.abs, xyzw, #0x0, slot 0
   wait #0x0, slot 0
   local_store r52...r53, r49l, #0, xy, #0x0
   r47 = iadd u178, r48, #0x0
   local_store r54...r55, r47l, #0, xy, #0x0
} -> block7  from block4

block6 {
   pop_exec #0x0, n=1
} -> block7  from block4

block7 {
   threadgroup_barrier 
   r47 = mov_imm #0x0
   if_fcmp #0.000000, #0.000000, #0x0, n=1
} -> block8  from block5 block6

block8 {
} -> block9 block10  from block7 block11

block9 {
} -> block12  from block8

block10 {
} -> block11  from block8

block11 {
   while_icmp $r47, #16, #0x0, n=1
   $r48 = bfi #0, r14, #5, #0x0
   $r48 = iadd r48, r13, #0x0
   $r48 = imad r48, #17, $r47, #0x0
   $r48 = iadd #0, r48, #0x0
   r0h = mov1 $r48l, #0
   r49 = iadd $r48, #136, #0x0
   r50 = iadd $r48, u172, #0x0
   r51 = iadd $r48, u168, #0x0
   r52 = iadd $r48, u179, #0x0
   r53 = iadd $r48, u169, #0x0
   r54 = iadd $r48, u171, #0x0
   r48 = iadd r48, u175, #0x0
   $r55 = bfi #0, r5, #5, #0x0
   $r55 = iadd r55, r12, #0x0
   $r55 = imad r55, #17, $r47, #0x0
   $r55 = iadd #0, r55, #0x0
   r56 = iadd u166, $r55, #0x0
   r57 = iadd u174, $r55, #0x0
   r58 = iadd u176, $r55, #0x0
   r55 = iadd u177, r55, #0x0
   $r60...r61 = local_load r0h, #0, xy, #0x0
   $r62...r63 = local_load r49l, #0, xy, #0x0
   $r64...r65 = local_load r50l, #0, xy, #0x0
   $r66...r67 = local_load r51l, #0, xy, #0x0
   $r50...r51 = local_load r52l, #0, xy, #0x0
   $r68...r69 = local_load r53l, #0, xy, #0x0
   $r52...r53 = local_load r54l, #0, xy, #0x0
   $r70...r71 = local_load r48l, #0, xy, #0x0
   $r48...r49 = local_load r56l, #0, xy, #0x0
   $r72...r73 = local_load r57l, #0, xy, #0x0
   $r56...r57 = local_load r58l, #0, xy, #0x0
   $r58...r59 = local_load r55l, #0, xy, #0x0
   $r42 = ffma $r61, $r49, r42
   r42 = ffma $r60, $r48, r42
   $r43 = ffma $r63, $r49, r43
   r43 = ffma $r62, $r48, r43
   $r40 = ffma $r65, $r49, r40
   r40 = ffma $r64, $r48, r40
   $r41 = ffma $r67, $r49, r41
   r41 = ffma $r66, $r48, r41
   $r38 = ffma $r51, $r49, r38
   r38 = ffma $r50, $r48, r38
   $r39 = ffma $r69, $r49, r39
   r39 = ffma $r68, $r48, r39
   $r36 = ffma $r53, $r49, r36
   r36 = ffma $r52, $r48, r36
   $r37 = ffma $r71, r49, r37
   r37 = ffma $r70, r48, r37
   $r34 = ffma $r61, $r73, r34
   r34 = ffma $r60, $r72, r34
   $r35 = ffma $r63, $r73, r35
   r35 = ffma $r62, $r72, r35
   $r32 = ffma $r65, $r73, r32
   r32 = ffma $r64, $r72, r32
   $r33 = ffma $r67, $r73, r33
   r33 = ffma $r66, $r72, r33
   $r30 = ffma $r51, $r73, r30
   r30 = ffma $r50, $r72, r30
   $r31 = ffma $r69, $r73, r31
   r31 = ffma $r68, $r72, r31
   $r28 = ffma $r53, $r73, r28
   r28 = ffma $r52, $r72, r28
   $r29 = ffma $r71, r73, r29
   r29 = ffma $r70, r72, r29
   $r26 = ffma $r61, $r57, r26
   r26 = ffma $r60, $r56, r26
   $r27 = ffma $r63, $r57, r27
   r27 = ffma $r62, $r56, r27
   $r24 = ffma $r65, $r57, r24
   r24 = ffma $r64, $r56, r24
   $r25 = ffma $r67, $r57, r25
   r25 = ffma $r66, $r56, r25
   $r22 = ffma $r51, $r57, r22
   r22 = ffma $r50, $r56, r22
   $r23 = ffma $r69, $r57, r23
   r23 = ffma $r68, $r56, r23
   $r20 = ffma $r53, $r57, r20
   r20 = ffma $r52, $r56, r20
   $r21 = ffma $r71, r57, r21
   r21 = ffma $r70, r56, r21
   $r18 = ffma r61, $r59, r18
   r18 = ffma r60, $r58, r18
   $r19 = ffma r63, $r59, r19
   r19 = ffma r62, $r58, r19
   $r16 = ffma r65, $r59, r16
   r16 = ffma r64, $r58, r16
   $r17 = ffma r67, $r59, r17
   r17 = ffma r66, $r58, r17
   $r8 = ffma r51, $r59, r8
   r8 = ffma r50, $r58, r8
   $r15 = ffma r69, $r59, r15
   r15 = ffma r68, $r58, r15
   $r4 = ffma r53, $r59, r4
   r4 = ffma r52, $r58, r4
   $r7 = ffma r71, r59, r7
   r7 = ffma r70, r58, r7
   r47 = iadd r47, #1, #0x0
   jmp_exec_any #0xaaab8cb77c60
   pop_exec #0x0, n=1
} -> block8  from block10

block12 {
   threadgroup_barrier 
   r46 = iadd r46, #8, #0x0
   r45 = iadd r45, #8, #0x0
   r44 = iadd r44, #32, #0x0
   jmp_exec_any #0xaaab8cb5f790
   pop_exec #0x0, n=1
} -> block1  from block9

block13 {
   $r6 = imad r14, #32, r6, #0x0
   $r2 = imad r5, #32, r2, #0x0
   $r1 = imad r1, u28, #0, #0x0
   $r1 = imad u36, r1, #0, #0x0
   r1 = imad r3, u28, r1, #0x0
   $r3 = iadd r6, r13, #0x0
   $r2 = iadd r2, r12, #0x0
   $r0h = icmpsel r2, u37, #1, #0, #0x0
   r0h = icmpsel r3, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccabfb0, n=1, inv
} -> block14 block15  from block2

block14 {
   $r5 = iadd r1, r3, #0x0
   r5 = imad r2, u38, r5, #0x0
   device_store r42, u40:u41, r5.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block16  from block13

block15 {
   pop_exec #0x0, n=1
} -> block16  from block13

block16 {
   $r0h = icmpsel r2, u42, #1, #0, #0x0
   $r5 = iadd #1, r3, #0x0
   r0h = icmpsel r5, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccacea0, n=1, inv
} -> block17 block18  from block14 block15

block17 {
   $r6 = iadd r1, #1, #0x0
   $r6 = iadd r6, r3, #0x0
   r6 = imad r2, u43, r6, #0x0
   device_store r43, u44:u45, r6.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block19  from block16

block18 {
   pop_exec #0x0, n=1
} -> block19  from block16

block19 {
   $r0h = icmpsel r2, u46, #1, #0, #0x0
   $r6 = iadd r3, #2, #0x0
   r0h = icmpsel r6, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccade90, n=1, inv
} -> block20 block21  from block17 block18

block20 {
   $r9 = iadd r1, #2, #0x0
   $r9 = iadd r9, r3, #0x0
   r9 = imad r2, u47, r9, #0x0
   device_store r40, u48:u49, r9.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block22  from block19

block21 {
   pop_exec #0x0, n=1
} -> block22  from block19

block22 {
   $r0h = icmpsel r2, u50, #1, #0, #0x0
   $r9 = iadd #3, r3, #0x0
   r0h = icmpsel r9, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccaee80, n=1, inv
} -> block23 block24  from block20 block21

block23 {
   $r10 = iadd r1, #3, #0x0
   $r10 = iadd r10, r3, #0x0
   r10 = imad r2, u51, r10, #0x0
   device_store r41, u52:u53, r10.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block25  from block22

block24 {
   pop_exec #0x0, n=1
} -> block25  from block22

block25 {
   $r10 = iadd r2, #1, #0x0
   $r0h = icmpsel r10, u54, #1, #0, #0x0
   r0h = icmpsel r3, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb04a0, n=1, inv
} -> block26 block27  from block23 block24

block26 {
   $r11 = iadd r1, r3, #0x0
   r11 = imad r10, u55, r11, #0x0
   device_store r34, u56:u57, r11.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block28  from block25

block27 {
   pop_exec #0x0, n=1
} -> block28  from block25

block28 {
   $r0h = icmpsel r10, u58, #1, #0, #0x0
   r0h = icmpsel r5, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb1350, n=1, inv
} -> block29 block30  from block26 block27

block29 {
   $r11 = iadd r1, #1, #0x0
   $r11 = iadd r11, r3, #0x0
   r11 = imad r10, u59, r11, #0x0
   device_store r35, u60:u61, r11.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block31  from block28

block30 {
   pop_exec #0x0, n=1
} -> block31  from block28

block31 {
   $r0h = icmpsel r10, u62, #1, #0, #0x0
   r0h = icmpsel r6, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb2200, n=1, inv
} -> block32 block33  from block29 block30

block32 {
   $r11 = iadd r1, #2, #0x0
   $r11 = iadd r11, r3, #0x0
   r11 = imad r10, u63, r11, #0x0
   device_store r32, u64:u65, r11.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block34  from block31

block33 {
   pop_exec #0x0, n=1
} -> block34  from block31

block34 {
   $r0h = icmpsel r10, u66, #1, #0, #0x0
   r0h = icmpsel r9, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb30b0, n=1, inv
} -> block35 block36  from block32 block33

block35 {
   $r11 = iadd r1, #3, #0x0
   $r11 = iadd r11, r3, #0x0
   r11 = imad r10, u67, r11, #0x0
   device_store r33, u68:u69, r11.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block37  from block34

block36 {
   pop_exec #0x0, n=1
} -> block37  from block34

block37 {
   $r0h = icmpsel r2, u70, #1, #0, #0x0
   $r11 = iadd #16, r3, #0x0
   r0h = icmpsel r11, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb4090, n=1, inv
} -> block38 block39  from block35 block36

block38 {
   $r12 = iadd r1, r11, #0x0
   r12 = imad r2, u71, r12, #0x0
   device_store r38, u72:u73, r12.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block40  from block37

block39 {
   pop_exec #0x0, n=1
} -> block40  from block37

block40 {
   $r0h = icmpsel r2, u74, #1, #0, #0x0
   $r12 = iadd #17, r3, #0x0
   r0h = icmpsel r12, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb5110, n=1, inv
} -> block41 block42  from block38 block39

block41 {
   $r13 = iadd r1, #1, #0x0
   $r13 = iadd r13, r11, #0x0
   r13 = imad r2, u75, r13, #0x0
   device_store r39, u76:u77, r13.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block43  from block40

block42 {
   pop_exec #0x0, n=1
} -> block43  from block40

block43 {
   $r0h = icmpsel r2, u78, #1, #0, #0x0
   $r13 = iadd #18, r3, #0x0
   r0h = icmpsel r13, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb6190, n=1, inv
} -> block44 block45  from block41 block42

block44 {
   $r14 = iadd r1, #2, #0x0
   $r14 = iadd r14, r11, #0x0
   r14 = imad r2, u79, r14, #0x0
   device_store r36, u80:u81, r14.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block46  from block43

block45 {
   pop_exec #0x0, n=1
} -> block46  from block43

block46 {
   $r0h = icmpsel r2, u82, #1, #0, #0x0
   $r14 = iadd #19, r3, #0x0
   r0h = icmpsel r14, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb7210, n=1, inv
} -> block47 block48  from block44 block45

block47 {
   $r32 = iadd r1, #3, #0x0
   $r32 = iadd r32, r11, #0x0
   r32 = imad r2, u83, r32, #0x0
   device_store r37, u84:u85, r32.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block49  from block46

block48 {
   pop_exec #0x0, n=1
} -> block49  from block46

block49 {
   $r0h = icmpsel r10, u86, #1, #0, #0x0
   r0h = icmpsel r11, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb8020, n=1, inv
} -> block50 block51  from block47 block48

block50 {
   $r32 = iadd r1, r11, #0x0
   r32 = imad r10, u87, r32, #0x0
   device_store r30, u88:u89, r32.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block52  from block49

block51 {
   pop_exec #0x0, n=1
} -> block52  from block49

block52 {
   $r0h = icmpsel r10, u90, #1, #0, #0x0
   r0h = icmpsel r12, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb8ed0, n=1, inv
} -> block53 block54  from block50 block51

block53 {
   $r30 = iadd r1, #1, #0x0
   $r30 = iadd r30, r11, #0x0
   r30 = imad r10, u91, r30, #0x0
   device_store r31, u92:u93, r30.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block55  from block52

block54 {
   pop_exec #0x0, n=1
} -> block55  from block52

block55 {
   $r0h = icmpsel r10, u94, #1, #0, #0x0
   r0h = icmpsel r13, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccb9d80, n=1, inv
} -> block56 block57  from block53 block54

block56 {
   $r30 = iadd r1, #2, #0x0
   $r30 = iadd r30, r11, #0x0
   r30 = imad r10, u95, r30, #0x0
   device_store r28, u96:u97, r30.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block58  from block55

block57 {
   pop_exec #0x0, n=1
} -> block58  from block55

block58 {
   $r0h = icmpsel r10, u98, #1, #0, #0x0
   r0h = icmpsel r14, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccbac30, n=1, inv
} -> block59 block60  from block56 block57

block59 {
   $r28 = iadd r1, #3, #0x0
   $r28 = iadd r28, r11, #0x0
   r10 = imad r10, u99, r28, #0x0
   device_store r29, u100:u101, r10.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block61  from block58

block60 {
   pop_exec #0x0, n=1
} -> block61  from block58

block61 {
   $r10 = iadd #16, r2, #0x0
   $r0h = icmpsel r10, u102, #1, #0, #0x0
   r0h = icmpsel r3, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccbbae0, n=1, inv
} -> block62 block63  from block59 block60

block62 {
   $r28 = iadd r1, r3, #0x0
   r28 = imad r10, u103, r28, #0x0
   device_store r26, u104:u105, r28.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block64  from block61

block63 {
   pop_exec #0x0, n=1
} -> block64  from block61

block64 {
   $r0h = icmpsel r10, u106, #1, #0, #0x0
   r0h = icmpsel r5, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccbc990, n=1, inv
} -> block65 block66  from block62 block63

block65 {
   $r26 = iadd r1, #1, #0x0
   $r26 = iadd r26, r3, #0x0
   r26 = imad r10, u107, r26, #0x0
   device_store r27, u108:u109, r26.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block67  from block64

block66 {
   pop_exec #0x0, n=1
} -> block67  from block64

block67 {
   $r0h = icmpsel r10, u110, #1, #0, #0x0
   r0h = icmpsel r6, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccbd840, n=1, inv
} -> block68 block69  from block65 block66

block68 {
   $r26 = iadd r1, #2, #0x0
   $r26 = iadd r26, r3, #0x0
   r26 = imad r10, u111, r26, #0x0
   device_store r24, u112:u113, r26.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block70  from block67

block69 {
   pop_exec #0x0, n=1
} -> block70  from block67

block70 {
   $r0h = icmpsel r10, u114, #1, #0, #0x0
   r0h = icmpsel r9, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccbe6f0, n=1, inv
} -> block71 block72  from block68 block69

block71 {
   $r24 = iadd r1, #3, #0x0
   $r24 = iadd r24, r3, #0x0
   r24 = imad r10, u115, r24, #0x0
   device_store r25, u116:u117, r24.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block73  from block70

block72 {
   pop_exec #0x0, n=1
} -> block73  from block70

block73 {
   $r2 = iadd #17, r2, #0x0
   $r0h = icmpsel r2, u118, #1, #0, #0x0
   r0h = icmpsel r3, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccafd30, n=1, inv
} -> block74 block75  from block71 block72

block74 {
   $r24 = iadd r1, r3, #0x0
   r24 = imad r2, u119, r24, #0x0
   device_store r18, u120:u121, r24.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block76  from block73

block75 {
   pop_exec #0x0, n=1
} -> block76  from block73

block76 {
   $r0h = icmpsel r2, u122, #1, #0, #0x0
   r0h = icmpsel r5, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8ccbf5a0, n=1, inv
} -> block77 block78  from block74 block75

block77 {
   $r5 = iadd r1, #1, #0x0
   $r5 = iadd r5, r3, #0x0
   r5 = imad r2, u123, r5, #0x0
   device_store r19, u124:u125, r5.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block79  from block76

block78 {
   pop_exec #0x0, n=1
} -> block79  from block76

block79 {
   $r0h = icmpsel r2, u126, #1, #0, #0x0
   r0h = icmpsel r6, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8caf8060, n=1, inv
} -> block80 block81  from block77 block78

block80 {
   $r5 = iadd r1, #2, #0x0
   $r5 = iadd r5, r3, #0x0
   r5 = imad r2, u127, r5, #0x0
   r18 = mov1 u128, #0
   r19 = mov1 u129, #0
   device_store r16, r18:r19, r5.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block82  from block79

block81 {
   pop_exec #0x0, n=1
} -> block82  from block79

block82 {
   $r0h = icmpsel r2, u130, #1, #0, #0x0
   r0h = icmpsel r9, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8caf8f10, n=1, inv
} -> block83 block84  from block80 block81

block83 {
   $r5 = iadd r1, #3, #0x0
   $r3 = iadd r5, r3, #0x0
   r3 = imad r2, u131, r3, #0x0
   r18 = mov1 u132, #0
   r19 = mov1 u133, #0
   device_store r17, r18:r19, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block85  from block82

block84 {
   pop_exec #0x0, n=1
} -> block85  from block82

block85 {
   $r0h = icmpsel r10, u134, #1, #0, #0x0
   r0h = icmpsel r11, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8caf9d20, n=1, inv
} -> block86 block87  from block83 block84

block86 {
   $r3 = iadd r1, r11, #0x0
   r3 = imad r10, u135, r3, #0x0
   r16 = mov1 u136, #0
   r17 = mov1 u137, #0
   device_store r22, r16:r17, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block88  from block85

block87 {
   pop_exec #0x0, n=1
} -> block88  from block85

block88 {
   $r0h = icmpsel r10, u138, #1, #0, #0x0
   r0h = icmpsel r12, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8cafabd0, n=1, inv
} -> block89 block90  from block86 block87

block89 {
   $r3 = iadd r1, #1, #0x0
   $r3 = iadd r3, r11, #0x0
   r3 = imad r10, u139, r3, #0x0
   r16 = mov1 u140, #0
   r17 = mov1 u141, #0
   device_store r23, r16:r17, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block91  from block88

block90 {
   pop_exec #0x0, n=1
} -> block91  from block88

block91 {
   $r0h = icmpsel r10, u142, #1, #0, #0x0
   r0h = icmpsel r13, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8cafba80, n=1, inv
} -> block92 block93  from block89 block90

block92 {
   $r3 = iadd r1, #2, #0x0
   $r3 = iadd r3, r11, #0x0
   r3 = imad r10, u143, r3, #0x0
   r16 = mov1 u144, #0
   r17 = mov1 u145, #0
   device_store r20, r16:r17, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block94  from block91

block93 {
   pop_exec #0x0, n=1
} -> block94  from block91

block94 {
   $r0h = icmpsel r10, u146, #1, #0, #0x0
   r0h = icmpsel r14, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8cafc930, n=1, inv
} -> block95 block96  from block92 block93

block95 {
   $r3 = iadd r1, #3, #0x0
   $r3 = iadd r3, r11, #0x0
   r3 = imad r10, u147, r3, #0x0
   r16 = mov1 u148, #0
   r17 = mov1 u149, #0
   device_store r21, r16:r17, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block97  from block94

block96 {
   pop_exec #0x0, n=1
} -> block97  from block94

block97 {
   $r0h = icmpsel r2, u150, #1, #0, #0x0
   r0h = icmpsel r11, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8cafd740, n=1, inv
} -> block98 block99  from block95 block96

block98 {
   $r3 = iadd r1, r11, #0x0
   r3 = imad r2, u151, r3, #0x0
   r16 = mov1 u152, #0
   r17 = mov1 u153, #0
   device_store r8, r16:r17, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block100  from block97

block99 {
   pop_exec #0x0, n=1
} -> block100  from block97

block100 {
   $r0h = icmpsel r2, u154, #1, #0, #0x0
   r0h = icmpsel r12, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8cafe5f0, n=1, inv
} -> block101 block102  from block98 block99

block101 {
   $r3 = iadd r1, #1, #0x0
   $r3 = iadd r3, r11, #0x0
   r3 = imad r2, u155, r3, #0x0
   r8 = mov1 u156, #0
   r9 = mov1 u157, #0
   device_store r15, r8:r9, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block103  from block100

block102 {
   pop_exec #0x0, n=1
} -> block103  from block100

block103 {
   $r0h = icmpsel r2, u158, #1, #0, #0x0
   r0h = icmpsel r13, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8caff4a0, n=1, inv
} -> block104 block105  from block101 block102

block104 {
   $r3 = iadd r1, #2, #0x0
   $r3 = iadd r3, r11, #0x0
   r3 = imad r2, u159, r3, #0x0
   r8 = mov1 u160, #0
   r9 = mov1 u161, #0
   device_store r4, r8:r9, r3.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block106  from block103

block105 {
   pop_exec #0x0, n=1
} -> block106  from block103

block106 {
   $r0h = icmpsel r2, u162, #1, #0, #0x0
   r0h = icmpsel r14, u19, r0h, #0, #0x0
   if_icmp r0h, #0, #0xaaab8cb00350, n=1, inv
} -> block107 block108  from block104 block105

block107 {
   $r1 = iadd r1, #3, #0x0
   $r1 = iadd r1, r11, #0x0
   r1 = imad r2, u163, r1, #0x0
   r2 = mov1 u164, #0
   r3 = mov1 u165, #0
   device_store r7, r2:r3, r1.abs, x, #0x0, slot 0
   wait #0x0, slot 0
} -> block109  from block106

block108 {
   pop_exec #0x0, n=1
} -> block109  from block106

block109 {
   stop 
} from block107 block108

   0: f2050000               mov      $r1, threadgroup_in_grid_x
   4: f2090100               mov      $r2, threadgroup_in_grid_y
   8: f20d0200               mov      $r3, threadgroup_in_grid_z
   c: 8e0dc6c658000000       iadd     $r3, ^r3.sx, u6.sx
  14: 8e0d8e656c000000       iadd     $r3, u7.sx, ^r3.sx
  1c: 1e13868219000000       imul     dr4, $r3, u12
  24: 9e118a4659000000       imul     $r4, $r5.sx, u10.sx
  2c: 8e11868e6c000000       isub     $r4, $r3.sx, ^r4.sx
  34: 8e198a1600000000       iadd     $r6, $r5.sx, 1
  3c: 9215884219cac02c       csel     $r5, $r4, u10, ^r5, ^r6, ult
  44: 8e1988a659000000       iadd     $r6, $r4.sx, u13.sx
  4c: 9211c84219c8c02c       csel     $r4, ^r4, u10, ^r4, ^r6, ult
  54: 8e198a1600000000       iadd     $r6, $r5.sx, 1
  5c: 9215884219cac02c       csel     $r5, $r4, u10, ^r5, ^r6, ult
  64: 8e1988a659000000       iadd     $r6, $r4.sx, u13.sx
  6c: 9211c84219c8c02c       csel     $r4, ^r4, u10, ^r4, ^r6, ult
  74: 1e1b8ae219000000       imul     dr6, $r5, u15
  7c: 9e198ec659000000       imul     $r6, $r7.sx, u14.sx
  84: 8e15cace6c000000       isub     $r5, ^r5.sx, ^r6.sx
  8c: 8e198e1600000000       iadd     $r6, $r7.sx, 1
  94: 92198ac219cec02c       csel     $r6, $r5, u14, ^r7, ^r6, ult
  9c: 8e1d8a065a000000       iadd     $r7, $r5.sx, u16.sx
  a4: 9215cac219cae02c       csel     $r5, ^r5, u14, ^r5, ^r7, ult
  ac: 8e1d8c1600000000       iadd     $r7, $r6.sx, 1
  b4: 9215cac219cce02c       csel     $r5, ^r5, u14, ^r6, ^r7, ult
  bc: 1e1b88221a000000       imul     dr6, $r4, u17
  c4: 9e198e6659000000       imul     $r6, $r7.sx, u11.sx
  cc: 8e11c8ce6c000000       isub     $r4, ^r4.sx, ^r6.sx
  d4: 8e198e1600000000       iadd     $r6, $r7.sx, 1
  dc: 9219886219cec02c       csel     $r6, $r4, u11, ^r7, ^r6, ult
  e4: 8e1d88465a000000       iadd     $r7, $r4.sx, u18.sx
  ec: 9211c86219c8e02c       csel     $r4, ^r4, u11, ^r4, ^r7, ult
  f4: 8e1d8c1600000000       iadd     $r7, $r6.sx, 1
  fc: 9211c86219cce02c       csel     $r4, ^r4, u11, ^r6, ^r7, ult
 104: 9e11ca2659c80600       imadd    $r4, ^r5.sx, u9.sx, ^r4.sx
 10c: 8e05c28658000000       iadd     $r1, ^r1.sx, u4.sx
 114: 1e1b82a21a000000       imul     dr6, $r1, u21
 11c: 9e158e865a000000       imul     $r5, $r7.sx, u20.sx
 124: 8e05c2ae6c000000       isub     $r1, ^r1.sx, ^r5.sx
 12c: 8e1582c65a000000       iadd     $r5, $r1.sx, u22.sx
 134: 921582821a82a02c       csel     $r5, $r1, u20, $r1, ^r5, ult
 13c: 8e198ac65a000000       iadd     $r6, $r5.sx, u22.sx
 144: 92198a821a8ac02c       csel     $r6, $r5, u20, $r5, ^r6, ult
 14c: 8e218e1600000000       iadd     $r8, $r7.sx, 1
 154: 9205c2821ace002d       csel     $r1, ^r1, u20, ^r7, ^r8, ult
 15c: 8e1d821600000000       iadd     $r7, $r1.sx, 1
 164: 9205ca821ac2e02c       csel     $r1, ^r5, u20, ^r1, ^r7, ult
 16c: f2153000               mov      $r5, thread_in_threadgroup_x
 170: ae1900c02c060000       shl      $r6, ^r6, 6
 178: 9e1d820659000000       imul     $r7, $r1.sx, u8.sx
 180: 9e214c065b8e0600       imadd    $r8, r6.sx, u24.sx, $r7.sx
 188: aea100002d020000       shr      $r8, ^r8, 2
 190: 9e11c8a65bd00600       imadd    $r4, ^r4.sx, u29.sx, ^r8.sx
 198: 9e2146665b8e0600       imadd    $r8, r3.sx, u27.sx, $r7.sx
 1a0: 8e09c4a658000000       iadd     $r2, ^r2.sx, u5.sx
 1a8: ae0900402c060000       shl      $r2, ^r2, 6
 1b0: 9e2144265bd00600       imadd    $r8, r2.sx, u25.sx, ^r8.sx
 1b8: 7e258a728000           and      r9, $r5, 7
 1be: 8e29421600000000       iadd     $r10, r1.sx, 1
 1c6: 9e29d40659000000       imul     $r10, ^r10.sx, u8.sx
 1ce: 1229ae412dae412d       csel     r10, u23, ^r10, u23, ^r10, ult
 1d6: 2ead00a028030000       shr      r11, $r5, 3
 1de: aea100002d020000       shr      $r8, ^r8, 2
 1e6: fe318af28100           and      $r12, $r5, 31
 1ec: 7e3503a0a800           and      r13, 3, $r5
 1f2: 2eb100802d020000       shr      r12, ^r12, 2
 1fa: 2eb900a068050000       bfeil    r14, 0, $r5, 5, 1
 202: 2e9500a02c060000       shr      r5, ^r5, 6
 20a: 62000000               ldimm    r0l, 0
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
 2d4: 7e31ce0a8010           mov      r44, ^r7
 2da: 7e35d00a8010           mov      r45, ^r8
 2e0: 7e39c80a8010           mov      r46, ^r4
 2e6: 621100000000           ldimm    r4, 0
 2ec: 621d00000000           ldimm    r7, 0
 2f2: 622100000000           ldimm    r8, 0
 2f8: 522c58422504           while    r44, r10, 1, ult
 2fe: 20c040060000           jmp_none 1600
 304: 52093c010000           if       u30l, 0, 1, ine
 30a: 20c0e6020000           jmp_none 742
 310: 9e3d96065b000010       imul     $r47, $r11.sx, u24.sx
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
 3e4: 8e55a04600140000       iadd     $r53, $r48.sx, 4
 3ec: 92d9a04200a0a02a5014   csel     $r54, $r48, 4, $r48, $r53, ult
 3f6: 0e59a8c666150000       iadd     r54, $r52.sx, r54.sx
 3fe: 8e5da04e00140000       isub     $r55, $r48.sx, 4
 406: 92dda04200a0e0265014   csel     $r55, $r48, 4, $r48, r55, ult
 410: 0e5da8e666150000       iadd     r55, $r52.sx, r55.sx
 418: 0e61a8a66a150000       iadd     r56, $r52.sx, $r53.sx
 420: 92d5a042006a002a5014   csel     $r53, $r48, 4, r53, $r48, ult
 42a: 0e5168a666150000       iadd     r52, r52.sx, r53.sx
 432: 0504c04e46c01000       load     r0h, du32, r54, i8, x, b
 43a: 05a8e00e46c11000       load     r53l, du32, r55, i8, x, a
 442: 05ac000e47c11000       load     r53h, du32, r56, i8, x, a
 44a: 05a0800e46c11000       load     r52l, du32, r52, i8, x, a
 452: 0591040560c11200       load     r50, dr50, 0, i32, x, a
 45a: 92cda042000f01333014   csel     $r51, $r48, 4, 15, 240, ult
 464: 3800                   wait     a
 466: fe4d6b60a615           and      $r51, r53h, r51
 46c: 92d9a042000041300014   csel     $r54, $r48, 4, 0, 4, ult
 476: aecd0060266c4211       shr      $r51, r51, r54
 47e: 92d9a042003001303014   csel     $r54, $r48, 4, 48, 192, ult
 488: fe5d68c0aa15           and      $r55, r52l, $r54
 48e: fe516ac0a615           and      $r52, r53l, r54
 494: 92c16042000021300014   csel     $r48, r48, 4, 0, 2, ult
 49e: aed500e026a04211       shr      $r53, r55, $r48
 4a6: aec1008026604211       shr      $r48, r52, r48
 4ae: fe4d66aae615           or       $r51, r51, r53
 4b4: 3801                   wait     b
 4b6: fe5141f08010           and      $r52, r0h, 15
 4bc: fe41680ae615           or       $r48, r52, r48
 4c2: 8e45002066111000       iadd     $r49, 0, r49.sx, lsl 2
 4ca: fe4562f28114           and      $r49, r49, 31
 4d0: aec5004026624211       shr      $r49, r50, r49
 4d8: 7e0266f28307           and      r0h, r51, 255
 4de: 7e4060f28317           and      r48l, r48, 255
 4e4: fe4562a29d15           and      $r49, r49, u173
 4ea: aec900202a080011       shr      $r50, $r49, 8
 4f2: 7e4264f28317           and      r48h, r50, 255
 4f8: bec900140410           u8_to_f  $r50, r0h, rte
 4fe: 9ac95f402615           fmul     $r50, r47h, r50
 504: becd00040611           u8_to_f  $r51, r48l, rte
 50a: 9abd5e602615           fmul     $r47, r47l, r51
 510: 8e4d002069101000       iadd     $r51, 0, $r9.sx, lsl 2
 518: aecd006026010011       shr      $r51, r51, 1
 520: 9e4d961601664610       imadd    $r51, $r11.sx, 17, r51.sx
 528: bed100140611           u8_to_f  $r52, r48h, rte
 52e: 3ad59e8226a44a15       ffma     r53, $r47, r52, $r50.neg
 536: 7e02a2f28307           and      r0h, $r49, 255
 53c: bec100140410           u8_to_f  $r48, r0h, rte
 542: 3ad19e0226a44a15       ffma     r52, $r47, r48, $r50.neg
 54a: 8e410060e6111000       iadd     $r48, 0, r51.sx, lsl 3
 552: 7e02a0088004           mov      r0h, $r48l
 558: 29d1010234800010       lstore   r52_r53, r0h, 0, i32, xy
 560: fe02a3088004           mov      $r0h, $r49h
 566: aec5002026180011       shr      $r49, r49, 24
 56e: 7e4462f28317           and      r49l, r49, 255
 574: 7e0241f08303           and      r0h, r0h, 255
 57a: becd00240611           u8_to_f  $r51, r49l, rte
 580: 3ad59e6226a44a15       ffma     r53, $r47, r51, $r50.neg
 588: bec500140410           u8_to_f  $r49, r0h, rte
 58e: 3ad15e2226644a15       ffma     r52, r47, r49, r50.neg
 596: 0e3da08600140000       iadd     r47, $r48.sx, 8
 59e: 29d11e0234800014       lstore   r52_r53, r47l, 0, i32, xy
 5a6: 9e3d56265b000010       imul     $r47, r11.sx, u25.sx
 5ae: aebd00e025020011       shr      $r47, r47, 2
 5b6: 8e455a2665140000       iadd     $r49, r45.sx, r9.sx
 5be: 0e3d5e2666150000       iadd     r47, r47.sx, r49.sx
 5c6: 0e45cc056a150000       iadd     r49, u166.sx, $r48.sx
 5ce: 05a1e40e45c9f200       load     r52_r53_r54_r55, du34, r47, lsl 2, i32, xyzw, a
 5d6: 3800                   wait     a
 5d8: 29d1220234800014       lstore   r52_r53, r49l, 0, i32, xy
 5e0: 0e3de40566150000       iadd     r47, u178.sx, r48.sx
 5e8: 29d91e0234800014       lstore   r54_r55, r47l, 0, i32, xy
 5f0: 520e00000000           pop_exec 1
 5f6: 6800                   barrier
 5f8: 62bd000000000010       ldimm    r47, 0
 600: 420800000000           if       0.0, 0.0, 1, feq
 606: 522c9e020104           while    $r47, 16, 1, ult
 60c: ae4100c025050010       shl      $r48, r14, 5
 614: 8e4160a665141000       iadd     $r48, r48.sx, r13.sx, lsl 2
 61c: 9e416016019e4614       imadd    $r48, r48.sx, 17, $r47.sx
 624: 8e410000e6111000       iadd     $r48, 0, r48.sx, lsl 3
 62c: 7e02a0088004           mov      r0h, $r48l
 632: 0e45a08600160000       iadd     r49, $r48.sx, 136
 63a: 0e49a0865d150000       iadd     r50, $r48.sx, u172.sx
 642: 0e4da0065d150000       iadd     r51, $r48.sx, u168.sx
 64a: 0e51a0665e150000       iadd     r52, $r48.sx, u179.sx
 652: 0e55a0265d150000       iadd     r53, $r48.sx, u169.sx
 65a: 0e59a0665d150000       iadd     r54, $r48.sx, u171.sx
 662: 0e4160e65d150000       iadd     r48, r48.sx, u175.sx
 66a: ae5d00a024050010       shl      $r55, r5, 5
 672: 8e5d6e86e5140000       iadd     $r55, r55.sx, r12.sx, lsl 1
 67a: 9e5d6e16019e4614       imadd    $r55, r55.sx, 17, $r47.sx
 682: 8e5d00e0e6111000       iadd     $r55, 0, r55.sx, lsl 3
 68a: 0e61cce56a150000       iadd     r56, u166.sx, $r55.sx
 692: 0e65dce56a150000       iadd     r57, u174.sx, $r55.sx
 69a: 0e69e0e56a150000       iadd     r58, u176.sx, $r55.sx
 6a2: 0e5de2e566150000       iadd     r55, u177.sx, r55.sx
 6aa: 69f1010234800010       lload    r60_r61, r0h, 0, i32, xy
 6b2: 69f9220234800014       lload    r62_r63, r49l, 0, i32, xy
 6ba: 6981240234800024       lload    r64_r65, r50l, 0, i32, xy
 6c2: 6989260234800024       lload    r66_r67, r51l, 0, i32, xy
 6ca: 69c9280234800014       lload    r50_r51, r52l, 0, i32, xy
 6d2: 69912a0234800024       lload    r68_r69, r53l, 0, i32, xy
 6da: 69d12c0234800014       lload    r52_r53, r54l, 0, i32, xy
 6e2: 6999200234800024       lload    r70_r71, r48l, 0, i32, xy
 6ea: 69c1300234800014       lload    r48_r49, r56l, 0, i32, xy
 6f2: 69a1320234800024       lload    r72_r73, r57l, 0, i32, xy
 6fa: 69e1340234800014       lload    r56_r57, r58l, 0, i32, xy
 702: 69e92e0234800014       lload    r58_r59, r55l, 0, i32, xy
 70a: baa9ba222a544215       ffma     $r42, $r61, $r49, r42
 712: 3aa9b8022a544215       ffma     r42, $r60, $r48, r42
 71a: baadbe222a564215       ffma     $r43, $r63, $r49, r43
 722: 3aadbc022a564215       ffma     r43, $r62, $r48, r43
 72a: baa182222a504219       ffma     $r40, $r65, $r49, r40
 732: 3aa180022a504219       ffma     r40, $r64, $r48, r40
 73a: baa586222a524219       ffma     $r41, $r67, $r49, r41
 742: 3aa584022a524219       ffma     r41, $r66, $r48, r41
 74a: ba99a6222a4c4215       ffma     $r38, $r51, $r49, r38
 752: 3a99a4022a4c4215       ffma     r38, $r50, $r48, r38
 75a: ba9d8a222a4e4219       ffma     $r39, $r69, $r49, r39
 762: 3a9d88022a4e4219       ffma     r39, $r68, $r48, r39
 76a: ba91aa222a484215       ffma     $r36, $r53, $r49, r36
 772: 3a91a8022a484215       ffma     r36, $r52, $r48, r36
 77a: ba958e22264a4219       ffma     $r37, $r71, r49, r37
 782: 3a958c02264a4219       ffma     r37, $r70, r48, r37
 78a: ba89ba2229444216       ffma     $r34, $r61, $r73, r34
 792: 3a89b80229444216       ffma     r34, $r60, $r72, r34
 79a: ba8dbe2229464216       ffma     $r35, $r63, $r73, r35
 7a2: 3a8dbc0229464216       ffma     r35, $r62, $r72, r35
 7aa: ba8182222940421a       ffma     $r32, $r65, $r73, r32
 7b2: 3a8180022940421a       ffma     r32, $r64, $r72, r32
 7ba: ba8586222942421a       ffma     $r33, $r67, $r73, r33
 7c2: 3a8584022942421a       ffma     r33, $r66, $r72, r33
 7ca: baf9a622297c0206       ffma     $r30, $r51, $r73, r30
 7d2: 3af9a402297c0206       ffma     r30, $r50, $r72, r30
 7da: bafd8a22297e020a       ffma     $r31, $r69, $r73, r31
 7e2: 3afd8802297e020a       ffma     r31, $r68, $r72, r31
 7ea: baf1aa2229780206       ffma     $r28, $r53, $r73, r28
 7f2: 3af1a80229780206       ffma     r28, $r52, $r72, r28
 7fa: baf58e22257a020a       ffma     $r29, $r71, r73, r29
 802: 3af58c02257a020a       ffma     r29, $r70, r72, r29
 80a: bae9ba222b740205       ffma     $r26, $r61, $r57, r26
 812: 3ae9b8022b740205       ffma     r26, $r60, $r56, r26
 81a: baedbe222b760205       ffma     $r27, $r63, $r57, r27
 822: 3aedbc022b760205       ffma     r27, $r62, $r56, r27
 82a: bae182222b700209       ffma     $r24, $r65, $r57, r24
 832: 3ae180022b700209       ffma     r24, $r64, $r56, r24
 83a: bae586222b720209       ffma     $r25, $r67, $r57, r25
 842: 3ae584022b720209       ffma     r25, $r66, $r56, r25
 84a: bad9a6222b6c0205       ffma     $r22, $r51, $r57, r22
 852: 3ad9a4022b6c0205       ffma     r22, $r50, $r56, r22
 85a: badd8a222b6e0209       ffma     $r23, $r69, $r57, r23
 862: 3add88022b6e0209       ffma     r23, $r68, $r56, r23
 86a: bad1aa222b680205       ffma     $r20, $r53, $r57, r20
 872: 3ad1a8022b680205       ffma     r20, $r52, $r56, r20
 87a: bad58e22276a0209       ffma     $r21, $r71, r57, r21
 882: 3ad58c02276a0209       ffma     r21, $r70, r56, r21
 88a: bac97a622b640205       ffma     $r18, r61, $r59, r18
 892: 3ac978422b640205       ffma     r18, r60, $r58, r18
 89a: bacd7e622b660205       ffma     $r19, r63, $r59, r19
 8a2: 3acd7c422b660205       ffma     r19, r62, $r58, r19
 8aa: bac142622b600209       ffma     $r16, r65, $r59, r16
 8b2: 3ac140422b600209       ffma     r16, r64, $r58, r16
 8ba: bac546622b620209       ffma     $r17, r67, $r59, r17
 8c2: 3ac544422b620209       ffma     r17, r66, $r58, r17
 8ca: baa166622b500205       ffma     $r8, r51, $r59, r8
 8d2: 3aa164422b500205       ffma     r8, r50, $r58, r8
 8da: babd4a622b5e0209       ffma     $r15, r69, $r59, r15
 8e2: 3abd48422b5e0209       ffma     r15, r68, $r58, r15
 8ea: ba916a622b480205       ffma     $r4, r53, $r59, r4
 8f2: 3a9168422b480205       ffma     r4, r52, $r58, r4
 8fa: ba9d4e62274e0209       ffma     $r7, r71, r59, r7
 902: 3a9d4c42274e0209       ffma     r7, r70, r58, r7
 90a: 0e3d5e1600140000       iadd     r47, r47.sx, 1
 912: 00c0f4fcffff           jmp_any  -780
 918: 520e00000000           pop_exec 1
 91e: 6800                   barrier
 920: 0e395c8600140000       iadd     r46, r46.sx, 8
 928: 0e355a8600140000       iadd     r45, r45.sx, 8
 930: 0e31580602140000       iadd     r44, r44.sx, 32
 938: 00c0c0f9ffff           jmp_any  -1600
 93e: 520e00000000           pop_exec 1
 944: 9e195c06024c0600       imadd    $r6, r14.sx, 32, r6.sx
 94c: 9e094a0602440600       imadd    $r2, r5.sx, 32, r2.sx
 954: 9e0542865b000000       imul     $r1, r1.sx, u28.sx
 95c: 9e05882564000004       imul     $r1, u36.sx, r1.sx
 964: 1e0546865b420600       imadd    r1, r3.sx, u28.sx, r1.sx
 96c: 8e0d4ca665001000       iadd     $r3, r6.sx, r13.sx, lsl 2
 974: 8e094486e5000000       iadd     $r2, r2.sx, r12.sx, lsl 1
 97c: 928244a2180101300001   csel     $r0h, r2, u37, 1, 0, ult
 986: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 98e: 520941000000           if       r0h, 0, 1, ine
 994: 8e15426664000000       iadd     $r5, r1.sx, r3.sx
 99c: 1e1544c6584a0601       imadd    r5, r2.sx, u38.sx, r5.sx
 9a4: 4551a00e50c11200       store    r42, du40, r5, i32, x, a
 9ac: 3800                   wait     a
 9ae: 520e00000000           pop_exec 1
 9b4: 92824442190101300001   csel     $r0h, r2, u42, 1, 0, ult
 9be: 8e15016064000000       iadd     $r5, 1, r3.sx
 9c6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 9ce: 520941000000           if       r0h, 0, 1, ine
 9d4: 8e19421600000000       iadd     $r6, r1.sx, 1
 9dc: 8e194c6664000000       iadd     $r6, r6.sx, r3.sx
 9e4: 1e194466594c0601       imadd    r6, r2.sx, u43.sx, r6.sx
 9ec: 4559c80e50c11200       store    r43, du44, r6, i32, x, a
 9f4: 3800                   wait     a
 9f6: 520e00000000           pop_exec 1
 9fc: 928244c2190101300001   csel     $r0h, r2, u46, 1, 0, ult
 a06: 8e19462600000000       iadd     $r6, r3.sx, 2
 a0e: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 a16: 520941000000           if       r0h, 0, 1, ine
 a1c: 8e25422600000000       iadd     $r9, r1.sx, 2
 a24: 8e25526664000000       iadd     $r9, r9.sx, r3.sx
 a2c: 1e2544e659520601       imadd    r9, r2.sx, u47.sx, r9.sx
 a34: 4541200e61c11200       store    r40, du48, r9, i32, x, a
 a3c: 3800                   wait     a
 a3e: 520e00000000           pop_exec 1
 a44: 928244421a0101300001   csel     $r0h, r2, u50, 1, 0, ult
 a4e: 8e25036064000000       iadd     $r9, 3, r3.sx
 a56: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 a5e: 520941000000           if       r0h, 0, 1, ine
 a64: 8e29423600000000       iadd     $r10, r1.sx, 3
 a6c: 8e29546664000000       iadd     $r10, r10.sx, r3.sx
 a74: 1e2944665a540601       imadd    r10, r2.sx, u51.sx, r10.sx
 a7c: 4549480e61c11200       store    r41, du52, r10, i32, x, a
 a84: 3800                   wait     a
 a86: 520e00000000           pop_exec 1
 a8c: 8e29441600000000       iadd     $r10, r2.sx, 1
 a94: 928254c21a0101300001   csel     $r0h, r10, u54, 1, 0, ult
 a9e: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 aa6: 520941000000           if       r0h, 0, 1, ine
 aac: 8e2d426664000000       iadd     $r11, r1.sx, r3.sx
 ab4: 1e2d54e65a560601       imadd    r11, r10.sx, u55.sx, r11.sx
 abc: 4511600e71c11200       store    r34, du56, r11, i32, x, a
 ac4: 3800                   wait     a
 ac6: 520e00000000           pop_exec 1
 acc: 928254421b0101300001   csel     $r0h, r10, u58, 1, 0, ult
 ad6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 ade: 520941000000           if       r0h, 0, 1, ine
 ae4: 8e2d421600000000       iadd     $r11, r1.sx, 1
 aec: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 af4: 1e2d54665b560601       imadd    r11, r10.sx, u59.sx, r11.sx
 afc: 4519680e71c11200       store    r35, du60, r11, i32, x, a
 b04: 3800                   wait     a
 b06: 520e00000000           pop_exec 1
 b0c: 928254c21b0101300001   csel     $r0h, r10, u62, 1, 0, ult
 b16: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 b1e: 520941000000           if       r0h, 0, 1, ine
 b24: 8e2d422600000000       iadd     $r11, r1.sx, 2
 b2c: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 b34: 1e2d54e65b560601       imadd    r11, r10.sx, u63.sx, r11.sx
 b3c: 4501600e81c11200       store    r32, du64, r11, i32, x, a
 b44: 3800                   wait     a
 b46: 520e00000000           pop_exec 1
 b4c: 92825442180101300002   csel     $r0h, r10, u66, 1, 0, ult
 b56: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 b5e: 520941000000           if       r0h, 0, 1, ine
 b64: 8e2d423600000000       iadd     $r11, r1.sx, 3
 b6c: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 b74: 1e2d546658560602       imadd    r11, r10.sx, u67.sx, r11.sx
 b7c: 4509680e81c11200       store    r33, du68, r11, i32, x, a
 b84: 3800                   wait     a
 b86: 520e00000000           pop_exec 1
 b8c: 928244c2180101300002   csel     $r0h, r2, u70, 1, 0, ult
 b96: 8e2d106064000000       iadd     $r11, 16, r3.sx
 b9e: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 ba6: 520941000000           if       r0h, 0, 1, ine
 bac: 8e31426665000000       iadd     $r12, r1.sx, r11.sx
 bb4: 1e3144e658580602       imadd    r12, r2.sx, u71.sx, r12.sx
 bbc: 4531800e91c11200       store    r38, du72, r12, i32, x, a
 bc4: 3800                   wait     a
 bc6: 520e00000000           pop_exec 1
 bcc: 92824442190101300002   csel     $r0h, r2, u74, 1, 0, ult
 bd6: 8e31116064000000       iadd     $r12, 17, r3.sx
 bde: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
 be6: 520941000000           if       r0h, 0, 1, ine
 bec: 8e35421600000000       iadd     $r13, r1.sx, 1
 bf4: 8e355a6665000000       iadd     $r13, r13.sx, r11.sx
 bfc: 1e354466595a0602       imadd    r13, r2.sx, u75.sx, r13.sx
 c04: 4539a80e91c11200       store    r39, du76, r13, i32, x, a
 c0c: 3800                   wait     a
 c0e: 520e00000000           pop_exec 1
 c14: 928244c2190101300002   csel     $r0h, r2, u78, 1, 0, ult
 c1e: 8e35126064000000       iadd     $r13, 18, r3.sx
 c26: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
 c2e: 520941000000           if       r0h, 0, 1, ine
 c34: 8e39422600000000       iadd     $r14, r1.sx, 2
 c3c: 8e395c6665000000       iadd     $r14, r14.sx, r11.sx
 c44: 1e3944e6595c0602       imadd    r14, r2.sx, u79.sx, r14.sx
 c4c: 4521c00ea1c11200       store    r36, du80, r14, i32, x, a
 c54: 3800                   wait     a
 c56: 520e00000000           pop_exec 1
 c5c: 928244421a0101300002   csel     $r0h, r2, u82, 1, 0, ult
 c66: 8e39136064000000       iadd     $r14, 19, r3.sx
 c6e: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
 c76: 520941000000           if       r0h, 0, 1, ine
 c7c: 8e01423600100000       iadd     $r32, r1.sx, 3
 c84: 8e01406665140000       iadd     $r32, r32.sx, r11.sx
 c8c: 1e0144665a404612       imadd    r32, r2.sx, u83.sx, r32.sx
 c94: 4529080ea4c11200       store    r37, du84, r32, i32, x, a
 c9c: 3800                   wait     a
 c9e: 520e00000000           pop_exec 1
 ca4: 928254c21a0101300002   csel     $r0h, r10, u86, 1, 0, ult
 cae: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 cb6: 520941000000           if       r0h, 0, 1, ine
 cbc: 8e01426665100000       iadd     $r32, r1.sx, r11.sx
 cc4: 1e0154e65a404612       imadd    r32, r10.sx, u87.sx, r32.sx
 ccc: 45f1000eb4c01200       store    r30, du88, r32, i32, x, a
 cd4: 3800                   wait     a
 cd6: 520e00000000           pop_exec 1
 cdc: 928254421b0101300002   csel     $r0h, r10, u90, 1, 0, ult
 ce6: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
 cee: 520941000000           if       r0h, 0, 1, ine
 cf4: 8e79421600000000       iadd     $r30, r1.sx, 1
 cfc: 8e797c6665000000       iadd     $r30, r30.sx, r11.sx
 d04: 1e7954665b7c0602       imadd    r30, r10.sx, u91.sx, r30.sx
 d0c: 45f9c80eb3c01200       store    r31, du92, r30, i32, x, a
 d14: 3800                   wait     a
 d16: 520e00000000           pop_exec 1
 d1c: 928254c21b0101300002   csel     $r0h, r10, u94, 1, 0, ult
 d26: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
 d2e: 520941000000           if       r0h, 0, 1, ine
 d34: 8e79422600000000       iadd     $r30, r1.sx, 2
 d3c: 8e797c6665000000       iadd     $r30, r30.sx, r11.sx
 d44: 1e7954e65b7c0602       imadd    r30, r10.sx, u95.sx, r30.sx
 d4c: 45e1c00ec3c01200       store    r28, du96, r30, i32, x, a
 d54: 3800                   wait     a
 d56: 520e00000000           pop_exec 1
 d5c: 92825442180101300003   csel     $r0h, r10, u98, 1, 0, ult
 d66: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
 d6e: 520941000000           if       r0h, 0, 1, ine
 d74: 8e71423600000000       iadd     $r28, r1.sx, 3
 d7c: 8e71786665000000       iadd     $r28, r28.sx, r11.sx
 d84: 1e29546658780603       imadd    r10, r10.sx, u99.sx, r28.sx
 d8c: 45e9480ec1c01200       store    r29, du100, r10, i32, x, a
 d94: 3800                   wait     a
 d96: 520e00000000           pop_exec 1
 d9c: 8e29104064000000       iadd     $r10, 16, r2.sx
 da4: 928254c2180101300003   csel     $r0h, r10, u102, 1, 0, ult
 dae: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 db6: 520941000000           if       r0h, 0, 1, ine
 dbc: 8e71426664000000       iadd     $r28, r1.sx, r3.sx
 dc4: 1e7154e658780603       imadd    r28, r10.sx, u103.sx, r28.sx
 dcc: 45d1800ed3c01200       store    r26, du104, r28, i32, x, a
 dd4: 3800                   wait     a
 dd6: 520e00000000           pop_exec 1
 ddc: 92825442190101300003   csel     $r0h, r10, u106, 1, 0, ult
 de6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 dee: 520941000000           if       r0h, 0, 1, ine
 df4: 8e69421600000000       iadd     $r26, r1.sx, 1
 dfc: 8e69746664000000       iadd     $r26, r26.sx, r3.sx
 e04: 1e69546659740603       imadd    r26, r10.sx, u107.sx, r26.sx
 e0c: 45d9480ed3c01200       store    r27, du108, r26, i32, x, a
 e14: 3800                   wait     a
 e16: 520e00000000           pop_exec 1
 e1c: 928254c2190101300003   csel     $r0h, r10, u110, 1, 0, ult
 e26: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 e2e: 520941000000           if       r0h, 0, 1, ine
 e34: 8e69422600000000       iadd     $r26, r1.sx, 2
 e3c: 8e69746664000000       iadd     $r26, r26.sx, r3.sx
 e44: 1e6954e659740603       imadd    r26, r10.sx, u111.sx, r26.sx
 e4c: 45c1400ee3c01200       store    r24, du112, r26, i32, x, a
 e54: 3800                   wait     a
 e56: 520e00000000           pop_exec 1
 e5c: 928254421a0101300003   csel     $r0h, r10, u114, 1, 0, ult
 e66: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 e6e: 520941000000           if       r0h, 0, 1, ine
 e74: 8e61423600000000       iadd     $r24, r1.sx, 3
 e7c: 8e61706664000000       iadd     $r24, r24.sx, r3.sx
 e84: 1e6154665a700603       imadd    r24, r10.sx, u115.sx, r24.sx
 e8c: 45c9080ee3c01200       store    r25, du116, r24, i32, x, a
 e94: 3800                   wait     a
 e96: 520e00000000           pop_exec 1
 e9c: 8e09114064000000       iadd     $r2, 17, r2.sx
 ea4: 928244c21a0101300003   csel     $r0h, r2, u118, 1, 0, ult
 eae: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 eb6: 520941000000           if       r0h, 0, 1, ine
 ebc: 8e61426664000000       iadd     $r24, r1.sx, r3.sx
 ec4: 1e6144e65a700603       imadd    r24, r2.sx, u119.sx, r24.sx
 ecc: 4591000ef3c01200       store    r18, du120, r24, i32, x, a
 ed4: 3800                   wait     a
 ed6: 520e00000000           pop_exec 1
 edc: 928244421b0101300003   csel     $r0h, r2, u122, 1, 0, ult
 ee6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 eee: 520941000000           if       r0h, 0, 1, ine
 ef4: 8e15421600000000       iadd     $r5, r1.sx, 1
 efc: 8e154a6664000000       iadd     $r5, r5.sx, r3.sx
 f04: 1e1544665b4a0603       imadd    r5, r2.sx, u123.sx, r5.sx
 f0c: 4599a80ef0c01200       store    r19, du124, r5, i32, x, a
 f14: 3800                   wait     a
 f16: 520e00000000           pop_exec 1
 f1c: 928244c21b0101300003   csel     $r0h, r2, u126, 1, 0, ult
 f26: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 f2e: 520941000000           if       r0h, 0, 1, ine
 f34: 8e15422600000000       iadd     $r5, r1.sx, 2
 f3c: 8e154a6664000000       iadd     $r5, r5.sx, r3.sx
 f44: 1e1544e65b4a0603       imadd    r5, r2.sx, u127.sx, r5.sx
 f4c: 7e49c0098000           mov      r18, u128
 f52: 7e4dc2098000           mov      r19, u129
 f58: 4581a40620c01200       store    r16, dr18, r5, i32, x, a
 f60: 3800                   wait     a
 f62: 520e00000000           pop_exec 1
 f68: 920244421c010130       csel     $r0h, r2, u130, 1, 0, ult
 f70: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 f78: 520941000000           if       r0h, 0, 1, ine
 f7e: 8e15423600000000       iadd     $r5, r1.sx, 3
 f86: 8e0d4a6664000000       iadd     $r3, r5.sx, r3.sx
 f8e: 1e0d44665c460600       imadd    r3, r2.sx, u131.sx, r3.sx
 f96: 7e49c8098000           mov      r18, u132
 f9c: 7e4dca098000           mov      r19, u133
 fa2: 4589640620c01200       store    r17, dr18, r3, i32, x, a
 faa: 3800                   wait     a
 fac: 520e00000000           pop_exec 1
 fb2: 920254c21c010130       csel     $r0h, r10, u134, 1, 0, ult
 fba: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 fc2: 520941000000           if       r0h, 0, 1, ine
 fc8: 8e0d426665000000       iadd     $r3, r1.sx, r11.sx
 fd0: 1e0d54e65c460600       imadd    r3, r10.sx, u135.sx, r3.sx
 fd8: 7e41d0098000           mov      r16, u136
 fde: 7e45d2098000           mov      r17, u137
 fe4: 45b1600620c01200       store    r22, dr16, r3, i32, x, a
 fec: 3800                   wait     a
 fee: 520e00000000           pop_exec 1
 ff4: 920254421d010130       csel     $r0h, r10, u138, 1, 0, ult
 ffc: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
1004: 520941000000           if       r0h, 0, 1, ine
100a: 8e0d421600000000       iadd     $r3, r1.sx, 1
1012: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
101a: 1e0d54665d460600       imadd    r3, r10.sx, u139.sx, r3.sx
1022: 7e41d8098000           mov      r16, u140
1028: 7e45da098000           mov      r17, u141
102e: 45b9600620c01200       store    r23, dr16, r3, i32, x, a
1036: 3800                   wait     a
1038: 520e00000000           pop_exec 1
103e: 920254c21d010130       csel     $r0h, r10, u142, 1, 0, ult
1046: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
104e: 520941000000           if       r0h, 0, 1, ine
1054: 8e0d422600000000       iadd     $r3, r1.sx, 2
105c: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
1064: 1e0d54e65d460600       imadd    r3, r10.sx, u143.sx, r3.sx
106c: 7e41e0098000           mov      r16, u144
1072: 7e45e2098000           mov      r17, u145
1078: 45a1600620c01200       store    r20, dr16, r3, i32, x, a
1080: 3800                   wait     a
1082: 520e00000000           pop_exec 1
1088: 920254421e010130       csel     $r0h, r10, u146, 1, 0, ult
1090: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
1098: 520941000000           if       r0h, 0, 1, ine
109e: 8e0d423600000000       iadd     $r3, r1.sx, 3
10a6: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
10ae: 1e0d54665e460600       imadd    r3, r10.sx, u147.sx, r3.sx
10b6: 7e41e8098000           mov      r16, u148
10bc: 7e45ea098000           mov      r17, u149
10c2: 45a9600620c01200       store    r21, dr16, r3, i32, x, a
10ca: 3800                   wait     a
10cc: 520e00000000           pop_exec 1
10d2: 920244c21e010130       csel     $r0h, r2, u150, 1, 0, ult
10da: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
10e2: 520941000000           if       r0h, 0, 1, ine
10e8: 8e0d426665000000       iadd     $r3, r1.sx, r11.sx
10f0: 1e0d44e65e460600       imadd    r3, r2.sx, u151.sx, r3.sx
10f8: 7e41f0098000           mov      r16, u152
10fe: 7e45f2098000           mov      r17, u153
1104: 4541600620c01200       store    r8, dr16, r3, i32, x, a
110c: 3800                   wait     a
110e: 520e00000000           pop_exec 1
1114: 920244421f010130       csel     $r0h, r2, u154, 1, 0, ult
111c: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
1124: 520941000000           if       r0h, 0, 1, ine
112a: 8e0d421600000000       iadd     $r3, r1.sx, 1
1132: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
113a: 1e0d44665f460600       imadd    r3, r2.sx, u155.sx, r3.sx
1142: 7e21f8098000           mov      r8, u156
1148: 7e25fa098000           mov      r9, u157
114e: 4579600610c01200       store    r15, dr8, r3, i32, x, a
1156: 3800                   wait     a
1158: 520e00000000           pop_exec 1
115e: 920244c21f010130       csel     $r0h, r2, u158, 1, 0, ult
1166: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
116e: 520941000000           if       r0h, 0, 1, ine
1174: 8e0d422600000000       iadd     $r3, r1.sx, 2
117c: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
1184: 1e0d44e65f460600       imadd    r3, r2.sx, u159.sx, r3.sx
118c: 7e21c0098004           mov      r8, u160
1192: 7e25c2098004           mov      r9, u161
1198: 4521600610c01200       store    r4, dr8, r3, i32, x, a
11a0: 3800                   wait     a
11a2: 520e00000000           pop_exec 1
11a8: 928244421c0101300001   csel     $r0h, r2, u162, 1, 0, ult
11b2: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
11ba: 520941000000           if       r0h, 0, 1, ine
11c0: 8e05423600000000       iadd     $r1, r1.sx, 3
11c8: 8e05426665000000       iadd     $r1, r1.sx, r11.sx
11d0: 1e0544665c420601       imadd    r1, r2.sx, u163.sx, r1.sx
11d8: 7e09c8098004           mov      r2, u164
11de: 7e0dca098004           mov      r3, u165
11e4: 4539240600c01200       store    r7, dr2, r1, i32, x, a
11ec: 3800                   wait     a
11ee: 520e00000000           pop_exec 1
11f4: 8800                   stop
block0 {
   2 = device_load u0:u1, #5, xyz, #0x0, slot 0
   96, 97, 98 = split 2
   99 = collect 96, 97
   uniform_store 99, #8, xy, #0x0
   uniform_store 98, #12, x, #0x0
   4 = device_load u0:u1, #131, x, #0x0, slot 0
   uniform_store 4, #14, x, #0x0
   6 = device_load u0:u1, #133, xyzw, #0x0, slot 0
   103, 104, 105, 106 = split 6
   107 = collect 103, 104
   uniform_store 107, #16, xy, #0x0
   108 = collect 105, 106
   uniform_store 108, #20, xy, #0x0
   7 = convert #10, 105, #0x1
   9 = rcp 7
   11 = ffma 7.neg, 9, #1.000000
   12 = ffma 11, 9, 9
   14 = fcmpsel 12, 12, 12, 9, #0x0
   15 = mov_imm #0x4f7ffffe
   16 = fmul 14, 15
   17 = convert #8, 16, #0x0
   18 = imad 105, 17, #0, #0x0
   19 = iadd #0, 18.neg, #0x0
   109d = imad 17.abs, 19.abs, #0, #0x0
   _, 20 = split 109d
   21 = iadd 17, 20, #0x0
   uniform_store 21, #24, x, #0x0
   22 = iadd #0, 105.neg, #0x0
   uniform_store 22, #26, x, #0x0
   24 = device_load u0:u1, #137, x, #0x0, slot 0
   uniform_store 24, #28, x, #0x0
   25 = convert #10, 24, #0x1
   27 = rcp 25
   28 = ffma 25.neg, 27, #1.000000
   29 = ffma 28, 27, 27
   31 = fcmpsel 29, 29, 29, 27, #0x0
   32 = fmul 31, 15
   33 = convert #8, 32, #0x0
   34 = imad 24, 33, #0, #0x0
   35 = iadd #0, 34.neg, #0x0
   115d = imad 33.abs, 35.abs, #0, #0x0
   _, 36 = split 115d
   37 = iadd 33, 36, #0x0
   uniform_store 37, #30, x, #0x0
   38 = iadd #0, 24.neg, #0x0
   uniform_store 38, #32, x, #0x0
   39 = convert #10, 106, #0x1
   41 = rcp 39
   42 = ffma 39.neg, 41, #1.000000
   43 = ffma 42, 41, 41
   45 = fcmpsel 43, 43, 43, 41, #0x0
   46 = fmul 45, 15
   47 = convert #8, 46, #0x0
   48 = imad 106, 47, #0, #0x0
   49 = iadd #0, 48.neg, #0x0
   119d = imad 47.abs, 49.abs, #0, #0x0
   _, 50 = split 119d
   51 = iadd 47, 50, #0x0
   uniform_store 51, #34, x, #0x0
   52 = iadd #0, 106.neg, #0x0
   uniform_store 52, #36, x, #0x0
   54 = device_load u0:u1, #61, x, #0x0, slot 0
   uniform_store 54, #38, x, #0x0
   57 = iadd #63, 54, #0x0
   58 = bfeil #0, 57, #6, #0x0
   uniform_store 58, #40, x, #0x0
   59 = convert #10, 58, #0x1
   61 = rcp 59
   62 = ffma 59.neg, 61, #1.000000
   63 = ffma 62, 61, 61
   65 = fcmpsel 63, 63, 63, 61, #0x0
   66 = fmul 65, 15
   67 = convert #8, 66, #0x0
   68 = imad 58, 67, #0, #0x0
   69 = iadd #0, 68.neg, #0x0
   126d = imad 67.abs, 69.abs, #0, #0x0
   _, 70 = split 126d
   71 = iadd 67, 70, #0x0
   uniform_store 71, #42, x, #0x0
   72 = iadd #0, 58.neg, #0x0
   uniform_store 72, #44, x, #0x0
   74 = device_load u0:u1, #31, xyz, #0x0, slot 0
   130, 131, 132 = split 74
   133 = collect 130, 131
   uniform_store 133, #46, xy, #0x0
   uniform_store 132, #50, x, #0x0
   76 = device_load u0:u1, #32, xyz, #0x0, slot 0
   135, 136, 137 = split 76
   138 = collect 135, 136
   uniform_store 138, #52, xy, #0x0
   uniform_store 137, #56, x, #0x0
   78 = bfeil #0, 135, #2, #0x0
   uniform_store 78, #58, x, #0x0
   79 = mov_imm #0xdeadbeef
   80h = icmp 130, 79, #0x0
   uniform_store 80h, #60, x, #0x0
   83 = device_load u2:u3, #0, xyzw, #0x0, slot 0
   142, 143, _, _ = split 83
   84d = collect 142, 143
   146d = mov 84d
   uniform_store 146d, #64, x, #0x0
   86 = device_load u2:u3, #1, xyzw, #0x0, slot 0
   147, 148, _, _ = split 86
   87d = collect 147, 148
   151d = mov 87d
   uniform_store 151d, #68, x, #0x0
   89 = device_load u0:u1, #33, x, #0x0, slot 0
   uniform_store 89, #72, x, #0x0
   91 = device_load u0:u1, #123, x, #0x0, slot 0
   uniform_store 91, #74, x, #0x0
   93 = device_load u0:u1, #127, x, #0x0, slot 0
   uniform_store 93, #76, x, #0x0
   94 = device_load u2:u3, #2, xyzw, #0x0, slot 0
   158, 159, _, _ = split 94
   95d = collect 158, 159
   162d = mov 95d
   uniform_store 162d, #80, x, #0x0
   uniform_store 91, #84, x, #0x0
   uniform_store 93, #86, x, #0x0
   uniform_store 162d, #88, x, #0x0
   uniform_store 91, #92, x, #0x0
   uniform_store 93, #94, x, #0x0
   uniform_store 162d, #96, x, #0x0
   uniform_store 91, #100, x, #0x0
   uniform_store 93, #102, x, #0x0
   uniform_store 162d, #104, x, #0x0
   uniform_store 91, #108, x, #0x0
   uniform_store 93, #110, x, #0x0
   uniform_store 162d, #112, x, #0x0
   uniform_store 91, #116, x, #0x0
   uniform_store 93, #118, x, #0x0
   uniform_store 162d, #120, x, #0x0
   uniform_store 91, #124, x, #0x0
   uniform_store 93, #126, x, #0x0
   uniform_store 162d, #128, x, #0x0
   uniform_store 91, #132, x, #0x0
   uniform_store 93, #134, x, #0x0
   uniform_store 162d, #136, x, #0x0
   uniform_store 91, #140, x, #0x0
   uniform_store 93, #142, x, #0x0
   uniform_store 162d, #144, x, #0x0
   uniform_store 91, #148, x, #0x0
   uniform_store 93, #150, x, #0x0
   uniform_store 162d, #152, x, #0x0
   uniform_store 91, #156, x, #0x0
   uniform_store 93, #158, x, #0x0
   uniform_store 162d, #160, x, #0x0
   uniform_store 91, #164, x, #0x0
   uniform_store 93, #166, x, #0x0
   uniform_store 162d, #168, x, #0x0
   uniform_store 91, #172, x, #0x0
   uniform_store 93, #174, x, #0x0
   uniform_store 162d, #176, x, #0x0
   uniform_store 91, #180, x, #0x0
   uniform_store 93, #182, x, #0x0
   uniform_store 162d, #184, x, #0x0
   uniform_store 91, #188, x, #0x0
   uniform_store 93, #190, x, #0x0
   uniform_store 162d, #192, x, #0x0
   uniform_store 91, #196, x, #0x0
   uniform_store 93, #198, x, #0x0
   uniform_store 162d, #200, x, #0x0
   uniform_store 91, #204, x, #0x0
   uniform_store 93, #206, x, #0x0
   uniform_store 162d, #208, x, #0x0
   uniform_store 91, #212, x, #0x0
   uniform_store 93, #214, x, #0x0
   uniform_store 162d, #216, x, #0x0
   uniform_store 91, #220, x, #0x0
   uniform_store 93, #222, x, #0x0
   uniform_store 162d, #224, x, #0x0
   uniform_store 91, #228, x, #0x0
   uniform_store 93, #230, x, #0x0
   uniform_store 162d, #232, x, #0x0
   uniform_store 91, #236, x, #0x0
   uniform_store 93, #238, x, #0x0
   uniform_store 162d, #240, x, #0x0
   uniform_store 91, #244, x, #0x0
   uniform_store 93, #246, x, #0x0
   uniform_store 162d, #248, x, #0x0
   uniform_store 91, #252, x, #0x0
   uniform_store 93, #254, x, #0x0
   uniform_store 162d, #256, x, #0x0
   uniform_store 91, #260, x, #0x0
   uniform_store 93, #262, x, #0x0
   uniform_store 162d, #264, x, #0x0
   uniform_store 91, #268, x, #0x0
   uniform_store 93, #270, x, #0x0
   uniform_store 162d, #272, x, #0x0
   uniform_store 91, #276, x, #0x0
   uniform_store 93, #278, x, #0x0
   uniform_store 162d, #280, x, #0x0
   uniform_store 91, #284, x, #0x0
   uniform_store 93, #286, x, #0x0
   uniform_store 162d, #288, x, #0x0
   uniform_store 91, #292, x, #0x0
   uniform_store 93, #294, x, #0x0
   uniform_store 162d, #296, x, #0x0
   uniform_store 91, #300, x, #0x0
   uniform_store 93, #302, x, #0x0
   uniform_store 162d, #304, x, #0x0
   uniform_store 91, #308, x, #0x0
   uniform_store 93, #310, x, #0x0
   uniform_store 162d, #312, x, #0x0
   uniform_store 91, #316, x, #0x0
   uniform_store 93, #318, x, #0x0
   uniform_store 162d, #320, x, #0x0
   uniform_store 91, #324, x, #0x0
   uniform_store 93, #326, x, #0x0
   uniform_store 162d, #328, x, #0x0
   stop 
}

block0 {
   2 = device_load u0:u1, #5, xyz, #0x0, slot 0
   4 = device_load u0:u1, #131, x, #0x0, slot 0
   6 = device_load u0:u1, #133, xyzw, #0x0, slot 0
   24 = device_load u0:u1, #137, x, #0x0, slot 0
   54 = device_load u0:u1, #61, x, #0x0, slot 0
   74 = device_load u0:u1, #31, xyz, #0x0, slot 0
   76 = device_load u0:u1, #32, xyz, #0x0, slot 0
   83 = device_load u2:u3, #0, xyzw, #0x0, slot 0
   86 = device_load u2:u3, #1, xyzw, #0x0, slot 0
   89 = device_load u0:u1, #33, x, #0x0, slot 0
   91 = device_load u0:u1, #123, x, #0x0, slot 0
   93 = device_load u0:u1, #127, x, #0x0, slot 0
   94 = device_load u2:u3, #2, xyzw, #0x0, slot 0
   96, 97, 98 = split 2
   99 = collect 96, 97
   uniform_store 99, #8, xy, #0x0
   uniform_store 98, #12, x, #0x0
   uniform_store 4, #14, x, #0x0
   103, 104, 105, 106 = split 6
   107 = collect 103, 104
   uniform_store 107, #16, xy, #0x0
   108 = collect 105, 106
   uniform_store 108, #20, xy, #0x0
   7 = convert #10, 105, #0x1
   9 = rcp 7
   11 = ffma 7.neg, 9, #1.000000
   12 = ffma 11, 9, 9
   14 = fcmpsel 12, 12, 12, 9, #0x0
   15 = mov_imm #0x4f7ffffe
   16 = fmul 14, 15
   17 = convert #8, 16, #0x0
   18 = imad 105, 17, #0, #0x0
   19 = iadd #0, 18.neg, #0x0
   109d = imad 17.abs, 19.abs, #0, #0x0
   _, 20 = split 109d
   21 = iadd 17, 20, #0x0
   uniform_store 21, #24, x, #0x0
   22 = iadd #0, 105.neg, #0x0
   uniform_store 22, #26, x, #0x0
   uniform_store 24, #28, x, #0x0
   25 = convert #10, 24, #0x1
   27 = rcp 25
   28 = ffma 25.neg, 27, #1.000000
   29 = ffma 28, 27, 27
   31 = fcmpsel 29, 29, 29, 27, #0x0
   32 = fmul 31, 15
   33 = convert #8, 32, #0x0
   34 = imad 24, 33, #0, #0x0
   35 = iadd #0, 34.neg, #0x0
   115d = imad 33.abs, 35.abs, #0, #0x0
   _, 36 = split 115d
   37 = iadd 33, 36, #0x0
   uniform_store 37, #30, x, #0x0
   38 = iadd #0, 24.neg, #0x0
   uniform_store 38, #32, x, #0x0
   39 = convert #10, 106, #0x1
   41 = rcp 39
   42 = ffma 39.neg, 41, #1.000000
   43 = ffma 42, 41, 41
   45 = fcmpsel 43, 43, 43, 41, #0x0
   46 = fmul 45, 15
   47 = convert #8, 46, #0x0
   48 = imad 106, 47, #0, #0x0
   49 = iadd #0, 48.neg, #0x0
   119d = imad 47.abs, 49.abs, #0, #0x0
   _, 50 = split 119d
   51 = iadd 47, 50, #0x0
   uniform_store 51, #34, x, #0x0
   52 = iadd #0, 106.neg, #0x0
   uniform_store 52, #36, x, #0x0
   uniform_store 54, #38, x, #0x0
   57 = iadd #63, 54, #0x0
   58 = bfeil #0, 57, #6, #0x0
   uniform_store 58, #40, x, #0x0
   59 = convert #10, 58, #0x1
   61 = rcp 59
   62 = ffma 59.neg, 61, #1.000000
   63 = ffma 62, 61, 61
   65 = fcmpsel 63, 63, 63, 61, #0x0
   66 = fmul 65, 15
   67 = convert #8, 66, #0x0
   68 = imad 58, 67, #0, #0x0
   69 = iadd #0, 68.neg, #0x0
   126d = imad 67.abs, 69.abs, #0, #0x0
   _, 70 = split 126d
   71 = iadd 67, 70, #0x0
   uniform_store 71, #42, x, #0x0
   72 = iadd #0, 58.neg, #0x0
   uniform_store 72, #44, x, #0x0
   130, 131, 132 = split 74
   133 = collect 130, 131
   uniform_store 133, #46, xy, #0x0
   uniform_store 132, #50, x, #0x0
   135, 136, 137 = split 76
   138 = collect 135, 136
   uniform_store 138, #52, xy, #0x0
   uniform_store 137, #56, x, #0x0
   78 = bfeil #0, 135, #2, #0x0
   uniform_store 78, #58, x, #0x0
   79 = mov_imm #0xdeadbeef
   80h = icmp 130, 79, #0x0
   uniform_store 80h, #60, x, #0x0
   142, 143, _, _ = split 83
   84d = collect 142, 143
   146d = mov 84d
   uniform_store 146d, #64, x, #0x0
   147, 148, _, _ = split 86
   87d = collect 147, 148
   151d = mov 87d
   uniform_store 151d, #68, x, #0x0
   uniform_store 89, #72, x, #0x0
   uniform_store 91, #74, x, #0x0
   uniform_store 93, #76, x, #0x0
   158, 159, _, _ = split 94
   95d = collect 158, 159
   162d = mov 95d
   uniform_store 162d, #80, x, #0x0
   uniform_store 91, #84, x, #0x0
   uniform_store 93, #86, x, #0x0
   uniform_store 162d, #88, x, #0x0
   uniform_store 91, #92, x, #0x0
   uniform_store 93, #94, x, #0x0
   uniform_store 162d, #96, x, #0x0
   uniform_store 91, #100, x, #0x0
   uniform_store 93, #102, x, #0x0
   uniform_store 162d, #104, x, #0x0
   uniform_store 91, #108, x, #0x0
   uniform_store 93, #110, x, #0x0
   uniform_store 162d, #112, x, #0x0
   uniform_store 91, #116, x, #0x0
   uniform_store 93, #118, x, #0x0
   uniform_store 162d, #120, x, #0x0
   uniform_store 91, #124, x, #0x0
   uniform_store 93, #126, x, #0x0
   uniform_store 162d, #128, x, #0x0
   uniform_store 91, #132, x, #0x0
   uniform_store 93, #134, x, #0x0
   uniform_store 162d, #136, x, #0x0
   uniform_store 91, #140, x, #0x0
   uniform_store 93, #142, x, #0x0
   uniform_store 162d, #144, x, #0x0
   uniform_store 91, #148, x, #0x0
   uniform_store 93, #150, x, #0x0
   uniform_store 162d, #152, x, #0x0
   uniform_store 91, #156, x, #0x0
   uniform_store 93, #158, x, #0x0
   uniform_store 162d, #160, x, #0x0
   uniform_store 91, #164, x, #0x0
   uniform_store 93, #166, x, #0x0
   uniform_store 162d, #168, x, #0x0
   uniform_store 91, #172, x, #0x0
   uniform_store 93, #174, x, #0x0
   uniform_store 162d, #176, x, #0x0
   uniform_store 91, #180, x, #0x0
   uniform_store 93, #182, x, #0x0
   uniform_store 162d, #184, x, #0x0
   uniform_store 91, #188, x, #0x0
   uniform_store 93, #190, x, #0x0
   uniform_store 162d, #192, x, #0x0
   uniform_store 91, #196, x, #0x0
   uniform_store 93, #198, x, #0x0
   uniform_store 162d, #200, x, #0x0
   uniform_store 91, #204, x, #0x0
   uniform_store 93, #206, x, #0x0
   uniform_store 162d, #208, x, #0x0
   uniform_store 91, #212, x, #0x0
   uniform_store 93, #214, x, #0x0
   uniform_store 162d, #216, x, #0x0
   uniform_store 91, #220, x, #0x0
   uniform_store 93, #222, x, #0x0
   uniform_store 162d, #224, x, #0x0
   uniform_store 91, #228, x, #0x0
   uniform_store 93, #230, x, #0x0
   uniform_store 162d, #232, x, #0x0
   uniform_store 91, #236, x, #0x0
   uniform_store 93, #238, x, #0x0
   uniform_store 162d, #240, x, #0x0
   uniform_store 91, #244, x, #0x0
   uniform_store 93, #246, x, #0x0
   uniform_store 162d, #248, x, #0x0
   uniform_store 91, #252, x, #0x0
   uniform_store 93, #254, x, #0x0
   uniform_store 162d, #256, x, #0x0
   uniform_store 91, #260, x, #0x0
   uniform_store 93, #262, x, #0x0
   uniform_store 162d, #264, x, #0x0
   uniform_store 91, #268, x, #0x0
   uniform_store 93, #270, x, #0x0
   uniform_store 162d, #272, x, #0x0
   uniform_store 91, #276, x, #0x0
   uniform_store 93, #278, x, #0x0
   uniform_store 162d, #280, x, #0x0
   uniform_store 91, #284, x, #0x0
   uniform_store 93, #286, x, #0x0
   uniform_store 162d, #288, x, #0x0
   uniform_store 91, #292, x, #0x0
   uniform_store 93, #294, x, #0x0
   uniform_store 162d, #296, x, #0x0
   uniform_store 91, #300, x, #0x0
   uniform_store 93, #302, x, #0x0
   uniform_store 162d, #304, x, #0x0
   uniform_store 91, #308, x, #0x0
   uniform_store 93, #310, x, #0x0
   uniform_store 162d, #312, x, #0x0
   uniform_store 91, #316, x, #0x0
   uniform_store 93, #318, x, #0x0
   uniform_store 162d, #320, x, #0x0
   uniform_store 91, #324, x, #0x0
   uniform_store 93, #326, x, #0x0
   uniform_store 162d, #328, x, #0x0
   stop 
}

block0 {
   r0...r2 = device_load u0:u1, #5, xyz, #0x0, slot 0
   r4 = device_load u0:u1, #131, x, #0x0, slot 1
   r8...r11 = device_load u0:u1, #133, xyzw, #0x0, slot 0
   $r5 = device_load u0:u1, #137, x, #0x0, slot 0
   $r6 = device_load u0:u1, #61, x, #0x0, slot 0
   $r12...r14 = device_load u0:u1, #31, xyz, #0x0, slot 0
   $r16...r18 = device_load u0:u1, #32, xyz, #0x0, slot 0
   r20...r23 = device_load u2:u3, #0, xyzw, #0x0, slot 0
   r24...r27 = device_load u2:u3, #1, xyzw, #0x0, slot 0
   wait #0x0, slot 0
   r7 = device_load u0:u1, #33, x, #0x0, slot 0
   r28 = device_load u0:u1, #123, x, #0x0, slot 0
   r29 = device_load u0:u1, #127, x, #0x0, slot 0
   r32...r35 = device_load u2:u3, #2, xyzw, #0x0, slot 0
   uniform_store ^r0...r1, #8, xy, #0x0
   uniform_store ^r2, #12, x, #0x0
   wait #0x0, slot 1
   uniform_store ^r4, #14, x, #0x0
   uniform_store ^r8...r9, #16, xy, #0x0
   r0 = mov1 $r10, #0
   r1 = mov1 $r11, #0
   uniform_store ^r0...r1, #20, xy, #0x0
   $r0 = convert #10, $r10, #0x1
   $r1 = rcp $r0
   $r0 = ffma ^r0.neg, $r1, #1.000000
   $r0 = ffma ^r0, $r1, $r1
   $r0 = fcmpsel ^r0, ^r0, ^r0, ^r1, #0x0
   $r1 = mov_imm #0x4f7ffffe
   r0 = fmul ^r0, $r1
   $r0 = convert #8, ^r0, #0x0
   $r2 = imad $r10, $r0, #0, #0x0
   $r2 = iadd #0, ^r2.neg, #0x0
   r2:r3 = imad $r0.abs, ^r2.abs, #0, #0x0
   r0 = iadd ^r0, ^r3, #0x0
   uniform_store ^r0, #24, x, #0x0
   r0 = iadd #0, ^r10.neg, #0x0
   uniform_store ^r0, #26, x, #0x0
   uniform_store $r5, #28, x, #0x0
   $r0 = convert #10, $r5, #0x1
   $r2 = rcp $r0
   $r0 = ffma ^r0.neg, $r2, #1.000000
   $r0 = ffma ^r0, $r2, $r2
   $r0 = fcmpsel ^r0, ^r0, ^r0, ^r2, #0x0
   r0 = fmul ^r0, $r1
   $r0 = convert #8, ^r0, #0x0
   $r2 = imad $r5, $r0, #0, #0x0
   $r2 = iadd #0, ^r2.neg, #0x0
   r2:r3 = imad $r0.abs, ^r2.abs, #0, #0x0
   r0 = iadd ^r0, ^r3, #0x0
   uniform_store ^r0, #30, x, #0x0
   r0 = iadd #0, ^r5.neg, #0x0
   uniform_store ^r0, #32, x, #0x0
   $r0 = convert #10, $r11, #0x1
   $r2 = rcp $r0
   $r0 = ffma ^r0.neg, $r2, #1.000000
   $r0 = ffma ^r0, $r2, $r2
   $r0 = fcmpsel ^r0, ^r0, ^r0, ^r2, #0x0
   r0 = fmul ^r0, $r1
   $r0 = convert #8, ^r0, #0x0
   $r2 = imad $r11, $r0, #0, #0x0
   $r2 = iadd #0, ^r2.neg, #0x0
   r2:r3 = imad $r0.abs, ^r2.abs, #0, #0x0
   r0 = iadd ^r0, ^r3, #0x0
   uniform_store ^r0, #34, x, #0x0
   r0 = iadd #0, ^r11.neg, #0x0
   uniform_store ^r0, #36, x, #0x0
   uniform_store $r6, #38, x, #0x0
   $r0 = iadd #63, ^r6, #0x0
   $r0 = bfeil #0, ^r0, #6, #0x0
   uniform_store $r0, #40, x, #0x0
   $r2 = convert #10, $r0, #0x1
   $r3 = rcp $r2
   $r2 = ffma ^r2.neg, $r3, #1.000000
   $r2 = ffma ^r2, $r3, $r3
   $r2 = fcmpsel ^r2, ^r2, ^r2, ^r3, #0x0
   r1 = fmul ^r2, ^r1
   $r1 = convert #8, ^r1, #0x0
   $r2 = imad $r0, $r1, #0, #0x0
   $r2 = iadd #0, ^r2.neg, #0x0
   r2:r3 = imad $r1.abs, ^r2.abs, #0, #0x0
   r1 = iadd ^r1, ^r3, #0x0
   uniform_store ^r1, #42, x, #0x0
   r0 = iadd #0, ^r0.neg, #0x0
   uniform_store ^r0, #44, x, #0x0
   r0 = mov1 $r12, #0
   r1 = mov1 ^r13, #0
   uniform_store ^r0...r1, #46, xy, #0x0
   uniform_store ^r14, #50, x, #0x0
   r0 = mov1 $r16, #0
   r1 = mov1 ^r17, #0
   uniform_store ^r0...r1, #52, xy, #0x0
   uniform_store ^r18, #56, x, #0x0
   r0 = bfeil #0, ^r16, #2, #0x0
   uniform_store ^r0, #58, x, #0x0
   $r0 = mov_imm #0xdeadbeef
   r0l = icmpsel ^r12, ^r0, #1, #0, #0x0
   uniform_store ^r0l, #60, x, #0x0
   uniform_store ^r20:r21, #64, x, #0x0
   uniform_store ^r24:r25, #68, x, #0x0
   wait #0x0, slot 0
   uniform_store ^r7, #72, x, #0x0
   uniform_store r28, #74, x, #0x0
   uniform_store r29, #76, x, #0x0
   uniform_store r32:r33, #80, x, #0x0
   uniform_store r28, #84, x, #0x0
   uniform_store r29, #86, x, #0x0
   uniform_store r32:r33, #88, x, #0x0
   uniform_store r28, #92, x, #0x0
   uniform_store r29, #94, x, #0x0
   uniform_store r32:r33, #96, x, #0x0
   uniform_store r28, #100, x, #0x0
   uniform_store r29, #102, x, #0x0
   uniform_store r32:r33, #104, x, #0x0
   uniform_store r28, #108, x, #0x0
   uniform_store r29, #110, x, #0x0
   uniform_store r32:r33, #112, x, #0x0
   uniform_store r28, #116, x, #0x0
   uniform_store r29, #118, x, #0x0
   uniform_store r32:r33, #120, x, #0x0
   uniform_store r28, #124, x, #0x0
   uniform_store r29, #126, x, #0x0
   uniform_store r32:r33, #128, x, #0x0
   uniform_store r28, #132, x, #0x0
   uniform_store r29, #134, x, #0x0
   uniform_store r32:r33, #136, x, #0x0
   uniform_store r28, #140, x, #0x0
   uniform_store r29, #142, x, #0x0
   uniform_store r32:r33, #144, x, #0x0
   uniform_store r28, #148, x, #0x0
   uniform_store r29, #150, x, #0x0
   uniform_store r32:r33, #152, x, #0x0
   uniform_store r28, #156, x, #0x0
   uniform_store r29, #158, x, #0x0
   uniform_store r32:r33, #160, x, #0x0
   uniform_store r28, #164, x, #0x0
   uniform_store r29, #166, x, #0x0
   uniform_store r32:r33, #168, x, #0x0
   uniform_store r28, #172, x, #0x0
   uniform_store r29, #174, x, #0x0
   uniform_store r32:r33, #176, x, #0x0
   uniform_store r28, #180, x, #0x0
   uniform_store r29, #182, x, #0x0
   uniform_store r32:r33, #184, x, #0x0
   uniform_store r28, #188, x, #0x0
   uniform_store r29, #190, x, #0x0
   uniform_store r32:r33, #192, x, #0x0
   uniform_store r28, #196, x, #0x0
   uniform_store r29, #198, x, #0x0
   uniform_store r32:r33, #200, x, #0x0
   uniform_store r28, #204, x, #0x0
   uniform_store r29, #206, x, #0x0
   uniform_store r32:r33, #208, x, #0x0
   uniform_store r28, #212, x, #0x0
   uniform_store r29, #214, x, #0x0
   uniform_store r32:r33, #216, x, #0x0
   uniform_store r28, #220, x, #0x0
   uniform_store r29, #222, x, #0x0
   uniform_store r32:r33, #224, x, #0x0
   uniform_store r28, #228, x, #0x0
   uniform_store r29, #230, x, #0x0
   uniform_store r32:r33, #232, x, #0x0
   uniform_store r28, #236, x, #0x0
   uniform_store r29, #238, x, #0x0
   uniform_store r32:r33, #240, x, #0x0
   uniform_store r28, #244, x, #0x0
   uniform_store r29, #246, x, #0x0
   uniform_store r32:r33, #248, x, #0x0
   uniform_store r28, #252, x, #0x0
   uniform_store r29, #254, x, #0x0
   uniform_store r32:r33, #256, x, #0x0
   uniform_store r28, #260, x, #0x0
   uniform_store r29, #262, x, #0x0
   uniform_store r32:r33, #264, x, #0x0
   uniform_store r28, #268, x, #0x0
   uniform_store r29, #270, x, #0x0
   uniform_store r32:r33, #272, x, #0x0
   uniform_store r28, #276, x, #0x0
   uniform_store r29, #278, x, #0x0
   uniform_store r32:r33, #280, x, #0x0
   uniform_store r28, #284, x, #0x0
   uniform_store r29, #286, x, #0x0
   uniform_store r32:r33, #288, x, #0x0
   uniform_store r28, #292, x, #0x0
   uniform_store r29, #294, x, #0x0
   uniform_store r32:r33, #296, x, #0x0
   uniform_store r28, #300, x, #0x0
   uniform_store r29, #302, x, #0x0
   uniform_store r32:r33, #304, x, #0x0
   uniform_store r28, #308, x, #0x0
   uniform_store r29, #310, x, #0x0
   uniform_store r32:r33, #312, x, #0x0
   uniform_store r28, #316, x, #0x0
   uniform_store r29, #318, x, #0x0
   uniform_store r32:r33, #320, x, #0x0
   uniform_store ^r28, #324, x, #0x0
   uniform_store ^r29, #326, x, #0x0
   uniform_store ^r32:r33, #328, x, #0x0
   stop 
}

   0: 0501500d00c87200       load     r0_r1_r2, du0, 5, lsl 2, i32, xyz, a
   8: 0521304d08c01200       load     r4, du0, 131, i32, x, b
  10: 0541500d08c0f200       load     r8_r9_r10_r11, du0, 133, i32, xyzw, a
  18: 0529900d08c01200       load     r5, du0, 137, i32, x, a
  20: 0531d00d03c41200       load     r6, du0, 61, lsl 1, i32, x, a
  28: 0561f00d01c87200       load     r12_r13_r14, du0, 31, lsl 2, i32, xyz, a
  30: 0581000d02c87200       load     r16_r17_r18, du0, 32, lsl 2, i32, xyz, a
  38: 05a1040d00c0f200       load     r20_r21_r22_r23, du2, 0, i32, xyzw, a
  40: 05c1140d00c8f200       load     r24_r25_r26_r27, du2, 1, lsl 2, i32, xyzw, a
  48: 3800                   wait     a
  4a: 0539100d02c81200       load     r7, du0, 33, lsl 2, i32, x, a
  52: 05e1b00d07c01200       load     r28, du0, 123, i32, x, a
  5a: 05e9f00d07c01200       load     r29, du0, 127, i32, x, a
  62: 0501240d00c9f200       load     r32_r33_r34_r35, du2, 2, lsl 2, i32, xyzw, a
  6a: c500803d0080f000       mov      du4, dr0
  72: c510c03d00803000       mov      u6, r2
  7a: 3801                   wait     b
  7c: c520e03d00803000       mov      u7, r4
  84: c540003d0180f000       mov      du8, dr8
  8c: 7e01940a8000           mov      r0, $r10
  92: 7e05960a8000           mov      r1, $r11
  98: c500403d0180f000       mov      du10, dr0
  a0: be810a442900           u32_to_f $r0, $r10, rte
  a6: 8a058082               rcp      $r1, $r0
  aa: ba01c02a2830           ffma     $r0, ^r0.neg, $r1, 1.0
  b0: ba81c02228820200       ffma     $r0, ^r0, $r1, $r1
  b8: 8201c0022cc0200c       csel     $r0, ^r0, ^r0, ^r0, ^r1, feq
  c0: e205feff7f4f           ldimm    $r1, 1333788670
  c6: 1a81c0222800           fmul     r0, ^r0, $r1
  cc: be8108002c00           f_to_u32 $r0, ^r0, rtz
  d2: 9e09940668000000       imul     $r2, $r10.sx, $r0.sx
  da: 8e0900486c000000       isub     $r2, 0, ^r2.sx
  e2: 1e0b80422c000000       imul     dr2, $r0, ^r2
  ea: 0e01c0666c000000       iadd     r0, ^r0.sx, ^r3.sx
  f2: c500803d01803000       mov      u12, r0
  fa: 0e0100486d000000       isub     r0, 0, ^r10.sx
 102: c500a03d01803000       mov      u13, r0
 10a: c528c03d01803000       mov      u14, r5
 112: be810aa42800           u32_to_f $r0, $r5, rte
 118: 8a098082               rcp      $r2, $r0
 11c: ba01c04a2830           ffma     $r0, ^r0.neg, $r2, 1.0
 122: ba81c04228840200       ffma     $r0, ^r0, $r2, $r2
 12a: 8201c0022cc0400c       csel     $r0, ^r0, ^r0, ^r0, ^r2, feq
 132: 1a81c0222800           fmul     r0, ^r0, $r1
 138: be8108002c00           f_to_u32 $r0, ^r0, rtz
 13e: 9e098a0668000000       imul     $r2, $r5.sx, $r0.sx
 146: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 14e: 1e0b80422c000000       imul     dr2, $r0, ^r2
 156: 0e01c0666c000000       iadd     r0, ^r0.sx, ^r3.sx
 15e: c500e03d01803000       mov      u15, r0
 166: 0e0100a86c000000       isub     r0, 0, ^r5.sx
 16e: c500003d02803000       mov      u16, r0
 176: be810a642900           u32_to_f $r0, $r11, rte
 17c: 8a098082               rcp      $r2, $r0
 180: ba01c04a2830           ffma     $r0, ^r0.neg, $r2, 1.0
 186: ba81c04228840200       ffma     $r0, ^r0, $r2, $r2
 18e: 8201c0022cc0400c       csel     $r0, ^r0, ^r0, ^r0, ^r2, feq
 196: 1a81c0222800           fmul     r0, ^r0, $r1
 19c: be8108002c00           f_to_u32 $r0, ^r0, rtz
 1a2: 9e09960668000000       imul     $r2, $r11.sx, $r0.sx
 1aa: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 1b2: 1e0b80422c000000       imul     dr2, $r0, ^r2
 1ba: 0e01c0666c000000       iadd     r0, ^r0.sx, ^r3.sx
 1c2: c500203d02803000       mov      u17, r0
 1ca: 0e0100686d000000       isub     r0, 0, ^r11.sx
 1d2: c500403d02803000       mov      u18, r0
 1da: c530603d02803000       mov      u19, r6
 1e2: 8e013fc06c000000       iadd     $r0, 63, ^r6.sx
 1ea: ae8100002c060000       shr      $r0, ^r0, 6
 1f2: c500803d02803000       mov      u20, r0
 1fa: be890a042800           u32_to_f $r2, $r0, rte
 200: 8a0d8482               rcp      $r3, $r2
 204: ba09c46a2830           ffma     $r2, ^r2.neg, $r3, 1.0
 20a: ba89c46228860200       ffma     $r2, ^r2, $r3, $r3
 212: 8209c4422cc4600c       csel     $r2, ^r2, ^r2, ^r2, ^r3, feq
 21a: 1a85c4222c00           fmul     r1, ^r2, ^r1
 220: be8508202c00           f_to_u32 $r1, ^r1, rtz
 226: 9e09802668000000       imul     $r2, $r0.sx, $r1.sx
 22e: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 236: 1e0b82422c000000       imul     dr2, $r1, ^r2
 23e: 0e05c2666c000000       iadd     r1, ^r1.sx, ^r3.sx
 246: c508a03d02803000       mov      u21, r1
 24e: 0e0100086c000000       isub     r0, 0, ^r0.sx
 256: c500c03d02803000       mov      u22, r0
 25e: 7e01980a8000           mov      r0, $r12
 264: 7e05da0a8000           mov      r1, ^r13
 26a: c500e03d0280f000       mov      du23, dr0
 272: c570203d03803000       mov      u25, r14
 27a: 7e01a00a8000           mov      r0, $r16
 280: 7e05e20a8000           mov      r1, ^r17
 286: c500403d0380f000       mov      du26, dr0
 28e: c590803d03803000       mov      u28, r18
 296: 2e8100002e020000       shr      r0, ^r16, 2
 29e: c500a03d03803000       mov      u29, r0
 2a6: e201efbeadde           ldimm    $r0, 3735928559
 2ac: 1200d8022c010110       csel     r0l, ^r12, ^r0, 1, 0, ieq
 2b4: c500c03d03801000       mov      u30l, r0l
 2bc: c5a0003d0480f000       mov      du32, dr20
 2c4: c5c0403d0480f000       mov      du34, dr24
 2cc: 3800                   wait     a
 2ce: c538803d04803000       mov      u36, r7
 2d6: c5e0a03d04803000       mov      u37, r28
 2de: c5e8c03d04803000       mov      u38, r29
 2e6: c500003d0581f000       mov      du40, dr32
 2ee: c5e0403d05803000       mov      u42, r28
 2f6: c5e8603d05803000       mov      u43, r29
 2fe: c500803d0581f000       mov      du44, dr32
 306: c5e0c03d05803000       mov      u46, r28
 30e: c5e8e03d05803000       mov      u47, r29
 316: c500003d0681f000       mov      du48, dr32
 31e: c5e0403d06803000       mov      u50, r28
 326: c5e8603d06803000       mov      u51, r29
 32e: c500803d0681f000       mov      du52, dr32
 336: c5e0c03d06803000       mov      u54, r28
 33e: c5e8e03d06803000       mov      u55, r29
 346: c500003d0781f000       mov      du56, dr32
 34e: c5e0403d07803000       mov      u58, r28
 356: c5e8603d07803000       mov      u59, r29
 35e: c500803d0781f000       mov      du60, dr32
 366: c5e0c03d07803000       mov      u62, r28
 36e: c5e8e03d07803000       mov      u63, r29
 376: c500003d0881f000       mov      du64, dr32
 37e: c5e0403d08803000       mov      u66, r28
 386: c5e8603d08803000       mov      u67, r29
 38e: c500803d0881f000       mov      M=4096 N=512 K=14336  A=229376 blocks (33.0 MB)  B=29360.1 KB  D=8388.6 KB
dispatch: workgroups=(64,8,1)  (512 total)
tile: BM=64 BN=64 BK=32 WM=32 WN=32 WMITER=2 TM=4 TN=2 WARP=32 BLOCK_SIZE=128
outer_iters=10  inner_batch=16  total_dispatches=160  total=1.961171498s  per-dispatch=12.257321ms  4905.6 GFLOPS
du68, dr32
 396: c5e0c03d08803000       mov      u70, r28
 39e: c5e8e03d08803000       mov      u71, r29
 3a6: c500003d0981f000       mov      du72, dr32
 3ae: c5e0403d09803000       mov      u74, r28
 3b6: c5e8603d09803000       mov      u75, r29
 3be: c500803d0981f000       mov      du76, dr32
 3c6: c5e0c03d09803000       mov      u78, r28
 3ce: c5e8e03d09803000       mov      u79, r29
 3d6: c500003d0a81f000       mov      du80, dr32
 3de: c5e0403d0a803000       mov      u82, r28
 3e6: c5e8603d0a803000       mov      u83, r29
 3ee: c500803d0a81f000       mov      du84, dr32
 3f6: c5e0c03d0a803000       mov      u86, r28
 3fe: c5e8e03d0a803000       mov      u87, r29
 406: c500003d0b81f000       mov      du88, dr32
 40e: c5e0403d0b803000       mov      u90, r28
 416: c5e8603d0b803000       mov      u91, r29
 41e: c500803d0b81f000       mov      du92, dr32
 426: c5e0c03d0b803000       mov      u94, r28
 42e: c5e8e03d0b803000       mov      u95, r29
 436: c500003d0c81f000       mov      du96, dr32
 43e: c5e0403d0c803000       mov      u98, r28
 446: c5e8603d0c803000       mov      u99, r29
 44e: c500803d0c81f000       mov      du100, dr32
 456: c5e0c03d0c803000       mov      u102, r28
 45e: c5e8e03d0c803000       mov      u103, r29
 466: c500003d0d81f000       mov      du104, dr32
 46e: c5e0403d0d803000       mov      u106, r28
 476: c5e8603d0d803000       mov      u107, r29
 47e: c500803d0d81f000       mov      du108, dr32
 486: c5e0c03d0d803000       mov      u110, r28
 48e: c5e8e03d0d803000       mov      u111, r29
 496: c500003d0e81f000       mov      du112, dr32
 49e: c5e0403d0e803000       mov      u114, r28
 4a6: c5e8603d0e803000       mov      u115, r29
 4ae: c500803d0e81f000       mov      du116, dr32
 4b6: c5e0c03d0e803000       mov      u118, r28
 4be: c5e8e03d0e803000       mov      u119, r29
 4c6: c500003d0f81f000       mov      du120, dr32
 4ce: c5e0403d0f803000       mov      u122, r28
 4d6: c5e8603d0f803000       mov      u123, r29
 4de: c500803d0f81f000       mov      du124, dr32
 4e6: c5e0c03d0f803000       mov      u126, r28
 4ee: c5e8e03d0f803000       mov      u127, r29
 4f6: c500003d0081f001       mov      du128, dr32
 4fe: c5e0403d00803001       mov      u130, r28
 506: c5e8603d00803001       mov      u131, r29
 50e: c500803d0081f001       mov      du132, dr32
 516: c5e0c03d00803001       mov      u134, r28
 51e: c5e8e03d00803001       mov      u135, r29
 526: c500003d0181f001       mov      du136, dr32
 52e: c5e0403d01803001       mov      u138, r28
 536: c5e8603d01803001       mov      u139, r29
 53e: c500803d0181f001       mov      du140, dr32
 546: c5e0c03d01803001       mov      u142, r28
 54e: c5e8e03d01803001       mov      u143, r29
 556: c500003d0281f001       mov      du144, dr32
 55e: c5e0403d02803001       mov      u146, r28
 566: c5e8603d02803001       mov      u147, r29
 56e: c500803d0281f001       mov      du148, dr32
 576: c5e0c03d02803001       mov      u150, r28
 57e: c5e8e03d02803001       mov      u151, r29
 586: c500003d0381f001       mov      du152, dr32
 58e: c5e0403d03803001       mov      u154, r28
 596: c5e8603d03803001       mov      u155, r29
 59e: c500803d0381f001       mov      du156, dr32
 5a6: c5e0c03d03803001       mov      u158, r28
 5ae: c5e8e03d03803001       mov      u159, r29
 5b6: c500003d0481f001       mov      du160, dr32
 5be: c5e0403d04803001       mov      u162, r28
 5c6: c5e8603d04803001       mov      u163, r29
 5ce: c500803d0481f001       mov      du164, dr32
 5d6: 8800                   stop
