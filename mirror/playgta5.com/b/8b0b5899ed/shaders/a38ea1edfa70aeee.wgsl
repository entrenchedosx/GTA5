enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v5 : vec3<f32>) {
  o0 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  o1 = v2.xyxy;
  let v_1 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  o2 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz).xyzx;
  let v_3 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  o3 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o4 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_6 = &(x0[0u]);
  *(v_6) = vec4<f32>((*(v_6)).x, vec3<f32>());
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_3 {
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
  tint_symbol_2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(5u) v5 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v5);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, v);
}
