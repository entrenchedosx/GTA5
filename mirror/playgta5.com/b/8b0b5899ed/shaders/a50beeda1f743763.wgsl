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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
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
  r0.w = (r0.w * v0.w);
  let v_5 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(v4.xyzx);
  let v_8 = (v_7.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_9 = (r2.zzz * r3.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_11 = fma(r3.xyz, r2.zzz, v_10.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_12 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  r2.w = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_13 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  r3.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.w = ((-(r3.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r4.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_14 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_18.xyz, r8.w);
  let v_19 = &(x0[0u]);
  let v_20 = r8;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_21.xyz, r9.w);
  let v_22 = &(x0[1u]);
  let v_23 = r9;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_24.xyz, r10.w);
  let v_25 = &(x0[2u]);
  let v_26 = r10;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = &(x0[3u]);
  let v_29 = r7;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_31 = r11;
  r11 = vec4<f32>(v_31.x, v_30.x, v_31.z, v_30.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_32 = abs(r10.yyyy);
  r6.w = max(v_32.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_33 = (bitcast<u32>(r6.w) != 0u);
  let v_34 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_34, v_33);
  let v_35 = abs(r9.yyyy);
  r7.z = max(v_35.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_36 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_36 != 0u));
  let v_37 = abs(r8.yyyy);
  r7.z = max(v_37.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_38 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_38 != 0u));
  let v_39 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_39.xyz, r8.w);
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
  let v_40 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_40.xy, r10.z, v_40.z);
  r10.z = dpdx(r5.w);
  let v_41 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_41.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_42 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_42.xy, r8.zw);
  let v_43 = -(r8.xyxx);
  let v_44 = fma(r10.xz, r12.xz, v_43.xy);
  r13 = vec4<f32>(v_44.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_45 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_45.z);
  let v_46 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_46.xy, r8.zw);
  let v_47 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_47.xy, r8.zw);
  let v_48 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_48.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_49 = bitcast<u32>(r6.w);
  let v_50 = r5.w;
  r11.z = select(r8.z, v_50, (v_49 != 0u));
  r9.z = 0.0f;
  let v_51 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_51.xyz, r8.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_52.xy, r11.zw);
  let v_53 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_54.xy, r11.zw);
  let v_55 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_56.xy, r11.zw);
  let v_57 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_58.xy, r11.zw);
  let v_59 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_59.xyz, r14.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_60.xy, r11.zw);
  let v_61 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  let v_63 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_63.xyz, r16.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_65.xyz, r17.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_67.xyz, r18.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_69.xyz, r19.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_71.xyz, r20.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_73.xyz, r21.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_75.xyz, r22.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_77.xyz, r23.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_79.xyz, r24.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_81.xyz, r9.w);
  let v_82 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_82.xy, r8.z);
  let v_83 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_83.xy, r10.z);
  let v_84 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_84.xy, r12.z);
  let v_85 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_85.xy, r13.z);
  let v_86 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_86.xy, r14.z);
  let v_87 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_87.xy, r15.z);
  let v_88 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_88.xy, r16.z);
  let v_89 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_89.xy, r17.z);
  let v_90 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_90.xy, r18.z);
  let v_91 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_91.xy, r19.z);
  let v_92 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_92.xy, r20.z);
  let v_93 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_93.xy, r21.z);
  let v_94 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_94.xy, r22.z);
  let v_95 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_95.xy, r23.z);
  let v_96 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_96.xy, r24.z);
  let v_97 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_97.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_98 = abs(r7.yyyy);
  r6.w = max(v_98.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_99 = -(r4.wwww);
  r4.w = fma(r5.w, v_99.w, r4.w);
  let v_100 = dot(r1.yzw, v_10.xyz);
  r5.w = clamp(vec4<f32>(v_100, v_100, v_100, v_100).w, 0.0f, 1.0f);
  let v_101 = dot(r4.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_101, v_101, v_101, v_101).x, 0.0f, 1.0f);
  let v_102 = dot(r5.xyz, v_10.xyz);
  r7.y = clamp(vec4<f32>(v_102, v_102, v_102, v_102).y, 0.0f, 1.0f);
  let v_103 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_103.xy, r7.zw);
  let v_104 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_104.xy);
  let v_105 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_105.xy);
  let v_106 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_106.xy, r7.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_107 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r6.ww);
  r7 = vec4<f32>(v_107.xy, r7.zw);
  let v_108 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_108.xy);
  r7.z = (r7.z * 0.125f);
  r7.x = fma((-(r2.wwww)).x, r7.x, 1.0f);
  r5.x = dot(r1.yzw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r7.z * r5.x);
  r5.x = (r2.w * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r7.x);
  let v_109 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_109.xyz, r5.w);
  let v_110 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_111 = (v_7.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    let v_112 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_112.xyz, r9.w);
    r8.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r8.w = (r8.w * cb3_3.tint_symbol_2[19u].w);
    let v_113 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_113.xyz, r9.w);
    let v_114 = (r9.xyz + v_7.xyz);
    r9 = vec4<f32>(v_114.xyz, r9.w);
    let v_115 = bitcast<vec3<u32>>(r7.yyy);
    let v_116 = r8.xyz;
    let v_117 = select(r9.xyz, v_116, (v_115 != vec3<u32>()));
    r8 = vec4<f32>(v_117.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_118 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_118.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_119 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_119.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r8.w);
    let v_120 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.w = dot(r8.xyz, v_120.xyz);
    r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_121 = dot(r8.xyz, r1.yzw);
    r9.x = clamp(vec4<f32>(v_121, v_121, v_121, v_121).x, 0.0f, 1.0f);
    r8.w = (r8.w * r9.x);
    r9.x = (r7.y * r8.w);
    let v_122 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    let v_124 = fma(r3.xyz, r2.zzz, r8.xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_125 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_125.xyz, r8.w);
    let v_126 = dot(r8.xyz, r4.xyz);
    r9.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
    let v_127 = dot(r8.xyz, r1.yzw);
    r8.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r8.x = (r8.w * r8.x);
    r7.y = (r7.y * r8.x);
    r7.y = (r7.z * r7.y);
    let v_128 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_128.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_129 = bitcast<u32>(r8.w);
    let v_130 = r7.y;
    r5.w = select(r5.w, v_130, (v_129 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_131 = (v_7.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_131.xyz, r10.w);
      let v_132 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_132.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[20u].w);
      let v_133 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_133.xyz, r11.w);
      let v_134 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_134.xyz, r11.w);
      let v_135 = bitcast<vec3<u32>>(r7.yyy);
      let v_136 = r10.xyz;
      let v_137 = select(r11.xyz, v_136, (v_135 != vec3<u32>()));
      r10 = vec4<f32>(v_137.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_138 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_138.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_139 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_139.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r8.w);
      let v_140 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.w = dot(r10.xyz, v_140.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_141 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_142 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      let v_143 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_143.xyz, r9.w);
      let v_144 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_144.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_145 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      let v_146 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_147 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_148 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_148.xyz, r8.w);
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
      let v_149 = (v_7.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_149.xyz, r10.w);
      let v_150 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[21u].w);
      let v_151 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_152.xyz, r11.w);
      let v_153 = bitcast<vec3<u32>>(r7.yyy);
      let v_154 = r10.xyz;
      let v_155 = select(r11.xyz, v_154, (v_153 != vec3<u32>()));
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_156 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_156.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_157 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r8.w);
      let v_158 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.w = dot(r10.xyz, v_158.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_159 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_160 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_161.xyz, r9.w);
      let v_162 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_163 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_165 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_165, v_165, v_165, v_165).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_166 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_166.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_167 = (v_7.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      let v_168 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_169 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      let v_171 = bitcast<vec3<u32>>(r7.yyy);
      let v_172 = r10.xyz;
      let v_173 = select(r11.xyz, v_172, (v_171 != vec3<u32>()));
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_174 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_175 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r8.w);
      let v_176 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r10.xyz, v_176.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_177 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_178 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_179.xyz, r9.w);
      let v_180 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_181 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      let v_182 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_183 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_183, v_183, v_183, v_183).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_184 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_184.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_185 = (v_7.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      let v_186 = (v4.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[23u].w);
      let v_187 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_188.xyz, r11.w);
      let v_189 = bitcast<vec3<u32>>(r7.yyy);
      let v_190 = r10.xyz;
      let v_191 = select(r11.xyz, v_190, (v_189 != vec3<u32>()));
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_192 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_193 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r8.w);
      let v_194 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.w = dot(r10.xyz, v_194.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_195 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_196 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_197.xyz, r9.w);
      let v_198 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_199 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_199.xyz, r10.w);
      let v_200 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_201 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_201, v_201, v_201, v_201).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_202 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_202.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_203 = (v_7.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      let v_204 = (v4.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[24u].w);
      let v_205 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_206.xyz, r11.w);
      let v_207 = bitcast<vec3<u32>>(r7.yyy);
      let v_208 = r10.xyz;
      let v_209 = select(r11.xyz, v_208, (v_207 != vec3<u32>()));
      r10 = vec4<f32>(v_209.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_210 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_210.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_211 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r8.w);
      let v_212 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.w = dot(r10.xyz, v_212.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_213 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_213, v_213, v_213, v_213).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_214 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_214.xyz, r11.w);
      let v_215 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_215.xyz, r9.w);
      let v_216 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_217 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_217.xyz, r10.w);
      let v_218 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_218, v_218, v_218, v_218).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_219 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_219, v_219, v_219, v_219).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_220 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_220.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_221 = (v_7.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_221.xyz, r10.w);
      let v_222 = (v4.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      r8.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[25u].w);
      let v_223 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      let v_224 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_224.xyz, r11.w);
      let v_225 = bitcast<vec3<u32>>(r7.yyy);
      let v_226 = r10.xyz;
      let v_227 = select(r11.xyz, v_226, (v_225 != vec3<u32>()));
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_228 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_228.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_229 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r8.w);
      let v_230 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.w = dot(r10.xyz, v_230.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_231 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_231, v_231, v_231, v_231).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r7.y * r8.w);
      let v_232 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      let v_233 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_233.xyz, r9.w);
      let v_234 = fma(r3.xyz, r2.zzz, r10.xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_235 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_236, v_236, v_236, v_236).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_237 = dot(r10.xyz, r1.yzw);
      r10.x = clamp(vec4<f32>(v_237, v_237, v_237, v_237).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r7.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r8.w = (r8.w * r9.w);
      r7.y = (r7.y * r8.w);
      r7.y = (r7.z * r7.y);
      let v_238 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_238.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_239 = (v_7.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      let v_240 = (v4.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_241 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      let v_242 = (r11.xyz + v_7.xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = bitcast<vec3<u32>>(r5.www);
      let v_244 = r10.xyz;
      let v_245 = select(r11.xyz, v_244, (v_243 != vec3<u32>()));
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_246 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_247 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r7.y);
      let v_248 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_248.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_249 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_249, v_249, v_249, v_249).w, 0.0f, 1.0f);
      r7.y = (r7.y * r8.w);
      r8.w = (r5.w * r7.y);
      let v_250 = (r8.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_251.xyz, r9.w);
      let v_252 = fma(r3.xyz, r2.zzz, r10.xyz);
      r3 = vec4<f32>(v_252.xyz, r3.w);
      r2.z = dot(r3.xyz, r3.xyz);
      r2.z = inverseSqrt(r2.z);
      let v_253 = (r2.zzz * r3.xyz);
      r3 = vec4<f32>(v_253.xyz, r3.w);
      let v_254 = dot(r3.xyz, r4.xyz);
      r2.z = clamp(vec4<f32>(v_254, v_254, v_254, v_254).z, 0.0f, 1.0f);
      r2.z = ((-(r2.zzzz)).z + 1.0f);
      r8.w = (r2.z * r2.z);
      r8.w = (r8.w * r8.w);
      r2.z = (r2.z * r8.w);
      r2.z = fma(cb12_12.tint_symbol_4[0u].x, r2.z, r6.w);
      let v_255 = dot(r3.xyz, r1.yzw);
      r3.x = clamp(vec4<f32>(v_255, v_255, v_255, v_255).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r7.w);
      r3.x = exp2(r3.x);
      r2.z = (r2.z * r3.x);
      r2.z = (r7.y * r2.z);
      r2.z = (r5.w * r2.z);
      r2.z = (r7.z * r2.z);
      let v_256 = fma(r2.zzz, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_256.xyz, r8.w);
    }
  }
  r2.z = (r7.x * r7.x);
  r2.w = (r2.w * r2.w);
  let v_257 = (r8.xyz * r2.www);
  r3 = vec4<f32>(v_257.xyz, r3.w);
  let v_258 = fma(r2.zzz, r9.xyz, r3.xyz);
  r3 = vec4<f32>(v_258.xyz, r3.w);
  let v_259 = fma(r5.xyz, r4.www, r3.xyz);
  r3 = vec4<f32>(v_259.xyz, r3.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_260 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_260.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_261 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(r7.x, v_261.xyz);
  let v_262 = (r7.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(r7.x, v_262.xyz);
  let v_263 = fma(r5.xyz, r2.zzz, r7.yzw);
  r5 = vec4<f32>(v_263.xyz, r5.w);
  let v_264 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_264.xyz, r5.w);
  let v_265 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r7 = vec4<f32>(r7.x, v_265.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_266 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_266, v_266, v_266, v_266).x, 0.0f, 1.0f);
  let v_267 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r7.yzw);
  r7 = vec4<f32>(r7.x, v_267.xyz);
  let v_268 = fma(r7.yzw, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_268.xyz, r5.w);
  let v_269 = (r7.xxx * r5.xyz);
  r5 = vec4<f32>(v_269.xyz, r5.w);
  let v_270 = fma(r5.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_270.xyz, r0.w);
  r1.x = ((-(r7.xxxx)).x + 1.0f);
  r2.z = dot((-(r4.xyzx)).xyz, r1.yzw);
  r2.z = (r2.z + r2.z);
  let v_271 = -(r2.zzzz);
  let v_272 = -(r4.xxyz);
  let v_273 = fma(r1.yzw, v_271.yzw, v_272.yzw);
  r1 = vec4<f32>(r1.x, v_273.xyz);
  let v_274 = clamp(((r3.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_274.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r2.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r2.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.z * r2.z);
  r2.z = fma(r2.z, 5.0f, r3.x);
  let v_275 = bitcast<u32>(r3.y);
  let v_276 = r3.z;
  r2.z = select(r2.z, v_276, (v_275 != 0u));
  let v_277 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_277.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_278 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_278.xyz, r3.w);
  let v_279 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_279.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_280 = bitcast<vec2<u32>>(r1.yy);
  let v_281 = r3.xy;
  let v_282 = select(r3.zy, v_281, (v_280 != vec2<u32>()));
  let v_283 = r1;
  r1 = vec4<f32>(v_283.x, v_282.xy, v_283.w);
  let v_284 = r2.z;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_284);
  r1.y = max(r2.y, r2.x);
  let v_285 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_285.xyz);
  let v_286 = (r2.www * r1.yzw);
  r2 = vec4<f32>(v_286.xyz, r2.w);
  let v_287 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_287.xyz, r2.w);
  let v_288 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_288.xyz);
  let v_289 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_289.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_290 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_290.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_291 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_291 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_292 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    let v_293 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_293, v_293, v_293, v_293).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_294 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_294, v_294, v_294, v_294).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_295 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_295.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_296 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_296.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_297 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_297.xyz, r2.w);
    let v_298 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    let v_299 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_299.xyz, r3.w);
    let v_300 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_300.xyz, r2.w);
    let v_301 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_302 = (r2.xyz + v_301.xyz);
    r2 = vec4<f32>(v_302.xyz, r2.w);
    let v_303 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_303.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_304 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_304.xyz, r3.w);
    let v_305 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_305.xy, r1.z, v_305.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_306 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_306.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_307 = -(r0.xyxz);
    let v_308 = fma(r1.xyw, r0.www, v_307.xyw);
    r1 = vec4<f32>(v_308.xy, r1.z, v_308.z);
    let v_309 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_309.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_310 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_310.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_311 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_311 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_312 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_313, v_313, v_313, v_313).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_314 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_314, v_314, v_314, v_314).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_315 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_315.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_316 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_316.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_317 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_319.xyz, r4.w);
    let v_320 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_320.xyz, r3.w);
    let v_321 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_322 = (r3.xyz + v_321.xyz);
    r3 = vec4<f32>(v_322.xyz, r3.w);
    let v_323 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_323.x, r2.y, v_323.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_324 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_324.xyz, r3.w);
    let v_325 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_325.x, r2.y, v_325.yz);
    let v_326 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_326.x, r2.y, v_326.yz);
    let v_327 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_327.xyz, r1.w);
  }
  let v_328 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_328.xyz, o0.w);
}

fn v_3(v_329 : bool) {
  if (v_329) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_330 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v_330);
  return o0;
}
