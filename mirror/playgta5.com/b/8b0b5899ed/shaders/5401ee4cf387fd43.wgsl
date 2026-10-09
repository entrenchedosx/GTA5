diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = (vec4<f32>(-1.0f, -1.0f, 1.0f, -1.0f) / cb2_2.tint_symbol[18u].xyxy);
  r0 = (r0 + v1.xyxy);
  r1 = textureSample(t5, s5, r0.xyxx.xy);
  r0 = textureSample(t5, s5, r0.zwzz.xy);
  r0 = fma(r0, vec4<f32>(2.0f), r1);
  let v = (vec2<f32>(1.0f) / cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = (r1.xy + v1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1 = textureSample(t5, s5, r1.xyxx.xy);
  r0 = (r0 + r1);
  o0 = (r0 * vec4<f32>(0.25f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
