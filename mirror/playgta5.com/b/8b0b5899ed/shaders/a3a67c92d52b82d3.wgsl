diagnostic(off, derivative_uniformity);

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>) {
  o0 = vec4<f32>(v0.xy.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  o1 = fma(cb10_10.tint_symbol[0u].zwzw, vec4<f32>(-1.5f, -0.5f, -0.5f, -0.5f), v1.xyxy);
  o2 = fma(cb10_10.tint_symbol[0u].zwzw, vec4<f32>(0.5f, -0.5f, 1.5f, -0.5f), v1.xyxy);
  o3 = fma(cb10_10.tint_symbol[0u].zwzw, vec4<f32>(-1.5f, 0.5f, -0.5f, 0.5f), v1.xyxy);
  o4 = fma(cb10_10.tint_symbol[0u].zwzw, vec4<f32>(0.5f, 0.5f, 1.5f, 0.5f), v1.xyxy);
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1, o2, o3, o4);
}
