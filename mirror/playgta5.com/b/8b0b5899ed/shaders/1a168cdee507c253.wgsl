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

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb5_struct;

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
  r0 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r0.w);
  let v_1 = fma(r0.xyz, v3.yyy, v1.xyz);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o0.w = (v1.w * v4.y);
  let v_2 = v13.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
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
  r0 = vec4<f32>(((v0.xz + v7.xz)).xy, r0.zw);
  r1.x = v6.w;
  r1.y = v8.w;
  let v_5 = (r0.xy + r1.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = ((-(r1.xyxx)).xy + v8.xz);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = fma(r1.xy, r0.zz, r0.xy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r1 = vec4<f32>(((v6.xz + (-(v7.xzxx)).xy)).xy, r1.zw);
  let v_8 = fma(r1.xy, r0.ww, r0.xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.z = 1.0f;
  r1.x = dot(r0.xyz, cb9_9.tint_symbol_4[2u].xyz);
  r1.y = dot(r0.xyz, cb9_9.tint_symbol_4[3u].xyz);
  r1.z = dot(r0.xyz, cb9_9.tint_symbol_4[4u].xyz);
  x4[0u].x = dot(r0.xyz, cb0_0.tint_symbol_1[0u].xyw);
  let v_9 = r0;
  o11 = vec4<f32>(v_9.xy, o11.zw);
  let v_10 = (r1.xyz * cb7_7.tint_symbol_3[0u].xxx);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(r1.xyz, cb7_7.tint_symbol_3[0u].xxx, cb1_1.tint_symbol[15u].xyz);
  o8 = vec4<f32>(v_11.xyz, o8.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_12 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_12.xy, r0.z, v_12.z);
  let v_13 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_13.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r1.z = (r1.x * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.x = (r1.z / r1.x);
  let v_14 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.x, (v_14 != 0u));
  r1.x = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.x = fma((-(r0.zzzz)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[52u].y);
  let v_15 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r1.z = clamp(vec4<f32>(v_15, v_15, v_15, v_15).z, 0.0f, 1.0f);
  let v_16 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_16, v_16, v_16, v_16).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r1.z);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_17 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(r0.yyy, r3.xyz, r2.xyz);
  r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
  let v_21 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_22 = (r0.xyw + v_21.xyw);
  r0 = vec4<f32>(v_22.xy, r0.z, v_22.z);
  let v_23 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.y * v_23.z);
  let v_24 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.y = (r1.y + v_24.y);
  r1.y = max(r1.y, 0.0f);
  let v_25 = (r1.xy * cb3_3.tint_symbol_2[51u].yx);
  r1 = vec4<f32>(v_25.xy, r1.zw);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  o4.w = clamp(fma(r1.xxxx, r1.yyyy, r0.zzzz).w, 0.0f, 1.0f);
  r0.z = (r1.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_26 = fma(r0.zzz, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r0.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_27 = fma(r1.xxx, r2.xyz, r0.xyz);
  o4 = vec4<f32>(v_27.xyz, o4.w);
  o5 = v4;
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7 = vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f);
  o8.w = 0.0f;
  o9 = vec4<f32>();
  o10 = vec4<f32>();
  o11 = vec4<f32>(o11.xy, vec2<f32>(0.0f, 1.0f));
  let v_28 = &(x4[0u]);
  *(v_28) = vec4<f32>((*(v_28)).x, vec3<f32>());
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
