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

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_4 {
  tint_symbol_3 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_4;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  o0 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  o1 = v2.xyxy;
  let v_2 = (v3.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v3.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  o2 = fma(v3.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz).xyzx;
  let v_4 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  o3 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0.x = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v_7 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_7.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_8 = -(r0.xxxx);
  let v_9 = bitcast<u32>(r0.y);
  r0.x = select(v_8.x, r0.x, (v_9 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_2[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_2[16u].y < 0.00600000005215406418f)));
  let v_10 = bitcast<u32>(r0.y);
  let v_11 = r0.x;
  r0.x = select(bitcast<f32>(v_1.tint_symbol_3[0i].x), v_11, (v_10 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_2[16u].y)));
  let v_12 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_12 != 0u));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r1 = (r0.yyyy * r1);
  o4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  let v_13 = &(x0[0u]);
  *(v_13) = vec4<f32>((*(v_13)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_6 {
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
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, v);
}
