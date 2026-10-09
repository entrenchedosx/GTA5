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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  let v_1 = r0;
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r1.w = v1.w;
  r1 = (r1 * v1);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_2 = dpdx(v2.xy);
    let v_3 = r0;
    r0 = vec4<f32>(v_2.x, v_3.y, v_2.y, v_3.w);
    let v_4 = dpdy(v2.xy);
    r2 = vec4<f32>(v_4.xy, r2.zw);
    r2.z = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol[19u].x) << 16u));
    let v_5 = bitcast<u32>(r2.z);
    let v_6 = r2.z;
    r2.w = select(cb2_2.tint_symbol[19u].x, v_6, (v_5 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r2.w) << 8u));
    let v_7 = bitcast<u32>(r3.x);
    let v_8 = r3.x;
    r2.w = select(r2.w, v_8, (v_7 != 0u));
    let v_9 = (bitcast<vec2<u32>>(r2.zz) != vec2<u32>());
    let v_10 = vec2<f32>(bitcast<f32>(v.tint_symbol_4[2i].x), bitcast<f32>(v.tint_symbol_4[3i].x));
    let v_11 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_4[4i].x), bitcast<f32>(v.tint_symbol_4[5i].x)), v_10, v_9);
    let v_12 = r3;
    r3 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
    let v_13 = bitcast<u32>(r3.x);
    let v_14 = r3.z;
    r2.z = select(r3.y, v_14, (v_13 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r2.w) << 4u));
    r3.y = bitcast<f32>((bitcast<i32>(r2.z) + -4i));
    let v_15 = bitcast<vec2<u32>>(r3.xx);
    let v_16 = r3.yx;
    let v_17 = select(r2.zw, v_16, (v_15 != vec2<u32>()));
    r2 = vec4<f32>(r2.xy, v_17.xy);
    r3.x = bitcast<f32>((bitcast<i32>(r2.w) << 2u));
    r3.y = bitcast<f32>((bitcast<i32>(r2.z) + -2i));
    let v_18 = bitcast<vec2<u32>>(r3.xx);
    let v_19 = r3.yx;
    let v_20 = select(r2.zw, v_19, (v_18 != vec2<u32>()));
    r2 = vec4<f32>(r2.xy, v_20.xy);
    r2.w = bitcast<f32>((bitcast<i32>(r2.w) << 1u));
    r3.x = bitcast<f32>((bitcast<i32>(r2.z) + -1i));
    let v_21 = bitcast<u32>(r2.w);
    let v_22 = r3.x;
    r2.z = select(r2.z, v_22, (v_21 != 0u));
    r2.z = bitcast<f32>((bitcast<i32>(r2.z) + -1i));
    let v_23 = bitcast<u32>(cb2_2.tint_symbol[19u].x);
    let v_24 = r2.z;
    r2.z = select(bitcast<f32>(v.tint_symbol_4[6i].x), v_24, (v_23 != 0u));
    let v_25 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
    r3 = vec4<f32>(v_25.xyz, r3.w);
    if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
      r2.w = icb0[bitcast<i32>(r2.z)].x;
      let v_26 = (r2.xy * icb0[bitcast<i32>(r2.w)].zz);
      r4 = vec4<f32>(v_26.xy, r4.zw);
      let v_27 = fma(icb0[bitcast<i32>(r2.w)].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_27.xy, r4.zw);
      let v_28 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_28.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r2.w = (r4.w * v1.w);
      r2.w = (r2.w * cb12_12.tint_symbol_3[2u].z);
      r2.w = dot(r2.ww, cb2_2.tint_symbol[15u].xx);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r2.w)));
      r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
    } else {
      r2.w = 0.0f;
    }
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r2.z)].x) + 1i));
      let v_29 = (r2.xy * icb0[bitcast<i32>(r0.y)].zz);
      r4 = vec4<f32>(v_29.xy, r4.zw);
      let v_30 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_30.xy, r4.zw);
      let v_31 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_31.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.w = bitcast<f32>((bitcast<i32>(r2.w) + 2i));
      let v_32 = bitcast<u32>(r0.y);
      let v_33 = r3.w;
      r2.w = select(r2.w, v_33, (v_32 != 0u));
    }
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_34 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].zz);
      r3 = vec4<f32>(v_34.x, r3.yz, v_34.y);
      let v_35 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 2i))].yy, r0.xz, r3.xw);
      r3 = vec4<f32>(v_35.x, r3.yz, v_35.y);
      let v_36 = (r3.xw + v2.xy);
      r3 = vec4<f32>(v_36.x, r3.yz, v_36.y);
      r4 = textureSample(t0, s0, r3.xwxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 4i));
      let v_37 = bitcast<u32>(r0.y);
      let v_38 = r3.x;
      r2.w = select(r2.w, v_38, (v_37 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_39 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].zz);
      r3 = vec4<f32>(v_39.xy, r3.zw);
      let v_40 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 3i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_40.xy, r3.zw);
      let v_41 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_41.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 8i));
      let v_42 = bitcast<u32>(r0.y);
      let v_43 = r3.x;
      r2.w = select(r2.w, v_43, (v_42 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_44 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r3 = vec4<f32>(v_44.xy, r3.zw);
      let v_45 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_45.xy, r3.zw);
      let v_46 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_46.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r3.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 16i));
      let v_47 = bitcast<u32>(r0.y);
      let v_48 = r3.x;
      r2.w = select(r2.w, v_48, (v_47 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_49 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].zz);
      r4 = vec4<f32>(v_49.xy, r4.zw);
      let v_50 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 5i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_50.xy, r4.zw);
      let v_51 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_51.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 32i));
      let v_52 = bitcast<u32>(r0.y);
      let v_53 = r3.x;
      r2.w = select(r2.w, v_53, (v_52 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_54 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
      r3 = vec4<f32>(v_54.xy, r3.zw);
      let v_55 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_55.xy, r3.zw);
      let v_56 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_56.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 64i));
      let v_57 = bitcast<u32>(r0.y);
      let v_58 = r3.x;
      r2.w = select(r2.w, v_58, (v_57 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_59 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
      r3 = vec4<f32>(v_59.xy, r3.zw);
      let v_60 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_60.xy, r3.zw);
      let v_61 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_61.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 128i));
      let v_62 = bitcast<u32>(r0.y);
      let v_63 = r3.x;
      r2.w = select(r2.w, v_63, (v_62 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r2.z)].x) + 8i));
      let v_64 = (r2.xy * icb0[bitcast<i32>(r0.y)].zz);
      r3 = vec4<f32>(v_64.xy, r3.zw);
      let v_65 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_65.xy, r3.zw);
      let v_66 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_66.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r3.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 256i));
      let v_67 = bitcast<u32>(r0.y);
      let v_68 = r3.x;
      r2.w = select(r2.w, v_68, (v_67 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<i32>(r2.z)].x) + 9i));
      let v_69 = (r2.xy * icb0[bitcast<i32>(r0.y)].zz);
      r4 = vec4<f32>(v_69.xy, r4.zw);
      let v_70 = fma(icb0[bitcast<i32>(r0.y)].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_70.xy, r4.zw);
      let v_71 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_71.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 512i));
      let v_72 = bitcast<u32>(r0.y);
      let v_73 = r3.x;
      r2.w = select(r2.w, v_73, (v_72 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_74 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
      r3 = vec4<f32>(v_74.xy, r3.zw);
      let v_75 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_75.xy, r3.zw);
      let v_76 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_76.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 1024i));
      let v_77 = bitcast<u32>(r0.y);
      let v_78 = r3.x;
      r2.w = select(r2.w, v_78, (v_77 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_79 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
      r3 = vec4<f32>(v_79.xy, r3.zw);
      let v_80 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_80.xy, r3.zw);
      let v_81 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_81.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 2048i));
      let v_82 = bitcast<u32>(r0.y);
      let v_83 = r3.x;
      r2.w = select(r2.w, v_83, (v_82 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r0.y = icb0[bitcast<i32>(r2.z)].x;
      let v_84 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].zz);
      r3 = vec4<f32>(v_84.xy, r3.zw);
      let v_85 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 12i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_85.xy, r3.zw);
      let v_86 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_86.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r3.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r2.z = bitcast<f32>((bitcast<i32>(r2.w) + 4096i));
      let v_87 = bitcast<u32>(r0.y);
      let v_88 = r2.z;
      r2.w = select(r2.w, v_88, (v_87 != 0u));
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
    if ((bitcast<u32>(r0.y) != 0u)) {
      let v_89 = (r2.xy * vec2<f32>(-0.4375f));
      r2 = vec4<f32>(v_89.xy, r2.zw);
      let v_90 = fma(r0.xz, vec2<f32>(0.4375f), r2.xy);
      r0 = vec4<f32>(v_90.xy, r0.zw);
      let v_91 = (r0.xy + v2.xy);
      r0 = vec4<f32>(v_91.xy, r0.zw);
      r3 = textureSample(t0, s0, r0.xyxx.xy);
      r0.x = (r3.w * v1.w);
      r0.x = (r0.x * cb12_12.tint_symbol_3[2u].z);
      r0.x = dot(r0.xx, cb2_2.tint_symbol[15u].xx);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.x)));
      r0.y = bitcast<f32>((bitcast<i32>(r2.w) + 8192i));
      let v_92 = bitcast<u32>(r0.x);
      let v_93 = r0.y;
      r2.w = select(r2.w, v_93, (v_92 != 0u));
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
    v_94((bitcast<u32>(r0.x) != 0u));
    o0.w = 1.0f;
  } else {
    r0.x = (r0.w * r1.w);
    r0.y = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[2u].z);
    r0.x = dot(r0.yy, r0.xx);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w >= r0.x)));
    v_94((bitcast<u32>(r0.y) != 0u));
    o0.w = r0.x;
  }
  let v_95 = (v2.zz * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_95.xy, r0.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.y);
  let v_96 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_96.xy, r0.zw);
  let v_97 = sqrt(r0.xy);
  o3 = vec4<f32>(v_97.xy, o3.zw);
  r0.x = ((-(v4.wwww)).x + 1.0f);
  r0 = vec4<f32>(r0.x, ((v4.www * v4.xyz)).xyz);
  let v_98 = fma(r1.xyz, r0.xxx, r0.yzw);
  o0 = vec4<f32>(v_98.xyz, o0.w);
  o1 = vec4<f32>(v3.xyz.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v2.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[3u].x * 0.49607843160629272461f);
}

fn v_94(v_99 : bool) {
  if (v_99) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_6(o0, o1, o2, o3);
}
