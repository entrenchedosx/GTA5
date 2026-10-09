diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = fma(v0, cb11_11.tint_symbol_1[0u].xy, cb11_11.tint_symbol_1[0u].zw);
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v_1 = fma(v0, cb11_11.tint_symbol_1[1u].xy, cb11_11.tint_symbol_1[1u].zw);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = r0;
  o1 = vec4<f32>(v_3.xy, o1.zw);
  let v_4 = (r0.zw * vec2<f32>(0.5f));
  o1 = vec4<f32>(o1.xy, v_4.xy);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1);
}
