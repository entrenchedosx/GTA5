diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb40_struct {
  tint_symbol : array<vec4<f32>, 40u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb40_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>((((-(v1.xy.yxyy)).xy + vec2<f32>(1.0f))).xy, r0.zw);
  let v = max(r0.xy, v1.xy.yx);
  let v_1 = r0;
  r0 = vec4<f32>(v.x, v_1.y, v.y, v_1.w);
  let v_2 = -(v1.xy.yyyy);
  r0.y = (r0.y + v_2.y);
  r0.x = max(r0.x, r0.z);
  r0.x = log2(r0.x);
  r0.x = (r0.x * 300000.0f);
  r0.x = exp2(r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.z = (v_2.z + v1.x);
  let v_3 = abs(r0.yyyy);
  r0.y = max(v_3.y, abs(r0.zzzz).y);
  r0.y = (r0.y * r0.y);
  r0.y = (r0.y * r0.y);
  r0.x = fma((-(r0.yyyy)).x, r0.y, r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol[39u].x);
  o0.w = (r0.x * cb3_3.tint_symbol[38u].x);
  let v_4 = (cb3_3.tint_symbol[35u].xyz * cb3_3.tint_symbol[38u].xxx);
  o0 = vec4<f32>(v_4.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
