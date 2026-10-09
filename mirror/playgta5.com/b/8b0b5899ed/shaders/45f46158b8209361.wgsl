diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  let v = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0);
  return o0;
}
