diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v = (r0.xyz * cb5_5.tint_symbol[2u].xxx);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = log2(r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * cb5_5.tint_symbol[3u].xxx);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = exp2(r0.xyz);
  o0 = vec4<f32>(v_3.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
