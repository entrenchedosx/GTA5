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

struct cb51_struct {
  tint_symbol_1 : array<vec4<f32>, 51u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb51_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 18u> = array<vec4<f32>, 18u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(0x1p-148f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.25f, -0.25f, 0.0f), vec4<f32>(0.0f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 7u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].y) != 0i)));
  let v_3 = max(v0.xy, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yz) & vec2<u32>(1u)));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.z = bitcast<f32>((bitcast<i32>(r0.z) << 1u));
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) + bitcast<i32>(r0.z)));
  r0.y = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.y)]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 1.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  v_8((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  let v_9 = r0;
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1.w = v1.w;
  r1 = (r1 * v1);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_10 = dpdx(v2.xy);
    let v_11 = r0;
    r0 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
    let v_12 = dpdy(v2.xy);
    r2 = vec4<f32>(v_12.xy, r2.zw);
    r2.z = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol[19u].x) << 16u));
    let v_13 = bitcast<u32>(r2.z);
    let v_14 = r2.z;
    r2.w = select(cb2_2.tint_symbol[19u].x, v_14, (v_13 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r2.w) << 8u));
    let v_15 = bitcast<u32>(r3.x);
    let v_16 = r3.x;
    r2.w = select(r2.w, v_16, (v_15 != 0u));
    let v_17 = (bitcast<vec2<u32>>(r2.zz) != vec2<u32>());
    let v_18 = vec2<f32>(bitcast<f32>(v.tint_symbol_4[2i].x), bitcast<f32>(v.tint_symbol_4[3i].x));
    let v_19 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_4[4i].x), bitcast<f32>(v.tint_symbol_4[5i].x)), v_18, v_17);
    let v_20 = r3;
    r3 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
    let v_21 = bitcast<u32>(r3.x);
    let v_22 = r3.z;
    r2.z = select(r3.y, v_22, (v_21 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r2.w) << 4u));
    r3.y = bitcast<f32>((bitcast<i32>(r2.z) + -4i));
    let v_23 = bitcast<vec2<u32>>(r3.xx);
    let v_24 = r3.yx;
    let v_25 = select(r2.zw, v_24, (v_23 != vec2<u32>()));
    r2 = vec4<f32>(r2.xy, v_25.xy);
    r3.x = bitcast<f32>((bitcast<i32>(r2.w) << 2u));
    r3.y = bitcast<f32>((bitcast<i32>(r2.z) + -2i));
    let v_26 = bitcast<vec2<u32>>(r3.xx);
    let v_27 = r3.yx;
    let v_28 = select(r2.zw, v_27, (v_26 != vec2<u32>()));
    r2 = vec4<f32>(r2.xy, v_28.xy);
    r2.w = bitcast<f32>((bitcast<i32>(r2.w) << 1u));
    r3.x = bitcast<f32>((bitcast<i32>(r2.z) + -1i));
    let v_29 = bitcast<u32>(r2.w);
    let v_30 = r3.x;
    r2.z = select(r2.z, v_30, (v_29 != 0u));
    r2.z = bitcast<f32>((bitcast<i32>(r2.z) + -1i));
    let v_31 = bitcast<u32>(cb2_2.tint_symbol[19u].x);
    let v_32 = r2.z;
    r2.z = select(bitcast<f32>(v.tint_symbol_4[6i].x), v_32, (v_31 != 0u));
    let v_33 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
    r3 = vec4<f32>(v_33.xyz, r3.w);
    if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
      r2.w = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_34 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r2.w) + 4i))].zz);
      r4 = vec4<f32>(v_34.xy, r4.zw);
      let v_35 = fma(icb0[bitcast<u32>((bitcast<i32>(r2.w) + 4i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_35.xy, r4.zw);
      let v_36 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_36.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r2.w = (r4.w * v1.w);
      r2.w = (r2.w * cb12_12.tint_symbol_3[4u].z);
      r2.w = dot(r2.ww, cb2_2.tint_symbol[15u].xx);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r2.w)));
      r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
    } else {
      r2.w = 0.0f;
    }
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x) + 1i));
      let v_37 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r4 = vec4<f32>(v_37.xy, r4.zw);
      let v_38 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_38.xy, r4.zw);
      let v_39 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_39.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.w = bitcast<f32>((bitcast<i32>(r2.w) + 2i));
      let v_40 = bitcast<u32>(r0.y);
      let v_41 = r3.w;
      r2.w = select(r2.w, v_41, (v_40 != 0u));
    }
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_42 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
      r3 = vec4<f32>(v_42.x, r3.yz, v_42.y);
      let v_43 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.xz, r3.xw);
      r3 = vec4<f32>(v_43.x, r3.yz, v_43.y);
      let v_44 = (r3.xw + v2.xy);
      r3 = vec4<f32>(v_44.x, r3.yz, v_44.y);
      r4 = textureSample(t0, s0, r3.xwxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 4i));
      let v_45 = bitcast<u32>(r0.y);
      let v_46 = r3.x;
      r2.w = select(r2.w, v_46, (v_45 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_47 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
      r3 = vec4<f32>(v_47.xy, r3.zw);
      let v_48 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_48.xy, r3.zw);
      let v_49 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_49.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 8i));
      let v_50 = bitcast<u32>(r0.y);
      let v_51 = r3.x;
      r2.w = select(r2.w, v_51, (v_50 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_52 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 8i))].zz);
      r3 = vec4<f32>(v_52.xy, r3.zw);
      let v_53 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 8i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_53.xy, r3.zw);
      let v_54 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_54.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r3.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 16i));
      let v_55 = bitcast<u32>(r0.y);
      let v_56 = r3.x;
      r2.w = select(r2.w, v_56, (v_55 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_57 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 9i))].zz);
      r4 = vec4<f32>(v_57.xy, r4.zw);
      let v_58 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 9i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_58.xy, r4.zw);
      let v_59 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_59.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 32i));
      let v_60 = bitcast<u32>(r0.y);
      let v_61 = r3.x;
      r2.w = select(r2.w, v_61, (v_60 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_62 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
      r3 = vec4<f32>(v_62.xy, r3.zw);
      let v_63 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_63.xy, r3.zw);
      let v_64 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_64.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 64i));
      let v_65 = bitcast<u32>(r0.y);
      let v_66 = r3.x;
      r2.w = select(r2.w, v_66, (v_65 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_67 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
      r3 = vec4<f32>(v_67.xy, r3.zw);
      let v_68 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_68.xy, r3.zw);
      let v_69 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_69.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 128i));
      let v_70 = bitcast<u32>(r0.y);
      let v_71 = r3.x;
      r2.w = select(r2.w, v_71, (v_70 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x) + 8i));
      let v_72 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r3 = vec4<f32>(v_72.xy, r3.zw);
      let v_73 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_73.xy, r3.zw);
      let v_74 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_74.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r3.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 256i));
      let v_75 = bitcast<u32>(r0.y);
      let v_76 = r3.x;
      r2.w = select(r2.w, v_76, (v_75 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x) + 9i));
      let v_77 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r4 = vec4<f32>(v_77.xy, r4.zw);
      let v_78 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_78.xy, r4.zw);
      let v_79 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_79.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 512i));
      let v_80 = bitcast<u32>(r0.y);
      let v_81 = r3.x;
      r2.w = select(r2.w, v_81, (v_80 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_82 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 14i))].zz);
      r3 = vec4<f32>(v_82.xy, r3.zw);
      let v_83 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 14i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_83.xy, r3.zw);
      let v_84 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_84.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 1024i));
      let v_85 = bitcast<u32>(r0.y);
      let v_86 = r3.x;
      r2.w = select(r2.w, v_86, (v_85 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_87 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 15i))].zz);
      r3 = vec4<f32>(v_87.xy, r3.zw);
      let v_88 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 15i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_88.xy, r3.zw);
      let v_89 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_89.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r4.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 2048i));
      let v_90 = bitcast<u32>(r0.y);
      let v_91 = r3.x;
      r2.w = select(r2.w, v_91, (v_90 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_92 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 16i))].zz);
      r3 = vec4<f32>(v_92.xy, r3.zw);
      let v_93 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 16i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_93.xy, r3.zw);
      let v_94 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_94.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r0.y = (r3.w * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[4u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.y)));
      r2.z = bitcast<f32>((bitcast<i32>(r2.w) + 4096i));
      let v_95 = bitcast<u32>(r0.y);
      let v_96 = r2.z;
      r2.w = select(r2.w, v_96, (v_95 != 0u));
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
    if ((bitcast<u32>(r0.y) != 0u)) {
      let v_97 = (r2.xy * vec2<f32>(-0.4375f));
      r2 = vec4<f32>(v_97.xy, r2.zw);
      let v_98 = fma(r0.xz, vec2<f32>(0.4375f), r2.xy);
      r0 = vec4<f32>(v_98.xy, r0.zw);
      let v_99 = (r0.xy + v2.xy);
      r0 = vec4<f32>(v_99.xy, r0.zw);
      r3 = textureSample(t0, s0, r0.xyxx.xy);
      r0.x = (r3.w * v1.w);
      r0.x = (r0.x * cb12_12.tint_symbol_3[4u].z);
      r0.x = dot(r0.xx, cb2_2.tint_symbol[15u].xx);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w < r0.x)));
      r0.y = bitcast<f32>((bitcast<i32>(r2.w) + 8192i));
      let v_100 = bitcast<u32>(r0.x);
      let v_101 = r0.y;
      r2.w = select(r2.w, v_101, (v_100 != 0u));
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
    v_8((bitcast<u32>(r0.x) != 0u));
    o0.w = 1.0f;
  } else {
    r0.x = (r0.w * r1.w);
    r0.y = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[4u].z);
    r0.x = dot(r0.yy, r0.xx);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[4u].w >= r0.x)));
    v_8((bitcast<u32>(r0.y) != 0u));
    o0.w = r0.x;
  }
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb3_3.tint_symbol_1[50u].w))));
  r0.x = select(1.0f, -1.0f, (bitcast<u32>(r0.x) != 0u));
  let v_102 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v_102.xyz, r0.w);
  r2 = textureSample(t5, s5, v2.xyxx.xy);
  let v_103 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_103.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_104 = (r1.ww * r2.xy);
  r2 = vec4<f32>(v_104.xy, r2.zw);
  let v_105 = (r2.yyy * v5.xyz);
  r2 = vec4<f32>(r2.x, v_105.xyz);
  let v_106 = fma(r2.xxx, v4.xyz, r2.yzw);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  let v_107 = fma(r0.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_107.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_108 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r0 = vec4<f32>(v_108.xyz, r0.w);
  let v_109 = fma(cb12_12.tint_symbol_3[4u].xxx, r0.xyz, vec3<f32>(0.0f, 0.0f, 1.0f));
  r0 = vec4<f32>(v_109.xyz, r0.w);
  r2 = textureSample(t4, s4, v2.xyxx.xy);
  r0.w = (r2.w * cb12_12.tint_symbol_3[0u].y);
  r1.w = dot(r2.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r1.w = (r1.w * cb12_12.tint_symbol_3[0u].z);
  o2.x = (r1.w * 4.0f);
  r0.w = (r0.w * 0.001953125f);
  o2.y = sqrt(r0.w);
  let v_110 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_110.xyz, o1.w);
  let v_111 = (v2.zz * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_111.xy, r0.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.y);
  let v_112 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_112.xy, r0.zw);
  let v_113 = sqrt(r0.xy);
  o3 = vec4<f32>(v_113.xy, o3.zw);
  r0.x = ((-(v6.wwww)).x + 1.0f);
  r0 = vec4<f32>(r0.x, ((v6.www * v6.xyz)).xyz);
  let v_114 = fma(r1.xyz, r0.xxx, r0.yzw);
  o0 = vec4<f32>(v_114.xyz, o0.w);
  o1.w = 0.0f;
  o2.z = cb12_12.tint_symbol_3[0u].x;
  o2.w = v2.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[5u].x * 0.49607843160629272461f);
}

fn v_8(v_115 : bool) {
  if (v_115) {
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
fn main(@builtin(position) v_116 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_116, v1, v2, v3, v4, v5, v6);
  return tint_symbol_6(o0, o1, o2, o3);
}
