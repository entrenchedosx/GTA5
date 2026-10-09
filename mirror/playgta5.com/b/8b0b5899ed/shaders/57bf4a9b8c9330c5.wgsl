diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d_array<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(v2.xy.xy, r0.zw);
  r0.z = cb5_5.tint_symbol[3u].w;
  let v = r0.xyzx;
  r0 = textureSampleLevel(t7, s7, v.xy, i32(v.z), 0.0f);
  let v_1 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * cb5_5.tint_symbol[2u].xyz);
  o0 = vec4<f32>(v_2.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
