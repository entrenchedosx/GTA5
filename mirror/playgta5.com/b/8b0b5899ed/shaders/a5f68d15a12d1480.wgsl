enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb29_struct {
  tint_symbol_3 : array<vec4<f32>, 29u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb29_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

var<private> o10 : vec4<f32>;

var<private> o11 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec4<f32>) {
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_5 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = (r0.xyz / r1.www);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  o0 = r1;
  let v_7 = (v2.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(v2.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(v2.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * r3.xyz);
  o1 = vec4<f32>(v_10.xyz, o1.w);
  o1.w = v1.w;
  let v_11 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_14 = (r0.www * r3.xyz);
  o2 = vec4<f32>(v_14.xyz, o2.w);
  o2.w = v1.y;
  r3 = vec4<f32>(((v2.yzx * v4.zxy)).xyz, r3.w);
  let v_15 = fma(v4.yzx, v2.zxy, (-(r3.xyzx)).xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = (r3.xyz * v4.www);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (r3.yyy * cb1_1.tint_symbol[1u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = fma(r3.xxx, cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r3 = vec4<f32>(v_18.xy, r3.z, v_18.z);
  let v_19 = fma(r3.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r3.xyz);
  o3 = vec4<f32>(v_20.xyz, o3.w);
  o3.w = v1.z;
  let v_21 = fma(v3, cb12_12.tint_symbol_3[25u].zw, cb12_12.tint_symbol_3[24u].xy);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  o4 = fma(cb12_12.tint_symbol_3[17u].xy, cb12_12.tint_symbol_3[27u].zw, r3.xy).xyxy;
  let v_22 = fma(v3, cb12_12.tint_symbol_3[26u].xy, cb12_12.tint_symbol_3[24u].zw);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  let v_23 = fma(cb12_12.tint_symbol_3[17u].zw, cb12_12.tint_symbol_3[28u].xy, r3.xy);
  o5 = vec4<f32>(v_23.xy, o5.zw);
  let v_24 = fma(v3, cb12_12.tint_symbol_3[26u].zw, cb12_12.tint_symbol_3[25u].xy);
  r3 = vec4<f32>(v_24.xy, r3.zw);
  let v_25 = fma(cb12_12.tint_symbol_3[18u].xy, cb12_12.tint_symbol_3[28u].zw, r3.xy);
  o5 = vec4<f32>(o5.xy, v_25.xy);
  let v_26 = (r0.yyy * cb12_12.tint_symbol_3[20u].xyw);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = fma(r0.xxx, cb12_12.tint_symbol_3[19u].xyw, r3.xyz);
  r0 = vec4<f32>(v_27.xy, r0.z, v_27.z);
  let v_28 = fma(r0.zzz, cb12_12.tint_symbol_3[21u].xyw, r0.xyw);
  r0 = vec4<f32>(v_28.xy, r0.z, v_28.z);
  let v_29 = (r0.xyw + cb12_12.tint_symbol_3[22u].xyw);
  r0 = vec4<f32>(v_29.xy, r0.z, v_29.z);
  let v_30 = (r0.xwy * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = -(r3.zzzz);
  o6.y = fma(r0.w, 0.5f, v_31.y);
  o6.x = (r3.y + r3.x);
  let v_32 = r0;
  o6 = vec4<f32>(o6.xy, v_32.ww);
  r2.w = dot((-(r1.xyzx)).xyz, cb12_12.tint_symbol_3[3u].xyz);
  let v_33 = -(r2.wwww);
  let v_34 = -(r1.xyzx);
  let v_35 = fma(v_33.xyz, cb12_12.tint_symbol_3[3u].xyz, v_34.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  r1.x = dot(r1.xyz, cb12_12.tint_symbol_3[3u].xyz);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_36 = (r1.yyy * r3.xyz);
  o7 = vec4<f32>(v_36.xyz, o7.w);
  r1.y = clamp(r1.xxxx.y, 0.0f, 1.0f);
  r1.y = log2(r1.y);
  r1.y = (r1.y * cb12_12.tint_symbol_3[10u].x);
  o7.w = exp2(r1.y);
  r1.y = dot(r1.xx, cb12_12.tint_symbol_3[9u].xx);
  r1.x = fma(r1.x, r1.x, 1.0f);
  r1.z = (cb12_12.tint_symbol_3[9u].y + 1.0f);
  r1.y = ((-(r1.yyyy)).y + r1.z);
  r1.y = log2(abs(r1.yyyy).y);
  r1.y = (r1.y * 1.5f);
  r1.y = exp2(r1.y);
  r1.x = (r1.x / r1.y);
  r1.x = (r1.x * cb12_12.tint_symbol_3[9u].z);
  let v_37 = (r1.xxx * cb12_12.tint_symbol_3[4u].xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  o8 = ((r1.xyz * cb12_12.tint_symbol_3[9u].www)).xyzx;
  let v_38 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.x = clamp(vec4<f32>(v_38, v_38, v_38, v_38).x, 0.0f, 1.0f);
  let v_39 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.y = clamp(vec4<f32>(v_39, v_39, v_39, v_39).y, 0.0f, 1.0f);
  r1.y = log2(r1.y);
  r1.y = (r1.y * cb3_3.tint_symbol_2[54u].w);
  r1.y = exp2(r1.y);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
  r1.x = exp2(r1.x);
  let v_40 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_43.xyz, r1.w);
  let v_44 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_45 = (r1.xyz + v_44.xyz);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.x = (r1.w + v_46.x);
  r2.x = max(r2.x, 0.0f);
  let v_47 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.y = (r2.x * v_47.y);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  let v_48 = fma(r2.yyy, r1.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(v_48.xyz, r1.w);
  r1.w = (r2.x / r1.w);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).w)));
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r2.y = (r0.z * -1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r0.z = (r2.y / r0.z);
  let v_49 = bitcast<u32>(r1.w);
  r0.z = select(1.0f, r0.z, (v_49 != 0u));
  r0.z = (r0.z * r2.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = clamp(((r0.zzzz * cb3_3.tint_symbol_2[52u].yyyy)).z, 0.0f, 1.0f);
  r1.w = ((-(v1.xxxx)).w + 1.0f);
  r0.z = max(r0.z, r1.w);
  let v_50 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r2.x = (r1.w * cb3_3.tint_symbol_2[52u].w);
  r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].w, 1.0f);
  r3.x = (r2.x * cb3_3.tint_symbol_2[55u].w);
  r3.y = (r2.x * cb3_3.tint_symbol_2[56u].w);
  r3.z = (r2.x * cb3_3.tint_symbol_2[57u].w);
  let v_51 = fma(r1.xyz, r1.www, r3.xyz);
  o9 = vec4<f32>(v_51.xyz, o9.w);
  o9.w = (r0.z * r1.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_3[23u].w))));
  let v_52 = bitcast<u32>(r0.z);
  o10.z = select(r0.w, 0.0f, (v_52 != 0u));
  let v_53 = r0;
  o10 = vec4<f32>(v_53.xy, o10.z, v_53.w);
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_54 = &(x0[0u]);
  *(v_54) = vec4<f32>((*(v_54)).x, vec3<f32>());
  o11[0u] = x0[0u].x;
  o11[1u] = x0[0u].y;
  o11[2u] = x0[0u].z;
  o11[3u] = x0[0u].w;
  v = vec4<f32>(o11[0u], o11[1u], o11[2u], o11[3u]);
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
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
  @builtin(position)
  o10 : vec4<f32>,
  @builtin(clip_distances)
  o11 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, v);
}
