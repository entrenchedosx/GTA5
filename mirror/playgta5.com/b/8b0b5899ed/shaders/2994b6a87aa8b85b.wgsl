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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  let v = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  let v_1 = (r0.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.zwzz.xy);
  let v_2 = -(r1.xyzx);
  let v_3 = fma(r2.xyz, cb11_11.tint_symbol_4[1u].xyz, v_2.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r1.w = (r2.w * cb11_11.tint_symbol_4[1u].w);
  let v_4 = fma(r1.www, r2.xyz, r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  let v_5 = -(r0.xyzx);
  let v_6 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r2.x = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v_7 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_8 = r2;
  r2 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = (r2.zz * v1.xy);
  r2 = vec4<f32>(r2.xy, v_9.xy);
  r3 = textureSample(t4, s4, r2.zwzz.xy);
  r2.z = ((-(r3.xxxx)).z + r3.z);
  r3.x = fma(r2.x, r2.z, r3.x);
  let v_10 = (r3.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_11 = r2;
  r2 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  r2.w = fma(v3.z, r2.y, -1.0f);
  r2.w = fma(r2.y, r2.w, 1.0f);
  r2.y = (r2.y * v3.z);
  r2.y = (r2.y * cb11_11.tint_symbol_4[2u].x);
  r2.x = (r2.w * r2.x);
  r2.z = fma((-(r2.zzzz)).z, r2.w, 1.0f);
  let v_12 = fma(r2.xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r4.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_13 = ((-(r0.xyzx)).xyz + r3.zzz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r2.yyy, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = max(cb11_11.tint_symbol_4[8u].x, 0.00100000004749745131f);
  r3 = textureSample(t5, s5, v1.zwzz.xy);
  let v_15 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = (r0.ww * r1.xy);
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_17 = (r2.yyy * v6.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r2.xxx, v5.xyz, r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(r0.www, v2.xyz, r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  r2.x = dot(v2.xyz, v2.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_20 = (r2.xxx * v2.xyz);
  r2 = vec4<f32>(v_20.xy, r2.z, v_20.z);
  let v_21 = -(r2.xywx);
  let v_22 = fma(r1.xyz, r0.www, v_21.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = fma(r1.www, r1.xyz, r2.xyw);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_24 = ((-(cb3_3.tint_symbol_1[0u].xyxz)).xyw + vec3<f32>(0.0f, 0.0f, -1.0f));
  r2 = vec4<f32>(v_24.xy, r2.z, v_24.z);
  let v_25 = fma(cb11_11.tint_symbol_4[7u].www, r2.xyw, cb3_3.tint_symbol_1[0u].xyz);
  r2 = vec4<f32>(v_25.xy, r2.z, v_25.z);
  let v_26 = -(r2.xyxw);
  let v_27 = fma(v4.xyz, r0.www, v_26.xyw);
  r2 = vec4<f32>(v_27.xy, r2.z, v_27.z);
  r0.w = dot(r2.xyw, r2.xyw);
  r0.w = inverseSqrt(r0.w);
  let v_28 = (r0.www * r2.xyw);
  r2 = vec4<f32>(v_28.xy, r2.z, v_28.z);
  r0.w = dot(r1.xyz, r2.xyw);
  r0.w = clamp(((r0.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  let v_29 = (v1.xy * cb11_11.tint_symbol_4[5u].ww);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  r3 = textureSample(t6, s6, r2.xyxx.xy);
  r1.w = fma(cb11_11.tint_symbol_4[6u].x, r3.w, 0.00000000999999993923f);
  r0.w = (r0.w * r1.w);
  r0.w = exp2(r0.w);
  let v_30 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_30.xy, r3.zw);
  r1.w = (r3.w * cb11_11.tint_symbol_4[4u].x);
  r5.y = (r1.w * 0.001953125f);
  r1.w = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.x = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r2.x = (r2.x * v3.x);
  r2.x = (r1.w * r2.x);
  r1.w = (r1.w * cb11_11.tint_symbol_4[4u].y);
  r1.w = (r1.w * v3.x);
  r1.w = (r1.w * v2.w);
  let v_31 = (r2.xxx * cb11_11.tint_symbol_4[7u].xyz);
  r2 = vec4<f32>(v_31.xy, r2.z, v_31.z);
  let v_32 = fma(r2.xyw, r0.www, r0.xyz);
  r2 = vec4<f32>(v_32.xy, r2.z, v_32.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  let v_33 = bitcast<vec3<u32>>(r0.www);
  let v_34 = r2.xyw;
  let v_35 = select(r0.xyz, v_34, (v_33 != vec3<u32>()));
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_36.xyz, r0.w);
  r0.w = (r1.z + -0.34999999403953552246f);
  let v_37 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r1 = vec4<f32>(v_37.xyz, r1.w);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r2.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r2.x);
  let v_38 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r2 = vec4<f32>(v_38.xy, r2.zw);
  r0.w = (r0.w * r2.x);
  r5.x = (r2.z * r1.w);
  r1.w = clamp(fma(r1.wwww, r2.zzzz, vec4<f32>(0.40000000596046447754f)).w, 0.0f, 1.0f);
  let v_39 = -(r5.xyxx);
  let v_40 = fma(r1.ww, vec2<f32>(0.5f, 0.48828125f), v_39.xy);
  r3 = vec4<f32>(v_40.xy, r3.zw);
  r1.w = fma((-(r5.xxxx)).w, 0.5f, 1.0f);
  r1.w = (r0.w * r1.w);
  r1.w = fma(r1.w, -0.5f, 1.0f);
  let v_41 = (r0.xyz * r1.www);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_42 = bitcast<vec4<u32>>(r0.xxxx);
  o0 = select(r4, v3, (v_42 != vec4<u32>()));
  let v_43 = (r1.xyz * vec3<f32>(256.0f));
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = floor(r0.xyz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = -(r0.xyzx);
  let v_46 = fma(r1.xyz, vec3<f32>(256.0f), v_45.xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = (r0.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_47.xyz, o1.w);
  let v_48 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = floor(r0.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  r3.z = 0.0f;
  let v_50 = max(r3.xyz, vec3<f32>());
  r0 = vec4<f32>(v_50.xyz, r0.w);
  r5.z = cb11_11.tint_symbol_4[3u].w;
  let v_51 = fma(r0.xyz, r0.www, r5.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = sqrt(r0.xy);
  o2 = vec4<f32>(v_52.xy, o2.zw);
  o2.z = r0.z;
  o2.w = 1.0f;
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r2.y);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_53 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_53.xy, r0.zw);
  let v_54 = sqrt(r0.xy);
  o3 = vec4<f32>(v_54.xy, o3.zw);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3);
}
