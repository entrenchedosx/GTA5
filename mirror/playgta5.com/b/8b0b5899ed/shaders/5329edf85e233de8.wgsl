diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  r0.x = textureSample(t4, s4, v1.xy.xyxx.xy).x;
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  o0 = ((-(r0.xxxx)).x + 1.0f);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
