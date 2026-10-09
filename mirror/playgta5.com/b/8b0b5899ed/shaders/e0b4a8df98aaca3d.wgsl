diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

struct cb10_struct {
  tint_symbol_2 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb10_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xy / v2.ww)).xy, r0.zw);
  r0 = textureSample(t5, s5, r0.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_1[17u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_1[17u].z / r0.x);
  r0.x = clamp(((r0.xxxx / v2.wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r0.x);
  r1 = vec4<f32>(((v3.xyz / v4.xyz)).xyz, r1.w);
  r0.z = max(r1.y, r1.x);
  r0.z = max(r1.z, r0.z);
  r0.w = (r0.x + r0.z);
  r0.x = clamp(((-(r0.zzzz) + r0.xxxx)).x, 0.0f, 1.0f);
  r0.y = fma(r0.z, r0.w, r0.y);
  let v = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r0.z = dot(cb10_10.tint_symbol_2[8u].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.y = (r0.z * r0.z);
  r0.y = (r0.y * r1.y);
  let v_1 = cb1_1.tint_symbol[15u];
  r2 = vec4<f32>(v_1.xyz, r2.w);
  r2.w = 1.0f;
  r1.y = dot(cb10_10.tint_symbol_2[8u], r2);
  r0.z = (r0.z * r1.y);
  r0.z = (r0.z * r0.w);
  r0.z = fma(r1.y, r1.y, r0.z);
  r0.y = fma(r0.y, 0.3333333432674407959f, r0.z);
  r0.y = log2(abs(r0.yyyy).y);
  let v_2 = (r0.yyy * cb10_10.tint_symbol_2[9u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = exp2(r0.yzw);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (r0.yzw * r0.xxx);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(r0.xyz, v2.zzz, vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r0.xyz * v2.zzz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(cb10_10.tint_symbol_2[9u].www, r1.xyz, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz * cb10_10.tint_symbol_2[4u].xyz);
  o0 = vec4<f32>(v_10.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
