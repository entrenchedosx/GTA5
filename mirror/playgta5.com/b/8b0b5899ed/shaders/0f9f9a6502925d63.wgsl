diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t12, s12, v1.xyxx.xy);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol[4u].x);
  o0.w = exp2(r0.x);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
