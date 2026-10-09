diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

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

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma(v3.z, r0.x, -0.34999999403953552246f);
  let v = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  let v_1 = fma(r0.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_1.xyz, o1.w);
  r0.x = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_2 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.x = (r0.x * r1.y);
  r0.y = fma(r0.x, -0.5f, 1.0f);
  r0.x = (r0.x * cb12_12.tint_symbol_3[0u].x);
  let v_4 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  let v_5 = r0;
  r0 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  let v_6 = sqrt(r0.xz);
  o2 = vec4<f32>(v_6.xy, o2.zw);
  r2 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_7 = (r0.yyy * r2.xyz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  r0.x = (r2.w * v1.w);
  o0.w = (r0.x * cb2_2.tint_symbol[15u].x);
  r0.x = (cb12_12.tint_symbol_3[0u].x + -0.20000000298023223877f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(10.0f))).x, 0.0f, 1.0f);
  r0.y = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).y, 0.0f, 1.0f);
  o1.w = (r0.x * r0.y);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  r1.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_8 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = sqrt(r0.xy);
  o3 = vec4<f32>(v_9.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3);
}
