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

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb18_struct {
  tint_symbol_5 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v_1 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = r0.zw;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).x;
  r0.w = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).y);
  r0.z = ((-(r0.zzzz)).z + cb11_11.tint_symbol_5[17u].w);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 8u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 8.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_5 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r2 = vec4<f32>(r2.x, v_5.xyz);
  let v_6 = (r2.yzw * r2.yzw);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb11_11.tint_symbol_5[17u].z / r0.z);
  r4 = vec4<f32>(((v2.xyz / v2.www)).xyz, r4.w);
  let v_7 = fma(r4.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_7.xyz, r5.w);
  r6 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_8 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_8.xy, r6.zw);
  r7 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_9 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_9.xyz, r8.w);
  let v_10 = fract(r8.xyz);
  r8 = vec4<f32>(v_10.xyz, r8.w);
  let v_11 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_11.xy, r8.zw);
  let v_12 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_12.xyz, r7.w);
  let v_13 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_13.xyz, r7.w);
  r0.z = dot(r7.xyz, r7.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_14 = (r0.zzz * r7.xyz);
  r7 = vec4<f32>(v_14.xy, r7.z, v_14.z);
  r1 = textureLoad(t10, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  r0.x = textureSample(t4, s4, r0.xyxx.xy).x;
  let v_15 = (r0.xx * r1.xy);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  let v_17 = (r0.xy + r0.xy);
  r0 = vec4<f32>(v_17.xy, r0.zw);
  r1.x = (r1.z * 16.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r1.w)));
  r1.z = (r1.w + -0.5f);
  let v_18 = bitcast<u32>(r1.y);
  let v_19 = r1.z;
  r1.z = select(r1.w, v_19, (v_18 != 0u));
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r8.x = min(r6.x, 1.0f);
  let v_20 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  r1.w = fma(r6.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_21 = -(r1.wwww);
  r3.w = fma(r6.y, 512.0f, v_21.w);
  r1.w = (r1.w * 558.0f);
  r8.y = fma(r3.w, 3.0f, r1.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_22 = (r1.www * r4.xyz);
  r9 = vec4<f32>(v_22.xyz, r9.w);
  let v_23 = -(r4.xyzx);
  let v_24 = -(cb11_11.tint_symbol_5[1u].xyzx);
  let v_25 = fma(v_23.xyz, r1.www, v_24.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_26 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  r3.w = dot(r7.xyw, v_24.xyz);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < 0.0f)));
  r3.w = select(1.0f, -1.0f, (bitcast<u32>(r3.w) != 0u));
  let v_27 = (r3.www * r7.xyw);
  r10 = vec4<f32>(v_27.xyz, r10.w);
  let v_28 = bitcast<u32>(r1.w);
  r3.w = select(r3.w, 1.0f, (v_28 != 0u));
  r4.w = bitcast<f32>(~(bitcast<u32>(r1.w)));
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < 0.0f)));
  r4.w = bitcast<f32>((bitcast<u32>(r4.w) & bitcast<u32>(r5.w)));
  r1.y = select(0.25f, 0.5f, (bitcast<u32>(r1.y) != 0u));
  let v_29 = fma((-(r2.yyzw)).yzw, r2.yzw, vec3<f32>(1.0f));
  r2 = vec4<f32>(r2.x, v_29.xyz);
  let v_30 = fma(r1.yyy, r2.yzw, r3.xyz);
  r2 = vec4<f32>(r2.x, v_30.xyz);
  let v_31 = (r2.yzw * cb11_11.tint_symbol_5[3u].xyz);
  r2 = vec4<f32>(r2.x, v_31.xyz);
  let v_32 = (r10.xyz * r3.www);
  r11 = vec4<f32>(v_32.xyz, r11.w);
  let v_33 = bitcast<vec3<u32>>(r4.www);
  let v_34 = r11.xyz;
  let v_35 = select(r10.xyz, v_34, (v_33 != vec3<u32>()));
  r10 = vec4<f32>(v_35.xyz, r10.w);
  let v_36 = bitcast<vec3<u32>>(r4.www);
  let v_37 = r2.yzw;
  let v_38 = select(cb11_11.tint_symbol_5[3u].xyz, v_37, (v_36 != vec3<u32>()));
  r2 = vec4<f32>(r2.x, v_38.xyz);
  let v_39 = (r6.ww * r8.xy);
  r6 = vec4<f32>(v_39.xy, r6.zw);
  let v_40 = bitcast<vec2<u32>>(r1.ww);
  let v_41 = r6.xy;
  let v_42 = select(r8.xy, v_41, (v_40 != vec2<u32>()));
  r6 = vec4<f32>(v_42.xy, r6.zw);
  let v_43 = (r3.www * r10.xyz);
  r8 = vec4<f32>(v_43.x, r8.y, v_43.yz);
  let v_44 = dot(r8.xzw, v_24.xyz);
  r1.y = clamp(vec4<f32>(v_44, v_44, v_44, v_44).y, 0.0f, 1.0f);
  let v_45 = (r3.www * r8.xzw);
  r8 = vec4<f32>(v_45.x, r8.y, v_45.yz);
  let v_46 = dot((-(r9.xyzx)).xyz, r8.xzw);
  r10.x = clamp(vec4<f32>(v_46, v_46, v_46, v_46).x, 0.0f, 1.0f);
  let v_47 = dot(r4.xyz, v_24.xyz);
  r10.y = clamp(vec4<f32>(v_47, v_47, v_47, v_47).y, 0.0f, 1.0f);
  let v_48 = ((-(r10.xxyx)).yz + vec2<f32>(1.0f));
  let v_49 = r10;
  r10 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  let v_50 = (r10.yz * r10.yz);
  r11 = vec4<f32>(v_50.xy, r11.zw);
  let v_51 = (r11.xy * r11.xy);
  r11 = vec4<f32>(v_51.xy, r11.zw);
  let v_52 = (r10.yz * r11.xy);
  let v_53 = r10;
  r10 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  r3.w = ((-(r6.zzzz)).w + 1.0f);
  let v_54 = fma(r6.zz, r10.yz, r3.ww);
  let v_55 = r10;
  r10 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  let v_56 = (r6.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_57 = r6;
  r6 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  r3.w = (r6.y * 0.125f);
  r4.w = fma((-(r6.xxxx)).w, r10.y, 1.0f);
  r4.x = dot(r8.xzw, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.z);
  r4.x = exp2(r4.x);
  r4.x = (r10.z * r4.x);
  r3.w = (r3.w * r4.x);
  r3.w = (r6.x * r3.w);
  r3.w = (r1.y * r3.w);
  r1.y = (r1.y * r4.w);
  let v_58 = fma(r3.xyz, r1.yyy, r3.www);
  r4 = vec4<f32>(v_58.xyz, r4.w);
  let v_59 = (r2.yzw * r4.xyz);
  r4 = vec4<f32>(v_59.xyz, r4.w);
  r0.z = fma(r7.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_60 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_61 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r10 = vec4<f32>(r10.x, v_61.xyz);
  let v_62 = (r2.xxx * r10.yzw);
  r10 = vec4<f32>(r10.x, v_62.xyz);
  let v_63 = fma(r6.xyz, r0.www, r10.yzw);
  r6 = vec4<f32>(v_63.xyz, r6.w);
  let v_64 = (r0.yyy * r6.xyz);
  r6 = vec4<f32>(v_64.xyz, r6.w);
  let v_65 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r10 = vec4<f32>(r10.x, v_65.xyz);
  r11.x = cb3_3.tint_symbol_2[46u].w;
  r11.y = cb3_3.tint_symbol_2[47u].w;
  r11.z = cb3_3.tint_symbol_2[48u].w;
  let v_66 = dot(r11.xyz, r7.xyw);
  r0.z = clamp(vec4<f32>(v_66, v_66, v_66, v_66).z, 0.0f, 1.0f);
  let v_67 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r10.yzw);
  r10 = vec4<f32>(r10.x, v_67.xyz);
  let v_68 = fma(r10.yzw, r0.xxx, r6.xyz);
  r6 = vec4<f32>(v_68.xyz, r6.w);
  let v_69 = (r4.www * r6.xyz);
  r6 = vec4<f32>(v_69.xyz, r6.w);
  let v_70 = (r3.xyz * r6.xyz);
  r6 = vec4<f32>(v_70.xyz, r6.w);
  let v_71 = fma(r4.xyz, r6.www, r6.xyz);
  r4 = vec4<f32>(v_71.xyz, r4.w);
  r0.z = ((-(r4.wwww)).z + 1.0f);
  r0.w = dot(r9.xyz, r7.xyw);
  r0.w = (r0.w + r0.w);
  let v_72 = -(r0.wwww);
  let v_73 = fma(r7.xyw, v_72.xyz, r9.xyz);
  r7 = vec4<f32>(v_73.xyz, r7.w);
  let v_74 = clamp(((r8.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r9 = vec4<f32>(v_74.xy, r9.zw);
  r0.w = ((-(r9.xxxx)).w + 1.0f);
  r1.y = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.y)));
  r3.w = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.w = (r0.w * r0.w);
  r0.w = fma(r0.w, 5.0f, r1.y);
  let v_75 = bitcast<u32>(r2.x);
  let v_76 = r3.w;
  r0.w = select(r0.w, v_76, (v_75 != 0u));
  let v_77 = (r7.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r7 = vec4<f32>(v_77.xy, r7.z, v_77.z);
  r1.y = (abs(r7.zzzz).y + 1.0f);
  let v_78 = (r7.xyw / r1.yyy);
  r7 = vec4<f32>(v_78.xy, r7.z, v_78.z);
  let v_79 = ((-(r7.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r7 = vec4<f32>(v_79.xy, r7.z, v_79.z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r7.z)));
  let v_80 = bitcast<vec2<u32>>(r1.yy);
  let v_81 = r7.xy;
  let v_82 = select(r7.wy, v_81, (v_80 != vec2<u32>()));
  r7 = vec4<f32>(v_82.xy, r7.zw);
  let v_83 = r0.w;
  let v_84 = textureSampleLevel(t1, s1, r7.xyxx.xy, v_83).xyz;
  r7 = vec4<f32>(v_84.xyz, r7.w);
  r0.x = max(r0.y, r0.x);
  let v_85 = (r0.xxx * r7.xyz);
  r0 = vec4<f32>(v_85.xy, r0.z, v_85.z);
  let v_86 = (r9.yyy * r0.xyw);
  r7 = vec4<f32>(v_86.xyz, r7.w);
  let v_87 = (r7.xyz * vec3<f32>(0.68169009685516357422f));
  r7 = vec4<f32>(v_87.xyz, r7.w);
  let v_88 = fma(r0.xyw, vec3<f32>(0.31830990314483642578f), r7.xyz);
  r0 = vec4<f32>(v_88.xy, r0.z, v_88.z);
  let v_89 = fma(r0.xyw, r0.zzz, r4.xyz);
  r0 = vec4<f32>(v_89.xyz, r0.w);
  r0.w = (r1.x * r10.x);
  let v_90 = fma(r3.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = fma((-(cb11_11.tint_symbol_5[9u].xxxx)).xyz, r8.xzw, r5.xyz);
  r4 = vec4<f32>(v_91.xyz, r4.w);
  let v_92 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_93 = (r4.xyz + v_92.xyz);
  r4 = vec4<f32>(v_93.xyz, r4.w);
  let v_94 = (r4.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r5 = vec4<f32>(v_94.xyz, r5.w);
  let v_95 = fma(r4.xxx, cb6_6.tint_symbol_4[0u].xyz, r5.xyz);
  r4 = vec4<f32>(v_95.xy, r4.z, v_95.z);
  let v_96 = fma(r4.zzz, cb6_6.tint_symbol_4[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_96.xyz, r4.w);
  let v_97 = fma(r4.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_97.xyz, r5.w);
  let v_98 = &(x0[0u]);
  let v_99 = r5;
  *(v_98) = vec4<f32>(v_99.xyz, (*(v_98)).w);
  let v_100 = fma(r4.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r7 = vec4<f32>(v_100.xyz, r7.w);
  let v_101 = &(x0[1u]);
  let v_102 = r7;
  *(v_101) = vec4<f32>(v_102.xyz, (*(v_101)).w);
  let v_103 = fma(r4.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r9 = vec4<f32>(v_103.xyz, r9.w);
  let v_104 = &(x0[2u]);
  let v_105 = r9;
  *(v_104) = vec4<f32>(v_105.xyz, (*(v_104)).w);
  let v_106 = fma(r4.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r4 = vec4<f32>(v_106.xyz, r4.w);
  let v_107 = &(x0[3u]);
  let v_108 = r4;
  *(v_107) = vec4<f32>(v_108.xyz, (*(v_107)).w);
  r0.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r0.w = (r0.w * 0.5f);
  let v_109 = abs(r9.yyyy);
  r1.x = max(v_109.x, abs(r9.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_110 = (bitcast<u32>(r1.x) != 0u);
  let v_111 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_111, v_110);
  let v_112 = abs(r7.yyyy);
  r1.y = max(v_112.y, abs(r7.xxxx).y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.w)));
  let v_113 = bitcast<u32>(r1.y);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_6[2i].x), (v_113 != 0u));
  let v_114 = abs(r5.yyyy);
  r1.y = max(v_114.y, abs(r5.xxxx).y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.w)));
  let v_115 = bitcast<u32>(r0.w);
  r0.w = select(r1.x, 0.0f, (v_115 != 0u));
  let v_116 = x0[bitcast<i32>(r0.w)];
  r4 = vec4<f32>(v_116.xyz, r4.w);
  r0.w = f32(bitcast<i32>(r0.w));
  r1.x = (r0.w + 0.5f);
  r1.x = (r1.x * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r1.y = (r4.x + 0.5f);
  r1.x = fma(r4.y, 0.25f, r1.x);
  r2.x = ((-(r0.wwww)).x + r4.z);
  r7.x = dpdx(r1.y);
  let v_117 = dpdx(r1.xx);
  r4 = vec4<f32>(v_117.xy, r4.zw);
  r7.z = dpdx(r2.x);
  let v_118 = dpdy(r1.xyx);
  r9 = vec4<f32>(v_118.xyz, r9.w);
  r9.w = dpdy(r2.x);
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = (cb11_11.tint_symbol_5[9u].y * cb11_11.tint_symbol_5[9u].y);
    r1.z = (r1.w * r1.z);
    r1.w = dot(r5, cb6_6.tint_symbol_4[13u]);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
    let v_119 = (r4.xy * r9.yw);
    r4 = vec4<f32>(v_119.xy, r4.zw);
    let v_120 = -(r4.xyxx);
    let v_121 = fma(r7.xz, r9.xz, v_120.xy);
    r5 = vec4<f32>(v_121.xy, r5.zw);
    r3.w = (1.0f / r5.x);
    r4.x = (r7.z * r9.y);
    let v_122 = -(r4.xxxx);
    r5.z = fma(r7.x, r9.w, v_122.z);
    let v_123 = (r3.ww * r5.yz);
    r4 = vec4<f32>(v_123.xy, r4.zw);
    let v_124 = max(r4.xy, vec2<f32>());
    r4 = vec4<f32>(v_124.xy, r4.zw);
    let v_125 = min(r4.xy, vec2<f32>(0.5f));
    r4 = vec4<f32>(v_125.xy, r4.zw);
    r2.x = fma((-(r1.wwww)).x, r4.x, r2.x);
    r1.w = fma((-(r1.wwww)).w, r4.y, r2.x);
    let v_126 = bitcast<u32>(r0.w);
    let v_127 = r1.w;
    r0.w = select(r4.z, v_127, (v_126 != 0u));
    r1.x = (r1.x * cb6_6.tint_symbol_4[14u].y);
    r4.x = (r1.y * cb6_6.tint_symbol_4[14u].x);
    r4.y = (r1.x * 4.0f);
    let v_128 = r4.xy;
    let v_129 = max(v_128, vec2<f32>(-2147483648.0f));
    let v_130 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_129), vec2<i32>(2147483647i), (v_129 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_128 == v_128))));
    r1 = vec4<f32>(v_130.xy, r1.zw);
    let v_131 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(-1i, 0i)));
    r4 = vec4<f32>(v_131.xy, r4.zw);
    r4 = vec4<f32>(r4.xy, vec2<f32>());
    r4.x = textureLoad(t15, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)).x;
    let v_132 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(1i, 0i)));
    r5 = vec4<f32>(v_132.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r4.y = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)).x;
    let v_133 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(0i, -1i)));
    r5 = vec4<f32>(v_133.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r4.z = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)).x;
    let v_134 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.xy) + vec2<i32>(0i, 1i)));
    r5 = vec4<f32>(v_134.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r4.w = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)).x;
    r1.x = dot(vec4<f32>(0.25f), r4);
    let v_135 = -(r1.xxxx);
    r0.w = (r0.w + v_135.w);
    r0.w = (abs(r0.wwww).w + cb11_11.tint_symbol_5[10u].x);
    r0.w = (r0.w * r1.z);
    r1.x = dot(r8.xzw, v_24.xyz);
    r1.x = ((-(r1.xxxx)).x + cb11_11.tint_symbol_5[9u].z);
    r1.x = max(r1.x, 0.0f);
    let v_136 = -(r0.wwww);
    r0.w = (r0.w * v_136.w);
    r0.w = (r0.w * 1.44269502162933349609f);
    r0.w = exp2(r0.w);
    let v_137 = fma(r6.xyz, cb11_11.tint_symbol_5[9u].www, r0.www);
    r1 = vec4<f32>(r1.x, v_137.xyz);
    let v_138 = (r1.yzw * r1.xxx);
    r1 = vec4<f32>(v_138.xyz, r1.w);
    let v_139 = (r2.yzw * r1.xyz);
    r1 = vec4<f32>(v_139.xyz, r1.w);
    let v_140 = fma(r1.xyz, r3.xyz, r0.xyz);
    r0 = vec4<f32>(v_140.xyz, r0.w);
  }
  let v_141 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_141.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
