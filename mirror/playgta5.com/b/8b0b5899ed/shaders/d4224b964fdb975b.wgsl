diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb94_struct {
  tint_symbol : array<vec4<f32>, 94u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb94_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = max(cb5_5.tint_symbol[93u].w, 1.0f);
  r0.x = fma(cb5_5.tint_symbol[92u].x, r0.x, -4.0f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.5f))).x, 0.0f, 1.0f);
  r1 = textureSampleLevel(t5, s5, v1.xy.xyxx.xy, 0.0f);
  o0.w = (r0.x * r1.w);
  let v = r1;
  o0 = vec4<f32>(v.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
