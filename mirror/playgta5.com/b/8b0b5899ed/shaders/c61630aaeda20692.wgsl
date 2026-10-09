diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb31_struct {
  tint_symbol : array<vec4<f32>, 31u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb31_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb5_5.tint_symbol[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb5_5.tint_symbol[0u].z / r0.x);
  r0.y = fma(cb5_5.tint_symbol[30u].y, 0.5f, cb5_5.tint_symbol[30u].x);
  r0.x = ((-(r0.yyyy)).x + r0.x);
  r0.y = (cb5_5.tint_symbol[30u].y * 0.5f);
  r0.x = (r0.x / r0.y);
  r0.x = min(abs(r0.xxxx).x, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = ((-(cb5_5.tint_symbol[30u].zzzz)).y + cb5_5.tint_symbol[30u].w);
  o0 = fma(r0.xxxx, r0.yyyy, cb5_5.tint_symbol[30u].zzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
