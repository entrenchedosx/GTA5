diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * v4.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r0.w = fma(v2.y, 2.0f, -1.0f);
  r1.w = fma((-(r0.wwww)).w, r0.w, 1.0f);
  r1.w = sqrt(r1.w);
  let v_2 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + vec3<f32>(1.0f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz * vec3<f32>(0.5f));
  o0 = vec4<f32>(v_5.xyz, o0.w);
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  o0.w = (r0.x * v1.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
