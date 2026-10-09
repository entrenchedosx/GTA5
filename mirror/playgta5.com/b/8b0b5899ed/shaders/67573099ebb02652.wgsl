diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.zw * abs(v1.xyxx).xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  o0.y = (r0.y + r0.x);
  o0 = vec4<f32>(0.0f, o0.y, vec2<f32>());
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
