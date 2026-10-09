diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = -(cb5_5.tint_symbol_1[2u].zwzz);
  let v_3 = fma(v0.xy, cb2_2.tint_symbol[18u].zw, v_2.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.xy / cb5_5.tint_symbol_1[3u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = dot(r0.xy, cb5_5.tint_symbol_1[2u].xy);
  r0.x = clamp(vec4<f32>(v_5, v_5, v_5, v_5).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.x);
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_6 = (r1.xyz * r1.xyz);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  o0.w = r1.w;
  let v_7 = (r0.yzw * v2.xyz);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = (r0.yzw * r0.xxx);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
}

@fragment
fn main(@builtin(position) v_10 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_10, v1, v2);
  return o0;
}
