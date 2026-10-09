diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = -(r0.xyzx);
  let v_1 = -(cb11_11.tint_symbol_3[1u].xyzx);
  let v_2 = fma(v.xyz, r0.www, v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = dot(r1.xyz, v_1.xyz);
  r2.y = clamp(vec4<f32>(v_5, v_5, v_5, v_5).y, 0.0f, 1.0f);
  r2 = vec4<f32>(r2.xy, ((v1.xy / v1.ww)).xy);
  r3 = textureSample(t8, s8, r2.zwzz.xy);
  let v_6 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = fract(r4.xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = fma((-(r4.yzyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  let v_9 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.xyz + vec3<f32>(-128.0f));
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_11.xy, r3.z, v_11.z);
  r0.w = fma(r3.z, r0.w, cb3_3.tint_symbol_1[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_1[44u].w);
  r0.w = max(r0.w, 0.0f);
  r1.w = dot(r3.xyw, v_1.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.0f)));
  r3.z = select(1.0f, -1.0f, (bitcast<u32>(r1.w) != 0u));
  let v_12 = (r3.zzz * r3.xyw);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = (r3.zzz * r4.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = bitcast<vec3<u32>>(r1.www);
  let v_15 = r5.xyz;
  let v_16 = select(r4.xyz, v_15, (v_14 != vec3<u32>()));
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = (r3.zzz * r4.xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = (r3.zzz * r4.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = dot(r4.xyz, v_1.xyz);
  r3.z = clamp(vec4<f32>(v_19, v_19, v_19, v_19).z, 0.0f, 1.0f);
  let v_20 = dot((-(r0.xyzx)).xyz, r5.xyz);
  r2.x = clamp(vec4<f32>(v_20, v_20, v_20, v_20).x, 0.0f, 1.0f);
  r1.x = dot(r5.xyz, r1.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_21 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = (r1.yz * r1.yz);
  r4 = vec4<f32>(v_23.xy, r4.zw);
  let v_24 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_24.xy, r4.zw);
  let v_25 = (r1.yz * r4.xy);
  let v_26 = r1;
  r1 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r4 = textureSample(t9, s9, r2.zwzz.xy);
  r2.y = ((-(r4.zzzz)).y + 1.0f);
  let v_27 = fma(r4.zz, r1.yz, r2.yy);
  let v_28 = r1;
  r1 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  let v_29 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_29.xy, r4.zw);
  r2.y = fma(r4.y, 512.0f, -500.0f);
  r2.y = max(r2.y, 0.0f);
  let v_30 = -(r2.yyyy);
  r4.y = fma(r4.y, 512.0f, v_30.y);
  r2.y = (r2.y * 558.0f);
  r2.y = fma(r4.y, 3.0f, r2.y);
  r4.x = min(r4.x, 1.0f);
  let v_31 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_32 = r4;
  r4 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  let v_33 = clamp(((r2.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r5 = vec4<f32>(v_33.xy, r5.zw);
  r1.x = (r1.x * r4.z);
  r2.y = (r4.y * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r1.z * r1.x);
  r1.y = fma((-(r4.xxxx)).y, r1.y, 1.0f);
  r1.x = (r2.y * r1.x);
  r1.x = (r4.x * r1.x);
  r1.x = (r3.z * r1.x);
  r1.z = (r1.y * r3.z);
  r6 = textureSample(t7, s7, r2.zwzz.xy);
  let v_34 = (r6.xyz * r6.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = fma((-(r6.xyzx)).xyz, r6.xyz, vec3<f32>(1.0f));
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = fma(r4.xyz, r1.zzz, r1.xxx);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  r8 = textureSample(t10, s10, r2.zwzz.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < r8.w)));
  r1.x = select(0.25f, 0.5f, (bitcast<u32>(r1.x) != 0u));
  let v_37 = fma(r1.xxx, r6.xyz, r4.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  let v_38 = (r6.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  let v_39 = bitcast<vec3<u32>>(r1.www);
  let v_40 = r6.xyz;
  let v_41 = select(cb11_11.tint_symbol_3[3u].xyz, v_40, (v_39 != vec3<u32>()));
  r1 = vec4<f32>(v_41.x, r1.y, v_41.yz);
  let v_42 = (r1.xzw * r7.xyz);
  r1 = vec4<f32>(v_42.x, r1.y, v_42.yz);
  let v_43 = (r2.zw * cb2_2.tint_symbol[18u].xy);
  r5 = vec4<f32>(r5.xy, v_43.xy);
  r6 = textureSample(t4, s4, r2.zwzz.xy);
  let v_44 = (r6.xx * r8.xy);
  let v_45 = r2;
  r2 = vec4<f32>(v_45.x, v_44.xy, v_45.w);
  r2.w = (r8.z * 16.0f);
  r2.x = (r2.x * r2.w);
  let v_46 = (r2.yz * r2.yz);
  let v_47 = r2;
  r2 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
  let v_48 = (r2.yz + r2.yz);
  let v_49 = r2;
  r2 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  let v_50 = (r2.yz * r2.yz);
  let v_51 = r2;
  r2 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  let v_52 = r5.zw;
  let v_53 = max(v_52, vec2<f32>(-2147483648.0f));
  let v_54 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_53), vec2<i32>(2147483647i), (v_53 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_52 == v_52))));
  r6 = vec4<f32>(v_54.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r6 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w)));
  r2.w = bitcast<f32>((bitcast<u32>(r6.y) & 8u));
  r2.w = f32(bitcast<u32>(r2.w));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 8.0f)));
  r3.z = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  let v_55 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.www, cb3_3.tint_symbol_1[46u].xyz);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_56.xyz, r6.w);
  let v_57 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.www, cb3_3.tint_symbol_1[48u].xyz);
  r7 = vec4<f32>(v_57.xyz, r7.w);
  let v_58 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.www, cb3_3.tint_symbol_1[44u].xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = fma(r7.xyz, r2.www, r6.xyz);
  r6 = vec4<f32>(v_59.xyz, r6.w);
  let v_60 = (r2.zzz * r6.xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_1[46u].w;
  r7.y = cb3_3.tint_symbol_1[47u].w;
  r7.z = cb3_3.tint_symbol_1[48u].w;
  let v_61 = dot(r7.xyz, r3.xyw);
  r0.w = clamp(vec4<f32>(v_61, v_61, v_61, v_61).w, 0.0f, 1.0f);
  let v_62 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.www, r8.xyz);
  r7 = vec4<f32>(v_62.xyz, r7.w);
  let v_63 = fma(r7.xyz, r2.yyy, r6.xyz);
  r6 = vec4<f32>(v_63.xyz, r6.w);
  r0.w = max(r2.z, r2.y);
  let v_64 = (r1.yyy * r6.xyz);
  r2 = vec4<f32>(r2.x, v_64.xyz);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_65 = (r4.xyz * r2.yzw);
  r2 = vec4<f32>(r2.x, v_65.xyz);
  let v_66 = fma(r1.xzw, r4.www, r2.yzw);
  r1 = vec4<f32>(v_66.x, r1.y, v_66.yz);
  r2.y = dot(r0.xyz, r3.xyw);
  r2.y = (r2.y + r2.y);
  let v_67 = -(r2.yyyy);
  let v_68 = fma(r3.xyw, v_67.xyz, r0.xyz);
  r0 = vec4<f32>(v_68.xyz, r0.w);
  let v_69 = (r0.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_69.xyz);
  r0.x = (abs(r0.zzzz).x + 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_70 = (r2.yzw / r0.xxx);
  r2 = vec4<f32>(r2.x, v_70.xyz);
  let v_71 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_71.xyz);
  let v_72 = bitcast<vec2<u32>>(r0.yy);
  let v_73 = r2.yz;
  let v_74 = select(r2.wz, v_73, (v_72 != vec2<u32>()));
  r0 = vec4<f32>(v_74.xy, r0.zw);
  r0.z = ((-(r5.xxxx)).z + 1.0f);
  r2.y = fma(r0.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r2.z = (r0.z * cb5_5.tint_symbol_2[6u].z);
  r0.z = (r0.z * r0.z);
  r2.w = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.w)));
  r0.z = fma(r0.z, 5.0f, r2.w);
  let v_75 = bitcast<u32>(r2.z);
  let v_76 = r2.y;
  r0.z = select(r0.z, v_76, (v_75 != 0u));
  let v_77 = r0.z;
  r3 = textureSampleLevel(t1, s1, r0.xyxx.xy, v_77);
  let v_78 = (r0.www * r3.xyz);
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = (r5.yyy * r0.xyz);
  r2 = vec4<f32>(r2.x, v_79.xyz);
  let v_80 = (r2.yzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(r2.x, v_80.xyz);
  let v_81 = fma(r0.xyz, vec3<f32>(0.31830990314483642578f), r2.yzw);
  r0 = vec4<f32>(v_81.xyz, r0.w);
  let v_82 = fma(r0.xyz, r1.yyy, r1.xzw);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = fma(r4.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_83.xyz, r0.w);
  let v_84 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_84.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
