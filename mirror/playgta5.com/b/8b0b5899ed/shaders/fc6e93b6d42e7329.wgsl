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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[1u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[0u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[2u], r0);
  o0 = fma(v0.wwww, cb1_1.tint_symbol[3u], r0);
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = fma(v0.wwww, cb1_1.tint_symbol[11u], r0);
  let v_1 = (r0.xwy * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = -(r1.zzzz);
  o1.y = fma(r0.w, 0.5f, v_2.y);
  o1.x = (r1.y + r1.x);
  let v_3 = r0;
  o1 = vec4<f32>(o1.xy, v_3.ww);
  o2 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_4 = &(x0[0u]);
  *(v_4) = vec4<f32>((*(v_4)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2, o3, v);
}
