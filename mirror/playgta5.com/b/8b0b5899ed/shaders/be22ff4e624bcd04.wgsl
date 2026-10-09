diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.94999998807907104492f, -0.94999998807907104492f, -0.94999998807907104492f, 0.94999998807907104492f), v1.xy.xyxy);
  r1 = textureSample(t5, s5, r0.xyxx.xy);
  r0 = textureSample(t5, s5, r0.zwzz.xy);
  let v = min(r0.xyz, r1.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(0.94999998807907104492f, 0.94999998807907104492f, 0.94999998807907104492f, -0.94999998807907104492f), v1.xy.xyxy);
  r2 = textureSample(t5, s5, r1.xyxx.xy);
  r1 = textureSample(t5, s5, r1.zwzz.xy);
  let v_1 = min(r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = min(r0.xyz, r1.xyz);
  o0 = vec4<f32>(v_2.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
