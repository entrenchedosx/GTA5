diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  o0 = vec4<f32>(v0.xyz, o0.w);
  o0.w = 1.0f;
  o1 = v1;
  r0 = vec4<f32>(v2.xy, r0.zw);
  r0.z = 1.0f;
  o2.x = dot(cb12_12.tint_symbol[0u].xyw, r0.xyz);
  o2.y = dot(cb12_12.tint_symbol[1u].xyw, r0.xyz);
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2);
  return tint_symbol_1(o0, o1, o2);
}
