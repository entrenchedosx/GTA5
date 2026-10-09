diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t4, s4, v2.xyxx.xy).xzyw;
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((v1.w == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r1 = textureSample(t4, s4, v2.zwzz.xy);
    let v = ((-(r0.xxxy)).zw + r1.xz);
    r0 = vec4<f32>(r0.xy, v.xy);
    let v_1 = fma(v1.ww, r0.zw, r0.xy);
    r0 = vec4<f32>(v_1.xy, r0.zw);
  }
  let v_2 = (r0.xy * v1.xy);
  o0 = vec4<f32>(v_2.x, o0.yz, v_2.y);
  let v_3 = o0;
  o0 = vec4<f32>(v_3.x, vec2<f32>(), v_3.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
