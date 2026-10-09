diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v = (r0.xyz * cb2_2.tint_symbol[17u].www);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = log2(r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz * vec3<f32>(0.45449998974800109863f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = exp2(r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_7 = r0;
  o0 = vec4<f32>(v_7.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
