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
  r0 = textureSample(t4, s4, v1.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_2[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  let v_2 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
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
  let v_3 = (v0.xy * vec2<f32>(0.3333333432674407959f));
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  let v_5 = -(r1.yyzy);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz >= v_5.yz)));
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fract(abs(r1.yyzy).yz);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = -(r1.yyzy);
  let v_11 = bitcast<vec2<u32>>(r2.yz);
  let v_12 = select(v_10.yz, r1.yz, (v_11 != vec2<u32>()));
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = (r1.yz * vec2<f32>(3.0f, 9.0f));
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r1.y = (r1.z + r1.y);
  let v_16 = (r0.yzw * vec3<f32>(0.11111111193895339966f));
  r0 = vec4<f32>(r0.x, v_16.xyz);
  let v_17 = (r1.yyy * r0.yzw);
  r1 = vec4<f32>(r1.x, v_17.xyz);
  let v_18 = fma(r1.yzw, vec3<f32>(0.11111111193895339966f), cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_18.xyz);
  let v_19 = fma(r1.xxx, r0.yzw, r1.yzw);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_20 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_21 = (r1.xyz + v_20.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(r2.x, v_22.xyz);
  let v_23 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_23.xyz);
  let v_24 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.yzw);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = (r0.zzz * cb6_6.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  let v_26 = fma(r0.yyy, cb6_6.tint_symbol_1[0u].xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_26.xyz);
  let v_27 = fma(r0.www, cb6_6.tint_symbol_1[2u].xyz, r2.yzw);
  r0 = vec4<f32>(r0.x, v_27.xyz);
  let v_28 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  let v_29 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_29.xyz, r4.w);
  let v_30 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = fma(r1.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = abs(r3.yyyy);
  r1.x = max(v_32.x, abs(r3.xxxx).x);
  let v_33 = abs(r4.yyyy);
  r1.y = max(v_33.y, abs(r4.xxxx).y);
  let v_34 = abs(r5.yyyy);
  r1.z = max(v_34.z, abs(r5.xxxx).z);
  let v_35 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r1.xyz < r1.www)));
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = abs(r6.yyyy);
  r2.y = max(v_36.y, abs(r6.xxxx).y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r1.w)));
  r6.w = 0.875f;
  let v_37 = bitcast<vec4<u32>>(r2.yyyy);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_37 != vec4<u32>()));
  r5.w = 0.625f;
  let v_38 = bitcast<vec4<u32>>(r1.zzzz);
  let v_39 = r5;
  r7 = select(r7, v_39, (v_38 != vec4<u32>()));
  r4.w = 0.375f;
  let v_40 = bitcast<vec4<u32>>(r1.yyyy);
  let v_41 = r4;
  r7 = select(r7, v_41, (v_40 != vec4<u32>()));
  r3.w = 0.125f;
  let v_42 = bitcast<vec4<u32>>(r1.xxxx);
  let v_43 = r3;
  r7 = select(r7, v_43, (v_42 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = (r7.x + 0.5f);
    r1.y = fma(r7.y, 0.25f, r7.w);
    let v_44 = r1.xyxx;
    r1.x = textureSampleCompareLevel(t15, s15, v_44.xy, r7.z);
  } else {
    r1.x = 1.0f;
  }
  let v_45 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_46.xyz, r4.w);
  let v_47 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = abs(r3.yyyy);
  r1.y = max(v_49.y, abs(r3.xxxx).y);
  let v_50 = abs(r4.yyyy);
  r1.z = max(v_50.z, abs(r4.xxxx).z);
  let v_51 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_52 = r1;
  r1 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  let v_53 = abs(r5.yyyy);
  r2.y = max(v_53.y, abs(r5.xxxx).y);
  let v_54 = abs(r6.yyyy);
  r2.z = max(v_54.z, abs(r6.xxxx).z);
  let v_55 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_56 = r2;
  r2 = vec4<f32>(v_56.x, v_55.xy, v_56.w);
  r6.w = 0.875f;
  let v_57 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_57 != vec4<u32>()));
  r5.w = 0.625f;
  let v_58 = bitcast<vec4<u32>>(r2.yyyy);
  let v_59 = r5;
  r7 = select(r7, v_59, (v_58 != vec4<u32>()));
  r4.w = 0.375f;
  let v_60 = bitcast<vec4<u32>>(r1.zzzz);
  let v_61 = r4;
  r7 = select(r7, v_61, (v_60 != vec4<u32>()));
  r3.w = 0.125f;
  let v_62 = bitcast<vec4<u32>>(r1.yyyy);
  let v_63 = r3;
  r7 = select(r7, v_63, (v_62 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_64 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_64.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_65 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_65.xyz, r3.w);
  let v_66 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_66.xyz, r4.w);
  let v_67 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_67.xyz, r5.w);
  let v_68 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_68.xyz, r6.w);
  let v_69 = abs(r3.yyyy);
  r1.y = max(v_69.y, abs(r3.xxxx).y);
  let v_70 = abs(r4.yyyy);
  r1.z = max(v_70.z, abs(r4.xxxx).z);
  let v_71 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_72 = r1;
  r1 = vec4<f32>(v_72.x, v_71.xy, v_72.w);
  let v_73 = abs(r5.yyyy);
  r2.y = max(v_73.y, abs(r5.xxxx).y);
  let v_74 = abs(r6.yyyy);
  r2.z = max(v_74.z, abs(r6.xxxx).z);
  let v_75 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_76 = r2;
  r2 = vec4<f32>(v_76.x, v_75.xy, v_76.w);
  r6.w = 0.875f;
  let v_77 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_77 != vec4<u32>()));
  r5.w = 0.625f;
  let v_78 = bitcast<vec4<u32>>(r2.yyyy);
  let v_79 = r5;
  r7 = select(r7, v_79, (v_78 != vec4<u32>()));
  r4.w = 0.375f;
  let v_80 = bitcast<vec4<u32>>(r1.zzzz);
  let v_81 = r4;
  r7 = select(r7, v_81, (v_80 != vec4<u32>()));
  r3.w = 0.125f;
  let v_82 = bitcast<vec4<u32>>(r1.yyyy);
  let v_83 = r3;
  r7 = select(r7, v_83, (v_82 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_84 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_84.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_85 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_85.xyz, r3.w);
  let v_86 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_86.xyz, r4.w);
  let v_87 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_87.xyz, r5.w);
  let v_88 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_88.xyz, r6.w);
  let v_89 = abs(r3.yyyy);
  r1.y = max(v_89.y, abs(r3.xxxx).y);
  let v_90 = abs(r4.yyyy);
  r1.z = max(v_90.z, abs(r4.xxxx).z);
  let v_91 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_92 = r1;
  r1 = vec4<f32>(v_92.x, v_91.xy, v_92.w);
  let v_93 = abs(r5.yyyy);
  r2.y = max(v_93.y, abs(r5.xxxx).y);
  let v_94 = abs(r6.yyyy);
  r2.z = max(v_94.z, abs(r6.xxxx).z);
  let v_95 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_96 = r2;
  r2 = vec4<f32>(v_96.x, v_95.xy, v_96.w);
  r6.w = 0.875f;
  let v_97 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_97 != vec4<u32>()));
  r5.w = 0.625f;
  let v_98 = bitcast<vec4<u32>>(r2.yyyy);
  let v_99 = r5;
  r7 = select(r7, v_99, (v_98 != vec4<u32>()));
  r4.w = 0.375f;
  let v_100 = bitcast<vec4<u32>>(r1.zzzz);
  let v_101 = r4;
  r7 = select(r7, v_101, (v_100 != vec4<u32>()));
  r3.w = 0.125f;
  let v_102 = bitcast<vec4<u32>>(r1.yyyy);
  let v_103 = r3;
  r7 = select(r7, v_103, (v_102 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_104 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_104.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_105 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_105.xyz, r3.w);
  let v_106 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_106.xyz, r4.w);
  let v_107 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_107.xyz, r5.w);
  let v_108 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_108.xyz, r6.w);
  let v_109 = abs(r3.yyyy);
  r1.y = max(v_109.y, abs(r3.xxxx).y);
  let v_110 = abs(r4.yyyy);
  r1.z = max(v_110.z, abs(r4.xxxx).z);
  let v_111 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_112 = r1;
  r1 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  let v_113 = abs(r5.yyyy);
  r2.y = max(v_113.y, abs(r5.xxxx).y);
  let v_114 = abs(r6.yyyy);
  r2.z = max(v_114.z, abs(r6.xxxx).z);
  let v_115 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_116 = r2;
  r2 = vec4<f32>(v_116.x, v_115.xy, v_116.w);
  r6.w = 0.875f;
  let v_117 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_117 != vec4<u32>()));
  r5.w = 0.625f;
  let v_118 = bitcast<vec4<u32>>(r2.yyyy);
  let v_119 = r5;
  r7 = select(r7, v_119, (v_118 != vec4<u32>()));
  r4.w = 0.375f;
  let v_120 = bitcast<vec4<u32>>(r1.zzzz);
  let v_121 = r4;
  r7 = select(r7, v_121, (v_120 != vec4<u32>()));
  r3.w = 0.125f;
  let v_122 = bitcast<vec4<u32>>(r1.yyyy);
  let v_123 = r3;
  r7 = select(r7, v_123, (v_122 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_124 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_124.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_125 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_125.xyz, r3.w);
  let v_126 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_126.xyz, r4.w);
  let v_127 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  let v_128 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_128.xyz, r6.w);
  let v_129 = abs(r3.yyyy);
  r1.y = max(v_129.y, abs(r3.xxxx).y);
  let v_130 = abs(r4.yyyy);
  r1.z = max(v_130.z, abs(r4.xxxx).z);
  let v_131 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_132 = r1;
  r1 = vec4<f32>(v_132.x, v_131.xy, v_132.w);
  let v_133 = abs(r5.yyyy);
  r2.y = max(v_133.y, abs(r5.xxxx).y);
  let v_134 = abs(r6.yyyy);
  r2.z = max(v_134.z, abs(r6.xxxx).z);
  let v_135 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_136 = r2;
  r2 = vec4<f32>(v_136.x, v_135.xy, v_136.w);
  r6.w = 0.875f;
  let v_137 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_137 != vec4<u32>()));
  r5.w = 0.625f;
  let v_138 = bitcast<vec4<u32>>(r2.yyyy);
  let v_139 = r5;
  r7 = select(r7, v_139, (v_138 != vec4<u32>()));
  r4.w = 0.375f;
  let v_140 = bitcast<vec4<u32>>(r1.zzzz);
  let v_141 = r4;
  r7 = select(r7, v_141, (v_140 != vec4<u32>()));
  r3.w = 0.125f;
  let v_142 = bitcast<vec4<u32>>(r1.yyyy);
  let v_143 = r3;
  r7 = select(r7, v_143, (v_142 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_144 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_144.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_145 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_145.xyz, r3.w);
  let v_146 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_146.xyz, r4.w);
  let v_147 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_147.xyz, r5.w);
  let v_148 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_148.xyz, r6.w);
  let v_149 = abs(r3.yyyy);
  r1.y = max(v_149.y, abs(r3.xxxx).y);
  let v_150 = abs(r4.yyyy);
  r1.z = max(v_150.z, abs(r4.xxxx).z);
  let v_151 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz < r1.ww)));
  let v_152 = r1;
  r1 = vec4<f32>(v_152.x, v_151.xy, v_152.w);
  let v_153 = abs(r5.yyyy);
  r2.y = max(v_153.y, abs(r5.xxxx).y);
  let v_154 = abs(r6.yyyy);
  r2.z = max(v_154.z, abs(r6.xxxx).z);
  let v_155 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.yz < r1.ww)));
  let v_156 = r2;
  r2 = vec4<f32>(v_156.x, v_155.xy, v_156.w);
  r6.w = 0.875f;
  let v_157 = bitcast<vec4<u32>>(r2.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_157 != vec4<u32>()));
  r5.w = 0.625f;
  let v_158 = bitcast<vec4<u32>>(r2.yyyy);
  let v_159 = r5;
  r7 = select(r7, v_159, (v_158 != vec4<u32>()));
  r4.w = 0.375f;
  let v_160 = bitcast<vec4<u32>>(r1.zzzz);
  let v_161 = r4;
  r7 = select(r7, v_161, (v_160 != vec4<u32>()));
  r3.w = 0.125f;
  let v_162 = bitcast<vec4<u32>>(r1.yyyy);
  let v_163 = r3;
  r7 = select(r7, v_163, (v_162 != vec4<u32>()));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r7.w == 5.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r8.x = (r7.x + 0.5f);
    r8.y = fma(r7.y, 0.25f, r7.w);
    let v_164 = r8.xyxx;
    r1.y = textureSampleCompareLevel(t15, s15, v_164.xy, r7.z);
  } else {
    r1.y = 1.0f;
  }
  r1.x = (r1.y + r1.x);
  let v_165 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_165.xyz, r3.w);
  let v_166 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_166.xyz, r4.w);
  let v_167 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_167.xyz, r5.w);
  let v_168 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, r6.xyz);
  r6 = vec4<f32>(v_168.xyz, r6.w);
  let v_169 = abs(r3.yyyy);
  r0.y = max(v_169.y, abs(r3.xxxx).y);
  let v_170 = abs(r4.yyyy);
  r0.z = max(v_170.z, abs(r4.xxxx).z);
  let v_171 = abs(r5.yyyy);
  r0.w = max(v_171.w, abs(r5.xxxx).w);
  let v_172 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r0.yzw < r1.www)));
  r0 = vec4<f32>(r0.x, v_172.xyz);
  let v_173 = abs(r6.yyyy);
  r1.y = max(v_173.y, abs(r6.xxxx).y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.w)));
  r6.w = 0.875f;
  let v_174 = bitcast<vec4<u32>>(r1.yyyy);
  r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r6, (v_174 != vec4<u32>()));
  r5.w = 0.625f;
  let v_175 = bitcast<vec4<u32>>(r0.wwww);
  let v_176 = r5;
  r5 = select(r6, v_176, (v_175 != vec4<u32>()));
  r4.w = 0.375f;
  let v_177 = bitcast<vec4<u32>>(r0.zzzz);
  let v_178 = r4;
  r4 = select(r5, v_178, (v_177 != vec4<u32>()));
  r3.w = 0.125f;
  let v_179 = bitcast<vec4<u32>>(r0.yyyy);
  let v_180 = r3;
  r3 = select(r4, v_180, (v_179 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 5.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r4.x = (r3.x + 0.5f);
    r4.y = fma(r3.y, 0.25f, r3.w);
    let v_181 = r4.xyxx;
    r0.y = textureSampleCompareLevel(t15, s15, v_181.xy, r3.z);
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
fn main(@builtin(position) v_182 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_182, v1, v2);
  return o0;
}
