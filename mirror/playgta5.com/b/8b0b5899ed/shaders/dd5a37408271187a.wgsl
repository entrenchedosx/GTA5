diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xy / v2.ww)).xy, r0.zw);
  r0 = textureSample(t15, s15, r0.xyxx.xy);
  let v = fma(v5.xyz, r0.www, v4.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  r0 = textureSample(t2, s2, v3.xy.xyxx.xy);
  r0.x = (r0.w * v1.w);
  o0.w = (r0.x * r0.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
