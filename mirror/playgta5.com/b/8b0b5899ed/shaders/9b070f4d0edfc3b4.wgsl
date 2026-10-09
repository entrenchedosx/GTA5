diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  let v = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (v1.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_2 = (r0.xxx * v2.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r4 = textureSample(t7, s7, v1.zwzz.xy);
  let v_3 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r3.w = dot(r0.xy, r0.xy);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = sqrt(abs(r3.wwww).w);
  r4.x = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  let v_4 = (r0.xy * r4.xx);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.yyy * v6.xyz);
  r4 = vec4<f32>(v_5.xyz, r4.w);
  let v_6 = fma(r0.xxx, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = fma(r3.www, v2.xyz, r4.xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = inverseSqrt(r0.x);
  r5 = textureSample(t8, s8, r0.zwzz.xy);
  let v_8 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_8.xy, r5.zw);
  r0.y = dot(r5.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_9 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = (v1.xy * cb11_11.tint_symbol_4[9u].zz);
  r6 = vec4<f32>(v_10.xy, r6.zw);
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r6 = textureSample(t4, s4, r6.xyxx.xy);
  r0.w = clamp(((v4.wwww + v4.wwww)).w, 0.0f, 1.0f);
  r3.w = (v4.w + -0.5f);
  r3.w = clamp(((r3.wwww + r3.wwww)).w, 0.0f, 1.0f);
  r0.w = (r7.w * r0.w);
  let v_11 = fma((-(r2.xyzx)).xyz, cb11_11.tint_symbol_4[0u].yzw, r7.xyz);
  r7 = vec4<f32>(v_11.xyz, r7.w);
  let v_12 = fma(r0.www, r7.xyz, r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = ((-(r5.xyzx)).xyz + r6.xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = fma(r3.www, r6.xyz, r5.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_15 = -(r5.xyzx);
  let v_16 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_15.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = fma(r0.www, r1.xyz, r5.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = -(r3.xyzx);
  let v_19 = fma(r4.xyz, r0.xxx, v_18.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r0.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r2 = (r2 * v3.xxxw);
  r0.x = (v3.x * cb2_2.tint_symbol[15u].z);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_21 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_21.xy, r3.zw);
  r0.w = (r3.x * v3.z);
  let v_22 = (r3.yy * v1.xy);
  let v_23 = r3;
  r3 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r4 = textureSample(t6, s6, r3.yzyy.xy);
  r1.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.y = ((-(r4.xxxx)).y + r4.z);
  r4.x = fma(r1.w, r3.y, r4.x);
  let v_24 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_25 = r3;
  r3 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  r1.w = fma(v3.z, r3.x, -1.0f);
  r1.w = fma(r3.x, r1.w, 1.0f);
  r3.x = (r1.w * r3.y);
  let v_26 = -(r2.xyxz);
  let v_27 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_26.xyw);
  r4 = vec4<f32>(v_27.xy, r4.z, v_27.z);
  let v_28 = fma(r3.xxx, r4.xyw, r2.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[2u].x);
  let v_29 = ((-(r2.xyxz)).xyw + r4.zzz);
  r3 = vec4<f32>(v_29.xy, r3.z, v_29.z);
  let v_30 = fma(r0.www, r3.xyw, r2.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  r0.w = fma((-(r3.zzzz)).w, r1.w, 1.0f);
  r3.x = (r0.w * r0.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  r3.w = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r3.w = (r3.w * v3.x);
  r0.y = (r0.y * r3.w);
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_31 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = fma(cb11_11.tint_symbol_4[7u].www, r4.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = (r0.yyy * cb11_11.tint_symbol_4[7u].xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  let v_34 = -(r4.xyzx);
  let v_35 = fma(v4.xyz, r3.www, v_34.xyz);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_36 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r0.y = dot(r1.xyz, r4.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r3.w = fma(cb11_11.tint_symbol_4[6u].x, r5.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r3.w);
  r0.y = exp2(r0.y);
  let v_37 = fma(r5.xyz, r0.yyy, r2.xyz);
  r4 = vec4<f32>(v_37.xyz, r4.w);
  let v_38 = bitcast<vec3<u32>>(r1.www);
  let v_39 = r4.xyz;
  let v_40 = select(r2.xyz, v_39, (v_38 != vec3<u32>()));
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = min(r2.xyz, vec3<f32>(240.0f));
  r2 = vec4<f32>(v_41.xyz, r2.w);
  r4.w = (r2.w * cb2_2.tint_symbol[15u].x);
  r0.y = (r1.z + -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.y = (r0.y * r1.w);
  r0.x = (r0.x * r0.y);
  r0.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_42 = (r0.yyy * r2.xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_43 = bitcast<vec4<u32>>(r0.yyyy);
  r2 = select(r4, v3, (v_43 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r2.w)));
  v_44((bitcast<u32>(r0.y) != 0u));
  r0.y = (r5.w * cb11_11.tint_symbol_4[4u].x);
  r1.w = (v3.x * cb2_2.tint_symbol[15u].y);
  r3.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r4.y = (r1.w * r3.w);
  let v_45 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = (r1.xyz * vec3<f32>(256.0f));
  r5 = vec4<f32>(v_46.xyz, r5.w);
  let v_47 = floor(r5.xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = -(r5.xyzx);
  let v_49 = fma(r1.xyz, vec3<f32>(256.0f), v_48.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  let v_50 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_50.xyz, r1.w);
  let v_51 = floor(r1.xyz);
  r1 = vec4<f32>(v_51.xyz, r1.w);
  r1.x = dot(r1.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r1.x * 0.0039215688593685627f);
  let v_52 = (r5.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_52.xyz, o1.w);
  r3.y = (r0.y * 0.001953125f);
  r4.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_53 = (r4.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_53.xy, r1.zw);
  let v_54 = sqrt(r1.xy);
  o3 = vec4<f32>(v_54.xy, o3.zw);
  r0.y = clamp(fma(r0.zzzz, r0.wwww, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  r3.z = cb11_11.tint_symbol_4[3u].w;
  let v_55 = -(r3.xyxx);
  let v_56 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_55.xy);
  r1 = vec4<f32>(v_56.xy, r1.zw);
  r1.z = 0.0f;
  let v_57 = max(r1.xyz, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_57.xyz);
  let v_58 = fma(r0.yzw, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = sqrt(r0.xy);
  o2 = vec4<f32>(v_59.xy, o2.zw);
  o0 = r2;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_44(v_60 : bool) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
