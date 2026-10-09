diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb10_struct {
  tint_symbol : array<vec4<f32>, 10u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb10_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = (v0 * cb7_7.tint_symbol[9u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, cb7_7.tint_symbol[7u].xy, cb7_7.tint_symbol[7u].zw);
  o0 = vec4<f32>(v_1.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  o1 = fma(v0, cb7_7.tint_symbol[8u].xy, cb7_7.tint_symbol[8u].zw).xyxy;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1);
}
