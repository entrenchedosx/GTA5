diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.0f)));
  v((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f);
}

fn v(v_1 : bool) {
  if (v_1) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
