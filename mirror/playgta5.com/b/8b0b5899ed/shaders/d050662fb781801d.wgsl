diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec2<f32>) {
  o0 = vec4<f32>(v0.xyz, o0.w);
  o0.w = 1.0f;
  o1 = v2.xyxy;
}

struct tint_symbol {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol {
  main_inner(v0, v2);
  return tint_symbol(o0, o1);
}
