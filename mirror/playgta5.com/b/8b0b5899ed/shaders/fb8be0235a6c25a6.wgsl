diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xy / v2.ww)).xy, r0.zw);
  r1 = textureSample(t14, s14, r0.xyxx.xy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (4.0f < abs(r1.xxxx).z)));
  v((bitcast<u32>(r0.z) != 0u));
  r0 = textureSample(t15, s15, r0.xyxx.xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, ((v1.zw * v1.xy)).xy, v_1.w);
  r1 = vec4<f32>((((-(v1.zwzz)).xy + vec2<f32>(1.0f))).xy, r1.zw);
  r0.y = fma(r0.x, r1.x, r0.y);
  r0.w = min(r0.x, -5.0f);
  r0.x = max(r0.x, 5.0f);
  r0.y = max(r0.w, r0.y);
  r0.x = min(r0.x, r0.y);
  r0.x = max(r0.x, -20.0f);
  r0.x = min(r0.x, 20.0f);
  r0.y = fma(r0.x, r1.y, r0.z);
  r0.z = min(r0.x, -5.0f);
  r0.x = max(r0.x, 5.0f);
  r0.y = max(r0.z, r0.y);
  r0.x = min(r0.x, r0.y);
  r0.x = max(r0.x, -10.0f);
  r0.x = min(r0.x, 10.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (abs(r0.xxxx).y >= 9.0f)));
  let v_2 = bitcast<u32>(r0.y);
  o0 = select(r0.x, 0.0f, (v_2 != 0u));
}

fn v(v_3 : bool) {
  if (v_3) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1, v2);
  return o0;
}
