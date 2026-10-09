diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(-0.5f, -0.5f, -0.5f, 0.5f), v1.xyxy);
  r1 = textureSample(t11, s11, r0.xyxx.xy);
  r0 = textureSample(t11, s11, r0.zwzz.xy);
  r1.y = r0.x;
  r0 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(0.5f, -0.5f, 0.5f, 0.5f), v1.xyxy);
  r2 = textureSample(t11, s11, r0.xyxx.xy);
  r0 = textureSample(t11, s11, r0.zwzz.xy);
  r2.y = r0.x;
  let v = max(r1.xy, r2.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  o0 = max(r0.y, r0.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
