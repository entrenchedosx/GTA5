diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r0.x = fma(r0.w, cb2_2.tint_symbol[15u].x, -0.50196081399917602539f);
  r0.x = fma(r0.x, 2.23194742202758789062f, 0.0078431377187371254f);
  o0 = clamp(r0.xxxx, vec4<f32>(), vec4<f32>(1.0f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
