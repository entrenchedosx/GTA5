diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xyxx.xy);
  r0.w = (r0.y + r0.x);
  r0.w = (r0.z + r0.w);
  r0.w = (r0.w * 0.3333333432674407959f);
  r1 = textureSample(t11, s11, v7.xy.xyxx.xy);
  let v = (r0.www * r1.xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  r0.w = (r1.y + r1.x);
  r0.w = (r1.z + r0.w);
  let v_1 = fma((-(r0.wwww)).xyz, vec3<f32>(0.3333333432674407959f), r1.xyz);
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.w = (r0.w * 0.3333333432674407959f);
  let v_2 = fma(cb12_12.tint_symbol_3[2u].yyy, r3.xyz, r0.www);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_3[2u].x))));
  let v_4 = bitcast<vec3<u32>>(r1.www);
  let v_5 = r4.xyz;
  let v_6 = select(r2.xyz, v_5, (v_4 != vec3<u32>()));
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = ((-(r0.xyzx)).xyz + r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(cb12_12.tint_symbol_3[2u].yyy, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  r2.w = (r2.y + r2.x);
  r2.w = (r2.z + r2.w);
  r2.w = (r2.w * 0.3333333432674407959f);
  let v_9 = (r1.xyz * r2.www);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fma(cb12_12.tint_symbol_3[2u].zzz, r3.xyz, r0.www);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = (r2.xyz * r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = bitcast<vec3<u32>>(r1.www);
  let v_13 = r5.xyz;
  let v_14 = select(r4.xyz, v_13, (v_12 != vec3<u32>()));
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = ((-(r2.xyzx)).xyz + r4.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(cb12_12.tint_symbol_3[2u].zzz, r4.xyz, r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r4 = textureSample(t10, s10, v1.zwzz.xy);
  let v_17 = ((-(r4.xyzx)).xyz + v2.xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = fma(v2.www, r5.xyz, r4.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = ((-(r4.xyzx)).xyz + vec3<f32>(1.0f));
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r2.w = (r5.y * r5.x);
  r3.w = (r4.z * r2.w);
  r2.w = (r5.z * r2.w);
  let v_20 = (r2.xyz * r3.www);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(r0.xyz, r2.www, r2.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r6 = textureSample(t6, s6, v1.xyxx.xy);
  r2.x = (r6.y + r6.x);
  r2.x = (r6.z + r2.x);
  r2.x = (r2.x * 0.3333333432674407959f);
  let v_22 = (r1.xyz * r2.xxx);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(cb12_12.tint_symbol_3[2u].www, r3.xyz, r0.www);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = fma(cb12_12.tint_symbol_3[3u].xxx, r3.xyz, r0.www);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  let v_25 = (r6.xyz * r7.xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = bitcast<vec3<u32>>(r1.www);
  let v_27 = r7.xyz;
  let v_28 = select(r2.xyz, v_27, (v_26 != vec3<u32>()));
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = ((-(r6.xyzx)).xyz + r2.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = fma(cb12_12.tint_symbol_3[2u].www, r2.xyz, r6.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  r0.w = (r4.y * r5.x);
  r4.x = (r4.z * r0.w);
  r0.w = (r5.z * r0.w);
  let v_31 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  r5 = textureSample(t8, s8, v1.xyxx.xy);
  r2.x = (r5.y + r5.x);
  r2.x = (r5.z + r2.x);
  r2.x = (r2.x * 0.3333333432674407959f);
  let v_32 = (r1.xyz * r2.xxx);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = (r3.xyz * r5.xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = bitcast<vec3<u32>>(r1.www);
  let v_35 = r2.xyz;
  let v_36 = select(r1.xyz, v_35, (v_34 != vec3<u32>()));
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = ((-(r5.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = fma(cb12_12.tint_symbol_3[3u].xxx, r1.xyz, r5.xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  let v_39 = fma(r1.xyz, r4.xxx, r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_40 = (r3.ww * r1.xy);
  r1 = vec4<f32>(v_40.xy, r1.zw);
  r1.z = (r3.w * cb12_12.tint_symbol_3[1u].y);
  r1.z = fma(cb12_12.tint_symbol_3[1u].x, r2.w, r1.z);
  r1.z = fma(cb12_12.tint_symbol_3[1u].z, r0.w, r1.z);
  r1.z = fma(cb12_12.tint_symbol_3[1u].w, r4.x, r1.z);
  r3 = textureSample(t3, s3, v1.xyxx.xy);
  let v_41 = fma(r3.xy, r2.ww, r1.xy);
  r1 = vec4<f32>(v_41.xy, r1.zw);
  r2 = textureSample(t7, s7, v1.xyxx.xy);
  let v_42 = fma(r2.xy, r0.ww, r1.xy);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  r2 = textureSample(t9, s9, v1.xyxx.xy);
  let v_43 = fma(r2.xy, r4.xx, r1.xy);
  r1 = vec4<f32>(v_43.xy, r1.zw);
  let v_44 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_44.xy, r1.zw);
  r0.w = max(cb12_12.tint_symbol_3[0u].z, 0.00100000004749745131f);
  let v_45 = (r0.ww * r1.xy);
  r2 = vec4<f32>(v_45.xy, r2.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_46 = (r2.yyy * v6.xyz);
  r1 = vec4<f32>(v_46.xy, r1.z, v_46.z);
  let v_47 = fma(r2.xxx, v5.xyz, r1.xyw);
  r1 = vec4<f32>(v_47.xy, r1.z, v_47.z);
  let v_48 = fma(r0.www, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_48.xy, r1.z, v_48.z);
  r0.w = dot(r1.xyw, r1.xyw);
  r0.w = inverseSqrt(r0.w);
  r2.x = fma(r1.w, r0.w, -0.34999999403953552246f);
  let v_49 = (r0.www * r1.xyw);
  r1 = vec4<f32>(v_49.xy, r1.z, v_49.z);
  let v_50 = fma(r1.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_50.xyz, o1.w);
  r0.w = clamp(((r2.xxxx * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * v4.x);
  r1.x = (cb12_12.tint_symbol_3[0u].y * cb12_12.tint_symbol_3[0u].y);
  r1.y = fma((-(r1.xxxx)).y, 0.5f, 1.0f);
  r1.y = (r0.w * r1.y);
  r0.w = (r1.z * r0.w);
  r1.w = ((-(r1.zzzz)).w + 1.0f);
  r1.z = (r1.z + -0.10000000149011611938f);
  r1.z = clamp(((r1.zzzz * vec4<f32>(10.0f))).z, 0.0f, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = fma(r1.y, -0.5f, 1.0f);
  let v_51 = (r0.xyz * r1.yyy);
  o0 = vec4<f32>(v_51.xyz, o0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.27499997615814208984f, 4.29239988327026367188f, 0.4325999915599822998f));
  r0.x = ((-(r0.xxxx)).x + 0.5f);
  o2.w = clamp(((-(r0.xxxx) + v3.wwww)).w, 0.0f, 1.0f);
  o0.w = cb2_2.tint_symbol[15u].x;
  r0.x = dot(v3.xyz, v3.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.x = (r0.x * v3.z);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(128.0f), vec4<f32>(-127.0f)).x, 0.0f, 1.0f);
  o1.w = (r1.z * r0.x);
  r0.x = (-(r1.xxxx)).x;
  r0.z = (cb12_12.tint_symbol_3[0u].x * 0.001953125f);
  r0.y = (-(r0.zzzz)).y;
  let v_52 = (r0.xy + vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_52.xy, r0.zw);
  let v_53 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_53.xy, r0.zw);
  r1.x = fma(r0.x, r0.w, r1.x);
  r1.y = fma(r0.y, r0.w, r0.z);
  let v_54 = sqrt(r1.xy);
  o2 = vec4<f32>(v_54.xy, o2.zw);
  o2.z = 0.98000001907348632812f;
  r0.x = (v4.x + cb3_3.tint_symbol_1[45u].w);
  r0.y = v4.y;
  let v_55 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_55.xy, r0.zw);
  let v_56 = sqrt(r0.xy);
  o3 = vec4<f32>(v_56.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_4 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_4(o0, o1, o2, o3);
}
