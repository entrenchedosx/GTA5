diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>) {
  r0.x = (v2.w * v2.w);
  r0.x = (0.20998525619506835938f / r0.x);
  r0.x = (r0.x * 0.36787945032119750977f);
  let v = (v0 + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_2 = (r0.yzw + v_1.yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  r1.x = dot((-(cb1_1.tint_symbol[14u].xyzx)).xyz, r0.yzw);
  let v_3 = abs(r1.xxxx);
  r0.x = (r0.x / v_3.x);
  r0.x = (r0.x + 0.00999999977648258209f);
  let v_4 = fma(r0.yzw, r0.xxx, v0);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + vec3<f32>(-0.0f, -0.0f, -0.20000000298023223877f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0, v2);
  return o0;
}
