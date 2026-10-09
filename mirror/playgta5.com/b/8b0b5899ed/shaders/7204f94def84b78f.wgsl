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
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r0.w)));
  v_3((bitcast<u32>(r0.w) != 0u));
  r0.w = dot(r0.xyz, cb12_12.tint_symbol_4[0u].xyz);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_4 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r0 = vec4<f32>(vec3<f32>(1.0f), r0.w);
  r0 = (r0 * v0);
  let v_5 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(v3.xyzx);
  let v_7 = (v_6.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_8 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_10 = fma(r2.xyz, r2.www, v_9.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_11 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  r3.w = clamp(cb12_12.tint_symbol_4[1u].y, 0.0f, 1.0f);
  let v_12 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  r4.w = (cb12_12.tint_symbol_4[1u].x + -500.0f);
  r4.w = max(r4.w, 0.0f);
  r5.z = ((-(r4.wwww)).z + cb12_12.tint_symbol_4[1u].x);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.z, 3.0f, r4.w);
  r5.z = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_13 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_17.xyz, r8.w);
  let v_18 = &(x0[0u]);
  let v_19 = r8;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_20.xyz, r9.w);
  let v_21 = &(x0[1u]);
  let v_22 = r9;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_23.xyz, r10.w);
  let v_24 = &(x0[2u]);
  let v_25 = r10;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  let v_27 = &(x0[3u]);
  let v_28 = r7;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_30 = r11;
  r11 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  r5.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_31 = abs(r10.yyyy);
  r6.w = max(v_31.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_32 = (bitcast<u32>(r6.w) != 0u);
  let v_33 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_33, v_32);
  let v_34 = abs(r9.yyyy);
  r7.z = max(v_34.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_35 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_35 != 0u));
  let v_36 = abs(r8.yyyy);
  r7.z = max(v_36.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_37 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_37 != 0u));
  let v_38 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_38.xyz, r8.w);
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
  let v_39 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_39.xy, r10.z, v_39.z);
  r10.z = dpdx(r5.w);
  let v_40 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_40.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_41 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_41.xy, r8.zw);
  let v_42 = -(r8.xyxx);
  let v_43 = fma(r10.xz, r12.xz, v_42.xy);
  r13 = vec4<f32>(v_43.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_44 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_44.z);
  let v_45 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_45.xy, r8.zw);
  let v_46 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_46.xy, r8.zw);
  let v_47 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_47.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_48 = bitcast<u32>(r6.w);
  let v_49 = r5.w;
  r11.z = select(r8.z, v_49, (v_48 != 0u));
  r9.z = 0.0f;
  let v_50 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_50.xyz, r8.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_51.xy, r11.zw);
  let v_52 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_52.xyz, r10.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_53.xy, r11.zw);
  let v_54 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_55.xy, r11.zw);
  let v_56 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_56.xyz, r13.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_57.xy, r11.zw);
  let v_58 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_58.xyz, r14.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_59.xy, r11.zw);
  let v_60 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_60.xyz, r15.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_61.xy, r11.zw);
  let v_62 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_62.xyz, r16.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_64.xyz, r17.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_66.xyz, r18.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_68.xyz, r19.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_70.xyz, r20.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_72.xyz, r21.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_74.xyz, r22.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_76.xyz, r23.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_78.xyz, r24.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_80.xyz, r9.w);
  let v_81 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_81.xy, r8.z);
  let v_82 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_82.xy, r10.z);
  let v_83 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_83.xy, r12.z);
  let v_84 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_84.xy, r13.z);
  let v_85 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_85.xy, r14.z);
  let v_86 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_87.xy, r16.z);
  let v_88 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_88.xy, r17.z);
  let v_89 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_89.xy, r18.z);
  let v_90 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_90.xy, r19.z);
  let v_91 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_91.xy, r20.z);
  let v_92 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_92.xy, r21.z);
  let v_93 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_93.xy, r22.z);
  let v_94 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_94.xy, r23.z);
  let v_95 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_95.xy, r24.z);
  let v_96 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_96.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r5.z = clamp(fma(r5.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_97 = abs(r7.yyyy);
  r6.w = max(v_97.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r5.z = ((-(r5.zzzz)).z + 1.0f);
  r5.z = (r6.w * r5.z);
  r5.z = fma(r5.w, 0.0625f, r5.z);
  r5.z = (r5.z * r5.z);
  r5.z = min(r5.z, 1.0f);
  r5.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_5[3u].z);
  let v_98 = -(r5.zzzz);
  r5.z = fma(r5.w, v_98.z, r5.z);
  let v_99 = dot(r1.yzw, v_9.xyz);
  r5.w = clamp(vec4<f32>(v_99, v_99, v_99, v_99).w, 0.0f, 1.0f);
  let v_100 = dot(r3.xyz, r1.yzw);
  r7.x = clamp(vec4<f32>(v_100, v_100, v_100, v_100).x, 0.0f, 1.0f);
  let v_101 = dot(r4.xyz, v_9.xyz);
  r7.y = clamp(vec4<f32>(v_101, v_101, v_101, v_101).y, 0.0f, 1.0f);
  let v_102 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_102.xy, r7.zw);
  let v_103 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_103.xy);
  let v_104 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_104.xy);
  let v_105 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_105.xy, r7.zw);
  r6.w = ((-(cb12_12.tint_symbol_4[0u].wwww)).w + 1.0f);
  let v_106 = fma(cb12_12.tint_symbol_4[0u].ww, r7.xy, r6.ww);
  r7 = vec4<f32>(v_106.xy, r7.zw);
  let v_107 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_107.xy);
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
  let v_108 = fma(r0.xyz, r4.yyy, r4.xxx);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  let v_109 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_109.xyz, r4.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_110 = (v_6.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_110.xyz, r8.w);
    let v_111 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_111.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_112 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_112.xyz, r9.w);
    let v_113 = (r9.xyz + v_6.xyz);
    r9 = vec4<f32>(v_113.xyz, r9.w);
    let v_114 = bitcast<vec3<u32>>(r7.yyy);
    let v_115 = r8.xyz;
    let v_116 = select(r9.xyz, v_115, (v_114 != vec3<u32>()));
    r8 = vec4<f32>(v_116.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_117 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_117.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_118 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_118.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_119 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_119.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_120 = dot(r8.xyz, r1.yzw);
    r8.w = clamp(vec4<f32>(v_120, v_120, v_120, v_120).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_121 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = fma(r2.xyz, r2.www, r8.xyz);
    r8 = vec4<f32>(v_123.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_124 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    let v_125 = dot(r8.xyz, r3.xyz);
    r8.w = clamp(vec4<f32>(v_125, v_125, v_125, v_125).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
    let v_126 = dot(r8.xyz, r1.yzw);
    r8.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r4.w * r7.y);
    let v_127 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_127.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_128 = bitcast<u32>(r7.z);
    let v_129 = r7.y;
    r5.w = select(r5.w, v_129, (v_128 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_130 = (v_6.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_130.xyz, r10.w);
      let v_131 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_131.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_132 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_132.xyz, r11.w);
      let v_133 = (r11.xyz + v_6.xyz);
      r11 = vec4<f32>(v_133.xyz, r11.w);
      let v_134 = bitcast<vec3<u32>>(r7.yyy);
      let v_135 = r10.xyz;
      let v_136 = select(r11.xyz, v_135, (v_134 != vec3<u32>()));
      r10 = vec4<f32>(v_136.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_137 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_137.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_138 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_138.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_139 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_139.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_140 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_141 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_141.xyz, r11.w);
      let v_142 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_142.xyz, r9.w);
      let v_143 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_144 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_144.xyz, r10.w);
      let v_145 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_145, v_145, v_145, v_145).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_146 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_147 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_147.xyz, r8.w);
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
      let v_148 = (v_6.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      let v_149 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_150 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = (r11.xyz + v_6.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = bitcast<vec3<u32>>(r7.yyy);
      let v_153 = r10.xyz;
      let v_154 = select(r11.xyz, v_153, (v_152 != vec3<u32>()));
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_155 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_156 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_157 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_157.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_158 = dot(r10.xyz, r1.yzw);
      r8.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_159 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_160.xyz, r9.w);
      let v_161 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_162 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = dot(r10.xyz, r3.xyz);
      r8.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].w, r8.w, r6.w);
      let v_164 = dot(r10.xyz, r1.yzw);
      r9.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r4.w * r7.y);
      let v_165 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_165.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_166 = (v_6.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      let v_167 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[22u].w);
      let v_168 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = (r11.xyz + v_6.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = bitcast<vec3<u32>>(r5.www);
      let v_171 = r10.xyz;
      let v_172 = select(r11.xyz, v_171, (v_170 != vec3<u32>()));
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_173 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_174 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r7.y);
      let v_175 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.y = dot(r10.xyz, v_175.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_176 = dot(r10.xyz, r1.yzw);
      r7.z = clamp(vec4<f32>(v_176, v_176, v_176, v_176).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r5.w * r7.y);
      let v_177 = (r7.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_178.xyz, r9.w);
      let v_179 = fma(r2.xyz, r2.www, r10.xyz);
      r2 = vec4<f32>(v_179.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_180 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_180.xyz, r2.w);
      let v_181 = dot(r2.xyz, r3.xyz);
      r2.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r3.x = (r2.w * r2.w);
      r3.x = (r3.x * r3.x);
      r2.w = (r2.w * r3.x);
      r2.w = fma(cb12_12.tint_symbol_4[0u].w, r2.w, r6.w);
      let v_182 = dot(r2.xyz, r1.yzw);
      r2.x = clamp(vec4<f32>(v_182, v_182, v_182, v_182).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r7.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r7.y * r2.x);
      r2.x = (r5.w * r2.x);
      r2.x = (r4.w * r2.x);
      let v_183 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_183.xyz, r8.w);
    }
  }
  r2.x = (r7.x * r7.x);
  r2.y = (r3.w * r3.w);
  let v_184 = (r8.xyz * r2.yyy);
  r2 = vec4<f32>(r2.x, v_184.xyz);
  let v_185 = fma(r2.xxx, r9.xyz, r2.yzw);
  r2 = vec4<f32>(v_185.xyz, r2.w);
  let v_186 = fma(r4.xyz, r5.zzz, r2.xyz);
  r2 = vec4<f32>(v_186.xyz, r2.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_187 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_187.xyz, r3.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_188 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_188.xyz, r4.w);
  let v_189 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_189.xyz, r4.w);
  let v_190 = fma(r3.xyz, r2.www, r4.xyz);
  r3 = vec4<f32>(v_190.xyz, r3.w);
  let v_191 = (r5.yyy * r3.xyz);
  r3 = vec4<f32>(v_191.xyz, r3.w);
  let v_192 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_192.xyz, r4.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_193 = dot(r8.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_193, v_193, v_193, v_193).x, 0.0f, 1.0f);
  let v_194 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r4.xyz);
  r1 = vec4<f32>(v_194.xyz, r1.w);
  let v_195 = fma(r1.xyz, r5.xxx, r3.xyz);
  r1 = vec4<f32>(v_195.xyz, r1.w);
  let v_196 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_196.xyz, r1.w);
  let v_197 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_197.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.x = sqrt(r0.w);
    let v_198 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_198.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r6.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_199 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_199 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_200 = (r0.www * r6.xyz);
    r2 = vec4<f32>(v_200.xyz, r2.w);
    let v_201 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_201, v_201, v_201, v_201).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_202 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_202, v_202, v_202, v_202).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_203 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_203.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_204 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_204.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_205 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_205.xyz, r2.w);
    let v_206 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_206.xyz, r2.w);
    let v_207 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_207.xyz, r3.w);
    let v_208 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_208.xyz, r2.w);
    let v_209 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_210 = (r2.xyz + v_209.xyz);
    r2 = vec4<f32>(v_210.xyz, r2.w);
    let v_211 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_211.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_212 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_212.xyz, r3.w);
    let v_213 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_213.xy, r1.z, v_213.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_214 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_214.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_215 = -(r0.xyxz);
    let v_216 = fma(r1.xyw, r0.www, v_215.xyw);
    r1 = vec4<f32>(v_216.xy, r1.z, v_216.z);
    let v_217 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_217.xyz, r1.w);
  } else {
    r0.w = dot(r6.xyz, r6.xyz);
    r1.w = sqrt(r0.w);
    let v_218 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_218.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r6.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_219 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_219 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_220 = (r0.www * r6.xyz);
    r3 = vec4<f32>(v_220.xyz, r3.w);
    let v_221 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_222 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_222, v_222, v_222, v_222).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_223 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_223.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_224 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_224.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_225 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_225.xyz, r3.w);
    let v_226 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_226.xyz, r3.w);
    let v_227 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_227.xyz, r4.w);
    let v_228 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_228.xyz, r3.w);
    let v_229 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_230 = (r3.xyz + v_229.xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    let v_231 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_231.x, r2.y, v_231.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_232 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_232.xyz, r3.w);
    let v_233 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_233.x, r2.y, v_233.yz);
    let v_234 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_234.x, r2.y, v_234.yz);
    let v_235 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_235.xyz, r1.w);
  }
  let v_236 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_236.xyz, o0.w);
}

fn v_3(v_237 : bool) {
  if (v_237) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_238 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_238);
  return o0;
}
