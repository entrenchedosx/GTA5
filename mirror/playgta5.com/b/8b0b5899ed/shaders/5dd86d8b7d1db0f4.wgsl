diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

struct tint_symbol_4 {
  tint_symbol_3 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_4;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v5 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r1);
  r2 = vec4<f32>(v0.xyz, r2.w);
  r2.w = 1.0f;
  r1.x = dot(r1, r2);
  r1 = (r1.xxxx * cb1_1.tint_symbol_1[9u]);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r3);
  r3.x = dot(r3, r2);
  r1 = fma(r3.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r3);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r3);
  r0.x = dot(r0, r2);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_2[16u].y)));
  r1.y = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r0.z = fma(r1.y, r0.z, -0.00000999999974737875f);
  r2 = (r0 * r1.yyyy);
  r0.x = (cb1_1.tint_symbol_1[3u].x * 0.20000000298023223877f);
  let v_3 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_3.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_4 = -(r0.xxxx);
  let v_5 = bitcast<u32>(r0.y);
  r0.x = select(v_4.x, r0.x, (v_5 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_2[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_2[16u].y < 0.00600000005215406418f)));
  let v_6 = bitcast<u32>(r0.y);
  let v_7 = r0.x;
  r0.x = select(bitcast<f32>(v.tint_symbol_3[0i].x), v_7, (v_6 != 0u));
  let v_8 = bitcast<u32>(r1.x);
  r0.x = select(r0.x, 0.0f, (v_8 != 0u));
  o0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & bitcast<vec4<u32>>(r0.xxxx)));
  o1 = clamp(v5, vec4<f32>(), vec4<f32>(1.0f));
  o2 = v3.xyxy;
}

struct tint_symbol_5 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v5);
  return tint_symbol_5(o0, o1, o2);
}
