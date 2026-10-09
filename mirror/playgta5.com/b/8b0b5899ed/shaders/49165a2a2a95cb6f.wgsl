enable clip_distances;
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

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_1 = (v3.xx + cb12_12.tint_symbol_3[3u].xy);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  r0.y = ((-(r0.zzzz)).y + r0.y);
  o0.x = fma(r0.x, r0.y, r0.z);
  o0.y = v3.y;
  o0 = vec4<f32>(o0.xy, v4.xy);
  r0.x = (v2.z * 255.001953125f);
  let v_3 = r0.x;
  let v_4 = max(v_3, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, v5);
  let v_5 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  r1.x = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, v5);
  let v_6 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r1.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, v5);
  let v_7 = fma(r1.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  o1 = r0.yzw.xyzx;
  r1 = vec4<f32>(v0.xyz, r1.w);
  r1.w = 1.0f;
  r2.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], r1);
  let v_8 = (r2.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(r2.x, v_8.xyz);
  r3 = (r2.xxxx * cb1_1.tint_symbol_1[9u]);
  r2.x = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)], r1);
  r1.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], r1);
  let v_9 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.yzw);
  r1 = vec4<f32>(r1.x, v_9.xyz);
  r2 = fma(r2.xxxx, cb1_1.tint_symbol_1[8u], r3);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[10u], r2);
  let v_10 = fma(r1.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.yzw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r2 = (r2 + cb1_1.tint_symbol_1[11u]);
  let v_12 = r1;
  o2 = vec4<f32>(v_12.xyz, o2.w);
  o3 = (((-(r1.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  o2.w = 1.0f;
  r1.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, v6.xyz);
  let v_13 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r1.w = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, v6.xyz);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, v6.xyz);
  let v_14 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  o4 = r1.xyz.xyzx;
  let v_16 = (r0.zwy * r1.zxy);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = -(r3.xyzx);
  let v_18 = fma(r1.yzx, r0.wyz, v_17.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  o5 = ((r0.xyz * v6.www)).xyzx;
  o6 = v7;
  o7 = r2;
  x0[0u].x = dot(r2, cb0_0.tint_symbol_2[0u]);
  let v_19 = &(x0[0u]);
  *(v_19) = vec4<f32>((*(v_19)).x, vec3<f32>());
  o8[0u] = x0[0u].x;
  o8[1u] = x0[0u].y;
  o8[2u] = x0[0u].z;
  o8[3u] = x0[0u].w;
  v = vec4<f32>(o8[0u], o8[1u], o8[2u], o8[3u]);
}

struct tint_symbol_5 {
  @location(0u)
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
  @builtin(position)
  o7 : vec4<f32>,
  @builtin(clip_distances)
  o8 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7, o8, v);
}
