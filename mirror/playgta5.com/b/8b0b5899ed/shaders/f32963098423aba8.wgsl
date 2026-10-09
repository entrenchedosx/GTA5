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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v4 = v_2;
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.w = dot(r0.xyz, cb12_12.tint_symbol_4[0u].xyz);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r0 = vec4<f32>(vec3<f32>(1.0f), r0.w);
  r0 = (r0 * v0);
  let v_4 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(v3.xyzx);
  let v_6 = (v_5.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_7 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_9 = fma(r2.xyz, r2.www, v_8.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_10 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r3.w = clamp(cb12_12.tint_symbol_4[1u].y, 0.0f, 1.0f);
  let v_11 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r5 = vec4<f32>(v_11.xy, r5.zw);
  r4.w = (cb12_12.tint_symbol_4[1u].x + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.z = ((-(r4.wwww)).z + cb12_12.tint_symbol_4[1u].x);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.z, 3.0f, r4.w);
  r5.z = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_12 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_12.xyz, r6.w);
  let v_13 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_13.xyz, r7.w);
  let v_14 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_16.xyz, r8.w);
  let v_17 = &(x0[0u]);
  let v_18 = r8;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_19.xyz, r9.w);
  let v_20 = &(x0[1u]);
  let v_21 = r9;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_22.xyz, r10.w);
  let v_23 = &(x0[2u]);
  let v_24 = r10;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = &(x0[3u]);
  let v_27 = r7;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_29 = r11;
  r11 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_30 = abs(r10.yyyy);
  r6.w = max(v_30.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_31 = (bitcast<u32>(r6.w) != 0u);
  let v_32 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_32, v_31);
  let v_33 = abs(r9.yyyy);
  r7.z = max(v_33.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_34 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_34 != 0u));
  let v_35 = abs(r8.yyyy);
  r7.z = max(v_35.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_36 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_36 != 0u));
  let v_37 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_37.xyz, r8.w);
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
  let v_38 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_38.xy, r10.z, v_38.z);
  r10.z = dpdx(r5.w);
  let v_39 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_39.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_40 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_40.xy, r8.zw);
  let v_41 = -(r8.xyxx);
  let v_42 = fma(r10.xz, r12.xz, v_41.xy);
  r13 = vec4<f32>(v_42.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_43 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_43.z);
  let v_44 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_44.xy, r8.zw);
  let v_45 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_45.xy, r8.zw);
  let v_46 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_46.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_47 = bitcast<u32>(r6.w);
  let v_48 = r5.w;
  r11.z = select(r8.z, v_48, (v_47 != 0u));
  r9.z = 0.0f;
  let v_49 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_49.xyz, r8.w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_50.xy, r11.zw);
  let v_51 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_51.xyz, r10.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_52.xy, r11.zw);
  let v_53 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_53.xyz, r12.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_54.xy, r11.zw);
  let v_55 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_55.xyz, r13.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_56.xy, r11.zw);
  let v_57 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_57.xyz, r14.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_58.xy, r11.zw);
  let v_59 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_59.xyz, r15.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_60.xy, r11.zw);
  let v_61 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_61.xyz, r16.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  let v_63 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_63.xyz, r17.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_65.xyz, r18.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_67.xyz, r19.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_69.xyz, r20.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_71.xyz, r21.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_73.xyz, r22.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_75.xyz, r23.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_77.xyz, r24.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_79.xyz, r9.w);
  let v_80 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_80.xy, r8.z);
  let v_81 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_81.xy, r10.z);
  let v_82 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_82.xy, r12.z);
  let v_83 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_83.xy, r13.z);
  let v_84 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_84.xy, r14.z);
  let v_85 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_85.xy, r15.z);
  let v_86 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_86.xy, r16.z);
  let v_87 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_87.xy, r17.z);
  let v_88 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_88.xy, r18.z);
  let v_89 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_89.xy, r19.z);
  let v_90 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_90.xy, r20.z);
  let v_91 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_91.xy, r21.z);
  let v_92 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_92.xy, r22.z);
  let v_93 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_93.xy, r23.z);
  let v_94 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_94.xy, r24.z);
  let v_95 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_95.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r5.z = clamp(fma(r5.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_96 = abs(r7.yyyy);
  r6.w = max(v_96.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r5.z = ((-(r5.zzzz)).z + 1.0f);
  r5.z = (r6.w * r5.z);
  r5.z = fma(r5.w, 0.0625f, r5.z);
  r5.z = (r5.z * r5.z);
  r5.z = min(r5.z, 1.0f);
  r5.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_97 = -(r5.zzzz);
  r5.z = fma(r5.w, v_97.z, r5.z);
  let v_98 = dot(r1.yzw, v_8.xyz);
  r5.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
  let v_99 = dot(r3.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_99, v_99, v_99, v_99).x, 0.0f, 1.0f);
  let v_100 = dot(r4.xyz, v_8.xyz);
  r7.y = clamp(vec4<f32>(v_100, v_100, v_100, v_100).y, 0.0f, 1.0f);
  let v_101 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_101.xy, r7.zw);
  let v_102 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_102.xy);
  let v_103 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_103.xy);
  let v_104 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_104.xy, r7.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].wwww)).w + 1.0f);
  let v_105 = fma(cb12_12.tint_symbol_4[0u].ww, r7.xy, r6.ww);
  r7 = vec4<f32>(v_105.xy, r7.zw);
  let v_106 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_106.xy);
  r4.w = (r7.z * 0.125f);
  r7.x = fma((-(r3.wwww)).x, r7.x, 1.0f);
  r4.x = dot(r1.yzw, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r7.w);
  r4.x = exp2(r4.x);
  r4.x = (r7.y * r4.x);
  r4.x = (r4.w * r4.x);
  r4.x = (r3.w * r4.x);
  r4.x = (r5.w * r4.x);
  r4.y = (r5.w * r7.x);
  let v_107 = fma(r0.xyz, r4.yyy, r4.xxx);
  r4 = vec4<f32>(v_107.xyz, r4.w);
  let v_108 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_109 = (v_5.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_109.xyz, r8.w);
    let v_110 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_110.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_111 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_111.xyz, r9.w);
    let v_112 = (r9.xyz + v_5.xyz);
    r9 = vec4<f32>(v_112.xyz, r9.w);
    let v_113 = bitcast<vec3<u32>>(r7.yyy);
    let v_114 = r8.xyz;
    let v_115 = select(r9.xyz, v_114, (v_113 != vec3<u32>()));
    r8 = vec4<f32>(v_115.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_116 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_116.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_117 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_117.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_118 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_118.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_119 = dot(r8.xyz, r1.yzw);
    r8.w = clamp(vec4<f32>(v_119, v_119, v_119, v_119).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_120 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    let v_121 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = fma(r2.xyz, r2.www, r8.xyz);
    r8 = vec4<f32>(v_122.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_123 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_123.xyz, r8.w);
    let v_124 = dot(r8.xyz, r3.xyz);
    r8.w = clamp(vec4<f32>(v_124, v_124, v_124, v_124).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
    let v_125 = dot(r8.xyz, r1.yzw);
    r8.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r4.w * r7.y);
    let v_126 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_126.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_127 = bitcast<u32>(r7.z);
    let v_128 = r7.y;
    r5.w = select(r5.w, v_128, (v_127 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_129 = (v_5.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_129.xyz, r10.w);
      let v_130 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_130.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_131 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_131.xyz, r11.w);
      let v_132 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_132.xyz, r11.w);
      let v_133 = bitcast<vec3<u32>>(r7.yyy);
      let v_134 = r10.xyz;
      let v_135 = select(r11.xyz, v_134, (v_133 != vec3<u32>()));
      r10 = vec4<f32>(v_135.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_136 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_136.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_137 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_137.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_138 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_138.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_139 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_140 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_140.xyz, r11.w);
      let v_141 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_141.xyz, r9.w);
      let v_142 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_142.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_143 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      let v_144 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_144, v_144, v_144, v_144).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_145 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_145, v_145, v_145, v_145).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_146 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_146.xyz, r8.w);
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
      let v_147 = (v_5.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      let v_148 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_149 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = bitcast<vec3<u32>>(r7.yyy);
      let v_152 = r10.xyz;
      let v_153 = select(r11.xyz, v_152, (v_151 != vec3<u32>()));
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_154 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_155 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_156 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_156.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_157 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_158 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_159.xyz, r9.w);
      let v_160 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_161 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_163 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_164 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_164.xyz, r8.w);
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
      let v_165 = (v_5.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_167 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = bitcast<vec3<u32>>(r7.yyy);
      let v_170 = r10.xyz;
      let v_171 = select(r11.xyz, v_170, (v_169 != vec3<u32>()));
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_172 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_173 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.z);
      let v_174 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_174.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_175 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_176 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
      let v_178 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_179 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_180, v_180, v_180, v_180).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_181 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_182 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_182.xyz, r8.w);
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
      let v_183 = (v_5.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = (v3.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[23u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[23u].w);
      let v_185 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = bitcast<vec3<u32>>(r7.yyy);
      let v_188 = r10.xyz;
      let v_189 = select(r11.xyz, v_188, (v_187 != vec3<u32>()));
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_190 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_191 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.z);
      let v_192 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.z = dot(r10.xyz, v_192.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_193 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_194 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_195.xyz, r9.w);
      let v_196 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_197 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_198, v_198, v_198, v_198).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_199 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_200 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_200.xyz, r8.w);
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
      let v_201 = (v_5.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      let v_202 = (v3.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[24u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[24u].w);
      let v_203 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      let v_204 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = bitcast<vec3<u32>>(r7.yyy);
      let v_206 = r10.xyz;
      let v_207 = select(r11.xyz, v_206, (v_205 != vec3<u32>()));
      r10 = vec4<f32>(v_207.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_208 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_208.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_209 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_209.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.z);
      let v_210 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.z = dot(r10.xyz, v_210.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_211 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_211, v_211, v_211, v_211).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_212 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      let v_213 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_213.xyz, r9.w);
      let v_214 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_215 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      let v_216 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_217 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_217, v_217, v_217, v_217).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_218 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_218.xyz, r8.w);
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
      let v_219 = (v_5.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      let v_220 = (v3.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[25u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[25u].w);
      let v_221 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      let v_222 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = bitcast<vec3<u32>>(r7.yyy);
      let v_224 = r10.xyz;
      let v_225 = select(r11.xyz, v_224, (v_223 != vec3<u32>()));
      r10 = vec4<f32>(v_225.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_226 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_226.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_227 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.z);
      let v_228 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.z = dot(r10.xyz, v_228.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_229 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_230 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      let v_231 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_231.xyz, r9.w);
      let v_232 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_233 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_234, v_234, v_234, v_234).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_235 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_235, v_235, v_235, v_235).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_236 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_236.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_237 = (v_5.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      let v_238 = (v3.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_238.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_239 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_239.xyz, r11.w);
      let v_240 = (r11.xyz + v_5.xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = bitcast<vec3<u32>>(r5.www);
      let v_242 = r10.xyz;
      let v_243 = select(r11.xyz, v_242, (v_241 != vec3<u32>()));
      r10 = vec4<f32>(v_243.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_244 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_244.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_245 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r7.y);
      let v_246 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_246.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_247 = dot(r10.xyz, r1.yzw);
      r7.z = clamp(vec4<f32>(v_247, v_247, v_247, v_247).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r5.w * r7.y);
      let v_248 = (r7.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      let v_249 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_249.xyz, r9.w);
      let v_250 = fma(r2.xyz, r2.www, r10.xyz);
      r2 = vec4<f32>(v_250.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_251 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_251.xyz, r2.w);
      let v_252 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_252, v_252, v_252, v_252).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r3.x = (r2.w * r2.w);
      r3.x = (r3.x * r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].w, r2.w, r6.w);
      let v_253 = dot(r2.xyz, r1.yzw);
      r2.x = clamp(vec4<f32>(v_253, v_253, v_253, v_253).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r7.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r7.y * r2.x);
      r2.x = (r5.w * r2.x);
      r2.x = (r4.w * r2.x);
      let v_254 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_254.xyz, r8.w);
    }
  }
  r2.x = (r7.x * r7.x);
  r2.y = (r3.w * r3.w);
  let v_255 = (r8.xyz * r2.yyy);
  r2 = vec4<f32>(r2.x, v_255.xyz);
  let v_256 = fma(r2.xxx, r9.xyz, r2.yzw);
  r2 = vec4<f32>(v_256.xyz, r2.w);
  let v_257 = fma(r4.xyz, r5.zzz, r2.xyz);
  r2 = vec4<f32>(v_257.xyz, r2.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_258 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_258.xyz, r3.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_259 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_259.xyz, r4.w);
  let v_260 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_260.xyz, r4.w);
  let v_261 = fma(r3.xyz, r2.www, r4.xyz);
  r3 = vec4<f32>(v_261.xyz, r3.w);
  let v_262 = (r5.yyy * r3.xyz);
  r3 = vec4<f32>(v_262.xyz, r3.w);
  let v_263 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_263.xyz, r4.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_264 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_264, v_264, v_264, v_264).x, 0.0f, 1.0f);
  let v_265 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r4.xyz);
  r1 = vec4<f32>(v_265.xyz, r1.w);
  let v_266 = fma(r1.xyz, r5.xxx, r3.xyz);
  r1 = vec4<f32>(v_266.xyz, r1.w);
  let v_267 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_267.xyz, r1.w);
  let v_268 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_268.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_269 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_269.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_270 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_270 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_271 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_271.xyz, r2.w);
    let v_272 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_272, v_272, v_272, v_272).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_273 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_273, v_273, v_273, v_273).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_274 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_274.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_275 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_275.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_276 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_276.xyz, r2.w);
    let v_277 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_277.xyz, r2.w);
    let v_278 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_278.xyz, r3.w);
    let v_279 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_279.xyz, r2.w);
    let v_280 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_281 = (r2.xyz + v_280.xyz);
    r2 = vec4<f32>(v_281.xyz, r2.w);
    let v_282 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_282.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_283 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_283.xyz, r3.w);
    let v_284 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_284.xy, r1.z, v_284.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_285 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_285.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_286 = -(r0.xyxz);
    let v_287 = fma(r1.xyw, r0.www, v_286.xyw);
    r1 = vec4<f32>(v_287.xy, r1.z, v_287.z);
    let v_288 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_288.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_289 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_289.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_290 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_290 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_291 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_291.xyz, r3.w);
    let v_292 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_292, v_292, v_292, v_292).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_293 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_293, v_293, v_293, v_293).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_294 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_294.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_295 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_295.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_296 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_296.xyz, r3.w);
    let v_297 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_297.xyz, r3.w);
    let v_298 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_298.xyz, r4.w);
    let v_299 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_299.xyz, r3.w);
    let v_300 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_301 = (r3.xyz + v_300.xyz);
    r3 = vec4<f32>(v_301.xyz, r3.w);
    let v_302 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_302.x, r2.y, v_302.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_303 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_303.xyz, r3.w);
    let v_304 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_304.x, r2.y, v_304.yz);
    let v_305 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_305.x, r2.y, v_305.yz);
    let v_306 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_306.xyz, r1.w);
  }
  let v_307 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_307.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_308 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_308);
  return o0;
}
