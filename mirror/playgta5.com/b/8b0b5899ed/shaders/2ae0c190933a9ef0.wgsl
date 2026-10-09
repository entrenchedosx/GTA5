diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb84_struct {
  tint_symbol_1 : array<vec4<f32>, 84u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb84_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = fma(v0, cb5_5.tint_symbol_1[82u].xy, cb5_5.tint_symbol_1[82u].zw);
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v_1 = fma(v0, cb5_5.tint_symbol_1[83u].xy, cb5_5.tint_symbol_1[83u].zw);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(-1.5f), r0.xy);
  o1 = vec4<f32>(o1.xy, v_2.xy);
  let v_3 = r0;
  o1 = vec4<f32>(v_3.xy, o1.zw);
  let v_4 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(-0.5f, -1.5f), r0.xy);
  o2 = vec4<f32>(v_4.xy, o2.zw);
  let v_5 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(0.5f, -1.5f), r0.xy);
  o2 = vec4<f32>(o2.xy, v_5.xy);
  o3 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(1.5f, -1.5f), r0.xy).xyxy;
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
}

@vertex
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2, o3);
}
