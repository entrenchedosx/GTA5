diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t4, s4, v1.zwzz.xy);
  r0.x = (r0.z + -0.875f);
  r0.x = clamp(fma(-(abs(r0.xxxx)), vec4<f32>(8.0f), vec4<f32>(1.5f)).x, 0.0f, 1.0f);
  r0.x = fma(r0.x, 0.5f, 1.0f);
  r0.y = ((-(v1.yyyy)).y + cb2_2.tint_symbol[16u].y);
  r0.z = ((-(cb2_2.tint_symbol[16u].xxxx)).z + cb2_2.tint_symbol[16u].y);
  r0.y = clamp(((r0.yyyy / r0.zzzz)).y, 0.0f, 1.0f);
  r0.x = (r0.x * r0.y);
  o0.z = (r0.x * cb13_13.tint_symbol_1[4u].w);
  r0.x = (v1.x * 65536.0f);
  r0.x = min(r0.x, 8191.0f);
  r0.y = (r0.x * 0.00390625f);
  r0.y = floor(r0.y);
  r0.x = fma((-(r0.yyyy)).x, 256.0f, r0.x);
  r0.y = (r0.y * 0.00390625f);
  o0.x = r0.y;
  r0.x = floor(r0.x);
  o0.y = (r0.x * 0.00390625f);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
