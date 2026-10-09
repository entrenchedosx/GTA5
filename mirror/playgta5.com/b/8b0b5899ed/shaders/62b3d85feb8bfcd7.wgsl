diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb10_struct {
  tint_symbol_1 : array<vec4<f32>, 10u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r0.z = dot(v1, v1);
  r0.z = inverseSqrt(r0.z);
  let v = (r0.zz * v1);
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = (-(r1.xyxx)).xy;
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.z = 0.0f;
  let v_2 = ((-(r1.zzzx)).zw + r1.yz);
  r1 = vec4<f32>(r1.xy, v_2.xy);
  r0.z = dot(r1.zw, r1.zw);
  r0.z = inverseSqrt(r0.z);
  let v_3 = (r0.zz * r1.zw);
  r1 = vec4<f32>(r1.xy, v_3.xy);
  let v_4 = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(r0.zzzz);
  let v_6 = fma(r0.ww, vec2<f32>(0.5f), v_5.yw);
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.x, v_7.z, v_6.y);
  let v_8 = (r0.yy + r0.xx);
  let v_9 = r2;
  r2 = vec4<f32>(v_8.x, v_9.y, v_8.y, v_9.w);
  let v_10 = fma(cb11_11.tint_symbol_1[9u].xy, vec2<f32>(0.001953125f), r2.zw);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  o2 = r2;
  r2.y = dot(r0.xy, r1.zw);
  r2.x = dot(r0.xy, r1.xy);
  let v_11 = (r2.xy + r2.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = fma(cb11_11.tint_symbol_1[6u].yy, vec2<f32>(0.0000199999994947575f, 0.0f), r0.xy);
  o1 = vec4<f32>(v_12.xy, o1.zw);
  r0.x = (v0.z * cb11_11.tint_symbol_1[7u].z);
  let v_13 = (r0.xx * cb11_11.tint_symbol_1[6u].xx);
  o1 = vec4<f32>(o1.xy, v_13.xy);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1);
  return tint_symbol_2(o0, o1, o2);
}
