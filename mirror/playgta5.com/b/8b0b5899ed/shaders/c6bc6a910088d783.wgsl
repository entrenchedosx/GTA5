diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xyzx.xyz);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v = fma((-(r0.xxxx)).xyz, r0.xxx, vec3<f32>(1.0f));
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
