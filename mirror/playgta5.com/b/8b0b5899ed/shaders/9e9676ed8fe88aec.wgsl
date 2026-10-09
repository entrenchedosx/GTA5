diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v.y)));
  r0.x = fract(abs(r0.xxxx).x);
  let v_1 = -(r0.xxxx);
  let v_2 = bitcast<u32>(r0.y);
  r0.x = select(v_1.x, r0.x, (v_2 != 0u));
  r0.x = (r0.x * 5.0f);
  r0.x = fma(cb2_2.tint_symbol_1[16u].x, 2.5f, r0.x);
  r0.x = sin(r0.xxxx.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.xxxx).x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_1[16u].y < 0.00600000005215406418f)));
  let v_3 = bitcast<u32>(r0.y);
  r0.x = select(1.0f, r0.x, (v_3 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_1[16u].y)));
  let v_4 = bitcast<u32>(r0.y);
  r0.x = select(r0.x, 0.0f, (v_4 != 0u));
  r1 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_5 = (r1.xyz * cb12_12.tint_symbol_2[0u].xxx);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = (r1.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = (r0.yzw * v1.xxx);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = fma(r0.yzw, r0.xxx, r1.xyz);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
