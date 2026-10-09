diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (v1.xyz.xy * cb10_10.tint_symbol_1[2u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  r0.x = clamp(fma(r0.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_2[0u].xxxx).x, 0.0f, 1.0f);
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r0.y = (r1.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(r0.y, r0.x, -0.50196081399917602539f);
  r0.x = fma(r0.x, 2.23194742202758789062f, 0.0078431377187371254f);
  o0 = clamp(r0.xxxx, vec4<f32>(), vec4<f32>(1.0f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
