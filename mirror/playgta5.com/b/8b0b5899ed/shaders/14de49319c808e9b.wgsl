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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[4u].x, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v3.xyz, r1.xyw);
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
  let v_13 = (r0.xyz * v1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r0.w = (r0.w * v0.w);
  let v_14 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_14.xy, r3.zw);
  let v_15 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = -(v7.xyzx);
  let v_17 = (v_16.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_18 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = fma(r4.xyz, r1.yyy, v_19.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_21 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_23 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_24.xyz, r8.w);
  let v_25 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_25.xyz, r8.w);
  let v_26 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_27.xyz, r9.w);
  let v_28 = &(x0[0u]);
  let v_29 = r9;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_30.xyz, r10.w);
  let v_31 = &(x0[1u]);
  let v_32 = r10;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_33.xyz, r11.w);
  let v_34 = &(x0[2u]);
  let v_35 = r11;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  let v_37 = &(x0[3u]);
  let v_38 = r8;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_40 = r12;
  r12 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  r3.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_41 = abs(r11.yyyy);
  r3.w = max(v_41.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_42 = (bitcast<u32>(r3.w) != 0u);
  let v_43 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_43, v_42);
  let v_44 = abs(r10.yyyy);
  r4.w = max(v_44.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_45 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_45 != 0u));
  let v_46 = abs(r9.yyyy);
  r4.w = max(v_46.w, abs(r9.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_47 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_47 != 0u));
  let v_48 = x0[bitcast<i32>(r3.z)];
  r9 = vec4<f32>(v_48.xyz, r9.w);
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
  let v_49 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_49.xy, r11.z, v_49.z);
  r11.z = dpdx(r3.z);
  let v_50 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_50.xyz, r13.w);
  r13.w = dpdy(r3.z);
  let v_51 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_51.xy);
  let v_52 = -(r8.zwzz);
  let v_53 = fma(r11.xz, r13.xz, v_52.xy);
  r14 = vec4<f32>(v_53.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_54 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_54.z);
  let v_55 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_55.xy);
  let v_56 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_56.xy);
  let v_57 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_57.xy);
  r3.z = fma((-(r4.wwww)).z, r8.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r8.w, r3.z);
  let v_58 = bitcast<u32>(r3.w);
  let v_59 = r3.z;
  r12.z = select(r9.z, v_59, (v_58 != 0u));
  r10.z = 0.0f;
  let v_60 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_60.xyz, r9.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_61.xy, r12.zw);
  let v_62 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_62.xyz, r11.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_63.xy, r12.zw);
  let v_64 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_64.xyz, r13.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_65.xy, r12.zw);
  let v_66 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_66.xyz, r14.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_68.xyz, r15.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_70.xyz, r16.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_72.xyz, r17.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_74.xyz, r18.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_76.xyz, r19.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_78.xyz, r20.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_80.xyz, r21.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_82.xyz, r22.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_84.xyz, r23.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_86.xyz, r24.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_88.xyz, r25.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_90.xyz, r10.w);
  let v_91 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_91.xy, r9.z);
  let v_92 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_92.xy, r11.z);
  let v_93 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_93.xy, r13.z);
  let v_94 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_94.xy, r14.z);
  let v_95 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_95.xy, r15.z);
  let v_96 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_96.xy, r16.z);
  let v_97 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_97.xy, r17.z);
  let v_98 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_98.xy, r18.z);
  let v_99 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_99.xy, r19.z);
  let v_100 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_100.xy, r20.z);
  let v_101 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_101.xy, r21.z);
  let v_102 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_102.xy, r22.z);
  let v_103 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_103.xy, r23.z);
  let v_104 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_104.xy, r24.z);
  let v_105 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_105.xy, r25.z);
  let v_106 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_106.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.z = dot(r9, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_107 = abs(r8.yyyy);
  r3.w = max(v_107.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r3.w * r2.w);
  r2.w = fma(r3.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.z = clamp(fma(v7.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_5[3u].z);
  let v_108 = -(r2.wwww);
  r2.w = fma(r3.z, v_108.w, r2.w);
  let v_109 = dot(r2.xyz, v_19.xyz);
  r3.z = clamp(vec4<f32>(v_109, v_109, v_109, v_109).z, 0.0f, 1.0f);
  let v_110 = dot(r5.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_110, v_110, v_110, v_110).x, 0.0f, 1.0f);
  let v_111 = dot(r6.xyz, v_19.xyz);
  r8.y = clamp(vec4<f32>(v_111, v_111, v_111, v_111).y, 0.0f, 1.0f);
  let v_112 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_112.xy, r6.zw);
  let v_113 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_113.xy);
  let v_114 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_114.xy);
  let v_115 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_115.xy, r6.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_116 = fma(cb12_12.tint_symbol_4[0u].xx, r6.xy, r3.ww);
  r6 = vec4<f32>(v_116.xy, r6.zw);
  r4.w = (r1.x * r6.y);
  r5.w = fma((-(r1.xxxx)).w, r6.x, 1.0f);
  r4.w = (r3.z * r4.w);
  r4.w = (r4.w * 0.25f);
  r3.z = (r3.z * r5.w);
  let v_117 = fma(r0.xyz, r3.zzz, r4.www);
  r6 = vec4<f32>(v_117.xyz, r6.w);
  let v_118 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_118.xyz, r6.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_119 = (v_16.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_119.xyz, r8.w);
    let v_120 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_120.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_121 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = (r9.xyz + v_16.xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    let v_123 = bitcast<vec3<u32>>(r4.www);
    let v_124 = r8.xyz;
    let v_125 = select(r9.xyz, v_124, (v_123 != vec3<u32>()));
    r8 = vec4<f32>(v_125.xyz, r8.w);
    r4.w = dot(r8.xyz, r8.xyz);
    let v_126 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_126.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_127 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_127.xyz, r8.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[11u].w);
    r4.w = (r4.w / r6.w);
    let v_128 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_128.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_129 = dot(r8.xyz, r2.xyz);
    r7.w = clamp(vec4<f32>(v_129, v_129, v_129, v_129).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r4.w * r6.w);
    let v_130 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = fma(r4.xyz, r1.yyy, r8.xyz);
    r8 = vec4<f32>(v_132.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_133 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_133.xyz, r8.w);
    let v_134 = dot(r8.xyz, r5.xyz);
    r7.w = clamp(vec4<f32>(v_134, v_134, v_134, v_134).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.x = (r7.w * r7.w);
    r8.x = (r8.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
    r6.w = (r6.w * r7.w);
    r4.w = (r4.w * r6.w);
    r4.w = (r4.w * 0.25f);
    let v_135 = (r4.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
  }
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    let v_136 = bitcast<u32>(r6.w);
    let v_137 = r4.w;
    r3.z = select(r3.z, v_137, (v_136 != 0u));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_138 = (v_16.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_138.xyz, r10.w);
      let v_139 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_139.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_140 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_140.xyz, r11.w);
      let v_141 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_141.xyz, r11.w);
      let v_142 = bitcast<vec3<u32>>(r4.www);
      let v_143 = r10.xyz;
      let v_144 = select(r11.xyz, v_143, (v_142 != vec3<u32>()));
      r10 = vec4<f32>(v_144.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_145 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_146 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[12u].w);
      r4.w = (r4.w / r6.w);
      let v_147 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_147.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_148 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_149 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_150.xyz, r9.w);
      let v_151 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_152 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_154 = fma(r4.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_154.xyz, r8.w);
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
      let v_155 = (v_16.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_157 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = bitcast<vec3<u32>>(r4.www);
      let v_160 = r10.xyz;
      let v_161 = select(r11.xyz, v_160, (v_159 != vec3<u32>()));
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_162 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_163 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[13u].w);
      r4.w = (r4.w / r6.w);
      let v_164 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_164.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_165 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_165, v_165, v_165, v_165).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_166 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      let v_167 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_167.xyz, r9.w);
      let v_168 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_169 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_171 = fma(r4.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_171.xyz, r8.w);
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
      let v_172 = (v_16.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_174 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = bitcast<vec3<u32>>(r4.www);
      let v_177 = r10.xyz;
      let v_178 = select(r11.xyz, v_177, (v_176 != vec3<u32>()));
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_179 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_180 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.w);
      let v_181 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r10.xyz, v_181.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_182 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_183 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_184.xyz, r9.w);
      let v_185 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_186 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      let v_187 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_188 = fma(r4.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_188.xyz, r8.w);
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
      let v_189 = (v_16.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = (v7.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_191 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = bitcast<vec3<u32>>(r4.www);
      let v_194 = r10.xyz;
      let v_195 = select(r11.xyz, v_194, (v_193 != vec3<u32>()));
      r10 = vec4<f32>(v_195.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_196 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_196.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_197 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[15u].w);
      r4.w = (r4.w / r6.w);
      let v_198 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r10.xyz, v_198.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_199 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_200 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_201.xyz, r9.w);
      let v_202 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_203 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      let v_204 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_205 = fma(r4.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_205.xyz, r8.w);
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
      let v_206 = (v_16.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      let v_207 = (v7.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_207.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_208 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      let v_210 = bitcast<vec3<u32>>(r4.www);
      let v_211 = r10.xyz;
      let v_212 = select(r11.xyz, v_211, (v_210 != vec3<u32>()));
      r10 = vec4<f32>(v_212.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_213 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_213.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_214 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[16u].w);
      r4.w = (r4.w / r6.w);
      let v_215 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r10.xyz, v_215.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_216 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_217 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_218.xyz, r9.w);
      let v_219 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_220 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_220.xyz, r10.w);
      let v_221 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_222 = fma(r4.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_222.xyz, r8.w);
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
      let v_223 = (v_16.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_223.xyz, r10.w);
      let v_224 = (v7.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_224.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_225 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_226.xyz, r11.w);
      let v_227 = bitcast<vec3<u32>>(r4.www);
      let v_228 = r10.xyz;
      let v_229 = select(r11.xyz, v_228, (v_227 != vec3<u32>()));
      r10 = vec4<f32>(v_229.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_230 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_230.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_231 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[17u].w);
      r4.w = (r4.w / r6.w);
      let v_232 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r10.xyz, v_232.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_233 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_233, v_233, v_233, v_233).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_234 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      let v_235 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_235.xyz, r9.w);
      let v_236 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_237 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      let v_238 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].x, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_239 = fma(r4.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_239.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_240 = (v_16.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      let v_241 = (v7.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      r4.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r4.w = (r4.w * cb3_3.tint_symbol_2[26u].w);
      let v_242 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = (r11.xyz + v_16.xyz);
      r11 = vec4<f32>(v_243.xyz, r11.w);
      let v_244 = bitcast<vec3<u32>>(r3.zzz);
      let v_245 = r10.xyz;
      let v_246 = select(r11.xyz, v_245, (v_244 != vec3<u32>()));
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r3.z = dot(r10.xyz, r10.xyz);
      let v_247 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_247.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      r4.w = inverseSqrt(r4.w);
      let v_248 = (r4.www * r10.xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      r3.z = clamp(fma(-(r3.zzzz), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r4.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r4.w = fma(r4.w, r3.z, cb3_3.tint_symbol_2[18u].w);
      r3.z = (r3.z / r4.w);
      let v_249 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r4.w = dot(r10.xyz, v_249.xyz);
      r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_250 = dot(r10.xyz, r2.xyz);
      r6.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
      r4.w = (r4.w * r6.w);
      r6.w = (r3.z * r4.w);
      let v_251 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      let v_252 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_252.xyz, r9.w);
      let v_253 = fma(r4.xyz, r1.yyy, r10.xyz);
      r4 = vec4<f32>(v_253.xyz, r4.w);
      r1.y = dot(r4.xyz, r4.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_254 = (r1.yyy * r4.xyz);
      r4 = vec4<f32>(v_254.xyz, r4.w);
      let v_255 = dot(r4.xyz, r5.xyz);
      r1.y = clamp(vec4<f32>(v_255, v_255, v_255, v_255).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r4.x = (r1.y * r1.y);
      r4.x = (r4.x * r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r3.w);
      r1.y = (r4.w * r1.y);
      r1.y = (r3.z * r1.y);
      r1.y = (r1.y * 0.25f);
      let v_256 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_256.xyz, r8.w);
    }
  }
  r1.y = (r5.w * r5.w);
  r1.x = (r1.x * r1.x);
  let v_257 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_257.xyz, r4.w);
  let v_258 = fma(r1.yyy, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_258.xyz, r4.w);
  let v_259 = fma(r6.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_259.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_260 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_260.xyz);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_261 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_261.xyz, r6.w);
  let v_262 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_262.xyz, r6.w);
  let v_263 = fma(r1.yzw, r2.www, r6.xyz);
  r1 = vec4<f32>(r1.x, v_263.xyz);
  let v_264 = (r3.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_264.xyz);
  let v_265 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_265.xyz, r6.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_266 = dot(r8.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_266, v_266, v_266, v_266).x, 0.0f, 1.0f);
  let v_267 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_267.xyz, r6.w);
  let v_268 = fma(r6.xyz, r3.xxx, r1.yzw);
  r1 = vec4<f32>(v_268.xyz, r1.w);
  let v_269 = (r5.www * r1.xyz);
  r1 = vec4<f32>(v_269.xyz, r1.w);
  let v_270 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_270.xyz, r0.w);
  r1.x = ((-(r5.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.y = (r1.y + r1.y);
  let v_271 = -(r1.yyyy);
  let v_272 = -(r5.xxyz);
  let v_273 = fma(r2.xyz, v_271.yzw, v_272.yzw);
  r1 = vec4<f32>(r1.x, v_273.xyz);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = max(r2.x, cb5_5.tint_symbol_3[6u].z);
  let v_274 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_274.xyz);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_275 = (r2.yzw / r1.yyy);
  r2 = vec4<f32>(r2.x, v_275.xyz);
  let v_276 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_276.xyz);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_277 = bitcast<vec2<u32>>(r1.yy);
  let v_278 = r2.yz;
  let v_279 = select(r2.wz, v_278, (v_277 != vec2<u32>()));
  let v_280 = r1;
  r1 = vec4<f32>(v_280.x, v_279.xy, v_280.w);
  let v_281 = r2.x;
  r2 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_281);
  r1.y = max(r3.y, r3.x);
  let v_282 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_282.xyz);
  let v_283 = (r1.xxx * r1.yzw);
  r1 = vec4<f32>(v_283.xyz, r1.w);
  let v_284 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r0.xyz);
  r0 = vec4<f32>(v_284.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_285 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_285.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_286 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_286 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_287 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_287.xyz, r2.w);
    let v_288 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_288, v_288, v_288, v_288).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_289 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_290 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_290.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_291 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_291.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_292 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_292.xyz, r2.w);
    let v_293 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_293.xyz, r2.w);
    let v_294 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_294.xyz, r3.w);
    let v_295 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_297 = (r2.xyz + v_296.xyz);
    r2 = vec4<f32>(v_297.xyz, r2.w);
    let v_298 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_299 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_299.xyz, r3.w);
    let v_300 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_300.xy, r1.z, v_300.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_301 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_301.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_302 = -(r0.xyxz);
    let v_303 = fma(r1.xyw, r0.www, v_302.xyw);
    r1 = vec4<f32>(v_303.xy, r1.z, v_303.z);
    let v_304 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_304.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_305 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_305.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_306 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_306 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_307 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_307.xyz, r3.w);
    let v_308 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_308, v_308, v_308, v_308).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_309 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_309, v_309, v_309, v_309).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_310 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_310.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_311 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_311.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_312 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_312.xyz, r3.w);
    let v_313 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_314.xyz, r4.w);
    let v_315 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_317 = (r3.xyz + v_316.xyz);
    r3 = vec4<f32>(v_317.xyz, r3.w);
    let v_318 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_318.x, r2.y, v_318.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_319 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_319.xyz, r3.w);
    let v_320 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_320.x, r2.y, v_320.yz);
    let v_321 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_321.x, r2.y, v_321.yz);
    let v_322 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_322.xyz, r1.w);
  }
  let v_323 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_323.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_324 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_324);
  return o0;
}
