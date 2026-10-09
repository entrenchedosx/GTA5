diagnostic(off, derivative_uniformity);

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner() {
  x0[0u].x = v4[0u];
  x0[0u].y = v4[1u];
  x0[0u].z = v4[2u];
  x0[0u].w = v4[3u];
  o0 = vec4<f32>(1.0f, 0.0f, 1.0f, 1.0f);
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
