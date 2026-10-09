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

struct cb4_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  let v = (v1.zw * cb10_10.tint_symbol_5[0u].zw);
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
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  r0.x = fma(r0.x, r1.w, 1.0f);
  let v_2 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r2.y = (r1.w * 0.029296875f);
  r0.y = dot(r1.xyz, cb11_11.tint_symbol_4[3u].xyz);
  r0.y = (r0.x * r0.y);
  r0.y = (r0.y * v3.x);
  r0.y = (r0.y * v2.w);
  r2.x = (r0.y * cb11_11.tint_symbol_4[2u].z);
  r0.y = clamp(fma(r0.yyyy, cb11_11.tint_symbol_4[2u].zzzz, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  let v_3 = -(r2.xxyx);
  let v_4 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_3.yz);
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = max(r0.yz, vec2<f32>());
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.w = fma((-(r2.xxxx)).w, 0.5f, 1.0f);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.y = fma(v2.z, r1.x, -0.34999999403953552246f);
  let v_8 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v_8.x, r1.y, v_8.yz);
  let v_9 = fma(r1.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_9.xyz, o1.w);
  r1.x = clamp(((r1.yyyy * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[3u].z);
  r1.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  let v_10 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  let v_11 = r1;
  r1 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r1.x = (r1.y * r1.x);
  r0.w = (r0.w * r1.x);
  let v_12 = fma(r0.yz, r1.xx, r2.xy);
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = sqrt(r0.yz);
  o2 = vec4<f32>(v_14.xy, o2.zw);
  r0.y = fma(r0.w, -0.5f, 1.0f);
  r2 = textureSample(t0, s0, v1.xyxx.xy);
  r2 = (r0.xxxx * r2);
  let v_15 = (r2.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r2 = (r2 * v3.xxxw);
  let v_16 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = (r2.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_17 = bitcast<vec4<u32>>(r1.xxxx);
  o0 = select(r0, v3, (v_17 != vec4<u32>()));
  o1.w = 0.0f;
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.80000001192092895508f, 1.0f));
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.z);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_18 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = sqrt(r0.xy);
  o3 = vec4<f32>(v_19.xy, o3.zw);
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
