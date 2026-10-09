diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = dot(v1.xy, v1.xy);
  r0.x = (r0.x + -1.0f);
  r0.z = (r0.x * v1.z);
  r0 = vec4<f32>(((v1.xy * vec2<f32>(-2.0f))).xy, r0.zw);
  r0 = textureSampleLevel(t3, s3, r0.xyzx.xyz, 0.0f);
  let v = r0;
  o0 = vec4<f32>(v.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
