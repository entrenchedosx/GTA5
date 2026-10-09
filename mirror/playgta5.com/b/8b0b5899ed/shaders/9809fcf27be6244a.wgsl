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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

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
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v3.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_6 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = -(v4.xyzx);
  let v_9 = (v_8.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_10 = (r2.zzz * r3.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_12 = fma(r3.xyz, r2.zzz, v_11.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_13 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  r2.w = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_14 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  r3.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.w = ((-(r3.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r4.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_15 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = &(x0[0u]);
  let v_21 = r8;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_22.xyz, r9.w);
  let v_23 = &(x0[1u]);
  let v_24 = r9;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_25.xyz, r10.w);
  let v_26 = &(x0[2u]);
  let v_27 = r10;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = &(x0[3u]);
  let v_30 = r7;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_32 = r11;
  r11 = vec4<f32>(v_32.x, v_31.x, v_32.z, v_31.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_33 = abs(r10.yyyy);
  r6.w = max(v_33.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_34 = (bitcast<u32>(r6.w) != 0u);
  let v_35 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_35, v_34);
  let v_36 = abs(r9.yyyy);
  r7.z = max(v_36.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_37 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_37 != 0u));
  let v_38 = abs(r8.yyyy);
  r7.z = max(v_38.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_39 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_39 != 0u));
  let v_40 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_40.xyz, r8.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.w = (r5.w + 0.5f);
  r6.w = (r6.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r5.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r7.z = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r8.z);
  let v_41 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_41.xy, r10.z, v_41.z);
  r10.z = dpdx(r5.w);
  let v_42 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_42.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_43 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_43.xy, r8.zw);
  let v_44 = -(r8.xyxx);
  let v_45 = fma(r10.xz, r12.xz, v_44.xy);
  r13 = vec4<f32>(v_45.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_46 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_46.z);
  let v_47 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_47.xy, r8.zw);
  let v_48 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_48.xy, r8.zw);
  let v_49 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_49.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_50 = bitcast<u32>(r6.w);
  let v_51 = r5.w;
  r11.z = select(r8.z, v_51, (v_50 != 0u));
  r9.z = 0.0f;
  let v_52 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_52.xyz, r8.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_53.xy, r11.zw);
  let v_54 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_54.xyz, r10.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_55.xy, r11.zw);
  let v_56 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_57.xy, r11.zw);
  let v_58 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_58.xyz, r13.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_59.xy, r11.zw);
  let v_60 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_60.xyz, r14.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_61.xy, r11.zw);
  let v_62 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_62.xyz, r15.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_64.xyz, r16.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_66.xyz, r17.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_68.xyz, r18.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_70.xyz, r19.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_72.xyz, r20.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_74.xyz, r21.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_76.xyz, r22.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_78.xyz, r23.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_80.xyz, r24.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_82.xyz, r9.w);
  let v_83 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_83.xy, r8.z);
  let v_84 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_84.xy, r10.z);
  let v_85 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_85.xy, r12.z);
  let v_86 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_86.xy, r13.z);
  let v_87 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_87.xy, r14.z);
  let v_88 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_88.xy, r15.z);
  let v_89 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_89.xy, r16.z);
  let v_90 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_90.xy, r17.z);
  let v_91 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_91.xy, r18.z);
  let v_92 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_92.xy, r19.z);
  let v_93 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_93.xy, r20.z);
  let v_94 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_94.xy, r21.z);
  let v_95 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_95.xy, r22.z);
  let v_96 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_96.xy, r23.z);
  let v_97 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_97.xy, r24.z);
  let v_98 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_98.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_99 = abs(r7.yyyy);
  r6.w = max(v_99.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_100 = -(r4.wwww);
  r4.w = fma(r5.w, v_100.w, r4.w);
  let v_101 = dot(r1.yzw, v_11.xyz);
  r5.w = clamp(vec4<f32>(v_101, v_101, v_101, v_101).w, 0.0f, 1.0f);
  let v_102 = dot(r4.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_102, v_102, v_102, v_102).x, 0.0f, 1.0f);
  let v_103 = dot(r5.xyz, v_11.xyz);
  r7.y = clamp(vec4<f32>(v_103, v_103, v_103, v_103).y, 0.0f, 1.0f);
  let v_104 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_104.xy, r7.zw);
  let v_105 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_105.xy);
  let v_106 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_106.xy);
  let v_107 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_107.xy, r7.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_108 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r6.ww);
  r7 = vec4<f32>(v_108.xy, r7.zw);
  let v_109 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_109.xy);
  r3.w = (r7.z * 0.125f);
  r7.x = fma((-(r2.wwww)).x, r7.x, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r3.w * r5.x);
  r5.x = (r2.w * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r7.x);
  let v_110 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  let v_111 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_111.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_112 = (v_8.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_112.xyz, r8.w);
    let v_113 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_113.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_114 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_114.xyz, r9.w);
    let v_115 = (r9.xyz + v_8.xyz);
    r9 = vec4<f32>(v_115.xyz, r9.w);
    let v_116 = bitcast<vec3<u32>>(r7.yyy);
    let v_117 = r8.xyz;
    let v_118 = select(r9.xyz, v_117, (v_116 != vec3<u32>()));
    r8 = vec4<f32>(v_118.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_119 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_119.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_120 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_120.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_121 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_121.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_122 = dot(r8.xyz, r1.yzw);
    r8.w = clamp(vec4<f32>(v_122, v_122, v_122, v_122).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_123 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    let v_124 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    let v_125 = fma(r3.xyz, r2.zzz, r8.xyz);
    r8 = vec4<f32>(v_125.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_126 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_126.xyz, r8.w);
    let v_127 = dot(r8.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r6.w);
    let v_128 = dot(r8.xyz, r1.yzw);
    r8.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r3.w * r7.y);
    let v_129 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_129.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_130 = bitcast<u32>(r7.z);
    let v_131 = r7.y;
    r5.w = select(r5.w, v_131, (v_130 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_132 = (v_8.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_132.xyz, r10.w);
      let v_133 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_133.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_134 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_134.xyz, r11.w);
      let v_135 = (r11.xyz + v_8.xyz);
      r11 = vec4<f32>(v_135.xyz, r11.w);
      let v_136 = bitcast<vec3<u32>>(r7.yyy);
      let v_137 = r10.xyz;
      let v_138 = select(r11.xyz, v_137, (v_136 != vec3<u32>()));
      r10 = vec4<f32>(v_138.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_139 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_139.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_140 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_140.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_141 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_141.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_142 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_143 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_143.xyz, r11.w);
      let v_144 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_144.xyz, r9.w);
      let v_145 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_146 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      let v_147 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r6.w);
      let v_148 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.w * r7.y);
      let v_149 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_149.xyz, r8.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_150 = (v_8.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      let v_151 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_152 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_152.xyz, r11.w);
      let v_153 = (r11.xyz + v_8.xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      let v_154 = bitcast<vec3<u32>>(r7.yyy);
      let v_155 = r10.xyz;
      let v_156 = select(r11.xyz, v_155, (v_154 != vec3<u32>()));
      r10 = vec4<f32>(v_156.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_157 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_157.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_158 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_159 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_159.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_160 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_161 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_162.xyz, r9.w);
      let v_163 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_164 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_164.xyz, r10.w);
      let v_165 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r6.w);
      let v_166 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.w * r7.y);
      let v_167 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_167.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_168 = (v_8.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[22u].w);
      let v_170 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      let v_171 = (r11.xyz + v_8.xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = bitcast<vec3<u32>>(r5.www);
      let v_173 = r10.xyz;
      let v_174 = select(r11.xyz, v_173, (v_172 != vec3<u32>()));
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_175 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_175.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_176 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r7.y);
      let v_177 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.y = dot(r10.xyz, v_177.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_178 = dot(r10.xyz, r1.yzw);
      r7.z = clamp(vec4<f32>(v_178, v_178, v_178, v_178).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r5.w * r7.y);
      let v_179 = (r7.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_180.xyz, r9.w);
      let v_181 = fma(r3.xyz, r2.zzz, r10.xyz);
      r3 = vec4<f32>(v_181.xyz, r3.w);
      r2.z = dot(r3.xyz, r3.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_182 = (r2.zzz * r3.xyz);
      r3 = vec4<f32>(v_182.xyz, r3.w);
      let v_183 = dot(r3.xyz, r4.xyz);
      r2.z = clamp(vec4<f32>(v_183, v_183, v_183, v_183).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r4.x = (r2.z * r2.z);
      r4.x = (r4.x * r4.x);
      r2.z = (r2.z * r4.x);
      r2.z = fma(cb12_12.tint_symbol_4[0u].x, r2.z, r6.w);
      let v_184 = dot(r3.xyz, r1.yzw);
      r3.x = clamp(vec4<f32>(v_184, v_184, v_184, v_184).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.w);
      r3.x = exp2(r3.x);
      r2.z = (r2.z * r3.x);
      r2.z = (r7.y * r2.z);
      r2.z = (r5.w * r2.z);
      r2.z = (r3.w * r2.z);
      let v_185 = fma(r2.zzz, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_185.xyz, r8.w);
    }
  }
  r2.z = (r7.x * r7.x);
  r2.w = (r2.w * r2.w);
  let v_186 = (r8.xyz * r2.www);
  r3 = vec4<f32>(v_186.xyz, r3.w);
  let v_187 = fma(r2.zzz, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_187.xyz, r3.w);
  let v_188 = fma(r5.xyz, r4.www, r3.xyz);
  r3 = vec4<f32>(v_188.xyz, r3.w);
  r1.x = fma(v3.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_189 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_189.xyz, r4.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_190 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_190.xyz, r5.w);
  let v_191 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_191.xyz, r5.w);
  let v_192 = fma(r4.xyz, r2.zzz, r5.xyz);
  r4 = vec4<f32>(v_192.xyz, r4.w);
  let v_193 = (r2.yyy * r4.xyz);
  r2 = vec4<f32>(r2.x, v_193.xyz);
  let v_194 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_194.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_195 = dot(r5.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_195, v_195, v_195, v_195).x, 0.0f, 1.0f);
  let v_196 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r4.xyz);
  r1 = vec4<f32>(v_196.xyz, r1.w);
  let v_197 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_197.xyz, r1.w);
  let v_198 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_198.xyz, r1.w);
  let v_199 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_199.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_200 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_200.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_201 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_201 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_202 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_202.xyz, r2.w);
    let v_203 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_204 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_205 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_205.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_206 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_206.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_207 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_207.xyz, r2.w);
    let v_208 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_208.xyz, r2.w);
    let v_209 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_209.xyz, r3.w);
    let v_210 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_210.xyz, r2.w);
    let v_211 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_212 = (r2.xyz + v_211.xyz);
    r2 = vec4<f32>(v_212.xyz, r2.w);
    let v_213 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_213.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_214 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_214.xyz, r3.w);
    let v_215 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_215.xy, r1.z, v_215.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_216 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_216.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_217 = -(r0.xyxz);
    let v_218 = fma(r1.xyw, r0.www, v_217.xyw);
    r1 = vec4<f32>(v_218.xy, r1.z, v_218.z);
    let v_219 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_219.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_220 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_220.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_221 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_221 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_222 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_222.xyz, r3.w);
    let v_223 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_224 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_224, v_224, v_224, v_224).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_225 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_225.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_226 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_226.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_227 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_227.xyz, r3.w);
    let v_228 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_228.xyz, r3.w);
    let v_229 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_229.xyz, r4.w);
    let v_230 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    let v_231 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_232 = (r3.xyz + v_231.xyz);
    r3 = vec4<f32>(v_232.xyz, r3.w);
    let v_233 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_233.x, r2.y, v_233.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_234 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_234.xyz, r3.w);
    let v_235 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_235.x, r2.y, v_235.yz);
    let v_236 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_236.x, r2.y, v_236.yz);
    let v_237 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_237.xyz, r1.w);
  }
  let v_238 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_238.xyz, o0.w);
}

fn v_3(v_239 : bool) {
  if (v_239) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_240 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_240);
  return o0;
}
