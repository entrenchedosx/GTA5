diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy * vec2<f32>(32.0f))).xy, r0.zw);
  r0.x = dot(r0.xy, vec2<f32>(9.0f, 29.813999176025390625f));
  let v = r0.xxxx;
  r0.x = sin(v.x);
  r1.x = cos(v.x);
  let v_1 = r0;
  let v_2 = o0;
  o0 = vec4<f32>(v_1.x, v_2.y, v_1.x, v_2.w);
  let v_3 = r1;
  let v_4 = o0;
  o0 = vec4<f32>(v_4.x, v_3.x, v_4.z, v_3.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
