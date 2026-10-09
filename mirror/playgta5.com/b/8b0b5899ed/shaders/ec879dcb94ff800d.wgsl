diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma(v2.z, r0.x, -0.34999999403953552246f);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  let v_1 = fma(r0.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_1.xyz, o1.w);
  r0.x = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].z);
  r0.y = fma(r0.x, -0.5f, 1.0f);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_2 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.z = (r1.w * v3.w);
  r0.z = (r0.z * cb2_2.tint_symbol[15u].x);
  r2.w = (r0.z * cb2_2.tint_symbol[16u].y);
  let v_3 = (r0.yyy * r1.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_4 = bitcast<vec4<u32>>(r0.yyyy);
  o0 = select(r2, v3, (v_4 != vec4<u32>()));
  o1.w = 0.0f;
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r1.y = (r1.w * 0.1953125f);
  r1.x = 0.0f;
  let v_5 = ((-(r1.xxyx)).yz + vec2<f32>(0.20000000298023223877f, 0.1953125f));
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = max(r0.yz, vec2<f32>());
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = fma(r0.yz, r0.xx, r1.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = sqrt(r0.xy);
  o2 = vec4<f32>(v_10.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>(1.0f));
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].y);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_11 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = sqrt(r0.xy);
  o3 = vec4<f32>(v_12.xy, o3.zw);
  o3.z = clamp(((v3.xxxx * vec4<f32>(0.015625f))).z, 0.0f, 1.0f);
  o3.w = 1.00188386440277099609f;
}

struct tint_symbol_5 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
