diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb13_13.tint_symbol[0u].xxyx, vec4<f32>(-1.0f, -1.0f, 1.0f, -1.0f), v1.xyxy);
  r1 = textureSample(t3, s3, r0.xyxx.xy);
  r0 = textureSample(t3, s3, r0.zwzz.xy);
  r0 = (r0 + r1);
  r1 = fma(cb13_13.tint_symbol[0u].xyyy, vec4<f32>(-1.0f, 1.0f, 1.0f, 1.0f), v1.xyxy);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  r1 = textureSample(t3, s3, r1.zwzz.xy);
  r0 = (r0 + r2);
  r0 = (r1 + r0);
  o0 = (r0 * vec4<f32>(0.25f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
