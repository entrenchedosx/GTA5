diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb85_struct {
  tint_symbol : array<vec4<f32>, 85u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb85_struct;

@group(0u) @binding(17u) var s1 : sampler;

@group(0u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec2<f32>) {
  let v = (v0 * cb5_5.tint_symbol[84u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, cb5_5.tint_symbol[82u].xy, cb5_5.tint_symbol[82u].zw);
  o0 = vec4<f32>(v_1.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v_2 = fma(v0, cb5_5.tint_symbol[83u].xy, cb5_5.tint_symbol[83u].zw);
  o1 = vec4<f32>(v_2.xy, o1.zw);
  r0 = textureSampleLevel(t1, s1, vec2<f32>(), 0.0f);
  o1.w = (1.0f / r0.x);
  o1.z = r0.x;
  let v_3 = r0.y;
  o2 = vec4<f32>(v_3, v_3, v_3, v_3);
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
fn main(@location(0u) v0 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0);
  return tint_symbol_1(o0, o1, o2);
}
