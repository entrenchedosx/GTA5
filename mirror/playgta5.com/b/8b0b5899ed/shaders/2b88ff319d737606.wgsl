diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec4<i32>) {
  r0 = vec4<f32>(v0);
  r1.x = dot(r0, cb11_11.tint_symbol_1[1u]);
  r1 = (r1.xxxx * cb1_1.tint_symbol[9u]);
  r0.x = dot(r0, cb11_11.tint_symbol_1[0u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = fma(r0.wwww, cb1_1.tint_symbol[11u], r1);
}

@vertex
fn main(@location(0u) v0 : vec4<i32>) -> @builtin(position) vec4<f32> {
  main_inner(v0);
  return o0;
}
