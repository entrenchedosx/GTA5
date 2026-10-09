diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb4_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_1[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_1[2u].w / r0.x);
  let v = fma(v2.xyz, r0.xxx, cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1.x = (-(cb11_11.tint_symbol_1[5u].wwww)).x;
  let v_1 = r1;
  r1 = vec4<f32>(v_1.x, -0.0f, v_1.z, 0.5f);
  let v_2 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r1.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol[3u].xxxx, cb6_6.tint_symbol[3u].yyyy).z, -0.0f, 1.0f);
  r0.z = sqrt(r0.z);
  r0.z = (r0.z * cb6_6.tint_symbol[3u].z);
  r2 = textureSample(t5, s5, r0.xyxx.xy);
  r1.z = r2.y;
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  let v_3 = -(r1.xxxx);
  o0 = fma(r0.zzzz, v_3, r1.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
