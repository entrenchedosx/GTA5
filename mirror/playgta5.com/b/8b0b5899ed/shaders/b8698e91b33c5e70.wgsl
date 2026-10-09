diagnostic(off, derivative_uniformity);

struct cb84_struct {
  tint_symbol : array<vec4<f32>, 84u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb84_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = fma(v0, cb5_5.tint_symbol[82u].xy, cb5_5.tint_symbol[82u].zw);
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  o1 = fma(v0, cb5_5.tint_symbol[83u].xy, cb5_5.tint_symbol[83u].zw).xyxy;
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
