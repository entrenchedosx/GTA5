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

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

struct cb2_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct_1;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec2<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = (v4.y * 6.28318500518798828125f);
  let v = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_4[1u].zzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(cb2_2.tint_symbol_2[16u].xxx, r0.yzw, r0.xxx);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v4.xxz * cb8_8.tint_symbol_4[1u].xxy);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r2 = (v3 * vec4<f32>(255.001953125f));
  let v_5 = r2;
  let v_6 = max(v_5, vec4<f32>(-2147483648.0f));
  r2 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_6), vec4<i32>(2147483647i), (v_6 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_5 == v_5))));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2) * vec4<i32>(3i)));
  r3 = (v2.yyyy * cb4_4.tint_symbol[bitcast<i32>(r2.y)]);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r2.x)], v2.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r2.z)], v2.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r2.w)], v2.wwww, r3);
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r3.x = dot(r3, r4);
  r5 = (v2.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.y) + 1i))]);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.x) + 1i))], v2.xxxx, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.z) + 1i))], v2.zzzz, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.w) + 1i))], v2.wwww, r5);
  r3.y = dot(r5, r4);
  r5 = (v2.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.y) + 2i))]);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.x) + 2i))], v2.xxxx, r5);
  r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.z) + 2i))], v2.zzzz, r5);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r2.w) + 2i))], v2.wwww, r5);
  r3.z = dot(r2, r4);
  let v_7 = fma(r0.xyz, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  o1 = v1.xyxy;
}

struct tint_symbol_5 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec2<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_5(o0, o1);
}
