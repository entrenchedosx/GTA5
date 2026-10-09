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

var<private> icb0 : array<vec4<f32>, 18u> = array<vec4<f32>, 18u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(0x1p-148f, 0.25f, 0.25f, 0.0f), vec4<f32>(0x1.8p-147f, -0.25f, -0.25f, 0.0f), vec4<f32>(0.0f, -0.125f, -0.375f, 0.0f), vec4<f32>(0.0f, 0.375f, -0.125f, 0.0f), vec4<f32>(0.0f, -0.375f, 0.125f, 0.0f), vec4<f32>(0.0f, 0.125f, 0.375f, 0.0f), vec4<f32>(0.0f, 0.0625f, -0.1875f, 0.0f), vec4<f32>(0.0f, -0.0625f, 0.1875f, 0.0f), vec4<f32>(0.0f, 0.3125f, 0.0625f, 0.0f), vec4<f32>(0.0f, -0.1875f, -0.3125f, 0.0f), vec4<f32>(0.0f, -0.3125f, 0.3125f, 0.0f), vec4<f32>(0.0f, -0.4375f, -0.0625f, 0.0f), vec4<f32>(0.0f, 0.1875f, 0.4375f, 0.0f), vec4<f32>(0.0f, 0.4375f, -0.4375f, 0.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> oMask : array<u32, 1u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].y) != 0i)));
  let v_3 = max(v0.xy, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r0.z = bitcast<f32>(insertBits(0u, bitcast<u32>(r0.z), 1u, 1u));
  let v_6 = bitcast<u32>(r0.y);
  r0.y = bitcast<f32>(insertBits(bitcast<u32>(r0.z), v_6, 0u, 1u));
  r0.y = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.y)]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 1.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  v_7((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  let v_8 = r0;
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = v1.w;
  r1 = (r1 * v1);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].w) != 0i)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_9 = dpdxCoarse(v2.xy);
    let v_10 = r0;
    r0 = vec4<f32>(v_9.x, v_10.y, v_9.y, v_10.w);
    let v_11 = dpdyCoarse(v2.xy);
    r2 = vec4<f32>(v_11.xy, r2.zw);
    r2.z = bitcast<f32>(firstTrailingBit(bitcast<u32>(cb2_2.tint_symbol[19u].x)));
    r2.z = bitcast<f32>((bitcast<i32>(r2.z) + -1i));
    let v_12 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
    r3 = vec4<f32>(v_12.xyz, r3.w);
    if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
      r2.w = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_13 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r2.w) + 4i))].zz);
      r4 = vec4<f32>(v_13.xy, r4.zw);
      let v_14 = fma(icb0[bitcast<u32>((bitcast<i32>(r2.w) + 4i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_14.xy, r4.zw);
      let v_15 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_15.xy, r4.zw);
      r2.w = textureSample(t0, s0, r4.xyxx.xy).w;
      r2.w = (r2.w * v1.w);
      r2.w = (r2.w * cb12_12.tint_symbol_3[2u].z);
      r2.w = dot(r2.ww, cb2_2.tint_symbol[15u].xx);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r2.w)));
      r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
    } else {
      r2.w = 0.0f;
    }
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.y = bitcast<f32>((1i + bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x)));
      let v_16 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r4 = vec4<f32>(v_16.xy, r4.zw);
      let v_17 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_17.xy, r4.zw);
      let v_18 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_18.xy, r4.zw);
      r0.y = textureSample(t0, s0, r4.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.w = bitcast<f32>((bitcast<i32>(r2.w) + 2i));
      let v_19 = bitcast<u32>(r0.y);
      let v_20 = r3.w;
      r2.w = select(r2.w, v_20, (v_19 != 0u));
    }
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_21 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].zz);
      r3 = vec4<f32>(v_21.x, r3.yz, v_21.y);
      let v_22 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 6i))].yy, r0.xz, r3.xw);
      r3 = vec4<f32>(v_22.x, r3.yz, v_22.y);
      let v_23 = (r3.xw + v2.xy);
      r3 = vec4<f32>(v_23.x, r3.yz, v_23.y);
      r0.y = textureSample(t0, s0, r3.xwxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 4i));
      let v_24 = bitcast<u32>(r0.y);
      let v_25 = r3.x;
      r2.w = select(r2.w, v_25, (v_24 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_26 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].zz);
      r3 = vec4<f32>(v_26.xy, r3.zw);
      let v_27 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 7i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_27.xy, r3.zw);
      let v_28 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_28.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 8i));
      let v_29 = bitcast<u32>(r0.y);
      let v_30 = r3.x;
      r2.w = select(r2.w, v_30, (v_29 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_31 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 8i))].zz);
      r3 = vec4<f32>(v_31.xy, r3.zw);
      let v_32 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 8i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_32.xy, r3.zw);
      let v_33 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_33.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 16i));
      let v_34 = bitcast<u32>(r0.y);
      let v_35 = r3.x;
      r2.w = select(r2.w, v_35, (v_34 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_36 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 9i))].zz);
      r4 = vec4<f32>(v_36.xy, r4.zw);
      let v_37 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 9i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_37.xy, r4.zw);
      let v_38 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_38.xy, r4.zw);
      r0.y = textureSample(t0, s0, r4.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 32i));
      let v_39 = bitcast<u32>(r0.y);
      let v_40 = r3.x;
      r2.w = select(r2.w, v_40, (v_39 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_41 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].zz);
      r3 = vec4<f32>(v_41.xy, r3.zw);
      let v_42 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 10i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_42.xy, r3.zw);
      let v_43 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_43.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 64i));
      let v_44 = bitcast<u32>(r0.y);
      let v_45 = r3.x;
      r2.w = select(r2.w, v_45, (v_44 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_46 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].zz);
      r3 = vec4<f32>(v_46.xy, r3.zw);
      let v_47 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 11i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_47.xy, r3.zw);
      let v_48 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_48.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 128i));
      let v_49 = bitcast<u32>(r0.y);
      let v_50 = r3.x;
      r2.w = select(r2.w, v_50, (v_49 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x) + 8i));
      let v_51 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r3 = vec4<f32>(v_51.xy, r3.zw);
      let v_52 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_52.xy, r3.zw);
      let v_53 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_53.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 256i));
      let v_54 = bitcast<u32>(r0.y);
      let v_55 = r3.x;
      r2.w = select(r2.w, v_55, (v_54 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r0.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x) + 9i));
      let v_56 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].zz);
      r4 = vec4<f32>(v_56.xy, r4.zw);
      let v_57 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].yy, r0.xz, r4.xy);
      r4 = vec4<f32>(v_57.xy, r4.zw);
      let v_58 = (r4.xy + v2.xy);
      r4 = vec4<f32>(v_58.xy, r4.zw);
      r0.y = textureSample(t0, s0, r4.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 512i));
      let v_59 = bitcast<u32>(r0.y);
      let v_60 = r3.x;
      r2.w = select(r2.w, v_60, (v_59 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_61 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 14i))].zz);
      r3 = vec4<f32>(v_61.xy, r3.zw);
      let v_62 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 14i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_62.xy, r3.zw);
      let v_63 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_63.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 1024i));
      let v_64 = bitcast<u32>(r0.y);
      let v_65 = r3.x;
      r2.w = select(r2.w, v_65, (v_64 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_66 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 15i))].zz);
      r3 = vec4<f32>(v_66.xy, r3.zw);
      let v_67 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 15i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_67.xy, r3.zw);
      let v_68 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_68.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r3.x = bitcast<f32>((bitcast<i32>(r2.w) + 2048i));
      let v_69 = bitcast<u32>(r0.y);
      let v_70 = r3.x;
      r2.w = select(r2.w, v_70, (v_69 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r0.y = icb0[bitcast<u32>((bitcast<i32>(r2.z) + 3i))].x;
      let v_71 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r0.y) + 16i))].zz);
      r3 = vec4<f32>(v_71.xy, r3.zw);
      let v_72 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.y) + 16i))].yy, r0.xz, r3.xy);
      r3 = vec4<f32>(v_72.xy, r3.zw);
      let v_73 = (r3.xy + v2.xy);
      r3 = vec4<f32>(v_73.xy, r3.zw);
      r0.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r0.y = (r0.y * v1.w);
      r0.y = (r0.y * cb12_12.tint_symbol_3[2u].z);
      r0.y = dot(r0.yy, cb2_2.tint_symbol[15u].xx);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.y)));
      r2.z = bitcast<f32>((bitcast<i32>(r2.w) + 4096i));
      let v_74 = bitcast<u32>(r0.y);
      let v_75 = r2.z;
      r2.w = select(r2.w, v_75, (v_74 != 0u));
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
    if ((bitcast<u32>(r0.y) != 0u)) {
      let v_76 = (r2.xy * vec2<f32>(-0.4375f));
      r2 = vec4<f32>(v_76.xy, r2.zw);
      let v_77 = fma(r0.xz, vec2<f32>(0.4375f), r2.xy);
      r0 = vec4<f32>(v_77.xy, r0.zw);
      let v_78 = (r0.xy + v2.xy);
      r0 = vec4<f32>(v_78.xy, r0.zw);
      r0.x = textureSample(t0, s0, r0.xyxx.xy).w;
      r0.x = (r0.x * v1.w);
      r0.x = (r0.x * cb12_12.tint_symbol_3[2u].z);
      r0.x = dot(r0.xx, cb2_2.tint_symbol[15u].xx);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w < r0.x)));
      r0.y = bitcast<f32>((bitcast<i32>(r2.w) + 8192i));
      let v_79 = bitcast<u32>(r0.x);
      let v_80 = r0.y;
      r2.w = select(r2.w, v_80, (v_79 != 0u));
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
    v_7((bitcast<u32>(r0.x) != 0u));
    o0.w = 1.0f;
    oMask[0u] = bitcast<u32>(r2.w);
  } else {
    r0.x = (r0.w * r1.w);
    r0.y = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[2u].z);
    r0.x = dot(r0.yy, r0.xx);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[2u].w >= r0.x)));
    v_7((bitcast<u32>(r0.y) != 0u));
    o0.w = r0.x;
    oMask[0u] = bitcast<u32>(bitcast<f32>(v.tint_symbol_4[2i].x));
  }
  let v_81 = (v2.zz * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_81.xy, r0.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.y);
  let v_82 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_82.xy, r0.zw);
  let v_83 = sqrt(r0.xy);
  o3 = vec4<f32>(v_83.xy, o3.zw);
  r0.x = ((-(v4.wwww)).x + 1.0f);
  r0 = vec4<f32>(r0.x, ((v4.www * v4.xyz)).xyz);
  let v_84 = fma(r1.xyz, r0.xxx, r0.yzw);
  o0 = vec4<f32>(v_84.xyz, o0.w);
  o1 = vec4<f32>(v3.xyz.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v2.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[3u].x * 0.49607843160629272461f);
}

fn v_7(v_85 : bool) {
  if (v_85) {
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
  @builtin(sample_mask)
  oMask : u32,
}

@fragment
fn main(@builtin(position) v_86 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_86, v1, v2, v3, v4);
  return tint_symbol_6(o0, o1, o2, o3, oMask[0u]);
}
