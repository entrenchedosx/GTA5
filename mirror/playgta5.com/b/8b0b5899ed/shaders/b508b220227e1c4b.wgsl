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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xy / v2.ww)).xy, r0.zw);
  r0 = textureSample(t5, s5, r0.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_1[17u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_1[17u].z / r0.x);
  r0.x = (r0.x / v2.w);
  let v = -(cb10_10.tint_symbol_2[0u].xxyz);
  let v_1 = (cb1_1.tint_symbol[15u].xyz + v.yzw);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  let v_2 = -(r1.xxxx);
  r1.x = fma(cb10_10.tint_symbol_2[2u].w, cb10_10.tint_symbol_2[2u].w, v_2.x);
  r1.y = dot(r0.yzw, cb10_10.tint_symbol_2[1u].xyz);
  r1.z = fma(r1.y, r1.y, r1.x);
  let v_3 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r1.w = dot(r2.xyz, cb10_10.tint_symbol_2[1u].xyz);
  r2.w = (r1.w * r1.w);
  r1.x = (r1.x * r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r0.y = dot(r0.yzw, r2.xyz);
  let v_4 = -(r1.xxxx);
  r0.z = fma(r1.z, r2.w, v_4.z);
  r0.w = (r1.y * r1.w);
  let v_5 = -(r0.yyyy);
  r1.x = fma(r1.w, r1.y, v_5.x);
  r1.y = fma((-(r1.wwww)).y, r1.w, r2.w);
  r1.z = sqrt(r2.w);
  r0.w = fma((-(r0.wwww)).w, 2.0f, r0.y);
  r0.y = fma(r0.y, r0.w, r0.z);
  r0.z = sqrt(r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.y = (r0.y * r1.z);
  r0.w = ((-(r0.zzzz)).w + r1.x);
  r0.z = (r0.z + r1.x);
  let v_6 = clamp(((r0.zzzw / r1.yyyy)).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r0.w = min(r0.x, r0.w);
  r0.x = min(r0.x, r0.z);
  r0.x = clamp(((-(r0.wwww) + r0.xxxx)).x, 0.0f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = fma(r0.x, v2.z, -1.0f);
  r0.x = (r0.x * v2.z);
  r0.y = fma(cb10_10.tint_symbol_2[9u].w, r0.y, 1.0f);
  r0.x = (r0.y * r0.x);
  let v_7 = (r0.xxx * cb10_10.tint_symbol_2[4u].xyz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
