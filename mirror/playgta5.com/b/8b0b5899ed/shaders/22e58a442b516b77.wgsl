diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb11_struct {
  tint_symbol : array<vec4<f32>, 11u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb11_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb7_7.tint_symbol[10u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb7_7.tint_symbol[10u].z / r0.x);
  r0.y = min(r0.x, cb7_7.tint_symbol[0u].x);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.x = fma(cb7_7.tint_symbol[0u].z, r0.y, r0.x);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb7_7.tint_symbol[0u].y);
  o0 = exp2(r0.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
