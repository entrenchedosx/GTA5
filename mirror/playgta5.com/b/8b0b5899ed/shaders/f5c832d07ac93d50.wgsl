diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d_array<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = (v1.zzzz * vec4<f32>(255.0f, 0.0f, 0.0f, 255.0f));
  r1 = (cb6_6.tint_symbol[14u].xyxy * vec4<f32>(1.0f, 4.0f, 1.0f, 4.0f));
  r0 = (r0 / r1);
  let v = (vec2<f32>(0.5f) / r1.zw);
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = (r1.xy + v2.xyz.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r0 = (r0.zwxy + r1.xyxy);
  let v_2 = r0;
  r2 = vec4<f32>(v_2.zw, r2.zw);
  r2.z = v2.z;
  let v_3 = r2.xyzx;
  r2 = textureSample(t2, s2, v_3.xy, i32(v_3.z));
  r1.z = v2.z;
  let v_4 = r1.xyzx;
  r1 = textureSample(t2, s2, v_4.xy, i32(v_4.z));
  let v_5 = ((-(r2.xyzx)).xyz + r1.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r0.z = v2.z;
  let v_6 = r0.xyzx;
  r0 = textureSample(t2, s2, v_6.xy, i32(v_6.z));
  let v_7 = ((-(r0.xyzx)).xyz + r1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = abs(r0.xyzx);
  let v_9 = max(v_8.xyz, abs(r2.xyzx).xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = log2(r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz * vec3<f32>(0.25f));
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = exp2(r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r1.xyz, vec3<f32>(0.10999999940395355225f), r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = fma((-(r0.xyzx)).xyz, vec3<f32>(0.33000001311302185059f), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz * v1.xyz);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  o0.w = v1.w;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
