diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb20_struct {
  tint_symbol_1 : array<vec4<f32>, 20u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb20_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb18_struct {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb4_struct {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct;

struct cb1_struct {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 14u> = array<vec4<f32>, 14u>(vec4<f32>(0.0f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1p-148f, -0.25f, -0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> oMask : array<u32, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_3[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_1 = dpdxCoarse(v1.xyz.xy);
      r0 = vec4<f32>(r0.xy, v_1.xy);
      let v_2 = dpdyCoarse(v1.xyz.xy);
      r1 = vec4<f32>(v_2.xy, r1.zw);
      r1.z = bitcast<f32>(firstTrailingBit(bitcast<u32>(cb2_2.tint_symbol_1[19u].x)));
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_3 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
      r2 = vec4<f32>(v_3.xyz, r2.w);
      if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
        r1.w = icb0[bitcast<i32>(r1.z)].x;
        let v_4 = (r1.xy * icb0[bitcast<i32>(r1.w)].zz);
        r3 = vec4<f32>(v_4.xy, r3.zw);
        let v_5 = fma(icb0[bitcast<i32>(r1.w)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_5.xy, r3.zw);
        let v_6 = (r3.xy + v1.xyz.xy);
        r3 = vec4<f32>(v_6.xy, r3.zw);
        r1.w = textureSample(t0, s0, r3.xyxx.xy).w;
        r1.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
        r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
        r3.x = bitcast<f32>((bitcast<u32>(r1.w) & 1u));
      } else {
        r3.x = 0.0f;
      }
      if ((bitcast<u32>(r0.y) != 0u)) {
        r0.y = bitcast<f32>((1i + bitcast<i32>(icb0[bitcast<i32>(r1.z)].x)));
        let v_7 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r4 = vec4<f32>(v_7.xy, r4.zw);
        let v_8 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r4.xy);
        r4 = vec4<f32>(v_8.xy, r4.zw);
        let v_9 = (r4.xy + v1.xyz.xy);
        r4 = vec4<f32>(v_9.xy, r4.zw);
        r0.y = textureSample(t0, s0, r4.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 2i));
        let v_10 = bitcast<u32>(r0.y);
        let v_11 = r1.w;
        r3.x = select(r3.x, v_11, (v_10 != 0u));
      }
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_12 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].zz);
        r2 = vec4<f32>(v_12.x, r2.yz, v_12.y);
        let v_13 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].yy, r0.zw, r2.xw);
        r2 = vec4<f32>(v_13.x, r2.yz, v_13.y);
        let v_14 = (r2.xw + v1.xyz.xy);
        r2 = vec4<f32>(v_14.x, r2.yz, v_14.y);
        r0.y = textureSample(t0, s0, r2.xwxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 4i));
        let v_15 = bitcast<u32>(r0.y);
        let v_16 = r1.w;
        r3.x = select(r3.x, v_16, (v_15 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_17 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].zz);
        r2 = vec4<f32>(v_17.xy, r2.zw);
        let v_18 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_18.xy, r2.zw);
        let v_19 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_19.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 8i));
        let v_20 = bitcast<u32>(r0.y);
        let v_21 = r1.w;
        r3.x = select(r3.x, v_21, (v_20 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_22 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
        r2 = vec4<f32>(v_22.xy, r2.zw);
        let v_23 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_23.xy, r2.zw);
        let v_24 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_24.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 16i));
        let v_25 = bitcast<u32>(r0.y);
        let v_26 = r1.w;
        r3.x = select(r3.x, v_26, (v_25 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_27 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].zz);
        r4 = vec4<f32>(v_27.xy, r4.zw);
        let v_28 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].yy, r0.zw, r4.xy);
        r4 = vec4<f32>(v_28.xy, r4.zw);
        let v_29 = (r4.xy + v1.xyz.xy);
        r4 = vec4<f32>(v_29.xy, r4.zw);
        r0.y = textureSample(t0, s0, r4.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 32i));
        let v_30 = bitcast<u32>(r0.y);
        let v_31 = r1.w;
        r3.x = select(r3.x, v_31, (v_30 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_32 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
        r2 = vec4<f32>(v_32.xy, r2.zw);
        let v_33 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_33.xy, r2.zw);
        let v_34 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_34.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 64i));
        let v_35 = bitcast<u32>(r0.y);
        let v_36 = r1.w;
        r3.x = select(r3.x, v_36, (v_35 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_37 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
        r2 = vec4<f32>(v_37.xy, r2.zw);
        let v_38 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_38.xy, r2.zw);
        let v_39 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_39.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 128i));
        let v_40 = bitcast<u32>(r0.y);
        let v_41 = r1.w;
        r3.x = select(r3.x, v_41, (v_40 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 8i));
        let v_42 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r2 = vec4<f32>(v_42.xy, r2.zw);
        let v_43 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_43.xy, r2.zw);
        let v_44 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_44.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 256i));
        let v_45 = bitcast<u32>(r0.y);
        let v_46 = r1.w;
        r3.x = select(r3.x, v_46, (v_45 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 9i));
        let v_47 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r4 = vec4<f32>(v_47.xy, r4.zw);
        let v_48 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r4.xy);
        r4 = vec4<f32>(v_48.xy, r4.zw);
        let v_49 = (r4.xy + v1.xyz.xy);
        r4 = vec4<f32>(v_49.xy, r4.zw);
        r0.y = textureSample(t0, s0, r4.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 512i));
        let v_50 = bitcast<u32>(r0.y);
        let v_51 = r1.w;
        r3.x = select(r3.x, v_51, (v_50 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_52 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
        r2 = vec4<f32>(v_52.xy, r2.zw);
        let v_53 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_53.xy, r2.zw);
        let v_54 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_54.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 1024i));
        let v_55 = bitcast<u32>(r0.y);
        let v_56 = r1.w;
        r3.x = select(r3.x, v_56, (v_55 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_57 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
        r2 = vec4<f32>(v_57.xy, r2.zw);
        let v_58 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_58.xy, r2.zw);
        let v_59 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_59.xy, r2.zw);
        r0.y = textureSample(t0, s0, r2.xyxx.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 2048i));
        let v_60 = bitcast<u32>(r0.y);
        let v_61 = r1.w;
        r3.x = select(r3.x, v_61, (v_60 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_62 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].zz);
        r1 = vec4<f32>(r1.xy, v_62.xy);
        let v_63 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].yy, r0.zw, r1.zw);
        r1 = vec4<f32>(r1.xy, v_63.xy);
        let v_64 = (r1.zw + v1.xyz.xy);
        r1 = vec4<f32>(r1.xy, v_64.xy);
        r0.y = textureSample(t0, s0, r1.zwzz.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.z = bitcast<f32>((bitcast<i32>(r3.x) + 4096i));
        let v_65 = bitcast<u32>(r0.y);
        let v_66 = r1.z;
        r3.x = select(r3.x, v_66, (v_65 != 0u));
      }
      r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
      if ((bitcast<u32>(r0.y) != 0u)) {
        let v_67 = (r1.xy * vec2<f32>(-0.4375f));
        r1 = vec4<f32>(v_67.xy, r1.zw);
        let v_68 = fma(r0.zw, vec2<f32>(0.4375f), r1.xy);
        let v_69 = r0;
        r0 = vec4<f32>(v_69.x, v_68.xy, v_69.w);
        let v_70 = (r0.yz + v1.xyz.xy);
        let v_71 = r0;
        r0 = vec4<f32>(v_71.x, v_70.xy, v_71.w);
        r0.y = textureSample(t0, s0, r0.yzyy.xy).w;
        r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r0.z = bitcast<f32>((bitcast<i32>(r3.x) + 8192i));
        let v_72 = bitcast<u32>(r0.y);
        let v_73 = r0.z;
        r3.x = select(r3.x, v_73, (v_72 != 0u));
      }
    } else {
      r3.x = bitcast<f32>(v.tint_symbol_7[2i].x);
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) == 0i)));
    v_74((bitcast<u32>(r0.y) != 0u));
  } else {
    let v_75 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
    let v_76 = r0;
    r0 = vec4<f32>(v_76.x, v_75.xy, v_76.w);
    let v_77 = (r0.yz * vec2<f32>(0.5f));
    let v_78 = r0;
    r0 = vec4<f32>(v_78.x, v_77.xy, v_78.w);
    r0.y = textureSample(t3, s3, r0.yzyy.xy).w;
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.z = 1.0f;
    } else {
      r0.w = textureSample(t0, s0, v1.xyz.xyxx.xy).w;
      r0.z = (r0.w * cb2_2.tint_symbol_1[15u].x);
    }
    r0.y = clamp(fma(r0.yyyy, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).y, 0.0f, 1.0f);
    r0.y = (r0.y * r0.z);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.y)));
    v_74((bitcast<u32>(r0.y) != 0u));
    r3.x = bitcast<f32>(v.tint_symbol_7[2i].x);
  }
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  let v_79 = textureSample(t4, s4, v1.xyz.xyxx.xy).xy;
  let v_80 = r0;
  r0 = vec4<f32>(v_80.x, v_79.xy, v_80.w);
  let v_81 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_82 = r0;
  r0 = vec4<f32>(v_82.x, v_81.xy, v_82.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r2.x = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_83 = (r0.yz * r2.xx);
  let v_84 = r0;
  r0 = vec4<f32>(v_84.x, v_83.xy, v_84.w);
  let v_85 = (r0.zzz * v6.xyz);
  r2 = vec4<f32>(v_85.xyz, r2.w);
  let v_86 = fma(r0.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_86.xyz, r2.w);
  let v_87 = fma(r0.www, v2.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_87.xyz);
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_88 = (r0.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_88.xyz);
  let v_89 = textureSample(t5, s5, v1.xyz.xyxx.xy).xyz;
  r4 = vec4<f32>(v_89.xyz, r4.w);
  let v_90 = (r4.yx * r4.yx);
  let v_91 = r0;
  r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_92 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_93 = r4;
  r4 = vec4<f32>(v_93.x, v_92.x, v_93.z, v_92.y);
  r5.x = fma(r2.w, 0.5f, 0.5f);
  r5.y = fma(r5.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.x = (r5.x + 0.30000001192092895508f);
  r4.w = (r4.w * r5.x);
  let v_94 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  let v_95 = r5;
  r5 = vec4<f32>(v_94.x, v_95.y, v_94.y, v_95.w);
  let v_96 = clamp(((r5.xxzx * vec4<f32>(4.0f, 0.0f, 4.0f, 0.0f))).xz, vec2<f32>(), vec2<f32>(1.0f));
  let v_97 = r5;
  r5 = vec4<f32>(v_96.x, v_97.y, v_96.y, v_97.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.x) == 0i)));
  let v_98 = (r1.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r6 = vec4<f32>(v_98.xyz, r6.w);
  let v_99 = (r5.xxx * r6.xyz);
  r6 = vec4<f32>(v_99.xyz, r6.w);
  let v_100 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r5.www) & bitcast<vec3<u32>>(r6.xyz)));
  r6 = vec4<f32>(v_100.xyz, r6.w);
  let v_101 = -(r6.xyzx);
  let v_102 = (r1.xyz + v_101.xyz);
  r1 = vec4<f32>(v_102.xyz, r1.w);
  let v_103 = (r5.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_104 = r5;
  r5 = vec4<f32>(v_103.x, v_104.y, v_103.y, v_104.w);
  let v_105 = fma(r0.yz, cb10_10.tint_symbol_5[3u].zw, r5.xz);
  let v_106 = r0;
  r0 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
  let v_107 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r1 = vec4<f32>(v_107.xyz, r1.w);
  r5.x = bitcast<f32>((bitcast<u32>(r4.x) & 1008981770u));
  r4.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r4.x) != 0u));
  r0.z = (r0.z + r4.x);
  r0.z = fma(cb13_13.tint_symbol_4[4u].z, r0.z, r5.x);
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_108 = (r4.xxx * v4.xyz);
  r5 = vec4<f32>(v_108.x, r5.y, v_108.yz);
  let v_109 = dot(r5.xzw, r2.yzw);
  r4.x = clamp(vec4<f32>(v_109, v_109, v_109, v_109).x, 0.0f, 1.0f);
  r4.x = ((-(r4.xxxx)).x + 1.0f);
  r4.x = fma(r4.x, 0.40000000596046447754f, 0.5f);
  r0.w = fma(r0.w, r2.x, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r2.x = clamp(v7.x, 0.0f, 1.0f);
  r2.x = (r2.x * r4.x);
  r0.w = (r0.w * r2.x);
  let v_110 = (r1.xyz * r0.www);
  r6 = vec4<f32>(v_110.xyz, r6.w);
  let v_111 = fma(r6.xyz, cb13_13.tint_symbol_4[4u].yyy, r1.xyz);
  r1 = vec4<f32>(v_111.xyz, r1.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_112 = (r0.www * v6.xyz);
  r6 = vec4<f32>(v_112.xyz, r6.w);
  r7 = (v1.xyz.xyxy * cb10_10.tint_symbol_5[2u]);
  r7 = (r7 * vec4<f32>(0.5f));
  let v_113 = textureSample(t3, s3, r7.xyxx.xy).xw;
  r7 = vec4<f32>(v_113.xy, r7.zw);
  let v_114 = textureSample(t3, s3, r7.zwzz.xy).xy;
  r7 = vec4<f32>(r7.xy, v_114.xy);
  let v_115 = fma(r7.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r7 = vec4<f32>(r7.xy, v_115.xy);
  let v_116 = (r7.zw * vec2<f32>(0.10000000149011611938f));
  r7 = vec4<f32>(r7.xy, v_116.xy);
  let v_117 = fma(v2.xyz, r7.zzz, r6.xyz);
  r8 = vec4<f32>(v_117.xyz, r8.w);
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_118 = (r0.www * r8.xyz);
  r8 = vec4<f32>(v_118.xyz, r8.w);
  r0.w = dot(r5.xzw, r8.xyz);
  r2.x = dot(cb1_1.tint_symbol[14u].xyz, r8.xyz);
  let v_119 = fma(v2.xyz, r7.www, r6.xyz);
  r6 = vec4<f32>(v_119.xyz, r6.w);
  r4.x = dot(r6.xyz, r6.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_120 = (r4.xxx * r6.xyz);
  r6 = vec4<f32>(v_120.xyz, r6.w);
  r4.x = dot(r5.xzw, r6.xyz);
  r5.x = dot(cb1_1.tint_symbol[14u].xyz, r6.xyz);
  r5.z = fma((-(r0.wwww)).z, r0.w, 1.0f);
  r5.w = fma((-(r2.xxxx)).w, r2.x, 1.0f);
  let v_121 = sqrt(r5.zw);
  r5 = vec4<f32>(r5.xy, v_121.xy);
  r0.w = (r0.w * r2.x);
  let v_122 = -(r0.wwww);
  r0.w = fma(r5.z, r5.w, v_122.w);
  r2.x = fma((-(r4.xxxx)).x, r4.x, 1.0f);
  r2.x = sqrt(r2.x);
  r5.z = fma((-(r5.xxxx)).z, r5.x, 1.0f);
  r5.z = sqrt(r5.z);
  r4.x = (r4.x * r5.x);
  let v_123 = -(r4.xxxx);
  r2.x = fma(r2.x, r5.z, v_123.x);
  let v_124 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_125 = r5;
  r5 = vec4<f32>(v_124.x, v_125.y, v_124.y, v_125.w);
  r0.w = log2(abs(r0.wwww).w);
  r0.w = (r0.w * r5.x);
  r0.w = exp2(r0.w);
  r2.x = log2(abs(r2.xxxx).x);
  r2.x = (r2.x * r5.z);
  r2.x = exp2(r2.x);
  r4.x = (r2.x * cb10_10.tint_symbol_5[0u].y);
  r0.w = fma(r0.w, cb10_10.tint_symbol_5[0u].x, r4.x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.z < 0.03125f)));
  r4.z = bitcast<f32>((bitcast<u32>(r4.x) & 1065353216u));
  r0.w = (r7.x * r0.w);
  let v_126 = bitcast<u32>(r4.x);
  r0.w = select(1.0f, r0.w, (v_126 != 0u));
  r0.z = (r0.w * r0.z);
  let v_127 = (r2.xxx * cb10_10.tint_symbol_5[1u].xyz);
  r5 = vec4<f32>(v_127.x, r5.y, v_127.yz);
  let v_128 = (r4.zzz * r5.xzw);
  r5 = vec4<f32>(v_128.x, r5.y, v_128.yz);
  let v_129 = fma(r5.xzw, vec3<f32>(0.5f), r1.xyz);
  o0 = vec4<f32>(v_129.xyz, o0.w);
  r0.w = clamp(fma(r7.yyyy, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  r1.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r1.y = (r1.x * r4.w);
  r3.z = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_130 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_130.xyz, o1.w);
  r0.y = (r0.y * 0.001953125f);
  r1.x = fma(r5.y, r4.y, cb3_3.tint_symbol_2[45u].w);
  let v_131 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_131.xy, r1.zw);
  let v_132 = sqrt(r1.xy);
  o3 = vec4<f32>(v_132.xy, o3.zw);
  let v_133 = sqrt(r0.zy);
  o2 = vec4<f32>(v_133.xy, o2.zw);
  let v_134 = r3;
  let v_135 = vec2<f32>(1.0f, bitcast<f32>(v.tint_symbol_7[2i].x));
  r3 = vec4<f32>(v_134.x, v_135.x, v_134.z, v_135.y);
  let v_136 = bitcast<vec2<u32>>(r0.xx);
  let v_137 = r3.yx;
  let v_138 = select(r3.zw, v_137, (v_136 != vec2<u32>()));
  r0 = vec4<f32>(v_138.xy, r0.zw);
  o0.w = r0.x;
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
  oMask[0u] = bitcast<u32>(r0.y);
}

fn v_74(v_139 : bool) {
  if (v_139) {
    discard;
    return;
  }
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(sample_mask)
  oMask : u32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_9(o0, o1, o2, o3, oMask[0u]);
}
