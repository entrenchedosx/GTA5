diagnostic(off, derivative_uniformity);

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec2<f32>) {
  o0 = vec4<f32>(v0.xy.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  o1 = v1.xyxy;
  o2 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(-7.0f, 1.0f, -3.0f, -1.0f), v1.xyxy);
  o3 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(3.0f, 1.0f, 7.0f, -1.0f), v1.xyxy);
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1, o2, o3);
}
