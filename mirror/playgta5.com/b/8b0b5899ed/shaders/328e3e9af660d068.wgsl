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
  r0.x = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[3u].z);
  let v = ((-(cb11_11.tint_symbol_4[3u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.zz * v1.zw);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r0.z = ((-(r1.xxxx)).z + r1.z);
  r1.x = fma(r0.x, r0.z, r1.x);
  let v_3 = (r1.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_4 = r0;
  r0 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  r0.w = fma(v3.z, r0.y, -1.0f);
  r0.w = fma(r0.y, r0.w, 1.0f);
  r0.y = (r0.y * v3.z);
  r0.y = (r0.y * cb11_11.tint_symbol_4[3u].x);
  r0.x = (r0.w * r0.x);
  r0.z = fma((-(r0.zzzz)).z, r0.w, 1.0f);
  r0.w = fma((-(cb2_2.tint_symbol[16u].yyyy)).w, 100.0f, 1.0f);
  r0.x = clamp(((r0.wwww * r0.xxxx)).x, 0.0f, 1.0f);
  r2 = textureSample(t0, s0, v1.xyxx.xy);
  let v_5 = (r2.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  r0.w = (r2.w * v3.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r2.w = (r0.w * cb2_2.tint_symbol[16u].y);
  let v_6 = -(r1.xywx);
  let v_7 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_6.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(r0.xxx, r3.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  let v_9 = ((-(r1.xywx)).xyz + r1.zzz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r0.yyy, r3.xyz, r1.xyw);
  r0 = vec4<f32>(v_10.xy, r0.z, v_10.z);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v_11 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r3.y = (r1.w * 0.99609375f);
  r1.x = dot(r1.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r1.x = (r1.x * v3.x);
  r1.x = (r1.x * v2.w);
  r1.x = (r1.x * 0.80000001192092895508f);
  r3.x = (r0.z * r1.x);
  r0.z = clamp(fma(r1.xxxx, r0.zzzz, vec4<f32>(0.40000000596046447754f)).z, 0.0f, 1.0f);
  let v_12 = -(r3.xyxx);
  let v_13 = fma(r0.zz, vec2<f32>(0.5f, 0.48828125f), v_12.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_14.xy, r1.zw);
  r0.z = fma((-(r3.xxxx)).z, 0.5f, 1.0f);
  r1.z = dot(v2.xyz, v2.xyz);
  r1.z = inverseSqrt(r1.z);
  r1.w = fma(v2.z, r1.z, -0.34999999403953552246f);
  let v_15 = (r1.zzz * v2.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(r4.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_16.xyz, o1.w);
  r1.z = clamp(((r1.wwww * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.z = (r1.w * r1.z);
  r1.z = (r1.z * cb2_2.tint_symbol[15u].z);
  r0.z = (r0.z * r1.z);
  let v_17 = fma(r1.xy, r1.zz, r3.xy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  let v_18 = sqrt(r1.xy);
  o2 = vec4<f32>(v_18.xy, o2.zw);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_19 = (r0.zzz * r0.xyw);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_20 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r2, v3, (v_20 != vec4<u32>()));
  o1.w = 0.0f;
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.95999997854232788086f, 1.0f));
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].y);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_21 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_21.xy, r0.zw);
  let v_22 = sqrt(r0.xy);
  o3 = vec4<f32>(v_22.xy, o3.zw);
  r0.x = (v3.x * cb11_11.tint_symbol_4[2u].x);
  o3.z = clamp(((r0.xxxx * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
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
