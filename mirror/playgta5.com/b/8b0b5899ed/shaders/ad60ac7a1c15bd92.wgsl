diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>) {
  r0.x = (v1.y * 6.28318500518798828125f);
  let v = (cb13_13.tint_symbol_2[1u].zzw * cb8_8.tint_symbol_3[0u].zzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(cb2_2.tint_symbol_1[16u].xxx, r0.yzw, r0.xxx);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v1.xxz * cb8_8.tint_symbol_3[0u].xxy);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz * cb13_13.tint_symbol_2[1u].xxy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.xyz, r1.xyz, v0);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0, v1);
  return o0;
}
