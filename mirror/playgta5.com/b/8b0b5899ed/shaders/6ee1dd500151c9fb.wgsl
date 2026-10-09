diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  r0.x = dot(v0, v0);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v0);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (cb12_12.tint_symbol_1[4u].y + 0.10000000149011611938f);
  let v_1 = fma(r0.xyz, r0.www, cb12_12.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  let v_2 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_3 = (r0.xyz + v_2.xyz);
  o2 = vec4<f32>(v_3.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1.x = (r0.w + r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  let v_4 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_4.xy, o1.zw);
  let v_5 = r0;
  o1 = vec4<f32>(o1.xy, v_5.zw);
  o2.w = r0.w;
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
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
