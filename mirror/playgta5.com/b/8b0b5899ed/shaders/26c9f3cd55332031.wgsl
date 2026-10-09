diagnostic(off, derivative_uniformity);

struct cb36_struct {
  tint_symbol : array<vec4<f32>, 36u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb36_struct;

var<private> o0 : vec4<f32>;

fn main_inner() {
  let v = cb3_3.tint_symbol[35u];
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
