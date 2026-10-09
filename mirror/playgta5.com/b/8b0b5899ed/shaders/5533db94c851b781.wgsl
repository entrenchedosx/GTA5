diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb62_struct {
  tint_symbol_1 : array<vec4<f32>, 62u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb62_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = textureSample(t5, s5, v1.xyxx.xy).xyz;
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * cb2_2.tint_symbol[17u].www);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_10 = (r0.xyz + v_9.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_12 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_14 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_15 = (cb5_5.tint_symbol_1[59u].xyz + v_14.yzw);
  r1 = vec4<f32>(r1.x, v_15.xyz);
  let v_16 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r1.x = ((-(cb5_5.tint_symbol_1[59u].wwww)).x + 1.0f);
  let v_19 = -(r1.xxxx);
  r0.w = (r0.w + v_19.w);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = max(r1.x, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.xxxx)).w, 0.0f, 1.0f);
  let v_20 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = log2(r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = (r0.xyz * vec3<f32>(0.45449998974800109863f));
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = exp2(r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_24 = r0;
  o0 = vec4<f32>(v_24.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
