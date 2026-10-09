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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v5 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb13_13.tint_symbol[0u].x))));
  r0.y = ((-(v5.xxxx)).y + 1.0f);
  r1 = textureSample(t0, s0, v2.xyxx.xy);
  r1 = (r1 * v1);
  r2.w = (r0.y * r1.w);
  let v = (r1.www * r1.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = bitcast<vec4<u32>>(r0.xxxx);
  let v_2 = r2;
  o0 = select(r1, v_2, (v_1 != vec4<u32>()));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v5);
  return o0;
}
