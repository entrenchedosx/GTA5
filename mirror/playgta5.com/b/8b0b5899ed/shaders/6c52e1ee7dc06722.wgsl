diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb6_struct {
  tint_symbol : array<vec4<f32>, 6u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0.y = cb5_5.tint_symbol[5u].x;
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r0.x = r1.x;
  o0.w = r1.w;
  r0 = textureSample(t4, s4, r0.xyxx.xy);
  let v = r0;
  o0 = vec4<f32>(v.xyz, o0.w);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
