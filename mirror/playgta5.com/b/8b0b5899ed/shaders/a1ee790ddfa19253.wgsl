diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb39_struct {
  tint_symbol : array<vec4<f32>, 39u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb39_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t1, s1, v1.xy.xyxx.xy);
  let v = (r0.xyz * vec3<f32>(3.0f));
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = cb3_3.tint_symbol[38u].x;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
