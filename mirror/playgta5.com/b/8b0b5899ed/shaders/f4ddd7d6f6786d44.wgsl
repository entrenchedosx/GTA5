diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb5_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xy / v2.ww)).xy, r0.zw);
  r0 = textureSample(t5, s5, r0.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_1[17u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_1[17u].z / r0.x);
  r0.x = clamp(((r0.xxxx / v2.wwww)).x, 0.0f, 1.0f);
  r0 = vec4<f32>(r0.x, ((v3.xyz / v4.xyz)).xyz);
  r0.y = max(r0.z, r0.y);
  r0.y = max(r0.w, r0.y);
  r0.x = clamp(((-(r0.yyyy) + r0.xxxx)).x, 0.0f, 1.0f);
  let v = (v1.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * v2.z);
  let v_1 = (r0.xxx * cb10_10.tint_symbol_2[4u].xyz);
  o0 = vec4<f32>(v_1.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
