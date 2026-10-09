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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
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
  r0 = textureSample(t2, s2, v1.xyz.xyxx.xy);
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_3 = (r0.zz * v6.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = ((-(r1.xyxx)).xy * cb12_12.tint_symbol_4[0u].xx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, v1.xyz.xy.xy);
  r2.x = 1.0f;
  let v_5 = r0;
  r2 = vec4<f32>(r2.x, v_5.xyw);
  r0.z = 0.0f;
  loop {
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) >= 8i)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      break;
    }
    let v_6 = fma(r1.xy, vec2<f32>(0.125f), r1.zw);
    r3 = vec4<f32>(v_6.xy, r3.zw);
    r4 = textureSample(t2, s2, r3.xyxx.xy).zxyw;
    r3.z = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.x)));
    r4.x = (r2.x + -0.125f);
    let v_7 = bitcast<vec2<u32>>(r3.zz);
    let v_8 = r3.xy;
    let v_9 = select(r1.zw, v_8, (v_7 != vec2<u32>()));
    r1 = vec4<f32>(r1.xy, v_9.xy);
    let v_10 = bitcast<vec4<u32>>(r3.zzzz);
    let v_11 = r4;
    r2 = select(r2, v_11, (v_10 != vec4<u32>()));
    r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
  }
  r0 = textureSample(t0, s0, r1.zwzz.xy);
  let v_12 = fma(r2.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].x, 0.00100000004749745131f);
  let v_13 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = (r1.yyy * v4.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r1.xxx, v3.xyz, r3.xyz);
  r1 = vec4<f32>(v_15.xy, r1.z, v_15.z);
  let v_16 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r1.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r1.x = dot(r2.yz, r2.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_18 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r1.xx * v0.xy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].wwww)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_20 = (r2.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = -(v5.xyzx);
  let v_23 = (v_22.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_24 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r4.xyz, r1.yyy, v_25.xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  r2.z = dot(r6.xyz, r6.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_27 = (r2.zzz * r6.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  r2.z = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r2.z = max(r2.z, 0.0f);
  r2.w = ((-(r2.zzzz)).w + cb12_12.tint_symbol_4[0u].z);
  r2.z = (r2.z * 558.0f);
  r2.z = fma(r2.w, 3.0f, r2.z);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_28 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_30.xyz, r8.w);
  let v_31 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_32.xyz, r9.w);
  let v_33 = &(x0[0u]);
  let v_34 = r9;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_35.xyz, r10.w);
  let v_36 = &(x0[1u]);
  let v_37 = r10;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_38.xyz, r11.w);
  let v_39 = &(x0[2u]);
  let v_40 = r11;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = &(x0[3u]);
  let v_43 = r8;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_45 = r12;
  r12 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_46 = abs(r11.yyyy);
  r4.w = max(v_46.w, abs(r11.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_47 = (bitcast<u32>(r4.w) != 0u);
  let v_48 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_48, v_47);
  let v_49 = abs(r10.yyyy);
  r5.w = max(v_49.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_50 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_50 != 0u));
  let v_51 = abs(r9.yyyy);
  r5.w = max(v_51.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_52 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_52 != 0u));
  let v_53 = x0[bitcast<i32>(r3.w)];
  r9 = vec4<f32>(v_53.xyz, r9.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r9.z);
  let v_54 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_54.xy, r11.z, v_54.z);
  r11.z = dpdx(r3.w);
  let v_55 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_55.xyz, r13.w);
  r13.w = dpdy(r3.w);
  let v_56 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_56.xy);
  let v_57 = -(r8.zwzz);
  let v_58 = fma(r11.xz, r13.xz, v_57.xy);
  r14 = vec4<f32>(v_58.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_59 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_59.z);
  let v_60 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_60.xy);
  let v_61 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_61.xy);
  let v_62 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_62.xy);
  r3.w = fma((-(r5.wwww)).w, r8.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r8.w, r3.w);
  let v_63 = bitcast<u32>(r4.w);
  let v_64 = r3.w;
  r12.z = select(r9.z, v_64, (v_63 != 0u));
  r10.z = 0.0f;
  let v_65 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_65.xyz, r9.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_67.xyz, r11.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_69.xyz, r13.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_71.xyz, r14.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_73.xyz, r15.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_75.xyz, r16.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_77.xyz, r17.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_79.xyz, r18.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_81.xyz, r19.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_83.xyz, r20.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_85.xyz, r21.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_87.xyz, r22.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_89.xyz, r23.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_91.xyz, r24.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_93.xyz, r25.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_94.xy, r12.zw);
  let v_95 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_95.xyz, r10.w);
  let v_96 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_96.xy, r9.z);
  let v_97 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_97.xy, r11.z);
  let v_98 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_98.xy, r13.z);
  let v_99 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_99.xy, r14.z);
  let v_100 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_100.xy, r15.z);
  let v_101 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_102.xy, r17.z);
  let v_103 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_104.xy, r19.z);
  let v_105 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_105.xy, r20.z);
  let v_106 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_107.xy, r22.z);
  let v_108 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_108.xy, r23.z);
  let v_109 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_109.xy, r24.z);
  let v_110 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_110.xy, r25.z);
  let v_111 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_111.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.w = dot(r9, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_112 = abs(r8.yyyy);
  r4.w = max(v_112.w, abs(r8.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  let v_113 = (r2.xyw * r2.xyw);
  r2 = vec4<f32>(v_113.xy, r2.z, v_113.z);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_114 = -(r2.wwww);
  r2.w = fma(r3.w, v_114.w, r2.w);
  let v_115 = dot(r3.xyz, v_25.xyz);
  r3.w = clamp(vec4<f32>(v_115, v_115, v_115, v_115).w, 0.0f, 1.0f);
  let v_116 = dot(r5.xyz, r3.xyz);
  r8.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  let v_117 = dot(r6.xyz, v_25.xyz);
  r8.y = clamp(vec4<f32>(v_117, v_117, v_117, v_117).y, 0.0f, 1.0f);
  let v_118 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_118.xy, r8.zw);
  let v_119 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_119.xy);
  let v_120 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_120.xy);
  let v_121 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_121.xy, r8.zw);
  r4.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_122 = fma(cb12_12.tint_symbol_4[0u].yy, r8.xy, r4.ww);
  r8 = vec4<f32>(v_122.xy, r8.zw);
  let v_123 = (r2.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_123.xy);
  r2.z = (r8.z * 0.125f);
  r5.w = fma((-(r1.xxxx)).w, r8.x, 1.0f);
  r6.x = dot(r3.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r2.z * r6.x);
  r6.x = (r1.x * r6.x);
  r6.x = (r3.w * r6.x);
  r3.w = (r3.w * r5.w);
  let v_124 = fma(r0.xyz, r3.www, r6.xxx);
  r6 = vec4<f32>(v_124.xyz, r6.w);
  let v_125 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_125.xyz, r6.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_126 = (v_22.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_126.xyz, r8.w);
    let v_127 = (v5.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_128 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    let v_129 = (r9.xyz + v_22.xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    let v_130 = bitcast<vec3<u32>>(r6.www);
    let v_131 = r8.xyz;
    let v_132 = select(r9.xyz, v_131, (v_130 != vec3<u32>()));
    r8 = vec4<f32>(v_132.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    let v_133 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_133.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_134 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_135 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xyz, v_135.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_136 = dot(r8.xyz, r3.xyz);
    r9.x = clamp(vec4<f32>(v_136, v_136, v_136, v_136).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r6.w * r7.w);
    let v_137 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = fma(r4.xyz, r1.yyy, r8.xyz);
    r8 = vec4<f32>(v_139.xyz, r8.w);
    r9.w = dot(r8.xyz, r8.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_140 = (r8.xyz * r9.www);
    r8 = vec4<f32>(v_140.xyz, r8.w);
    let v_141 = dot(r8.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
    let v_142 = dot(r8.xyz, r3.xyz);
    r8.x = clamp(vec4<f32>(v_142, v_142, v_142, v_142).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r6.w = (r2.z * r6.w);
    let v_143 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_143.xyz, r8.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    let v_144 = bitcast<u32>(r7.w);
    let v_145 = r6.w;
    r3.w = select(r3.w, v_145, (v_144 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_146 = (v_22.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      let v_147 = (v5.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_148 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      let v_149 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = bitcast<vec3<u32>>(r6.www);
      let v_151 = r10.xyz;
      let v_152 = select(r11.xyz, v_151, (v_150 != vec3<u32>()));
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_153 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_154 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_155 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_155.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_156 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_157 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_158.xyz, r9.w);
      let v_159 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_160 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
      let v_162 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_162, v_162, v_162, v_162).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.z * r6.w);
      let v_163 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_163.xyz, r8.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_164 = (v_22.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_164.xyz, r10.w);
      let v_165 = (v5.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_166 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      let v_167 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = bitcast<vec3<u32>>(r6.www);
      let v_169 = r10.xyz;
      let v_170 = select(r11.xyz, v_169, (v_168 != vec3<u32>()));
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_171 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_172 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_173 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_173.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_174 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_175 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_176.xyz, r9.w);
      let v_177 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_178 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_179, v_179, v_179, v_179).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
      let v_180 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_180, v_180, v_180, v_180).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.z * r6.w);
      let v_181 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_181.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_182 = (v_22.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_182.xyz, r10.w);
      let v_183 = (v5.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_184 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      let v_185 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = bitcast<vec3<u32>>(r6.www);
      let v_187 = r10.xyz;
      let v_188 = select(r11.xyz, v_187, (v_186 != vec3<u32>()));
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_189 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_190 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r7.w);
      let v_191 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_191.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_192 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_192, v_192, v_192, v_192).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_193 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_194.xyz, r9.w);
      let v_195 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_195.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_196 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      let v_197 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_197, v_197, v_197, v_197).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
      let v_198 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_198, v_198, v_198, v_198).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.z * r6.w);
      let v_199 = fma(r6.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_199.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_200 = (v_22.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_200.xyz, r10.w);
      let v_201 = (v5.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_202 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      let v_203 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      let v_204 = bitcast<vec3<u32>>(r6.www);
      let v_205 = r10.xyz;
      let v_206 = select(r11.xyz, v_205, (v_204 != vec3<u32>()));
      r10 = vec4<f32>(v_206.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_207 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_207.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_208 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[15u].w);
      r6.w = (r6.w / r7.w);
      let v_209 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_209.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_210 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_210, v_210, v_210, v_210).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_211 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_212.xyz, r9.w);
      let v_213 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_213.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_214 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      let v_215 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_215, v_215, v_215, v_215).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
      let v_216 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_216, v_216, v_216, v_216).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.z * r6.w);
      let v_217 = fma(r6.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_217.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_218 = (v_22.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_218.xyz, r10.w);
      let v_219 = (v5.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_219.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_220 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      let v_221 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      let v_222 = bitcast<vec3<u32>>(r6.www);
      let v_223 = r10.xyz;
      let v_224 = select(r11.xyz, v_223, (v_222 != vec3<u32>()));
      r10 = vec4<f32>(v_224.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_225 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_225.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_226 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[16u].w);
      r6.w = (r6.w / r7.w);
      let v_227 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_227.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_228 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_228, v_228, v_228, v_228).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_229 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_229.xyz, r11.w);
      let v_230 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_230.xyz, r9.w);
      let v_231 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_232 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      let v_233 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_233, v_233, v_233, v_233).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
      let v_234 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_234, v_234, v_234, v_234).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.z * r6.w);
      let v_235 = fma(r6.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_235.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_236 = (v_22.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      let v_237 = (v5.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_238 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_238.xyz, r11.w);
      let v_239 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_239.xyz, r11.w);
      let v_240 = bitcast<vec3<u32>>(r6.www);
      let v_241 = r10.xyz;
      let v_242 = select(r11.xyz, v_241, (v_240 != vec3<u32>()));
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_243 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_243.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_244 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[17u].w);
      r6.w = (r6.w / r7.w);
      let v_245 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_245.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_246 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_247 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_247.xyz, r11.w);
      let v_248 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_248.xyz, r9.w);
      let v_249 = fma(r4.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_249.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_250 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_250.xyz, r10.w);
      let v_251 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_251, v_251, v_251, v_251).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].y, r9.w, r4.w);
      let v_252 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_252, v_252, v_252, v_252).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.w * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.z * r6.w);
      let v_253 = fma(r6.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_253.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_254 = (v_22.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_254.xyz, r10.w);
      let v_255 = (v5.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[26u].w);
      let v_256 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_256.xyz, r11.w);
      let v_257 = (r11.xyz + v_22.xyz);
      r11 = vec4<f32>(v_257.xyz, r11.w);
      let v_258 = bitcast<vec3<u32>>(r3.www);
      let v_259 = r10.xyz;
      let v_260 = select(r11.xyz, v_259, (v_258 != vec3<u32>()));
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r3.w = dot(r10.xyz, r10.xyz);
      let v_261 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_261.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_262 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r3.w, cb3_3.tint_symbol_2[18u].w);
      r3.w = (r3.w / r6.w);
      let v_263 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.w = dot(r10.xyz, v_263.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_264 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_264, v_264, v_264, v_264).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r3.w * r6.w);
      let v_265 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_265.xyz, r11.w);
      let v_266 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_266.xyz, r9.w);
      let v_267 = fma(r4.xyz, r1.yyy, r10.xyz);
      r4 = vec4<f32>(v_267.xyz, r4.w);
      r1.y = dot(r4.xyz, r4.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_268 = (r1.yyy * r4.xyz);
      r4 = vec4<f32>(v_268.xyz, r4.w);
      let v_269 = dot(r4.xyz, r5.xyz);
      r1.y = clamp(vec4<f32>(v_269, v_269, v_269, v_269).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r5.x = (r1.y * r1.y);
      r5.x = (r5.x * r5.x);
      r1.y = (r1.y * r5.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].y, r1.y, r4.w);
      let v_270 = dot(r4.xyz, r3.xyz);
      r4.x = clamp(vec4<f32>(v_270, v_270, v_270, v_270).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = (r6.w * r1.y);
      r1.y = (r3.w * r1.y);
      r1.y = (r2.z * r1.y);
      let v_271 = fma(r1.yyy, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_271.xyz, r8.w);
    }
  }
  r1.y = (r5.w * r5.w);
  r1.x = (r1.x * r1.x);
  let v_272 = (r8.xyz * r1.xxx);
  r4 = vec4<f32>(v_272.xyz, r4.w);
  let v_273 = fma(r1.yyy, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_273.xyz, r4.w);
  let v_274 = fma(r6.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_274.xyz, r4.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_275 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_275.xyz);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_276 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_276.xyz, r5.w);
  let v_277 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_277.xyz, r5.w);
  let v_278 = fma(r1.yzw, r2.zzz, r5.xyz);
  r1 = vec4<f32>(r1.x, v_278.xyz);
  let v_279 = (r2.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_279.xyz);
  let v_280 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r2 = vec4<f32>(r2.x, v_280.xyz);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_281 = dot(r5.xyz, r3.xyz);
  r1.x = clamp(vec4<f32>(v_281, v_281, v_281, v_281).x, 0.0f, 1.0f);
  let v_282 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r2.yzw);
  r2 = vec4<f32>(r2.x, v_282.xyz);
  let v_283 = fma(r2.yzw, r2.xxx, r1.yzw);
  r1 = vec4<f32>(v_283.xyz, r1.w);
  let v_284 = (r5.www * r1.xyz);
  r1 = vec4<f32>(v_284.xyz, r1.w);
  let v_285 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_285.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_286 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_286.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_287 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_287 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_288 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_288.xyz, r2.w);
    let v_289 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_289, v_289, v_289, v_289).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_290 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_290, v_290, v_290, v_290).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_291 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_291.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_292 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_292.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_293 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_293.xyz);
    let v_294 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_294.xyz);
    let v_295 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_295.xyz, r3.w);
    let v_296 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_296.xyz, r2.w);
    let v_297 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_298 = (r2.xyz + v_297.xyz);
    r2 = vec4<f32>(v_298.xyz, r2.w);
    let v_299 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_299.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_300 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_300.xyz, r3.w);
    let v_301 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_301.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_302 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_302.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_303 = -(r0.xyzx);
    let v_304 = fma(r1.xyz, r2.xxx, v_303.xyz);
    r1 = vec4<f32>(v_304.xyz, r1.w);
    let v_305 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_305.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_306 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_306.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_307 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_307 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_308 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_308.xyz, r3.w);
    let v_309 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_309, v_309, v_309, v_309).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_310 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_310, v_310, v_310, v_310).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_311 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_311.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_312 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_312.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_313 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_314.xyz, r3.w);
    let v_315 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_315.xyz, r4.w);
    let v_316 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_316.xyz, r3.w);
    let v_317 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_318 = (r3.xyz + v_317.xyz);
    r3 = vec4<f32>(v_318.xyz, r3.w);
    let v_319 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_319.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_320 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_320.xyz, r4.w);
    let v_321 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_321.xy, r2.z, v_321.z);
    let v_322 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_322.xy, r2.z, v_322.z);
    let v_323 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_323.xyz, r1.w);
  }
  let v_324 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_324.xyz, o0.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_325 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_325);
  return tint_symbol_8(o0, o1, o2);
}
