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

var<private> o5 : vec4<f32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec3<f32>, v8 : vec4<f32>) {
  o0 = vec4<f32>(v3.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v4.xy);
  r0.x = (v2.z * 255.001953125f);
  let v_1 = r0.x;
  let v_2 = max(v_1, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_2), 2147483647i, (v_2 >= 2147483648.0f)), 0i, !((v_1 == v_1))));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, v6);
  let v_3 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  r1.x = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, v6);
  let v_4 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  r1.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, v6);
  o1 = fma(r1.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw).xyzx;
  r1 = vec4<f32>(v0.xyz, r1.w);
  r1.w = 1.0f;
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], r1);
  let v_5 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r3 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r0.y = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)], r1);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], r1);
  let v_6 = fma(r0.yyy, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r2 = fma(r0.yyyy, cb1_1.tint_symbol_1[8u], r3);
  r2 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r2);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  o2 = ((r0.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r0 = (r2 + cb1_1.tint_symbol_1[11u]);
  o3 = v8;
  o4 = v5.xyxy;
  o5 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_2[0u]);
  let v_8 = &(x0[0u]);
  *(v_8) = vec4<f32>((*(v_8)).x, vec3<f32>());
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
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
  @location(4u)
  o4 : vec4<f32>,
  @builtin(position)
  o5 : vec4<f32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec3<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v2, v3, v4, v5, v6, v8);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, v);
}
