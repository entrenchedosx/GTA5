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

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
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
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2 = textureSample(t2, s2, v1.xyz.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = clamp(((r2.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_5 = (r2.yyy * v3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r2.y = dot((-(r3.xyzx)).xyz, r1.yzw);
  r2.y = (r2.y + r2.y);
  let v_6 = -(r2.yyyy);
  let v_7 = -(r3.xyzx);
  let v_8 = fma(r1.yzw, v_6.xyz, v_7.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_9 = fma(r3.xz, r2.yy, vec2<f32>(1.0f));
  let v_10 = r2;
  r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = (r2.yz * vec2<f32>(-0.5f));
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r3 = textureSample(t3, s3, r2.yzyy.xy);
  let v_13 = (r3.xyz * cb12_12.tint_symbol_4[1u].www);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r0.w = (r0.w * v0.w);
  let v_14 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_15 = r2;
  r2 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = ((-(v4.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = (r3.www * r4.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = fma(r4.xyz, r3.www, v_19.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_21 = (r3.www * r6.xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = (r2.yz * r2.yz);
  let v_23 = r2;
  r2 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r3.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_24 = -(r3.wwww);
  r2.w = fma(r2.w, cb12_12.tint_symbol_4[0u].y, v_24.w);
  r3.w = (r3.w * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.w);
  r3.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_25 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = &(x0[0u]);
  let v_31 = r8;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_32.xyz, r9.w);
  let v_33 = &(x0[1u]);
  let v_34 = r9;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_35.xyz, r10.w);
  let v_36 = &(x0[2u]);
  let v_37 = r10;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = &(x0[3u]);
  let v_40 = r7;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_42 = r11;
  r11 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_43 = abs(r10.yyyy);
  r5.w = max(v_43.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_44 = (bitcast<u32>(r5.w) != 0u);
  let v_45 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_45, v_44);
  let v_46 = abs(r9.yyyy);
  r6.w = max(v_46.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_47 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_47 != 0u));
  let v_48 = abs(r8.yyyy);
  r6.w = max(v_48.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_49 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_50.xyz, r8.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r4.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r8.z);
  let v_51 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_51.xy, r10.z, v_51.z);
  r10.z = dpdx(r4.w);
  let v_52 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_52.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_53 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_53.xy);
  let v_54 = -(r7.zwzz);
  let v_55 = fma(r10.xz, r12.xz, v_54.xy);
  r13 = vec4<f32>(v_55.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_56 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_56.z);
  let v_57 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_57.xy);
  let v_58 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_58.xy);
  let v_59 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_59.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_60 = bitcast<u32>(r5.w);
  let v_61 = r4.w;
  r11.z = select(r8.z, v_61, (v_60 != 0u));
  r9.z = 0.0f;
  let v_62 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_62.xyz, r8.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_64.xyz, r10.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_66.xyz, r12.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_68.xyz, r13.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_70.xyz, r14.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_72.xyz, r15.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_74.xyz, r16.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_76.xyz, r17.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_78.xyz, r18.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_80.xyz, r19.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_82.xyz, r20.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_84.xyz, r21.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_86.xyz, r22.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_88.xyz, r23.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_90.xyz, r24.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_92.xyz, r9.w);
  let v_93 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_94.xy, r10.z);
  let v_95 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_95.xy, r12.z);
  let v_96 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_96.xy, r13.z);
  let v_97 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_97.xy, r14.z);
  let v_98 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_99.xy, r16.z);
  let v_100 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_100.xy, r17.z);
  let v_101 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_101.xy, r18.z);
  let v_102 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_102.xy, r19.z);
  let v_103 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_103.xy, r20.z);
  let v_104 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_104.xy, r21.z);
  let v_105 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_105.xy, r22.z);
  let v_106 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_106.xy, r23.z);
  let v_107 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_107.xy, r24.z);
  let v_108 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_108.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.w = dot(r8, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_109 = abs(r7.yyyy);
  r5.w = max(v_109.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_110 = -(r3.wwww);
  r3.w = fma(r4.w, v_110.w, r3.w);
  let v_111 = dot(r1.yzw, v_19.xyz);
  r4.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r6.xyz, v_19.xyz);
  r5.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_114.xy, r5.zw);
  let v_115 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_115.xy);
  let v_116 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_116.xy);
  let v_117 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_117.xy, r5.zw);
  r5.z = ((-(cb12_12.tint_symbol_4[0u].xxxx)).z + 1.0f);
  let v_118 = fma(cb12_12.tint_symbol_4[0u].xx, r5.xy, r5.zz);
  r5 = vec4<f32>(v_118.xy, r5.zw);
  let v_119 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_119.xy);
  r5.z = (r5.z * 0.125f);
  r5.x = fma((-(r2.xxxx)).x, r5.x, 1.0f);
  r6.x = dot(r1.yzw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r5.w = (r5.w * r6.x);
  r5.w = exp2(r5.w);
  r5.y = (r5.y * r5.w);
  r5.y = (r5.z * r5.y);
  r2.x = (r2.x * r5.y);
  r2.x = (r4.w * r2.x);
  r4.w = (r4.w * r5.x);
  let v_120 = fma(r0.xyz, r4.www, r2.xxx);
  r5 = vec4<f32>(r5.x, v_120.xyz);
  let v_121 = (r5.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(r5.x, v_121.xyz);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_122 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_122.xyz, r6.w);
  r2.x = ((-(cb2_2.tint_symbol_1[16u].zzzz)).x + 1.0f);
  let v_123 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_123.xyz, r7.w);
  let v_124 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_124.xyz, r7.w);
  let v_125 = fma(r6.xyz, r2.xxx, r7.xyz);
  r6 = vec4<f32>(v_125.xyz, r6.w);
  let v_126 = (r2.zzz * r6.xyz);
  r6 = vec4<f32>(v_126.xyz, r6.w);
  let v_127 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(v_127.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_128 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
  let v_129 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.xyz);
  r1 = vec4<f32>(v_129.xyz, r1.w);
  let v_130 = fma(r1.xyz, r2.yyy, r6.xyz);
  r1 = vec4<f32>(v_130.xyz, r1.w);
  let v_131 = (r5.xxx * r1.xyz);
  r1 = vec4<f32>(v_131.xyz, r1.w);
  let v_132 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_132.xyz, r0.w);
  let v_133 = fma(r5.yzw, r3.www, r0.xyz);
  r0 = vec4<f32>(v_133.xyz, r0.w);
  r1.x = ((-(r5.xxxx)).x + 1.0f);
  r1.y = max(r2.z, r2.y);
  let v_134 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_134.xyz);
  r2.x = clamp(((r2.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_135 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(v_135.xyz, r2.w);
  let v_136 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_136.xyz, r2.w);
  let v_137 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_137.xyz);
  let v_138 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_138.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r4.xyz, r4.xyz);
    r1.y = sqrt(r1.x);
    let v_139 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_139.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r4.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_140 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_140 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_141 = (r1.xxx * r4.xyz);
    r2 = vec4<f32>(v_141.xyz, r2.w);
    let v_142 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_142, v_142, v_142, v_142).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_143 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_143, v_143, v_143, v_143).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_144 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_144.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_145 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_145.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_146 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_146.xyz);
    let v_147 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_147.xyz);
    let v_148 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_148.xyz, r3.w);
    let v_149 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_149.xyz, r2.w);
    let v_150 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_151 = (r2.xyz + v_150.xyz);
    r2 = vec4<f32>(v_151.xyz, r2.w);
    let v_152 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_152.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_153 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_153.xyz, r3.w);
    let v_154 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_154.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_155 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_155.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_156 = -(r0.xyzx);
    let v_157 = fma(r1.xyz, r2.xxx, v_156.xyz);
    r1 = vec4<f32>(v_157.xyz, r1.w);
    let v_158 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_158.xyz, r1.w);
  } else {
    r1.w = dot(r4.xyz, r4.xyz);
    r2.x = sqrt(r1.w);
    let v_159 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_159.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r4.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_160 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_160 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_161 = (r1.www * r4.xyz);
    r3 = vec4<f32>(v_161.xyz, r3.w);
    let v_162 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_163 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_164 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_164.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_165 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_165.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_166 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_166.xyz, r3.w);
    let v_167 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_167.xyz, r3.w);
    let v_168 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_168.xyz, r4.w);
    let v_169 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    let v_170 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_171 = (r3.xyz + v_170.xyz);
    r3 = vec4<f32>(v_171.xyz, r3.w);
    let v_172 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_172.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_173 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_173.xyz, r4.w);
    let v_174 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_174.xy, r2.z, v_174.z);
    let v_175 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_175.xy, r2.z, v_175.z);
    let v_176 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_176.xyz, r1.w);
  }
  let v_177 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_177.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_178 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v_178);
  return tint_symbol_8(o0, o1, o2);
}
