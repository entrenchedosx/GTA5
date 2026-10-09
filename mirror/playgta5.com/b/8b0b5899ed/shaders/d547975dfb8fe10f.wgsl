diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.5f, 0.5f, 1.0f, 0.5f), v1.xy.xyxy);
  r1 = textureSample(t10, s10, r0.zwzz.xy);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  r1 = (r1 + r1);
  r0 = fma(r0, vec4<f32>(4.0f), r1);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.5f, -1.0f, 1.0f, -1.0f), v1.xy.xyxy);
  r2 = textureSample(t10, s10, r1.xyxx.xy);
  r1 = textureSample(t10, s10, r1.zwzz.xy);
  r0 = fma(r2, vec4<f32>(2.0f), r0);
  r0 = (r1 + r0);
  o0 = (r0 * vec4<f32>(0.11111111193895339966f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
