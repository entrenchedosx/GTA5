diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r1);
  r2 = vec4<f32>(v0.xyz, r2.w);
  r2.w = 1.0f;
  r1.x = dot(r1, r2);
  let v_2 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r3);
  r1.w = dot(r3, r2);
  let v_3 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r3);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r3);
  r0.x = dot(r0, r2);
  let v_4 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(cb6_6.tint_symbol_2[0u].xyzx);
  let v_7 = (r0.xyz + v_6.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = (r0.yyyy * cb6_6.tint_symbol_2[3u]);
  r1 = fma(r0.xxxx, cb6_6.tint_symbol_2[2u], r1);
  r1 = fma(r0.zzzz, cb6_6.tint_symbol_2[4u], r1);
  o1 = r0.xyz.xyzx;
  o0 = (r1 + cb6_6.tint_symbol_2[5u]);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2);
  return tint_symbol_3(o0, o1);
}
