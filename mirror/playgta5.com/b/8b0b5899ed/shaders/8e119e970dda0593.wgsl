diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner() {
  r0 = textureSample(t3, s3, vec2<f32>(0.03125f));
  r1.x = dot(r0.xyz, vec3<f32>(1.0f));
  r2 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.09375f));
  r1.y = dot(r2.xyz, vec3<f32>(1.0f));
  r3 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.15625f));
  r1.z = dot(r3.xyz, vec3<f32>(1.0f));
  r4 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.21875f));
  r1.w = dot(r4.xyz, vec3<f32>(1.0f));
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1 >= vec4<f32>(0.5f))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(1065353216u)));
  let v = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = fma(r0.xyz, r1.xxx, r2.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(r3.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(r4.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r1, vec4<f32>(1.0f));
  r1 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.28125f));
  r2.x = dot(r1.xyz, vec3<f32>(1.0f));
  r3 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.34375f));
  r2.y = dot(r3.xyz, vec3<f32>(1.0f));
  r4 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.40625f));
  r2.z = dot(r4.xyz, vec3<f32>(1.0f));
  r5 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.46875f));
  r2.w = dot(r5.xyz, vec3<f32>(1.0f));
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r2 >= vec4<f32>(0.5f))));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  let v_4 = fma(r1.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r3.xyz, r2.yyy, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(r4.xyz, r2.zzz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r5.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1.x = dot(r2, vec4<f32>(1.0f));
  r0.w = (r0.w + r1.x);
  r1 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.53125f));
  r2.x = dot(r1.xyz, vec3<f32>(1.0f));
  r3 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.59375f));
  r2.y = dot(r3.xyz, vec3<f32>(1.0f));
  r4 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.65625f));
  r2.z = dot(r4.xyz, vec3<f32>(1.0f));
  r5 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.71875f));
  r2.w = dot(r5.xyz, vec3<f32>(1.0f));
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r2 >= vec4<f32>(0.5f))));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  let v_8 = fma(r1.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r3.xyz, r2.yyy, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r4.xyz, r2.zzz, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(r5.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r1.x = dot(r2, vec4<f32>(1.0f));
  r2 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.78125f));
  r3.x = dot(r2.xyz, vec3<f32>(1.0f));
  r4 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.84375f));
  r3.y = dot(r4.xyz, vec3<f32>(1.0f));
  r5 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.90625f));
  r3.z = dot(r5.xyz, vec3<f32>(1.0f));
  r6 = textureSample(t3, s3, vec2<f32>(0.03125f, 0.96875f));
  r3.w = dot(r6.xyz, vec3<f32>(1.0f));
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r3 >= vec4<f32>(0.5f))));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  let v_12 = fma(r2.xyz, r3.xxx, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(r4.xyz, r3.yyy, r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(r5.xyz, r3.zzz, r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = fma(r6.xyz, r3.www, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r1.y = dot(r3, vec4<f32>(1.0f));
  r1.x = (r1.y + r1.x);
  r0.w = (r0.w + r1.x);
  let v_16 = (r0.xyz / r0.www);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main() -> @location(0u) vec4<f32> {
  main_inner();
  return o0;
}
