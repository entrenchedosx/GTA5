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

struct cb159_struct {
  tint_symbol_1 : array<vec4<f32>, 159u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb159_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec3<f32>, v3 : vec2<f32>) {
  r0.x = (v0.y * cb13_13.tint_symbol_1[0u].x);
  let v = r0.x;
  let v_1 = max(v, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_1), 2147483647i, (v_1 >= 2147483648.0f)), 0i, !((v == v))));
  r0.x = trunc(r0.x);
  let v_2 = -(r0.xxxx);
  r1.y = fma(v0.y, cb13_13.tint_symbol_1[0u].x, v_2.y);
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) * 3i));
  r0.z = (r1.y + 0.00100000004749745131f);
  r2.z = (r0.z * r0.z);
  r2.w = (r0.z * r2.z);
  r1.x = 1.0f;
  let v_3 = (r1.xy + vec2<f32>(0.0f, 0.00100000004749745131f));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r3.z = dot(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], r2);
  let v_4 = bitcast<vec2<f32>>(((bitcast<vec2<i32>>(r0.yy) * vec2<i32>(3i)) + vec2<i32>(1i, 2i)));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  r3.x = dot(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], r2);
  r3.y = dot(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], r2);
  r1.z = (r1.y * r1.y);
  r1.w = (r1.y * r1.z);
  r2.x = dot(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], r1);
  r2.y = dot(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], r1);
  r2.z = dot(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], r1);
  let v_5 = ((-(r2.yyzx)).xzw + r3.xyz);
  r0 = vec4<f32>(v_5.x, r0.y, v_5.yz);
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = inverseSqrt(r1.x);
  let v_6 = (r0.xzw * r1.xxx);
  r0 = vec4<f32>(v_6.x, r0.y, v_6.yz);
  r1.x = ((-(r1.yyyy)).x + 1.0f);
  r1.z = bitcast<f32>((bitcast<i32>(r0.y) + 1i));
  let v_7 = (r1.yyy * cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.z) + 118i))].zxy);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r1.z = ((-(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 118i))].wwww)).z + cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.z) + 118i))].w);
  r1.y = fma(r1.y, r1.z, cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 118i))].w);
  let v_8 = fma(cb13_13.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 118i))].zxy, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_8.x, r1.y, v_8.yz);
  r0.y = (r1.y * cb13_13.tint_symbol_1[158u].z);
  o2.y = fma(v3.y, cb13_13.tint_symbol_1[158u].y, r0.y);
  let v_9 = (r0.wxz * r1.xzw);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = -(r3.xyzx);
  let v_11 = fma(r0.zwx, r1.zwx, v_10.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_12 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = (r0.zwx * r1.zxy);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = -(r3.xyzx);
  let v_15 = fma(r1.yzx, r0.wxz, v_14.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_16 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (r3.zxy * v0.xxx);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = (r1.zxy * v0.zzz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = (r5.xyz * cb13_13.tint_symbol_1[158u].www);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = fma(r4.xyz, cb13_13.tint_symbol_1[158u].www, r5.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = (r2.xyz + r4.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r4 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r4 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r4);
  r4 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r4);
  o0 = (r4 + cb1_1.tint_symbol[11u]);
  let v_22 = (r2.yyy * cb1_1.tint_symbol[1u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r2.xxx, cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r2 = vec4<f32>(v_23.xy, r2.z, v_23.z);
  let v_24 = fma(r2.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = (r2.xyz + cb1_1.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  o1 = r2.xyz.xyzx;
  let v_26 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  o2.x = (v3.x * cb13_13.tint_symbol_1[158u].x);
  let v_27 = (r1.yzx * v1.zzz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = (r1.xyz * v2.zzz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = fma(r3.xyz, v2.xxx, r1.xyz);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = fma(r3.yzx, v1.xxx, r4.xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = fma(r0.zwx, v1.yyy, r3.xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  let v_32 = fma(r0.xzw, v2.yyy, r1.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = (r3.zzz * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  let v_34 = fma(r3.yyy, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = fma(r3.xxx, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  o3 = ((r0.www * r1.xyz)).xyzx;
  o4 = vec4<f32>(1.0f);
  let v_36 = (r0.xxx * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = fma(r0.zzz, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = fma(r0.yyy, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  o5 = ((r0.www * r1.xyz)).xyzx;
  let v_39 = (r0.xyz * r3.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = -(r1.xyzx);
  let v_41 = fma(r3.zxy, r0.yzx, v_40.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o6 = ((r0.www * r0.xyz)).xyzx;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = inverseSqrt(r0.x);
  o7 = ((r0.xxx * r2.xyz)).xyzx;
}

struct tint_symbol_2 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5, o6, o7);
}
