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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> oMask : array<u32, 1u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
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
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].w) != 0i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (1u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_8 = dpdxCoarse(v1.xy);
    let v_9 = r1;
    r1 = vec4<f32>(v_8.x, v_9.y, v_8.y, v_9.w);
    let v_10 = dpdyCoarse(v1.xy);
    r2 = vec4<f32>(v_10.xy, r2.zw);
    r1.w = bitcast<f32>(firstTrailingBit(bitcast<u32>(cb2_2.tint_symbol[19u].x)));
    r1.w = bitcast<f32>((bitcast<i32>(r1.w) + -1i));
    let v_11 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 3u, 4u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
    r3 = vec4<f32>(v_11.xyz, r3.w);
    if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
      r2.z = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_12 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r2.z) + 4i))].zz);
      r4 = vec4<f32>(v_12.xy, r4.zw);
      let v_13 = fma(icb0[bitcast<u32>((bitcast<i32>(r2.z) + 4i))].yy, r1.xz, r4.xy);
      r2 = vec4<f32>(r2.xy, v_13.xy);
      let v_14 = (r2.zw + v1.xy);
      r2 = vec4<f32>(r2.xy, v_14.xy);
      r2.z = textureSample(t0, s0, r2.zwzz.xy).w;
      r2.z = (r2.z * cb12_12.tint_symbol_3[3u].z);
      r2.z = dot(r2.zz, cb2_2.tint_symbol[15u].xx);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r2.z)));
      r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1u));
    } else {
      r2.z = 0.0f;
    }
    if ((bitcast<u32>(r1.y) != 0u)) {
      r1.y = bitcast<f32>((1i + bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x)));
      let v_15 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r4 = vec4<f32>(v_15.xy, r4.zw);
      let v_16 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_16.xy, r4.zw);
      let v_17 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_17.xy, r4.zw);
      r1.y = textureSample(t0, s0, r4.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 2i));
      let v_18 = bitcast<u32>(r1.y);
      let v_19 = r2.w;
      r2.z = select(r2.z, v_19, (v_18 != 0u));
    }
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_20 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].zz);
      r3 = vec4<f32>(v_20.x, r3.yz, v_20.y);
      let v_21 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 6i))].yy, r1.xz, r3.xw);
      r3 = vec4<f32>(v_21.x, r3.yz, v_21.y);
      let v_22 = (r3.xw + v1.xy);
      r3 = vec4<f32>(v_22.x, r3.yz, v_22.y);
      r1.y = textureSample(t0, s0, r3.xwxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 4i));
      let v_23 = bitcast<u32>(r1.y);
      let v_24 = r2.w;
      r2.z = select(r2.z, v_24, (v_23 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_25 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].zz);
      r3 = vec4<f32>(v_25.xy, r3.zw);
      let v_26 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 7i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_26.xy, r3.zw);
      let v_27 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_27.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 8i));
      let v_28 = bitcast<u32>(r1.y);
      let v_29 = r2.w;
      r2.z = select(r2.z, v_29, (v_28 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_30 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 8i))].zz);
      r3 = vec4<f32>(v_30.xy, r3.zw);
      let v_31 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 8i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_31.xy, r3.zw);
      let v_32 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_32.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 16i));
      let v_33 = bitcast<u32>(r1.y);
      let v_34 = r2.w;
      r2.z = select(r2.z, v_34, (v_33 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(5u, 6u, 7u, 8u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_35 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 9i))].zz);
      r4 = vec4<f32>(v_35.xy, r4.zw);
      let v_36 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 9i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_36.xy, r4.zw);
      let v_37 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_37.xy, r4.zw);
      r1.y = textureSample(t0, s0, r4.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 32i));
      let v_38 = bitcast<u32>(r1.y);
      let v_39 = r2.w;
      r2.z = select(r2.z, v_39, (v_38 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_40 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].zz);
      r3 = vec4<f32>(v_40.xy, r3.zw);
      let v_41 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 10i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_41.xy, r3.zw);
      let v_42 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_42.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 64i));
      let v_43 = bitcast<u32>(r1.y);
      let v_44 = r2.w;
      r2.z = select(r2.z, v_44, (v_43 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_45 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].zz);
      r3 = vec4<f32>(v_45.xy, r3.zw);
      let v_46 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 11i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_46.xy, r3.zw);
      let v_47 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_47.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 128i));
      let v_48 = bitcast<u32>(r1.y);
      let v_49 = r2.w;
      r2.z = select(r2.z, v_49, (v_48 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x) + 8i));
      let v_50 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r3 = vec4<f32>(v_50.xy, r3.zw);
      let v_51 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_51.xy, r3.zw);
      let v_52 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_52.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 256i));
      let v_53 = bitcast<u32>(r1.y);
      let v_54 = r2.w;
      r2.z = select(r2.z, v_54, (v_53 != 0u));
    }
    r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(9u, 10u, 11u, 12u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x) + 9i));
      let v_55 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].zz);
      r4 = vec4<f32>(v_55.xy, r4.zw);
      let v_56 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 4i))].yy, r1.xz, r4.xy);
      r4 = vec4<f32>(v_56.xy, r4.zw);
      let v_57 = (r4.xy + v1.xy);
      r4 = vec4<f32>(v_57.xy, r4.zw);
      r1.y = textureSample(t0, s0, r4.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 512i));
      let v_58 = bitcast<u32>(r1.y);
      let v_59 = r2.w;
      r2.z = select(r2.z, v_59, (v_58 != 0u));
    }
    if ((bitcast<u32>(r3.y) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_60 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 14i))].zz);
      r3 = vec4<f32>(v_60.xy, r3.zw);
      let v_61 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 14i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_61.xy, r3.zw);
      let v_62 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_62.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 1024i));
      let v_63 = bitcast<u32>(r1.y);
      let v_64 = r2.w;
      r2.z = select(r2.z, v_64, (v_63 != 0u));
    }
    if ((bitcast<u32>(r3.z) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_65 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 15i))].zz);
      r3 = vec4<f32>(v_65.xy, r3.zw);
      let v_66 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 15i))].yy, r1.xz, r3.xy);
      r3 = vec4<f32>(v_66.xy, r3.zw);
      let v_67 = (r3.xy + v1.xy);
      r3 = vec4<f32>(v_67.xy, r3.zw);
      r1.y = textureSample(t0, s0, r3.xyxx.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r2.w = bitcast<f32>((bitcast<i32>(r2.z) + 2048i));
      let v_68 = bitcast<u32>(r1.y);
      let v_69 = r2.w;
      r2.z = select(r2.z, v_69, (v_68 != 0u));
    }
    if ((bitcast<u32>(r3.w) != 0u)) {
      r1.y = icb0[bitcast<u32>((bitcast<i32>(r1.w) + 3i))].x;
      let v_70 = (r2.xy * icb0[bitcast<u32>((bitcast<i32>(r1.y) + 16i))].zz);
      r3 = vec4<f32>(v_70.xy, r3.zw);
      let v_71 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.y) + 16i))].yy, r1.xz, r3.xy);
      let v_72 = r1;
      r1 = vec4<f32>(v_72.x, v_71.x, v_72.z, v_71.y);
      let v_73 = (r1.yw + v1.xy);
      let v_74 = r1;
      r1 = vec4<f32>(v_74.x, v_73.x, v_74.z, v_73.y);
      r1.y = textureSample(t0, s0, r1.ywyy.xy).w;
      r1.y = (r1.y * cb12_12.tint_symbol_3[3u].z);
      r1.y = dot(r1.yy, cb2_2.tint_symbol[15u].xx);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.y)));
      r1.w = bitcast<f32>((bitcast<i32>(r2.z) + 4096i));
      let v_75 = bitcast<u32>(r1.y);
      let v_76 = r1.w;
      r2.z = select(r2.z, v_76, (v_75 != 0u));
    }
    r1.y = bitcast<f32>(select(0u, 4294967295u, (13u < bitcast<u32>(cb2_2.tint_symbol[19u].x))));
    if ((bitcast<u32>(r1.y) != 0u)) {
      let v_77 = (r2.xy * vec2<f32>(-0.4375f));
      let v_78 = r1;
      r1 = vec4<f32>(v_78.x, v_77.x, v_78.z, v_77.y);
      let v_79 = fma(r1.xz, vec2<f32>(0.4375f), r1.yw);
      r1 = vec4<f32>(v_79.xy, r1.zw);
      let v_80 = (r1.xy + v1.xy);
      r1 = vec4<f32>(v_80.xy, r1.zw);
      r1.x = textureSample(t0, s0, r1.xyxx.xy).w;
      r1.x = (r1.x * cb12_12.tint_symbol_3[3u].z);
      r1.x = dot(r1.xx, cb2_2.tint_symbol[15u].xx);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w < r1.x)));
      r1.y = bitcast<f32>((bitcast<i32>(r2.z) + 8192i));
      let v_81 = bitcast<u32>(r1.x);
      let v_82 = r1.y;
      r2.z = select(r2.z, v_82, (v_81 != 0u));
    }
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
    v_7((bitcast<u32>(r1.x) != 0u));
    o0.w = 1.0f;
    oMask[0u] = bitcast<u32>(r2.z);
  } else {
    r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[3u].z);
    r0.w = dot(r1.xx, r0.ww);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[3u].w >= r0.w)));
    v_7((bitcast<u32>(r1.x) != 0u));
    o0.w = r0.w;
    oMask[0u] = bitcast<u32>(bitcast<f32>(v.tint_symbol_4[2i].x));
  }
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb3_3.tint_symbol_1[50u].w))));
  r0.w = select(1.0f, -1.0f, (bitcast<u32>(r0.w) != 0u));
  let v_83 = (r0.www * v2.xyz);
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = textureSample(t3, s3, v1.xyxx.xy).xy;
  r2 = vec4<f32>(v_84.xy, r2.zw);
  let v_85 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_85.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb12_12.tint_symbol_3[0u].x, 0.00100000004749745131f);
  let v_86 = (r1.ww * r2.xy);
  r2 = vec4<f32>(v_86.xy, r2.zw);
  let v_87 = (r2.yyy * v4.xyz);
  r2 = vec4<f32>(r2.x, v_87.xyz);
  let v_88 = fma(r2.xxx, v3.xyz, r2.yzw);
  r2 = vec4<f32>(v_88.xyz, r2.w);
  let v_89 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_89.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_90 = fma(r1.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_90.xyz, r1.w);
  let v_91 = fma(cb12_12.tint_symbol_3[3u].xxx, r1.xyz, vec3<f32>(0.0f, 0.0f, 1.0f));
  r1 = vec4<f32>(v_91.xyz, r1.w);
  let v_92 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_92.xyz, o1.w);
  let v_93 = (v1.zz * cb2_2.tint_symbol[15u].zy);
  r1 = vec4<f32>(v_93.xy, r1.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r1.z = (r0.w * r1.y);
  let v_94 = (r1.xz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_94.xy, r1.zw);
  let v_95 = sqrt(r1.xy);
  o3 = vec4<f32>(v_95.xy, o3.zw);
  r0.w = ((-(v5.wwww)).w + 1.0f);
  r1 = vec4<f32>(((v5.www * v5.xyz)).xyz, r1.w);
  let v_96 = fma(r0.xyz, r0.www, r1.xyz);
  o0 = vec4<f32>(v_96.xyz, o0.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v1.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[4u].x * 0.49607843160629272461f);
}

fn v_7(v_97 : bool) {
  if (v_97) {
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
fn main(@builtin(position) v_98 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_98, v1, v2, v3, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3, oMask[0u]);
}
