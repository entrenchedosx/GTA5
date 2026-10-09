diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v2.xyxx.xy);
  r0.w = (r0.x * cb13_13.tint_symbol[3u].w);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r2 = textureSample(t1, s1, v2.zwzz.xy);
  r1.y = r2.x;
  r2 = textureSample(t2, s2, v2.zwzz.xy);
  r1.z = r2.x;
  r1.w = cb13_13.tint_symbol[3u].x;
  r0.x = dot(cb13_13.tint_symbol[0u], r1);
  r0.y = dot(cb13_13.tint_symbol[1u], r1);
  r0.z = dot(cb13_13.tint_symbol[2u], r1);
  o0 = (r0 * v1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
