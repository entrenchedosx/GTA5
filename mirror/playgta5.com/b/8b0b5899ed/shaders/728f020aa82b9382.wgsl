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

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_1 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_1.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_2 = (r0.yzw * r1.xxx);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  r1.x = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r0.x = (cb11_11.tint_symbol_3[2u].w / r0.x);
  r1 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_3 = (r0.xxx * v3.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = (r3.xy * vec2<f32>(0.015625f));
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r3 = textureSample(t14, s14, r3.xyxx.xy);
  r2.w = (r3.z * cb12_12.tint_symbol_2[0u].w);
  let v_6 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = &(x0[0u]);
  let v_8 = r3;
  *(v_7) = vec4<f32>(v_8.xyz, (*(v_7)).w);
  let v_9 = fma(r2.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = &(x0[1u]);
  let v_11 = r4;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r2.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = &(x0[2u]);
  let v_14 = r2;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = &(x0[3u]);
  let v_16 = r2;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  r2.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_17 = -(r2.wwww);
  r2.z = fma(r2.z, 0.5f, v_17.z);
  let v_18 = abs(r2.yyyy);
  let v_19 = max(v_18.xy, abs(r2.xxxx).xy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r2.z)));
  let v_20 = (bitcast<u32>(r2.x) != 0u);
  let v_21 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r2.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_21, v_20);
  let v_22 = abs(r4.yyyy);
  r2.w = max(v_22.w, abs(r4.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  let v_23 = bitcast<u32>(r2.w);
  r2.x = select(r2.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_23 != 0u));
  let v_24 = abs(r3.yyyy);
  r2.w = max(v_24.w, abs(r3.xxxx).w);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  let v_25 = bitcast<u32>(r2.z);
  r2.x = select(r2.x, 0.0f, (v_25 != 0u));
  let v_26 = x0[bitcast<i32>(r2.x)];
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r2.z = f32(bitcast<i32>(r2.x));
  r2.w = (r2.z + 0.5f);
  r2.w = (r2.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.zzzz)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r2.z = dot(r4, cb6_6.tint_symbol_1[12u]);
  r3.w = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r3.x + 0.5f);
  r4.y = fma(r3.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.z == 0.0f))));
  r2.z = ((-(r2.zzzz)).z + r3.z);
  let v_27 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_27.xy, r5.z, v_27.z);
  r5.z = dpdx(r2.z);
  let v_28 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  r6.w = dpdy(r2.z);
  let v_29 = (r5.yw * r6.yw);
  r3 = vec4<f32>(v_29.xy, r3.zw);
  let v_30 = -(r3.xyxx);
  let v_31 = fma(r5.xz, r6.xz, v_30.xy);
  r7 = vec4<f32>(v_31.xy, r7.zw);
  r3.x = (1.0f / r7.x);
  r3.y = (r5.z * r6.y);
  let v_32 = -(r3.yyyy);
  r7.z = fma(r5.x, r6.w, v_32.z);
  let v_33 = (r3.xx * r7.yz);
  r3 = vec4<f32>(v_33.xy, r3.zw);
  let v_34 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_34.xy, r3.zw);
  let v_35 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_35.xy, r3.zw);
  r2.z = fma((-(r3.wwww)).z, r3.x, r2.z);
  r2.z = fma((-(r3.wwww)).z, r3.y, r2.z);
  let v_36 = bitcast<u32>(r2.w);
  let v_37 = r2.z;
  r3.z = select(r3.z, v_37, (v_36 != 0u));
  let v_38 = (r0.zzz * cb6_6.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  let v_39 = fma(r0.yyy, cb6_6.tint_symbol_1[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_39.xyz, r5.w);
  let v_40 = fma(r0.www, cb6_6.tint_symbol_1[2u].xyz, r5.xyz);
  r0 = vec4<f32>(r0.x, v_40.xyz);
  let v_41 = (r0.yzw * vec3<f32>(1.0f, 0.0f, 0.0f));
  r5 = vec4<f32>(v_41.xyz, r5.w);
  let v_42 = -(r5.xyzx);
  let v_43 = fma(r0.wyz, vec3<f32>(0.0f, 0.0f, 1.0f), v_42.xyz);
  r5 = vec4<f32>(v_43.xyz, r5.w);
  let v_44 = ((-(r0.wyzw)).xyz * r5.xyz);
  r6 = vec4<f32>(v_44.xyz, r6.w);
  let v_45 = -(r0.zzwy);
  let v_46 = -(r6.xxyz);
  let v_47 = fma(v_45.yzw, r5.yzx, v_46.yzw);
  r0 = vec4<f32>(r0.x, v_47.xyz);
  r2.z = dot(r0.yz, r0.yz);
  r2.w = inverseSqrt(r2.z);
  let v_48 = (r0.yz * r2.ww);
  let v_49 = r0;
  r0 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  let v_50 = (r0.ww * r0.yz);
  let v_51 = r0;
  r0 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  r0.w = sqrt(r2.z);
  let v_52 = (r0.yz / r0.ww);
  let v_53 = r0;
  r0 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  r0.w = bitcast<f32>((4i + bitcast<i32>(r2.x)));
  let v_54 = (r0.yz / cb6_6.tint_symbol_1[bitcast<i32>(r0.w)].xy);
  let v_55 = r0;
  r0 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  let v_56 = (r0.yz * cb6_6.tint_symbol_1[bitcast<i32>(r0.w)].zz);
  let v_57 = r0;
  r0 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = (r0.yz * vec2<f32>(1.0f, 4.0f));
  let v_59 = r0;
  r0 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  r5 = (r1.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r4.z = dot(r0.yz, r5.xy);
  let v_60 = r5;
  r3 = vec4<f32>(v_60.xy, r3.zw);
  let v_61 = (r3.xyz + r4.xyz);
  r2 = vec4<f32>(v_61.x, r2.y, v_61.yz);
  r4.w = dot(r0.yz, r5.zw);
  let v_62 = r5;
  r3 = vec4<f32>(v_62.zw, r3.zw);
  let v_63 = (r4.xyw + r3.xyz);
  r5 = vec4<f32>(v_63.xyz, r5.w);
  r6 = (r1.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r7.x = dot(r0.yz, r6.xy);
  let v_64 = r6;
  r3 = vec4<f32>(v_64.xy, r3.zw);
  let v_65 = r4;
  let v_66 = r7;
  r7 = vec4<f32>(v_66.x, v_65.xy, v_66.w);
  let v_67 = (r7.yzx + r3.xyz);
  r8 = vec4<f32>(v_67.xyz, r8.w);
  r7.w = dot(r0.yz, r6.zw);
  let v_68 = r6;
  r3 = vec4<f32>(v_68.zw, r3.zw);
  let v_69 = (r7.yzw + r3.xyz);
  r6 = vec4<f32>(v_69.xyz, r6.w);
  r9 = (r1.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r7.x = dot(r0.yz, r9.xy);
  let v_70 = r9;
  r3 = vec4<f32>(v_70.xy, r3.zw);
  let v_71 = (r7.yzx + r3.xyz);
  r10 = vec4<f32>(v_71.xyz, r10.w);
  r7.w = dot(r0.yz, r9.zw);
  let v_72 = r9;
  r3 = vec4<f32>(v_72.zw, r3.zw);
  let v_73 = (r7.yzw + r3.xyz);
  r9 = vec4<f32>(v_73.xyz, r9.w);
  r11 = (r1.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r7.x = dot(r0.yz, r11.xy);
  let v_74 = r11;
  r3 = vec4<f32>(v_74.xy, r3.zw);
  let v_75 = (r7.yzx + r3.xyz);
  r12 = vec4<f32>(v_75.xyz, r12.w);
  r7.w = dot(r0.yz, r11.zw);
  let v_76 = r11;
  r3 = vec4<f32>(v_76.zw, r3.zw);
  let v_77 = (r7.yzw + r3.xyz);
  r11 = vec4<f32>(v_77.xyz, r11.w);
  r13 = (r1.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r7.x = dot(r0.yz, r13.xy);
  let v_78 = r13;
  r3 = vec4<f32>(v_78.xy, r3.zw);
  let v_79 = (r7.yzx + r3.xyz);
  r14 = vec4<f32>(v_79.xyz, r14.w);
  r7.w = dot(r0.yz, r13.zw);
  let v_80 = r13;
  r3 = vec4<f32>(v_80.zw, r3.zw);
  let v_81 = (r7.yzw + r3.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  r15 = (r1.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r7.x = dot(r0.yz, r15.xy);
  let v_82 = r15;
  r3 = vec4<f32>(v_82.xy, r3.zw);
  let v_83 = (r7.yzx + r3.xyz);
  r16 = vec4<f32>(v_83.xyz, r16.w);
  r7.w = dot(r0.yz, r15.zw);
  let v_84 = r15;
  r3 = vec4<f32>(v_84.zw, r3.zw);
  let v_85 = (r7.yzw + r3.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  r17 = (r1.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r7.x = dot(r0.yz, r17.xy);
  let v_86 = r17;
  r3 = vec4<f32>(v_86.xy, r3.zw);
  let v_87 = (r7.yzx + r3.xyz);
  r18 = vec4<f32>(v_87.xyz, r18.w);
  r7.w = dot(r0.yz, r17.zw);
  let v_88 = r17;
  r3 = vec4<f32>(v_88.zw, r3.zw);
  let v_89 = (r7.yzw + r3.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  r1 = (r1 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r7.x = dot(r0.yz, r1.xy);
  let v_90 = r1;
  r3 = vec4<f32>(v_90.xy, r3.zw);
  let v_91 = (r7.yzx + r3.xyz);
  r19 = vec4<f32>(v_91.xyz, r19.w);
  r7.w = dot(r0.yz, r1.zw);
  let v_92 = r1;
  r3 = vec4<f32>(v_92.zw, r3.zw);
  let v_93 = (r7.yzw + r3.xyz);
  r0 = vec4<f32>(r0.x, v_93.xyz);
  let v_94 = r2.xzxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_94.xy, r2.w);
  let v_95 = r5.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_95.xy, r5.z);
  let v_96 = r8.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_96.xy, r8.z);
  let v_97 = r6.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_97.xy, r6.z);
  let v_98 = r10.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_98.xy, r10.z);
  let v_99 = r9.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_99.xy, r9.z);
  let v_100 = r12.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_100.xy, r12.z);
  let v_101 = r11.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_101.xy, r11.z);
  let v_102 = r14.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_102.xy, r14.z);
  let v_103 = r13.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_103.xy, r13.z);
  let v_104 = r16.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r15.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_105.xy, r15.z);
  let v_106 = r18.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_106.xy, r18.z);
  let v_107 = r17.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_107.xy, r17.z);
  let v_108 = r19.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_108.xy, r19.z);
  let v_109 = r0.yzyy;
  r6.w = textureSampleCompareLevel(t15, s15, v_109.xy, r0.w);
  r1 = (r1 + r3);
  r1 = (r5 + r1);
  r1 = (r6 + r1);
  r0.y = dot(r1, vec4<f32>(1.0f));
  r1.x = (r0.y * 0.0625f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r3 = textureSample(t2, s2, r4.xyxx.xy);
    r1.y = ((-(r3.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.xxxx, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, 0.0f, 1.0f);
  r0.y = clamp(fma(r2.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).y, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_110 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_110.xy, r0.zw);
  let v_111 = clamp(((r0.xxyx * r0.xxyx)).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_112 = r0;
  r0 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_113 = bitcast<u32>(r0.w);
  let v_114 = r1.x;
  r0.x = select(r0.y, v_114, (v_113 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
