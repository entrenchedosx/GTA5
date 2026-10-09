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

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 18u> = array<vec4<f32>, 18u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(0x1p-148f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.25f, -0.25f, 0.0f), vec4<f32>(0.0f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> v0 : vec4<f32>;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 8u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v_2 : bool) {
  var v_3 : vec4<f32> = v_1;
  v_3.w = (1.0f / v_1.w);
  v0 = v_3;
  v6.x = bitcast<f32>(select(0u, 4294967295u, v_2));
  let v_4 = max(v0.xy, vec2<f32>());
  let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(v_4), vec2<u32>(4294967295u), (v_4 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_7((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.75f)));
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_7((bitcast<u32>(r1.x) != 0u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].w) != 0i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_8 = dpdx(v1.xy);
    let v_9 = r1;
    r1 = vec4<f32>(v_8.x, v_9.y, v_8.y, v_9.w);
    let v_10 = dpdy(v1.xy);
    r2 = vec4<f32>(v_10.xy, r2.zw);
    r1.w = bitcast<f32>((bitcast<i32>(cb2_2.tint_symbol[19u].x) << 16u));
    let v_11 = bitcast<u32>(r1.w);
    let v_12 = r1.w;
    r2.z = select(cb2_2.tint_symbol[19u].x, v_12, (v_11 != 0u));
    r2.w = bitcast<f32>((bitcast<i32>(r2.z) << 8u));
    let v_13 = bitcast<u32>(r2.w);
    let v_14 = r2.w;
    r2.z = select(r2.z, v_14, (v_13 != 0u));
    let v_15 = (bitcast<vec2<u32>>(r1.ww) != vec2<u32>());
    let v_16 = vec2<f32>(bitcast<f32>(v.tint_symbol_4[2i].x), bitcast<f32>(v.tint_symbol_4[3i].x));
    let v_17 = select(vec2<f32>(bitcast<f32>(v.tint_symbol_4[4i].x), bitcast<f32>(v.tint_symbol_4[5i].x)), v_16, v_15);
    r3 = vec4<f32>(v_17.xy, r3.zw);
    let v_18 = bitcast<u32>(r2.w);
    let v_19 = r3.y;
    r1.w = select(r3.x, v_19, (v_18 != 0u));
    r2.w = bitcast<f32>((bitcast<i32>(r2.z) << 4u));
    let v_20 = bitcast<u32>(r2.w);
    let v_21 = r2.w;
    r2.z = select(r2.z, v_21, (v_20 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r1.w) + -4i));
    let v_22 = bitcast<u32>(r2.w);
    let v_23 = r3.x;
    r1.w = select(r1.w, v_23, (v_22 != 0u));
    r2.w = bitcast<f32>((bitcast<i32>(r2.z) << 2u));
    let v_24 = bitcast<u32>(r2.w);
    let v_25 = r2.w;
    r2.z = select(r2.z, v_25, (v_24 != 0u));
    r3.x = bitcast<f32>((bitcast<i32>(r1.w) + -2i));
    let v_26 = bitcast<u32>(r2.w);
    let v_27 = r3.x;
    r1.w = select(r1.w, v_27, (v_26 != 0u));
    r2.z = bitcast<f32>((bitcast<i32>(r2.z) << 1u));
    r2.w = bitcast<f32>((bitcast<i32>(r1.w) + -1i));
    let v_28 = bitcast<u32>(r2.z);
    let v_29 = r2.w;
    r1.w = select(r1.w, v_29, (v_28 != 0u));
    r1.w = bitcast<f32>((bitcast<i32>(r1.w) + -1i));
    let v_30 = bitcast<u32>(cb2_2.tint_symbol[19u].x);
    let v_31 = r1.w;
    r1.w = select(bitcast<f32>(v.tint_symbol_4[6i].x), v_31, (v_30 != 0u));
    let v_32 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
    r3 = vec4<f32>(v_32.xyz, r3.w);
    if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
      r2.z = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_33 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r2.z) + 4i))].zz);
      r4 = vec4<f32>(v_33.xy, r4.zw);
      let v_34 = fma(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 4i))].yy, r1.xz, r4.xy);
      r2 = vec4<f32>(r2.xy, v_34.xy);
      let v_35 = (r2.zw + v1.xy);
      r2 = vec4<f32>(r2.xy, v_35.xy);
      r4 = textureSample(t0, s0, r2.zwzz.xy);
      r2.z = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r2.z = dot(r2.zz, cb2_2.tint_symbol[15u].xx);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r2.z)));
      r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1u));
    } else {
      r2.z = 0.0f;
    }
    if ((bitcast<u32>(r1.y) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x) + 1i));
      let v_36 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r4 = vec4<f32>(v_36.xy, r4.zw);
      let v_37 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_37.xy, r4.zw);
      let v_38 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_38.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 2i));
      let v_39 = bitcast<u32>(r1.y);
      let v_40 = r2.w;
      r2.z = select(r2.z, v_40, (v_39 != 0u));
    }
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_41 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].zz);
      r3 = vec4<f32>(v_41.x, r3.yz, v_41.y);
      let v_42 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].yy, r1.xz, r3.xw);
      r3 = vec4<f32>(v_42.x, r3.yz, v_42.y);
      let v_43 = (r3.xw + v1.xy);
      r3 = vec4<f32>(v_43.x, r3.yz, v_43.y);
      r4 = textureSample(t0, s0, r3.xwxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 4i));
      let v_44 = bitcast<u32>(r1.y);
      let v_45 = r2.w;
      r2.z = select(r2.z, v_45, (v_44 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_46 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].zz);
      r3 = vec4<f32>(v_46.xy, r3.zw);
      let v_47 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_47.xy, r3.zw);
      let v_48 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_48.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 8i));
      let v_49 = bitcast<u32>(r1.y);
      let v_50 = r2.w;
      r2.z = select(r2.z, v_50, (v_49 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_51 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 8i))].zz);
      r3 = vec4<f32>(v_51.xy, r3.zw);
      let v_52 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 8i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_52.xy, r3.zw);
      let v_53 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_53.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r3.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 16i));
      let v_54 = bitcast<u32>(r1.y);
      let v_55 = r2.w;
      r2.z = select(r2.z, v_55, (v_54 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_56 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 9i))].zz);
      r4 = vec4<f32>(v_56.xy, r4.zw);
      let v_57 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 9i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_57.xy, r4.zw);
      let v_58 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_58.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 32i));
      let v_59 = bitcast<u32>(r1.y);
      let v_60 = r2.w;
      r2.z = select(r2.z, v_60, (v_59 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_61 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].zz);
      r3 = vec4<f32>(v_61.xy, r3.zw);
      let v_62 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_62.xy, r3.zw);
      let v_63 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_63.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 64i));
      let v_64 = bitcast<u32>(r1.y);
      let v_65 = r2.w;
      r2.z = select(r2.z, v_65, (v_64 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_66 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].zz);
      r3 = vec4<f32>(v_66.xy, r3.zw);
      let v_67 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_67.xy, r3.zw);
      let v_68 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_68.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 128i));
      let v_69 = bitcast<u32>(r1.y);
      let v_70 = r2.w;
      r2.z = select(r2.z, v_70, (v_69 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x) + 8i));
      let v_71 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r3 = vec4<f32>(v_71.xy, r3.zw);
      let v_72 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_72.xy, r3.zw);
      let v_73 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_73.xy, r3.zw);
      r3 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r3.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 256i));
      let v_74 = bitcast<u32>(r1.y);
      let v_75 = r2.w;
      r2.z = select(r2.z, v_75, (v_74 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x) + 9i));
      let v_76 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r4 = vec4<f32>(v_76.xy, r4.zw);
      let v_77 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_77.xy, r4.zw);
      let v_78 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_78.xy, r4.zw);
      r4 = textureSample(t0, s0, r4.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 512i));
      let v_79 = bitcast<u32>(r1.y);
      let v_80 = r2.w;
      r2.z = select(r2.z, v_80, (v_79 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_81 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 14i))].zz);
      r3 = vec4<f32>(v_81.xy, r3.zw);
      let v_82 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 14i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_82.xy, r3.zw);
      let v_83 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_83.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 1024i));
      let v_84 = bitcast<u32>(r1.y);
      let v_85 = r2.w;
      r2.z = select(r2.z, v_85, (v_84 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_86 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 15i))].zz);
      r3 = vec4<f32>(v_86.xy, r3.zw);
      let v_87 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 15i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_87.xy, r3.zw);
      let v_88 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_88.xy, r3.zw);
      r4 = textureSample(t0, s0, r3.xyxx.xy);
      r1.y = (r4.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 2048i));
      let v_89 = bitcast<u32>(r1.y);
      let v_90 = r2.w;
      r2.z = select(r2.z, v_90, (v_89 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_91 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 16i))].zz);
      r3 = vec4<f32>(v_91.xy, r3.zw);
      let v_92 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 16i))].yy, r1.xz, r3.xy);
      let v_93 = r1;
      r1 = vec4<f32>(v_93.x, v_92.x, v_93.z, v_92.y);
      let v_94 = (r1.yw + v1.xy);
      let v_95 = r1;
      r1 = vec4<f32>(v_95.x, v_94.x, v_95.z, v_94.y);
      r3 = textureSample(t0, s0, r1.ywyy.xy);
      r1.y = (r3.w * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r1.w = bitcast<f32>((bitcast<i32>(r2.z) + 4096i));
      let v_96 = bitcast<u32>(r1.y);
      let v_97 = r1.w;
      r2.z = select(r2.z, v_97, (v_96 != 0u));
    }
    r1.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
    if ((bitcast<u32>(r1.y) != 0u)) {
      let v_98 = (r2.xy * vec2<f32>(-0.4375f));
      let v_99 = r1;
      r1 = vec4<f32>(v_99.x, v_98.x, v_99.z, v_98.y);
      let v_100 = fma(r1.xz, vec2<f32>(0.4375f), r1.yw);
      r1 = vec4<f32>(v_100.xy, r1.zw);
      let v_101 = (r1.xy + v1.xy);
      r1 = vec4<f32>(v_101.xy, r1.zw);
      r1 = textureSample(t0, s0, r1.xyxx.xy);
      r1.x = (r1.w * cb12_12.tint_symbol_3[3u].z);
      r1.x = dot(r1.xx, cb2_2.tint_symbol[15u].xx);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.x)));
      r1.y = bitcast<f32>((bitcast<i32>(r2.z) + 8192i));
      let v_102 = bitcast<u32>(r1.x);
      let v_103 = r1.y;
      r2.z = select(r2.z, v_103, (v_102 != 0u));
    }
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
    v_7((bitcast<u32>(r1.x) != 0u));
    o0.w = 1.0f;
  } else {
    r0.w = (r0.w + -0.10000000149011611938f);
    r0.w = clamp(fma(r0.wwww, vec4<f32>(1.53846156597137451172f), vec4<f32>(0.0039215688593685627f)).w, 0.0f, 1.0f);
    r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[3u].z);
    r0.w = dot(r1.xx, r0.ww);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w >= r0.w)));
    v_7((bitcast<u32>(r1.x) != 0u));
    o0.w = r0.w;
  }
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb3_3.tint_symbol_1[50u].w))));
  let v_104 = (bitcast<u32>(v6.x) != 0u);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[7i].x), 0.0f, v_104);
  r1.x = bitcast<f32>((bitcast<i32>(v6.x) + bitcast<i32>(r1.x)));
  r1.x = f32(bitcast<i32>(r1.x));
  let v_105 = bitcast<u32>(r0.w);
  r0.w = select(1.0f, r1.x, (v_105 != 0u));
  let v_106 = (r0.www * v2.xyz);
  r1 = vec4<f32>(v_106.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.xyxx.xy);
  let v_107 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_107.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb12_12.tint_symbol_3[0u].x, 0.00100000004749745131f);
  let v_108 = (r1.ww * r2.xy);
  r2 = vec4<f32>(v_108.xy, r2.zw);
  let v_109 = (r2.yyy * v4.xyz);
  r2 = vec4<f32>(r2.x, v_109.xyz);
  let v_110 = fma(r2.xxx, v3.xyz, r2.yzw);
  r2 = vec4<f32>(v_110.xyz, r2.w);
  let v_111 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_111.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_112 = fma(r1.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_112.xyz, r1.w);
  let v_113 = fma(cb12_12.tint_symbol_3[3u].xxx, r1.xyz, vec3<f32>(0.0f, 0.0f, 1.0f));
  r1 = vec4<f32>(v_113.xyz, r1.w);
  let v_114 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_114.xyz, o1.w);
  let v_115 = (v1.zz * cb2_2.tint_symbol[15u].zy);
  r1 = vec4<f32>(v_115.xy, r1.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r1.z = (r0.w * r1.y);
  let v_116 = (r1.xz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_116.xy, r1.zw);
  let v_117 = sqrt(r1.xy);
  o3 = vec4<f32>(v_117.xy, o3.zw);
  r0.w = ((-(v5.wwww)).w + 1.0f);
  r1 = vec4<f32>(((v5.www * v5.xyz)).xyz, r1.w);
  let v_118 = fma(r0.xyz, r0.www, r1.xyz);
  o0 = vec4<f32>(v_118.xyz, o0.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v1.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[4u].x * 0.49607843160629272461f);
}

fn v_7(v_119 : bool) {
  if (v_119) {
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
fn main(@builtin(position) v_120 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(front_facing) v_121 : bool) -> tint_symbol_6 {
  main_inner(v_120, v1, v2, v3, v4, v5, v_121);
  return tint_symbol_6(o0, o1, o2, o3);
}
