diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t12, s12, v1.xyxx.xy);
  let v = r0;
  o0 = vec4<f32>(v.xxx, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
