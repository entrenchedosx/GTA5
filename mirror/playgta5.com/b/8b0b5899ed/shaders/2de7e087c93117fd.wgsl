diagnostic(off, derivative_uniformity);

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  o0 = textureSample(t11, s11, v1.xyxx.xy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
