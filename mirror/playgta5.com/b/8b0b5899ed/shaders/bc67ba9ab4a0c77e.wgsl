diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0.x = clamp(v4.x, 0.0f, 1.0f);
  r1 = textureSample(t0, s0, v2.zwzz.xy);
  r2 = textureSample(t0, s0, v2.xyxx.xy);
  let v = -(r2);
  r1 = (r1 + v);
  r0 = fma(r0.xxxx, r1, r2);
  r0 = (r0 * v1);
  r1.x = ((-(v5.xxxx)).x + 1.0f);
  r1.w = (r0.w * r1.x);
  let v_1 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb13_13.tint_symbol[0u].x))));
  let v_2 = bitcast<vec4<u32>>(r2.xxxx);
  let v_3 = r1;
  o0 = select(r0, v_3, (v_2 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4, v5);
  return o0;
}
