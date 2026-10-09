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

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_5 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r1.x = dot(v3.xyz, v3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_10 = (r1.xxx * v3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r1.x = dot((-(r3.xyzx)).xyz, r2.xyz);
  r1.x = (r1.x + r1.x);
  let v_11 = -(r1.xxxx);
  let v_12 = -(r3.xyzx);
  let v_13 = fma(r2.xyz, v_11.xyz, v_12.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_14 = fma(r3.xz, r1.xx, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = (r1.xy * vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  r3 = textureSample(t3, s3, r1.xyxx.xy);
  let v_16 = (r3.xyz * cb12_12.tint_symbol_4[1u].yyy);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r1.x = (r0.w * cb12_12.tint_symbol_4[0u].x);
  r1.x = (r1.x * cb2_2.tint_symbol_1[15u].w);
  r1.x = (r1.x * cb2_2.tint_symbol_1[16u].y);
  r0.w = (r0.w * v0.w);
  let v_17 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_17.xy, r4.zw);
  r1.x = (r1.x * v0.z);
  let v_18 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_20 = (r1.yyy * r5.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r5.xyz, r1.yyy, v_21.xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_23 = (r1.yyy * r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  r1.y = clamp(cb12_12.tint_symbol_4[0u].w, 0.0f, 1.0f);
  let v_24 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_24.xy, r4.zw);
  r2.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r2.w = max(r2.w, 0.0f);
  r3.w = ((-(r2.wwww)).w + cb12_12.tint_symbol_4[0u].z);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_25 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_29.xyz, r9.w);
  let v_30 = &(x0[0u]);
  let v_31 = r9;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_32.xyz, r10.w);
  let v_33 = &(x0[1u]);
  let v_34 = r10;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_35.xyz, r11.w);
  let v_36 = &(x0[2u]);
  let v_37 = r11;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = &(x0[3u]);
  let v_40 = r8;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_42 = r12;
  r12 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r4.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r4.z = (r4.z * 0.5f);
  let v_43 = abs(r11.yyyy);
  r4.w = max(v_43.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r4.z)));
  let v_44 = (bitcast<u32>(r4.w) != 0u);
  let v_45 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_45, v_44);
  let v_46 = abs(r10.yyyy);
  r5.w = max(v_46.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_47 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_47 != 0u));
  let v_48 = abs(r9.yyyy);
  r5.w = max(v_48.w, abs(r9.xxxx).w);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_49 = bitcast<u32>(r4.z);
  r4.z = select(r4.w, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r4.z)];
  r9 = vec4<f32>(v_50.xyz, r9.w);
  r4.z = f32(bitcast<i32>(r4.z));
  r4.w = (r4.z + 0.5f);
  r4.w = (r4.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.zzzz)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.z = dot(r10, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  r4.z = ((-(r4.zzzz)).z + r9.z);
  let v_51 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_51.xy, r11.z, v_51.z);
  r11.z = dpdx(r4.z);
  let v_52 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_52.xyz, r13.w);
  r13.w = dpdy(r4.z);
  let v_53 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_53.xy);
  let v_54 = -(r8.zwzz);
  let v_55 = fma(r11.xz, r13.xz, v_54.xy);
  r14 = vec4<f32>(v_55.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_56 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_56.z);
  let v_57 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_57.xy);
  let v_58 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_58.xy);
  let v_59 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_59.xy);
  r4.z = fma((-(r5.wwww)).z, r8.z, r4.z);
  r4.z = fma((-(r5.wwww)).z, r8.w, r4.z);
  let v_60 = bitcast<u32>(r4.w);
  let v_61 = r4.z;
  r12.z = select(r9.z, v_61, (v_60 != 0u));
  r10.z = 0.0f;
  let v_62 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  let v_64 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_64.xyz, r11.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_66.xyz, r13.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_70.xyz, r15.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_72.xyz, r16.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_74.xyz, r17.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_76.xyz, r18.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_78.xyz, r19.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_80.xyz, r20.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_82.xyz, r21.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_84.xyz, r22.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_86.xyz, r23.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_88.xyz, r24.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_90.xyz, r25.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_92.xyz, r10.w);
  let v_93 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_93.xy, r9.z);
  let v_94 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_94.xy, r11.z);
  let v_95 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_95.xy, r13.z);
  let v_96 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_96.xy, r14.z);
  let v_97 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_97.xy, r15.z);
  let v_98 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_98.xy, r16.z);
  let v_99 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_99.xy, r17.z);
  let v_100 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_100.xy, r18.z);
  let v_101 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_101.xy, r19.z);
  let v_102 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_102.xy, r20.z);
  let v_103 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_103.xy, r21.z);
  let v_104 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_104.xy, r22.z);
  let v_105 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_105.xy, r23.z);
  let v_106 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_106.xy, r24.z);
  let v_107 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_107.xy, r25.z);
  let v_108 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_108.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.z = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_109 = abs(r8.yyyy);
  r4.w = max(v_109.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r4.w * r3.w);
  r3.w = fma(r4.z, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r4.z = sqrt(r4.z);
  r4.z = (r4.z * cb6_6.tint_symbol_5[3u].z);
  let v_110 = -(r3.wwww);
  r3.w = fma(r4.z, v_110.w, r3.w);
  let v_111 = dot(r2.xyz, v_21.xyz);
  r4.z = clamp(vec4<f32>(v_111, v_111, v_111, v_111).z, 0.0f, 1.0f);
  let v_112 = dot(r6.xyz, r2.xyz);
  r6.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r7.xyz, v_21.xyz);
  r6.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_115 = r6;
  r6 = vec4<f32>(v_115.x, v_114.xy, v_115.w);
  let v_116 = (r6.yz * r6.yz);
  r8 = vec4<f32>(v_116.xy, r8.zw);
  let v_117 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_117.xy, r8.zw);
  let v_118 = (r6.yz * r8.xy);
  let v_119 = r6;
  r6 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
  r4.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_120 = fma(cb12_12.tint_symbol_4[0u].yy, r6.yz, r4.ww);
  let v_121 = r6;
  r6 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  let v_122 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_122.xy, r8.zw);
  r4.w = (r8.x * 0.125f);
  r5.w = fma((-(r1.yyyy)).w, r6.y, 1.0f);
  r6.y = dot(r2.xyz, r7.xyz);
  r6.y = clamp(((r6.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r6.y = log2(r6.y);
  r6.y = (r6.y * r8.y);
  r6.y = exp2(r6.y);
  r6.y = (r6.z * r6.y);
  r4.w = (r4.w * r6.y);
  r1.y = (r1.y * r4.w);
  r1.y = (r4.z * r1.y);
  r4.z = (r4.z * r5.w);
  let v_123 = fma(r0.xyz, r4.zzz, r1.yyy);
  r6 = vec4<f32>(r6.x, v_123.xyz);
  let v_124 = (r6.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(r6.x, v_124.xyz);
  r1.y = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_2[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_125 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_125.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_126 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_126.xyz, r8.w);
  let v_127 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_127.xyz, r8.w);
  let v_128 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_128.xyz, r7.w);
  let v_129 = (r4.yyy * r7.xyz);
  r7 = vec4<f32>(v_129.xyz, r7.w);
  let v_130 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_130.xyz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_131 = dot(r8.xyz, r2.xyz);
  r2.x = clamp(vec4<f32>(v_131, v_131, v_131, v_131).x, 0.0f, 1.0f);
  let v_132 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_132.xyz);
  let v_133 = fma(r1.yzw, r4.xxx, r7.xyz);
  r1 = vec4<f32>(r1.x, v_133.xyz);
  let v_134 = (r5.www * r1.yzw);
  r1 = vec4<f32>(r1.x, v_134.xyz);
  let v_135 = (r0.xyz * r1.yzw);
  r1 = vec4<f32>(r1.x, v_135.xyz);
  let v_136 = fma(r6.yzw, r3.www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_136.xyz);
  r2.x = ((-(r5.wwww)).x + 1.0f);
  r2.y = max(r4.y, r4.x);
  let v_137 = (r2.yyy * r3.xyz);
  r3 = vec4<f32>(v_137.xyz, r3.w);
  r2.y = clamp(((r2.wwww * vec4<f32>(0.00177619897294789553f))).y, 0.0f, 1.0f);
  let v_138 = (r2.yyy * r3.xyz);
  r2 = vec4<f32>(r2.x, v_138.xyz);
  let v_139 = (r2.yzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(r2.x, v_139.xyz);
  let v_140 = fma(r3.xyz, vec3<f32>(0.31830990314483642578f), r2.yzw);
  r2 = vec4<f32>(r2.x, v_140.xyz);
  let v_141 = fma(r2.yzw, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_141.xyz);
  r1.x = (r1.x * r6.x);
  let v_142 = fma(r0.xyz, r1.xxx, r1.yzw);
  r0 = vec4<f32>(v_142.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.x = sqrt(r0.w);
    let v_143 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_143.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r5.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_144 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_144 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_145 = (r0.www * r5.xyz);
    r2 = vec4<f32>(v_145.xyz, r2.w);
    let v_146 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_147 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_148 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_148.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_149 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_149.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_150 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_150.xyz, r2.w);
    let v_151 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_151.xyz, r2.w);
    let v_152 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_152.xyz, r3.w);
    let v_153 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_153.xyz, r2.w);
    let v_154 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_155 = (r2.xyz + v_154.xyz);
    r2 = vec4<f32>(v_155.xyz, r2.w);
    let v_156 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_156.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_157 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_157.xyz, r3.w);
    let v_158 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_158.xy, r1.z, v_158.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_159 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_159.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_160 = -(r0.xyxz);
    let v_161 = fma(r1.xyw, r0.www, v_160.xyw);
    r1 = vec4<f32>(v_161.xy, r1.z, v_161.z);
    let v_162 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_162.xyz, r1.w);
  } else {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r0.w);
    let v_163 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_163.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r5.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_164 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_164 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_165 = (r0.www * r5.xyz);
    r3 = vec4<f32>(v_165.xyz, r3.w);
    let v_166 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_167 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_167, v_167, v_167, v_167).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_168 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_168.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_169 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_169.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_170 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_170.xyz, r3.w);
    let v_171 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_171.xyz, r3.w);
    let v_172 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_172.xyz, r4.w);
    let v_173 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_173.xyz, r3.w);
    let v_174 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_175 = (r3.xyz + v_174.xyz);
    r3 = vec4<f32>(v_175.xyz, r3.w);
    let v_176 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_176.x, r2.y, v_176.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_177 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_177.xyz, r3.w);
    let v_178 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_178.x, r2.y, v_178.yz);
    let v_179 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_179.x, r2.y, v_179.yz);
    let v_180 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_180.xyz, r1.w);
  }
  let v_181 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_181.xyz, o0.w);
}

fn v_3(v_182 : bool) {
  if (v_182) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_183 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_183);
  return o0;
}
