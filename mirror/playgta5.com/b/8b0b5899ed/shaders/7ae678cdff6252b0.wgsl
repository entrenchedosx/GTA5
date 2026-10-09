diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb44_struct {
  tint_symbol : array<vec4<f32>, 44u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = log2(v1.x);
  r0.x = (r0.x * 1.5f);
  r0.x = exp2(r0.x);
  r0.y = (1.0f / cb3_3.tint_symbol[40u].x);
  r0.x = fma(r0.y, r0.x, cb3_3.tint_symbol[42u].x);
  r0.y = 0.5f;
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = log2(r0.x);
  r0.x = fma((-(r0.xxxx)).x, -0.06020599976181983948f, 1.0f);
  r0.x = (r0.x + (-(v1.xy.yyyy)).x);
  r0.x = max(r0.x, 0.0f);
  r0.x = dot(r0.xx, cb3_3.tint_symbol[41u].xx);
  r0.x = log2(r0.x);
  r0.x = (r0.x * 15.0f);
  r0.x = exp2(r0.x);
  r1.z = (r0.x * 0.00100000004749745131f);
  r0.x = (r0.x * v1.y);
  r0.x = (r0.x * 0.00100000004749745131f);
  r1.x = (r0.x * v1.x);
  let v = r0;
  r0 = vec4<f32>(v.x, (((-(v1.xy.xxyx)).yz + vec2<f32>(1.0f))).xy, v.w);
  r1.y = (r0.y * r0.x);
  r0 = textureSample(t1, s1, r0.yzyy.xy);
  r1.w = 1.0f;
  o0 = fma(r0, cb3_3.tint_symbol[43u].xxxx, r1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
