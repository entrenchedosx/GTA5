diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = vec4<f32>(v0.xyz, r0.w);
  r0.w = 1.0f;
  r1.x = (v2.z * 255.001953125f);
  let v = r1.x;
  let v_1 = max(v, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_1), 2147483647i, (v_1 >= 2147483648.0f)), 0i, !((v == v))));
  r1.x = bitcast<f32>((bitcast<i32>(r1.x) * 3i));
  r1.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], r0);
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  let v_2 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r3.x = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)], r0);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r0);
  r2 = fma(r3.xxxx, cb1_1.tint_symbol_1[8u], r2);
  let v_3 = fma(r3.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  r2 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r2 + cb1_1.tint_symbol_1[11u]);
  let v_5 = (r0.yzw + cb1_1.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  o4 = (((-(r0.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_6 = (v3.xx + cb12_12.tint_symbol_2[3u].xy);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.y = ((-(r0.zzzz)).y + r0.y);
  o1.x = fma(r0.x, r0.y, r0.z);
  o1.y = v3.y;
  o1 = vec4<f32>(o1.xy, v4.xy);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz, v5);
  let v_8 = (r0.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)].xyz, v5);
  let v_9 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r0.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, v5);
  let v_10 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  o2 = r0.xyz.xyzx;
  o3 = v7;
  r0.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz, v6.xyz);
  let v_11 = (r0.www * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  r0.w = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)].xyz, v6.xyz);
  r1.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, v6.xyz);
  let v_12 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = fma(r1.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.yzw);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  o5 = r1.xyz.xyzx;
  let v_14 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = -(r2.xyzx);
  let v_16 = fma(r1.yzx, r0.zxy, v_15.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  o6 = ((r0.xyz * v6.www)).xyzx;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v2, v3, v4, v5, v6, v7);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6);
}
