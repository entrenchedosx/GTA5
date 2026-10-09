diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v2 : vec4<f32>) {
  o0 = vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f);
  let v = fma(cb2_2.tint_symbol[18u].zwz, vec3<f32>(-0.5f, -0.5f, 0.5f), v2.xy.xyx);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = textureSample(t5, s5, r0.xyxx.xy);
  r0 = textureSample(t5, s5, r0.zyzz.xy);
  r0.x = min(r0.x, r1.x);
  let v_1 = fma((-(cb2_2.tint_symbol[18u].zzwz)).yzw, vec3<f32>(-0.5f, -0.5f, 0.5f), v2.xy.xyx);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  r2 = textureSample(t5, s5, r0.wzww.xy);
  r0.y = min(r1.x, r2.x);
  oDepth = min(r0.y, r0.x);
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v2);
  return tint_symbol_1(o0, oDepth);
}
