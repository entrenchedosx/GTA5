diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v1 : vec4<f32>) {
  o0 = vec4<f32>();
  r0 = textureSample(t9, s9, v1.xy.xyxx.xy);
  r0.x = (cb11_11.tint_symbol[2u].z / r0.y);
  let v = -(cb11_11.tint_symbol[2u].wwww);
  r0.x = (r0.x + v.x);
  oDepth = clamp((r0.x * 1.00001001358032226562f), 0.0f, 1.0f);
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v1);
  return tint_symbol_1(o0, oDepth);
}
