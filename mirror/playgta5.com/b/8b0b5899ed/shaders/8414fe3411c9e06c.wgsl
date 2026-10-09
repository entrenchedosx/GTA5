diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb216_struct {
  tint_symbol : array<vec4<f32>, 216u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb216_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  r0.x = (abs(v3.xxxx).x * cb7_7.tint_symbol[214u].y);
  let v = (v0.zxy + (-(cb1_1.tint_symbol_1[15u].zzxy)).yzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = -(cb1_1.tint_symbol_1[14u].xyzx);
  r1.x = dot(r0.zwy, v_1.xyz);
  r1.x = (cb7_7.tint_symbol[214u].x / r1.x);
  r1.y = fma(r0.x, r1.x, cb7_7.tint_symbol[214u].z);
  r0.x = (r0.x * r1.x);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r0.x);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb7_7.tint_symbol[214u].w);
  r0.x = exp2(r0.x);
  o1.w = (r0.x * cb7_7.tint_symbol[215u].w);
  r0.x = max(r1.y, 1.0f);
  r0.x = (r0.x / r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.x)));
  r1.y = select(-1.0f, 1.0f, (bitcast<u32>(r1.x) != 0u));
  o2.y = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.x = (r0.x * r1.y);
  let v_2 = (r0.yzw * v1.yzx);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = -(r1.xxyz);
  let v_4 = fma(r0.wyz, v1.zxy, v_3.yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_5 = (r0.yzw * r1.xxx);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(r0.xxx, r0.yzw, v0);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r2);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  let v_7 = cb7_7.tint_symbol[215u];
  o1 = vec4<f32>(v_7.xyz, o1.w);
  o2.x = v2.x;
  o3 = r0.yzw.xyzx;
  let v_8 = (r0.wyz * v1.yzx);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = -(r1.xyzx);
  o4 = fma(r0.zwy, v1.zxy, v_9.xyz).xyzx;
}

struct tint_symbol_2 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3, o4);
}
