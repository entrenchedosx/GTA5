diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb21_struct {
  tint_symbol : array<vec4<f32>, 21u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb21_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0 = vec4<f32>(((v0.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  let v = (r0.xy + r0.xy);
  o0 = vec4<f32>(v.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v_1 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o1 = vec4<f32>(v_1.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, vec2<f32>(0.0f, 1.0f));
  o2.w = 1.0f;
  let v_2 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = 1.0f;
  o2.x = dot(r0.xyz, cb11_11.tint_symbol[18u].xyz);
  o2.y = dot(r0.xyz, cb11_11.tint_symbol[19u].xyz);
  o2.z = dot(r0.xyz, cb11_11.tint_symbol[20u].xyz);
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
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1, o2);
}
