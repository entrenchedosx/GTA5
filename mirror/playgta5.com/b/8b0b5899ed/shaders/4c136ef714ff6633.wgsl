diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r0.w)));
  v((bitcast<u32>(r1.x) != 0u));
  r0 = (r0 + vec4<f32>(-0.10000000149011611938f));
  o0 = clamp(fma(r0, vec4<f32>(1.53846156597137451172f), vec4<f32>(0.0039215688593685627f)), vec4<f32>(), vec4<f32>(1.0f));
}

fn v(v_1 : bool) {
  if (v_1) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
