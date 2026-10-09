diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.zwzz.xy);
  r0.w = (r0.w * cb11_11.tint_symbol_4[1u].w);
  let v = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r1 = vec4<f32>(v.xy, r1.zw);
  r1 = textureSample(t0, s0, r1.xyxx.xy);
  let v_1 = (r1.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r1.w = (r1.w * v3.w);
  r2.w = (r1.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(r1.xyzx);
  let v_3 = fma(r0.xyz, cb11_11.tint_symbol_4[1u].xyz, v_2.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(r0.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(r0.xyzx);
  let v_6 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[3u].z);
  let v_7 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = (r3.yy * v1.xy);
  let v_9 = r3;
  r3 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r4 = textureSample(t4, s4, r3.yzyy.xy);
  r1.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r0.w, r1.w, r4.x);
  let v_10 = (r4.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r0.w = fma(v3.z, r3.x, -1.0f);
  r0.w = fma(r3.x, r0.w, 1.0f);
  r1.w = (r3.x * v3.z);
  r1.w = (r1.w * cb11_11.tint_symbol_4[3u].x);
  r3.x = (r0.w * r3.y);
  r0.w = fma((-(r3.zzzz)).w, r0.w, 1.0f);
  let v_12 = fma(r3.xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = ((-(r0.xyzx)).xyz + r4.zzz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_15 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(r1.x, v_15.xyz);
  let v_16 = fma(cb11_11.tint_symbol_4[8u].www, r1.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(r1.x, v_16.xyz);
  let v_17 = -(r1.yzwy);
  let v_18 = fma(v4.xyz, r1.xxx, v_17.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * v2.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r1.w = fma(v2.z, r1.w, -0.34999999403953552246f);
  r1.w = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = dot(r3.xyz, r1.xyz);
  let v_21 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_22 = (v1.xy * cb11_11.tint_symbol_4[6u].ww);
  let v_23 = r1;
  r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r4 = textureSample(t5, s5, r1.yzyy.xy);
  r1.y = fma(cb11_11.tint_symbol_4[7u].x, r4.w, 0.00000000999999993923f);
  r1.x = (r1.x * r1.y);
  r1.x = exp2(r1.x);
  let v_24 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_24.xy, r4.zw);
  r1.y = (r4.w * cb11_11.tint_symbol_4[5u].x);
  r5.y = (r1.y * 0.001953125f);
  r1.y = dot(r4.xyz, cb11_11.tint_symbol_4[6u].xyz);
  r1.z = (cb11_11.tint_symbol_4[3u].w * cb11_11.tint_symbol_4[7u].y);
  r1.z = (r1.z * v3.x);
  r1.z = (r1.y * r1.z);
  r1.y = (r1.y * cb11_11.tint_symbol_4[5u].y);
  r1.y = (r1.y * v3.x);
  r1.y = (r1.y * v2.w);
  let v_25 = (r1.zzz * cb11_11.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = fma(r4.xyz, r1.xxx, r0.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[7u].y)));
  let v_27 = bitcast<vec3<u32>>(r1.xxx);
  let v_28 = r4.xyz;
  let v_29 = select(r0.xyz, v_28, (v_27 != vec3<u32>()));
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.x = (r1.x * r1.w);
  r1.x = (r1.x * cb2_2.tint_symbol[15u].z);
  r5.x = (r0.w * r1.y);
  r0.w = clamp(fma(r1.yyyy, r0.wwww, vec4<f32>(0.40000000596046447754f)).w, 0.0f, 1.0f);
  let v_31 = -(r5.xyxx);
  let v_32 = fma(r0.ww, vec2<f32>(0.5f, 0.48828125f), v_31.xy);
  r4 = vec4<f32>(v_32.xy, r4.zw);
  r0.w = fma((-(r5.xxxx)).w, 0.5f, 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_33 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_34 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_34 != vec4<u32>()));
  let v_35 = (r3.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = floor(r0.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = -(r0.xxyz);
  let v_38 = fma(r3.xyz, vec3<f32>(256.0f), v_37.yzw);
  r1 = vec4<f32>(r1.x, v_38.xyz);
  let v_39 = (r0.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_39.xyz, o1.w);
  let v_40 = (r1.yzw * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_40.xyz, r0.w);
  let v_41 = floor(r0.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r4.z = 0.0f;
  let v_42 = max(r4.xyz, vec3<f32>());
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r5.z = cb11_11.tint_symbol_4[4u].w;
  let v_43 = fma(r0.xyz, r1.xxx, r5.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = sqrt(r0.xy);
  o2 = vec4<f32>(v_44.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].y);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_45 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_45.xy, r0.zw);
  let v_46 = sqrt(r0.xy);
  o3 = vec4<f32>(v_46.xy, o3.zw);
  r0.x = (v3.x * cb11_11.tint_symbol_4[2u].x);
  r0.x = (r0.x * cb11_11.tint_symbol_4[3u].z);
  o3.z = clamp(((r0.xxxx * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  o3.w = 1.00188386440277099609f;
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3);
}
