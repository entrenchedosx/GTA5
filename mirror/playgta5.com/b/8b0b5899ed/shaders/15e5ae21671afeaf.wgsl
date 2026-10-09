diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb78_struct {
  tint_symbol_1 : array<vec4<f32>, 78u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb78_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v = fma(v0, cb5_5.tint_symbol_1[76u].xy, cb5_5.tint_symbol_1[76u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0;
  o0 = vec4<f32>(v_1.xy, o0.zw);
  let v_2 = (r0.xy + cb5_5.tint_symbol_1[1u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb5_5.tint_symbol_1[0u].xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fma(v0, cb5_5.tint_symbol_1[77u].xy, cb5_5.tint_symbol_1[77u].zw);
  o1 = vec4<f32>(v_4.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>());
  let v_5 = (r0.yyy * cb1_1.tint_symbol[13u].xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(r0.xxx, cb1_1.tint_symbol[12u].xyz, r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(cb1_1.tint_symbol[14u].xyzx);
  let v_8 = (r0.xyz + v_7.xyz);
  o2 = vec4<f32>(v_8.xyz, o2.w);
  o2.w = 1.0f;
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
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
