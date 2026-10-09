enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

struct cb7_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb7_struct_1;

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

var<private> o11 : vec4<f32>;

var<private> o12 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 3u>;

var<private> x1 : array<vec4<f32>, 3u>;

var<private> x2 : array<vec4<f32>, 3u>;

var<private> x3 : array<vec4<f32>, 3u>;

var<private> x4 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : vec4<f32>, v13 : vec3<f32>) {
  r0 = vec4<f32>(((v0 + v7.xyz)).xyz, r0.w);
  r1.x = v6.w;
  r1.y = v7.w;
  r1.z = v8.w;
  let v_1 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = ((-(r1.xyzx)).xyz + v8.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r2 = vec4<f32>(((v6.xyz + (-(v7.xyzx)).xyz)).xyz, r2.w);
  let v_3 = (r1.xyz + r2.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = (r3.xyz * vec3<f32>(0.5f));
  r4 = vec4<f32>(v_4.xyz, r4.w);
  let v_5 = fma(r3.xyz, vec3<f32>(0.5f), r0.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r5 = vec4<f32>((((-(v10.xwxx)).xy + v10.yz)).xy, r5.zw);
  r5 = vec4<f32>(r5.xy, (((-(v11.xxxw)).zw + v11.yz)).xy);
  x0[0u].x = v9.x;
  x0[1u].x = 0.5f;
  x0[2u].x = v9.y;
  x1[0u].x = v9.z;
  x1[1u].x = 0.5f;
  x1[2u].x = v9.w;
  x2[0u].x = v9.x;
  x2[1u].x = 0.5f;
  x2[2u].x = v9.y;
  x3[0u].x = v9.z;
  x3[1u].x = 0.5f;
  x3[2u].x = v9.w;
  let v_6 = v13.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r6 = vec4<f32>(v_8.xy, r6.zw);
  r0.w = x0[bitcast<i32>(r6.x)].x;
  r1.w = x1[bitcast<i32>(r6.y)].x;
  let v_9 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r2.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r1.x);
  r1.x = (1.0f / r1.x);
  o1.x = fma(r0.w, r5.x, v10.x);
  o1.y = fma(r1.w, r5.y, v10.w);
  o1.z = fma(r0.w, r5.z, v11.x);
  o1.w = fma(r1.w, r5.w, v11.w);
  r0.w = x2[bitcast<i32>(r6.x)].x;
  o2.x = fma(r0.w, r5.x, v10.x);
  r0.w = x3[bitcast<i32>(r6.y)].x;
  o2.y = fma(r0.w, r5.y, v10.w);
  let v_11 = ((-(r0.xxyz)).yzw + r3.xyz);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = sqrt(r0.w);
  r0.w = (r1.x * r0.w);
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  let v_12 = ((-(r3.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(r0.xyz, v4.www, r3.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r1.xyz, cb8_8.tint_symbol_4[3u].yyy, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f >= v1.w)));
  r2.y = (v1.w * v4.w);
  o7.x = (r0.w * cb8_8.tint_symbol_4[4u].y);
  let v_17 = -(cb1_1.tint_symbol[15u].xyxz);
  let v_18 = (r0.xyz + v_17.xyw);
  r0 = vec4<f32>(v_18.xy, r0.z, v_18.z);
  r2.z = dot(r0.xyw, r0.xyw);
  r2.w = sqrt(r2.z);
  let v_19 = -(cb8_8.tint_symbol_4[6u].yyyy);
  r3.x = (r2.w + v_19.x);
  o7.y = clamp(((r3.xxxx / cb8_8.tint_symbol_4[6u].xxxx)).y, 0.0f, 1.0f);
  r3 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r3.w);
  let v_20 = fma(r3.xyz, v3.yyy, v1.xyz);
  o0 = vec4<f32>(v_20.xyz, o0.w);
  r2.y = (r2.y * v4.y);
  let v_21 = bitcast<u32>(r2.x);
  o0.w = select(r2.y, 0.0f, (v_21 != 0u));
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_3[5u].x))));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r3.x = (cb9_9.tint_symbol_3[6u].x * cb9_9.tint_symbol_3[6u].x);
    let v_22 = (r0.xyw / r2.www);
    r4 = vec4<f32>(v_22.xyz, r4.w);
    r2.x = abs(r4.zzzz).x;
    r2.x = (1.0f / r2.x);
    r0.z = ((-(r0.zzzz)).z + cb9_9.tint_symbol_3[6u].y);
    let v_23 = -(cb9_9.tint_symbol_3[6u].yyyy);
    r2.y = (cb1_1.tint_symbol[15u].z + v_23.y);
    let v_24 = abs(r2.yyyy);
    r2.y = (r2.x * v_24.y);
    r3.w = dot((-(cb1_1.tint_symbol[14u].xyzx)).xyz, r4.xyz);
    let v_25 = abs(r3.wwww);
    r4.x = (r2.y * v_25.x);
    r0.z = fma(abs(r0.zzzz).z, r2.x, r2.y);
    let v_26 = abs(r3.wwww);
    r0.z = (r0.z * v_26.z);
    r2.x = fma(r4.x, cb9_9.tint_symbol_3[1u].z, cb9_9.tint_symbol_3[1u].w);
    let v_27 = -(r4.xxxx);
    r2.x = (r2.x / v_27.x);
    r2.y = fma(r0.z, cb9_9.tint_symbol_3[1u].z, cb9_9.tint_symbol_3[1u].w);
    let v_28 = -(r0.zzzz);
    r0.z = (r2.y / v_28.z);
    r0.z = ((-(r2.xxxx)).z + r0.z);
    r3.y = abs(r0.zzzz).y;
    r3.z = (abs(r2.xxxx).z * r3.x);
    let v_29 = (r3.xy * r3.yz);
    r2 = vec4<f32>(v_29.xy, r2.zw);
    let v_30 = (r2.xy * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
    r2 = vec4<f32>(v_30.xy, r2.zw);
    let v_31 = exp2(r2.xy);
    o4 = vec4<f32>(v_31.xy, o4.zw);
    o4 = vec4<f32>(o4.xy, vec2<f32>());
  } else {
    let v_32 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r0.z = (r2.w + v_32.z);
    r0.z = max(r0.z, 0.0f);
    r2.x = (r0.z / r2.w);
    r2.x = (r0.w * r2.x);
    r2.y = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.y * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = (r2.w / r2.y);
    let v_33 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.y, (v_33 != 0u));
    r2.y = (r0.z * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.y);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.y = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r2.z = inverseSqrt(r2.z);
    let v_34 = (r0.xyw * r2.zzz);
    r0 = vec4<f32>(v_34.xy, r0.z, v_34.z);
    let v_35 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
    r2.z = clamp(vec4<f32>(v_35, v_35, v_35, v_35).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[54u].w);
    r2.z = exp2(r2.z);
    let v_36 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
    r0.x = clamp(vec4<f32>(v_36, v_36, v_36, v_36).x, 0.0f, 1.0f);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb3_3.tint_symbol_2[53u].w);
    r0.x = exp2(r0.x);
    r0.y = fma((-(r2.xxxx)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_37 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r0.w = (r0.z + v_37.w);
    r0.w = max(r0.w, 0.0f);
    let v_38 = (r0.yw * cb3_3.tint_symbol_2[51u].yx);
    let v_39 = r0;
    r0 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
    r0.w = (r0.w * 1.44269502162933349609f);
    r0.w = exp2(r0.w);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    o4.w = clamp(fma(r0.yyyy, r0.wwww, r2.yyyy).w, 0.0f, 1.0f);
    let v_40 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r0.z = (r0.z * v_40.z);
    r0.z = (r0.z * 1.44269502162933349609f);
    r0.z = exp2(r0.z);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    let v_41 = ((-(cb3_3.tint_symbol_2[56u].xyxz)).xyw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_41.xy, r2.z, v_41.z);
    let v_42 = fma(r2.zzz, r2.xyw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_42.xyz, r2.w);
    let v_43 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_43.xyz, r3.w);
    let v_44 = fma(r0.xxx, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_44.xyz, r2.w);
    let v_45 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_46 = (r2.xyz + v_45.xyz);
    r2 = vec4<f32>(v_46.xyz, r2.w);
    let v_47 = fma(r0.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r0 = vec4<f32>(v_47.x, r0.y, v_47.yz);
    r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
    r2.y = ((-(r0.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
    r2.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_2[57u].w);
    let v_48 = fma(r0.yyy, r2.xyz, r0.xzw);
    o4 = vec4<f32>(v_48.xyz, o4.w);
  }
  x4[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o5 = v4;
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7.z = 1.0f;
  o7.w = r1.w;
  o8 = vec4<f32>();
  o10 = vec4<f32>();
  o11 = r1;
  let v_49 = &(x4[0u]);
  *(v_49) = vec4<f32>((*(v_49)).x, vec3<f32>());
  o9 = vec4<f32>();
  o3.y = v3.y;
  o12[0u] = x4[0u].x;
  o12[1u] = x4[0u].y;
  o12[2u] = x4[0u].z;
  o12[3u] = x4[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
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
  @location(10u)
  o10 : vec4<f32>,
  @builtin(position)
  o11 : vec4<f32>,
  @builtin(clip_distances)
  o12 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @location(13u) v13 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v3, v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
