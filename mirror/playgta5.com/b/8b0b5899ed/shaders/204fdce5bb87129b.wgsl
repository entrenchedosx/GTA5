diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb20_struct {
  tint_symbol : array<vec4<f32>, 20u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb20_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 14u> = array<vec4<f32>, 14u>(vec4<f32>(0.0f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1p-148f, -0.25f, -0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 7u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].w) != 0i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_1 = dpdx(v1.xy);
    let v_2 = r1;
    r1 = vec4<f32>(v_1.x, v_2.y, v_1.y, v_2.w);
    let v_3 = dpdy(v1.xy);
    r2 = vec4<f32>(v_3.xy, r2.zw);
    r1.w = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol[19u].x) << 16u));
    let v_4 = bitcast<u32>(r1.w);
    let v_5 = r1.w;
    r2.z = select(cb2_2.tint_symbol[19u].x, v_5, (v_4 != 0u));
    r2.w = bitcast<f32>((bitcast<i32>(r2.z) << 8u));
    let v_6 = bitcast<u32>(r2.w);
    let v_7 = r2.w;
    r2.z = select(r2.z, v_7, (v_6 != 0u));
    let v_8 = (bitcast<vec2<u32>>(r1.ww) != vec2<u32>());
    let v_9 = vec2<f32>(bitcast<f32>(v.tint_symbol_4[2i].x), bitcast<f32>(v.tint_symbol_4[3i].x));
    let v_10 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_4[4i].x), bitcast<f32>(v.tint_symbol_4[5i].x)), v_9, v_8);
    r3 = vec4<f32>(v_10.xy, r3.zw);
    let v_11 = bitcast<u32>(r2.w);
    let v_12 = r3.y;
    r1.w = select(r3.x, v_12, (v_11 != 0u));
    r2.w = bitcast<f32>((bitcast<i32>(r2.z) << 4u));
    let v_13 = bitcast<u32>(r2.w);
    let v_14 = r2.w;
    r2.z = select(r2.z, v_14, (v_13 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r1.w) + -4i));
    let v_15 = bitcast<u32>(r2.w);
    let v_16 = r3.x;
    r1.w = select(r1.w, v_16, (v_15 != 0u));
    r2.w = bitcast<f32>((bitcast<i32>(r2.z) << 2u));
    let v_17 = bitcast<u32>(r2.w);
    let v_18 = r2.w;
    r2.z = select(r2.z, v_18, (v_17 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r1.w) + -2i));
    let v_19 = bitcast<u32>(r2.w);
    let v_20 = r3.x;
    r1.w = select(r1.w, v_20, (v_19 != 0u));
    r2.z = bitcast<f32>((bitcast<i32>(r2.z) << 1u));
    r2.w = bitcast<f32>((bitcast<i32>(r1.w) + -1i));
    let v_21 = bitcast<u32>(r2.z);
    let v_22 = r2.w;
    r1.w = select(r1.w, v_22, (v_21 != 0u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.w) + -1i));
    let v_23 = bitcast<u32>(cb2_2.tint_symbol[19u].x);
    let v_24 = r1.w;
    r1.w = select(bitcast<f32>(v.tint_symbol_4[6i].x), v_24, (v_23 != 0u));
    let v_25 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
    r3 = vec4<f32>(v_25.xyz, r3.w);
    if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
      r2.z = icb0[bitcast<i32>(r1.w)].x;
      let v_26 = (r2.xy * icb0[bitcast<i32>(r2.z)].zz);
      r4 = vec4<f32>(v_26.xy, r4.zw);
      let v_27 = fma(icb0[bitcast<i32>(r2.z)].yy, r1.xz, r4.xy);
      r2 = vec4<f32>(r2.xy, v_27.xy);
      let v_28 = (r2.zw + v1.xy);
      r2 = vec4<f32>(r2.xy, v_28.xy);
      r4 = textureSample(t0, s0, r2.zwzz.xy);
      r2.z = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r2.z = dot(r2.zz, cb2_2.tint_symbol[15u].xx);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r2.z)));
      r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1u));
    } else {
      r2.z = 0.0f;
    }
    if ((bitcast<u32>(r1.y) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.w)].x) + 1i));
      let v_29 = (r2.xy * icb0[bitcast<i32>(r1.y)].zz);
      r4 = vec4<f32>(v_29.xy, r4.zw);
      let v_30 = fma(icb0[bitcast<i32>(r1.y)].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_30.xy, r4.zw);
      let v_31 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_31.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 2i));
      let v_32 = bitcast<u32>(r1.y);
      let v_33 = r2.w;
      r2.z = select(r2.z, v_33, (v_32 != 0u));
    }
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_34 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 2i))].zz);
      r3 = vec4<f32>(v_34.x, r3.yz, v_34.y);
      let v_35 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 2i))].yy, r1.xz, r3.xw);
      r3 = vec4<f32>(v_35.x, r3.yz, v_35.y);
      let v_36 = (r3.xw + v1.xy);
      r3 = vec4<f32>(v_36.x, r3.yz, v_36.y);
      r4 = textureSample(t0, s0, r3.xwxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 4i));
      let v_37 = bitcast<u32>(r1.y);
      let v_38 = r2.w;
      r2.z = select(r2.z, v_38, (v_37 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_39 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 3i))].zz);
      r3 = vec4<f32>(v_39.xy, r3.zw);
      let v_40 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 3i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_40.xy, r3.zw);
      let v_41 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_41.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 8i));
      let v_42 = bitcast<u32>(r1.y);
      let v_43 = r2.w;
      r2.z = select(r2.z, v_43, (v_42 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_44 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r3 = vec4<f32>(v_44.xy, r3.zw);
      let v_45 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_45.xy, r3.zw);
      let v_46 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_46.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r3.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 16i));
      let v_47 = bitcast<u32>(r1.y);
      let v_48 = r2.w;
      r2.z = select(r2.z, v_48, (v_47 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_49 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 5i))].zz);
      r4 = vec4<f32>(v_49.xy, r4.zw);
      let v_50 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 5i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_50.xy, r4.zw);
      let v_51 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_51.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 32i));
      let v_52 = bitcast<u32>(r1.y);
      let v_53 = r2.w;
      r2.z = select(r2.z, v_53, (v_52 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_54 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].zz);
      r3 = vec4<f32>(v_54.xy, r3.zw);
      let v_55 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_55.xy, r3.zw);
      let v_56 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_56.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 64i));
      let v_57 = bitcast<u32>(r1.y);
      let v_58 = r2.w;
      r2.z = select(r2.z, v_58, (v_57 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_59 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].zz);
      r3 = vec4<f32>(v_59.xy, r3.zw);
      let v_60 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_60.xy, r3.zw);
      let v_61 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_61.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 128i));
      let v_62 = bitcast<u32>(r1.y);
      let v_63 = r2.w;
      r2.z = select(r2.z, v_63, (v_62 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.w)].x) + 8i));
      let v_64 = (r2.xy * icb0[bitcast<i32>(r1.y)].zz);
      r3 = vec4<f32>(v_64.xy, r3.zw);
      let v_65 = fma(icb0[bitcast<i32>(r1.y)].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_65.xy, r3.zw);
      let v_66 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_66.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r3.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 256i));
      let v_67 = bitcast<u32>(r1.y);
      let v_68 = r2.w;
      r2.z = select(r2.z, v_68, (v_67 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r1.w)].x) + 9i));
      let v_69 = (r2.xy * icb0[bitcast<i32>(r1.y)].zz);
      r4 = vec4<f32>(v_69.xy, r4.zw);
      let v_70 = fma(icb0[bitcast<i32>(r1.y)].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_70.xy, r4.zw);
      let v_71 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_71.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 512i));
      let v_72 = bitcast<u32>(r1.y);
      let v_73 = r2.w;
      r2.z = select(r2.z, v_73, (v_72 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_74 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].zz);
      r3 = vec4<f32>(v_74.xy, r3.zw);
      let v_75 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_75.xy, r3.zw);
      let v_76 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_76.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 1024i));
      let v_77 = bitcast<u32>(r1.y);
      let v_78 = r2.w;
      r2.z = select(r2.z, v_78, (v_77 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_79 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].zz);
      r3 = vec4<f32>(v_79.xy, r3.zw);
      let v_80 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_80.xy, r3.zw);
      let v_81 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_81.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 2048i));
      let v_82 = bitcast<u32>(r1.y);
      let v_83 = r2.w;
      r2.z = select(r2.z, v_83, (v_82 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = icb0[bitcast<i32>(r1.w)].x;
      let v_84 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 12i))].zz);
      r3 = vec4<f32>(v_84.xy, r3.zw);
      let v_85 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 12i))].yy, r1.xz, r3.xy);
      let v_86 = r1;
      r1 = vec4<f32>(v_86.x, v_85.x, v_86.z, v_85.y);
      let v_87 = (r1.yw + v1.xy);
      let v_88 = r1;
      r1 = vec4<f32>(v_88.x, v_87.x, v_88.z, v_87.y);
      r3 = textureSample(t0, s0, r1.ywyy.xy);
      r1.y = (r3.w * cb12_12.tint_symbol_3[2u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.y)));
      r1.w = bitcast<f32>((bitcast<i32>(r2.z) + 4096i));
      let v_89 = bitcast<u32>(r1.y);
      let v_90 = r1.w;
      r2.z = select(r2.z, v_90, (v_89 != 0u));
    }
    r1.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
    if ((bitcast<u32>(r1.y) != 0u)) {
      let v_91 = (r2.xy * vec2<f32>(-0.4375f));
      let v_92 = r1;
      r1 = vec4<f32>(v_92.x, v_91.x, v_92.z, v_91.y);
      let v_93 = fma(r1.xz, vec2<f32>(0.4375f), r1.yw);
      r1 = vec4<f32>(v_93.xy, r1.zw);
      let v_94 = (r1.xy + v1.xy);
      r1 = vec4<f32>(v_94.xy, r1.zw);
      r1 = textureSample(t0, s0, r1.xyxx.xy);
      r1.x = (r1.w * cb12_12.tint_symbol_3[2u].z);
      r1.x = dot(r1.xx, cb2_2.tint_symbol[15u].xx);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r1.x)));
      r1.y = bitcast<f32>((bitcast<i32>(r2.z) + 8192i));
      let v_95 = bitcast<u32>(r1.x);
      let v_96 = r1.y;
      r2.z = select(r2.z, v_96, (v_95 != 0u));
    }
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
    v_97((bitcast<u32>(r1.x) != 0u));
    o0.w = 1.0f;
  } else {
    r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[2u].z);
    r0.w = dot(r1.xx, r0.ww);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w >= r0.w)));
    v_97((bitcast<u32>(r1.x) != 0u));
    o0.w = r0.w;
  }
  let v_98 = (v1.zz * cb2_2.tint_symbol[15u].zy);
  r1 = vec4<f32>(v_98.xy, r1.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r1.z = (r0.w * r1.y);
  let v_99 = (r1.xz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_99.xy, r1.zw);
  let v_100 = sqrt(r1.xy);
  o3 = vec4<f32>(v_100.xy, o3.zw);
  r0.w = ((-(v3.wwww)).w + 1.0f);
  r1 = vec4<f32>(((v3.www * v3.xyz)).xyz, r1.w);
  let v_101 = fma(r0.xyz, r0.www, r1.xyz);
  o0 = vec4<f32>(v_101.xyz, o0.w);
  o1 = vec4<f32>(v2.xyz.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v1.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[3u].x * 0.49607843160629272461f);
}

fn v_97(v_102 : bool) {
  if (v_102) {
    discard;
    return;
  }
}

struct tint_symbol_6 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3);
}
