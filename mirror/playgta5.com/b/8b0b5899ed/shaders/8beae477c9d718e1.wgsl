diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xyxx.xy).yxzw;
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((v1.w == 0.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r1 = textureSample(t2, s2, v2.zwzz.xy);
    r0.y = ((-(r0.xxxx)).y + r1.y);
    r0.x = fma(v1.w, r0.y, r0.x);
  }
  o0 = (r0.xxxx * v1.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
