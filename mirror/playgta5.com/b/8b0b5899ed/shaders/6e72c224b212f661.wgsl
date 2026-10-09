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

struct cb4_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = (v3.z * cb11_11.tint_symbol_4[2u].x);
  r0.y = ((-(cb11_11.tint_symbol_4[2u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v = ((-(cb11_11.tint_symbol_4[0u].xxyz)).yzw + vec3<f32>(1.0f));
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(r0.xxx, r0.yzw, cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_2 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0 = (r1 * v3.xxxw);
  r1.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_3 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  let v_4 = (r2.xy * vec2<f32>(0.60000002384185791016f));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_5 = (r2.yyy * v6.xyz);
  r2 = vec4<f32>(r2.x, v_5.xyz);
  let v_6 = fma(r2.xxx, v5.xyz, r2.yzw);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r0.www, v2.xyz, r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  r2.w = fma(r2.z, r0.w, -0.34999999403953552246f);
  let v_8 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_9.xyz, o1.w);
  r0.w = clamp(((r2.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r2.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r2.x);
  let v_10 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r0.w = (r0.w * r2.x);
  r3 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_11 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r4.z = (r3.w * 0.349609375f);
  r2.x = dot(r3.xyz, cb11_11.tint_symbol_4[3u].xyz);
  r2.x = (r2.x * v3.x);
  r2.x = (r2.x * v2.w);
  r2.x = (r2.x * cb11_11.tint_symbol_4[2u].z);
  r2.z = fma((-(r2.xxxx)).z, 0.03249999880790710449f, 1.0f);
  r2.z = (r0.w * r2.z);
  r2.z = fma(r2.z, -0.5f, 1.0f);
  let v_12 = (r0.xyz * r2.zzz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_13 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r1, v3, (v_13 != vec4<u32>()));
  o1.w = 0.0f;
  r0.x = clamp(fma(r2.xxxx, vec4<f32>(0.06499999761581420898f), vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r4.y = (r2.x * 0.06499999761581420898f);
  let v_14 = -(r4.yzyy);
  let v_15 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_14.xy);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_16.xy, r0.zw);
  let v_17 = fma(r0.xy, r0.ww, r4.yz);
  r0 = vec4<f32>(v_17.xy, r0.zw);
  let v_18 = sqrt(r0.xy);
  o2 = vec4<f32>(v_18.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.82999998331069946289f, 1.0f));
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r2.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_19 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = sqrt(r0.xy);
  o3 = vec4<f32>(v_20.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
