diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb24_struct {
  tint_symbol_1 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb24_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = fma(v0.wwww, cb1_1.tint_symbol[11u], r0);
  let v = (cb12_12.tint_symbol_1[6u].xyz * cb12_12.tint_symbol_1[6u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  o1 = ((r0.xyz * cb12_12.tint_symbol_1[6u].www)).xyzx;
  let v_1 = (v0.yy * cb1_1.tint_symbol[1u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(v0.xx, cb1_1.tint_symbol[0u].xy, r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = fma(v0.zz, cb1_1.tint_symbol[2u].xy, r0.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fma(v0.ww, cb1_1.tint_symbol[3u].xy, r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = -(cb1_1.tint_symbol[15u].xyxx);
  let v_6 = (r0.xy + v_5.xy);
  o2 = vec4<f32>(v_6.xy, o2.zw);
  let v_7 = -(cb12_12.tint_symbol_1[7u].xxxx);
  r0.x = (cb1_1.tint_symbol[15u].z + v_7.x);
  o2.w = clamp(((r0.xxxx * cb12_12.tint_symbol_1[7u].zzzz)).w, 0.0f, 1.0f);
  o2.z = ((-(cb1_1.tint_symbol[15u].zzzz)).z + cb12_12.tint_symbol_1[23u].x);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
