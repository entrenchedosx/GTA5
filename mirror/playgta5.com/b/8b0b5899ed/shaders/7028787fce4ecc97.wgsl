diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * cb12_12.tint_symbol_1[2u].xx);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(0.001953125f, 0.00390625f), v3.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = vec4<f32>(((v2.xy / v2.ww)).xy, r1.zw);
  let v_3 = fma(v3.zw, r1.xy, r0.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r1 = textureSample(t2, s2, r0.xyxx.xy);
  let v_4 = fma(r0.zzz, cb12_12.tint_symbol_1[2u].yyy, r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz * cb2_2.tint_symbol[15u].www);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = 1.0f;
  o0 = (r0 * v4);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
