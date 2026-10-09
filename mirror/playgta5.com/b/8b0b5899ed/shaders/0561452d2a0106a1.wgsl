diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner() {
  o0 = vec4<f32>();
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  o3 = vec4<f32>();
}

struct tint_symbol {
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
fn main() -> tint_symbol {
  main_inner();
  return tint_symbol(o0, o1, o2, o3);
}
