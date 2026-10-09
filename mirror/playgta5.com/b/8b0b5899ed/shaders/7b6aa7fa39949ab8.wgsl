enable clip_distances;
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

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  o0 = v3.xyxy;
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r1);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r1);
  r2.x = dot(r1.xyz, v4);
  let v_3 = (r2.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r3);
  r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r3);
  r2.w = dot(r3.xyz, v4);
  let v_4 = fma(r2.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r4);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r4);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r4);
  r2.w = dot(r0.xyz, v4);
  o1 = fma(r2.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz).xyzx;
  r2 = vec4<f32>(v0.xyz, r2.w);
  r2.w = 1.0f;
  r1.x = dot(r1, r2);
  let v_5 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  r4 = (r1.xxxx * cb1_1.tint_symbol_1[9u]);
  r1.x = dot(r3, r2);
  r0.x = dot(r0, r2);
  let v_6 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r1 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r4);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r1);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz + cb1_1.tint_symbol_1[3u].xyz);
  o2 = vec4<f32>(v_8.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol_1[11u]);
  o2.w = 1.0f;
  o3 = v5;
  o4 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_2[0u]);
  let v_9 = &(x0[0u]);
  *(v_9) = vec4<f32>((*(v_9)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(position)
  o4 : vec4<f32>,
  @builtin(clip_distances)
  o5 : array<f32, 4u>,
  @location(15u)
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, v);
}
