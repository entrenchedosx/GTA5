diagnostic(off, derivative_uniformity);

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  let v = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v_1 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o1 = vec4<f32>(v_1.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>(0.0f, 1.0f));
  let v_2 = -(cb1_1.tint_symbol[14u].xyz);
  o2 = vec4<f32>(v_2.xyz, o2.w);
  o2.w = 1.0f;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1, o2);
}
