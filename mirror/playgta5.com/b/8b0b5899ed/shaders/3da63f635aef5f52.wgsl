diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb42_struct {
  tint_symbol : array<vec4<f32>, 42u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb42_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = ((-(v1.xy.yyyy)).x + 1.0f);
  r0.y = fma(r0.x, 0.10000000149011611938f, cb3_3.tint_symbol[41u].x);
  r0.x = fma(v1.x, 0.10000000149011611938f, cb3_3.tint_symbol[40u].x);
  r0 = textureSample(t1, s1, r0.xyxx.xy);
  o0 = (r0 * cb3_3.tint_symbol[38u].xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
