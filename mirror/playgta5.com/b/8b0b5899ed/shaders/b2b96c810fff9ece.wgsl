diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * cb2_2.tint_symbol[17u].www);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
