diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = dot(v4.xyz, v4.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v4.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * v3.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r0.w = fma(v3.z, r0.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[3u].z);
  r1.w = dot((-(r0.xyzx)).xyz, r1.xyz);
  r1.w = (r1.w + r1.w);
  let v_2 = -(r1.wwww);
  let v_3 = -(r0.xyzx);
  let v_4 = fma(r1.xyz, v_2.xyz, v_3.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_5.xyz, o1.w);
  r0.y = dot(r0.xyz, r0.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_6 = fma(r0.xz, r0.yy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.xy * vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  r2 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_8 = fma(r1.xyz, cb12_12.tint_symbol_2[0u].xxx, r2.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1.x = (r2.w * v1.w);
  r1.x = (r1.x * cb2_2.tint_symbol[15u].x);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.w = (r0.w * r1.y);
  r1.y = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.w = (r0.w * r1.y);
  r1.y = fma(r0.w, -0.5f, 1.0f);
  let v_9 = (r0.ww * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(r1.xy, v_9.xy);
  let v_10 = sqrt(r1.zw);
  o2 = vec4<f32>(v_10.xy, o2.zw);
  let v_11 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = r1.x;
  o1.w = r1.x;
  o2.w = r1.x;
  o2.z = 0.98000001907348632812f;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3);
}
