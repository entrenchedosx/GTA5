diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureGather(0i, t6, s6, v1.xy);
  r0 = (r0 + vec4<f32>(0.00100000004749745131f));
  r0 = (vec4<f32>(1.0f) / r0);
  r0.x = dot(vec4<f32>(0.25f), r0);
  r0.x = (1.0f / r0.x);
  o0 = (r0.xxxx + vec4<f32>(-0.00100000004749745131f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
