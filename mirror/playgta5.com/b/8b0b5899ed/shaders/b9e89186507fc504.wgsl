enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb160_struct {
  tint_symbol_2 : array<vec4<f32>, 160u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb160_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec3<f32>, v3 : vec2<f32>) {
  let v_1 = cb10_10.tint_symbol_2[2u];
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o0.w = 1.0f;
  o1 = ((v3 * cb10_10.tint_symbol_2[1u].xy)).xyxy;
  r0.x = (v0.y * cb10_10.tint_symbol_2[0u].x);
  let v_2 = r0.x;
  let v_3 = max(v_2, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_3), 2147483647i, (v_3 >= 2147483648.0f)), 0i, !((v_2 == v_2))));
  r0.x = trunc(r0.x);
  let v_4 = -(r0.xxxx);
  r1.y = fma(v0.y, cb10_10.tint_symbol_2[0u].x, v_4.y);
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) * 3i));
  r0.z = (r1.y + 0.00100000004749745131f);
  r2.z = (r0.z * r0.z);
  r2.w = (r0.z * r2.z);
  r1.x = 1.0f;
  let v_5 = (r1.xy + vec2<f32>(0.0f, 0.00100000004749745131f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r3.x = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r2);
  r1.z = (r1.y * r1.y);
  r1.w = (r1.y * r1.z);
  r4.x = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r1);
  let v_6 = bitcast<vec2<f32>>(((bitcast<vec2<i32>>(r0.yy) * vec2<i32>(3i)) + vec2<i32>(1i, 2i)));
  let v_7 = r0;
  r0 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
  r3.y = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r2);
  r3.z = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.z) + 3i))], r2);
  r4.y = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r1);
  r4.z = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.z) + 3i))], r1);
  let v_8 = -(r4.xxyz);
  let v_9 = (r3.xyz + v_8.xzw);
  r0 = vec4<f32>(v_9.x, r0.y, v_9.yz);
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = inverseSqrt(r1.x);
  let v_10 = (r0.xzw * r1.xxx);
  r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
  r1.x = bitcast<f32>((bitcast<i32>(r0.y) + 1i));
  let v_11 = (r1.yyy * cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r1.x) + 120i))].yzx);
  r1 = vec4<f32>(v_11.x, r1.y, v_11.yz);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_12 = fma(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.y) + 120i))].yzx, r1.yyy, r1.xzw);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = (r0.wxz * r1.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = -(r2.xyzx);
  let v_15 = fma(r0.zwx, r1.yzx, v_14.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_16 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r0.zwx * r1.zxy);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = -(r2.xyzx);
  let v_19 = fma(r1.yzx, r0.wxz, v_18.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_20 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = (r1.xyz * v1.zzz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = fma(r2.xyz, v1.xxx, r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = fma(r0.xzw, v1.yyy, r3.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = (r3.yyy * cb1_1.tint_symbol[1u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = fma(r3.xxx, cb1_1.tint_symbol[0u].xyz, r5.xyz);
  r3 = vec4<f32>(v_25.xy, r3.z, v_25.z);
  let v_26 = fma(r3.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_27 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  o2 = r3.xyz.xyzx;
  let v_28 = (r1.xyz * v2.zzz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = (r1.xyz * v0.zzz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = (r1.xyz * cb10_10.tint_symbol_2[0u].yyy);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = fma(r2.xyz, v2.xxx, r5.xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = (r2.xyz * v0.xxx);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = fma(r2.xyz, cb10_10.tint_symbol_2[0u].yyy, r1.xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  let v_34 = (r4.xyz + r1.xyz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = fma(r0.xzw, v2.yyy, r5.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_37.xy, r0.z, v_37.z);
  let v_38 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_39 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  o3 = r0.xyz.xyzx;
  let v_40 = (r0.yzx * r3.zxy);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = -(r2.xyzx);
  let v_42 = fma(r3.yzx, r0.zxy, v_41.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o4 = ((r0.www * r0.xyz)).xyzx;
  let v_43 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  o5 = vec4<f32>(v_46.xyz, o5.w);
  o5.w = 1.0f;
  r0 = (r1.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(r1.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(r1.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o6 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_47 = &(x0[0u]);
  *(v_47) = vec4<f32>((*(v_47)).x, vec3<f32>());
  o7[0u] = x0[0u].x;
  o7[1u] = x0[0u].y;
  o7[2u] = x0[0u].z;
  o7[3u] = x0[0u].w;
  v = vec4<f32>(o7[0u], o7[1u], o7[2u], o7[3u]);
}

struct tint_symbol_4 {
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
  @builtin(position)
  o6 : vec4<f32>,
  @builtin(clip_distances)
  o7 : array<f32, 4u>,
  @location(15u)
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, o7, v);
}
