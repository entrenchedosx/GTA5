diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

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
  let v = cb1_1.tint_symbol[15u];
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = 1.0f;
  r0.x = dot(cb10_10.tint_symbol_2[8u], r0);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, ((v2.xy / v2.ww)).xy, v_1.w);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  r0.y = (cb11_11.tint_symbol_1[17u].w + 1.0f);
  r0.y = ((-(r1.xxxx)).y + r0.y);
  r0.y = (cb11_11.tint_symbol_1[17u].z / r0.y);
  r0.y = clamp(((r0.yyyy / v2.wwww)).y, 0.0f, 1.0f);
  r1 = vec4<f32>(((v3.xyz / v4.xyz)).xyz, r1.w);
  r0.z = max(r1.y, r1.x);
  r0.z = max(r1.z, r0.z);
  r0.w = (r0.y + r0.z);
  r0.y = clamp(((-(r0.zzzz) + r0.yyyy)).y, 0.0f, 1.0f);
  let v_2 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.z = dot(cb10_10.tint_symbol_2[8u].xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r0.z = (r0.z * r0.w);
  r0.x = fma(r0.z, 0.5f, r0.x);
  r0.x = log2(abs(r0.xxxx).x);
  let v_3 = (r0.xxx * cb10_10.tint_symbol_2[9u].xyz);
  r0 = vec4<f32>(v_3.x, r0.y, v_3.yz);
  let v_4 = exp2(r0.xzw);
  r0 = vec4<f32>(v_4.x, r0.y, v_4.yz);
  let v_5 = (r0.xzw * r0.yyy);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r0.xyz, v2.zzz, vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r0.xyz * v2.zzz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(cb10_10.tint_symbol_2[9u].www, r1.xyz, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz * cb10_10.tint_symbol_2[4u].xyz);
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
