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

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb3_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = clamp(((v5.zzzz + vec4<f32>(-0.5f))).x, 0.0f, 1.0f);
  r0.x = (r0.x + r0.x);
  r1 = (v2 * vec4<f32>(255.001953125f));
  let v = r1;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
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
  let v_2 = (r3.xyz * cb9_9.tint_symbol_3[0u].xxx);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = (r3.xyz * cb9_9.tint_symbol_3[0u].yyy);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = (r3.xyz * v6.www);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r5 = vec4<f32>(v0.xyz, r5.w);
  r5.w = 1.0f;
  r2.x = dot(r2, r5);
  r2.y = dot(r4, r5);
  r2.z = dot(r1, r5);
  let v_6 = fma(r0.xyz, cb13_13.tint_symbol_2[2u].yyy, r2.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r3.xyz, cb13_13.tint_symbol_2[2u].zzz, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6);
  return o0;
}
