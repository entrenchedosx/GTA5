diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb10_struct {
  tint_symbol : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xy + cb11_11.tint_symbol[9u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = textureSample(t14, s14, r0.xyxx.xy);
  r1 = textureSample(t15, s15, v1.xyxx.xy);
  r0.x = fma(cb11_11.tint_symbol[6u].x, r1.x, r0.x);
  r0.x = max(r0.x, -2000.0f);
  o0 = min(r0.x, 2000.0f);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
