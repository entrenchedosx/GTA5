enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb15_struct {
  tint_symbol_3 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec2<f32>) {
  o0 = vec4<f32>(v4.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v1.xy);
  let v_1 = (cb1_1.tint_symbol[14u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = -(r0.xyzx);
  let v_3 = fma(cb1_1.tint_symbol[14u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_2.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_4 = -(cb1_1.tint_symbol[12u].xyzx);
  let v_5 = fma(r0.xyz, r0.www, v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(v6.xxx, r0.xyz, cb1_1.tint_symbol[12u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = fma(v6.x, 2.0f, -1.0f);
  let v_7 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (cb1_1.tint_symbol[13u].xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = -(cb1_1.tint_symbol[13u].xyzx);
  let v_10 = fma(v6.xxx, r1.xyz, v_9.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r2 = vec4<f32>(((v3 + vec2<f32>(-0.5f))).xy, r2.zw);
  let v_12 = (v5 * cb12_12.tint_symbol_4[1u].xy);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  let v_13 = (r2.zw * r2.xy);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = (r1.xyz * r2.yyy);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r2.xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r1.x = (cb1_1.tint_symbol[0u].x * cb9_9.tint_symbol_3[14u].z);
  r1.y = cb1_1.tint_symbol[1u].x;
  r1.z = cb1_1.tint_symbol[2u].x;
  r1.x = dot(v0, r1.xyz);
  r2.y = (cb1_1.tint_symbol[1u].y * cb9_9.tint_symbol_3[14u].z);
  r2.x = cb1_1.tint_symbol[0u].y;
  r2.z = cb1_1.tint_symbol[2u].y;
  r1.y = dot(v0, r2.xyz);
  r2.z = (cb1_1.tint_symbol[2u].z * cb9_9.tint_symbol_3[14u].w);
  r2.x = cb1_1.tint_symbol[0u].z;
  r2.y = cb1_1.tint_symbol[1u].z;
  r1.z = dot(v0, r2.xyz);
  let v_16 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1.x = dot(r0.xyz, cb1_1.tint_symbol[0u].xyz);
  r1.y = dot(r0.xyz, cb1_1.tint_symbol[1u].xyz);
  r0.x = dot(r0.xyz, cb1_1.tint_symbol[2u].xyz);
  r0.x = (r0.x * cb9_9.tint_symbol_3[14u].w);
  let v_17 = (r1.xy * cb9_9.tint_symbol_3[14u].zz);
  let v_18 = r0;
  r0 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = (r0.zzz * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r0.yyy, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.xxx, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  o1 = r1.xyz.xyzx;
  let v_23 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_24 = (r1.xyz + v_23.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  r0.w = dot(v2, v2);
  r0.w = inverseSqrt(r0.w);
  let v_25 = -(cb12_12.tint_symbol_4[2u].xyzx);
  let v_26 = fma(v2, r0.www, v_25.xyz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  o2 = fma(cb12_12.tint_symbol_4[2u].www, r2.xyz, cb12_12.tint_symbol_4[2u].xyz).xyzx;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_27 = (r0.www * r1.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r0.w = (r1.w + v_28.w);
  r0.w = max(r0.w, 0.0f);
  r1.x = (r0.w / r1.w);
  r1.x = (r1.x * r1.z);
  r1.y = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_29 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.y, (v_29 != 0u));
  r1.y = (r0.w * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.y);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = fma((-(r1.xxxx)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_30 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_30, v_30, v_30, v_30).z, 0.0f, 1.0f);
  let v_31 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.w = clamp(vec4<f32>(v_31, v_31, v_31, v_31).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
  r1.w = exp2(r1.w);
  r1.z = log2(r1.z);
  r1.z = (r1.z * cb3_3.tint_symbol_2[53u].w);
  r1.z = exp2(r1.z);
  let v_32 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  let v_35 = fma(r1.zzz, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_37 = (r2.xyz + v_36.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r0.w * v_38.z);
  let v_39 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r0.w = (r0.w + v_39.w);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_2[51u].x);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  o3.w = clamp(fma(r1.yyyy, r0.wwww, r1.xxxx).w, 0.0f, 1.0f);
  r0.w = (r1.z * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_40 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(v_40.x, r1.y, v_40.yz);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_41 = fma(r1.yyy, r2.xyz, r1.xzw);
  o3 = vec4<f32>(v_41.xyz, o3.w);
  r1 = (r0.zzzz * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o4 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_42 = &(x0[0u]);
  *(v_42) = vec4<f32>((*(v_42)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_6 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(position)
  o4 : vec4<f32>,
  @builtin(clip_distances)
  o5 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec2<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, v);
}
