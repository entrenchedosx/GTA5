diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>) {
  o0 = textureSampleLevel(t5, s5, v1.xy.xyxx.xy, 0.0f);
  r0.x = textureSampleLevel(t4, s4, v1.xy.xyxx.xy, 0.0f).x;
  oDepth = ((-(r0.xxxx)).x + 1.0f);
}

struct tint_symbol {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> tint_symbol {
  main_inner(v1);
  return tint_symbol(o0, oDepth);
}
