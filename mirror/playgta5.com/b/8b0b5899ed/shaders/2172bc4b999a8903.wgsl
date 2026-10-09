diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb65_struct {
  tint_symbol : array<vec4<f32>, 65u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb65_struct;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb5_5.tint_symbol[64u].y);
  r0.x = exp2(r0.x);
  r0.x = clamp(((r0.xxxx + cb5_5.tint_symbol[64u].xxxx)).x, 0.0f, 1.0f);
  o0.w = ((-(r0.xxxx)).w + 1.0f);
  r0 = textureSample(t14, s14, v1.xy.xyxx.xy);
  let v = r0;
  o0 = vec4<f32>(v.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
