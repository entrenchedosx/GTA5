diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0 = textureSample(t6, s6, v2.xy.xyxx.xy);
  let v = (r0.xyz * cb2_2.tint_symbol[17u].www);
  r0 = vec4<f32>(v.xyz, r0.w);
  o0.w = r0.w;
  let v_1 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(cb5_5.tint_symbol_1[2u].xxx, r0.xyz, cb5_5.tint_symbol_1[3u].xxx);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[3u].yyy);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(cb5_5.tint_symbol_1[2u].xxx, r0.xyz, cb5_5.tint_symbol_1[2u].yyy);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[3u].zzz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(cb5_5.tint_symbol_1[3u].wwww);
  let v_8 = (r0.xyz + v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[2u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = log2(r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz * vec3<f32>(0.45454546809196472168f));
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = exp2(r0.xyz);
  o0 = vec4<f32>(v_12.xyz, o0.w);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
