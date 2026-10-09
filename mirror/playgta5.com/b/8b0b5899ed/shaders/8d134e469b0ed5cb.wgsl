diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec2<i32>, v1 : f32) {
  r0 = vec4<f32>(vec2<f32>(v0).xy, r0.zw);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(vec4<f32>(v1, v1, v1, v1), cb1_1.tint_symbol[10u], r1);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  let v = -(cb11_11.tint_symbol_1[1u].xyxx);
  let v_1 = (r0.xy + v.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r0.w = (r1.x * cb11_11.tint_symbol_1[1u].z);
  o1.y = fma((-(r1.yyyy)).y, cb11_11.tint_symbol_1[1u].w, 1.0f);
  o1.x = r0.w;
  o1 = vec4<f32>(o1.xy, vec2<f32>());
  r0.z = v1;
  let v_2 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_3 = (r0.xyz + v_2.xyz);
  o2 = vec4<f32>(v_3.xyz, o2.w);
  o2.w = 0.0f;
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
fn main(@location(0u) v0 : vec2<i32>, @location(1u) v1 : f32) -> tint_symbol_2 {
  main_inner(v0, v1);
  return tint_symbol_2(o0, o1, o2);
}
