diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb62_struct {
  tint_symbol : array<vec4<f32>, 62u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb62_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = clamp(((v1.xy.yyyy + -(cb5_5.tint_symbol[61u].wwww))).x, 0.0f, 1.0f);
  r0.x = clamp(((r0.xxxx * cb5_5.tint_symbol[57u].wwww)).x, 0.0f, 1.0f);
  let v = -(cb5_5.tint_symbol[60u].wwww);
  r0.x = clamp(((r0.xxxx + v)).x, 0.0f, 1.0f);
  let v_1 = -(cb5_5.tint_symbol[61u].xxyz);
  let v_2 = (cb5_5.tint_symbol[60u].xyz + v_1.yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, r0.yzw, cb5_5.tint_symbol[61u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = clamp(((v1.xy.yyyy * cb5_5.tint_symbol[58u].wwww)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol[59u].wwww)).w, 0.0f, 1.0f);
  let v_4 = ((-(cb5_5.tint_symbol[59u].xyzx)).xyz + cb5_5.tint_symbol[61u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.www, r1.xyz, cb5_5.tint_symbol[59u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(r1.xyzx);
  let v_7 = (r0.xyz + v_6.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(v1.xy.yyy, r0.xyz, r1.xyz);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
