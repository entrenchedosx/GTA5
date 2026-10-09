diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  o0.w = (v1.w * cb13_13.tint_symbol[3u].w);
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r1 = textureSample(t1, s1, v2.zwzz.xy);
  r0.y = r1.x;
  r1 = textureSample(t2, s2, v2.zwzz.xy);
  r0.z = r1.x;
  r0.w = cb13_13.tint_symbol[3u].x;
  r1.x = dot(cb13_13.tint_symbol[0u], r0);
  o0.x = (r1.x * v1.x);
  r1.x = dot(cb13_13.tint_symbol[1u], r0);
  r0.x = dot(cb13_13.tint_symbol[2u], r0);
  o0.z = (r0.x * v1.z);
  o0.y = (r1.x * v1.y);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
