diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = dot(v6.xyz, v6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xx * v6.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.5f);
  let v_1 = -(r0.zzzz);
  r0.z = fma(r1.w, cb12_12.tint_symbol_3[0u].x, v_1.z);
  let v_2 = fma(r0.zz, r0.xy, v2.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = textureSample(t0, s0, r0.xyxx.xy);
  r0 = textureSample(t2, s2, r0.xyxx.xy);
  r0.z = (r1.w * v1.w);
  o0.w = (r0.z * cb2_2.tint_symbol[15u].x);
  r0.z = dot(r0.xy, r0.xy);
  let v_3 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.00200000009499490261f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_4 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.w = max(cb12_12.tint_symbol_3[1u].w, 0.00100000004749745131f);
  let v_5 = (r0.ww * r0.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = sqrt(abs(r0.xxxx).x);
  let v_6 = (r2.yyy * v5.xyz);
  r2 = vec4<f32>(r2.x, v_6.xyz);
  let v_7 = fma(r2.xxx, v4.xyz, r2.yzw);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r0.xxx, v3.xyz, r2.xyz);
  r0 = vec4<f32>(v_8.xy, r0.z, v_8.z);
  r1.w = dot(r0.xyw, r0.xyw);
  r1.w = inverseSqrt(r1.w);
  r2.x = fma(r0.w, r1.w, -0.34999999403953552246f);
  let v_9 = (r0.xyw * r1.www);
  r0 = vec4<f32>(v_9.xy, r0.z, v_9.z);
  let v_10 = fma(r0.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_10.xyz, o1.w);
  r0.x = clamp(((r2.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_11 = (r0.zz * v1.xy);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.x, v_12.z, v_11.y);
  let v_13 = (r0.yw * cb2_2.tint_symbol[15u].zy);
  let v_14 = r2;
  r2 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r2.x = fma(r0.y, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_15 = (r2.xz * vec2<f32>(0.5f));
  let v_16 = r0;
  r0 = vec4<f32>(v_16.x, v_15.x, v_16.z, v_15.y);
  r0.x = (r0.x * r2.y);
  let v_17 = sqrt(r0.yw);
  o3 = vec4<f32>(v_17.xy, o3.zw);
  r2 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_18 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_18.xy, r2.zw);
  r0.y = (r2.w * cb12_12.tint_symbol_3[0u].z);
  r3.y = (r0.y * 0.001953125f);
  r0.y = dot(r2.xyz, cb12_12.tint_symbol_3[1u].xyz);
  r0.y = (r0.y * cb12_12.tint_symbol_3[0u].w);
  r3.x = (r0.z * r0.y);
  r0.y = clamp(fma(r0.yyyy, r0.zzzz, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  let v_19 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r2 = vec4<f32>(v_19.xy, r2.zw);
  r0.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_20 = (r0.yyy * r1.xyz);
  o0 = vec4<f32>(v_20.xyz, o0.w);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r2.z = 0.97000002861022949219f;
  r3.z = cb12_12.tint_symbol_3[0u].y;
  let v_21 = -(r3.xxyz);
  let v_22 = (r2.xyz + v_21.yzw);
  r0 = vec4<f32>(r0.x, v_22.xyz);
  let v_23 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_23.xyz);
  let v_24 = fma(r0.yzw, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = sqrt(r0.xy);
  o2 = vec4<f32>(v_25.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
