diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v3.xyxy;
  r0.x = dot(v1, v1);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v1);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_2.xy, r0.z, v_2.z);
  let v_3 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.x = dot(r0.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_5 = max(r0.xxx, vec3<f32>(0.25f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = 1.0f;
  o2 = (r0 * v2);
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_1(o0, o1, o2);
}
