diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 0.0039215688593685627f)));
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  let v = (r0.yyy * cb5_5.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(r0.xxx, v2.xyz, r0.yzw);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_2.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
