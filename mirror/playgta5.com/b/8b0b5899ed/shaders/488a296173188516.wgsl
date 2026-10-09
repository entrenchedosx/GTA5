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

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 18u> = array<vec4<f32>, 18u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(0x1p-148f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.25f, -0.25f, 0.0f), vec4<f32>(0.0f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 7u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = max(v0.xy, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol_1[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_6((bitcast<u32>(r0.x) != 0u));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_3[6u].w)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_7 = dpdx(v1.xyz.xy);
    let v_8 = r0;
    r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
    let v_9 = dpdy(v1.xyz.xy);
    r1 = vec4<f32>(v_9.xy, r1.zw);
    r0.w = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol_1[19u].x) << 16u));
    let v_10 = bitcast<u32>(r0.w);
    let v_11 = r0.w;
    r1.z = select(cb2_2.tint_symbol_1[19u].x, v_11, (v_10 != 0u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.z) << 8u));
    let v_12 = bitcast<u32>(r1.w);
    let v_13 = r1.w;
    r1.z = select(r1.z, v_13, (v_12 != 0u));
    let v_14 = (bitcast<vec2<u32>>(r0.ww) != vec2<u32>());
    let v_15 = vec2<f32>(bitcast<f32>(v.tint_symbol_7[2i].x), bitcast<f32>(v.tint_symbol_7[3i].x));
    let v_16 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_7[4i].x), bitcast<f32>(v.tint_symbol_7[5i].x)), v_15, v_14);
    r2 = vec4<f32>(v_16.xy, r2.zw);
    let v_17 = bitcast<u32>(r1.w);
    let v_18 = r2.y;
    r0.w = select(r2.x, v_18, (v_17 != 0u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.z) << 4u));
    let v_19 = bitcast<u32>(r1.w);
    let v_20 = r1.w;
    r1.z = select(r1.z, v_20, (v_19 != 0u));
    r2.x = bitcast<f32>((bitcast<i32>(r0.w) + -4i));
    let v_21 = bitcast<u32>(r1.w);
    let v_22 = r2.x;
    r0.w = select(r0.w, v_22, (v_21 != 0u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.z) << 2u));
    let v_23 = bitcast<u32>(r1.w);
    let v_24 = r1.w;
    r1.z = select(r1.z, v_24, (v_23 != 0u));
    r2.x = bitcast<f32>((bitcast<i32>(r0.w) + -2i));
    let v_25 = bitcast<u32>(r1.w);
    let v_26 = r2.x;
    r0.w = select(r0.w, v_26, (v_25 != 0u));
    r1.z = bitcast<f32>((bitcast<i32>(r1.z) << 1u));
    r1.w = bitcast<f32>((bitcast<i32>(r0.w) + -1i));
    let v_27 = bitcast<u32>(r1.z);
    let v_28 = r1.w;
    r0.w = select(r0.w, v_28, (v_27 != 0u));
    r0.w = bitcast<f32>((bitcast<i32>(r0.w) + -1i));
    let v_29 = bitcast<u32>(cb2_2.tint_symbol_1[19u].x);
    let v_30 = r0.w;
    r0.w = select(bitcast<f32>(v.tint_symbol_7[6i].x), v_30, (v_29 != 0u));
    let v_31 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(1u, 2u, 3u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
    r2 = vec4<f32>(v_31.xyz, r2.w);
    if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_32 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].zz);
      r3 = vec4<f32>(v_32.xy, r3.zw);
      let v_33 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].yy, r0.yz, r3.xy);
      r1 = vec4<f32>(r1.xy, v_33.xy);
      let v_34 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_34.xy);
      r3 = textureSample(t0, s0, r1.zwzz.xy);
      r1.z = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1u));
    } else {
      r1.z = 0.0f;
    }
    if ((bitcast<u32>(r2.x) != 0u)) {
      r1.w = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x) + 1i));
      let v_35 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 4i))].zz);
      r2 = vec4<f32>(v_35.x, r2.yz, v_35.y);
      let v_36 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 4i))].yy, r0.yz, r2.xw);
      r2 = vec4<f32>(v_36.x, r2.yz, v_36.y);
      let v_37 = (r2.xw + v1.xyz.xy);
      r2 = vec4<f32>(v_37.x, r2.yz, v_37.y);
      r3 = textureSample(t0, s0, r2.xwxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 2i));
      let v_38 = bitcast<u32>(r1.w);
      let v_39 = r2.x;
      r1.z = select(r1.z, v_39, (v_38 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_40 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 6i))].zz);
      r2 = vec4<f32>(v_40.xy, r2.zw);
      let v_41 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 6i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_41.xy, r2.zw);
      let v_42 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_42.xy, r2.zw);
      r3 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 4i));
      let v_43 = bitcast<u32>(r1.w);
      let v_44 = r2.x;
      r1.z = select(r1.z, v_44, (v_43 != 0u));
    }
    if ((bitcast<u32>(r2.z) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_45 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 7i))].zz);
      r2 = vec4<f32>(v_45.xy, r2.zw);
      let v_46 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 7i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_46.xy, r2.zw);
      let v_47 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_47.xy, r2.zw);
      r2 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r2.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 8i));
      let v_48 = bitcast<u32>(r1.w);
      let v_49 = r2.x;
      r1.z = select(r1.z, v_49, (v_48 != 0u));
    }
    r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(4u, 5u, 6u, 7u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_50 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 8i))].zz);
      r3 = vec4<f32>(v_50.xy, r3.zw);
      let v_51 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 8i))].yy, r0.yz, r3.xy);
      r3 = vec4<f32>(v_51.xy, r3.zw);
      let v_52 = (r3.xy + v1.xyz.xy);
      r3 = vec4<f32>(v_52.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 16i));
      let v_53 = bitcast<u32>(r1.w);
      let v_54 = r2.x;
      r1.z = select(r1.z, v_54, (v_53 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_55 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 9i))].zz);
      r2 = vec4<f32>(v_55.xy, r2.zw);
      let v_56 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 9i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_56.xy, r2.zw);
      let v_57 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_57.xy, r2.zw);
      r3 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 32i));
      let v_58 = bitcast<u32>(r1.w);
      let v_59 = r2.x;
      r1.z = select(r1.z, v_59, (v_58 != 0u));
    }
    if ((bitcast<u32>(r2.z) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_60 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 10i))].zz);
      r2 = vec4<f32>(v_60.xy, r2.zw);
      let v_61 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 10i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_61.xy, r2.zw);
      let v_62 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_62.xy, r2.zw);
      r3 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 64i));
      let v_63 = bitcast<u32>(r1.w);
      let v_64 = r2.x;
      r1.z = select(r1.z, v_64, (v_63 != 0u));
    }
    if ((bitcast<u32>(r2.w) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_65 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 11i))].zz);
      r2 = vec4<f32>(v_65.xy, r2.zw);
      let v_66 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 11i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_66.xy, r2.zw);
      let v_67 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_67.xy, r2.zw);
      r2 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r2.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 128i));
      let v_68 = bitcast<u32>(r1.w);
      let v_69 = r2.x;
      r1.z = select(r1.z, v_69, (v_68 != 0u));
    }
    r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(8u, 9u, 10u, 11u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r1.w = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x) + 8i));
      let v_70 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 4i))].zz);
      r3 = vec4<f32>(v_70.xy, r3.zw);
      let v_71 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 4i))].yy, r0.yz, r3.xy);
      r3 = vec4<f32>(v_71.xy, r3.zw);
      let v_72 = (r3.xy + v1.xyz.xy);
      r3 = vec4<f32>(v_72.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 256i));
      let v_73 = bitcast<u32>(r1.w);
      let v_74 = r2.x;
      r1.z = select(r1.z, v_74, (v_73 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      r1.w = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x) + 9i));
      let v_75 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 4i))].zz);
      r2 = vec4<f32>(v_75.xy, r2.zw);
      let v_76 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 4i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_76.xy, r2.zw);
      let v_77 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_77.xy, r2.zw);
      r3 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 512i));
      let v_78 = bitcast<u32>(r1.w);
      let v_79 = r2.x;
      r1.z = select(r1.z, v_79, (v_78 != 0u));
    }
    if ((bitcast<u32>(r2.z) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_80 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 14i))].zz);
      r2 = vec4<f32>(v_80.xy, r2.zw);
      let v_81 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 14i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_81.xy, r2.zw);
      let v_82 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_82.xy, r2.zw);
      r3 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 1024i));
      let v_83 = bitcast<u32>(r1.w);
      let v_84 = r2.x;
      r1.z = select(r1.z, v_84, (v_83 != 0u));
    }
    if ((bitcast<u32>(r2.w) != 0u)) {
      r1.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_85 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.w) + 15i))].zz);
      r2 = vec4<f32>(v_85.xy, r2.zw);
      let v_86 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 15i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_86.xy, r2.zw);
      let v_87 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_87.xy, r2.zw);
      r2 = textureSample(t0, s0, r2.xyxx.xy);
      r1.w = (r2.w * cb2_2.tint_symbol_1[15u].x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.w)));
      r2.x = bitcast<f32>((bitcast<i32>(r1.z) + 2048i));
      let v_88 = bitcast<u32>(r1.w);
      let v_89 = r2.x;
      r1.z = select(r1.z, v_89, (v_88 != 0u));
    }
    let v_90 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<u32>(12u, 13u) < bitcast<vec2<u32>>(cb2_2.tint_symbol_1[19u].xx))));
    r2 = vec4<f32>(v_90.xy, r2.zw);
    if ((bitcast<u32>(r2.x) != 0u)) {
      r0.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_91 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.w) + 16i))].zz);
      let v_92 = r2;
      r2 = vec4<f32>(v_91.x, v_92.y, v_91.y, v_92.w);
      let v_93 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 16i))].yy, r0.yz, r2.xz);
      let v_94 = r2;
      r2 = vec4<f32>(v_93.x, v_94.y, v_93.y, v_94.w);
      let v_95 = (r2.xz + v1.xyz.xy);
      let v_96 = r2;
      r2 = vec4<f32>(v_95.x, v_96.y, v_95.y, v_96.w);
      r3 = textureSample(t0, s0, r2.xzxx.xy);
      r0.w = (r3.w * cb2_2.tint_symbol_1[15u].x);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.w)));
      r1.w = bitcast<f32>((bitcast<i32>(r1.z) + 4096i));
      let v_97 = bitcast<u32>(r0.w);
      let v_98 = r1.w;
      r1.z = select(r1.z, v_98, (v_97 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      let v_99 = (r1.xy * vec2<f32>(-0.4375f));
      r1 = vec4<f32>(v_99.xy, r1.zw);
      let v_100 = fma(r0.yz, vec2<f32>(0.4375f), r1.xy);
      let v_101 = r0;
      r0 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
      let v_102 = (r0.yz + v1.xyz.xy);
      let v_103 = r0;
      r0 = vec4<f32>(v_103.x, v_102.xy, v_103.w);
      r2 = textureSample(t0, s0, r0.yzyy.xy);
      r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
      r0.z = bitcast<f32>((bitcast<i32>(r1.z) + 8192i));
      let v_104 = bitcast<u32>(r0.y);
      let v_105 = r0.z;
      r1.z = select(r1.z, v_105, (v_104 != 0u));
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) == 0i)));
    v_6((bitcast<u32>(r0.y) != 0u));
  } else {
    let v_106 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
    let v_107 = r0;
    r0 = vec4<f32>(v_107.x, v_106.xy, v_107.w);
    let v_108 = (r0.yz * vec2<f32>(0.5f));
    let v_109 = r0;
    r0 = vec4<f32>(v_109.x, v_108.xy, v_109.w);
    r1 = textureSample(t3, s3, r0.yzyy.xy);
    r2 = textureSample(t0, s0, v1.xyz.xyxx.xy);
    r0.y = (r2.w * cb2_2.tint_symbol_1[15u].x);
    r0.z = clamp(fma(r1.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).z, 0.0f, 1.0f);
    r0.y = (r0.z * r0.y);
    r1 = textureSample(t4, s4, v7.xy.xyxx.xy);
    r0.y = (r0.y * r1.x);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.y)));
    v_6((bitcast<u32>(r0.y) != 0u));
  }
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r2 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  let v_110 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_111 = r0;
  r0 = vec4<f32>(v_111.x, v_110.xy, v_111.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r2.x = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_112 = (r0.yz * r2.xx);
  let v_113 = r0;
  r0 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  let v_114 = (r0.zzz * v6.xyz);
  r2 = vec4<f32>(v_114.xyz, r2.w);
  let v_115 = fma(r0.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_115.xyz, r2.w);
  let v_116 = fma(r0.www, v2.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_116.xyz);
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_117 = (r0.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_117.xyz);
  r3 = textureSample(t6, s6, v1.xyz.xyxx.xy);
  let v_118 = (r3.yx * r3.yx);
  let v_119 = r0;
  r0 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r4 = textureSample(t4, s4, v7.xy.xyxx.xy);
  r1.w = (r1.w * r4.x);
  let v_120 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_121 = r3;
  r3 = vec4<f32>(v_121.x, v_120.x, v_121.z, v_120.y);
  r4.x = fma(r2.w, 0.5f, 0.5f);
  r4.y = fma(r4.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.x = (r4.x + 0.30000001192092895508f);
  r3.w = (r3.w * r4.x);
  let v_122 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  let v_123 = r4;
  r4 = vec4<f32>(v_122.x, v_123.y, v_122.y, v_123.w);
  let v_124 = clamp(((r4.xxzx * vec4<f32>(4.0f, 0.0f, 4.0f, 0.0f))).xz, vec2<f32>(), vec2<f32>(1.0f));
  let v_125 = r4;
  r4 = vec4<f32>(v_124.x, v_125.y, v_124.y, v_125.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) == 0i)));
  let v_126 = (r1.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  let v_127 = (r4.xxx * r5.xyz);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  let v_128 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_128.xyz, r5.w);
  let v_129 = -(r5.xyzx);
  let v_130 = (r1.xyz + v_129.xyz);
  r1 = vec4<f32>(v_130.xyz, r1.w);
  let v_131 = (r4.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_132 = r4;
  r4 = vec4<f32>(v_131.x, v_132.y, v_131.y, v_132.w);
  let v_133 = fma(r0.yz, cb10_10.tint_symbol_5[3u].zw, r4.xz);
  let v_134 = r0;
  r0 = vec4<f32>(v_134.x, v_133.xy, v_134.w);
  let v_135 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r1 = vec4<f32>(v_135.xyz, r1.w);
  r4.x = bitcast<f32>((bitcast<u32>(r3.x) & 1008981770u));
  r3.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r3.x) != 0u));
  r0.z = (r0.z + r3.x);
  r0.z = fma(cb13_13.tint_symbol_4[4u].z, r0.z, r4.x);
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_136 = (r3.xxx * v4.xyz);
  r4 = vec4<f32>(v_136.x, r4.y, v_136.yz);
  let v_137 = dot(r4.xzw, r2.yzw);
  r3.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = fma(r3.x, 0.40000000596046447754f, 0.5f);
  r0.w = fma(r0.w, r2.x, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r2.x = clamp(v8.x, 0.0f, 1.0f);
  r2.x = (r2.x * r3.x);
  r0.w = (r0.w * r2.x);
  let v_138 = (r1.xyz * r0.www);
  r5 = vec4<f32>(v_138.xyz, r5.w);
  let v_139 = fma(r5.xyz, cb13_13.tint_symbol_4[4u].yyy, r1.xyz);
  r1 = vec4<f32>(v_139.xyz, r1.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_140 = (r0.www * v6.xyz);
  r5 = vec4<f32>(v_140.xyz, r5.w);
  r6 = (v1.xyz.xyxy * cb10_10.tint_symbol_5[2u]);
  r6 = (r6 * vec4<f32>(0.5f));
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  let v_141 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r6 = vec4<f32>(v_141.xy, r6.zw);
  let v_142 = (r6.xy * vec2<f32>(0.10000000149011611938f));
  r6 = vec4<f32>(v_142.xy, r6.zw);
  let v_143 = fma(v2.xyz, r6.xxx, r5.xyz);
  r6 = vec4<f32>(v_143.x, r6.y, v_143.yz);
  r0.w = dot(r6.xzw, r6.xzw);
  r0.w = inverseSqrt(r0.w);
  let v_144 = (r0.www * r6.xzw);
  r6 = vec4<f32>(v_144.x, r6.y, v_144.yz);
  r0.w = dot(r4.xzw, r6.xzw);
  r2.x = dot(cb1_1.tint_symbol[14u].xyz, r6.xzw);
  let v_145 = fma(v2.xyz, r6.yyy, r5.xyz);
  r5 = vec4<f32>(v_145.xyz, r5.w);
  r3.x = dot(r5.xyz, r5.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_146 = (r3.xxx * r5.xyz);
  r5 = vec4<f32>(v_146.xyz, r5.w);
  r3.x = dot(r4.xzw, r5.xyz);
  r4.x = dot(cb1_1.tint_symbol[14u].xyz, r5.xyz);
  r4.z = fma((-(r0.wwww)).z, r0.w, 1.0f);
  r4.w = fma((-(r2.xxxx)).w, r2.x, 1.0f);
  let v_147 = sqrt(r4.zw);
  r4 = vec4<f32>(r4.xy, v_147.xy);
  r0.w = (r0.w * r2.x);
  let v_148 = -(r0.wwww);
  r0.w = fma(r4.z, r4.w, v_148.w);
  r2.x = fma((-(r3.xxxx)).x, r3.x, 1.0f);
  r2.x = sqrt(r2.x);
  r4.z = fma((-(r4.xxxx)).z, r4.x, 1.0f);
  r4.z = sqrt(r4.z);
  r3.x = (r3.x * r4.x);
  let v_149 = -(r3.xxxx);
  r2.x = fma(r2.x, r4.z, v_149.x);
  let v_150 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_151 = r4;
  r4 = vec4<f32>(v_150.x, v_151.y, v_150.y, v_151.w);
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
  let v_152 = bitcast<u32>(r3.x);
  r0.w = select(1.0f, r0.w, (v_152 != 0u));
  r0.z = (r0.w * r0.z);
  let v_153 = (r2.xxx * cb10_10.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_153.x, r4.y, v_153.yz);
  let v_154 = (r3.zzz * r4.xzw);
  r4 = vec4<f32>(v_154.x, r4.y, v_154.yz);
  let v_155 = fma(r4.xzw, vec3<f32>(0.5f), r1.xyz);
  o0 = vec4<f32>(v_155.xyz, o0.w);
  r0.w = clamp(fma(r7.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  r1.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r1.y = (r1.x * r3.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_156 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_156.xyz, o1.w);
  r0.y = (r0.y * 0.001953125f);
  r1.x = fma(r4.y, r3.y, cb3_3.tint_symbol_2[45u].w);
  let v_157 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_157.xy, r1.zw);
  let v_158 = sqrt(r1.xy);
  o3 = vec4<f32>(v_158.xy, o3.zw);
  let v_159 = sqrt(r0.zy);
  o2 = vec4<f32>(v_159.xy, o2.zw);
  let v_160 = bitcast<u32>(r0.x);
  o0.w = select(r0.w, 1.0f, (v_160 != 0u));
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_6(v_161 : bool) {
  if (v_161) {
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
fn main(@builtin(position) v_162 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v_162, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_9(o0, o1, o2, o3);
}
