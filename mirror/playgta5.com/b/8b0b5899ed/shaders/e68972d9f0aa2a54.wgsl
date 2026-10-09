diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xyxx.xy);
  let v = r0;
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = cb5_5.tint_symbol[1u].x;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
