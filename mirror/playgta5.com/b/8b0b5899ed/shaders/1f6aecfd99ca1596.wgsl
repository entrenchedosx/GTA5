diagnostic(off, derivative_uniformity);

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

var<private> o0 : vec4<f32>;

fn main_inner() {
  o0 = cb11_11.tint_symbol[0u];
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
