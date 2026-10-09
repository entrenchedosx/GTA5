diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f).x;
  o0 = r0.xxxx;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
