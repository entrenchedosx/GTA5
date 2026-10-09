diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0 = textureSample(t8, s8, r0.xyxx.xy);
  let v = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = ((-(r1.xxxx)).w + cb12_12.tint_symbol_2[17u].w);
  r0.w = (r0.w + 1.0f);
  r0.w = (cb12_12.tint_symbol_2[17u].z / r0.w);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v_1 = fma(r1.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = -(cb12_12.tint_symbol_2[0u].xyxx);
  let v_3 = (r1.xy + v_2.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = ((-(r1.zzzz)).w + cb12_12.tint_symbol_2[0u].z);
  r0.w = (abs(r0.wwww).w * 10.0f);
  r0.w = min(r0.w, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = dot(r1.xy, r1.xy);
  r1.x = sqrt(r1.x);
  r1.x = (r1.x / cb12_12.tint_symbol_2[4u].y);
  r1.x = clamp(((-(r1.xxxx) + vec4<f32>(0.80000001192092895508f))).x, 0.0f, 1.0f);
  r0.w = (r0.w * r1.x);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.x = fma(r0.z, r0.x, -0.75f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(4.0f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.x = (r0.x * cb12_12.tint_symbol_2[3u].w);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * cb5_5.tint_symbol_1[2u].y);
  o0.w = (r0.x * cb12_12.tint_symbol_2[3u].x);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  r0.y = ((-(cb12_12.tint_symbol_2[3u].xxxx)).y + 1.0f);
  o3.w = (r0.y * r0.x);
  o3 = vec4<f32>(vec3<f32>(), o3.w);
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
