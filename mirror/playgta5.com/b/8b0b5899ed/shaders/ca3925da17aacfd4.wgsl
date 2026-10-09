enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
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
  let v_12 = (v5 * cb12_12.tint_symbol_3[1u].xy);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  let v_13 = (r2.zw * r2.xy);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = (r1.xyz * r2.yyy);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r2.xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz + v0);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = dot(r0.xyz, cb1_1.tint_symbol[1u].xyz);
  let v_17 = (r0.www * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r2 = (r0.wwww * cb1_1.tint_symbol[9u]);
  r0.w = dot(r0.xyz, cb1_1.tint_symbol[0u].xyz);
  r0.x = dot(r0.xyz, cb1_1.tint_symbol[2u].xyz);
  let v_18 = fma(r0.www, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r2 = fma(r0.wwww, cb1_1.tint_symbol[8u], r2);
  r2 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r2);
  let v_19 = fma(r0.xxx, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r1 = (r2 + cb1_1.tint_symbol[11u]);
  o1 = r0.xyz.xyzx;
  let v_21 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_22 = (r0.xyz + v_21.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r0.w = dot(v2, v2);
  r0.w = inverseSqrt(r0.w);
  let v_23 = -(cb12_12.tint_symbol_3[2u].xyzx);
  let v_24 = fma(v2, r0.www, v_23.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  o2 = fma(cb12_12.tint_symbol_3[2u].www, r2.xyz, cb12_12.tint_symbol_3[2u].xyz).xyzx;
  r0.w = dot(r0.xyz, r0.xyz);
  r2.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_25 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_25.xy, r0.z, v_25.z);
  let v_26 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.y = (r2.x + v_26.y);
  r2.y = max(r2.y, 0.0f);
  r2.x = (r2.y / r2.x);
  r0.z = (r0.z * r2.x);
  r2.x = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r2.z = (r2.x * -1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.x = (r2.z / r2.x);
  let v_27 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r2.x, (v_27 != 0u));
  r2.x = (r2.y * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r2.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r2.x = fma((-(r0.zzzz)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].y);
  let v_28 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r2.z = clamp(vec4<f32>(v_28, v_28, v_28, v_28).z, 0.0f, 1.0f);
  let v_29 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_29, v_29, v_29, v_29).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r2.z);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_30 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = fma(r0.xxx, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  let v_32 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(r0.yyy, r4.xyz, r3.xyz);
  r0 = vec4<f32>(v_33.xy, r0.z, v_33.z);
  let v_34 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_35 = (r0.xyw + v_34.xyw);
  r0 = vec4<f32>(v_35.xy, r0.z, v_35.z);
  let v_36 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.z = (r2.y * v_36.z);
  let v_37 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.y = (r2.y + v_37.y);
  r2.y = max(r2.y, 0.0f);
  let v_38 = (r2.xy * cb3_3.tint_symbol_2[51u].yx);
  r2 = vec4<f32>(v_38.xy, r2.zw);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  o3.w = clamp(fma(r2.xxxx, r2.yyyy, r0.zzzz).w, 0.0f, 1.0f);
  r0.z = (r2.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_39 = fma(r0.zzz, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r3.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r0.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_40 = fma(r2.xxx, r3.xyz, r0.xyz);
  o3 = vec4<f32>(v_40.xyz, o3.w);
  o4 = r1;
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  let v_41 = &(x0[0u]);
  *(v_41) = vec4<f32>((*(v_41)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_5 {
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
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, v);
}
