diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[1u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[0u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[2u], r0);
  r0 = (r0 + cb1_1.tint_symbol[3u]);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = fma(r0.wwww, cb1_1.tint_symbol[11u], r1);
  o1 = v2.xyxy;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v2);
  return tint_symbol_1(o0, o1);
}
