diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t11, s11, v1.xyxx.xy);
  r0.x = fma(r0.x, 1.72300004959106445312f, -0.72299998998641967773f);
  r1 = textureSample(t15, s15, v2.xyxx.xy);
  r0.x = fma(r0.x, v1.z, r1.x);
  r0.x = max(r0.x, -10.0f);
  r0.x = min(r0.x, 10.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (abs(r0.xxxx).y >= 9.0f)));
  let v = bitcast<u32>(r0.y);
  o0 = select(r0.x, 0.0f, (v != 0u));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1, v2);
  return o0;
}
