diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xyxx.xy);
  r1 = textureSample(t2, s2, v3.xyxx.xy);
  let v = -(r1.yyyy);
  r0.x = (r0.y + v.x);
  r1 = textureSample(t2, s2, v2.zwzz.xy);
  r2 = textureSample(t2, s2, v3.zwzz.xy);
  let v_1 = -(r2.yyyy);
  r0.y = (r1.y + v_1.y);
  let v_2 = -(r0.yyyy);
  let v_3 = fma(r0.xx, vec2<f32>(-1.0f, 1.0f), v_2.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.z);
  r0.z = sqrt(r0.z);
  r0.z = (r0.z * 3.0f);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * r0.z);
  let v_4 = (r0.wwz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.xy * cb5_5.tint_symbol[0u].xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = fma((-(r0.xxxy)).zw, vec2<f32>(1.5f), v1.xy);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = fma(r0.xy, vec2<f32>(1.5f), v1.xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  r0 = textureSample(t2, s2, r0.zwzz.xy);
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0 = fma(r2, vec4<f32>(0.5f), r0);
  r0 = (r1 + r0);
  r0 = (r0 * cb5_5.tint_symbol[2u]);
  o0 = (r0 * vec4<f32>(0.40000000596046447754f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
