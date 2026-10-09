diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec2<f32>) {
  o0 = vec4<f32>(v0.xy.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  o1 = vec4<f32>(v1.xy, o1.zw);
  o1.z = 0.0f;
  o1.w = v0.z;
}

struct tint_symbol {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol {
  main_inner(v0, v1);
  return tint_symbol(o0, o1);
}
