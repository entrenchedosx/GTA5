diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb6_struct {
  tint_symbol : array<vec4<f32>, 6u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

struct cb21_struct {
  tint_symbol_1 : array<vec4<f32>, 21u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb21_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner() {
  let v = (cb10_10.tint_symbol_1[3u].xy + cb10_10.tint_symbol_1[20u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = cb10_10.tint_symbol_1[20u];
  r0 = vec4<f32>(r0.xy, v_1.zw);
  r0 = (r0 + cb10_10.tint_symbol_1[2u]);
  r0 = (r0 + cb11_11.tint_symbol[0u]);
  r0 = (r0 + cb11_11.tint_symbol[4u]);
  o0 = (r0 + cb11_11.tint_symbol[5u]);
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  o3 = vec4<f32>();
  o4 = vec4<f32>();
  o5 = vec4<f32>();
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
}

@vertex
fn main() -> tint_symbol_2 {
  main_inner();
  return tint_symbol_2(o0, o1, o2, o3, o4, o5);
}
