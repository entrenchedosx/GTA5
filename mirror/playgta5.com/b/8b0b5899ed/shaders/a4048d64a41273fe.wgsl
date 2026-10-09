diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>) {
  r0.x = (v1.y * v1.y);
  r0.x = (0.23025850951671600342f / r0.x);
  r0.x = (r0.x * 0.36787945032119750977f);
  let v = (v0 + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_2 = (r0.yzw + v_1.yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = (r0.xxx * r0.yzw);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.x = dot((-(cb1_1.tint_symbol[14u].xyzx)).xyz, r0.yzw);
  let v_4 = abs(r0.xxxx);
  let v_5 = (r1.xyz / v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  let v_6 = (r0.xyz / r0.www);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 1.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_7 = -(r1.xyzx);
  let v_8 = (r0.xyz + v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r0.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.xyz + v0);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  o3 = vec4<f32>();
  o4 = vec4<f32>();
  o5 = vec4<f32>();
}

struct tint_symbol_1 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1, o2, o3, o4, o5);
}
