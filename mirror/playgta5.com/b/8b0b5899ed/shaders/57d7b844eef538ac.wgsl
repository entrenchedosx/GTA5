diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  let v = ((-(v0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (cb13_13.tint_symbol_1[0u].y * 0.10000000149011611938f);
  let v_1 = fma(r0.xyz, r0.www, v0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = sin(v1.z);
  r3.x = cos(v1.z);
  let v_2 = (r2.xx * v1.yx);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  let v_3 = -(r2.xxxx);
  r1.x = fma(v1.x, r3.x, v_3.x);
  r1.y = fma(v1.y, r3.x, r2.y);
  o0 = (r0 + r1);
  o1 = v2;
  o2 = v3;
  o3 = v4;
  o4.x = v5.z;
  o4 = vec4<f32>(o4.x, vec3<f32>());
  o5 = v6;
  o6 = v7;
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
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5, o6);
}
