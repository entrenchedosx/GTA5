diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = (v1.xy.xyxy + vec4<f32>(0.00015624999650754035f, 0.00027777778450399637f, -0.00015624999650754035f, 0.00027777778450399637f));
  r1 = textureSample(t4, s4, r0.xyxx.xy);
  r0 = textureSample(t4, s4, r0.zwzz.xy);
  r2 = (v1.xy.xyxy + vec4<f32>(-0.00015624999650754035f, -0.00027777778450399637f, 0.00015624999650754035f, -0.00027777778450399637f));
  r3 = textureSample(t4, s4, r2.xyxx.xy);
  r2 = textureSample(t4, s4, r2.zwzz.xy);
  let v = -(r2.wwww);
  r0.x = (r0.w + v.x);
  r0.y = dot(r0.xxx, vec3<f32>(1.0f));
  let v_1 = -(r3.wwww);
  r0.z = (r1.w + v_1.z);
  r0.x = dot(r0.zzz, vec3<f32>(1.0f));
  r1.x = dot(vec2<f32>(0.70710676908493041992f), r0.xy);
  r1.y = dot(vec2<f32>(-0.70710676908493041992f, 0.70710676908493041992f), r0.xy);
  r0.x = dot(r1.xy, r1.xy);
  r0.y = inverseSqrt(r0.x);
  r0.x = sqrt(r0.x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(10.0f), vec4<f32>(-0.30000001192092895508f)).x, 0.0f, 1.0f);
  r1 = (r0.yyyy * r1.xyxy);
  r0 = (r0.xxxx * r1);
  r1 = fma(-(r0.zwxy), vec4<f32>(0.00273437495343387127f, 0.00486111128702759743f, 0.00117187504656612873f, 0.00208333344198763371f), v1.xy.xyxy);
  r0 = fma(r0, vec4<f32>(0.00117187504656612873f, 0.00208333344198763371f, 0.00273437495343387127f, 0.00486111128702759743f), v1.xy.xyxy);
  r2 = textureSample(t4, s4, r1.xyxx.xy);
  r1 = textureSample(t4, s4, r1.zwzz.xy);
  r1 = (r1 + r2);
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r1 = (r1 + r2);
  r2 = textureSample(t4, s4, r0.xyxx.xy);
  r0 = textureSample(t4, s4, r0.zwzz.xy);
  r1 = (r1 + r2);
  r0 = (r0 + r1);
  o0 = (r0 * vec4<f32>(0.20000000298023223877f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
