diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(0.0f, -3.0f, 0.0f, -2.0f), v1.xy.xyxy);
  r1 = textureSample(t10, s10, r0.zwzz.xy);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  r2 = textureSample(t10, s10, v1.xy.xyxx.xy);
  let v = -(r2.xyzx);
  let v_1 = (r1.xyz + v.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r1.xyz * vec3<f32>(0.80000001192092895508f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = -(r2.xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r0.xyz, vec3<f32>(0.69999998807907104492f), r1.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), v1.xy.xyxy);
  r3 = textureSample(t10, s10, r1.xyxx.xy);
  r1 = textureSample(t10, s10, r1.zwzz.xy);
  let v_8 = ((-(r2.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = ((-(r2.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = max(r3.xyz, vec3<f32>());
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r3.xyz, vec3<f32>(0.89999997615814208984f), r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(r1.xyz, vec3<f32>(0.89999997615814208984f), r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(0.0f, 2.0f, 0.0f, 3.0f), v1.xy.xyxy);
  r3 = textureSample(t10, s10, r1.xyxx.xy);
  r1 = textureSample(t10, s10, r1.zwzz.xy);
  let v_14 = ((-(r2.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = ((-(r2.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = max(r3.xyz, vec3<f32>());
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r3.xyz, vec3<f32>(0.80000001192092895508f), r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = fma(r1.xyz, vec3<f32>(0.69999998807907104492f), r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = fma(r0.xyz, vec3<f32>(0.17241379618644714355f), r2.xyz);
  o0 = vec4<f32>(v_20.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
