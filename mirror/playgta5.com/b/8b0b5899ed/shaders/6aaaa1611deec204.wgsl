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

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  r2.x = dot(v3.xyz, v3.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_5 = (r2.xxx * v3.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r2.w = dot((-(r2.xyzx)).xyz, r1.yzw);
  r2.w = (r2.w + r2.w);
  let v_6 = -(r2.wwww);
  let v_7 = -(r2.xyzx);
  let v_8 = fma(r1.yzw, v_6.xyz, v_7.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r2.y = dot(r2.xyz, r2.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_9 = fma(r2.xz, r2.yy, vec2<f32>(1.0f));
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (r2.xy * vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
  let v_11 = (r2.xyz * cb12_12.tint_symbol_4[0u].www);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r0.w = (r0.w * v0.w);
  let v_12 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_12.xy, r3.zw);
  let v_13 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = -(v4.xyzx);
  let v_15 = (v_14.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_16 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_18 = fma(r4.xyz, r2.www, v_17.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r3.z = dot(r6.xyz, r6.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_19 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  r3.z = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  let v_20 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_20.xy, r3.zw);
  r3.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.w = ((-(r3.wwww)).w + cb12_12.tint_symbol_4[0u].y);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r4.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_21 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_24.xyz, r8.w);
  let v_25 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_25.xyz, r9.w);
  let v_26 = &(x0[0u]);
  let v_27 = r9;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_28.xyz, r10.w);
  let v_29 = &(x0[1u]);
  let v_30 = r10;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_31.xyz, r11.w);
  let v_32 = &(x0[2u]);
  let v_33 = r11;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = &(x0[3u]);
  let v_36 = r8;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_38 = r12;
  r12 = vec4<f32>(v_38.x, v_37.x, v_38.z, v_37.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_39 = abs(r11.yyyy);
  r6.w = max(v_39.w, abs(r11.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_40 = (bitcast<u32>(r6.w) != 0u);
  let v_41 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_41, v_40);
  let v_42 = abs(r10.yyyy);
  r7.w = max(v_42.w, abs(r10.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r5.w)));
  let v_43 = bitcast<u32>(r7.w);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_43 != 0u));
  let v_44 = abs(r9.yyyy);
  r7.w = max(v_44.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r5.w)));
  let v_45 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_45 != 0u));
  let v_46 = x0[bitcast<i32>(r5.w)];
  r9 = vec4<f32>(v_46.xyz, r9.w);
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
  let v_47 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_47.xy, r11.z, v_47.z);
  r11.z = dpdx(r5.w);
  let v_48 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_48.xyz, r13.w);
  r13.w = dpdy(r5.w);
  let v_49 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_49.xy);
  let v_50 = -(r8.zwzz);
  let v_51 = fma(r11.xz, r13.xz, v_50.xy);
  r14 = vec4<f32>(v_51.xy, r14.zw);
  r8.z = (1.0f / r14.x);
  r8.w = (r11.z * r13.y);
  let v_52 = -(r8.wwww);
  r14.z = fma(r11.x, r13.w, v_52.z);
  let v_53 = (r8.zz * r14.yz);
  r8 = vec4<f32>(r8.xy, v_53.xy);
  let v_54 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_54.xy);
  let v_55 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_55.xy);
  r5.w = fma((-(r7.wwww)).w, r8.z, r5.w);
  r5.w = fma((-(r7.wwww)).w, r8.w, r5.w);
  let v_56 = bitcast<u32>(r6.w);
  let v_57 = r5.w;
  r12.z = select(r9.z, v_57, (v_56 != 0u));
  r10.z = 0.0f;
  let v_58 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_58.xyz, r9.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_59.xy, r12.zw);
  let v_60 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_60.xyz, r11.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_61.xy, r12.zw);
  let v_62 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_62.xyz, r13.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  let v_64 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_64.xyz, r14.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_66.xyz, r15.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_68.xyz, r16.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_70.xyz, r17.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_72.xyz, r18.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_74.xyz, r19.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_76.xyz, r20.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_78.xyz, r21.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_80.xyz, r22.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_82.xyz, r23.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_84.xyz, r24.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_86.xyz, r25.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_88.xyz, r10.w);
  let v_89 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_89.xy, r9.z);
  let v_90 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_90.xy, r11.z);
  let v_91 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_91.xy, r13.z);
  let v_92 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_92.xy, r14.z);
  let v_93 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_93.xy, r15.z);
  let v_94 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_94.xy, r16.z);
  let v_95 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_95.xy, r17.z);
  let v_96 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_96.xy, r18.z);
  let v_97 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_97.xy, r19.z);
  let v_98 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_98.xy, r20.z);
  let v_99 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_99.xy, r21.z);
  let v_100 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_100.xy, r22.z);
  let v_101 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_101.xy, r23.z);
  let v_102 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_102.xy, r24.z);
  let v_103 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_103.xy, r25.z);
  let v_104 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_104.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r5.w = dot(r9, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_105 = abs(r8.yyyy);
  r6.w = max(v_105.w, abs(r8.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v4.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_106 = -(r4.wwww);
  r4.w = fma(r5.w, v_106.w, r4.w);
  let v_107 = dot(r1.yzw, v_17.xyz);
  r5.w = clamp(vec4<f32>(v_107, v_107, v_107, v_107).w, 0.0f, 1.0f);
  let v_108 = dot(r5.xyz, r1.yzw);
  r8.x = clamp(vec4<f32>(v_108, v_108, v_108, v_108).x, 0.0f, 1.0f);
  let v_109 = dot(r6.xyz, v_17.xyz);
  r8.y = clamp(vec4<f32>(v_109, v_109, v_109, v_109).y, 0.0f, 1.0f);
  let v_110 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_110.xy, r8.zw);
  let v_111 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_111.xy);
  let v_112 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_112.xy);
  let v_113 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_113.xy, r8.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_114 = fma(cb12_12.tint_symbol_4[0u].xx, r8.xy, r6.ww);
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_115.xy);
  r7.w = (r8.z * 0.125f);
  r8.x = fma((-(r3.zzzz)).x, r8.x, 1.0f);
  r6.x = dot(r1.yzw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r7.w * r6.x);
  r6.x = (r3.z * r6.x);
  r6.x = (r5.w * r6.x);
  r5.w = (r5.w * r8.x);
  let v_116 = fma(r0.xyz, r5.www, r6.xxx);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  let v_117 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_117.xyz, r6.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_118 = (v_14.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_118.xyz, r9.w);
    let v_119 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_119.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_120 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_120.xyz, r10.w);
    let v_121 = (r10.xyz + v_14.xyz);
    r10 = vec4<f32>(v_121.xyz, r10.w);
    let v_122 = bitcast<vec3<u32>>(r8.yyy);
    let v_123 = r9.xyz;
    let v_124 = select(r10.xyz, v_123, (v_122 != vec3<u32>()));
    r9 = vec4<f32>(v_124.xyz, r9.w);
    r8.y = dot(r9.xyz, r9.xyz);
    let v_125 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_125.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_126 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[11u].w);
    r8.y = (r8.y / r8.z);
    let v_127 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_127.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_128 = dot(r9.xyz, r1.yzw);
    r9.w = clamp(vec4<f32>(v_128, v_128, v_128, v_128).w, 0.0f, 1.0f);
    r8.z = (r8.z * r9.w);
    r9.w = (r8.y * r8.z);
    let v_129 = (r9.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_129.xyz, r10.w);
    let v_130 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_130.xyz, r10.w);
    let v_131 = fma(r4.xyz, r2.www, r9.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_132 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_132.xyz, r9.w);
    let v_133 = dot(r9.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.w = (r9.w * r9.w);
    r10.w = (r10.w * r10.w);
    r9.w = (r9.w * r10.w);
    r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
    let v_134 = dot(r9.xyz, r1.yzw);
    r9.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.w * r9.x);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r9.w);
    r8.z = (r8.z * r9.x);
    r8.y = (r8.y * r8.z);
    r8.y = (r7.w * r8.y);
    let v_135 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
  }
  r8.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.y) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    let v_136 = bitcast<u32>(r8.z);
    let v_137 = r8.y;
    r5.w = select(r5.w, v_137, (v_136 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_138 = (v_14.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_138.xyz, r11.w);
      let v_139 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_139.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_140 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_140.xyz, r12.w);
      let v_141 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_141.xyz, r12.w);
      let v_142 = bitcast<vec3<u32>>(r8.yyy);
      let v_143 = r11.xyz;
      let v_144 = select(r12.xyz, v_143, (v_142 != vec3<u32>()));
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_145 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_145.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_146 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[12u].w);
      r8.y = (r8.y / r8.z);
      let v_147 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_147.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_148 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_149 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_149.xyz, r12.w);
      let v_150 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      let v_151 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_152 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_152.xyz, r11.w);
      let v_153 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_154 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_155 = fma(r8.yyy, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_155.xyz, r9.w);
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
      let v_156 = (v_14.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_157.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_158 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_158.xyz, r12.w);
      let v_159 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_159.xyz, r12.w);
      let v_160 = bitcast<vec3<u32>>(r8.yyy);
      let v_161 = r11.xyz;
      let v_162 = select(r12.xyz, v_161, (v_160 != vec3<u32>()));
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_163 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_163.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_164 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[13u].w);
      r8.y = (r8.y / r8.z);
      let v_165 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_165.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_166 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_167 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_167.xyz, r12.w);
      let v_168 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_170 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      let v_171 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_172 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_173 = fma(r8.yyy, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_173.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_174 = (v_14.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_175.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[22u].w);
      let v_176 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_176.xyz, r12.w);
      let v_177 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_177.xyz, r12.w);
      let v_178 = bitcast<vec3<u32>>(r8.yyy);
      let v_179 = r11.xyz;
      let v_180 = select(r12.xyz, v_179, (v_178 != vec3<u32>()));
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_181 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_181.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_182 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[14u].w);
      r8.y = (r8.y / r8.z);
      let v_183 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.z = dot(r11.xyz, v_183.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_184 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_184, v_184, v_184, v_184).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_185 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_185.xyz, r12.w);
      let v_186 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_188 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_188.xyz, r11.w);
      let v_189 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_190 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_191 = fma(r8.yyy, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_192 = (v_14.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = (v4.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_193.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[23u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[23u].w);
      let v_194 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_194.xyz, r12.w);
      let v_195 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_195.xyz, r12.w);
      let v_196 = bitcast<vec3<u32>>(r8.yyy);
      let v_197 = r11.xyz;
      let v_198 = select(r12.xyz, v_197, (v_196 != vec3<u32>()));
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_199 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_199.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_200 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[15u].w);
      r8.y = (r8.y / r8.z);
      let v_201 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.z = dot(r11.xyz, v_201.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_202 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_202, v_202, v_202, v_202).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_203 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r12 = vec4<f32>(v_203.xyz, r12.w);
      let v_204 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      let v_205 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_206 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_206.xyz, r11.w);
      let v_207 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_208 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_209 = fma(r8.yyy, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_209.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_210 = (v_14.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_210.xyz, r11.w);
      let v_211 = (v4.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_211.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[24u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[24u].w);
      let v_212 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_212.xyz, r12.w);
      let v_213 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_213.xyz, r12.w);
      let v_214 = bitcast<vec3<u32>>(r8.yyy);
      let v_215 = r11.xyz;
      let v_216 = select(r12.xyz, v_215, (v_214 != vec3<u32>()));
      r11 = vec4<f32>(v_216.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_217 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_217.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_218 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_218.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[16u].w);
      r8.y = (r8.y / r8.z);
      let v_219 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.z = dot(r11.xyz, v_219.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_220 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_221 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r12 = vec4<f32>(v_221.xyz, r12.w);
      let v_222 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_224 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_224.xyz, r11.w);
      let v_225 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_226 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_227 = fma(r8.yyy, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_227.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_228 = (v_14.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_228.xyz, r11.w);
      let v_229 = (v4.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_229.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[25u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[25u].w);
      let v_230 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_230.xyz, r12.w);
      let v_231 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_231.xyz, r12.w);
      let v_232 = bitcast<vec3<u32>>(r8.yyy);
      let v_233 = r11.xyz;
      let v_234 = select(r12.xyz, v_233, (v_232 != vec3<u32>()));
      r11 = vec4<f32>(v_234.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_235 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_235.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_236 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[17u].w);
      r8.y = (r8.y / r8.z);
      let v_237 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.z = dot(r11.xyz, v_237.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_238 = dot(r11.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_239 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r12 = vec4<f32>(v_239.xyz, r12.w);
      let v_240 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = fma(r4.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_242 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].x, r9.w, r6.w);
      let v_244 = dot(r11.xyz, r1.yzw);
      r10.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r7.w * r8.y);
      let v_245 = fma(r8.yyy, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_245.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_246 = (v_14.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = (v4.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r12 = vec4<f32>(v_247.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_2[26u].w);
      let v_248 = fma(cb3_3.tint_symbol_2[18u].xyz, r8.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r12 = vec4<f32>(v_248.xyz, r12.w);
      let v_249 = (r12.xyz + v_14.xyz);
      r12 = vec4<f32>(v_249.xyz, r12.w);
      let v_250 = bitcast<vec3<u32>>(r5.www);
      let v_251 = r11.xyz;
      let v_252 = select(r12.xyz, v_251, (v_250 != vec3<u32>()));
      r11 = vec4<f32>(v_252.xyz, r11.w);
      r5.w = dot(r11.xyz, r11.xyz);
      let v_253 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_253.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_254 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r8.y);
      let v_255 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r8.y = dot(r11.xyz, v_255.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_256 = dot(r11.xyz, r1.yzw);
      r8.z = clamp(vec4<f32>(v_256, v_256, v_256, v_256).z, 0.0f, 1.0f);
      r8.y = (r8.y * r8.z);
      r8.z = (r5.w * r8.y);
      let v_257 = (r8.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r12 = vec4<f32>(v_257.xyz, r12.w);
      let v_258 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      let v_259 = fma(r4.xyz, r2.www, r11.xyz);
      r4 = vec4<f32>(v_259.xyz, r4.w);
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_260 = (r2.www * r4.xyz);
      r4 = vec4<f32>(v_260.xyz, r4.w);
      let v_261 = dot(r4.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r5.x = (r2.w * r2.w);
      r5.x = (r5.x * r5.x);
      r2.w = (r2.w * r5.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].x, r2.w, r6.w);
      let v_262 = dot(r4.xyz, r1.yzw);
      r4.x = clamp(vec4<f32>(v_262, v_262, v_262, v_262).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = (r8.y * r2.w);
      r2.w = (r5.w * r2.w);
      r2.w = (r7.w * r2.w);
      let v_263 = fma(r2.www, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_263.xyz, r9.w);
    }
  }
  r2.w = (r8.x * r8.x);
  r3.z = (r3.z * r3.z);
  let v_264 = (r9.xyz * r3.zzz);
  r4 = vec4<f32>(v_264.xyz, r4.w);
  let v_265 = fma(r2.www, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_265.xyz, r4.w);
  let v_266 = fma(r6.xyz, r4.www, r4.xyz);
  r4 = vec4<f32>(v_266.xyz, r4.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_267 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_267.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_268 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_268.xyz, r6.w);
  let v_269 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_269.xyz, r6.w);
  let v_270 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_270.xyz, r5.w);
  let v_271 = (r3.yyy * r5.xyz);
  r5 = vec4<f32>(v_271.xyz, r5.w);
  let v_272 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_272.xyz, r6.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_273 = dot(r9.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_273, v_273, v_273, v_273).x, 0.0f, 1.0f);
  let v_274 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_274.xyz, r1.w);
  let v_275 = fma(r1.xyz, r3.xxx, r5.xyz);
  r1 = vec4<f32>(v_275.xyz, r1.w);
  let v_276 = (r8.xxx * r1.xyz);
  r1 = vec4<f32>(v_276.xyz, r1.w);
  let v_277 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_277.xyz, r0.w);
  r1.x = ((-(r8.xxxx)).x + 1.0f);
  r1.y = max(r3.y, r3.x);
  let v_278 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_278.xyz);
  r2.x = clamp(((r3.wwww * vec4<f32>(0.00177619897294789553f))).x, 0.0f, 1.0f);
  let v_279 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(v_279.xyz, r2.w);
  let v_280 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_280.xyz, r2.w);
  let v_281 = fma(r1.yzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(r1.x, v_281.xyz);
  let v_282 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_282.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_283 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_283.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_284 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_284 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_285 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_285.xyz, r2.w);
    let v_286 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_287 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_288 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_288.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_289 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_289.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_290 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_290.xyz, r2.w);
    let v_291 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_291.xyz, r2.w);
    let v_292 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_292.xyz, r3.w);
    let v_293 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_293.xyz, r2.w);
    let v_294 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_295 = (r2.xyz + v_294.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_297 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_297.xyz, r3.w);
    let v_298 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_298.xy, r1.z, v_298.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_299 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_299.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_300 = -(r0.xyxz);
    let v_301 = fma(r1.xyw, r0.www, v_300.xyw);
    r1 = vec4<f32>(v_301.xy, r1.z, v_301.z);
    let v_302 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_302.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_303 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_303.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_304 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_304 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_305 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_305.xyz, r3.w);
    let v_306 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_306, v_306, v_306, v_306).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_307 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_307, v_307, v_307, v_307).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_308 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_308.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_309 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_309.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_310 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_310.xyz, r3.w);
    let v_311 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_312.xyz, r4.w);
    let v_313 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_315 = (r3.xyz + v_314.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_316.x, r2.y, v_316.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_317 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_318.x, r2.y, v_318.yz);
    let v_319 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_319.x, r2.y, v_319.yz);
    let v_320 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_320.xyz, r1.w);
  }
  let v_321 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_321.xyz, o0.w);
}

fn v_3(v_322 : bool) {
  if (v_322) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_323 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v_323);
  return o0;
}
