diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb46_struct {
  tint_symbol : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  let v = dpdx(v1.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = dpdy(v1.xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = abs(r0.zwzz);
  let v_3 = max(v_2.xy, abs(r0.xyxx).xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  r0.y = fma(r0.x, 10.0f, 0.5f);
  r0.x = fma((-(r0.xxxx)).x, 10.0f, 0.5f);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.y = (1.0f / r0.y);
  r1 = textureSampleLevel(t2, s2, v1.xyxx.xy, 0.0f);
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r0.x = clamp(((r0.yyyy * r0.xxxx)).x, 0.0f, 1.0f);
  r0.y = fma(r0.x, -2.0f, 3.0f);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.y);
  o0.w = r0.x;
  o3.w = r0.x;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma(v3.z, r0.x, -0.34999999403953552246f);
  let v_4 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v_4.x, r0.y, v_4.yz);
  let v_5 = fma(r0.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_5.xyz, o1.w);
  r0.x = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  r0.x = (r0.x * v2.x);
  r0.y = fma(r0.x, -0.5f, 1.0f);
  let v_6 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  let v_7 = r0;
  r0 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
  let v_8 = sqrt(r0.xz);
  o2 = vec4<f32>(v_8.xy, o2.zw);
  let v_9 = (r0.yyy * cb12_12.tint_symbol_2[0u].xyz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 0.0f));
  r0.x = (v2.x + cb3_3.tint_symbol[45u].w);
  r0.y = v2.y;
  let v_10 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = sqrt(r0.xy);
  o3 = vec4<f32>(v_11.xy, o3.zw);
  o3.z = 0.0f;
}

struct tint_symbol_3 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
