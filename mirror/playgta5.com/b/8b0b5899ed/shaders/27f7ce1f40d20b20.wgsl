diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v3 : vec4<f32>) {
  o0 = vec4<f32>();
  let v = (v3.xy + (-(cb11_11.tint_symbol_1[0u].zwzz)).xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(0.001953125f), vec2<f32>(0.001953125f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0 = textureSample(t15, s15, r0.xyxx.xy);
  let v_2 = (v3.xyz + (-(cb1_1.tint_symbol[3u].xxyz)).yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = (r0.xxx + r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.y = (r0.y * cb1_1.tint_symbol[9u].z);
  r0.x = fma(r0.x, cb1_1.tint_symbol[8u].z, r0.y);
  r0.x = fma(r0.z, cb1_1.tint_symbol[10u].z, r0.x);
  oDepth = (r0.x + cb1_1.tint_symbol[11u].z);
}

struct tint_symbol_2 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(3u) v3 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v3);
  return tint_symbol_2(o0, oDepth);
}
