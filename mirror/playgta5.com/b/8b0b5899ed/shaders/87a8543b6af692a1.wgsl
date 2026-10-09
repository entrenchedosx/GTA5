diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), v1.xy.xyxy);
  r1 = textureSample(t5, s5, r0.xyxx.xy);
  r0 = textureSample(t5, s5, r0.zwzz.xy);
  r0 = (r0 + r1);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), v1.xy.xyxy);
  r2 = textureSample(t5, s5, r1.xyxx.xy);
  r1 = textureSample(t5, s5, r1.zwzz.xy);
  r0 = (r0 + r2);
  r0 = (r1 + r0);
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r0 = fma(r1, vec4<f32>(0.5f), r0);
  o0 = (r0 * vec4<f32>(0.22222222387790679932f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
