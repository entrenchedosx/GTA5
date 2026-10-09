diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb59_struct {
  tint_symbol_1 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb28_struct {
  tint_symbol_2 : array<vec4<f32>, 28u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb28_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec4<f32>) {
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = (r0.yyyy * cb12_12.tint_symbol_2[20u]);
  r1 = fma(r0.xxxx, cb12_12.tint_symbol_2[19u], r1);
  r1 = fma(r0.zzzz, cb12_12.tint_symbol_2[21u], r1);
  r1 = (r1 + cb12_12.tint_symbol_2[22u]);
  o0 = r1;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.z = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r0.xyz / r1.zzz);
  o1 = vec4<f32>(v_5.xyz, o1.w);
  o1.w = r1.z;
  let v_6 = (v2.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_6.xy, r0.z, v_6.z);
  let v_7 = fma(v2.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyw);
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  let v_8 = fma(v2.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_8.xy, r0.z, v_8.z);
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = inverseSqrt(r2.w);
  let v_9 = (r0.xyw * r2.www);
  o2 = vec4<f32>(v_9.xyz, o2.w);
  o2.w = v1.w;
  let v_10 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  let v_11 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyw);
  r0 = vec4<f32>(v_11.xy, r0.z, v_11.z);
  let v_12 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_12.xy, r0.z, v_12.z);
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = inverseSqrt(r2.w);
  let v_13 = (r0.xyw * r2.www);
  o3 = vec4<f32>(v_13.xyz, o3.w);
  o3.w = v1.y;
  let v_14 = (v2.yzx * v4.zxy);
  r0 = vec4<f32>(v_14.xy, r0.z, v_14.z);
  let v_15 = fma(v4.yzx, v2.zxy, (-(r0.xyxw)).xyw);
  r0 = vec4<f32>(v_15.xy, r0.z, v_15.z);
  let v_16 = (r0.xyw * v4.www);
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  let v_17 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r0.www, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r0 = vec4<f32>(v_19.xy, r0.z, v_19.z);
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = inverseSqrt(r2.w);
  let v_20 = (r0.xyw * r2.www);
  o4 = vec4<f32>(v_20.xyz, o4.w);
  o4.w = v1.z;
  let v_21 = fma(v3, cb12_12.tint_symbol_2[25u].zw, cb12_12.tint_symbol_2[24u].xy);
  r0 = vec4<f32>(v_21.xy, r0.zw);
  o5 = fma(cb12_12.tint_symbol_2[17u].xy, cb12_12.tint_symbol_2[27u].zw, r0.xy).xyxy;
  let v_22 = (r1.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_22.xy, r0.z, v_22.z);
  let v_23 = -(r0.wwww);
  o6.y = fma(r1.w, 0.5f, v_23.y);
  o6.x = (r0.y + r0.x);
  let v_24 = r1;
  o6 = vec4<f32>(o6.xy, v_24.ww);
  let v_25 = dot(r2.xyz, cb3_3.tint_symbol_1[53u].xyz);
  r0.x = clamp(vec4<f32>(v_25, v_25, v_25, v_25).x, 0.0f, 1.0f);
  let v_26 = dot(r2.xyz, cb3_3.tint_symbol_1[54u].xyz);
  r0.y = clamp(vec4<f32>(v_26, v_26, v_26, v_26).y, 0.0f, 1.0f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * cb3_3.tint_symbol_1[54u].w);
  r0.y = exp2(r0.y);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_1[53u].w);
  r0.x = exp2(r0.x);
  let v_27 = ((-(cb3_3.tint_symbol_1[56u].xyxz)).xyw + cb3_3.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(v_27.xy, r1.z, v_27.z);
  let v_28 = fma(r0.yyy, r1.xyw, cb3_3.tint_symbol_1[56u].xyz);
  r1 = vec4<f32>(v_28.xy, r1.z, v_28.z);
  let v_29 = ((-(r1.xywx)).xyz + cb3_3.tint_symbol_1[55u].xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = fma(r0.xxx, r2.xyz, r1.xyw);
  r0 = vec4<f32>(v_30.xy, r0.z, v_30.z);
  let v_31 = -(cb3_3.tint_symbol_1[57u].xyxz);
  let v_32 = (r0.xyw + v_31.xyw);
  r0 = vec4<f32>(v_32.xy, r0.z, v_32.z);
  let v_33 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r1.x = (r1.z + v_33.x);
  r1.x = max(r1.x, 0.0f);
  let v_34 = -(cb3_3.tint_symbol_1[51u].zzzz);
  r1.y = (r1.x * v_34.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_35 = fma(r1.yyy, r0.xyw, cb3_3.tint_symbol_1[57u].xyz);
  r0 = vec4<f32>(v_35.xy, r0.z, v_35.z);
  r1.y = (r1.x / r1.z);
  r1.x = (r1.x * cb3_3.tint_symbol_1[51u].w);
  r0.z = (r0.z * r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).y)));
  r0.z = (r0.z * cb3_3.tint_symbol_1[52u].z);
  r1.z = (r0.z * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r0.z = (r1.z / r0.z);
  let v_36 = bitcast<u32>(r1.y);
  r0.z = select(1.0f, r0.z, (v_36 != 0u));
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = clamp(((r0.zzzz * cb3_3.tint_symbol_1[52u].yyyy)).z, 0.0f, 1.0f);
  r1.x = ((-(v1.xxxx)).x + 1.0f);
  r0.z = max(r0.z, r1.x);
  let v_37 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_37.xy, r0.z, v_37.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.y = (r1.x * cb3_3.tint_symbol_1[52u].w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_1[52u].w, 1.0f);
  r2.x = (r1.y * cb3_3.tint_symbol_1[55u].w);
  r2.y = (r1.y * cb3_3.tint_symbol_1[56u].w);
  r2.z = (r1.y * cb3_3.tint_symbol_1[57u].w);
  let v_38 = fma(r0.xyw, r1.xxx, r2.xyz);
  o7 = vec4<f32>(v_38.xyz, o7.w);
  o7.w = (r0.z * r1.x);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6, o7);
}
