diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb59_struct {
  tint_symbol_1 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb24_struct {
  tint_symbol_2 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb24_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec2<f32>, v2 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = fma(v0.wwww, cb1_1.tint_symbol[11u], r0);
  let v = fma(v1, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (cb12_12.tint_symbol_2[19u].y * 0.10000000149011611938f);
  let v_1 = (-(cb1_1.tint_symbol[15u].xyxx)).xy;
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.z = (-(cb12_12.tint_symbol_2[23u].xxxx)).z;
  let v_2 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r2.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = (r1.xyz + r2.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_7 = fma((-(r1.xxxy)).yw, r0.zz, cb12_12.tint_symbol_2[12u].xy);
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.x, v_8.z, v_7.y);
  let v_9 = (r0.zz * r1.xz);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = (r0.yy * r1.yw);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = fma((-(r1.xxxy)).zw, r0.xx, v1);
  o1 = vec4<f32>(o1.xy, v_11.xy);
  o1 = vec4<f32>(v1.xy, o1.zw);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.x = clamp(((r0.xxxx * r2.zzzz)).x, 0.0f, 1.0f);
  r0.x = (r0.x * 5.0f);
  o2.w = min(r0.x, 1.0f);
  let v_12 = r2;
  o2 = vec4<f32>(v_12.xyz, o2.w);
  let v_13 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_14 = (r2.xyz + v_13.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = abs(r0.wwww);
  let v_16 = -(cb12_12.tint_symbol_2[5u].xxxx);
  r0.x = (v_15.x + v_16.x);
  r0.y = (v_16.y + 1.0f);
  r0.x = clamp(((r0.xxxx / r0.yyyy)).x, 0.0f, 1.0f);
  r0.x = clamp(((r0.xxxx / cb12_12.tint_symbol_2[5u].wwww)).x, 0.0f, 1.0f);
  r0.y = fma(r0.z, -0.5f, 0.5f);
  r0.y = sqrt(r0.y);
  let v_17 = -(cb12_12.tint_symbol_2[2u].wwww);
  r0.z = (r0.y + v_17.z);
  r1.w = (v_17.w + 1.0f);
  r0.z = (r0.z / r1.w);
  let v_18 = -(cb12_12.tint_symbol_2[2u].xyzx);
  let v_19 = (cb12_12.tint_symbol_2[1u].xyz + v_18.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r0.zzz, r2.xyz, cb12_12.tint_symbol_2[2u].xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.z = (r0.y / cb12_12.tint_symbol_2[2u].w);
  let v_21 = ((-(cb12_12.tint_symbol_2[0u].xyzx)).xyz + cb12_12.tint_symbol_2[2u].xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = fma(r0.zzz, r3.xyz, cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < cb12_12.tint_symbol_2[2u].w)));
  let v_23 = bitcast<vec3<u32>>(r0.zzz);
  let v_24 = r3.xyz;
  let v_25 = select(r2.xyz, v_24, (v_23 != vec3<u32>()));
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[4u].xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r0.z = ((-(cb12_12.tint_symbol_2[5u].yyyy)).z + cb12_12.tint_symbol_2[5u].z);
  r0.y = fma(r0.y, r0.z, cb12_12.tint_symbol_2[5u].y);
  let v_27 = fma(r0.yyy, r3.xyz, r2.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = (r3.xyz * r0.yyy);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  let v_29 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = fma(r0.xxx, r5.xyz, r4.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r1.w = (abs(r0.wwww).w / cb12_12.tint_symbol_2[5u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (abs(r0.wwww).w < cb12_12.tint_symbol_2[5u].x)));
  let v_31 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = bitcast<vec3<u32>>(r0.www);
  let v_33 = r2.xyz;
  let v_34 = select(r0.xyz, v_33, (v_32 != vec3<u32>()));
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = (r0.xyz * cb12_12.tint_symbol_2[8u].xxx);
  o3 = vec4<f32>(v_35.xyz, o3.w);
  o3.w = 0.0f;
  r0 = vec4<f32>(((v1 + vec2<f32>(-0.5f))).xy, r0.zw);
  r2 = (r0.xyyx + cb12_12.tint_symbol_2[23u].wwzz);
  let v_36 = (r0.xy + cb12_12.tint_symbol_2[23u].yy);
  r0 = vec4<f32>(v_36.xy, r0.zw);
  let v_37 = (r0.xy * cb12_12.tint_symbol_2[20u].xx);
  o5 = vec4<f32>(o5.xy, v_37.xy);
  o4 = (r2 * cb12_12.tint_symbol_2[17u].yyww);
  o5 = vec4<f32>(((v2 * vec2<f32>(64.0f))).xy, o5.zw);
  o6 = ((v2 * vec2<f32>(12.0f))).xyxy;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.x);
  r0.x = inverseSqrt(r0.x);
  let v_38 = (r0.xxx * r1.xyz);
  r0 = vec4<f32>(v_38.x, r0.y, v_38.yz);
  let v_39 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r1.x = (r0.y + v_39.x);
  r1.x = max(r1.x, 0.0f);
  r0.y = (r1.x / r0.y);
  r0.y = (r0.y * r1.z);
  r1.y = (r0.y * cb3_3.tint_symbol_1[52u].z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.yyyy).y)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_40 = bitcast<u32>(r0.y);
  r0.y = select(1.0f, r1.y, (v_40 != 0u));
  r1.y = (r1.x * cb3_3.tint_symbol_1[51u].w);
  let v_41 = -(cb3_3.tint_symbol_1[51u].zzzz);
  r1.x = (r1.x * v_41.x);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r0.y = (r0.y * r1.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  o7.w = clamp(((r0.yyyy * cb3_3.tint_symbol_1[52u].yyyy)).w, 0.0f, 1.0f);
  let v_42 = dot(r0.xzw, cb3_3.tint_symbol_1[53u].xyz);
  r0.y = clamp(vec4<f32>(v_42, v_42, v_42, v_42).y, 0.0f, 1.0f);
  let v_43 = dot(r0.xzw, cb3_3.tint_symbol_1[54u].xyz);
  r0.x = clamp(vec4<f32>(v_43, v_43, v_43, v_43).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_1[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r0.y);
  r0.y = (r0.y * cb3_3.tint_symbol_1[53u].w);
  r0.y = exp2(r0.y);
  let v_44 = ((-(cb3_3.tint_symbol_1[56u].xxyz)).yzw + cb3_3.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(r1.x, v_44.xyz);
  let v_45 = fma(r0.xxx, r1.yzw, cb3_3.tint_symbol_1[56u].xyz);
  r0 = vec4<f32>(v_45.x, r0.y, v_45.yz);
  let v_46 = ((-(r0.xxzw)).yzw + cb3_3.tint_symbol_1[55u].xyz);
  r1 = vec4<f32>(r1.x, v_46.xyz);
  let v_47 = fma(r0.yyy, r1.yzw, r0.xzw);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  let v_48 = -(cb3_3.tint_symbol_1[57u].xyzx);
  let v_49 = (r0.xyz + v_48.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = fma(r1.xxx, r0.xyz, cb3_3.tint_symbol_1[57u].xyz);
  o7 = vec4<f32>(v_50.xyz, o7.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec2<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6, o7);
}
