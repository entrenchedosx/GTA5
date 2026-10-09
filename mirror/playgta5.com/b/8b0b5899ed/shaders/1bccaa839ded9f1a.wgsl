diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t5, s5, v1.xy.xyxx.xy);
  let v = (r0.xyz * cb5_5.tint_symbol[7u].www);
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
