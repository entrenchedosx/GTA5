diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>) {
  o0 = vec4<f32>(1.0f);
  r0 = textureSample(t3, s3, v1.xyzx.xyz);
  oDepth = r0.x;
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
