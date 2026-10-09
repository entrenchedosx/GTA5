enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
  o0 = vec4<f32>(v2.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v3.xy);
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  o1 = r0.xyz.xyzx;
  o4 = (((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_5 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  o2 = r0.xyz.xyzx;
  o3 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  let v_8 = (v6.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v6.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(v6.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  o5 = r1.xyz.xyzx;
  let v_11 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = -(r2.xyzx);
  let v_13 = fma(r1.yzx, r0.zxy, v_12.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  o6 = ((r0.xyz * v6.www)).xyzx;
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o7 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_14 = &(x0[0u]);
  *(v_14) = vec4<f32>((*(v_14)).x, vec3<f32>());
  o8[0u] = x0[0u].x;
  o8[1u] = x0[0u].y;
  o8[2u] = x0[0u].z;
  o8[3u] = x0[0u].w;
  v = vec4<f32>(o8[0u], o8[1u], o8[2u], o8[3u]);
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
  tint_symbol_2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6, o7, o8, v);
}
