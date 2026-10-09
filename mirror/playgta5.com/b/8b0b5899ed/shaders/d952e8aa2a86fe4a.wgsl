diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma((-(v1.xxxx)).xyz, cb1_1.tint_symbol[12u].xyz, cb1_1.tint_symbol[14u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v1.yyy, cb1_1.tint_symbol[13u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = cb5_5.tint_symbol_1[1u].x;
  r0 = textureSampleLevel(t3, s3, r0.xyzx.xyz, v_3);
  let v_4 = r0;
  o0 = vec4<f32>(v_4.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
