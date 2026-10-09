diagnostic(off, derivative_uniformity);

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  o0.w = (v1.w * cb2_2.tint_symbol[15u].x);
  o0 = vec4<f32>(v1.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
