diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  o0 = vec4<f32>(v0.xyz, o0.w);
  o0.w = 1.0f;
  o1 = fma(v0.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f)).xyxy;
  let v = fma(v0.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma((-(cb2_2.tint_symbol[18u].zwzz)).xy, vec2<f32>(0.5f), r0.xy);
  o2 = vec4<f32>(v_1.xy, o2.zw);
  let v_2 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(0.5f), r0.xy);
  o2 = vec4<f32>(o2.xy, v_2.xy);
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
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1, o2);
}
