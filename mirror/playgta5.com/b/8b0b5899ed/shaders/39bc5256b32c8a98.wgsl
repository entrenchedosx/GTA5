diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb28_struct {
  tint_symbol_1 : array<vec4<f32>, 28u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb28_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  let v = (r0.xy + r0.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = sqrt(r0.x);
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_2 = r0;
  r0 = vec4<f32>(v_1.x, v_2.y, v_1.y, v_2.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(cb12_12.tint_symbol_1[26u].xyz, cb12_12.tint_symbol_1[26u].xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * cb12_12.tint_symbol_1[26u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = max(r0.x, 0.0f);
  r1 = textureSample(t7, s7, v1.xy.xyxx.xy);
  let v_5 = (r1.xyz * cb12_12.tint_symbol_1[27u].xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xyz * cb12_12.tint_symbol_1[25u].www);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz * v2.www);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_10.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
