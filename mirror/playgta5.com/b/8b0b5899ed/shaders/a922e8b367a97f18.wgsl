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

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

var<private> r16 : vec4<f32>;

var<private> r17 : vec4<f32>;

var<private> r18 : vec4<f32>;

var<private> r19 : vec4<f32>;

var<private> r20 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_1 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_1.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_2 = (r0.yzw * r1.xxx);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  r1.x = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r0.x = (cb11_11.tint_symbol_3[2u].w / r0.x);
  r1 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_3 = (r0.xxx * v3.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = (r3.xy * vec2<f32>(0.015625f));
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r3 = textureSample(t14, s14, r3.xyxx.xy);
  r2.w = (r3.z * cb12_12.tint_symbol_2[0u].w);
  let v_6 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = &(x0[0u]);
  let v_8 = r3;
  *(v_7) = vec4<f32>(v_8.xyz, (*(v_7)).w);
  let v_9 = fma(r2.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = &(x0[1u]);
  let v_11 = r4;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r2.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = &(x0[2u]);
  let v_14 = r5;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r2.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = &(x0[3u]);
  let v_17 = r2;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  r2.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_18 = -(r2.wwww);
  r2.z = fma(r2.z, 0.5f, v_18.z);
  let v_19 = abs(r5.yyyy);
  r2.w = max(v_19.w, abs(r5.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  let v_20 = (bitcast<u32>(r2.w) != 0u);
  let v_21 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_21, v_20);
  let v_22 = abs(r4.yyyy);
  r3.z = max(v_22.z, abs(r4.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r2.z)));
  let v_23 = bitcast<u32>(r3.z);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_23 != 0u));
  let v_24 = abs(r3.yyyy);
  r3.x = max(v_24.x, abs(r3.xxxx).x);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.z)));
  let v_25 = bitcast<u32>(r2.z);
  r2.z = select(r2.w, 0.0f, (v_25 != 0u));
  let v_26 = x0[bitcast<i32>(r2.z)];
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r2.w = f32(bitcast<i32>(r2.z));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r2.w = dot(r4, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r5.x = (r3.x + 0.5f);
  r5.y = fma(r3.y, 0.25f, r3.w);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r3.z);
  let v_27 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_27.xy, r6.z, v_27.z);
  r6.z = dpdx(r2.w);
  let v_28 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  r7.w = dpdy(r2.w);
  let v_29 = (r6.yw * r7.yw);
  let v_30 = r3;
  r3 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  let v_31 = -(r3.ywyy);
  let v_32 = fma(r6.xz, r7.xz, v_31.xy);
  r8 = vec4<f32>(v_32.xy, r8.zw);
  r3.y = (1.0f / r8.x);
  r3.w = (r6.z * r7.y);
  let v_33 = -(r3.wwww);
  r8.z = fma(r6.x, r7.w, v_33.z);
  let v_34 = (r3.yy * r8.yz);
  let v_35 = r3;
  r3 = vec4<f32>(v_35.x, v_34.x, v_35.z, v_34.y);
  let v_36 = max(r3.yw, vec2<f32>());
  let v_37 = r3;
  r3 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  let v_38 = min(r3.yw, vec2<f32>(0.5f));
  let v_39 = r3;
  r3 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
  r2.w = fma((-(r4.xxxx)).w, r3.y, r2.w);
  r2.w = fma((-(r4.xxxx)).w, r3.w, r2.w);
  let v_40 = bitcast<u32>(r3.x);
  let v_41 = r2.w;
  r3.z = select(r3.z, v_41, (v_40 != 0u));
  let v_42 = (r0.zzz * cb6_6.tint_symbol_1[1u].xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = fma(r0.yyy, cb6_6.tint_symbol_1[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = fma(r0.www, cb6_6.tint_symbol_1[2u].xyz, r4.xyz);
  r0 = vec4<f32>(r0.x, v_44.xyz);
  let v_45 = (r0.yzw * vec3<f32>(1.0f, 0.0f, 0.0f));
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = -(r4.xyzx);
  let v_47 = fma(r0.wyz, vec3<f32>(0.0f, 0.0f, 1.0f), v_46.xyz);
  r4 = vec4<f32>(v_47.xyz, r4.w);
  let v_48 = ((-(r0.wyzw)).xyz * r4.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = -(r0.zzwy);
  let v_50 = -(r6.xxyz);
  let v_51 = fma(v_49.yzw, r4.yzx, v_50.yzw);
  r0 = vec4<f32>(r0.x, v_51.xyz);
  r2.w = dot(r0.yz, r0.yz);
  r3.w = inverseSqrt(r2.w);
  let v_52 = (r0.yz * r3.ww);
  let v_53 = r0;
  r0 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  let v_54 = (r0.ww * r0.yz);
  let v_55 = r0;
  r0 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  r0.w = sqrt(r2.w);
  let v_56 = (r0.yz / r0.ww);
  let v_57 = r0;
  r0 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  r0.w = bitcast<f32>((4i + bitcast<i32>(r2.z)));
  let v_58 = (r0.yz / cb6_6.tint_symbol_1[bitcast<i32>(r0.w)].xy);
  let v_59 = r0;
  r0 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  let v_60 = (r0.yz * cb6_6.tint_symbol_1[bitcast<i32>(r0.w)].zz);
  let v_61 = r0;
  r0 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
  let v_62 = (r0.yz * vec2<f32>(1.0f, 4.0f));
  let v_63 = r0;
  r0 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  r4 = (r1.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r0.yz, r4.xy);
  let v_64 = r4;
  r3 = vec4<f32>(v_64.xy, r3.zw);
  let v_65 = (r3.xyz + r5.xyz);
  r6 = vec4<f32>(v_65.xyz, r6.w);
  r5.w = dot(r0.yz, r4.zw);
  let v_66 = r4;
  r3 = vec4<f32>(v_66.zw, r3.zw);
  let v_67 = (r5.xyw + r3.xyz);
  r4 = vec4<f32>(v_67.xyz, r4.w);
  r7 = (r1.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r8.x = dot(r0.yz, r7.xy);
  let v_68 = r7;
  r3 = vec4<f32>(v_68.xy, r3.zw);
  let v_69 = r5;
  let v_70 = r8;
  r8 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
  let v_71 = (r8.yzx + r3.xyz);
  r9 = vec4<f32>(v_71.xyz, r9.w);
  r8.w = dot(r0.yz, r7.zw);
  let v_72 = r7;
  r3 = vec4<f32>(v_72.zw, r3.zw);
  let v_73 = (r8.yzw + r3.xyz);
  r7 = vec4<f32>(v_73.xyz, r7.w);
  r10 = (r1.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r8.x = dot(r0.yz, r10.xy);
  let v_74 = r10;
  r3 = vec4<f32>(v_74.xy, r3.zw);
  let v_75 = (r8.yzx + r3.xyz);
  r11 = vec4<f32>(v_75.xyz, r11.w);
  r8.w = dot(r0.yz, r10.zw);
  let v_76 = r10;
  r3 = vec4<f32>(v_76.zw, r3.zw);
  let v_77 = (r8.yzw + r3.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  r12 = (r1.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r8.x = dot(r0.yz, r12.xy);
  let v_78 = r12;
  r3 = vec4<f32>(v_78.xy, r3.zw);
  let v_79 = (r8.yzx + r3.xyz);
  r13 = vec4<f32>(v_79.xyz, r13.w);
  r8.w = dot(r0.yz, r12.zw);
  let v_80 = r12;
  r3 = vec4<f32>(v_80.zw, r3.zw);
  let v_81 = (r8.yzw + r3.xyz);
  r12 = vec4<f32>(v_81.xyz, r12.w);
  r14 = (r1.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r8.x = dot(r0.yz, r14.xy);
  let v_82 = r14;
  r3 = vec4<f32>(v_82.xy, r3.zw);
  let v_83 = (r8.yzx + r3.xyz);
  r15 = vec4<f32>(v_83.xyz, r15.w);
  r8.w = dot(r0.yz, r14.zw);
  let v_84 = r14;
  r3 = vec4<f32>(v_84.zw, r3.zw);
  let v_85 = (r8.yzw + r3.xyz);
  r14 = vec4<f32>(v_85.xyz, r14.w);
  r16 = (r1.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r8.x = dot(r0.yz, r16.xy);
  let v_86 = r16;
  r3 = vec4<f32>(v_86.xy, r3.zw);
  let v_87 = (r8.yzx + r3.xyz);
  r17 = vec4<f32>(v_87.xyz, r17.w);
  r8.w = dot(r0.yz, r16.zw);
  let v_88 = r16;
  r3 = vec4<f32>(v_88.zw, r3.zw);
  let v_89 = (r8.yzw + r3.xyz);
  r16 = vec4<f32>(v_89.xyz, r16.w);
  r18 = (r1.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r8.x = dot(r0.yz, r18.xy);
  let v_90 = r18;
  r3 = vec4<f32>(v_90.xy, r3.zw);
  let v_91 = (r8.yzx + r3.xyz);
  r19 = vec4<f32>(v_91.xyz, r19.w);
  r8.w = dot(r0.yz, r18.zw);
  let v_92 = r18;
  r3 = vec4<f32>(v_92.zw, r3.zw);
  let v_93 = (r8.yzw + r3.xyz);
  r18 = vec4<f32>(v_93.xyz, r18.w);
  r1 = (r1 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r8.x = dot(r0.yz, r1.xy);
  let v_94 = r1;
  r3 = vec4<f32>(v_94.xy, r3.zw);
  let v_95 = (r8.yzx + r3.xyz);
  r20 = vec4<f32>(v_95.xyz, r20.w);
  r8.w = dot(r0.yz, r1.zw);
  let v_96 = r1;
  r3 = vec4<f32>(v_96.zw, r3.zw);
  let v_97 = (r8.yzw + r3.xyz);
  r0 = vec4<f32>(r0.x, v_97.xyz);
  let v_98 = r6.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_98.xy, r6.z);
  let v_99 = r4.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_99.xy, r4.z);
  let v_100 = r9.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_100.xy, r9.z);
  let v_101 = r7.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_101.xy, r7.z);
  let v_102 = r11.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_102.xy, r11.z);
  let v_103 = r10.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_103.xy, r10.z);
  let v_104 = r13.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_104.xy, r13.z);
  let v_105 = r12.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_105.xy, r12.z);
  let v_106 = r15.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_106.xy, r15.z);
  let v_107 = r14.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_107.xy, r14.z);
  let v_108 = r17.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_108.xy, r17.z);
  let v_109 = r16.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_109.xy, r16.z);
  let v_110 = r19.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_110.xy, r19.z);
  let v_111 = r18.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_111.xy, r18.z);
  let v_112 = r20.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_112.xy, r20.z);
  let v_113 = r0.yzyy;
  r6.w = textureSampleCompareLevel(t15, s15, v_113.xy, r0.w);
  r1 = (r1 + r3);
  r1 = (r4 + r1);
  r1 = (r6 + r1);
  r0.y = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.y * 0.0625f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r3 = textureSample(t2, s2, r5.xyxx.xy);
    r1.y = ((-(r3.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.xxxx, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  let v_114 = abs(r2.yyyy);
  r0.y = max(v_114.y, abs(r2.xxxx).y);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_115 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_115.xy, r0.zw);
  let v_116 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_116.xy, r0.zw);
  let v_117 = min(r0.xy, vec2<f32>(1.0f));
  let v_118 = r0;
  r0 = vec4<f32>(v_118.x, v_117.xy, v_118.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_119 = bitcast<u32>(r0.w);
  let v_120 = r1.x;
  r0.x = select(r0.y, v_120, (v_119 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
