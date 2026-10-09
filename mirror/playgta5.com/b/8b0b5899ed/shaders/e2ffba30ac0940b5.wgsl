diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec2<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = textureSample(t6, s6, v1.xyxx.xy).xy;
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.0f)));
  r0.y = (-(r0.yyyy)).y;
  o0.x = r0.x;
  o0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec2<f32> {
  main_inner(v1);
  return o0;
}
