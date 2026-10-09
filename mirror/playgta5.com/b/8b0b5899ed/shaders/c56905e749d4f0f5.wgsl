diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(cb13_13.tint_symbol[0u].xx, vec2<f32>(-0.5f), v1.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  o0 = textureSample(t3, s3, r0.xyxx.xy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
