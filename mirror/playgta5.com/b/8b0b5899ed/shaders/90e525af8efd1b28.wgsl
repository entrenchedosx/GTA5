diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v = (r0.xy * vec2<f32>(-2.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.z = 2.0f;
  let v_1 = (r0.xyz + vec3<f32>(1.0f, 1.0f, -1.0f));
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = ((-(v1.wwww)).w + 1.0f);
  let v_2 = (r0.www * vec3<f32>(0.0f, 0.0f, 1.0f));
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(v1.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1.z = 2.0f;
  r2 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r2.z = dot(r1.xyz, r0.xyz);
  let v_5 = (r1.xy * r2.zz);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = -(r0.xyzx);
  let v_7 = fma(r2.xyz, vec3<f32>(0.5f, 0.5f, 1.0f), v_6.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o0 = vec4<f32>(v_9.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
