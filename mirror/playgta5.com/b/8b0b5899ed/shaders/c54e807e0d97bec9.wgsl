diagnostic(off, derivative_uniformity);

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec2<f32>) {
  o0 = vec4<f32>(v0.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  o1 = v1;
  o2 = vec3<f32>(v2.xy, o2.xyz.z).xyzx;
  o2.z = v0.z;
}

struct tint_symbol {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol {
  main_inner(v0, v1, v2);
  return tint_symbol(o0, o1, o2);
}
