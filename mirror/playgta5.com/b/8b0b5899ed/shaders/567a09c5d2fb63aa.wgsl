diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xyz.xyxx.xy);
  r0.z = ((-(r0.xxxx)).z + r0.y);
  r1.w = fma(v2.z, r0.z, r0.x);
  let v = r0;
  r1 = vec4<f32>(v.yyy, r1.w);
  o0 = (r1 * v1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
