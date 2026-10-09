diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb5_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct_1;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  let v_1 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  let v_2 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_2.xy, r1.z, v_2.z);
  let v_3 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_4 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_5 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2.w = (r1.x * v3.x);
  let v_6 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r3.x = (v3.x * cb2_2.tint_symbol[15u].z);
  r2.w = (r2.w * v2.w);
  r2.w = (r2.w * 0.60000002384185791016f);
  let v_7 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).yw + vec2<f32>(1.0f, 2.0f));
  let v_8 = r3;
  r3 = vec4<f32>(v_8.x, v_7.x, v_8.z, v_7.y);
  r4.x = (r3.y * v3.z);
  let v_9 = (r3.ww * v1.zw);
  let v_10 = r4;
  r4 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r5 = textureSample(t3, s3, r4.yzyy.xy);
  r3.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r4.y = ((-(r5.xxxx)).y + r5.z);
  r5.x = fma(r3.w, r4.y, r5.x);
  let v_11 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_12 = r4;
  r4 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r3.w = fma(v3.z, r3.y, -1.0f);
  r3.y = fma(r3.y, r3.w, 1.0f);
  r3.w = (r3.y * r4.y);
  let v_13 = -(r0.xyxz);
  let v_14 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_13.xyw);
  r5 = vec4<f32>(v_14.xy, r5.z, v_14.z);
  let v_15 = fma(r3.www, r5.xyw, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r3.w = (r4.x * cb11_11.tint_symbol_4[2u].x);
  let v_16 = ((-(r0.xyxz)).xyw + r5.zzz);
  r4 = vec4<f32>(v_16.xy, r4.z, v_16.z);
  let v_17 = fma(r3.www, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r3.y = fma((-(r4.zzzz)).y, r3.y, 1.0f);
  r4.x = (r2.w * r3.y);
  r3.w = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r1.x = (r1.x * r3.w);
  r1.x = (r1.x * 0.60000002384185791016f);
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = fma(cb11_11.tint_symbol_4[4u].www, r5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = -(r5.xyzx);
  let v_21 = fma(v4.xyz, r3.www, v_20.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_22 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r3.w = dot(r2.xyz, r5.xyz);
  r3.w = clamp(((r3.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r4.w = fma(r1.y, 20.0f, 0.00000000999999993923f);
  r3.w = log2(r3.w);
  r3.w = (r3.w * r4.w);
  r3.w = exp2(r3.w);
  let v_23 = fma(r1.xxx, r3.www, r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  r5.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(r1.z, r1.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r3.x * r0.w);
  r1.x = fma((-(r4.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_24 = (r0.xyz * r1.xxx);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_25 = bitcast<vec4<u32>>(r0.xxxx);
  r5 = select(r5, v3, (v_25 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r5.w)));
  v_26((bitcast<u32>(r0.x) != 0u));
  r4.z = ((-(r3.zzzz)).z + 1.0f);
  r0.x = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.x);
  let v_27 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r1 = vec4<f32>(v_27.x, r1.y, v_27.yz);
  let v_28 = (r1.xzw * vec3<f32>(256.0f));
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = floor(r2.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = -(r2.xxyz);
  let v_31 = fma(r1.xzw, vec3<f32>(256.0f), v_30.xzw);
  r1 = vec4<f32>(v_31.x, r1.y, v_31.yz);
  let v_32 = (r1.xzw * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_32.x, r1.y, v_32.yz);
  let v_33 = floor(r1.xzw);
  r1 = vec4<f32>(v_33.x, r1.y, v_33.yz);
  r0.z = dot(r1.zxw, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.z * 0.0039215688593685627f);
  let v_34 = (r2.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_34.xyz, o1.w);
  r4.y = (r1.y * 0.8984375f);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_35 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_35.xy, r0.zw);
  let v_36 = sqrt(r0.xy);
  o3 = vec4<f32>(v_36.xy, o3.zw);
  r0.x = clamp(fma(r2.wwww, r3.yyyy, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_37 = -(r4.xyxx);
  let v_38 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_37.xy);
  r0 = vec4<f32>(v_38.xy, r0.zw);
  r0.z = 0.0f;
  let v_39 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = fma(r0.xyz, r0.www, r4.xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  let v_41 = sqrt(r0.xy);
  o2 = vec4<f32>(v_41.xy, o2.zw);
  o0 = r5;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_26(v_42 : bool) {
  if (v_42) {
    discard;
    return;
  }
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
