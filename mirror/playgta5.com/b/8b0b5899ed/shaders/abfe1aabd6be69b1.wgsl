diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

fn main_inner() {
  o0 = vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f);
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
