diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = (v1.xyxy + vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f));
  r1 = textureSample(t15, s15, r0.xyxx.xy);
  r0 = textureSample(t15, s15, r0.zwzz.xy);
  r1.y = r0.x;
  r0 = (v1.xyxy + vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f));
  r2 = textureSample(t15, s15, r0.xyxx.xy);
  r0 = textureSample(t15, s15, r0.zwzz.xy);
  r2.y = r0.x;
  let v = max(r1.xy, r2.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  o0 = max(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
