diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 8u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_3[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_1 = dpdx(v1.xyz.xy);
      r0 = vec4<f32>(r0.xy, v_1.xy);
      let v_2 = dpdy(v1.xyz.xy);
      r1 = vec4<f32>(v_2.xy, r1.zw);
      r1.z = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol_1[19u].x) << 16u));
      let v_3 = bitcast<u32>(r1.z);
      let v_4 = r1.z;
      r1.w = select(cb2_2.tint_symbol_1[19u].x, v_4, (v_3 != 0u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 8u));
      let v_5 = bitcast<u32>(r2.x);
      let v_6 = r2.x;
      r1.w = select(r1.w, v_6, (v_5 != 0u));
      let v_7 = (bitcast<vec2<u32>>(r1.zz) != vec2<u32>());
      let v_8 = vec2<f32>(bitcast<f32>(v.tint_symbol_7[2i].x), bitcast<f32>(v.tint_symbol_7[3i].x));
      let v_9 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_7[4i].x), bitcast<f32>(v.tint_symbol_7[5i].x)), v_8, v_7);
      let v_10 = r2;
      r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
      let v_11 = bitcast<u32>(r2.x);
      let v_12 = r2.z;
      r1.z = select(r2.y, v_12, (v_11 != 0u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 4u));
      r2.y = bitcast<f32>((bitcast<i32>(r1.z) + -4i));
      let v_13 = bitcast<vec2<u32>>(r2.xx);
      let v_14 = r2.yx;
      let v_15 = select(r1.zw, v_14, (v_13 != vec2<u32>()));
      r1 = vec4<f32>(r1.xy, v_15.xy);
      r2.x = bitcast<f32>((bitcast<i32>(r1.w) << 2u));
      r2.y = bitcast<f32>((bitcast<i32>(r1.z) + -2i));
      let v_16 = bitcast<vec2<u32>>(r2.xx);
      let v_17 = r2.yx;
      let v_18 = select(r1.zw, v_17, (v_16 != vec2<u32>()));
      r1 = vec4<f32>(r1.xy, v_18.xy);
      r1.w = bitcast<f32>((bitcast<i32>(r1.w) << 1u));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_19 = bitcast<u32>(r1.w);
      let v_20 = r2.x;
      r1.z = select(r1.z, v_20, (v_19 != 0u));
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + -1i));
      let v_21 = bitcast<u32>(cb2_2.tint_symbol_1[19u].x);
      let v_22 = r1.z;
      r1.z = select(bitcast<f32>(v.tint_symbol_7[6i].x), v_22, (v_21 != 0u));
      let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
      r2 = vec4<f32>(v_23.xyz, r2.w);
      if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
        r1.w = icb0[bitcast<i32>(r1.z)].x;
        let v_24 = (r1.xy * icb0[bitcast<i32>(r1.w)].zz);
        r3 = vec4<f32>(v_24.xy, r3.zw);
        let v_25 = fma(icb0[bitcast<i32>(r1.w)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_25.xy, r3.zw);
        let v_26 = (r3.xy + v1.xyz.xy);
        r3 = vec4<f32>(v_26.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
        r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1u));
      } else {
        r1.w = 0.0f;
      }
      if ((bitcast<u32>(r0.y) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 1i));
        let v_27 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r3 = vec4<f32>(v_27.xy, r3.zw);
        let v_28 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_28.xy, r3.zw);
        let v_29 = (r3.xy + v1.xyz.xy);
        r3 = vec4<f32>(v_29.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.w = bitcast<f32>((bitcast<i32>(r1.w) + 2i));
        let v_30 = bitcast<u32>(r0.y);
        let v_31 = r2.w;
        r1.w = select(r1.w, v_31, (v_30 != 0u));
      }
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_32 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].zz);
        r2 = vec4<f32>(v_32.x, r2.yz, v_32.y);
        let v_33 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].yy, r0.zw, r2.xw);
        r2 = vec4<f32>(v_33.x, r2.yz, v_33.y);
        let v_34 = (r2.xw + v1.xyz.xy);
        r2 = vec4<f32>(v_34.x, r2.yz, v_34.y);
        r3 = textureSample(t0, s0, r2.xwxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 4i));
        let v_35 = bitcast<u32>(r0.y);
        let v_36 = r2.x;
        r1.w = select(r1.w, v_36, (v_35 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_37 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].zz);
        r2 = vec4<f32>(v_37.xy, r2.zw);
        let v_38 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_38.xy, r2.zw);
        let v_39 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_39.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 8i));
        let v_40 = bitcast<u32>(r0.y);
        let v_41 = r2.x;
        r1.w = select(r1.w, v_41, (v_40 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_42 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
        r2 = vec4<f32>(v_42.xy, r2.zw);
        let v_43 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_43.xy, r2.zw);
        let v_44 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_44.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 16i));
        let v_45 = bitcast<u32>(r0.y);
        let v_46 = r2.x;
        r1.w = select(r1.w, v_46, (v_45 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_47 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].zz);
        r3 = vec4<f32>(v_47.xy, r3.zw);
        let v_48 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_48.xy, r3.zw);
        let v_49 = (r3.xy + v1.xyz.xy);
        r3 = vec4<f32>(v_49.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 32i));
        let v_50 = bitcast<u32>(r0.y);
        let v_51 = r2.x;
        r1.w = select(r1.w, v_51, (v_50 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_52 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
        r2 = vec4<f32>(v_52.xy, r2.zw);
        let v_53 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_53.xy, r2.zw);
        let v_54 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_54.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 64i));
        let v_55 = bitcast<u32>(r0.y);
        let v_56 = r2.x;
        r1.w = select(r1.w, v_56, (v_55 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_57 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
        r2 = vec4<f32>(v_57.xy, r2.zw);
        let v_58 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_58.xy, r2.zw);
        let v_59 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_59.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 128i));
        let v_60 = bitcast<u32>(r0.y);
        let v_61 = r2.x;
        r1.w = select(r1.w, v_61, (v_60 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 8i));
        let v_62 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r2 = vec4<f32>(v_62.xy, r2.zw);
        let v_63 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_63.xy, r2.zw);
        let v_64 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_64.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 256i));
        let v_65 = bitcast<u32>(r0.y);
        let v_66 = r2.x;
        r1.w = select(r1.w, v_66, (v_65 != 0u));
      }
      r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.z)].x) + 9i));
        let v_67 = (r1.xy * icb0[bitcast<i32>(r0.y)].zz);
        r3 = vec4<f32>(v_67.xy, r3.zw);
        let v_68 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.zw, r3.xy);
        r3 = vec4<f32>(v_68.xy, r3.zw);
        let v_69 = (r3.xy + v1.xyz.xy);
        r3 = vec4<f32>(v_69.xy, r3.zw);
        r3 = textureSample(t0, s0, r3.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 512i));
        let v_70 = bitcast<u32>(r0.y);
        let v_71 = r2.x;
        r1.w = select(r1.w, v_71, (v_70 != 0u));
      }
      if ((bitcast<u32>(r2.y) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_72 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
        r2 = vec4<f32>(v_72.xy, r2.zw);
        let v_73 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_73.xy, r2.zw);
        let v_74 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_74.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 1024i));
        let v_75 = bitcast<u32>(r0.y);
        let v_76 = r2.x;
        r1.w = select(r1.w, v_76, (v_75 != 0u));
      }
      if ((bitcast<u32>(r2.z) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_77 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
        r2 = vec4<f32>(v_77.xy, r2.zw);
        let v_78 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_78.xy, r2.zw);
        let v_79 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_79.xy, r2.zw);
        r3 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r3.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r2.x = bitcast<f32>((bitcast<i32>(r1.w) + 2048i));
        let v_80 = bitcast<u32>(r0.y);
        let v_81 = r2.x;
        r1.w = select(r1.w, v_81, (v_80 != 0u));
      }
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.y = icb0[bitcast<i32>(r1.z)].x;
        let v_82 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].zz);
        r2 = vec4<f32>(v_82.xy, r2.zw);
        let v_83 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].yy, r0.zw, r2.xy);
        r2 = vec4<f32>(v_83.xy, r2.zw);
        let v_84 = (r2.xy + v1.xyz.xy);
        r2 = vec4<f32>(v_84.xy, r2.zw);
        r2 = textureSample(t0, s0, r2.xyxx.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r1.z = bitcast<f32>((bitcast<i32>(r1.w) + 4096i));
        let v_85 = bitcast<u32>(r0.y);
        let v_86 = r1.z;
        r1.w = select(r1.w, v_86, (v_85 != 0u));
      }
      r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol_1[19u].x))));
      if ((bitcast<u32>(r0.y) != 0u)) {
        let v_87 = (r1.xy * vec2<f32>(-0.4375f));
        r1 = vec4<f32>(v_87.xy, r1.zw);
        let v_88 = fma(r0.zw, vec2<f32>(0.4375f), r1.xy);
        let v_89 = r0;
        r0 = vec4<f32>(v_89.x, v_88.xy, v_89.w);
        let v_90 = (r0.yz + v1.xyz.xy);
        let v_91 = r0;
        r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
        r2 = textureSample(t0, s0, r0.yzyy.xy);
        r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
        r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
        r0.z = bitcast<f32>((bitcast<i32>(r1.w) + 8192i));
        let v_92 = bitcast<u32>(r0.y);
        let v_93 = r0.z;
        r1.w = select(r1.w, v_93, (v_92 != 0u));
      }
    } else {
      r1.w = bitcast<f32>(v.tint_symbol_7[7i].x);
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
    v_94((bitcast<u32>(r0.y) != 0u));
  } else {
    let v_95 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
    let v_96 = r0;
    r0 = vec4<f32>(v_96.x, v_95.xy, v_96.w);
    let v_97 = (r0.yz * vec2<f32>(0.5f));
    let v_98 = r0;
    r0 = vec4<f32>(v_98.x, v_97.xy, v_98.w);
    r1 = textureSample(t3, s3, r0.yzyy.xy);
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.y = 1.0f;
    } else {
      r2 = textureSample(t0, s0, v1.xyz.xyxx.xy);
      r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
    }
    r0.z = clamp(fma(r1.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).z, 0.0f, 1.0f);
    r0.y = (r0.z * r0.y);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.y)));
    v_94((bitcast<u32>(r0.y) != 0u));
  }
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r2 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_99 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_100 = r0;
  r0 = vec4<f32>(v_100.x, v_99.xy, v_100.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r2.x = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_101 = (r0.yz * r2.xx);
  let v_102 = r0;
  r0 = vec4<f32>(v_102.x, v_101.xy, v_102.w);
  let v_103 = (r0.zzz * v6.xyz);
  r2 = vec4<f32>(v_103.xyz, r2.w);
  let v_104 = fma(r0.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_104.xyz, r2.w);
  let v_105 = fma(r0.www, v2.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_105.xyz);
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_106 = (r0.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_106.xyz);
  r3 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  let v_107 = (r3.yx * r3.yx);
  let v_108 = r0;
  r0 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_109 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_110 = r3;
  r3 = vec4<f32>(v_110.x, v_109.x, v_110.z, v_109.y);
  r4.x = fma(r2.w, 0.5f, 0.5f);
  r4.y = fma(r4.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.x = (r4.x + 0.30000001192092895508f);
  r3.w = (r3.w * r4.x);
  let v_111 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  let v_112 = r4;
  r4 = vec4<f32>(v_111.x, v_112.y, v_111.y, v_112.w);
  let v_113 = clamp(((r4.xxzx * vec4<f32>(4.0f, 0.0f, 4.0f, 0.0f))).xz, vec2<f32>(), vec2<f32>(1.0f));
  let v_114 = r4;
  r4 = vec4<f32>(v_113.x, v_114.y, v_113.y, v_114.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) == 0i)));
  let v_115 = (r1.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_115.xyz, r5.w);
  let v_116 = (r4.xxx * r5.xyz);
  r5 = vec4<f32>(v_116.xyz, r5.w);
  let v_117 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_117.xyz, r5.w);
  let v_118 = -(r5.xyzx);
  let v_119 = (r1.xyz + v_118.xyz);
  r1 = vec4<f32>(v_119.xyz, r1.w);
  let v_120 = (r4.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_121 = r4;
  r4 = vec4<f32>(v_120.x, v_121.y, v_120.y, v_121.w);
  let v_122 = fma(r0.yz, cb10_10.tint_symbol_5[3u].zw, r4.xz);
  let v_123 = r0;
  r0 = vec4<f32>(v_123.x, v_122.xy, v_123.w);
  let v_124 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r1 = vec4<f32>(v_124.xyz, r1.w);
  r4.x = bitcast<f32>((bitcast<u32>(r3.x) & 1008981770u));
  r3.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r3.x) != 0u));
  r0.z = (r0.z + r3.x);
  r0.z = fma(cb13_13.tint_symbol_4[4u].z, r0.z, r4.x);
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_125 = (r3.xxx * v4.xyz);
  r4 = vec4<f32>(v_125.x, r4.y, v_125.yz);
  let v_126 = dot(r4.xzw, r2.yzw);
  r3.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = fma(r3.x, 0.40000000596046447754f, 0.5f);
  r0.w = fma(r0.w, r2.x, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r2.x = clamp(v7.x, 0.0f, 1.0f);
  r2.x = (r2.x * r3.x);
  r0.w = (r0.w * r2.x);
  let v_127 = (r1.xyz * r0.www);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  let v_128 = fma(r5.xyz, cb13_13.tint_symbol_4[4u].yyy, r1.xyz);
  r1 = vec4<f32>(v_128.xyz, r1.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_129 = (r0.www * v6.xyz);
  r5 = vec4<f32>(v_129.xyz, r5.w);
  r6 = (v1.xyz.xyxy * cb10_10.tint_symbol_5[2u]);
  r6 = (r6 * vec4<f32>(0.5f));
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  let v_130 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r6 = vec4<f32>(v_130.xy, r6.zw);
  let v_131 = (r6.xy * vec2<f32>(0.10000000149011611938f));
  r6 = vec4<f32>(v_131.xy, r6.zw);
  let v_132 = fma(v2.xyz, r6.xxx, r5.xyz);
  r6 = vec4<f32>(v_132.x, r6.y, v_132.yz);
  r0.w = dot(r6.xzw, r6.xzw);
  r0.w = inverseSqrt(r0.w);
  let v_133 = (r0.www * r6.xzw);
  r6 = vec4<f32>(v_133.x, r6.y, v_133.yz);
  r0.w = dot(r4.xzw, r6.xzw);
  r2.x = dot(cb1_1.tint_symbol[14u].xyz, r6.xzw);
  let v_134 = fma(v2.xyz, r6.yyy, r5.xyz);
  r5 = vec4<f32>(v_134.xyz, r5.w);
  r3.x = dot(r5.xyz, r5.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_135 = (r3.xxx * r5.xyz);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  r3.x = dot(r4.xzw, r5.xyz);
  r4.x = dot(cb1_1.tint_symbol[14u].xyz, r5.xyz);
  r4.z = fma((-(r0.wwww)).z, r0.w, 1.0f);
  r4.w = fma((-(r2.xxxx)).w, r2.x, 1.0f);
  let v_136 = sqrt(r4.zw);
  r4 = vec4<f32>(r4.xy, v_136.xy);
  r0.w = (r0.w * r2.x);
  let v_137 = -(r0.wwww);
  r0.w = fma(r4.z, r4.w, v_137.w);
  r2.x = fma((-(r3.xxxx)).x, r3.x, 1.0f);
  r2.x = sqrt(r2.x);
  r4.z = fma((-(r4.xxxx)).z, r4.x, 1.0f);
  r4.z = sqrt(r4.z);
  r3.x = (r3.x * r4.x);
  let v_138 = -(r3.xxxx);
  r2.x = fma(r2.x, r4.z, v_138.x);
  let v_139 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_140 = r4;
  r4 = vec4<f32>(v_139.x, v_140.y, v_139.y, v_140.w);
  r0.w = log2(abs(r0.wwww).w);
  r0.w = (r0.w * r4.x);
  r0.w = exp2(r0.w);
  r2.x = log2(abs(r2.xxxx).x);
  r2.x = (r2.x * r4.z);
  r2.x = exp2(r2.x);
  r3.x = (r2.x * cb10_10.tint_symbol_5[0u].y);
  r0.w = fma(r0.w, cb10_10.tint_symbol_5[0u].x, r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.03125f)));
  r3.z = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r0.w = (r7.x * r0.w);
  let v_141 = bitcast<u32>(r3.x);
  r0.w = select(1.0f, r0.w, (v_141 != 0u));
  r0.z = (r0.w * r0.z);
  let v_142 = (r2.xxx * cb10_10.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_142.x, r4.y, v_142.yz);
  let v_143 = (r3.zzz * r4.xzw);
  r4 = vec4<f32>(v_143.x, r4.y, v_143.yz);
  let v_144 = fma(r4.xzw, vec3<f32>(0.5f), r1.xyz);
  o0 = vec4<f32>(v_144.xyz, o0.w);
  r0.w = clamp(fma(r7.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  r1.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r1.y = (r1.x * r3.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_145 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_145.xyz, o1.w);
  r0.y = (r0.y * 0.001953125f);
  r1.x = fma(r4.y, r3.y, cb3_3.tint_symbol_2[45u].w);
  let v_146 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_146.xy, r1.zw);
  let v_147 = sqrt(r1.xy);
  o3 = vec4<f32>(v_147.xy, o3.zw);
  let v_148 = sqrt(r0.zy);
  o2 = vec4<f32>(v_148.xy, o2.zw);
  let v_149 = bitcast<u32>(r0.x);
  o0.w = select(r0.w, 1.0f, (v_149 != 0u));
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_94(v_150 : bool) {
  if (v_150) {
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
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_9(o0, o1, o2, o3);
}
