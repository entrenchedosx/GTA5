diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(0u) @binding(21u) var s5 : sampler;

@group(0u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0 = textureSampleLevel(t5, s5, v0.zwzz.xy, 0.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>(1.0f));
  o0 = (r0.xxxx * r1);
  o1 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f)).xyxy;
  let v_1 = fma(v0.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma((-(cb2_2.tint_symbol[18u].zwzz)).xy, vec2<f32>(0.5f), r0.xy);
  o2 = vec4<f32>(v_2.xy, o2.zw);
  let v_3 = fma(cb2_2.tint_symbol[18u].zw, vec2<f32>(0.5f), r0.xy);
  o2 = vec4<f32>(o2.xy, v_3.xy);
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
