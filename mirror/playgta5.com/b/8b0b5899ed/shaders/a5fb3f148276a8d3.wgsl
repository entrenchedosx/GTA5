diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  o0 = vec4<f32>(v0.xyz, o0.w);
  o0.w = 1.0f;
  let v = (v0.xy * cb5_5.tint_symbol_1[3u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = (r0.yyyy * cb1_1.tint_symbol[13u]);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[12u], r1);
  let v_1 = -(cb1_1.tint_symbol[14u]);
  o1 = (r0 + v_1);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1);
}
