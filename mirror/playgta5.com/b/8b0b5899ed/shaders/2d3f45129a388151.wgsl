diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

struct cb160_struct {
  tint_symbol_2 : array<vec4<f32>, 160u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb160_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  r0.x = (v0.y * cb10_10.tint_symbol_2[0u].x);
  let v = r0.x;
  let v_1 = max(v, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_1), 2147483647i, (v_1 >= 2147483648.0f)), 0i, !((v == v))));
  r0.x = trunc(r0.x);
  let v_2 = -(r0.xxxx);
  r1.y = fma(v0.y, cb10_10.tint_symbol_2[0u].x, v_2.y);
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) * 3i));
  r0.z = (r1.y + 0.00100000004749745131f);
  r2.z = (r0.z * r0.z);
  r2.w = (r0.z * r2.z);
  r1.x = 1.0f;
  let v_3 = (r1.xy + vec2<f32>(0.0f, 0.00100000004749745131f));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r3.z = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r2);
  r1.z = (r1.y * r1.y);
  r1.w = (r1.y * r1.z);
  r4.x = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r1);
  let v_4 = bitcast<vec2<f32>>(((bitcast<vec2<i32>>(r0.yy) * vec2<i32>(3i)) + vec2<i32>(1i, 2i)));
  let v_5 = r0;
  r0 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  r3.x = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r2);
  r3.y = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.z) + 3i))], r2);
  r4.y = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 3i))], r1);
  r4.z = dot(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.z) + 3i))], r1);
  let v_6 = -(r4.yyzx);
  let v_7 = (r3.xyz + v_6.xzw);
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  r1.x = dot(r0.xzw, r0.xzw);
  r1.x = inverseSqrt(r1.x);
  let v_8 = (r0.xzw * r1.xxx);
  r0 = vec4<f32>(v_8.x, r0.y, v_8.yz);
  r1.x = bitcast<f32>((bitcast<i32>(r0.y) + 1i));
  let v_9 = (r1.yyy * cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r1.x) + 120i))].yzx);
  r1 = vec4<f32>(v_9.x, r1.y, v_9.yz);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_10 = fma(cb10_10.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.y) + 120i))].yzx, r1.yyy, r1.xzw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r0.zwx * r1.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = -(r2.xyzx);
  let v_13 = fma(r0.xzw, r1.yzx, v_12.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_14 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (r0.xzw * r1.zxy);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = -(r2.xyzx);
  let v_17 = fma(r1.yzx, r0.zwx, v_16.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r1.xyz * v0.zzz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r1.xyz * cb10_10.tint_symbol_2[0u].yyy);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r0.xyz * v0.xxx);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = fma(r0.xyz, cb10_10.tint_symbol_2[0u].yyy, r1.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r4.xyz + r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_25.xy, r0.z, v_25.z);
  let v_26 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = -(cb6_6.tint_symbol_1[0u].xyzx);
  let v_29 = (r0.xyz + v_28.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  r1 = (r0.yyyy * cb6_6.tint_symbol_1[3u]);
  r1 = fma(r0.xxxx, cb6_6.tint_symbol_1[2u], r1);
  r1 = fma(r0.zzzz, cb6_6.tint_symbol_1[4u], r1);
  o1 = r0.xyz.xyzx;
  o0 = (r1 + cb6_6.tint_symbol_1[5u]);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1);
}
