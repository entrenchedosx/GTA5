diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0 = textureSample(t4, s4, v2.xy.xyxx.xy);
  let v = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
