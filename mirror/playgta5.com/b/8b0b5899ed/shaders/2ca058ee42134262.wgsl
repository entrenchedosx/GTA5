diagnostic(off, derivative_uniformity);

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner() {
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  o0 = vec4<f32>(1.0f, 0.0f, 1.0f, 1.0f);
  o1 = 0.0f;
}

struct tint_symbol {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main() -> tint_symbol {
  main_inner();
  return tint_symbol(o0, o1, o2);
}
