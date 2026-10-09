diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  let v = (v7.xyz.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (v7.xyz.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r3 = textureSample(t8, s8, v1.xyxx.xy);
  r4 = textureSample(t7, s7, v7.xyz.xyxx.xy);
  r0.x = min(cb11_11.tint_symbol_4[2u].x, 0.5f);
  let v_2 = ((-(r3.xxxy)).zw + r4.xy);
  r3 = vec4<f32>(r3.xy, v_2.xy);
  let v_3 = fma(r0.xx, r3.zw, r3.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r3.x = dot(r0.xy, r0.xy);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = sqrt(abs(r3.xxxx).x);
  r3.y = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_5 = (r0.xy * r3.yy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.yyy * v6.xyz);
  r3 = vec4<f32>(r3.x, v_6.xyz);
  let v_7 = fma(r0.xxx, v5.xyz, r3.yzw);
  r3 = vec4<f32>(r3.x, v_7.xyz);
  let v_8 = fma(r3.xxx, v2.xyz, r3.yzw);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_9 = (r0.xxx * r3.xyz);
  r3 = vec4<f32>(v_9.xy, r3.z, v_9.z);
  r4 = textureSample(t9, s9, r0.zwzz.xy);
  let v_10 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_10.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_11 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = (v1.xy * cb11_11.tint_symbol_4[9u].zz);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  r6 = textureSample(t3, s3, r5.xyxx.xy);
  r5 = textureSample(t4, s4, r5.xyxx.xy);
  r0.w = clamp(((v7.xyz.zzzz + v7.xyz.zzzz)).w, 0.0f, 1.0f);
  r5.w = (v7.z + -0.5f);
  r5.w = clamp(((r5.wwww + r5.wwww)).w, 0.0f, 1.0f);
  r0.w = (r6.w * r0.w);
  let v_13 = fma((-(r2.xyzx)).xyz, cb11_11.tint_symbol_4[0u].yzw, r6.xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = fma(r0.www, r6.xyz, r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = ((-(r4.xyzx)).xyz + r5.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = fma(r5.www, r5.xyz, r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_17 = -(r4.xyzx);
  let v_18 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_17.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(r0.www, r1.xyz, r4.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r1 = (r2 * v3.xxxw);
  r0.w = (v3.x * cb2_2.tint_symbol[15u].z);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_20 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  r2.z = (r2.x * v3.z);
  let v_21 = (r2.yy * v7.xyz.xy);
  let v_22 = r2;
  r2 = vec4<f32>(v_22.x, v_21.x, v_22.z, v_21.y);
  r5 = textureSample(t6, s6, r2.ywyy.xy);
  r2.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r2.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r2.y, r2.w, r5.x);
  let v_23 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_24 = r2;
  r2 = vec4<f32>(v_24.x, v_23.x, v_24.z, v_23.y);
  r4.x = fma(v3.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r4.x, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_25 = -(r1.xyzx);
  let v_26 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_25.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r2.y = (r2.z * cb11_11.tint_symbol_4[2u].x);
  let v_28 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  r2.x = fma((-(r2.wwww)).x, r2.x, 1.0f);
  r4.x = (r0.z * r2.x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  r2.z = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r2.z = (r2.z * v3.x);
  r0.y = (r0.y * r2.z);
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_30 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = fma(cb11_11.tint_symbol_4[7u].www, r5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = (r0.yyy * cb11_11.tint_symbol_4[7u].xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = -(r5.xyzx);
  let v_34 = fma(v4.xyz, r2.zzz, v_33.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_35 = (r0.yyy * r5.xyz);
  r5 = vec4<f32>(v_35.xyz, r5.w);
  r0.y = dot(r3.xyw, r5.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r2.z = fma(cb11_11.tint_symbol_4[6u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r2.z);
  r0.y = exp2(r0.y);
  let v_36 = fma(r6.xyz, r0.yyy, r1.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  let v_37 = bitcast<vec3<u32>>(r2.yyy);
  let v_38 = r5.xyz;
  let v_39 = select(r1.xyz, v_38, (v_37 != vec3<u32>()));
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r5.w = (r1.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(r3.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.w * r0.x);
  r0.y = fma((-(r4.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_41 = (r0.yyy * r1.xyz);
  r5 = vec4<f32>(v_41.xyz, r5.w);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_42 = bitcast<vec4<u32>>(r0.yyyy);
  r1 = select(r5, v3, (v_42 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.w)));
  v_43((bitcast<u32>(r0.y) != 0u));
  r0.y = (r4.w * cb11_11.tint_symbol_4[4u].x);
  r0.w = (v3.x * cb2_2.tint_symbol[15u].y);
  r2.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r5.y = (r0.w * r2.y);
  let v_44 = fma(r3.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r2 = vec4<f32>(r2.x, v_44.xyz);
  let v_45 = (r2.yzw * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = floor(r3.xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = -(r3.xxyz);
  let v_48 = fma(r2.yzw, vec3<f32>(256.0f), v_47.yzw);
  r2 = vec4<f32>(r2.x, v_48.xyz);
  let v_49 = (r2.yzw * vec3<f32>(8.0f, 8.0f, 4.0f));
  r2 = vec4<f32>(r2.x, v_49.xyz);
  let v_50 = floor(r2.yzw);
  r2 = vec4<f32>(r2.x, v_50.xyz);
  r0.w = dot(r2.yzw, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.w * 0.0039215688593685627f);
  let v_51 = (r3.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_51.xyz, o1.w);
  r4.y = (r0.y * 0.001953125f);
  r5.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_52 = (r5.xy * vec2<f32>(0.5f));
  let v_53 = r0;
  r0 = vec4<f32>(v_53.x, v_52.x, v_53.z, v_52.y);
  let v_54 = sqrt(r0.yw);
  o3 = vec4<f32>(v_54.xy, o3.zw);
  r0.y = clamp(fma(r0.zzzz, r2.xxxx, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  r4.z = cb11_11.tint_symbol_4[3u].w;
  let v_55 = -(r4.xyxx);
  let v_56 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_55.xy);
  r2 = vec4<f32>(v_56.xy, r2.zw);
  r2.z = 0.0f;
  let v_57 = max(r2.xyz, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_57.xyz);
  let v_58 = fma(r0.yzw, r0.xxx, r4.xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = sqrt(r0.xy);
  o2 = vec4<f32>(v_59.xy, o2.zw);
  o0 = r1;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_43(v_60 : bool) {
  if (v_60) {
    discard;
    return;
  }
}

struct tint_symbol_5 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3);
}
