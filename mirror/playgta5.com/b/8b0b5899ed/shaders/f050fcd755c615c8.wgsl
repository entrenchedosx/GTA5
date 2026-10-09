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

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb59_struct {
  tint_symbol_3 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb7_struct;

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
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f >= v1.w)));
  r0.y = (v1.w * v4.w);
  let v_1 = bitcast<u32>(r0.x);
  r0.w = select(r0.y, 0.0f, (v_1 != 0u));
  r1 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r1.w);
  let v_2 = fma(r1.xyz, v3.yyy, v1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (v3.y == 0.0f)));
  let v_3 = bitcast<vec4<u32>>(r1.xxxx);
  r0 = select(r0, vec4<f32>(), (v_3 != vec4<u32>()));
  o0.w = (r0.w * v4.y);
  let v_4 = r0;
  o0 = vec4<f32>(v_4.xyz, o0.w);
  let v_5 = v13.xy;
  let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
  let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0.z = x0[bitcast<i32>(r0.x)].x;
  r1 = vec4<f32>((((-(v11.xwxx)).xy + v11.yz)).xy, r1.zw);
  o1.z = fma(r0.z, r1.x, v11.x);
  r0.w = x1[bitcast<i32>(r0.y)].x;
  o1.w = fma(r0.w, r1.y, v11.w);
  r1 = vec4<f32>((((-(v10.xwxx)).xy + v10.yz)).xy, r1.zw);
  o1.x = fma(r0.z, r1.x, v10.x);
  o1.y = fma(r0.w, r1.y, v10.w);
  r0.x = x2[bitcast<i32>(r0.x)].x;
  r0.y = x3[bitcast<i32>(r0.y)].x;
  o2.y = fma(r0.y, r1.y, v10.w);
  o2.x = fma(r0.x, r1.x, v10.x);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  o3.y = v3.y;
  r1 = vec4<f32>(((v0 + v7.xyz)).xyz, r1.w);
  r2.x = v6.w;
  r2.y = v7.w;
  r2.z = v8.w;
  let v_8 = (r1.xyz + r2.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = ((-(r2.xyzx)).xyz + v8.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r2.xyz, r0.zzz, r1.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r3 = vec4<f32>(((v6.xyz + (-(v7.xyzx)).xyz)).xyz, r3.w);
  let v_11 = fma(r3.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r2.xyz + r3.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r2.xyz, vec3<f32>(0.5f), r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (r2.xyz * vec3<f32>(0.5f));
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = (1.0f / r0.w);
  let v_15 = -(r1.xyzx);
  let v_16 = (r0.xyz + v_15.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = ((-(r0.xyzx)).xyz + r1.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(r2.xyz, v4.www, r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = (r0.w * r0.x);
  o7.x = (r0.x * cb8_8.tint_symbol_4[4u].y);
  let v_19 = ((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = fma(r0.xyz, cb8_8.tint_symbol_4[3u].yyy, r1.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_23 = (r0.xyz + v_22.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_24 = (r0.www * r1.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = -(cb3_3.tint_symbol_3[50u].xxxx);
  r0.w = (r1.w + v_25.w);
  r0.w = max(r0.w, 0.0f);
  r1.x = (r0.w / r1.w);
  let v_26 = -(cb8_8.tint_symbol_4[6u].yyyy);
  r1.y = (r1.w + v_26.y);
  o7.y = clamp(((r1.yyyy / cb8_8.tint_symbol_4[6u].xxxx)).y, 0.0f, 1.0f);
  r1.x = (r1.x * r1.z);
  r1.y = (r1.x * cb3_3.tint_symbol_3[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_27 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.y, (v_27 != 0u));
  r1.y = (r0.w * cb3_3.tint_symbol_3[51u].w);
  r1.x = (r1.x * r1.y);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = fma((-(r1.xxxx)).y, cb3_3.tint_symbol_3[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_3[52u].y);
  r1.y = (r1.y * cb3_3.tint_symbol_3[51u].y);
  let v_28 = dot(r2.xyz, cb3_3.tint_symbol_3[53u].xyz);
  r1.z = clamp(vec4<f32>(v_28, v_28, v_28, v_28).z, 0.0f, 1.0f);
  let v_29 = dot(r2.xyz, cb3_3.tint_symbol_3[54u].xyz);
  r1.w = clamp(vec4<f32>(v_29, v_29, v_29, v_29).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_3[54u].w);
  r1.w = exp2(r1.w);
  r1.z = log2(r1.z);
  r1.z = (r1.z * cb3_3.tint_symbol_3[53u].w);
  r1.z = exp2(r1.z);
  let v_30 = ((-(cb3_3.tint_symbol_3[56u].xyzx)).xyz + cb3_3.tint_symbol_3[58u].xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_3[56u].xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_3[55u].xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r1.zzz, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = -(cb3_3.tint_symbol_3[57u].xyzx);
  let v_35 = (r2.xyz + v_34.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = -(cb3_3.tint_symbol_3[51u].zzzz);
  r1.z = (r0.w * v_36.z);
  let v_37 = -(cb3_3.tint_symbol_3[52u].xxxx);
  r0.w = (r0.w + v_37.w);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_3[51u].x);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  o4.w = clamp(fma(r1.yyyy, r0.wwww, r1.xxxx).w, 0.0f, 1.0f);
  r0.w = (r1.z * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_38 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_3[57u].xyz);
  r1 = vec4<f32>(v_38.x, r1.y, v_38.yz);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_3[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_3[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_3[57u].w);
  let v_39 = fma(r1.yyy, r2.xyz, r1.xzw);
  o4 = vec4<f32>(v_39.xyz, o4.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o5.x = clamp(((r0.zzzz / cb2_2.tint_symbol_2[16u].yyyy)).x, 0.0f, 1.0f);
  o5 = vec4<f32>(o5.x, v4.yzw);
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7.w = r0.w;
  o7.z = 0.0f;
  o8 = vec4<f32>();
  o9 = vec4<f32>();
  o10 = vec4<f32>();
  o11 = r0;
  x4[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_40 = &(x4[0u]);
  *(v_40) = vec4<f32>((*(v_40)).x, vec3<f32>());
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
