diagnostic(off, derivative_uniformity);

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct;

var<private> o0 : vec4<f32>;

fn main_inner() {
  let v = cb9_9.tint_symbol[1u];
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
