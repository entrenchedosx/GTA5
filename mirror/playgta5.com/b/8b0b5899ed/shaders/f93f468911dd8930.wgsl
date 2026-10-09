diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol_2[3u].z * cb12_12.tint_symbol_3[3u].z);
  let v = ((-(cb12_12.tint_symbol_3[3u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.zz * v1.zw);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t2, s2, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r1.x = fma(r0.x, r0.z, r1.x);
  let v_3 = (r1.xy * cb12_12.tint_symbol_3[3u].xx);
  let v_4 = r0;
  r0 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  r0.w = fma(v3.z, r0.y, -1.0f);
  r0.w = fma(r0.y, r0.w, 1.0f);
  r0.y = (r0.y * v3.z);
  r0.y = (r0.y * cb12_12.tint_symbol_3[3u].x);
  r0.x = (r0.w * r0.x);
  r0.z = fma((-(r0.zzzz)).z, r0.w, 1.0f);
  r2 = textureSample(t0, s0, v1.xyxx.xy);
  let v_5 = (r2.xyz * cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  r0.w = (r2.w * v3.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_6 = -(r1.xywx);
  let v_7 = fma(cb12_12.tint_symbol_3[4u].xyz, cb12_12.tint_symbol_3[3u].yyy, v_6.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r0.xxx, r2.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  let v_9 = ((-(r1.xywx)).xyz + r1.zzz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r0.yyy, r2.xyz, r1.xyw);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_11 = ((-(cb3_3.tint_symbol_1[0u].xxyz)).yzw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = fma(cb12_12.tint_symbol_3[5u].www, r1.yzw, cb3_3.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = -(r1.yzwy);
  let v_14 = fma(v4.xyz, r1.xxx, v_13.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.xyxx.xy);
  let v_16 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = (r2.yyy * v6.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r2.xxx, v5.xyz, r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  let v_19 = fma(r1.www, v2.xyz, r3.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_20.xy, r2.z, v_20.z);
  r1.w = fma(r2.z, r1.w, -0.34999999403953552246f);
  r1.w = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = dot(r2.xyw, r1.xyz);
  let v_21 = fma(r2.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_21.xyz, o1.w);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_22 = (r2.xy * r2.xy);
  let v_23 = r3;
  r3 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r3.w = ((-(r2.zzzz)).w + 1.0f);
  r1.y = fma(r3.z, 7.0f, 0.00000000999999993923f);
  r1.x = (r1.x * r1.y);
  r1.x = exp2(r1.x);
  r1.y = (v3.x * cb12_12.tint_symbol_3[3u].w);
  r1.y = (r3.y * r1.y);
  r1.y = (r1.y * 1.5f);
  let v_24 = fma(r1.yyy, r1.xxx, r0.xyw);
  r0 = vec4<f32>(v_24.xy, r0.z, v_24.z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.x = (r1.x * r1.w);
  r1.x = (r1.x * cb2_2.tint_symbol[15u].z);
  r1.y = (r3.y * v3.x);
  r3.x = (r0.z * r1.y);
  r0.z = clamp(fma(r1.yyyy, r0.zzzz, vec4<f32>(0.40000000596046447754f)).z, 0.0f, 1.0f);
  let v_25 = -(r3.xzxx);
  let v_26 = fma(r0.zz, vec2<f32>(0.5f, 0.48828125f), v_25.xy);
  r2 = vec4<f32>(v_26.xy, r2.zw);
  r0.z = fma((-(r3.xxxx)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r1.x);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_27 = (r0.zzz * r0.xyw);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  o1.w = 0.0f;
  r2.z = 0.0f;
  let v_28 = max(r2.xyz, vec3<f32>());
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = fma(r0.xyz, r1.xxx, r3.xzw);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = sqrt(r0.xy);
  o2 = vec4<f32>(v_30.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].y);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_31 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_31.xy, r0.zw);
  let v_32 = sqrt(r0.xy);
  o3 = vec4<f32>(v_32.xy, o3.zw);
  r0.x = (v3.x * cb12_12.tint_symbol_3[2u].x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[3u].z);
  o3.z = clamp(((r0.xxxx * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  o3.w = 1.00188386440277099609f;
}

struct tint_symbol_4 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
