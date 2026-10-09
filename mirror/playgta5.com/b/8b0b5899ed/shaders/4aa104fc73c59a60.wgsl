diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb5_struct {
  tint_symbol : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = fma(v0.xyxy, vec4<f32>(0.5f), vec4<f32>(-0.5f));
  r0 = trunc(r0);
  r1 = (r0.zwzw + vec4<f32>(0.5f, 0.5f, 1.5f, 0.5f));
  r0 = (r0 + vec4<f32>(0.5f, 1.5f, 1.5f, 1.5f));
  r2 = (cb12_12.tint_symbol[2u].zwzw + cb12_12.tint_symbol[2u].zwzw);
  r1 = (r1 * r2);
  r0 = (r0 * r2);
  r1.x = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f).x;
  r1.y = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f).x;
  r1.x = max(r1.y, r1.x);
  r0.x = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f).x;
  r0.y = textureSampleLevel(t4, s4, r0.zwzz.xy, 0.0f).x;
  r0.x = max(r0.y, r0.x);
  r0.x = max(r0.x, r1.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol[4u].w);
  o0 = exp2(r0.xxxx);
}

@fragment
fn main(@builtin(position) v_2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_2);
  return o0;
}
