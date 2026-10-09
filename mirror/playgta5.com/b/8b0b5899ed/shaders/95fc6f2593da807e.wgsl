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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
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
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r2 = (r2 * v3.xxxw);
  let v_6 = -(r2.xyxz);
  let v_7 = fma(cb12_12.tint_symbol_3[4u].xyz, cb12_12.tint_symbol_3[3u].yyy, v_6.xyw);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r0.xxx, r1.xyw, r2.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  o0.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_9 = ((-(r1.xywx)).xyz + r1.zzz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r0.yyy, r2.xyz, r1.xyw);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r1.x = max(cb12_12.tint_symbol_3[6u].w, 0.00100000004749745131f);
  r2 = textureSample(t3, s3, v1.xyxx.xy);
  let v_11 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = (r1.xx * r1.yz);
  r1 = vec4<f32>(v_13.x, r1.yz, v_13.y);
  r1.y = dot(r1.yz, r1.yz);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = sqrt(abs(r1.yyyy).y);
  let v_14 = (r1.www * v6.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_15.x, r1.y, v_15.yz);
  let v_16 = fma(r1.yyy, v2.xyz, r1.xzw);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  r2.x = fma(r1.z, r1.w, -0.34999999403953552246f);
  let v_17 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_18.xyz, o1.w);
  r1.x = clamp(((r2.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  let v_19 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r1.x = (r1.y * r1.x);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_21 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  r1.y = (r2.w * cb12_12.tint_symbol_3[5u].x);
  r3.y = (r1.y * 0.001953125f);
  r1.y = dot(r2.xyz, cb12_12.tint_symbol_3[6u].xyz);
  r1.y = (r1.y * cb12_12.tint_symbol_3[5u].y);
  r1.y = (r1.y * v3.x);
  r3.x = (r0.z * r1.y);
  r0.z = clamp(fma(r1.yyyy, r0.zzzz, vec4<f32>(0.40000000596046447754f)).z, 0.0f, 1.0f);
  let v_22 = -(r3.xyxx);
  let v_23 = fma(r0.zz, vec2<f32>(0.5f, 0.48828125f), v_22.xy);
  r2 = vec4<f32>(v_23.xy, r2.zw);
  r0.z = fma((-(r3.xxxx)).z, 0.5f, 1.0f);
  r0.z = (r0.z * r1.x);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_24 = (r0.zzz * r0.xyw);
  o0 = vec4<f32>(v_24.xyz, o0.w);
  o1.w = 0.0f;
  r2.z = 0.0f;
  let v_25 = max(r2.xyz, vec3<f32>());
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r3.z = cb12_12.tint_symbol_3[4u].w;
  let v_26 = fma(r0.xyz, r1.xxx, r3.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = sqrt(r0.xy);
  o2 = vec4<f32>(v_27.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.z);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_28 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_28.xy, r0.zw);
  let v_29 = sqrt(r0.xy);
  o3 = vec4<f32>(v_29.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
