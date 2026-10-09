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

var<private> oMask : array<u32, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = max(v0.xy, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>(insertBits(0u, bitcast<u32>(r0.y), 1u, 1u));
  let v_5 = bitcast<u32>(r0.x);
  r0.x = bitcast<f32>(insertBits(bitcast<u32>(r0.y), v_5, 0u, 1u));
  r0.x = dot(cb2_2.tint_symbol_1[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_6((bitcast<u32>(r0.x) != 0u));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_3[6u].w)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_7 = dpdxCoarse(v1.xyz.xy);
    let v_8 = r0;
    r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
    let v_9 = dpdyCoarse(v1.xyz.xy);
    r1 = vec4<f32>(v_9.xy, r1.zw);
    r0.w = bitcast<f32>(firstTrailingBit(bitcast<u32>(cb2_2.tint_symbol_1[19u].x)));
    r0.w = bitcast<f32>((bitcast<i32>(r0.w) + -1i));
    let v_10 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(1u, 2u, 3u) < bitcast<vec3<u32>>(cb2_2.tint_symbol_1[19u].xxx))));
    r2 = vec4<f32>(v_10.xyz, r2.w);
    if ((bitcast<u32>(cb2_2.tint_symbol_1[19u].x) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_11 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].zz);
      r3 = vec4<f32>(v_11.xy, r3.zw);
      let v_12 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].yy, r0.yz, r3.xy);
      r1 = vec4<f32>(r1.xy, v_12.xy);
      let v_13 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_13.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r3.x = bitcast<f32>((bitcast<u32>(r1.z) & 1u));
    } else {
      r3.x = 0.0f;
    }
    if ((bitcast<u32>(r2.x) != 0u)) {
      r1.z = bitcast<f32>((1i + bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x)));
      let v_14 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].zz);
      r2 = vec4<f32>(v_14.x, r2.yz, v_14.y);
      let v_15 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].yy, r0.yz, r2.xw);
      r1 = vec4<f32>(r1.xy, v_15.xy);
      let v_16 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_16.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 2i));
      let v_17 = bitcast<u32>(r1.z);
      let v_18 = r1.w;
      r3.x = select(r3.x, v_18, (v_17 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_19 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 6i))].zz);
      r2 = vec4<f32>(v_19.xy, r2.zw);
      let v_20 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 6i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_20.xy);
      let v_21 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_21.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 4i));
      let v_22 = bitcast<u32>(r1.z);
      let v_23 = r1.w;
      r3.x = select(r3.x, v_23, (v_22 != 0u));
    }
    if ((bitcast<u32>(r2.z) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_24 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 7i))].zz);
      r2 = vec4<f32>(v_24.xy, r2.zw);
      let v_25 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 7i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_25.xy);
      let v_26 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_26.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 8i));
      let v_27 = bitcast<u32>(r1.z);
      let v_28 = r1.w;
      r3.x = select(r3.x, v_28, (v_27 != 0u));
    }
    r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(4u, 5u, 6u, 7u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_29 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 8i))].zz);
      r4 = vec4<f32>(v_29.xy, r4.zw);
      let v_30 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 8i))].yy, r0.yz, r4.xy);
      r1 = vec4<f32>(r1.xy, v_30.xy);
      let v_31 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_31.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 16i));
      let v_32 = bitcast<u32>(r1.z);
      let v_33 = r1.w;
      r3.x = select(r3.x, v_33, (v_32 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_34 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 9i))].zz);
      r2 = vec4<f32>(v_34.xy, r2.zw);
      let v_35 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 9i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_35.xy);
      let v_36 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_36.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 32i));
      let v_37 = bitcast<u32>(r1.z);
      let v_38 = r1.w;
      r3.x = select(r3.x, v_38, (v_37 != 0u));
    }
    if ((bitcast<u32>(r2.z) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_39 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 10i))].zz);
      r2 = vec4<f32>(v_39.xy, r2.zw);
      let v_40 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 10i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_40.xy);
      let v_41 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_41.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 64i));
      let v_42 = bitcast<u32>(r1.z);
      let v_43 = r1.w;
      r3.x = select(r3.x, v_43, (v_42 != 0u));
    }
    if ((bitcast<u32>(r2.w) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_44 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 11i))].zz);
      r2 = vec4<f32>(v_44.xy, r2.zw);
      let v_45 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 11i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_45.xy);
      let v_46 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_46.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 128i));
      let v_47 = bitcast<u32>(r1.z);
      let v_48 = r1.w;
      r3.x = select(r3.x, v_48, (v_47 != 0u));
    }
    r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(8u, 9u, 10u, 11u) < bitcast<vec4<u32>>(cb2_2.tint_symbol_1[19u].xxxx))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r1.z = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x) + 8i));
      let v_49 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].zz);
      r4 = vec4<f32>(v_49.xy, r4.zw);
      let v_50 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].yy, r0.yz, r4.xy);
      r1 = vec4<f32>(r1.xy, v_50.xy);
      let v_51 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_51.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 256i));
      let v_52 = bitcast<u32>(r1.z);
      let v_53 = r1.w;
      r3.x = select(r3.x, v_53, (v_52 != 0u));
    }
    if ((bitcast<u32>(r2.y) != 0u)) {
      r1.z = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x) + 9i));
      let v_54 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].zz);
      r2 = vec4<f32>(v_54.xy, r2.zw);
      let v_55 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 4i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_55.xy);
      let v_56 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_56.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 512i));
      let v_57 = bitcast<u32>(r1.z);
      let v_58 = r1.w;
      r3.x = select(r3.x, v_58, (v_57 != 0u));
    }
    if ((bitcast<u32>(r2.z) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_59 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 14i))].zz);
      r2 = vec4<f32>(v_59.xy, r2.zw);
      let v_60 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 14i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_60.xy);
      let v_61 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_61.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 1024i));
      let v_62 = bitcast<u32>(r1.z);
      let v_63 = r1.w;
      r3.x = select(r3.x, v_63, (v_62 != 0u));
    }
    if ((bitcast<u32>(r2.w) != 0u)) {
      r1.z = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_64 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r1.z) + 15i))].zz);
      r2 = vec4<f32>(v_64.xy, r2.zw);
      let v_65 = fma(icb0[bitcast<u32>((bitcast<i32>(r1.z) + 15i))].yy, r0.yz, r2.xy);
      r1 = vec4<f32>(r1.xy, v_65.xy);
      let v_66 = (r1.zw + v1.xyz.xy);
      r1 = vec4<f32>(r1.xy, v_66.xy);
      r1.z = textureSample(t0, s0, r1.zwzz.xy).w;
      r1.z = (r1.z * cb2_2.tint_symbol_1[15u].x);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r1.z)));
      r1.w = bitcast<f32>((bitcast<i32>(r3.x) + 2048i));
      let v_67 = bitcast<u32>(r1.z);
      let v_68 = r1.w;
      r3.x = select(r3.x, v_68, (v_67 != 0u));
    }
    let v_69 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<u32>(12u, 13u) < bitcast<vec2<u32>>(cb2_2.tint_symbol_1[19u].xx))));
    r1 = vec4<f32>(r1.xy, v_69.xy);
    if ((bitcast<u32>(r1.z) != 0u)) {
      r0.w = icb0[bitcast<u32>((bitcast<i32>(r0.w) + 3i))].x;
      let v_70 = (r1.xy * icb0[bitcast<u32>((bitcast<i32>(r0.w) + 16i))].zz);
      r2 = vec4<f32>(v_70.xy, r2.zw);
      let v_71 = fma(icb0[bitcast<u32>((bitcast<i32>(r0.w) + 16i))].yy, r0.yz, r2.xy);
      r2 = vec4<f32>(v_71.xy, r2.zw);
      let v_72 = (r2.xy + v1.xyz.xy);
      r2 = vec4<f32>(v_72.xy, r2.zw);
      r0.w = textureSample(t0, s0, r2.xyxx.xy).w;
      r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.w)));
      r1.z = bitcast<f32>((bitcast<i32>(r3.x) + 4096i));
      let v_73 = bitcast<u32>(r0.w);
      let v_74 = r1.z;
      r3.x = select(r3.x, v_74, (v_73 != 0u));
    }
    if ((bitcast<u32>(r1.w) != 0u)) {
      let v_75 = (r1.xy * vec2<f32>(-0.4375f));
      r1 = vec4<f32>(v_75.xy, r1.zw);
      let v_76 = fma(r0.yz, vec2<f32>(0.4375f), r1.xy);
      let v_77 = r0;
      r0 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
      let v_78 = (r0.yz + v1.xyz.xy);
      let v_79 = r0;
      r0 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
      r0.y = textureSample(t0, s0, r0.yzyy.xy).w;
      r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
      r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f < r0.y)));
      r0.z = bitcast<f32>((bitcast<i32>(r3.x) + 8192i));
      let v_80 = bitcast<u32>(r0.y);
      let v_81 = r0.z;
      r3.x = select(r3.x, v_81, (v_80 != 0u));
    }
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) == 0i)));
    v_6((bitcast<u32>(r0.y) != 0u));
  } else {
    let v_82 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
    let v_83 = r0;
    r0 = vec4<f32>(v_83.x, v_82.xy, v_83.w);
    let v_84 = (r0.yz * vec2<f32>(0.5f));
    let v_85 = r0;
    r0 = vec4<f32>(v_85.x, v_84.xy, v_85.w);
    r0.y = textureSample(t3, s3, r0.yzyy.xy).w;
    r0.z = textureSample(t0, s0, v1.xyz.xyxx.xy).w;
    r0.z = (r0.z * cb2_2.tint_symbol_1[15u].x);
    r0.y = clamp(fma(r0.yyyy, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).y, 0.0f, 1.0f);
    r0.y = (r0.y * r0.z);
    r0.z = textureSample(t4, s4, v7.xy.xyxx.xy).x;
    r0.y = (r0.z * r0.y);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.y)));
    v_6((bitcast<u32>(r0.y) != 0u));
    r3.x = bitcast<f32>(v.tint_symbol_7[2i].x);
  }
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  let v_86 = textureSample(t5, s5, v1.xyz.xyxx.xy).xy;
  let v_87 = r0;
  r0 = vec4<f32>(v_87.x, v_86.xy, v_87.w);
  let v_88 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_89 = r0;
  r0 = vec4<f32>(v_89.x, v_88.xy, v_89.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r2.x = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_90 = (r0.yz * r2.xx);
  let v_91 = r0;
  r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
  let v_92 = (r0.zzz * v6.xyz);
  r2 = vec4<f32>(v_92.xyz, r2.w);
  let v_93 = fma(r0.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  let v_94 = fma(r0.www, v2.xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_94.xyz);
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_95 = (r0.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_95.xyz);
  let v_96 = textureSample(t6, s6, v1.xyz.xyxx.xy).xyz;
  r4 = vec4<f32>(v_96.xyz, r4.w);
  let v_97 = (r4.yx * r4.yx);
  let v_98 = r0;
  r0 = vec4<f32>(v_98.x, v_97.xy, v_98.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r4.y = textureSample(t4, s4, v7.xy.xyxx.xy).x;
  r1.w = (r1.w * r4.y);
  let v_99 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_100 = r4;
  r4 = vec4<f32>(v_100.x, v_99.x, v_100.z, v_99.y);
  r5.x = fma(r2.w, 0.5f, 0.5f);
  r5.y = fma(r5.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.x = (r5.x + 0.30000001192092895508f);
  r4.w = (r4.w * r5.x);
  let v_101 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  let v_102 = r5;
  r5 = vec4<f32>(v_101.x, v_102.y, v_101.y, v_102.w);
  let v_103 = clamp(((r5.xxzx * vec4<f32>(4.0f, 0.0f, 4.0f, 0.0f))).xz, vec2<f32>(), vec2<f32>(1.0f));
  let v_104 = r5;
  r5 = vec4<f32>(v_103.x, v_104.y, v_103.y, v_104.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.x) == 0i)));
  let v_105 = (r1.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r6 = vec4<f32>(v_105.xyz, r6.w);
  let v_106 = (r5.xxx * r6.xyz);
  r6 = vec4<f32>(v_106.xyz, r6.w);
  let v_107 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r5.www) & bitcast<vec3<u32>>(r6.xyz)));
  r6 = vec4<f32>(v_107.xyz, r6.w);
  let v_108 = -(r6.xyzx);
  let v_109 = (r1.xyz + v_108.xyz);
  r1 = vec4<f32>(v_109.xyz, r1.w);
  let v_110 = (r5.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_111 = r5;
  r5 = vec4<f32>(v_110.x, v_111.y, v_110.y, v_111.w);
  let v_112 = fma(r0.yz, cb10_10.tint_symbol_5[3u].zw, r5.xz);
  let v_113 = r0;
  r0 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  let v_114 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r1 = vec4<f32>(v_114.xyz, r1.w);
  r5.x = bitcast<f32>((bitcast<u32>(r4.x) & 1008981770u));
  r4.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r4.x) != 0u));
  r0.z = (r0.z + r4.x);
  r0.z = fma(cb13_13.tint_symbol_4[4u].z, r0.z, r5.x);
  r4.x = dot(v4.xyz, v4.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_115 = (r4.xxx * v4.xyz);
  r5 = vec4<f32>(v_115.x, r5.y, v_115.yz);
  let v_116 = dot(r5.xzw, r2.yzw);
  r4.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  r4.x = ((-(r4.xxxx)).x + 1.0f);
  r4.x = fma(r4.x, 0.40000000596046447754f, 0.5f);
  r0.w = fma(r0.w, r2.x, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r2.x = clamp(v8.x, 0.0f, 1.0f);
  r2.x = (r2.x * r4.x);
  r0.w = (r0.w * r2.x);
  let v_117 = (r1.xyz * r0.www);
  r6 = vec4<f32>(v_117.xyz, r6.w);
  let v_118 = fma(r6.xyz, cb13_13.tint_symbol_4[4u].yyy, r1.xyz);
  r1 = vec4<f32>(v_118.xyz, r1.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_119 = (r0.www * v6.xyz);
  r6 = vec4<f32>(v_119.xyz, r6.w);
  r7 = (v1.xyz.xyxy * cb10_10.tint_symbol_5[2u]);
  r7 = (r7 * vec4<f32>(0.5f));
  let v_120 = textureSample(t3, s3, r7.xyxx.xy).xw;
  r7 = vec4<f32>(v_120.xy, r7.zw);
  let v_121 = textureSample(t3, s3, r7.zwzz.xy).xy;
  r7 = vec4<f32>(r7.xy, v_121.xy);
  let v_122 = fma(r7.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r7 = vec4<f32>(r7.xy, v_122.xy);
  let v_123 = (r7.zw * vec2<f32>(0.10000000149011611938f));
  r7 = vec4<f32>(r7.xy, v_123.xy);
  let v_124 = fma(v2.xyz, r7.zzz, r6.xyz);
  r8 = vec4<f32>(v_124.xyz, r8.w);
  r0.w = dot(r8.xyz, r8.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_125 = (r0.www * r8.xyz);
  r8 = vec4<f32>(v_125.xyz, r8.w);
  r0.w = dot(r5.xzw, r8.xyz);
  r2.x = dot(cb1_1.tint_symbol[14u].xyz, r8.xyz);
  let v_126 = fma(v2.xyz, r7.www, r6.xyz);
  r6 = vec4<f32>(v_126.xyz, r6.w);
  r4.x = dot(r6.xyz, r6.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_127 = (r4.xxx * r6.xyz);
  r6 = vec4<f32>(v_127.xyz, r6.w);
  r4.x = dot(r5.xzw, r6.xyz);
  r5.x = dot(cb1_1.tint_symbol[14u].xyz, r6.xyz);
  r5.z = fma((-(r0.wwww)).z, r0.w, 1.0f);
  r5.w = fma((-(r2.xxxx)).w, r2.x, 1.0f);
  let v_128 = sqrt(r5.zw);
  r5 = vec4<f32>(r5.xy, v_128.xy);
  r0.w = (r0.w * r2.x);
  let v_129 = -(r0.wwww);
  r0.w = fma(r5.z, r5.w, v_129.w);
  r2.x = fma((-(r4.xxxx)).x, r4.x, 1.0f);
  r2.x = sqrt(r2.x);
  r5.z = fma((-(r5.xxxx)).z, r5.x, 1.0f);
  r5.z = sqrt(r5.z);
  r4.x = (r4.x * r5.x);
  let v_130 = -(r4.xxxx);
  r2.x = fma(r2.x, r5.z, v_130.x);
  let v_131 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_132 = r5;
  r5 = vec4<f32>(v_131.x, v_132.y, v_131.y, v_132.w);
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
  let v_133 = bitcast<u32>(r4.x);
  r0.w = select(1.0f, r0.w, (v_133 != 0u));
  r0.z = (r0.w * r0.z);
  let v_134 = (r2.xxx * cb10_10.tint_symbol_5[1u].xyz);
  r5 = vec4<f32>(v_134.x, r5.y, v_134.yz);
  let v_135 = (r4.zzz * r5.xzw);
  r5 = vec4<f32>(v_135.x, r5.y, v_135.yz);
  let v_136 = fma(r5.xzw, vec3<f32>(0.5f), r1.xyz);
  o0 = vec4<f32>(v_136.xyz, o0.w);
  r0.w = clamp(fma(r7.yyyy, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  r1.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r1.y = (r1.x * r4.w);
  r3.z = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_137 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_137.xyz, o1.w);
  r0.y = (r0.y * 0.001953125f);
  r1.x = fma(r5.y, r4.y, cb3_3.tint_symbol_2[45u].w);
  let v_138 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_138.xy, r1.zw);
  let v_139 = sqrt(r1.xy);
  o3 = vec4<f32>(v_139.xy, o3.zw);
  let v_140 = sqrt(r0.zy);
  o2 = vec4<f32>(v_140.xy, o2.zw);
  let v_141 = r3;
  let v_142 = vec2<f32>(1.0f, bitcast<f32>(v.tint_symbol_7[2i].x));
  r3 = vec4<f32>(v_141.x, v_142.x, v_141.z, v_142.y);
  let v_143 = bitcast<vec2<u32>>(r0.xx);
  let v_144 = r3.yx;
  let v_145 = select(r3.zw, v_144, (v_143 != vec2<u32>()));
  r0 = vec4<f32>(v_145.xy, r0.zw);
  o0.w = r0.x;
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
  oMask[0u] = bitcast<u32>(r0.y);
}

fn v_6(v_146 : bool) {
  if (v_146) {
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
fn main(@builtin(position) v_147 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v_147, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_9(o0, o1, o2, o3, oMask[0u]);
}
