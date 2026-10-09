diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  let v = fma(v2.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = textureSample(t2, s2, r0.xyxx.xy);
  let v_1 = log2(r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  o0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_2 = (r0.xyz * vec3<f32>(2.20000004768371582031f));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = (1.0f / cb5_5.tint_symbol[2u].x);
  let v_3 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = exp2(r0.xyz);
  o0 = vec4<f32>(v_4.xyz, o0.w);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
