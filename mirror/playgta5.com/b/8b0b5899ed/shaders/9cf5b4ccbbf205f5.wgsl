diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t2, s2, v4.xy.xyxx.xy);
  let v = (r0.xyz * cb2_2.tint_symbol[15u].www);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = 1.0f;
  o0 = (r0 * v3);
}

@fragment
fn main(@location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v3, v4);
  return o0;
}
