diagnostic(off, derivative_uniformity);

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner() {
  o0 = cb5_5.tint_symbol[2u];
  o1 = cb5_5.tint_symbol[3u];
  o2 = cb5_5.tint_symbol[2u];
  o3 = cb5_5.tint_symbol[3u];
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main() -> tint_symbol_1 {
  main_inner();
  return tint_symbol_1(o0, o1, o2, o3);
}
