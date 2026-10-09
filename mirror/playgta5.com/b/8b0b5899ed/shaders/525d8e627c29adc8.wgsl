diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.58823531866073608398f)));
  v((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
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
