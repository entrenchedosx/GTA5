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

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<i32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v : i32) {
  let v_1 = 0i;
  v6.x = bitcast<f32>((v - v_1));
  r0.x = bitcast<f32>((bitcast<u32>(v6.x) >> 2u));
  r0.y = bitcast<f32>((bitcast<u32>(v6.x) & 3u));
  r0.z = bitcast<f32>(-(bitcast<i32>(r0.y)));
  let v_2 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<u32>>(r0.yyy) < vec3<u32>(1u, 2u, 3u))));
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) + -3i));
  let v_3 = bitcast<u32>(r1.y);
  r2.z = select(r0.y, 0.0f, (v_3 != 0u));
  r2.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r1.y)));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) == 0i)));
  r2.x = r1.x;
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & bitcast<vec4<u32>>(cb6_6.tint_symbol_2[bitcast<u32>((bitcast<i32>(r0.x) + 4i))])));
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yw) | bitcast<vec2<u32>>(r0.xz)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  r0.y = bitcast<f32>((bitcast<i32>(r0.x) << 2u));
  let v_5 = bitcast<i32>(r0.x);
  o1 = vec4<i32>(v_5, v_5, v_5, v_5);
  r1 = (cb6_6.tint_symbol_2[0u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb6_6.tint_symbol_2[0u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r1);
  r1 = fma(cb6_6.tint_symbol_2[0u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r1);
  r1 = fma(cb6_6.tint_symbol_2[0u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r1);
  r2 = (cb6_6.tint_symbol_2[1u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[1u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r2);
  r2 = fma(cb6_6.tint_symbol_2[1u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[1u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r2);
  r3 = (v2 * vec4<f32>(255.001953125f));
  let v_6 = r3;
  let v_7 = max(v_6, vec4<f32>(-2147483648.0f));
  r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_7), vec4<i32>(2147483647i), (v_7 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_6 == v_6))));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r3) * vec4<i32>(3i)));
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.y) + 1i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.x) + 1i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.z) + 1i))], v1.zzzz, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.w) + 1i))], v1.wwww, r4);
  r5 = vec4<f32>(v0.xyz, r5.w);
  r5.w = 1.0f;
  r0.x = dot(r4, r5);
  r2 = (r2 * r0.xxxx);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r3.y)]);
  r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r3.x)], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r3.z)], v1.zzzz, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r3.w)], v1.wwww, r4);
  r0.x = dot(r4, r5);
  r1 = fma(r0.xxxx, r1, r2);
  r2 = (cb6_6.tint_symbol_2[2u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[2u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r2);
  r2 = fma(cb6_6.tint_symbol_2[2u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[2u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r2);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.y) + 2i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.x) + 2i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.z) + 2i))], v1.zzzz, r4);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r3.w) + 2i))], v1.wwww, r4);
  r0.x = dot(r3, r5);
  r1 = fma(r0.xxxx, r2, r1);
  r2 = (cb6_6.tint_symbol_2[3u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[3u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r2);
  r2 = fma(cb6_6.tint_symbol_2[3u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r2);
  r0 = fma(cb6_6.tint_symbol_2[3u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))], r2);
  o0 = (r0 + r1);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u) @interpolate(flat)
  o1 : vec4<i32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(instance_index) v_8 : u32) -> tint_symbol_3 {
  main_inner(v0, v1, v2, i32(v_8));
  return tint_symbol_3(o0, o1);
}
