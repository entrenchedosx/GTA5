diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d_array<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (cb6_6.tint_symbol[14u].xy * vec2<f32>(1.0f, 4.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (vec2<f32>(0.5f) / r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy + v2.xyz.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = v2.z;
  let v_3 = r0.xyzx;
  r0 = textureSample(t2, s2, v_3.xy, i32(v_3.z));
  let v_4 = (r0.xyz * v1.xyz);
  o0 = vec4<f32>(v_4.xyz, o0.w);
  o0.w = v1.w;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
