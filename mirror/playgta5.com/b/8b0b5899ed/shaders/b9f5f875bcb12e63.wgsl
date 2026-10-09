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
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_3 = (r0.zz * v6.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = ((-(r1.xyxx)).xy * cb12_12.tint_symbol_4[0u].xx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, v1.xy.xy);
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
  let v_22 = ((-(v5.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_23 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_25 = fma(r4.xyz, r1.yyy, v_24.xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_26 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  r1.y = (cb12_12.tint_symbol_4[0u].z + -500.0f);
  r1.y = max(r1.y, 0.0f);
  r2.z = ((-(r1.yyyy)).z + cb12_12.tint_symbol_4[0u].z);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r2.z, 3.0f, r1.y);
  r2.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_27 = (v5.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = &(x0[0u]);
  let v_33 = r8;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = &(x0[1u]);
  let v_36 = r9;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_37.xyz, r10.w);
  let v_38 = &(x0[2u]);
  let v_39 = r10;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = &(x0[3u]);
  let v_42 = r7;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_44 = r11;
  r11 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_45 = abs(r10.yyyy);
  r3.w = max(v_45.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_46 = (bitcast<u32>(r3.w) != 0u);
  let v_47 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_47, v_46);
  let v_48 = abs(r9.yyyy);
  r4.w = max(v_48.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_49 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_49 != 0u));
  let v_50 = abs(r8.yyyy);
  r4.w = max(v_50.w, abs(r8.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_51 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_51 != 0u));
  let v_52 = x0[bitcast<i32>(r2.w)];
  r8 = vec4<f32>(v_52.xyz, r8.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r8.z);
  let v_53 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_53.xy, r10.z, v_53.z);
  r10.z = dpdx(r2.w);
  let v_54 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  r12.w = dpdy(r2.w);
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
  r2.w = fma((-(r4.wwww)).w, r7.z, r2.w);
  r2.w = fma((-(r4.wwww)).w, r7.w, r2.w);
  let v_62 = bitcast<u32>(r3.w);
  let v_63 = r2.w;
  r11.z = select(r8.z, v_63, (v_62 != 0u));
  r9.z = 0.0f;
  let v_64 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_64.xyz, r8.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_76.xyz, r16.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_80.xyz, r18.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_88.xyz, r22.w);
  let v_89 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_90.xyz, r23.w);
  let v_91 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_92.xyz, r24.w);
  let v_93 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
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
  r2.w = dot(r8, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_111 = abs(r7.yyyy);
  r3.w = max(v_111.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_112 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_112.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v5.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_113 = -(r2.zzzz);
  r2.z = fma(r2.w, v_113.z, r2.z);
  let v_114 = dot(r3.xyz, v_24.xyz);
  r2.w = clamp(vec4<f32>(v_114, v_114, v_114, v_114).w, 0.0f, 1.0f);
  let v_115 = dot(r5.xyz, r3.xyz);
  r5.x = clamp(vec4<f32>(v_115, v_115, v_115, v_115).x, 0.0f, 1.0f);
  let v_116 = dot(r6.xyz, v_24.xyz);
  r5.y = clamp(vec4<f32>(v_116, v_116, v_116, v_116).y, 0.0f, 1.0f);
  let v_117 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_117.xy, r5.zw);
  let v_118 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_118.xy);
  let v_119 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_119.xy);
  let v_120 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_120.xy, r5.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_121 = fma(cb12_12.tint_symbol_4[0u].yy, r5.xy, r3.ww);
  r5 = vec4<f32>(v_121.xy, r5.zw);
  let v_122 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(r5.xy, v_122.xy);
  r1.y = (r5.z * 0.125f);
  r3.w = fma((-(r1.xxxx)).w, r5.x, 1.0f);
  r4.w = dot(r3.xyz, r6.xyz);
  r4.w = clamp(((r4.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r4.w = log2(r4.w);
  r4.w = (r4.w * r5.w);
  r4.w = exp2(r4.w);
  r4.w = (r5.y * r4.w);
  r1.y = (r1.y * r4.w);
  r1.x = (r1.x * r1.y);
  r1.x = (r2.w * r1.x);
  r1.y = (r2.w * r3.w);
  let v_123 = fma(r0.xyz, r1.yyy, r1.xxx);
  r5 = vec4<f32>(v_123.xyz, r5.w);
  let v_124 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_124.xyz, r5.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_125 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_125.xyz);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_126 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_126.xyz, r6.w);
  let v_127 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_127.xyz, r6.w);
  let v_128 = fma(r1.yzw, r2.www, r6.xyz);
  r1 = vec4<f32>(r1.x, v_128.xyz);
  let v_129 = (r2.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_129.xyz);
  let v_130 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_130.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_131 = dot(r7.xyz, r3.xyz);
  r1.x = clamp(vec4<f32>(v_131, v_131, v_131, v_131).x, 0.0f, 1.0f);
  let v_132 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r3 = vec4<f32>(v_132.xyz, r3.w);
  let v_133 = fma(r3.xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(v_133.xyz, r1.w);
  let v_134 = (r3.www * r1.xyz);
  r1 = vec4<f32>(v_134.xyz, r1.w);
  let v_135 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_135.xyz, r0.w);
  let v_136 = fma(r5.xyz, r2.zzz, r0.xyz);
  r0 = vec4<f32>(v_136.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r4.xyz, r4.xyz);
    r1.x = sqrt(r0.w);
    let v_137 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_137.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r4.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_138 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_138 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_139 = (r0.www * r4.xyz);
    r2 = vec4<f32>(v_139.xyz, r2.w);
    let v_140 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_141 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_142 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_142.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_143 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_143.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_144 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_144.xyz, r2.w);
    let v_145 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_145.xyz, r2.w);
    let v_146 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_146.xyz, r3.w);
    let v_147 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_147.xyz, r2.w);
    let v_148 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_149 = (r2.xyz + v_148.xyz);
    r2 = vec4<f32>(v_149.xyz, r2.w);
    let v_150 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_150.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_151 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_151.xyz, r3.w);
    let v_152 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_152.xy, r1.z, v_152.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_153 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_153.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_154 = -(r0.xyxz);
    let v_155 = fma(r1.xyw, r0.www, v_154.xyw);
    r1 = vec4<f32>(v_155.xy, r1.z, v_155.z);
    let v_156 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_156.xyz, r1.w);
  } else {
    r0.w = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r0.w);
    let v_157 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_157.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r4.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_158 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_158 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_159 = (r0.www * r4.xyz);
    r3 = vec4<f32>(v_159.xyz, r3.w);
    let v_160 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_161 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_161, v_161, v_161, v_161).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_162 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_162.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_163 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_163.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_164 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_164.xyz, r3.w);
    let v_165 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_165.xyz, r3.w);
    let v_166 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_166.xyz, r4.w);
    let v_167 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_167.xyz, r3.w);
    let v_168 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_169 = (r3.xyz + v_168.xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    let v_170 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_170.x, r2.y, v_170.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_171 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_171.xyz, r3.w);
    let v_172 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_172.x, r2.y, v_172.yz);
    let v_173 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_173.x, r2.y, v_173.yz);
    let v_174 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_174.xyz, r1.w);
  }
  let v_175 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_175.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_176 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_176);
  return o0;
}
