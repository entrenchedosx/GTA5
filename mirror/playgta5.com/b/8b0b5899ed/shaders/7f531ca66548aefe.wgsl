diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t5, s5, v2.xy.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x == 1.0f)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r0 = textureSampleLevel(t2, s2, v2.xy.xyxx.xy, cb5_5.tint_symbol[3u].x);
  let v = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * cb5_5.tint_symbol[2u].xyz);
  o0 = vec4<f32>(v_1.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
