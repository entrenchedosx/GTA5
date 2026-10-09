diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_3 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v5 : vec4<f32>) {
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
  r3 = (r1.xxxx * cb1_1.tint_symbol_1[9u]);
  let v_2 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r4);
  r1.w = dot(r4, r2);
  r3 = fma(r1.wwww, cb1_1.tint_symbol_1[8u], r3);
  let v_3 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r4);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r4);
  r0.x = dot(r0, r2);
  r2 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r3);
  let v_4 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  o0 = (r2 + cb1_1.tint_symbol_1[11u]);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_7 = -(cb2_2.tint_symbol_2[16u].zzzz);
  let v_8 = clamp(((r0.xyxx + v_7)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_3[49u].w + -1.0f);
  let v_9 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = clamp(((r0.xyxx * v5.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_10.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v5.zw);
  o2 = v3.xyxy;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v5);
  return tint_symbol_4(o0, o1, o2);
}
