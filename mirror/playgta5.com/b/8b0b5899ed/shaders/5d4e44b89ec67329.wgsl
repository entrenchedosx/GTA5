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
  r1.y = ((-(r2.xxxx)).y + r1.x);
  r0.z = v2.z;
  let v_5 = r0.xyzx;
  r0 = textureSample(t2, s2, v_5.xy, i32(v_5.z));
  r1.z = ((-(r0.xxxx)).z + r1.x);
  let v_6 = clamp(fma(r1.yzyy, vec4<f32>(5000.0f, 5000.0f, 0.0f, 0.0f), vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = abs(r1.zzzz);
  r0.z = max(v_7.z, abs(r1.yyyy).z);
  r0.z = log2(r0.z);
  r0.z = (r0.z * v1.x);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_8 = (r0.xy + vec2<f32>(-1.0f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r1.x = -1.0f;
  let v_10 = fma(vec3<f32>(0.5f), r1.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r1.x = (r0.z * r0.z);
  let v_11 = -(r0.zzzz);
  let v_12 = fma(r1.xxx, r0.xyw, v_11.xyw);
  r0 = vec4<f32>(v_12.xy, r0.z, v_12.z);
  let v_13 = fma(v1.yyy, r0.xyw, r0.zzz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  o0.w = v1.w;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
