diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v2 : vec4<f32>) {
  o0 = vec4<f32>();
  r0 = textureSample(t5, s5, v2.xy.xyxx.xy);
  oDepth = r0.x;
}

struct tint_symbol {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> tint_symbol {
  main_inner(v2);
  return tint_symbol(o0, oDepth);
}
