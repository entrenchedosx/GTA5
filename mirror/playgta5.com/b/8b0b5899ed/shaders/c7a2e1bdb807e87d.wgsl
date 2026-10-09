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

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v2.xyz.xyxx.xy);
  let v_3 = (v2.xyz.xy * cb11_11.tint_symbol_5[0u].zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = fma(r1.zw, vec2<f32>(0.5f), r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1.z = fma((-(r1.xxxx)).z, cb11_11.tint_symbol_5[0u].x, 1.0f);
  r0 = (r0 * r1.zzzz);
  r2 = textureSample(t5, s5, v2.xyz.xyxx.xy);
  let v_9 = fma(r1.xy, cb11_11.tint_symbol_5[0u].yy, r2.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_11 = (r1.xy * r2.xx);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r1.xxx, v4.xyz, r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.www, v3.xyz, r2.xyz);
  r1 = vec4<f32>(v_14.xy, r1.z, v_14.z);
  r2.x = dot(r1.xyw, r1.xyw);
  r2.x = inverseSqrt(r2.x);
  let v_15 = (r1.xyw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_15.xyz);
  r1.x = clamp(((r1.zzzz * cb12_12.tint_symbol_4[0u].wwww)).x, 0.0f, 1.0f);
  let v_16 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_17 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_21 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_23 = fma(r3.xyz, r3.www, v_22.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_24 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r1.yz * r1.yz);
  let v_26 = r1;
  r1 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r3.w = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r3.w = max(r3.w, 0.0f);
  r4.w = ((-(r3.wwww)).w + cb12_12.tint_symbol_4[0u].z);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.w, 3.0f, r3.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_27 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  let v_28 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = &(x0[0u]);
  let v_33 = r8;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = &(x0[1u]);
  let v_36 = r9;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_37.xyz, r10.w);
  let v_38 = &(x0[2u]);
  let v_39 = r10;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = &(x0[3u]);
  let v_42 = r7;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_44 = r11;
  r11 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  r3.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r3.y = (r3.y * 0.5f);
  let v_45 = abs(r10.yyyy);
  r3.z = max(v_45.z, abs(r10.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r3.y)));
  let v_46 = (bitcast<u32>(r3.z) != 0u);
  let v_47 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_47, v_46);
  let v_48 = abs(r9.yyyy);
  r4.w = max(v_48.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.y)));
  let v_49 = bitcast<u32>(r4.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_49 != 0u));
  let v_50 = abs(r8.yyyy);
  r4.w = max(v_50.w, abs(r8.xxxx).w);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.y)));
  let v_51 = bitcast<u32>(r3.y);
  r3.y = select(r3.z, 0.0f, (v_51 != 0u));
  let v_52 = x0[bitcast<i32>(r3.y)];
  r8 = vec4<f32>(v_52.xyz, r8.w);
  r3.y = f32(bitcast<i32>(r3.y));
  r3.z = (r3.y + 0.5f);
  r3.z = (r3.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.y = dot(r9, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r3.y == 0.0f))));
  r3.y = ((-(r3.yyyy)).y + r8.z);
  let v_53 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_53.xy, r10.z, v_53.z);
  r10.z = dpdx(r3.y);
  let v_54 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  r12.w = dpdy(r3.y);
  let v_55 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_55.xy);
  let v_56 = -(r7.zwzz);
  let v_57 = fma(r10.xz, r12.xz, v_56.xy);
  r13 = vec4<f32>(v_57.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_58 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_58.z);
  let v_59 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_59.xy);
  let v_60 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_60.xy);
  let v_61 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_61.xy);
  r3.y = fma((-(r4.wwww)).y, r7.z, r3.y);
  r3.y = fma((-(r4.wwww)).y, r7.w, r3.y);
  let v_62 = bitcast<u32>(r3.z);
  let v_63 = r3.y;
  r11.z = select(r8.z, v_63, (v_62 != 0u));
  r9.z = 0.0f;
  let v_64 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_64.xyz, r8.w);
  let v_65 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_76.xyz, r16.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_80.xyz, r18.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_88.xyz, r22.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_90.xyz, r23.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_92.xyz, r24.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_94.xyz, r9.w);
  let v_95 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_95.xy, r8.z);
  let v_96 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_96.xy, r10.z);
  let v_97 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_97.xy, r12.z);
  let v_98 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_98.xy, r13.z);
  let v_99 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_99.xy, r14.z);
  let v_100 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_100.xy, r15.z);
  let v_101 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_102.xy, r17.z);
  let v_103 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_104.xy, r19.z);
  let v_105 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_105.xy, r20.z);
  let v_106 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_107.xy, r22.z);
  let v_108 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_108.xy, r23.z);
  let v_109 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_109.xy, r24.z);
  let v_110 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_110.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.y = dot(r8, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_111 = abs(r7.yyyy);
  r3.z = max(v_111.z, abs(r7.xxxx).z);
  r3.z = clamp(fma(r3.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r3.z * r3.x);
  r3.x = fma(r3.y, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r3.y = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).y, 0.0f, 1.0f);
  r3.y = sqrt(r3.y);
  r3.y = (r3.y * cb6_6.tint_symbol_6[3u].z);
  let v_112 = -(r3.xxxx);
  r3.x = fma(r3.y, v_112.x, r3.x);
  let v_113 = dot(r2.yzw, v_22.xyz);
  r3.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = dot(r4.xyz, r2.yzw);
  r4.x = clamp(vec4<f32>(v_114, v_114, v_114, v_114).x, 0.0f, 1.0f);
  let v_115 = dot(r5.xyz, v_22.xyz);
  r4.y = clamp(vec4<f32>(v_115, v_115, v_115, v_115).y, 0.0f, 1.0f);
  let v_116 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_116.xy, r4.zw);
  let v_117 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_117.xy);
  let v_118 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_118.xy);
  let v_119 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_119.xy, r4.zw);
  r3.z = ((-(cb12_12.tint_symbol_4[0u].yyyy)).z + 1.0f);
  let v_120 = fma(cb12_12.tint_symbol_4[0u].yy, r4.xy, r3.zz);
  r4 = vec4<f32>(v_120.xy, r4.zw);
  let v_121 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r3 = vec4<f32>(r3.xy, v_121.xy);
  r3.z = (r3.z * 0.125f);
  r4.x = fma((-(r1.xxxx)).x, r4.x, 1.0f);
  r4.z = dot(r2.yzw, r5.xyz);
  r4.z = clamp(((r4.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r4.z = log2(r4.z);
  r3.w = (r3.w * r4.z);
  r3.w = exp2(r3.w);
  r3.w = (r4.y * r3.w);
  r3.z = (r3.z * r3.w);
  r1.x = (r1.x * r3.z);
  r1.x = (r3.y * r1.x);
  r3.y = (r3.y * r4.x);
  let v_122 = fma(r0.xyz, r3.yyy, r1.xxx);
  r3 = vec4<f32>(r3.x, v_122.xyz);
  let v_123 = (r3.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(r3.x, v_123.xyz);
  r1.x = fma(r1.w, r2.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_124 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(r4.x, v_124.xyz);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_125 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_125.xyz, r5.w);
  let v_126 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  let v_127 = fma(r4.yzw, r1.www, r5.xyz);
  r4 = vec4<f32>(r4.x, v_127.xyz);
  let v_128 = (r1.zzz * r4.yzw);
  r4 = vec4<f32>(r4.x, v_128.xyz);
  let v_129 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_129.x, r1.y, v_129.yz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_130 = dot(r5.xyz, r2.yzw);
  r2.x = clamp(vec4<f32>(v_130, v_130, v_130, v_130).x, 0.0f, 1.0f);
  let v_131 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.xzw);
  r1 = vec4<f32>(v_131.x, r1.y, v_131.yz);
  let v_132 = fma(r1.xzw, r1.yyy, r4.yzw);
  r1 = vec4<f32>(v_132.xyz, r1.w);
  let v_133 = (r4.xxx * r1.xyz);
  r1 = vec4<f32>(v_133.xyz, r1.w);
  let v_134 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_134.xyz, r0.w);
  let v_135 = fma(r3.yzw, r3.xxx, r0.xyz);
  r0 = vec4<f32>(v_135.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r6.xyz, r6.xyz);
    r1.y = sqrt(r1.x);
    let v_136 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_136.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r6.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_137 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_137 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_138 = (r1.xxx * r6.xyz);
    r2 = vec4<f32>(v_138.xyz, r2.w);
    let v_139 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_140 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_141 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_141.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_142 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_142.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_143 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_143.xyz);
    let v_144 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_144.xyz);
    let v_145 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_145.xyz, r3.w);
    let v_146 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_146.xyz, r2.w);
    let v_147 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_148 = (r2.xyz + v_147.xyz);
    r2 = vec4<f32>(v_148.xyz, r2.w);
    let v_149 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_149.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_150 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_150.xyz, r3.w);
    let v_151 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_151.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_152 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_152.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_153 = -(r0.xyzx);
    let v_154 = fma(r1.xyz, r2.xxx, v_153.xyz);
    r1 = vec4<f32>(v_154.xyz, r1.w);
    let v_155 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_155.xyz, r1.w);
  } else {
    r1.w = dot(r6.xyz, r6.xyz);
    r2.x = sqrt(r1.w);
    let v_156 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_156.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r6.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_157 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_157 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_158 = (r1.www * r6.xyz);
    r3 = vec4<f32>(v_158.xyz, r3.w);
    let v_159 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_160 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_161 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_161.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_162 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_162.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_163 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_163.xyz, r3.w);
    let v_164 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_164.xyz, r3.w);
    let v_165 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_165.xyz, r4.w);
    let v_166 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_166.xyz, r3.w);
    let v_167 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_168 = (r3.xyz + v_167.xyz);
    r3 = vec4<f32>(v_168.xyz, r3.w);
    let v_169 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_170 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_170.xyz, r4.w);
    let v_171 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_171.xy, r2.z, v_171.z);
    let v_172 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_172.xy, r2.z, v_172.z);
    let v_173 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_173.xyz, r1.w);
  }
  let v_174 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_174.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v2.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_175 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_175);
  return tint_symbol_9(o0, o1, o2);
}
