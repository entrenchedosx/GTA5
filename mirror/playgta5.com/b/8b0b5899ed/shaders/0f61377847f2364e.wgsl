diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb11_struct {
  tint_symbol : array<vec4<f32>, 11u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb11_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r0.x = ((-(r0.yyyy)).x + 1.0f);
  let v = -(cb12_12.tint_symbol[8u].xxxx);
  r0.x = (r0.x + v.x);
  r0.x = clamp(((r0.xxxx * cb12_12.tint_symbol[8u].yyyy)).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = ((-(cb12_12.tint_symbol[10u].wwww)).y + 1.0f);
  r0.x = clamp(fma(r0.xxxx, cb12_12.tint_symbol[10u].wwww, r0.yyyy).x, 0.0f, 1.0f);
  r0.x = fma((-(r0.xxxx)).x, 12.0f, 1.0f);
  r0.x = max(r0.x, 0.0f);
  o0.w = (r0.x * v1.w);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
