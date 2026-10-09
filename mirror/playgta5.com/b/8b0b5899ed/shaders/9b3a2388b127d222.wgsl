diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v2.xyz.xyxx.xy);
  r0 = (r0 * v1);
  let v = -(r0.xyzx);
  let v_1 = fma(r0.xyz, v3.xyz, v.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(v3.www, r1.xyz, r0.xyz);
  o0 = vec4<f32>(v_2.xyz, o0.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
