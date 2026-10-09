diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = ((-(r0.xxxx)).x + 0.5f);
  r0.x = max(r0.x, 0.0f);
  r0.x = (r0.x + r0.x);
  r0.x = log2(r0.x);
  r0.x = (r0.x * 0.25f);
  r0.x = exp2(r0.x);
  r1 = textureSample(t9, s9, v1.xyxx.xy);
  r0.y = clamp(((r1.yyyy * vec4<f32>(4.0f))).y, 0.0f, 1.0f);
  o0 = (r0.xxxx * r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
