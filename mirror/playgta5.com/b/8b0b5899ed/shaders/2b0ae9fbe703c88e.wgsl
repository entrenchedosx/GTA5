diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb4_struct_1;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = textureSample(t5, s5, v2.xy.xyxx.xy);
  r0.x = dot(cb13_13.tint_symbol_3[2u], r0);
  r1 = textureSample(t6, s6, v2.xy.xyxx.xy);
  r0.y = dot(cb13_13.tint_symbol_3[3u], r1);
  r0.x = (r0.y + r0.x);
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r0.y = dot(cb13_13.tint_symbol_3[0u], r1);
  r1 = textureSample(t4, s4, v2.xy.xyxx.xy);
  r0.z = dot(cb13_13.tint_symbol_3[1u], r1);
  r0.y = (r0.z + r0.y);
  r1 = textureSample(t7, s7, v2.xy.xyxx.xy);
  r2 = textureSample(t9, s9, v2.xy.xyxx.xy);
  let v = -(r2.xxxy);
  let v_1 = (r1.xy + v.zw);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = fma(r0.yy, r0.zw, r2.xy);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r1 = textureSample(t8, s8, v2.xy.xyxx.xy);
  let v_4 = ((-(r0.yzyy)).xy + r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(r0.xx, r1.xy, r0.yz);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_7 = (r0.zz * r0.xy);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = sqrt(abs(r0.xxxx).x);
  let v_8 = (r0.www * v5.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.zzz, v4.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = fma(r0.xxx, v3.xyz, r0.yzw);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, -0.34999999403953552246f);
  let v_11 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_12.xyz, o1.w);
  r0.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_13 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r0.x = (r0.x * r1.y);
  r2 = textureSample(t10, s10, v2.xy.xyxx.xy);
  let v_15 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r0.y = (r2.w * cb12_12.tint_symbol_4[0u].y);
  r3.y = (r0.y * 0.001953125f);
  r0.y = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r3.x = (r0.y * cb12_12.tint_symbol_4[0u].z);
  r0.y = clamp(fma(r0.yyyy, cb12_12.tint_symbol_4[0u].zzzz, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  let v_16 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r0.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  r4 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_17 = (r0.yyy * r4.xyz);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  r0.y = (r4.w * v1.w);
  o0.w = (r0.y * cb2_2.tint_symbol[15u].x);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r2.z = 0.97000002861022949219f;
  r3.z = cb12_12.tint_symbol_4[0u].x;
  let v_18 = -(r3.xxyz);
  let v_19 = (r2.xyz + v_18.yzw);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_20.xyz);
  let v_21 = fma(r0.yzw, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = sqrt(r0.xy);
  o2 = vec4<f32>(v_22.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_23 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_23.xy, r0.zw);
  let v_24 = sqrt(r0.xy);
  o3 = vec4<f32>(v_24.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3);
}
