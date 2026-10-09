diagnostic(off, derivative_uniformity);

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

var<private> o0 : f32;

fn main_inner() {
  o0 = cb12_12.tint_symbol[3u].w;
}

@fragment
fn main() -> @location(0u) f32 {
  main_inner();
  return o0;
}
