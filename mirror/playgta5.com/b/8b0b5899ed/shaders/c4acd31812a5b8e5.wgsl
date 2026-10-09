diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t7, s7, v1.xy.xyxx.xy);
  r1 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r0.x = max(r0.w, r1.w);
  let v = -(r1.wwww);
  o0.w = fma(r0.x, 2.0f, v.w);
  let v_1 = r1;
  o0 = vec4<f32>(v_1.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
