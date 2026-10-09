diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb68_struct {
  tint_symbol_1 : array<vec4<f32>, 68u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb68_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  let v = v2.x;
  r1.x = clamp(fma(vec4<f32>(v, v, v, v), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).x, 0.0f, 1.0f);
  r0 = fma(r1.xxxx, r0, cb5_5.tint_symbol_1[10u]);
  r0.z = (r0.y * r0.z);
  let v_1 = ((-(cb5_5.tint_symbol_1[11u].zzxy)).yzw + cb5_5.tint_symbol_1[13u].zxy);
  r1 = vec4<f32>(r1.x, v_1.xyz);
  let v_2 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[11u].zxy);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r1.w = fma(r0.x, r1.x, r0.z);
  let v_3 = (r0.ww * r1.yz);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r0.w = fma(r1.x, r1.w, r2.x);
  r1.w = fma(r0.x, r1.x, r0.y);
  r1.x = fma(r1.x, r1.w, r2.y);
  r1.y = (r1.y / r1.z);
  r0.w = (r0.w / r1.x);
  r0.w = ((-(r1.yyyy)).w + r0.w);
  r0.w = (1.0f / r0.w);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_4 = (r3.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(v_4.x, r1.y, v_4.yz);
  let v_5 = (r1.xzw * v1.zzz);
  r1 = vec4<f32>(v_5.x, r1.y, v_5.yz);
  let v_6 = max(r1.xzw, vec3<f32>());
  r1 = vec4<f32>(v_6.x, r1.y, v_6.yz);
  let v_7 = fma(r0.xxx, r1.xzw, r0.zzz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(r0.xxx, r1.xzw, r0.yyy);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r1.xzw, r0.xyz, r2.yyy);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r1.xzw, r3.xyz, r2.xxx);
  r1 = vec4<f32>(v_10.x, r1.y, v_10.yz);
  let v_11 = (r1.xzw / r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = ((-(r1.yyyy)).xyz + r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = clamp(((r0.wwww * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_14 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_16 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_17 = (cb5_5.tint_symbol_1[65u].xyz + v_16.yzw);
  r1 = vec4<f32>(r1.x, v_17.xyz);
  let v_18 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r1.x = ((-(cb5_5.tint_symbol_1[65u].wwww)).x + 1.0f);
  let v_21 = -(r1.xxxx);
  r0.w = (r0.w + v_21.w);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = max(r1.x, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.xxxx)).w, 0.0f, 1.0f);
  let v_22 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = log2(r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r0.xyz * vec3<f32>(0.45449998974800109863f));
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = exp2(r0.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_26 = r0;
  o0 = vec4<f32>(v_26.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
