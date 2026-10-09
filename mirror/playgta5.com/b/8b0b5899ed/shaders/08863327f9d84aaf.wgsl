diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb59_struct {
  tint_symbol_1 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb3_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v3 : vec4<f32>) {
  let v = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  r0.w = dot(v_1.xyz, (-(r0.xyzx)).xyz);
  r1.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_2 = -(r0.xxyz);
  let v_3 = (r0.www * v_2.yzw);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r0.w = (r1.x + v_4.w);
  r0.w = max(r0.w, 0.0f);
  r1.x = (r0.w / r1.x);
  r1.x = ((-(r0.zzzz)).x * r1.x);
  r2.x = (r1.x * cb3_3.tint_symbol_1[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r2.y = (r2.x * -1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.x = (r2.y / r2.x);
  let v_5 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r2.x, (v_5 != 0u));
  r2.x = (r0.w * cb3_3.tint_symbol_1[51u].w);
  let v_6 = -(cb3_3.tint_symbol_1[51u].zzzz);
  r0.w = (r0.w * v_6.w);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = (r1.x * r2.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_1[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_1[51u].y);
  let v_7 = dot(r1.yzw, cb3_3.tint_symbol_1[53u].xyz);
  r2.x = clamp(vec4<f32>(v_7, v_7, v_7, v_7).x, 0.0f, 1.0f);
  let v_8 = dot(r1.yzw, cb3_3.tint_symbol_1[54u].xyz);
  r1.y = clamp(vec4<f32>(v_8, v_8, v_8, v_8).y, 0.0f, 1.0f);
  r1.y = log2(r1.y);
  r1.y = (r1.y * cb3_3.tint_symbol_1[54u].w);
  r1.y = exp2(r1.y);
  r1.z = log2(r2.x);
  r1.z = (r1.z * cb3_3.tint_symbol_1[53u].w);
  r1.z = exp2(r1.z);
  let v_9 = ((-(cb3_3.tint_symbol_1[56u].xyzx)).xyz + cb3_3.tint_symbol_1[58u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_1[56u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_1[55u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r1.zzz, r3.xyz, r2.xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = -(cb3_3.tint_symbol_1[57u].xxyz);
  let v_14 = (r1.yzw + v_13.yzw);
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = fma(r0.www, r1.yzw, cb3_3.tint_symbol_1[57u].xyz);
  r1 = vec4<f32>(r1.x, v_15.xyz);
  r2.x = ((-(r1.yyyy)).x + cb3_3.tint_symbol_1[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_1[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_1[57u].w);
  let v_16 = fma(r1.xxx, r2.xyz, r1.yzw);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.x = (r0.x * r0.z);
  r0.y = fma((-(r0.xxxx)).y, r0.x, 1.0f);
  r0.z = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r0.y = fma((-(r0.zzzz)).y, r0.y, 1.0f);
  r0.z = sqrt(r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  let v_17 = -(r0.xxxx);
  r0.z = fma(cb4_4.tint_symbol_2[2u].y, v_17.z, r0.z);
  r0.x = fma(cb4_4.tint_symbol_2[2u].y, r0.x, r0.z);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  o0.w = ((-(r0.xxxx)).w + 1.0f);
}

@fragment
fn main(@location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v3);
  return o0;
}
