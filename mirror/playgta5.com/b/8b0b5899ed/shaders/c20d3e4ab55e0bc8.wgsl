diagnostic(off, derivative_uniformity);

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = fma(v0, cb12_12.tint_symbol[4u].xy, cb12_12.tint_symbol[4u].zw);
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
}

@vertex
fn main(@location(0u) v0 : vec2<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0);
  return o0;
}
