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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb11_11.tint_symbol_5[17u].w);
  let v_1 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = r1.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 8.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_5 = (r2.xyz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb11_11.tint_symbol_5[17u].z / r0.z);
  r3 = vec4<f32>(((v2.xyz / v2.www)).xyz, r3.w);
  let v_6 = fma(r3.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  let v_7 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_7.xy, r5.zw);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_8 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_8.xyz, r7.w);
  let v_9 = fract(r7.xyz);
  r7 = vec4<f32>(v_9.xyz, r7.w);
  let v_10 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_10.xy, r7.zw);
  let v_11 = fma(r6.xyz, vec3<f32>(256.0f), r7.xyz);
  r6 = vec4<f32>(v_11.xyz, r6.w);
  let v_12 = (r6.xyz + vec3<f32>(-128.0f));
  r6 = vec4<f32>(v_12.xyz, r6.w);
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_13 = (r0.zzz * r6.xyz);
  r6 = vec4<f32>(v_13.xy, r6.z, v_13.z);
  r7 = textureSample(t10, s10, r0.xyxx.xy);
  r8 = textureSample(t4, s4, r0.xyxx.xy);
  let v_14 = (r7.xy * r8.xx);
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = (r0.xy + r0.xy);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  r2.w = (r7.z * 16.0f);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r7.w)));
  r4.w = (r7.w + -0.5f);
  let v_17 = bitcast<u32>(r3.w);
  let v_18 = r4.w;
  r4.w = select(r7.w, v_18, (v_17 != 0u));
  r4.w = clamp(((r4.wwww + r4.wwww)).w, 0.0f, 1.0f);
  r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
  let v_19 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  r7.x = fma(r5.y, 512.0f, -500.0f);
  r7.x = max(r7.x, 0.0f);
  let v_20 = -(r7.xxxx);
  r7.y = fma(r5.y, 512.0f, v_20.y);
  r7.x = (r7.x * 558.0f);
  r5.y = fma(r7.y, 3.0f, r7.x);
  r7.x = dot(r3.xyz, r3.xyz);
  r7.x = inverseSqrt(r7.x);
  let v_21 = (r3.xyz * r7.xxx);
  r7 = vec4<f32>(r7.x, v_21.xyz);
  let v_22 = -(r3.xyzx);
  let v_23 = -(cb11_11.tint_symbol_5[1u].xyzx);
  let v_24 = fma(v_22.xyz, r7.xxx, v_23.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r7.x = dot(r3.xyz, r3.xyz);
  r7.x = inverseSqrt(r7.x);
  let v_25 = (r3.xyz * r7.xxx);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r7.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.w)));
  r8.x = dot(r6.xyw, v_23.xyz);
  r8.x = bitcast<f32>(select(0u, 4294967295u, (r8.x < 0.0f)));
  r8.x = select(1.0f, -1.0f, (bitcast<u32>(r8.x) != 0u));
  let v_26 = (r6.xyw * r8.xxx);
  r8 = vec4<f32>(r8.x, v_26.xyz);
  let v_27 = bitcast<u32>(r7.x);
  r8.x = select(r8.x, 1.0f, (v_27 != 0u));
  r9.x = bitcast<f32>(~(bitcast<u32>(r7.x)));
  r9.y = bitcast<f32>(select(0u, 4294967295u, (r8.x < 0.0f)));
  r9.x = bitcast<f32>((bitcast<u32>(r9.y) & bitcast<u32>(r9.x)));
  r3.w = select(0.25f, 0.5f, (bitcast<u32>(r3.w) != 0u));
  let v_28 = fma((-(r2.xyzx)).xyz, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = fma(r3.www, r2.xyz, r1.yzw);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = (r2.xyz * cb11_11.tint_symbol_5[3u].xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = (r8.yzw * r8.xxx);
  r9 = vec4<f32>(r9.x, v_31.xyz);
  let v_32 = bitcast<vec3<u32>>(r9.xxx);
  let v_33 = r9.yzw;
  let v_34 = select(r8.yzw, v_33, (v_32 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_34.xyz);
  let v_35 = bitcast<vec3<u32>>(r9.xxx);
  let v_36 = r2.xyz;
  let v_37 = select(cb11_11.tint_symbol_5[3u].xyz, v_36, (v_35 != vec3<u32>()));
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = (r5.ww * r5.xy);
  r9 = vec4<f32>(v_38.xy, r9.zw);
  let v_39 = bitcast<vec2<u32>>(r7.xx);
  let v_40 = r9.xy;
  let v_41 = select(r5.xy, v_40, (v_39 != vec2<u32>()));
  r9 = vec4<f32>(v_41.xy, r9.zw);
  let v_42 = (r8.xxx * r8.yzw);
  r8 = vec4<f32>(r8.x, v_42.xyz);
  let v_43 = dot(r8.yzw, v_23.xyz);
  r3.w = clamp(vec4<f32>(v_43, v_43, v_43, v_43).w, 0.0f, 1.0f);
  let v_44 = (r8.xxx * r8.yzw);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = dot((-(r7.yzwy)).xyz, r8.xyz);
  r10.x = clamp(vec4<f32>(v_45, v_45, v_45, v_45).x, 0.0f, 1.0f);
  let v_46 = dot(r3.xyz, v_23.xyz);
  r10.y = clamp(vec4<f32>(v_46, v_46, v_46, v_46).y, 0.0f, 1.0f);
  let v_47 = ((-(r10.xxxy)).zw + vec2<f32>(1.0f));
  r9 = vec4<f32>(r9.xy, v_47.xy);
  let v_48 = (r9.zw * r9.zw);
  let v_49 = r10;
  r10 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  let v_50 = (r10.yz * r10.yz);
  let v_51 = r10;
  r10 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  let v_52 = (r9.zw * r10.yz);
  r9 = vec4<f32>(r9.xy, v_52.xy);
  r5.x = ((-(r5.zzzz)).x + 1.0f);
  let v_53 = fma(r5.zz, r9.zw, r5.xx);
  let v_54 = r5;
  r5 = vec4<f32>(v_53.x, v_54.y, v_53.y, v_54.w);
  let v_55 = (r9.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_56 = r9;
  r9 = vec4<f32>(v_56.x, v_55.xy, v_56.w);
  r8.w = (r9.y * 0.125f);
  r5.x = fma((-(r9.xxxx)).x, r5.x, 1.0f);
  r3.x = dot(r8.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r9.z);
  r3.x = exp2(r3.x);
  r3.x = (r5.z * r3.x);
  r3.x = (r8.w * r3.x);
  r3.x = (r9.x * r3.x);
  r3.x = (r3.w * r3.x);
  r3.y = (r3.w * r5.x);
  let v_57 = fma(r1.yzw, r3.yyy, r3.xxx);
  r3 = vec4<f32>(v_57.xyz, r3.w);
  let v_58 = (r2.xyz * r3.xyz);
  r3 = vec4<f32>(v_58.xyz, r3.w);
  r0.z = fma(r6.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_59 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_60 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r10 = vec4<f32>(r10.x, v_60.xyz);
  let v_61 = (r1.xxx * r10.yzw);
  r10 = vec4<f32>(r10.x, v_61.xyz);
  let v_62 = fma(r9.xyz, r0.www, r10.yzw);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  let v_63 = (r0.yyy * r9.xyz);
  r9 = vec4<f32>(v_63.xyz, r9.w);
  let v_64 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r10 = vec4<f32>(r10.x, v_64.xyz);
  r11.x = cb3_3.tint_symbol_2[46u].w;
  r11.y = cb3_3.tint_symbol_2[47u].w;
  r11.z = cb3_3.tint_symbol_2[48u].w;
  let v_65 = dot(r11.xyz, r6.xyw);
  r0.z = clamp(vec4<f32>(v_65, v_65, v_65, v_65).z, 0.0f, 1.0f);
  let v_66 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.zzz, r10.yzw);
  r10 = vec4<f32>(r10.x, v_66.xyz);
  let v_67 = fma(r10.yzw, r0.xxx, r9.xyz);
  r9 = vec4<f32>(v_67.xyz, r9.w);
  let v_68 = (r5.xxx * r9.xyz);
  r9 = vec4<f32>(v_68.xyz, r9.w);
  let v_69 = (r1.yzw * r9.xyz);
  r9 = vec4<f32>(v_69.xyz, r9.w);
  let v_70 = fma(r3.xyz, r5.www, r9.xyz);
  r3 = vec4<f32>(v_70.xyz, r3.w);
  r0.z = ((-(r5.xxxx)).z + 1.0f);
  r0.w = dot(r7.yzw, r6.xyw);
  r0.w = (r0.w + r0.w);
  let v_71 = -(r0.wwww);
  let v_72 = fma(r6.xyw, v_71.xzw, r7.yzw);
  r5 = vec4<f32>(v_72.x, r5.y, v_72.yz);
  let v_73 = clamp(((r5.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_73.xy, r6.zw);
  r0.w = ((-(r6.xxxx)).w + 1.0f);
  r1.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.w = (r0.w * cb5_5.tint_symbol_3[6u].z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.x)));
  r5.y = fma(r0.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.w = (r0.w * r0.w);
  r0.w = fma(r0.w, 5.0f, r1.x);
  let v_74 = bitcast<u32>(r3.w);
  let v_75 = r5.y;
  r0.w = select(r0.w, v_75, (v_74 != 0u));
  let v_76 = (r5.xzx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_76.xyz, r5.w);
  r1.x = (abs(r5.wwww).x + 1.0f);
  let v_77 = (r5.xyz / r1.xxx);
  r5 = vec4<f32>(v_77.xyz, r5.w);
  let v_78 = ((-(r5.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_78.xyz, r5.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r5.w)));
  let v_79 = bitcast<vec2<u32>>(r1.xx);
  let v_80 = r5.xy;
  let v_81 = select(r5.zy, v_80, (v_79 != vec2<u32>()));
  r5 = vec4<f32>(v_81.xy, r5.zw);
  let v_82 = r0.w;
  r5 = textureSampleLevel(t1, s1, r5.xyxx.xy, v_82);
  r0.x = max(r0.y, r0.x);
  let v_83 = (r0.xxx * r5.xyz);
  r0 = vec4<f32>(v_83.xy, r0.z, v_83.z);
  let v_84 = (r6.yyy * r0.xyw);
  r5 = vec4<f32>(v_84.xyz, r5.w);
  let v_85 = (r5.xyz * vec3<f32>(0.68169009685516357422f));
  r5 = vec4<f32>(v_85.xyz, r5.w);
  let v_86 = fma(r0.xyw, vec3<f32>(0.31830990314483642578f), r5.xyz);
  r0 = vec4<f32>(v_86.xy, r0.z, v_86.z);
  let v_87 = fma(r0.xyw, r0.zzz, r3.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  r0.w = (r2.w * r10.x);
  let v_88 = fma(r1.yzw, r0.www, r0.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = fma((-(cb11_11.tint_symbol_5[9u].xxxx)).xyz, r8.xyz, r4.xyz);
  r3 = vec4<f32>(v_89.xyz, r3.w);
  let v_90 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_91 = (r3.xyz + v_90.xyz);
  r3 = vec4<f32>(v_91.xyz, r3.w);
  let v_92 = (r3.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r4 = vec4<f32>(v_92.xyz, r4.w);
  let v_93 = fma(r3.xxx, cb6_6.tint_symbol_4[0u].xyz, r4.xyz);
  r3 = vec4<f32>(v_93.xy, r3.z, v_93.z);
  let v_94 = fma(r3.zzz, cb6_6.tint_symbol_4[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_94.xyz, r3.w);
  let v_95 = fma(r3.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_95.xyz, r4.w);
  let v_96 = &(x0[0u]);
  let v_97 = r4;
  *(v_96) = vec4<f32>(v_97.xyz, (*(v_96)).w);
  let v_98 = fma(r3.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r5 = vec4<f32>(v_98.xyz, r5.w);
  let v_99 = &(x0[1u]);
  let v_100 = r5;
  *(v_99) = vec4<f32>(v_100.xyz, (*(v_99)).w);
  let v_101 = fma(r3.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r6 = vec4<f32>(v_101.xyz, r6.w);
  let v_102 = &(x0[2u]);
  let v_103 = r6;
  *(v_102) = vec4<f32>(v_103.xyz, (*(v_102)).w);
  let v_104 = fma(r3.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r3 = vec4<f32>(v_104.xyz, r3.w);
  let v_105 = &(x0[3u]);
  let v_106 = r3;
  *(v_105) = vec4<f32>(v_106.xyz, (*(v_105)).w);
  r0.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r0.w = (r0.w * 0.5f);
  let v_107 = abs(r6.yyyy);
  r1.x = max(v_107.x, abs(r6.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_108 = (bitcast<u32>(r1.x) != 0u);
  let v_109 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_109, v_108);
  let v_110 = abs(r5.yyyy);
  r2.w = max(v_110.w, abs(r5.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r0.w)));
  let v_111 = bitcast<u32>(r2.w);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_6[2i].x), (v_111 != 0u));
  let v_112 = abs(r4.yyyy);
  r2.w = max(v_112.w, abs(r4.xxxx).w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r0.w)));
  let v_113 = bitcast<u32>(r0.w);
  r0.w = select(r1.x, 0.0f, (v_113 != 0u));
  let v_114 = x0[bitcast<i32>(r0.w)];
  r3 = vec4<f32>(v_114.xyz, r3.w);
  r0.w = f32(bitcast<i32>(r0.w));
  r1.x = (r0.w + 0.5f);
  r1.x = (r1.x * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r2.w = (r3.x + 0.5f);
  r1.x = fma(r3.y, 0.25f, r1.x);
  r3.x = ((-(r0.wwww)).x + r3.z);
  r4.x = dpdx(r2.w);
  let v_115 = dpdx(r1.xx);
  let v_116 = r3;
  r3 = vec4<f32>(v_116.x, v_115.x, v_116.z, v_115.y);
  r4.z = dpdx(r3.x);
  r6.y = dpdy(r2.w);
  let v_117 = dpdy(r1.xx);
  let v_118 = r6;
  r6 = vec4<f32>(v_117.x, v_118.y, v_117.y, v_118.w);
  r6.w = dpdy(r3.x);
  if ((bitcast<u32>(r7.x) != 0u)) {
    r4.y = (cb11_11.tint_symbol_5[9u].y * cb11_11.tint_symbol_5[9u].y);
    r4.y = (r4.y * r4.w);
    r4.w = dot(r5, cb6_6.tint_symbol_4[13u]);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
    let v_119 = (r3.yw * r6.yw);
    let v_120 = r3;
    r3 = vec4<f32>(v_120.x, v_119.x, v_120.z, v_119.y);
    let v_121 = -(r3.ywyy);
    let v_122 = fma(r4.xz, r6.xz, v_121.xy);
    r5 = vec4<f32>(v_122.xy, r5.zw);
    r3.y = (1.0f / r5.x);
    r3.w = (r4.z * r6.y);
    let v_123 = -(r3.wwww);
    r5.z = fma(r4.x, r6.w, v_123.z);
    let v_124 = (r3.yy * r5.yz);
    let v_125 = r3;
    r3 = vec4<f32>(v_125.x, v_124.x, v_125.z, v_124.y);
    let v_126 = max(r3.yw, vec2<f32>());
    let v_127 = r3;
    r3 = vec4<f32>(v_127.x, v_126.x, v_127.z, v_126.y);
    let v_128 = min(r3.yw, vec2<f32>(0.5f));
    let v_129 = r3;
    r3 = vec4<f32>(v_129.x, v_128.x, v_129.z, v_128.y);
    r3.x = fma((-(r4.wwww)).x, r3.y, r3.x);
    r3.x = fma((-(r4.wwww)).x, r3.w, r3.x);
    let v_130 = bitcast<u32>(r0.w);
    let v_131 = r3.x;
    r0.w = select(r3.z, v_131, (v_130 != 0u));
    r1.x = (r1.x * cb6_6.tint_symbol_4[14u].y);
    r3.x = (r2.w * cb6_6.tint_symbol_4[14u].x);
    r3.y = (r1.x * 4.0f);
    let v_132 = r3.xy;
    let v_133 = max(v_132, vec2<f32>(-2147483648.0f));
    let v_134 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_133), vec2<i32>(2147483647i), (v_133 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_132 == v_132))));
    r3 = vec4<f32>(v_134.xy, r3.zw);
    let v_135 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(-1i, 0i)));
    r5 = vec4<f32>(v_135.xy, r5.zw);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r5 = textureLoad(t15, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
    let v_136 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(1i, 0i)));
    r6 = vec4<f32>(v_136.xy, r6.zw);
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r6 = textureLoad(t15, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
    let v_137 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(0i, -1i)));
    r7 = vec4<f32>(v_137.xy, r7.zw);
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r7 = textureLoad(t15, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
    let v_138 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(0i, 1i)));
    r3 = vec4<f32>(v_138.xy, r3.zw);
    r3 = vec4<f32>(r3.xy, vec2<f32>());
    r3 = textureLoad(t15, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
    r5.y = r6.x;
    r5.z = r7.x;
    r5.w = r3.x;
    r1.x = dot(vec4<f32>(0.25f), r5);
    let v_139 = -(r1.xxxx);
    r0.w = (r0.w + v_139.w);
    r0.w = (abs(r0.wwww).w + cb11_11.tint_symbol_5[10u].x);
    r0.w = (r0.w * r4.y);
    r1.x = dot(r8.xyz, v_23.xyz);
    r1.x = ((-(r1.xxxx)).x + cb11_11.tint_symbol_5[9u].z);
    r1.x = max(r1.x, 0.0f);
    let v_140 = -(r0.wwww);
    r0.w = (r0.w * v_140.w);
    r0.w = (r0.w * 1.44269502162933349609f);
    r0.w = exp2(r0.w);
    let v_141 = fma(r9.xyz, cb11_11.tint_symbol_5[9u].www, r0.www);
    r3 = vec4<f32>(v_141.xyz, r3.w);
    let v_142 = (r1.xxx * r3.xyz);
    r3 = vec4<f32>(v_142.xyz, r3.w);
    let v_143 = (r2.xyz * r3.xyz);
    r2 = vec4<f32>(v_143.xyz, r2.w);
    let v_144 = fma(r2.xyz, r1.yzw, r0.xyz);
    r0 = vec4<f32>(v_144.xyz, r0.w);
  }
  let v_145 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_145.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
