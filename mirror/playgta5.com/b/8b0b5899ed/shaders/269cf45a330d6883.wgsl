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

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[4u].x, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.x = dot(r0.xyz, cb12_12.tint_symbol_4[2u].xyz);
  r1.y = dot(r0.xyz, cb12_12.tint_symbol_4[3u].xyz);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r3.x = dot(cb12_12.tint_symbol_4[2u].ww, r1.xx);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = (r1.x + r1.x);
  r3.y = ((-(cb12_12.tint_symbol_4[2u].wwww)).y + 1.0f);
  r1.x = fma((-(r1.xxxx)).x, r3.y, 1.0f);
  let v_9 = bitcast<u32>(r2.w);
  let v_10 = r3.x;
  r3.x = select(r1.x, v_10, (v_9 != 0u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r2.w = dot(cb12_12.tint_symbol_4[3u].ww, r1.yy);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (r1.y + r1.y);
  r3.z = ((-(cb12_12.tint_symbol_4[3u].wwww)).z + 1.0f);
  r1.y = fma((-(r1.yyyy)).y, r3.z, 1.0f);
  let v_11 = bitcast<u32>(r1.x);
  let v_12 = r2.w;
  r3.y = select(r1.y, v_12, (v_11 != 0u));
  r1.x = dot(r3.xy, cb12_12.tint_symbol_4[1u].xy);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_13 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = -(v6.xyzx);
  let v_16 = (v_15.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_17 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_19 = fma(r4.xyz, r1.yyy, v_18.xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_20 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_22 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_24.xyz, r8.w);
  let v_25 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_25.xyz, r8.w);
  let v_26 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  let v_27 = &(x0[0u]);
  let v_28 = r9;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_29.xyz, r10.w);
  let v_30 = &(x0[1u]);
  let v_31 = r10;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_32.xyz, r11.w);
  let v_33 = &(x0[2u]);
  let v_34 = r11;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = &(x0[3u]);
  let v_37 = r8;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_39 = r12;
  r12 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
  r3.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_40 = abs(r11.yyyy);
  r3.w = max(v_40.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_41 = (bitcast<u32>(r3.w) != 0u);
  let v_42 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_42, v_41);
  let v_43 = abs(r10.yyyy);
  r4.w = max(v_43.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_44 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_44 != 0u));
  let v_45 = abs(r9.yyyy);
  r4.w = max(v_45.w, abs(r9.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_46 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_46 != 0u));
  let v_47 = x0[bitcast<i32>(r3.z)];
  r9 = vec4<f32>(v_47.xyz, r9.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.z = dot(r10, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r9.z);
  let v_48 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_48.xy, r11.z, v_48.z);
  r11.z = dpdx(r3.z);
  let v_49 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_49.xyz, r13.w);
  r13.w = dpdy(r3.z);
  let v_50 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_50.xy);
  let v_51 = -(r8.zwzz);
  let v_52 = fma(r11.xz, r13.xz, v_51.xy);
  r14 = vec4<f32>(v_52.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_53 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_53.z);
  let v_54 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_54.xy);
  let v_55 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_55.xy);
  let v_56 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_56.xy);
  r3.z = fma((-(r4.wwww)).z, r8.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r8.w, r3.z);
  let v_57 = bitcast<u32>(r3.w);
  let v_58 = r3.z;
  r12.z = select(r9.z, v_58, (v_57 != 0u));
  r10.z = 0.0f;
  let v_59 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_60.xy, r12.zw);
  let v_61 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_61.xyz, r11.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_63.xyz, r13.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_65.xyz, r14.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_67.xyz, r15.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_69.xyz, r16.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_71.xyz, r17.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_73.xyz, r18.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_75.xyz, r19.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_77.xyz, r20.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_79.xyz, r21.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_81.xyz, r22.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_83.xyz, r23.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_85.xyz, r24.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_87.xyz, r25.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_89.xyz, r10.w);
  let v_90 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_90.xy, r9.z);
  let v_91 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_91.xy, r11.z);
  let v_92 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_92.xy, r13.z);
  let v_93 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_93.xy, r14.z);
  let v_94 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_94.xy, r15.z);
  let v_95 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_95.xy, r16.z);
  let v_96 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_96.xy, r17.z);
  let v_97 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_97.xy, r18.z);
  let v_98 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_98.xy, r19.z);
  let v_99 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_99.xy, r20.z);
  let v_100 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_100.xy, r21.z);
  let v_101 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_101.xy, r22.z);
  let v_102 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_102.xy, r23.z);
  let v_103 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_103.xy, r24.z);
  let v_104 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_104.xy, r25.z);
  let v_105 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_105.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.z = dot(r9, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_106 = abs(r8.yyyy);
  r3.w = max(v_106.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r3.w * r2.w);
  r2.w = fma(r3.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_5[3u].z);
  let v_107 = -(r2.wwww);
  r2.w = fma(r3.z, v_107.w, r2.w);
  let v_108 = dot(r2.xyz, v_18.xyz);
  r3.z = clamp(vec4<f32>(v_108, v_108, v_108, v_108).z, 0.0f, 1.0f);
  let v_109 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_109, v_109, v_109, v_109).x, 0.0f, 1.0f);
  let v_110 = dot(r6.xyz, v_18.xyz);
  r8.y = clamp(vec4<f32>(v_110, v_110, v_110, v_110).y, 0.0f, 1.0f);
  let v_111 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_111.xy, r6.zw);
  let v_112 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_112.xy);
  let v_113 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_113.xy);
  let v_114 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_114.xy, r6.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_115 = fma(cb12_12.tint_symbol_4[0u].xx, r6.xy, r3.ww);
  r6 = vec4<f32>(v_115.xy, r6.zw);
  r4.w = (r1.x * r6.y);
  r5.w = fma((-(r1.xxxx)).w, r6.x, 1.0f);
  r4.w = (r3.z * r4.w);
  r4.w = (r4.w * 0.25f);
  r3.z = (r3.z * r5.w);
  let v_116 = fma(r0.xyz, r3.zzz, r4.www);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  let v_117 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_117.xyz, r6.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_118 = (v_15.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_118.xyz, r8.w);
    let v_119 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_119.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_120 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    let v_121 = (r9.xyz + v_15.xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = bitcast<vec3<u32>>(r4.www);
    let v_123 = r8.xyz;
    let v_124 = select(r9.xyz, v_123, (v_122 != vec3<u32>()));
    r8 = vec4<f32>(v_124.xyz, r8.w);
    r4.w = dot(r8.xyz, r8.xyz);
    let v_125 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_125.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_126 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_126.xyz, r8.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[11u].w);
    r4.w = (r4.w / r6.w);
    let v_127 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_127.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_128 = dot(r8.xyz, r2.xyz);
    r7.w = clamp(vec4<f32>(v_128, v_128, v_128, v_128).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r4.w * r6.w);
    let v_129 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    let v_130 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = fma(r4.xyz, r1.yyy, r8.xyz);
    r8 = vec4<f32>(v_131.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_132 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_132.xyz, r8.w);
    let v_133 = dot(r8.xyz, r5.xyz);
    r7.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.x = (r7.w * r7.w);
    r8.x = (r8.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
    r6.w = (r6.w * r7.w);
    r4.w = (r4.w * r6.w);
    r4.w = (r4.w * 0.25f);
    let v_134 = (r4.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
  }
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    let v_135 = bitcast<u32>(r6.w);
    let v_136 = r4.w;
    r3.z = select(r3.z, v_136, (v_135 != 0u));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_137 = (v_15.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_137.xyz, r10.w);
      let v_138 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_138.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_139 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_139.xyz, r11.w);
      let v_140 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_140.xyz, r11.w);
      let v_141 = bitcast<vec3<u32>>(r4.www);
      let v_142 = r10.xyz;
      let v_143 = select(r11.xyz, v_142, (v_141 != vec3<u32>()));
      r10 = vec4<f32>(v_143.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_144 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_144.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_145 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[12u].w);
      r4.w = (r4.w / r6.w);
      let v_146 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_146.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_147 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_148 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      let v_149 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_149.xyz, r9.w);
      let v_150 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_150.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_151 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      let v_152 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_153 = fma(r4.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_153.xyz, r8.w);
    }
  } else {
    r3.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_154 = (v_15.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_156 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = bitcast<vec3<u32>>(r4.www);
      let v_159 = r10.xyz;
      let v_160 = select(r11.xyz, v_159, (v_158 != vec3<u32>()));
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_161 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_162 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[13u].w);
      r4.w = (r4.w / r6.w);
      let v_163 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_163.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_164 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_165 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_166.xyz, r9.w);
      let v_167 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_168 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      let v_169 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_170 = fma(r4.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_170.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_171 = (v_15.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_173 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = bitcast<vec3<u32>>(r4.www);
      let v_176 = r10.xyz;
      let v_177 = select(r11.xyz, v_176, (v_175 != vec3<u32>()));
      r10 = vec4<f32>(v_177.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_178 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_179 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.w);
      let v_180 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r10.xyz, v_180.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_181 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_182 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_183.xyz, r9.w);
      let v_184 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_185 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      let v_186 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_187 = fma(r4.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_187.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_188 = (v_15.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      let v_189 = (v6.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_190 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = bitcast<vec3<u32>>(r4.www);
      let v_193 = r10.xyz;
      let v_194 = select(r11.xyz, v_193, (v_192 != vec3<u32>()));
      r10 = vec4<f32>(v_194.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_195 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_195.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_196 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[15u].w);
      r4.w = (r4.w / r6.w);
      let v_197 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r10.xyz, v_197.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_198 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_198, v_198, v_198, v_198).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_199 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_200.xyz, r9.w);
      let v_201 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_202 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      let v_203 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_204 = fma(r4.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_204.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_205 = (v_15.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      let v_206 = (v6.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_206.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_207 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_207.xyz, r11.w);
      let v_208 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = bitcast<vec3<u32>>(r4.www);
      let v_210 = r10.xyz;
      let v_211 = select(r11.xyz, v_210, (v_209 != vec3<u32>()));
      r10 = vec4<f32>(v_211.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_212 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_212.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_213 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[16u].w);
      r4.w = (r4.w / r6.w);
      let v_214 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r10.xyz, v_214.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_215 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_215, v_215, v_215, v_215).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_216 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      let v_217 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_217.xyz, r9.w);
      let v_218 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_219 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      let v_220 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_221 = fma(r4.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_221.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_222 = (v_15.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      let v_223 = (v6.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_224 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_224.xyz, r11.w);
      let v_225 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = bitcast<vec3<u32>>(r4.www);
      let v_227 = r10.xyz;
      let v_228 = select(r11.xyz, v_227, (v_226 != vec3<u32>()));
      r10 = vec4<f32>(v_228.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_229 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_229.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_230 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_230.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[17u].w);
      r4.w = (r4.w / r6.w);
      let v_231 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r10.xyz, v_231.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_232 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_233 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_233.xyz, r11.w);
      let v_234 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_234.xyz, r9.w);
      let v_235 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_236 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      let v_237 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_237, v_237, v_237, v_237).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_238 = fma(r4.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_238.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_239 = (v_15.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      let v_240 = (v6.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      r4.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r4.w = (r4.w * cb3_3.tint_symbol_2[26u].w);
      let v_241 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      let v_242 = (r11.xyz + v_15.xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = bitcast<vec3<u32>>(r3.zzz);
      let v_244 = r10.xyz;
      let v_245 = select(r11.xyz, v_244, (v_243 != vec3<u32>()));
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r3.z = dot(r10.xyz, r10.xyz);
      let v_246 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      r4.w = inverseSqrt(r4.w);
      let v_247 = (r4.www * r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      r3.z = clamp(fma(-(r3.zzzz), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r4.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r4.w = fma(r4.w, r3.z, cb3_3.tint_symbol_2[18u].w);
      r3.z = (r3.z / r4.w);
      let v_248 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r4.w = dot(r10.xyz, v_248.xyz);
      r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_249 = dot(r10.xyz, r2.xyz);
      r6.w = clamp(vec4<f32>(v_249, v_249, v_249, v_249).w, 0.0f, 1.0f);
      r4.w = (r4.w * r6.w);
      r6.w = (r3.z * r4.w);
      let v_250 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_251.xyz, r9.w);
      let v_252 = fma(r4.xyz, r1.yyy, r10.xyz);
      r4 = vec4<f32>(v_252.xyz, r4.w);
      r1.y = dot(r4.xyz, r4.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_253 = (r1.yyy * r4.xyz);
      r4 = vec4<f32>(v_253.xyz, r4.w);
      let v_254 = dot(r4.xyz, r5.xyz);
      r1.y = clamp(vec4<f32>(v_254, v_254, v_254, v_254).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r4.x = (r1.y * r1.y);
      r4.x = (r4.x * r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r3.w);
      r1.y = (r4.w * r1.y);
      r1.y = (r3.z * r1.y);
      r1.y = (r1.y * 0.25f);
      let v_255 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_255.xyz, r8.w);
    }
  }
  r1.y = (r5.w * r5.w);
  r1.x = (r1.x * r1.x);
  let v_256 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_256.xyz, r4.w);
  let v_257 = fma(r1.yyy, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_257.xyz, r4.w);
  let v_258 = fma(r6.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_258.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_259 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_259.xyz);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_260 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_260.xyz, r6.w);
  let v_261 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_261.xyz, r6.w);
  let v_262 = fma(r1.yzw, r2.www, r6.xyz);
  r1 = vec4<f32>(r1.x, v_262.xyz);
  let v_263 = (r3.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_263.xyz);
  let v_264 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_264.xyz, r6.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_265 = dot(r8.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_265, v_265, v_265, v_265).x, 0.0f, 1.0f);
  let v_266 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_266.xyz, r6.w);
  let v_267 = fma(r6.xyz, r3.xxx, r1.yzw);
  r1 = vec4<f32>(v_267.xyz, r1.w);
  let v_268 = (r5.www * r1.xyz);
  r1 = vec4<f32>(v_268.xyz, r1.w);
  let v_269 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_269.xyz, r0.w);
  r1.x = ((-(r5.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.y = (r1.y + r1.y);
  let v_270 = -(r1.yyyy);
  let v_271 = -(r5.xxyz);
  let v_272 = fma(r2.xyz, v_270.yzw, v_271.yzw);
  r1 = vec4<f32>(r1.x, v_272.xyz);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = max(r2.x, cb5_5.tint_symbol_3[6u].z);
  let v_273 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_273.xyz);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_274 = (r2.yzw / r1.yyy);
  r2 = vec4<f32>(r2.x, v_274.xyz);
  let v_275 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_275.xyz);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_276 = bitcast<vec2<u32>>(r1.yy);
  let v_277 = r2.yz;
  let v_278 = select(r2.wz, v_277, (v_276 != vec2<u32>()));
  let v_279 = r1;
  r1 = vec4<f32>(v_279.x, v_278.xy, v_279.w);
  let v_280 = r2.x;
  r2 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_280);
  r1.y = max(r3.y, r3.x);
  let v_281 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_281.xyz);
  let v_282 = (r1.xxx * r1.yzw);
  r1 = vec4<f32>(v_282.xyz, r1.w);
  let v_283 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r0.xyz);
  r0 = vec4<f32>(v_283.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_284 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_284.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_285 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_285 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_286 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_286.xyz, r2.w);
    let v_287 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_288 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_288, v_288, v_288, v_288).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_289 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_289.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_290 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_290.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_291 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_291.xyz, r2.w);
    let v_292 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    let v_293 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_293.xyz, r3.w);
    let v_294 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_294.xyz, r2.w);
    let v_295 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_296 = (r2.xyz + v_295.xyz);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    let v_297 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_297.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_298 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_298.xyz, r3.w);
    let v_299 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_299.xy, r1.z, v_299.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_300 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_300.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_301 = -(r0.xyxz);
    let v_302 = fma(r1.xyw, r0.www, v_301.xyw);
    r1 = vec4<f32>(v_302.xy, r1.z, v_302.z);
    let v_303 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_303.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_304 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_304.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_305 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_305 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_306 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_306.xyz, r3.w);
    let v_307 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_307, v_307, v_307, v_307).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_308 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_308, v_308, v_308, v_308).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_309 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_309.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_310 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_310.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_311 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_311.xyz, r3.w);
    let v_312 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_313.xyz, r4.w);
    let v_314 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_314.xyz, r3.w);
    let v_315 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_316 = (r3.xyz + v_315.xyz);
    r3 = vec4<f32>(v_316.xyz, r3.w);
    let v_317 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_317.x, r2.y, v_317.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_318 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_319.x, r2.y, v_319.yz);
    let v_320 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_320.x, r2.y, v_320.yz);
    let v_321 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_321.xyz, r1.w);
  }
  let v_322 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_322.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_323 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_323);
  return o0;
}
