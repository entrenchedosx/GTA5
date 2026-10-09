enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct_1;

struct cb768_struct {
  tint_symbol_3 : array<vec4<f32>, 768u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb768_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v5 : u32) {
  r0.x = bitcast<f32>((bitcast<i32>(v5) * 3i));
  o0.w = clamp(fma(cb6_6.tint_symbol_3[bitcast<i32>(r0.x)].xxxx, v1.zzzz, cb6_6.tint_symbol_3[bitcast<i32>(r0.x)].yyyy).w, 0.0f, 1.0f);
  let v_1 = clamp(cb6_6.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyzx.xyz, vec3<f32>(), vec3<f32>(1.0f));
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o1 = fma(cb6_6.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xy, v2, cb6_6.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].zw).xyxy;
  let v_2 = fma(v3, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_4.xy, r0.z, v_4.z);
  o2 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw).xyzx;
  let v_5 = (v0 * cb9_9.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  o3 = ((r1.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o4 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_9 = &(x0[0u]);
  *(v_9) = vec4<f32>((*(v_9)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
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
  @builtin(position)
  o4 : vec4<f32>,
  @builtin(clip_distances)
  o5 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @location(5u) v5 : u32) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v5);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, v);
}
