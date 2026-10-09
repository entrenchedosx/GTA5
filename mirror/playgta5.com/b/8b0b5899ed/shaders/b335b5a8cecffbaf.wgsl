diagnostic(off, derivative_uniformity);

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v3 : vec2<f32>) {
  o0 = vec4<f32>(v0.xyz, o0.w);
  o0.w = 1.0f;
  o1 = v3.xyxy;
  o2 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f), v3.xyxy);
  o3 = fma(cb5_5.tint_symbol[0u].xyxy, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), v3.xyxy);
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
fn main(@location(0u) v0 : vec3<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v3);
  return tint_symbol_1(o0, o1, o2, o3);
}
