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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_3 = (r0.zz * v6.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = ((-(r1.xyxx)).xy * cb12_12.tint_symbol_4[0u].yy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, v1.xy.xy);
  let v_5 = r0;
  let v_6 = r2;
  r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r2.x = -1.0f;
  r2.w = (-(r0.wwww)).w;
  r0.z = 0.0f;
  loop {
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) >= 8i)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      break;
    }
    let v_7 = fma(r1.xy, vec2<f32>(0.125f), r1.zw);
    r3 = vec4<f32>(v_7.xy, r3.zw);
    r4 = textureSample(t3, s3, r3.xyxx.xy);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r2.w)));
    r5.x = (r2.x + 0.125f);
    let v_8 = bitcast<vec2<u32>>(r3.zz);
    let v_9 = r3.xy;
    let v_10 = select(r1.zw, v_9, (v_8 != vec2<u32>()));
    r1 = vec4<f32>(r1.xy, v_10.xy);
    let v_11 = (r4.xyw * vec3<f32>(1.0f, 1.0f, -1.0f));
    r5 = vec4<f32>(r5.x, v_11.xyz);
    let v_12 = bitcast<vec4<u32>>(r3.zzzz);
    let v_13 = r5;
    r2 = select(r2, v_13, (v_12 != vec4<u32>()));
    r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
  }
  r0 = textureSample(t0, s0, r1.zwzz.xy);
  let v_14 = fma(r2.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].y, 0.00100000004749745131f);
  let v_15 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = (r1.yyy * v4.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r1.xxx, v3.xyz, r3.xyz);
  r1 = vec4<f32>(v_17.xy, r1.z, v_17.z);
  let v_18 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_19 = (r1.www * r1.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r1.x = dot(r2.yz, r2.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_20 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r1.xxx * v0.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[1u].xxxx)).x, 0.0f, 1.0f);
  r2.w = v0.w;
  r0 = (r0 * r2);
  let v_22 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = -(v5.xyzx);
  let v_24 = (v_23.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_25 = (r1.yyy * r2.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_27 = fma(r2.xyz, r1.yyy, v_26.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_28 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_29.xy, r6.zw);
  r2.w = (cb12_12.tint_symbol_4[0u].w + -500.0f);
  r2.w = max(r2.w, 0.0f);
  r3.w = ((-(r2.wwww)).w + cb12_12.tint_symbol_4[0u].w);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.w, 3.0f, r2.w);
  r3.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_30 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = &(x0[0u]);
  let v_36 = r9;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_37.xyz, r10.w);
  let v_38 = &(x0[1u]);
  let v_39 = r10;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_40.xyz, r11.w);
  let v_41 = &(x0[2u]);
  let v_42 = r11;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = &(x0[3u]);
  let v_45 = r8;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_47 = r12;
  r12 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_48 = abs(r11.yyyy);
  r5.w = max(v_48.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_49 = (bitcast<u32>(r5.w) != 0u);
  let v_50 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_50, v_49);
  let v_51 = abs(r10.yyyy);
  r6.z = max(v_51.z, abs(r10.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_52 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_52 != 0u));
  let v_53 = abs(r9.yyyy);
  r6.z = max(v_53.z, abs(r9.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_54 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_54 != 0u));
  let v_55 = x0[bitcast<i32>(r4.w)];
  r9 = vec4<f32>(v_55.xyz, r9.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r9.z);
  let v_56 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_56.xy, r11.z, v_56.z);
  r11.z = dpdx(r4.w);
  let v_57 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  r13.w = dpdy(r4.w);
  let v_58 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_58.xy);
  let v_59 = -(r8.zwzz);
  let v_60 = fma(r11.xz, r13.xz, v_59.xy);
  r14 = vec4<f32>(v_60.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_61 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_61.z);
  let v_62 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_62.xy);
  let v_63 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_63.xy);
  let v_64 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_64.xy);
  r4.w = fma((-(r6.zzzz)).w, r8.z, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r8.w, r4.w);
  let v_65 = bitcast<u32>(r5.w);
  let v_66 = r4.w;
  r12.z = select(r9.z, v_66, (v_65 != 0u));
  r10.z = 0.0f;
  let v_67 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_67.xyz, r9.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_69.xyz, r11.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_75.xyz, r15.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_77.xyz, r16.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_79.xyz, r17.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_81.xyz, r18.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_83.xyz, r19.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_85.xyz, r20.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_87.xyz, r21.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_89.xyz, r22.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_91.xyz, r23.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_93.xyz, r24.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_94.xy, r12.zw);
  let v_95 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_95.xyz, r25.w);
  let v_96 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_96.xy, r12.zw);
  let v_97 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_97.xyz, r10.w);
  let v_98 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_98.xy, r9.z);
  let v_99 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_101.xy, r14.z);
  let v_102 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_102.xy, r15.z);
  let v_103 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_104.xy, r17.z);
  let v_105 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_105.xy, r18.z);
  let v_106 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_106.xy, r19.z);
  let v_107 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_107.xy, r20.z);
  let v_108 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_108.xy, r21.z);
  let v_109 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_109.xy, r22.z);
  let v_110 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_110.xy, r23.z);
  let v_111 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_111.xy, r24.z);
  let v_112 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_112.xy, r25.z);
  let v_113 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_113.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.w = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_114 = abs(r8.yyyy);
  r5.w = max(v_114.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_115 = -(r3.wwww);
  r3.w = fma(r4.w, v_115.w, r3.w);
  let v_116 = dot(r3.xyz, v_26.xyz);
  r4.w = clamp(vec4<f32>(v_116, v_116, v_116, v_116).w, 0.0f, 1.0f);
  let v_117 = dot(r4.xyz, r3.xyz);
  r8.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
  let v_118 = dot(r5.xyz, v_26.xyz);
  r8.y = clamp(vec4<f32>(v_118, v_118, v_118, v_118).y, 0.0f, 1.0f);
  let v_119 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
  r6 = vec4<f32>(r6.xy, v_119.xy);
  let v_120 = (r6.zw * r6.zw);
  r8 = vec4<f32>(v_120.xy, r8.zw);
  let v_121 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_121.xy, r8.zw);
  let v_122 = (r6.zw * r8.xy);
  r6 = vec4<f32>(r6.xy, v_122.xy);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].zzzz)).w + 1.0f);
  let v_123 = fma(cb12_12.tint_symbol_4[0u].zz, r6.zw, r5.ww);
  r6 = vec4<f32>(r6.xy, v_123.xy);
  let v_124 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_124.xy, r8.zw);
  r2.w = (r8.x * 0.125f);
  r6.z = fma((-(r1.xxxx)).z, r6.z, 1.0f);
  r5.x = dot(r3.xyz, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r2.w * r5.x);
  r5.x = (r1.x * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.z);
  let v_125 = fma(r0.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_125.xyz, r5.w);
  let v_126 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_127 = ((-(v5.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_127.x, r8.y, v_127.yz);
    let v_128 = (v5.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_129 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    let v_130 = (r9.xyz + v_23.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = bitcast<vec3<u32>>(r6.www);
    let v_132 = r8.xzw;
    let v_133 = select(r9.xyz, v_132, (v_131 != vec3<u32>()));
    r8 = vec4<f32>(v_133.x, r8.y, v_133.yz);
    r6.w = dot(r8.xzw, r8.xzw);
    let v_134 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_134.x, r8.y, v_134.yz);
    r7.w = dot(r8.xzw, r8.xzw);
    r7.w = inverseSqrt(r7.w);
    let v_135 = (r7.www * r8.xzw);
    r8 = vec4<f32>(v_135.x, r8.y, v_135.yz);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_136 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xzw, v_136.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_137 = dot(r8.xzw, r3.xyz);
    r9.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r6.w * r7.w);
    let v_138 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = fma(r2.xyz, r1.yyy, r8.xzw);
    r8 = vec4<f32>(v_140.x, r8.y, v_140.yz);
    r9.w = dot(r8.xzw, r8.xzw);
    r9.w = inverseSqrt(r9.w);
    let v_141 = (r8.xzw * r9.www);
    r8 = vec4<f32>(v_141.x, r8.y, v_141.yz);
    let v_142 = dot(r8.xzw, r4.xyz);
    r9.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
    let v_143 = dot(r8.xzw, r3.xyz);
    r8.x = clamp(vec4<f32>(v_143, v_143, v_143, v_143).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r6.w = (r2.w * r6.w);
    let v_144 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_144.x, r8.y, v_144.yz);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    let v_145 = bitcast<u32>(r7.w);
    let v_146 = r6.w;
    r4.w = select(r4.w, v_146, (v_145 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_147 = (v_23.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      let v_148 = (v5.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_149 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = (r11.xyz + v_23.xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = bitcast<vec3<u32>>(r6.www);
      let v_152 = r10.xyz;
      let v_153 = select(r11.xyz, v_152, (v_151 != vec3<u32>()));
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_154 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_155 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_156 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_156.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_157 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_158 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      let v_159 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_159.xyz, r9.w);
      let v_160 = fma(r2.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_161 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_163 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_163, v_163, v_163, v_163).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.w * r6.w);
      let v_164 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_164.x, r8.y, v_164.yz);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_165 = (v_23.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = (v5.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_167 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = (r11.xyz + v_23.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = bitcast<vec3<u32>>(r6.www);
      let v_170 = r10.xyz;
      let v_171 = select(r11.xyz, v_170, (v_169 != vec3<u32>()));
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      let v_172 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_173 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_174 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_174.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_175 = dot(r10.xyz, r3.xyz);
      r9.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r6.w * r7.w);
      let v_176 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
      let v_178 = fma(r2.xyz, r1.yyy, r10.xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_179 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = dot(r10.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_180, v_180, v_180, v_180).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_4[0u].z, r9.w, r5.w);
      let v_181 = dot(r10.xyz, r3.xyz);
      r10.x = clamp(vec4<f32>(v_181, v_181, v_181, v_181).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.w * r6.w);
      let v_182 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_182.x, r8.y, v_182.yz);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_183 = (v_23.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = (v5.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_185 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = (r11.xyz + v_23.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = bitcast<vec3<u32>>(r4.www);
      let v_188 = r10.xyz;
      let v_189 = select(r11.xyz, v_188, (v_187 != vec3<u32>()));
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_190 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_191 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.w);
      let v_192 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r10.xyz, v_192.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_193 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_194 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      let v_195 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_195.xyz, r9.w);
      let v_196 = fma(r2.xyz, r1.yyy, r10.xyz);
      r2 = vec4<f32>(v_196.xyz, r2.w);
      r1.y = dot(r2.xyz, r2.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_197 = (r1.yyy * r2.xyz);
      r2 = vec4<f32>(v_197.xyz, r2.w);
      let v_198 = dot(r2.xyz, r4.xyz);
      r1.y = clamp(vec4<f32>(v_198, v_198, v_198, v_198).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r4.x = (r1.y * r1.y);
      r4.x = (r4.x * r4.x);
      r1.y = (r1.y * r4.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].z, r1.y, r5.w);
      let v_199 = dot(r2.xyz, r3.xyz);
      r2.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r1.y = (r1.y * r2.x);
      r1.y = (r6.w * r1.y);
      r1.y = (r4.w * r1.y);
      r1.y = (r2.w * r1.y);
      let v_200 = fma(r1.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_200.x, r8.y, v_200.yz);
    }
  }
  r1.y = (r6.z * r6.z);
  r1.x = (r1.x * r1.x);
  let v_201 = (r8.xzw * r1.xxx);
  r2 = vec4<f32>(v_201.xyz, r2.w);
  let v_202 = fma(r1.yyy, r9.xyz, r2.xyz);
  r2 = vec4<f32>(v_202.xyz, r2.w);
  let v_203 = fma(r5.xyz, r3.www, r2.xyz);
  r2 = vec4<f32>(v_203.xyz, r2.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_204 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_204.xyz);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_205 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_205.xyz, r4.w);
  let v_206 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_206.xyz, r4.w);
  let v_207 = fma(r1.yzw, r2.www, r4.xyz);
  r1 = vec4<f32>(r1.x, v_207.xyz);
  let v_208 = (r6.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_208.xyz);
  let v_209 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_209.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_210 = dot(r5.xyz, r3.xyz);
  r1.x = clamp(vec4<f32>(v_210, v_210, v_210, v_210).x, 0.0f, 1.0f);
  let v_211 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r4.xyz);
  r3 = vec4<f32>(v_211.xyz, r3.w);
  let v_212 = fma(r3.xyz, r6.xxx, r1.yzw);
  r1 = vec4<f32>(v_212.xyz, r1.w);
  let v_213 = (r6.zzz * r1.xyz);
  r1 = vec4<f32>(v_213.xyz, r1.w);
  let v_214 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_214.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.w);
    let v_215 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_215.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_216 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_216 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_217 = (r0.www * r7.xyz);
    r2 = vec4<f32>(v_217.xyz, r2.w);
    let v_218 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_218, v_218, v_218, v_218).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_219 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_220 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_220.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_221 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_221.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_222 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_222.xyz, r2.w);
    let v_223 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_223.xyz, r2.w);
    let v_224 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_224.xyz, r3.w);
    let v_225 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_225.xyz, r2.w);
    let v_226 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_227 = (r2.xyz + v_226.xyz);
    r2 = vec4<f32>(v_227.xyz, r2.w);
    let v_228 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_228.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_229 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_229.xyz, r3.w);
    let v_230 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_230.xy, r1.z, v_230.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_231 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_231.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_232 = -(r0.xyxz);
    let v_233 = fma(r1.xyw, r0.www, v_232.xyw);
    r1 = vec4<f32>(v_233.xy, r1.z, v_233.z);
    let v_234 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_234.xyz, r1.w);
  } else {
    r0.w = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.w);
    let v_235 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_235.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_236 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_236 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_237 = (r0.www * r7.xyz);
    r3 = vec4<f32>(v_237.xyz, r3.w);
    let v_238 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_238, v_238, v_238, v_238).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_239 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_239, v_239, v_239, v_239).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_240 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_240.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_241 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_241.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_242 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_242.xyz, r3.w);
    let v_243 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_243.xyz, r3.w);
    let v_244 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_244.xyz, r4.w);
    let v_245 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_245.xyz, r3.w);
    let v_246 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_247 = (r3.xyz + v_246.xyz);
    r3 = vec4<f32>(v_247.xyz, r3.w);
    let v_248 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_248.x, r2.y, v_248.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_249 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_249.xyz, r3.w);
    let v_250 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_250.x, r2.y, v_250.yz);
    let v_251 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_251.x, r2.y, v_251.yz);
    let v_252 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_252.xyz, r1.w);
  }
  let v_253 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_253.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_254 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_254);
  return o0;
}
