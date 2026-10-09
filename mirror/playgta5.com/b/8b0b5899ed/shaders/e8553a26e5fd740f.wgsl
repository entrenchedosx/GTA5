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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb46_struct {
  tint_symbol_2 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb46_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureGather(0i, t4, s4, v1.xy);
  r0 = (-(r0) + vec4<f32>(1.0f));
  let v_2 = max(r0.zw, r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  r0.x = (r0.x + cb5_5.tint_symbol_2[0u].w);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  let v_3 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = sqrt(r1.x);
  r1.y = dot(v1.xy, vec2<f32>(25.9796009063720703125f, 156.46600341796875f));
  r1.y = sin(r1.yyyy.y);
  r1.y = (r1.y * 43758.546875f);
  r1.y = fract(r1.y);
  r1.y = fma(r1.y, 2.0f, -1.0f);
  r1.y = (r1.y * 0.5f);
  r2.x = (r1.x * cb5_5.tint_symbol_2[45u].y);
  r1.x = clamp(fma(r1.xxxx, cb5_5.tint_symbol_2[45u].zzzz, cb5_5.tint_symbol_2[45u].wwww).x, 0.0f, 1.0f);
  r1.x = (r1.y * r1.x);
  let v_4 = (v0.xy * vec2<f32>(0.3333333432674407959f));
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = -(r1.yyzy);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz >= v_6.yz)));
  let v_8 = r2;
  r2 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = fract(abs(r1.yyzy).yz);
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = -(r1.yyzy);
  let v_12 = bitcast<vec2<u32>>(r2.yz);
  let v_13 = select(v_11.yz, r1.yz, (v_12 != vec2<u32>()));
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = (r1.yz * vec2<f32>(3.0f, 9.0f));
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r1.y = (r1.z + r1.y);
  let v_17 = (r0.yzw * vec3<f32>(0.11111111193895339966f));
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = (r1.yyy * r0.yzw);
  r1 = vec4<f32>(r1.x, v_18.xyz);
  let v_19 = fma(r1.yzw, vec3<f32>(0.11111111193895339966f), cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_19.xyz);
  let v_20 = fma(r1.xxx, r0.yzw, r1.yzw);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_21 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_22 = (r1.xyz + v_21.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(r2.x, v_23.xyz);
  let v_24 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_24.xyz);
  let v_25 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.yzw);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  let v_26 = (r0.zzz * cb6_6.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(r2.x, v_26.xyz);
  let v_27 = fma(r0.yyy, cb6_6.tint_symbol_1[0u].xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_27.xyz);
  let v_28 = fma(r0.www, cb6_6.tint_symbol_1[2u].xyz, r2.yzw);
  r0 = vec4<f32>(r0.x, v_28.xyz);
  let v_29 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  let v_30 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  let v_31 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = fma(r1.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = abs(r3.yyyy);
  r1.x = max(v_33.x, abs(r3.xxxx).x);
  let v_34 = abs(r4.yyyy);
  r1.y = max(v_34.y, abs(r4.xxxx).y);
  let v_35 = abs(r5.yyyy);
  r1.z = max(v_35.z, abs(r5.xxxx).z);
  let v_36 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r1.xyz < r1.www)));
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = abs(r6.yyyy);
  r2.y = max(v_37.y, abs(r6.xxxx).y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r1.w)));
  r6.w = 0.875f;
  let v_38 = bitcast<vec4<u32>>(r2.yyyy);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_38 != vec4<u32>()));
  r5.w = 0.625f;
  let v_39 = bitcast<vec4<u32>>(r1.zzzz);
  let v_40 = r5;
  r7 = select(r7, v_40, (v_39 != vec4<u32>()));
  r4.w = 0.375f;
  let v_41 = bitcast<vec4<u32>>(r1.yyyy);
  let v_42 = r4;
  r7 = select(r7, v_42, (v_41 != vec4<u32>()));
  r3.w = 0.125f;
  let v_43 = bitcast<vec4<u32>>(r1.xxxx);
  let v_44 = r3;
  r7 = select(r7, v_44, (v_43 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = (r7.x + 0.5f);
    r1.y = fma(r7.y, 0.25f, r7.w);
    let v_45 = r1.xyxx;
    r1.x = textureSampleCompareLevel(t15, s15, v_45.xy, r7.z);
  } else {
    r1.x = 1.0f;
  }
  let v_46 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_47.xyz, r4.w);
  let v_48 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_48.xyz, r5.w);
  let v_49 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  let v_50 = abs(r3.yyyy);
  r1.y = max(v_50.y, abs(r3.xxxx).y);
  let v_51 = abs(r4.yyyy);
  r1.z = max(v_51.z, abs(r4.xxxx).z);
  let v_52 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_53 = r1;
  r1 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  let v_54 = abs(r5.yyyy);
  r2.y = max(v_54.y, abs(r5.xxxx).y);
  let v_55 = abs(r6.yyyy);
  r2.z = max(v_55.z, abs(r6.xxxx).z);
  let v_56 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_57 = r2;
  r2 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  r6.w = 0.875f;
  let v_58 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_58 != vec4<u32>()));
  r5.w = 0.625f;
  let v_59 = bitcast<vec4<u32>>(r2.yyyy);
  let v_60 = r5;
  r7 = select(r7, v_60, (v_59 != vec4<u32>()));
  r4.w = 0.375f;
  let v_61 = bitcast<vec4<u32>>(r1.zzzz);
  let v_62 = r4;
  r7 = select(r7, v_62, (v_61 != vec4<u32>()));
  r3.w = 0.125f;
  let v_63 = bitcast<vec4<u32>>(r1.yyyy);
  let v_64 = r3;
  r7 = select(r7, v_64, (v_63 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_65 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_65.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_66 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_66.xyz, r3.w);
  let v_67 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_67.xyz, r4.w);
  let v_68 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_68.xyz, r5.w);
  let v_69 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_69.xyz, r6.w);
  let v_70 = abs(r3.yyyy);
  r1.y = max(v_70.y, abs(r3.xxxx).y);
  let v_71 = abs(r4.yyyy);
  r1.z = max(v_71.z, abs(r4.xxxx).z);
  let v_72 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_73 = r1;
  r1 = vec4<f32>(v_73.x, v_72.xy, v_73.w);
  let v_74 = abs(r5.yyyy);
  r2.y = max(v_74.y, abs(r5.xxxx).y);
  let v_75 = abs(r6.yyyy);
  r2.z = max(v_75.z, abs(r6.xxxx).z);
  let v_76 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_77 = r2;
  r2 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
  r6.w = 0.875f;
  let v_78 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_78 != vec4<u32>()));
  r5.w = 0.625f;
  let v_79 = bitcast<vec4<u32>>(r2.yyyy);
  let v_80 = r5;
  r7 = select(r7, v_80, (v_79 != vec4<u32>()));
  r4.w = 0.375f;
  let v_81 = bitcast<vec4<u32>>(r1.zzzz);
  let v_82 = r4;
  r7 = select(r7, v_82, (v_81 != vec4<u32>()));
  r3.w = 0.125f;
  let v_83 = bitcast<vec4<u32>>(r1.yyyy);
  let v_84 = r3;
  r7 = select(r7, v_84, (v_83 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_85 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_85.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_86 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_86.xyz, r3.w);
  let v_87 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_87.xyz, r4.w);
  let v_88 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_88.xyz, r5.w);
  let v_89 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_89.xyz, r6.w);
  let v_90 = abs(r3.yyyy);
  r1.y = max(v_90.y, abs(r3.xxxx).y);
  let v_91 = abs(r4.yyyy);
  r1.z = max(v_91.z, abs(r4.xxxx).z);
  let v_92 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_93 = r1;
  r1 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
  let v_94 = abs(r5.yyyy);
  r2.y = max(v_94.y, abs(r5.xxxx).y);
  let v_95 = abs(r6.yyyy);
  r2.z = max(v_95.z, abs(r6.xxxx).z);
  let v_96 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_97 = r2;
  r2 = vec4<f32>(v_97.x, v_96.xy, v_97.w);
  r6.w = 0.875f;
  let v_98 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_98 != vec4<u32>()));
  r5.w = 0.625f;
  let v_99 = bitcast<vec4<u32>>(r2.yyyy);
  let v_100 = r5;
  r7 = select(r7, v_100, (v_99 != vec4<u32>()));
  r4.w = 0.375f;
  let v_101 = bitcast<vec4<u32>>(r1.zzzz);
  let v_102 = r4;
  r7 = select(r7, v_102, (v_101 != vec4<u32>()));
  r3.w = 0.125f;
  let v_103 = bitcast<vec4<u32>>(r1.yyyy);
  let v_104 = r3;
  r7 = select(r7, v_104, (v_103 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_105 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_105.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_106 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_106.xyz, r3.w);
  let v_107 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_107.xyz, r4.w);
  let v_108 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_108.xyz, r5.w);
  let v_109 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_109.xyz, r6.w);
  let v_110 = abs(r3.yyyy);
  r1.y = max(v_110.y, abs(r3.xxxx).y);
  let v_111 = abs(r4.yyyy);
  r1.z = max(v_111.z, abs(r4.xxxx).z);
  let v_112 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_113 = r1;
  r1 = vec4<f32>(v_113.x, v_112.xy, v_113.w);
  let v_114 = abs(r5.yyyy);
  r2.y = max(v_114.y, abs(r5.xxxx).y);
  let v_115 = abs(r6.yyyy);
  r2.z = max(v_115.z, abs(r6.xxxx).z);
  let v_116 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_117 = r2;
  r2 = vec4<f32>(v_117.x, v_116.xy, v_117.w);
  r6.w = 0.875f;
  let v_118 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_118 != vec4<u32>()));
  r5.w = 0.625f;
  let v_119 = bitcast<vec4<u32>>(r2.yyyy);
  let v_120 = r5;
  r7 = select(r7, v_120, (v_119 != vec4<u32>()));
  r4.w = 0.375f;
  let v_121 = bitcast<vec4<u32>>(r1.zzzz);
  let v_122 = r4;
  r7 = select(r7, v_122, (v_121 != vec4<u32>()));
  r3.w = 0.125f;
  let v_123 = bitcast<vec4<u32>>(r1.yyyy);
  let v_124 = r3;
  r7 = select(r7, v_124, (v_123 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_125 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_125.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_126 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_126.xyz, r3.w);
  let v_127 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_127.xyz, r4.w);
  let v_128 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_128.xyz, r5.w);
  let v_129 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_129.xyz, r6.w);
  let v_130 = abs(r3.yyyy);
  r1.y = max(v_130.y, abs(r3.xxxx).y);
  let v_131 = abs(r4.yyyy);
  r1.z = max(v_131.z, abs(r4.xxxx).z);
  let v_132 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_133 = r1;
  r1 = vec4<f32>(v_133.x, v_132.xy, v_133.w);
  let v_134 = abs(r5.yyyy);
  r2.y = max(v_134.y, abs(r5.xxxx).y);
  let v_135 = abs(r6.yyyy);
  r2.z = max(v_135.z, abs(r6.xxxx).z);
  let v_136 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_137 = r2;
  r2 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
  r6.w = 0.875f;
  let v_138 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_138 != vec4<u32>()));
  r5.w = 0.625f;
  let v_139 = bitcast<vec4<u32>>(r2.yyyy);
  let v_140 = r5;
  r7 = select(r7, v_140, (v_139 != vec4<u32>()));
  r4.w = 0.375f;
  let v_141 = bitcast<vec4<u32>>(r1.zzzz);
  let v_142 = r4;
  r7 = select(r7, v_142, (v_141 != vec4<u32>()));
  r3.w = 0.125f;
  let v_143 = bitcast<vec4<u32>>(r1.yyyy);
  let v_144 = r3;
  r7 = select(r7, v_144, (v_143 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_145 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_145.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_146 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_146.xyz, r3.w);
  let v_147 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_147.xyz, r4.w);
  let v_148 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_148.xyz, r5.w);
  let v_149 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_149.xyz, r6.w);
  let v_150 = abs(r3.yyyy);
  r1.y = max(v_150.y, abs(r3.xxxx).y);
  let v_151 = abs(r4.yyyy);
  r1.z = max(v_151.z, abs(r4.xxxx).z);
  let v_152 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_153 = r1;
  r1 = vec4<f32>(v_153.x, v_152.xy, v_153.w);
  let v_154 = abs(r5.yyyy);
  r2.y = max(v_154.y, abs(r5.xxxx).y);
  let v_155 = abs(r6.yyyy);
  r2.z = max(v_155.z, abs(r6.xxxx).z);
  let v_156 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_157 = r2;
  r2 = vec4<f32>(v_157.x, v_156.xy, v_157.w);
  r6.w = 0.875f;
  let v_158 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_158 != vec4<u32>()));
  r5.w = 0.625f;
  let v_159 = bitcast<vec4<u32>>(r2.yyyy);
  let v_160 = r5;
  r7 = select(r7, v_160, (v_159 != vec4<u32>()));
  r4.w = 0.375f;
  let v_161 = bitcast<vec4<u32>>(r1.zzzz);
  let v_162 = r4;
  r7 = select(r7, v_162, (v_161 != vec4<u32>()));
  r3.w = 0.125f;
  let v_163 = bitcast<vec4<u32>>(r1.yyyy);
  let v_164 = r3;
  r7 = select(r7, v_164, (v_163 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_165 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_165.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_166 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_166.xyz, r3.w);
  let v_167 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_167.xyz, r4.w);
  let v_168 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_168.xyz, r5.w);
  let v_169 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_169.xyz, r6.w);
  let v_170 = abs(r3.yyyy);
  r0.y = max(v_170.y, abs(r3.xxxx).y);
  let v_171 = abs(r4.yyyy);
  r0.z = max(v_171.z, abs(r4.xxxx).z);
  let v_172 = abs(r5.yyyy);
  r0.w = max(v_172.w, abs(r5.xxxx).w);
  let v_173 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r0.yzw < r1.www)));
  r0 = vec4<f32>(r0.x, v_173.xyz);
  let v_174 = abs(r6.yyyy);
  r1.y = max(v_174.y, abs(r6.xxxx).y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.w)));
  r6.w = 0.875f;
  let v_175 = bitcast<vec4<u32>>(r1.yyyy);
  r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_175 != vec4<u32>()));
  r5.w = 0.625f;
  let v_176 = bitcast<vec4<u32>>(r0.wwww);
  let v_177 = r5;
  r5 = select(r6, v_177, (v_176 != vec4<u32>()));
  r4.w = 0.375f;
  let v_178 = bitcast<vec4<u32>>(r0.zzzz);
  let v_179 = r4;
  r4 = select(r5, v_179, (v_178 != vec4<u32>()));
  r3.w = 0.125f;
  let v_180 = bitcast<vec4<u32>>(r0.yyyy);
  let v_181 = r3;
  r3 = select(r4, v_181, (v_180 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 5.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r4.x = (r3.x + 0.5f);
    r4.y = fma(r3.y, 0.25f, r3.w);
    let v_182 = r4.xyxx;
    r0.y = textureSampleCompareLevel(t15, s15, v_182.xy, r3.z);
  } else {
    r0.y = 1.0f;
  }
  r0.y = (r0.y + r1.x);
  r0.y = (r0.y * 0.125f);
  r2.x = clamp(r2.xxxx.x, 0.0f, 1.0f);
  r0.z = ((-(r2.xxxx)).z + 1.0f);
  o0.x = fma(r0.z, r0.y, r2.x);
  o0 = vec4<f32>(o0.xy, vec2<f32>());
  o0.y = r0.x;
}

@fragment
fn main(@builtin(position) v_183 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_183, v1, v2);
  return o0;
}
