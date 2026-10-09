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

var<private> r21 : vec4<f32>;

var<private> r22 : vec4<f32>;

var<private> r23 : vec4<f32>;

var<private> r24 : vec4<f32>;

var<private> r25 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_5 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = clamp(((r2.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_6 = (r2.yyy * v3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r2.y = dot((-(r3.xyzx)).xyz, r1.yzw);
  r2.y = (r2.y + r2.y);
  let v_7 = -(r2.yyyy);
  let v_8 = -(r3.xyzx);
  let v_9 = fma(r1.yzw, v_7.xyz, v_8.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_10 = fma(r3.xz, r2.yy, vec2<f32>(1.0f));
  let v_11 = r2;
  r2 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = (r2.yz * vec2<f32>(-0.5f));
  let v_13 = r2;
  r2 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r3 = textureSample(t3, s3, r2.yzyy.xy);
  let v_14 = (r3.xyz * cb12_12.tint_symbol_4[1u].www);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r0.w = (r0.w * v0.w);
  let v_15 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_16 = r2;
  r2 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(v4.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_20 = (r3.www * r4.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r4.xyz, r3.www, v_21.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_23 = (r4.www * r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = (r2.yz * r2.yz);
  let v_25 = r2;
  r2 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  r4.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_26 = -(r4.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, v_26.w);
  r4.w = (r4.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r4.w);
  r4.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_27 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_30.xyz, r8.w);
  let v_31 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_31.xyz, r9.w);
  let v_32 = &(x0[0u]);
  let v_33 = r9;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_34.xyz, r10.w);
  let v_35 = &(x0[1u]);
  let v_36 = r10;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_37.xyz, r11.w);
  let v_38 = &(x0[2u]);
  let v_39 = r11;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  let v_41 = &(x0[3u]);
  let v_42 = r8;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_44 = r12;
  r12 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_45 = abs(r11.yyyy);
  r6.w = max(v_45.w, abs(r11.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_46 = (bitcast<u32>(r6.w) != 0u);
  let v_47 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_47, v_46);
  let v_48 = abs(r10.yyyy);
  r7.w = max(v_48.w, abs(r10.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r5.w)));
  let v_49 = bitcast<u32>(r7.w);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_49 != 0u));
  let v_50 = abs(r9.yyyy);
  r7.w = max(v_50.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r5.w)));
  let v_51 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_51 != 0u));
  let v_52 = x0[bitcast<i32>(r5.w)];
  r9 = vec4<f32>(v_52.xyz, r9.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.w = (r5.w + 0.5f);
  r6.w = (r6.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r5.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r7.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r9.z);
  let v_53 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_53.xy, r11.z, v_53.z);
  r11.z = dpdx(r5.w);
  let v_54 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_54.xyz, r13.w);
  r13.w = dpdy(r5.w);
  let v_55 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_55.xy);
  let v_56 = -(r8.zwzz);
  let v_57 = fma(r11.xz, r13.xz, v_56.xy);
  r14 = vec4<f32>(v_57.xy, r14.zw);
  r8.z = (1.0f / r14.x);
  r8.w = (r11.z * r13.y);
  let v_58 = -(r8.wwww);
  r14.z = fma(r11.x, r13.w, v_58.z);
  let v_59 = (r8.zz * r14.yz);
  r8 = vec4<f32>(r8.xy, v_59.xy);
  let v_60 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_60.xy);
  let v_61 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_61.xy);
  r5.w = fma((-(r7.wwww)).w, r8.z, r5.w);
  r5.w = fma((-(r7.wwww)).w, r8.w, r5.w);
  let v_62 = bitcast<u32>(r6.w);
  let v_63 = r5.w;
  r12.z = select(r9.z, v_63, (v_62 != 0u));
  r10.z = 0.0f;
  let v_64 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_64.xyz, r9.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_66.xyz, r11.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_68.xyz, r13.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_70.xyz, r14.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_72.xyz, r15.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_74.xyz, r16.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_76.xyz, r17.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_78.xyz, r18.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_80.xyz, r19.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_82.xyz, r20.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_84.xyz, r21.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_86.xyz, r22.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_88.xyz, r23.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_90.xyz, r24.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_92.xyz, r25.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_93.xy, r12.zw);
  let v_94 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_94.xyz, r10.w);
  let v_95 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_95.xy, r9.z);
  let v_96 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_96.xy, r11.z);
  let v_97 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_99.xy, r15.z);
  let v_100 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_100.xy, r16.z);
  let v_101 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_101.xy, r17.z);
  let v_102 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_103.xy, r19.z);
  let v_104 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_105.xy, r21.z);
  let v_106 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_106.xy, r22.z);
  let v_107 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_107.xy, r23.z);
  let v_108 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_108.xy, r24.z);
  let v_109 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_109.xy, r25.z);
  let v_110 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_110.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r5.w = dot(r9, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_111 = abs(r8.yyyy);
  r6.w = max(v_111.w, abs(r8.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_112 = -(r4.wwww);
  r4.w = fma(r5.w, v_112.w, r4.w);
  let v_113 = dot(r1.yzw, v_21.xyz);
  r5.w = clamp(vec4<f32>(v_113, v_113, v_113, v_113).w, 0.0f, 1.0f);
  let v_114 = dot(r5.xyz, r1.yzw);
  r8.x = clamp(vec4<f32>(v_114, v_114, v_114, v_114).x, 0.0f, 1.0f);
  let v_115 = dot(r6.xyz, v_21.xyz);
  r8.y = clamp(vec4<f32>(v_115, v_115, v_115, v_115).y, 0.0f, 1.0f);
  let v_116 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_116.xy, r8.zw);
  let v_117 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_117.xy);
  let v_118 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_118.xy);
  let v_119 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_119.xy, r8.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_120 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r6.ww);
  r8 = vec4<f32>(v_120.xy, r8.zw);
  let v_121 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_121.xy);
  r7.w = (r8.z * 0.125f);
  r8.x = fma((-(r2.xxxx)).x, r8.x, 1.0f);
  r6.x = dot(r1.yzw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r7.w * r6.x);
  r6.x = (r2.x * r6.x);
  r6.x = (r5.w * r6.x);
  r5.w = (r5.w * r8.x);
  let v_122 = fma(r0.xyz, r5.www, r6.xxx);
  r6 = vec4<f32>(v_122.xyz, r6.w);
  let v_123 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_123.xyz, r6.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_124 = (v_18.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    let v_125 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_125.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_126 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_126.xyz, r10.w);
    let v_127 = (r10.xyz + v_18.xyz);
    r10 = vec4<f32>(v_127.xyz, r10.w);
    let v_128 = bitcast<vec3<u32>>(r8.yyy);
    let v_129 = r9.xyz;
    let v_130 = select(r10.xyz, v_129, (v_128 != vec3<u32>()));
    r9 = vec4<f32>(v_130.xyz, r9.w);
    r8.y = dot(r9.xyz, r9.xyz);
    let v_131 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_131.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_132 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_132.xyz, r9.w);
    r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[11u].w);
    r8.y = (r8.y / r8.z);
    let v_133 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_133.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_134 = dot(r9.xyz, r1.yzw);
    r9.w = clamp(vec4<f32>(v_134, v_134, v_134, v_134).w, 0.0f, 1.0f);
    r8.z = (r8.z * r9.w);
    r9.w = (r8.y * r8.z);
    let v_135 = (r9.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_135.xyz, r10.w);
    let v_136 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_136.xyz, r10.w);
    let v_137 = fma(r4.xyz, r3.www, r9.xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_138 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = dot(r9.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.w = (r9.w * r9.w);
    r10.w = (r10.w * r10.w);
    r9.w = (r9.w * r10.w);
    r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
    let v_140 = dot(r9.xyz, r1.yzw);
    r9.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.w * r9.x);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r9.w);
    r8.z = (r8.z * r9.x);
    r8.y = (r8.y * r8.z);
    r8.y = (r7.w * r8.y);
    let v_141 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
  }
  r8.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.y) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    let v_142 = bitcast<u32>(r8.z);
    let v_143 = r8.y;
    r5.w = select(r5.w, v_143, (v_142 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_144 = (v_18.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      let v_145 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_145.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_146 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_146.xyz, r12.w);
      let v_147 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_147.xyz, r12.w);
      let v_148 = bitcast<vec3<u32>>(r8.yyy);
      let v_149 = r11.xyz;
      let v_150 = select(r12.xyz, v_149, (v_148 != vec3<u32>()));
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_151 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_152 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_152.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[12u].w);
      r8.y = (r8.y / r8.z);
      let v_153 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_153.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_154 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_155 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_155.xyz, r12.w);
      let v_156 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      let v_157 = fma(r4.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_158 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_160 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_161 = fma(r8.yyy, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_161.xyz, r9.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_162 = (v_18.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      let v_163 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_164 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_164.xyz, r12.w);
      let v_165 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_165.xyz, r12.w);
      let v_166 = bitcast<vec3<u32>>(r8.yyy);
      let v_167 = r11.xyz;
      let v_168 = select(r12.xyz, v_167, (v_166 != vec3<u32>()));
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_169 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_170 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[13u].w);
      r8.y = (r8.y / r8.z);
      let v_171 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_171.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_172 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_173 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_173.xyz, r12.w);
      let v_174 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = fma(r4.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_176 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_178 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_179 = fma(r8.yyy, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_179.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_180 = (v_18.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      let v_181 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_181.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_2[22u].w);
      let v_182 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_182.xyz, r12.w);
      let v_183 = (r12.xyz + v_18.xyz);
      r12 = vec4<f32>(v_183.xyz, r12.w);
      let v_184 = bitcast<vec3<u32>>(r5.www);
      let v_185 = r11.xyz;
      let v_186 = select(r12.xyz, v_185, (v_184 != vec3<u32>()));
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r5.w = dot(r11.xyz, r11.xyz);
      let v_187 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_187.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_188 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_188.xyz, r11.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r8.y);
      let v_189 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.y = dot(r11.xyz, v_189.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_190 = dot(r11.xyz, r1.yzw);
      r8.z = clamp(vec4<f32>(v_190, v_190, v_190, v_190).z, 0.0f, 1.0f);
      r8.y = (r8.y * r8.z);
      r8.z = (r5.w * r8.y);
      let v_191 = (r8.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_191.xyz, r12.w);
      let v_192 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      let v_193 = fma(r4.xyz, r3.www, r11.xyz);
      r4 = vec4<f32>(v_193.xyz, r4.w);
      r3.w = dot(r4.xyz, r4.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_194 = (r3.www * r4.xyz);
      r4 = vec4<f32>(v_194.xyz, r4.w);
      let v_195 = dot(r4.xyz, r5.xyz);
      r3.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r5.x = (r3.w * r3.w);
      r5.x = (r5.x * r5.x);
      r3.w = (r3.w * r5.x);
      r3.w = fma(cb12_12.tint_symbol_4[0u].x, r3.w, r6.w);
      let v_196 = dot(r4.xyz, r1.yzw);
      r4.x = clamp(vec4<f32>(v_196, v_196, v_196, v_196).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r3.w = (r3.w * r4.x);
      r3.w = (r8.y * r3.w);
      r3.w = (r5.w * r3.w);
      r3.w = (r7.w * r3.w);
      let v_197 = fma(r3.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_197.xyz, r9.w);
    }
  }
  r3.w = (r8.x * r8.x);
  r2.x = (r2.x * r2.x);
  let v_198 = (r9.xyz * r2.xxx);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  let v_199 = fma(r3.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_199.xyz, r4.w);
  let v_200 = fma(r6.xyz, r4.www, r4.xyz);
  r4 = vec4<f32>(v_200.xyz, r4.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_201 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_201.xyz, r5.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_202 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_202.xyz, r6.w);
  let v_203 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_203.xyz, r6.w);
  let v_204 = fma(r5.xyz, r2.xxx, r6.xyz);
  r5 = vec4<f32>(v_204.xyz, r5.w);
  let v_205 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_205.xyz, r5.w);
  let v_206 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_206.xyz, r6.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_207 = dot(r9.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
  let v_208 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_208.xyz, r1.w);
  let v_209 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_209.xyz, r1.w);
  let v_210 = (r8.xxx * r1.xyz);
  r1 = vec4<f32>(v_210.xyz, r1.w);
  let v_211 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_211.xyz, r0.w);
  r1.x = ((-(r8.xxxx)).x + 1.0f);
  r1.y = max(r2.z, r2.y);
  let v_212 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_212.xyz);
  r2.x = clamp(((r2.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_213 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(v_213.xyz, r2.w);
  let v_214 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_214.xyz, r2.w);
  let v_215 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_215.xyz);
  let v_216 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_216.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_217 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_217.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_218 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_218 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_219 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_219.xyz, r2.w);
    let v_220 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_221 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_222 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_222.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_223 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_223.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_224 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_224.xyz, r2.w);
    let v_225 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_225.xyz, r2.w);
    let v_226 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_226.xyz, r3.w);
    let v_227 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_227.xyz, r2.w);
    let v_228 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_229 = (r2.xyz + v_228.xyz);
    r2 = vec4<f32>(v_229.xyz, r2.w);
    let v_230 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_230.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_231 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_231.xyz, r3.w);
    let v_232 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_232.xy, r1.z, v_232.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_233 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_233.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_234 = -(r0.xyxz);
    let v_235 = fma(r1.xyw, r0.www, v_234.xyw);
    r1 = vec4<f32>(v_235.xy, r1.z, v_235.z);
    let v_236 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_236.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_237 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_237.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_238 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_238 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_239 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_239.xyz, r3.w);
    let v_240 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_241 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_241, v_241, v_241, v_241).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_242 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_242.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_243 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_243.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_244 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_244.xyz, r3.w);
    let v_245 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_245.xyz, r3.w);
    let v_246 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_246.xyz, r4.w);
    let v_247 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_247.xyz, r3.w);
    let v_248 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_249 = (r3.xyz + v_248.xyz);
    r3 = vec4<f32>(v_249.xyz, r3.w);
    let v_250 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_250.x, r2.y, v_250.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_251 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_251.xyz, r3.w);
    let v_252 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_252.x, r2.y, v_252.yz);
    let v_253 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_253.x, r2.y, v_253.yz);
    let v_254 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_254.xyz, r1.w);
  }
  let v_255 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_255.xyz, o0.w);
}

fn v_3(v_256 : bool) {
  if (v_256) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_257 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_257);
  return o0;
}
