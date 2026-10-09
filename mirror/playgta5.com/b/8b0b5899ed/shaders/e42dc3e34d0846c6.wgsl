diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb40_struct {
  tint_symbol_1 : array<vec4<f32>, 40u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb40_struct;

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
  r0.x = textureSample(t4, s4, v1.xyxx.xy).x;
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_1[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_2 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  let v_3 = (r0.ww * vec2<f32>(0.10000000149011611938f, 0.20000000298023223877f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = min(r1.xy, vec2<f32>(1.0f, 85.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = fma(r1.x, -2.0f, 3.0f);
  r1.x = (r1.x * r1.x);
  r1.x = (r1.x * r1.z);
  let v_5 = (v0.xy * vec2<f32>(0.3333333432674407959f));
  r1 = vec4<f32>(r1.xy, v_5.xy);
  let v_6 = -(r1.zwzz);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.zw >= v_6.xy)));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = fract(abs(r1.zzzw).zw);
  r1 = vec4<f32>(r1.xy, v_8.xy);
  let v_9 = -(r1.zzzw);
  let v_10 = bitcast<vec2<u32>>(r2.xy);
  let v_11 = select(v_9.zw, r1.zw, (v_10 != vec2<u32>()));
  r1 = vec4<f32>(r1.xy, v_11.xy);
  let v_12 = (r1.yzw * vec3<f32>(-1.44269502162933349609f, 3.0f, 9.0f));
  r1 = vec4<f32>(r1.x, v_12.xyz);
  r1.z = (r1.w + r1.z);
  let v_13 = (r0.xyz * vec3<f32>(0.11111111193895339966f));
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (r1.zzz * r0.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = (r2.xyz * vec3<f32>(0.11111111193895339966f));
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r1.z = fma((-(cb6_6.tint_symbol[14u].zzzz)).z, 1.5f, 1.0f);
  r1.z = (r1.z * 0.5f);
  let v_16 = (r2.yyy * cb6_6.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r2.xxx, cb6_6.tint_symbol[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_17.xy, r2.z, v_17.z);
  let v_18 = fma(r2.zzz, cb6_6.tint_symbol[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = (r0.yyy * cb6_6.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(r0.xxx, cb6_6.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = fma(r0.zzz, cb6_6.tint_symbol[2u].xyz, r3.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = fma(r2.xyz, cb6_6.tint_symbol[4u].xyz, cb6_6.tint_symbol[8u].xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = fma(r2.xyz, cb6_6.tint_symbol[5u].xyz, cb6_6.tint_symbol[9u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r2.xyz, cb6_6.tint_symbol[6u].xyz, cb6_6.tint_symbol[10u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = fma(r2.xyz, cb6_6.tint_symbol[7u].xyz, cb6_6.tint_symbol[11u].xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = abs(r3.yyyy);
  r1.w = max(v_26.w, abs(r3.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_27 = abs(r4.yyyy);
  r6.x = max(v_27.x, abs(r4.xxxx).x);
  let v_28 = abs(r5.yyyy);
  r6.y = max(v_28.y, abs(r5.xxxx).y);
  let v_29 = abs(r2.yyyy);
  r6.z = max(v_29.z, abs(r2.xxxx).z);
  let v_30 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r6.xyz < r1.zzz)));
  r6 = vec4<f32>(v_30.xyz, r6.w);
  r2.w = 0.875f;
  let v_31 = bitcast<vec4<u32>>(r6.zzzz);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_31 != vec4<u32>()));
  r5.w = 0.625f;
  let v_32 = bitcast<vec4<u32>>(r6.yyyy);
  let v_33 = r5;
  r7 = select(r7, v_33, (v_32 != vec4<u32>()));
  r4.w = 0.375f;
  let v_34 = bitcast<vec4<u32>>(r6.xxxx);
  let v_35 = r4;
  r6 = select(r7, v_35, (v_34 != vec4<u32>()));
  r3.w = 0.125f;
  let v_36 = bitcast<vec4<u32>>(r1.wwww);
  let v_37 = r3;
  r6 = select(r6, v_37, (v_36 != vec4<u32>()));
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_38 = r7.xyxx;
    r1.w = textureSampleCompareLevel(t15, s15, v_38.xy, r6.z);
  } else {
    r1.w = 1.0f;
  }
  let v_39 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_40.xyz, r4.w);
  let v_41 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_41.xyz, r5.w);
  let v_42 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = abs(r3.yyyy);
  r6.x = max(v_43.x, abs(r3.xxxx).x);
  let v_44 = abs(r4.yyyy);
  r6.y = max(v_44.y, abs(r4.xxxx).y);
  let v_45 = abs(r5.yyyy);
  r6.z = max(v_45.z, abs(r5.xxxx).z);
  let v_46 = abs(r2.yyyy);
  r6.w = max(v_46.w, abs(r2.xxxx).w);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r6 < r1.zzzz)));
  r2.w = 0.875f;
  let v_47 = bitcast<vec4<u32>>(r6.wwww);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_47 != vec4<u32>()));
  r5.w = 0.625f;
  let v_48 = bitcast<vec4<u32>>(r6.zzzz);
  let v_49 = r5;
  r7 = select(r7, v_49, (v_48 != vec4<u32>()));
  r4.w = 0.375f;
  let v_50 = bitcast<vec4<u32>>(r6.yyyy);
  let v_51 = r4;
  r7 = select(r7, v_51, (v_50 != vec4<u32>()));
  r3.w = 0.125f;
  let v_52 = bitcast<vec4<u32>>(r6.xxxx);
  let v_53 = r3;
  r6 = select(r7, v_53, (v_52 != vec4<u32>()));
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_54 = r7.xyxx;
    r2.w = textureSampleCompareLevel(t15, s15, v_54.xy, r6.z);
  } else {
    r2.w = 1.0f;
  }
  r1.w = (r1.w + r2.w);
  let v_55 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_56.xyz, r4.w);
  let v_57 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = abs(r3.yyyy);
  r6.x = max(v_59.x, abs(r3.xxxx).x);
  let v_60 = abs(r4.yyyy);
  r6.y = max(v_60.y, abs(r4.xxxx).y);
  let v_61 = abs(r5.yyyy);
  r6.z = max(v_61.z, abs(r5.xxxx).z);
  let v_62 = abs(r2.yyyy);
  r6.w = max(v_62.w, abs(r2.xxxx).w);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r6 < r1.zzzz)));
  r2.w = 0.875f;
  let v_63 = bitcast<vec4<u32>>(r6.wwww);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_63 != vec4<u32>()));
  r5.w = 0.625f;
  let v_64 = bitcast<vec4<u32>>(r6.zzzz);
  let v_65 = r5;
  r7 = select(r7, v_65, (v_64 != vec4<u32>()));
  r4.w = 0.375f;
  let v_66 = bitcast<vec4<u32>>(r6.yyyy);
  let v_67 = r4;
  r7 = select(r7, v_67, (v_66 != vec4<u32>()));
  r3.w = 0.125f;
  let v_68 = bitcast<vec4<u32>>(r6.xxxx);
  let v_69 = r3;
  r6 = select(r7, v_69, (v_68 != vec4<u32>()));
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_70 = r7.xyxx;
    r2.w = textureSampleCompareLevel(t15, s15, v_70.xy, r6.z);
  } else {
    r2.w = 1.0f;
  }
  r1.w = (r1.w + r2.w);
  let v_71 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_71.xyz, r3.w);
  let v_72 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_72.xyz, r4.w);
  let v_73 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_73.xyz, r5.w);
  let v_74 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = abs(r3.yyyy);
  r6.x = max(v_75.x, abs(r3.xxxx).x);
  let v_76 = abs(r4.yyyy);
  r6.y = max(v_76.y, abs(r4.xxxx).y);
  let v_77 = abs(r5.yyyy);
  r6.z = max(v_77.z, abs(r5.xxxx).z);
  let v_78 = abs(r2.yyyy);
  r6.w = max(v_78.w, abs(r2.xxxx).w);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r6 < r1.zzzz)));
  r2.w = 0.875f;
  let v_79 = bitcast<vec4<u32>>(r6.wwww);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_79 != vec4<u32>()));
  r5.w = 0.625f;
  let v_80 = bitcast<vec4<u32>>(r6.zzzz);
  let v_81 = r5;
  r7 = select(r7, v_81, (v_80 != vec4<u32>()));
  r4.w = 0.375f;
  let v_82 = bitcast<vec4<u32>>(r6.yyyy);
  let v_83 = r4;
  r7 = select(r7, v_83, (v_82 != vec4<u32>()));
  r3.w = 0.125f;
  let v_84 = bitcast<vec4<u32>>(r6.xxxx);
  let v_85 = r3;
  r6 = select(r7, v_85, (v_84 != vec4<u32>()));
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_86 = r7.xyxx;
    r2.w = textureSampleCompareLevel(t15, s15, v_86.xy, r6.z);
  } else {
    r2.w = 1.0f;
  }
  r1.w = (r1.w + r2.w);
  let v_87 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_87.xyz, r3.w);
  let v_88 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_88.xyz, r4.w);
  let v_89 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_89.xyz, r5.w);
  let v_90 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_90.xyz, r2.w);
  let v_91 = abs(r3.yyyy);
  r6.x = max(v_91.x, abs(r3.xxxx).x);
  let v_92 = abs(r4.yyyy);
  r6.y = max(v_92.y, abs(r4.xxxx).y);
  let v_93 = abs(r5.yyyy);
  r6.z = max(v_93.z, abs(r5.xxxx).z);
  let v_94 = abs(r2.yyyy);
  r6.w = max(v_94.w, abs(r2.xxxx).w);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r6 < r1.zzzz)));
  r2.w = 0.875f;
  let v_95 = bitcast<vec4<u32>>(r6.wwww);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_95 != vec4<u32>()));
  r5.w = 0.625f;
  let v_96 = bitcast<vec4<u32>>(r6.zzzz);
  let v_97 = r5;
  r7 = select(r7, v_97, (v_96 != vec4<u32>()));
  r4.w = 0.375f;
  let v_98 = bitcast<vec4<u32>>(r6.yyyy);
  let v_99 = r4;
  r7 = select(r7, v_99, (v_98 != vec4<u32>()));
  r3.w = 0.125f;
  let v_100 = bitcast<vec4<u32>>(r6.xxxx);
  let v_101 = r3;
  r6 = select(r7, v_101, (v_100 != vec4<u32>()));
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_102 = r7.xyxx;
    r2.w = textureSampleCompareLevel(t15, s15, v_102.xy, r6.z);
  } else {
    r2.w = 1.0f;
  }
  r1.w = (r1.w + r2.w);
  let v_103 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_103.xyz, r3.w);
  let v_104 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_104.xyz, r4.w);
  let v_105 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_105.xyz, r5.w);
  let v_106 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  let v_107 = abs(r3.yyyy);
  r6.x = max(v_107.x, abs(r3.xxxx).x);
  let v_108 = abs(r4.yyyy);
  r6.y = max(v_108.y, abs(r4.xxxx).y);
  let v_109 = abs(r5.yyyy);
  r6.z = max(v_109.z, abs(r5.xxxx).z);
  let v_110 = abs(r2.yyyy);
  r6.w = max(v_110.w, abs(r2.xxxx).w);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r6 < r1.zzzz)));
  r2.w = 0.875f;
  let v_111 = bitcast<vec4<u32>>(r6.wwww);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_111 != vec4<u32>()));
  r5.w = 0.625f;
  let v_112 = bitcast<vec4<u32>>(r6.zzzz);
  let v_113 = r5;
  r7 = select(r7, v_113, (v_112 != vec4<u32>()));
  r4.w = 0.375f;
  let v_114 = bitcast<vec4<u32>>(r6.yyyy);
  let v_115 = r4;
  r7 = select(r7, v_115, (v_114 != vec4<u32>()));
  r3.w = 0.125f;
  let v_116 = bitcast<vec4<u32>>(r6.xxxx);
  let v_117 = r3;
  r6 = select(r7, v_117, (v_116 != vec4<u32>()));
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_118 = r7.xyxx;
    r2.w = textureSampleCompareLevel(t15, s15, v_118.xy, r6.z);
  } else {
    r2.w = 1.0f;
  }
  r1.w = (r1.w + r2.w);
  let v_119 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_119.xyz, r3.w);
  let v_120 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_120.xyz, r4.w);
  let v_121 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_121.xyz, r5.w);
  let v_122 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_122.xyz, r2.w);
  let v_123 = abs(r3.yyyy);
  r6.x = max(v_123.x, abs(r3.xxxx).x);
  let v_124 = abs(r4.yyyy);
  r6.y = max(v_124.y, abs(r4.xxxx).y);
  let v_125 = abs(r5.yyyy);
  r6.z = max(v_125.z, abs(r5.xxxx).z);
  let v_126 = abs(r2.yyyy);
  r6.w = max(v_126.w, abs(r2.xxxx).w);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r6 < r1.zzzz)));
  r2.w = 0.875f;
  let v_127 = bitcast<vec4<u32>>(r6.wwww);
  r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_127 != vec4<u32>()));
  r5.w = 0.625f;
  let v_128 = bitcast<vec4<u32>>(r6.zzzz);
  let v_129 = r5;
  r7 = select(r7, v_129, (v_128 != vec4<u32>()));
  r4.w = 0.375f;
  let v_130 = bitcast<vec4<u32>>(r6.yyyy);
  let v_131 = r4;
  r7 = select(r7, v_131, (v_130 != vec4<u32>()));
  r3.w = 0.125f;
  let v_132 = bitcast<vec4<u32>>(r6.xxxx);
  let v_133 = r3;
  r6 = select(r7, v_133, (v_132 != vec4<u32>()));
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 5.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r7.x = (r6.x + 0.5f);
    r7.y = fma(r6.y, 0.25f, r6.w);
    let v_134 = r7.xyxx;
    r2.w = textureSampleCompareLevel(t15, s15, v_134.xy, r6.z);
  } else {
    r2.w = 1.0f;
  }
  r1.w = (r1.w + r2.w);
  let v_135 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, r3.xyz);
  r3 = vec4<f32>(v_135.xyz, r3.w);
  let v_136 = fma(r0.xyz, cb6_6.tint_symbol[5u].xyz, r4.xyz);
  r4 = vec4<f32>(v_136.xyz, r4.w);
  let v_137 = fma(r0.xyz, cb6_6.tint_symbol[6u].xyz, r5.xyz);
  r5 = vec4<f32>(v_137.xyz, r5.w);
  let v_138 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_138.xyz, r2.w);
  let v_139 = abs(r3.yyyy);
  r0.x = max(v_139.x, abs(r3.xxxx).x);
  let v_140 = abs(r4.yyyy);
  r0.y = max(v_140.y, abs(r4.xxxx).y);
  let v_141 = abs(r5.yyyy);
  r0.z = max(v_141.z, abs(r5.xxxx).z);
  let v_142 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r0.xyz < r1.zzz)));
  r0 = vec4<f32>(v_142.xyz, r0.w);
  let v_143 = abs(r2.yyyy);
  r6.x = max(v_143.x, abs(r2.xxxx).x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r6.x < r1.z)));
  r2.w = 0.875f;
  let v_144 = bitcast<vec4<u32>>(r1.zzzz);
  r2 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 5.0f), r2, (v_144 != vec4<u32>()));
  r5.w = 0.625f;
  let v_145 = bitcast<vec4<u32>>(r0.zzzz);
  let v_146 = r5;
  r2 = select(r2, v_146, (v_145 != vec4<u32>()));
  r4.w = 0.375f;
  let v_147 = bitcast<vec4<u32>>(r0.yyyy);
  let v_148 = r4;
  r2 = select(r2, v_148, (v_147 != vec4<u32>()));
  r3.w = 0.125f;
  let v_149 = bitcast<vec4<u32>>(r0.xxxx);
  let v_150 = r3;
  r2 = select(r2, v_150, (v_149 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 5.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = (r2.x + 0.5f);
    r0.y = fma(r2.y, 0.25f, r2.w);
    let v_151 = r0.xyxx;
    r0.x = textureSampleCompareLevel(t15, s15, v_151.xy, r2.z);
  } else {
    r0.x = 1.0f;
  }
  r0.x = (r0.x + r1.w);
  r0.x = (r0.x * 0.125f);
  r0.y = exp2(r1.y);
  r0.y = fma(r0.y, cb5_5.tint_symbol_1[38u].z, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r0.y);
  r0.x = exp2(r0.x);
  r0.y = (r1.x * -1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_152 = -(cb5_5.tint_symbol_1[39u].xxxx);
  r0.y = (r0.w + v_152.y);
  r0.y = clamp(((r0.yyyy * cb5_5.tint_symbol_1[39u].yyyy)).y, 0.0f, 1.0f);
  r0.z = ((-(r0.yyyy)).z + 1.0f);
  o0 = fma(r0.zzzz, r0.xxxx, r0.yyyy);
}

@fragment
fn main(@builtin(position) v_153 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_153, v1, v2);
  return o0;
}
