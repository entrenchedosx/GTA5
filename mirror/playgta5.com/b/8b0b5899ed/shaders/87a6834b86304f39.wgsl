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
  let v_23 = ((-(v5.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_24 = (r1.yyy * r2.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r2.xyz, r1.yyy, v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_27 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_28.xy, r6.zw);
  r1.y = (cb12_12.tint_symbol_4[0u].w + -500.0f);
  r1.y = max(r1.y, 0.0f);
  r2.w = ((-(r1.yyyy)).w + cb12_12.tint_symbol_4[0u].w);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r2.w, 3.0f, r1.y);
  r2.x = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r2 = vec4<f32>(r2.x, v_29.xyz);
  let v_30 = (r2.zzz * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r2.yyy, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(r2.www, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = &(x0[0u]);
  let v_35 = r8;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_36.xyz, r9.w);
  let v_37 = &(x0[1u]);
  let v_38 = r9;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_39.xyz, r10.w);
  let v_40 = &(x0[2u]);
  let v_41 = r10;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = &(x0[3u]);
  let v_44 = r7;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r11;
  r11 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_47 = abs(r10.yyyy);
  r4.w = max(v_47.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_48 = (bitcast<u32>(r4.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_49, v_48);
  let v_50 = abs(r9.yyyy);
  r5.w = max(v_50.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_51 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_51 != 0u));
  let v_52 = abs(r8.yyyy);
  r5.w = max(v_52.w, abs(r8.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_53 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r3.w)];
  r8 = vec4<f32>(v_54.xyz, r8.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r5.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r8.z);
  let v_55 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_55.xy, r10.z, v_55.z);
  r10.z = dpdx(r3.w);
  let v_56 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  r12.w = dpdy(r3.w);
  let v_57 = (r10.yw * r12.yw);
  r6 = vec4<f32>(r6.xy, v_57.xy);
  let v_58 = -(r6.zwzz);
  let v_59 = fma(r10.xz, r12.xz, v_58.xy);
  r13 = vec4<f32>(v_59.xy, r13.zw);
  r6.z = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_60 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_60.z);
  let v_61 = (r6.zz * r13.yz);
  r6 = vec4<f32>(r6.xy, v_61.xy);
  let v_62 = max(r6.zw, vec2<f32>());
  r6 = vec4<f32>(r6.xy, v_62.xy);
  let v_63 = min(r6.zw, vec2<f32>(0.5f));
  r6 = vec4<f32>(r6.xy, v_63.xy);
  r3.w = fma((-(r5.wwww)).w, r6.z, r3.w);
  r3.w = fma((-(r5.wwww)).w, r6.w, r3.w);
  let v_64 = bitcast<u32>(r4.w);
  let v_65 = r3.w;
  r11.z = select(r8.z, v_65, (v_64 != 0u));
  r9.z = 0.0f;
  let v_66 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_66.xyz, r8.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_68.xyz, r10.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_70.xyz, r12.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_72.xyz, r13.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_74.xyz, r14.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_76.xyz, r15.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_78.xyz, r16.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_80.xyz, r17.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_84.xyz, r19.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_86.xyz, r20.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_88.xyz, r21.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_90.xyz, r22.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_92.xyz, r23.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_94.xyz, r24.w);
  let v_95 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_96.xyz, r9.w);
  let v_97 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_97.xy, r8.z);
  let v_98 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_98.xy, r10.z);
  let v_99 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_99.xy, r12.z);
  let v_100 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_101.xy, r14.z);
  let v_102 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_102.xy, r15.z);
  let v_103 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_104.xy, r17.z);
  let v_105 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_105.xy, r18.z);
  let v_106 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_106.xy, r19.z);
  let v_107 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_107.xy, r20.z);
  let v_108 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_108.xy, r21.z);
  let v_109 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_109.xy, r22.z);
  let v_110 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_110.xy, r23.z);
  let v_111 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_111.xy, r24.z);
  let v_112 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_112.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.w = dot(r8, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).x, 0.0f, 1.0f);
  let v_113 = abs(r7.yyyy);
  r4.w = max(v_113.w, abs(r7.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r4.w * r2.x);
  r2.x = fma(r3.w, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r3.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_5[3u].z);
  let v_114 = -(r2.xxxx);
  r2.x = fma(r3.w, v_114.x, r2.x);
  r3.w = dot(r3.xyz, v_25.xyz);
  r4.w = clamp(r3.wwww.w, 0.0f, 1.0f);
  r4.w = ((-(abs(r3.wwww))).w + r4.w);
  let v_115 = abs(r3.wwww);
  r3.w = fma(r0.w, r4.w, v_115.w);
  let v_116 = dot(r4.xyz, r3.xyz);
  r4.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  let v_117 = dot(r5.xyz, v_25.xyz);
  r4.y = clamp(vec4<f32>(v_117, v_117, v_117, v_117).y, 0.0f, 1.0f);
  let v_118 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_118.xy, r4.zw);
  let v_119 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_119.xy);
  let v_120 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_120.xy);
  let v_121 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_121.xy, r4.zw);
  r4.z = ((-(cb12_12.tint_symbol_4[0u].zzzz)).z + 1.0f);
  let v_122 = fma(cb12_12.tint_symbol_4[0u].zz, r4.xy, r4.zz);
  r4 = vec4<f32>(v_122.xy, r4.zw);
  let v_123 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_123.xy);
  r1.y = (r4.z * 0.125f);
  r4.x = fma((-(r1.xxxx)).x, r4.x, 1.0f);
  r4.z = dot(r3.xyz, r5.xyz);
  r4.z = clamp(((r4.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r4.z = log2(r4.z);
  r4.z = (r4.z * r4.w);
  r4.z = exp2(r4.z);
  r4.y = (r4.y * r4.z);
  r1.y = (r1.y * r4.y);
  r1.x = (r1.x * r1.y);
  r1.x = (r3.w * r1.x);
  r1.y = (r3.w * r4.x);
  let v_124 = fma(r0.xyz, r1.yyy, r1.xxx);
  r4 = vec4<f32>(r4.x, v_124.xyz);
  let v_125 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_125.xyz);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_126 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_126.xyz);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_127 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_127.xyz, r5.w);
  let v_128 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_128.xyz, r5.w);
  let v_129 = fma(r1.yzw, r3.www, r5.xyz);
  r1 = vec4<f32>(r1.x, v_129.xyz);
  let v_130 = (r6.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_130.xyz);
  let v_131 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_131.xyz, r5.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_132 = dot(r7.xyz, r3.xyz);
  r1.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
  let v_133 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r3 = vec4<f32>(v_133.xyz, r3.w);
  let v_134 = fma(r3.xyz, r6.xxx, r1.yzw);
  r1 = vec4<f32>(v_134.xyz, r1.w);
  let v_135 = (r4.xxx * r1.xyz);
  r1 = vec4<f32>(v_135.xyz, r1.w);
  let v_136 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_136.xyz, r0.w);
  let v_137 = fma(r4.yzw, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_137.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.yzw, r2.yzw);
    r1.x = sqrt(r0.w);
    let v_138 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_138.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.w);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_139 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_139 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_140 = (r0.www * r2.yzw);
    r3 = vec4<f32>(v_140.xyz, r3.w);
    let v_141 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_142 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_143 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_143.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_144 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_144.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_145 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_145.xyz, r3.w);
    let v_146 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_146.xyz, r3.w);
    let v_147 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_147.xyz, r4.w);
    let v_148 = fma(r1.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_148.xyz, r3.w);
    let v_149 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_150 = (r3.xyz + v_149.xyz);
    r3 = vec4<f32>(v_150.xyz, r3.w);
    let v_151 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_151.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_152 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_152.xyz, r4.w);
    let v_153 = fma(r1.xxx, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_153.xy, r1.z, v_153.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_154 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_154.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_155 = -(r0.xyxz);
    let v_156 = fma(r1.xyw, r0.www, v_155.xyw);
    r1 = vec4<f32>(v_156.xy, r1.z, v_156.z);
    let v_157 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_157.xyz, r1.w);
  } else {
    r0.w = dot(r2.yzw, r2.yzw);
    r1.w = sqrt(r0.w);
    let v_158 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_158.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r2.w);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_159 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_159 != 0u));
    r3.x = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_160 = (r0.www * r2.yzw);
    r2 = vec4<f32>(r2.x, v_160.xyz);
    let v_161 = dot(r2.yzw, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_162 = dot(r2.yzw, cb3_3.tint_symbol_2[53u].xyz);
    r2.y = clamp(vec4<f32>(v_162, v_162, v_162, v_162).y, 0.0f, 1.0f);
    r2.y = log2(r2.y);
    r2.y = (r2.y * cb3_3.tint_symbol_2[53u].w);
    r2.y = exp2(r2.y);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_163 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.z = (r2.x + v_163.z);
    r2.z = max(r2.z, 0.0f);
    r2.z = (r2.z * cb3_3.tint_symbol_2[51u].x);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.z = clamp(fma(r1.wwww, r2.zzzz, r3.xxxx).z, 0.0f, 1.0f);
    let v_164 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_164.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_165 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_165.xyz, r3.w);
    let v_166 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_166.xyz, r3.w);
    let v_167 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_167.xyz, r4.w);
    let v_168 = fma(r2.yyy, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_168.xyz, r3.w);
    let v_169 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_170 = (r3.xyz + v_169.xyz);
    r3 = vec4<f32>(v_170.xyz, r3.w);
    let v_171 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_171.xy, r2.z, v_171.z);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_172 = ((-(r2.xywx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_172.xyz, r3.w);
    let v_173 = fma(r1.www, r3.xyz, r2.xyw);
    r2 = vec4<f32>(v_173.xy, r2.z, v_173.z);
    let v_174 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_174.xy, r2.z, v_174.z);
    let v_175 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_175.xyz, r1.w);
  }
  let v_176 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_176.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_177 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_177);
  return o0;
}
