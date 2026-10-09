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

struct cb10_struct {
  tint_symbol_2 : array<vec4<f32>, 10u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb10_struct;

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
  let v_2 = (r2.xyz * cb9_9.tint_symbol_3[0u].xxx);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  r2.w = clamp(((v5.zzzz + vec4<f32>(-0.5f))).w, 0.0f, 1.0f);
  r2.w = (r2.w + r2.w);
  let v_3 = (r2.www * r4.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  r5 = vec4<f32>(v0.xyz, r5.w);
  r5.w = 1.0f;
  r1.x = dot(r1, r5);
  r1.y = dot(r3, r5);
  r1.z = dot(r0, r5);
  let v_4 = fma(r4.xyz, cb13_13.tint_symbol_2[2u].yyy, r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r2.xyz * cb9_9.tint_symbol_3[0u].yyy);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  o2 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyz).xyzx;
  let v_8 = (r1.xyz * v6.www);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r1.xyz, cb13_13.tint_symbol_2[2u].zzz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r0.x = (v5.z * v5.z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.x = fma(cb13_13.tint_symbol_2[9u].w, r0.x, v5.z);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(2.0f), r2.wwww).x, 0.0f, 1.0f);
  o1.z = (r0.x * cb13_13.tint_symbol_2[2u].x);
  o1 = vec3<f32>(v3.xy, o1.xyz.z).xyzx;
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
