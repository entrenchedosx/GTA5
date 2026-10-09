diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  o0 = v1;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
