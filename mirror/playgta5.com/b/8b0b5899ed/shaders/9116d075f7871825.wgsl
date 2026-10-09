diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t8, s8, v1.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 1.0f)));
  v((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>();
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
