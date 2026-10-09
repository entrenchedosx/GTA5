diagnostic(off, derivative_uniformity);

struct cb22_struct {
  tint_symbol : array<vec4<f32>, 22u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb22_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  o0 = vec4<f32>(v0.xyz, o0.w);
  o0.w = 1.0f;
  o1 = cb10_10.tint_symbol[21u];
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1);
}
