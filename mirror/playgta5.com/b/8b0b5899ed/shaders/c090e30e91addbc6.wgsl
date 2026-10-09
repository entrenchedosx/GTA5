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

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r1);
  r2.x = dot(r1.xyz, v4);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r3);
  r2.y = dot(r3.xyz, v4);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r4);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r4);
  r2.z = dot(r0.xyz, v4);
  let v_2 = (r2.xyz * cb9_9.tint_symbol_3[0u].yyy);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_3.xyz, r5.w);
  let v_4 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r2 = vec4<f32>(v_4.xy, r2.z, v_4.z);
  o2 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r2.xyw).xyzx;
  let v_5 = (r4.xyz * v6.www);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r1.x = dot(r1, r4);
  r1.y = dot(r3, r4);
  r1.z = dot(r0, r4);
  let v_6 = fma(r2.xyz, cb13_13.tint_symbol_2[2u].zzz, r1.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  o1 = v3.xyxy;
  o3 = v5;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
