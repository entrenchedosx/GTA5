diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb24_struct {
  tint_symbol_1 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb24_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb3_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

var<private> v7 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<i32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v : i32) {
  let v_1 = 0i;
  v7.x = bitcast<f32>((v - v_1));
  r0.x = clamp(((v5.zzzz + vec4<f32>(-0.5f))).x, 0.0f, 1.0f);
  r0.x = (r0.x + r0.x);
  r1 = (v2 * vec4<f32>(255.001953125f));
  let v_2 = r1;
  let v_3 = max(v_2, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_3), vec4<i32>(2147483647i), (v_3 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_2 == v_2))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1) * vec4<i32>(3i)));
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r1.y)]);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.x)], v1.xxxx, r2);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.z)], v1.zzzz, r2);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.w)], v1.wwww, r2);
  r3.x = dot(r2.xyz, v4);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 1i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 1i))], v1.zzzz, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 1i))], v1.wwww, r4);
  r3.y = dot(r4.xyz, v4);
  r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 2i))]);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], v1.xxxx, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 2i))], v1.zzzz, r5);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 2i))], v1.wwww, r5);
  r3.z = dot(r1.xyz, v4);
  let v_4 = (r3.xyz * cb9_9.tint_symbol_4[0u].xxx);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (r3.xyz * cb9_9.tint_symbol_4[0u].yyy);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = (r3.xyz * v6.www);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r5 = vec4<f32>(v0.xyz, r5.w);
  r5.w = 1.0f;
  r2.x = dot(r2, r5);
  r2.y = dot(r4, r5);
  r2.z = dot(r1, r5);
  let v_8 = fma(r0.xyz, cb13_13.tint_symbol_3[2u].yyy, r2.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r3.xyz, cb13_13.tint_symbol_3[2u].zzz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r0.w = bitcast<f32>((bitcast<u32>(v7.x) >> 2u));
  r1.x = bitcast<f32>((bitcast<u32>(v7.x) & 3u));
  r1.y = bitcast<f32>(-(bitcast<i32>(r1.x)));
  let v_10 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<u32>>(r1.xxx) < vec3<u32>(1u, 2u, 3u))));
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r1.x = bitcast<f32>((bitcast<i32>(r1.x) + -3i));
  let v_11 = bitcast<u32>(r2.y);
  r3.z = select(r1.x, 0.0f, (v_11 != 0u));
  r3.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.y)));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
  r3.x = r2.x;
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & bitcast<vec4<u32>>(cb6_6.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.w) + 4i))])));
  let v_12 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.yw) | bitcast<vec2<u32>>(r1.xz)));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<i32>(r0.w) << 2u));
  let v_13 = bitcast<i32>(r0.w);
  o1 = vec4<i32>(v_13, v_13, v_13, v_13);
  r2 = (cb6_6.tint_symbol_2[1u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[1u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r2);
  r2 = fma(cb6_6.tint_symbol_2[1u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[1u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r2);
  r2 = (r0.yyyy * r2);
  r3 = (cb6_6.tint_symbol_2[0u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r3 = fma(cb6_6.tint_symbol_2[0u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r3);
  r3 = fma(cb6_6.tint_symbol_2[0u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r3);
  r3 = fma(cb6_6.tint_symbol_2[0u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r3);
  r2 = fma(r0.xxxx, r3, r2);
  r3 = (cb6_6.tint_symbol_2[2u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r3 = fma(cb6_6.tint_symbol_2[2u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r3);
  r3 = fma(cb6_6.tint_symbol_2[2u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r3);
  r3 = fma(cb6_6.tint_symbol_2[2u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r3);
  r0 = fma(r0.zzzz, r3, r2);
  r2 = (cb6_6.tint_symbol_2[3u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[3u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r2);
  r2 = fma(cb6_6.tint_symbol_2[3u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r2);
  r1 = fma(cb6_6.tint_symbol_2[3u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r2);
  o0 = (r0 + r1);
}

struct tint_symbol_5 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u) @interpolate(flat)
  o1 : vec4<i32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(instance_index) v_14 : u32) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v4, v5, v6, i32(v_14));
  return tint_symbol_5(o0, o1);
}
