diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb13_struct {
  tint_symbol : array<vec4<f32>, 13u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb13_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = dot(v2, v2);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(cb12_12.tint_symbol[12u].xyzx);
  r0.x = dot(r0.xyz, v_1.xyz);
  r0.y = fma((-(cb12_12.tint_symbol[11u].xxxx)).y, r0.x, cb12_12.tint_symbol[11u].y);
  r0.x = fma(r0.x, r0.x, 1.0f);
  r0.y = log2(abs(r0.yyyy).y);
  r0.y = (r0.y * 1.5f);
  r0.y = exp2(r0.y);
  r0.x = (r0.x / r0.y);
  r0.y = (r0.x * cb12_12.tint_symbol[11u].z);
  r0.x = clamp(fma(-(r0.xxxx), cb12_12.tint_symbol[11u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r0.y = clamp(r0.yyyy.y, 0.0f, 1.0f);
  let v_2 = (r0.yyy * cb12_12.tint_symbol[9u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = (r0.yzw * cb12_12.tint_symbol[11u].www);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(v3.xyz, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = ((-(r0.xyzx)).xyz + v7.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(v7.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1 = textureSample(t6, s6, v5.xyxx.xy);
  r0.w = (r1.x + -0.5f);
  let v_7 = fma(r0.www, vec3<f32>(0.00009999999747378752f), r0.xyz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  o0.w = clamp(v2.w, 0.0f, 1.0f);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v3, v5, v7);
  return o0;
}
