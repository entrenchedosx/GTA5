diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  let v = (v1.xy * cb10_10.tint_symbol_5[0u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * vec2<f32>(3.1700000762939453125f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t3, s3, r0.xyxx.xy);
  r0.x = fma(r1.x, 2.0f, -1.0f);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r0.y = fma(r1.x, 2.0f, -1.0f);
  r0.y = (r0.y * 0.5f);
  r0.x = fma(r0.x, 0.5f, r0.y);
  r0.x = ((-(r0.xxxx)).x * cb10_10.tint_symbol_5[0u].x);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  r0.x = fma(r0.x, r1.w, 1.0f);
  r2 = textureSample(t0, s0, v1.xyxx.xy);
  r2 = (r0.xxxx * r2);
  let v_2 = (r2.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  r2 = (r2 * v3.xxxw);
  let v_3 = -(r2.xxyz);
  let v_4 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_3.yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  r3.x = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v_5 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_6 = r3;
  r3 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = (r3.zz * v1.zw);
  r3 = vec4<f32>(r3.xy, v_7.xy);
  r4 = textureSample(t4, s4, r3.zwzz.xy);
  r3.z = ((-(r4.xxxx)).z + r4.z);
  r4.x = fma(r3.x, r3.z, r4.x);
  let v_8 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_9 = r3;
  r3 = vec4<f32>(v_8.x, v_9.y, v_8.y, v_9.w);
  r3.w = fma(v3.z, r3.y, -1.0f);
  r3.w = fma(r3.y, r3.w, 1.0f);
  r3.y = (r3.y * v3.z);
  r3.y = (r3.y * cb11_11.tint_symbol_4[2u].x);
  r3.x = (r3.w * r3.x);
  r3.z = fma((-(r3.zzzz)).z, r3.w, 1.0f);
  let v_10 = fma(r3.xxx, r0.yzw, r2.xyz);
  r0 = vec4<f32>(r0.x, v_10.xyz);
  r2.w = (r2.w * cb2_2.tint_symbol[15u].x);
  let v_11 = ((-(r0.yzwy)).xyz + r4.zzz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r3.yyy, r4.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  let v_13 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r1.w = (r1.w * cb11_11.tint_symbol_4[4u].x);
  r4.y = (r1.w * 0.001953125f);
  r1.x = dot(r1.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r1.x = (r1.x * cb11_11.tint_symbol_4[4u].y);
  r0.x = (r0.x * r1.x);
  r0.x = (r0.x * v3.x);
  r0.x = (r0.x * v2.w);
  r4.x = (r3.z * r0.x);
  r0.x = clamp(fma(r0.xxxx, r3.zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_14 = -(r4.xyxx);
  let v_15 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_14.xy);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r0.x = fma((-(r4.xxxx)).x, 0.5f, 1.0f);
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = inverseSqrt(r1.w);
  r3.x = fma(v2.z, r1.w, -0.34999999403953552246f);
  let v_16 = (r1.www * v2.xyz);
  r3 = vec4<f32>(r3.x, v_16.xyz);
  let v_17 = fma(r3.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_17.xyz, o1.w);
  r1.w = clamp(((r3.xxxx * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * cb5_5.tint_symbol_2[3u].z);
  r3.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.w = (r1.w * r3.x);
  let v_18 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  r1.w = (r1.w * r3.x);
  r0.x = (r0.x * r1.w);
  r0.x = fma(r0.x, -0.5f, 1.0f);
  let v_19 = (r0.xxx * r0.yzw);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_20 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_20 != vec4<u32>()));
  o1.w = 0.0f;
  r1.z = 0.0f;
  let v_21 = max(r1.xyz, vec3<f32>());
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r4.z = cb11_11.tint_symbol_4[3u].w;
  let v_22 = fma(r0.xyz, r1.www, r4.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = sqrt(r0.xy);
  o2 = vec4<f32>(v_23.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r3.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_24 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_24.xy, r0.zw);
  let v_25 = sqrt(r0.xy);
  o3 = vec4<f32>(v_25.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_6 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3);
}
