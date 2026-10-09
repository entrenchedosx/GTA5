diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xy + (-(cb10_10.tint_symbol[0u].xyxx)).xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r0.xxxy).zw < cb10_10.tint_symbol[0u].zw)));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  v_2((bitcast<u32>(r0.z) != 0u));
  r0.z = fma((-(cb10_10.tint_symbol[1u].wwww)).z, 2.0f, 1.0f);
  r0.z = clamp(fma(r0.zzzz, cb10_10.tint_symbol[1u].xxxx, cb10_10.tint_symbol[1u].wwww).z, 0.0f, 1.0f);
  let v_3 = ((-(cb10_10.tint_symbol[0u].zwzz)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = fma(r0.zz, r1.xy, cb10_10.tint_symbol[0u].zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r0.w = (r0.z / r0.w);
  let v_5 = abs(r0.yyyy);
  r0.y = (r0.w * v_5.y);
  let v_6 = abs(r0.xxxx);
  r0.x = max(r0.y, v_6.x);
  r0.x = ((-(r0.zzzz)).x + r0.x);
  o0.w = fma(cb10_10.tint_symbol[2u].x, r0.x, cb10_10.tint_symbol[2u].y);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
}

fn v_2(v_7 : bool) {
  if (v_7) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
