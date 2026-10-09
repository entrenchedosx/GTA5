diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec4<i32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(v0);
  r1.x = dot(r0, cb11_11.tint_symbol_1[1u]);
  r1 = (r1.xxxx * cb1_1.tint_symbol[9u]);
  r2.x = dot(r0, cb11_11.tint_symbol_1[0u]);
  r1 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = fma(r0.wwww, cb1_1.tint_symbol[11u], r1);
  o1 = v1;
  o2 = v2;
  o3.x = dot(r0, cb11_11.tint_symbol_1[2u]);
  o3.y = dot(r0, cb11_11.tint_symbol_1[3u]);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<i32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2);
  return tint_symbol_2(o0, o1, o2, o3);
}
