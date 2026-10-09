diagnostic(off, derivative_uniformity);

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

var<private> o0 : vec4<f32>;

fn main_inner() {
  o0 = cb5_5.tint_symbol[2u];
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
