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

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).x;
  let v_5 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).xyz;
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.z = ((-(r0.zzzz)).z + r0.w);
  r0.z = (cb11_11.tint_symbol_3[2u].w / r0.z);
  r2 = (cb6_6.tint_symbol_1[14u].zwzw * cb11_11.tint_symbol_3[6u].xxxx);
  let v_7 = (r0.zzz * v3.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.x = textureSample(t14, s14, r0.xyxx.xy).z;
  r0.x = (r0.x * cb12_12.tint_symbol_2[0u].w);
  let v_9 = fma(r3.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = &(x0[0u]);
  let v_11 = r4;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r3.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = &(x0[1u]);
  let v_14 = r5;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r3.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = &(x0[2u]);
  let v_17 = r3;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = &(x0[3u]);
  let v_19 = r3;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  r0.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
  let v_20 = -(r0.xxxx);
  r0.x = fma(r0.y, 0.5f, v_20.x);
  let v_21 = abs(r3.yyyy);
  let v_22 = max(v_21.yw, abs(r3.xxxx).yw);
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.x, v_23.z, v_22.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  let v_24 = (bitcast<u32>(r0.y) != 0u);
  let v_25 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_25, v_24);
  let v_26 = abs(r5.yyyy);
  r1.w = max(v_26.w, abs(r5.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.x)));
  let v_27 = bitcast<u32>(r1.w);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_27 != 0u));
  let v_28 = abs(r4.yyyy);
  r1.w = max(v_28.w, abs(r4.xxxx).w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.x)));
  let v_29 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 0.0f, (v_29 != 0u));
  let v_30 = x0[bitcast<i32>(r0.x)];
  r3 = vec4<f32>(v_30.xyz, r3.w);
  r0.y = f32(bitcast<i32>(r0.x));
  r1.w = (r0.y + 0.5f);
  r1.w = (r1.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.y = dot(r4, cb6_6.tint_symbol_1[12u]);
  r3.w = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r3.x + 0.5f);
  r4.y = fma(r3.y, 0.25f, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r3.z);
  let v_31 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_31.xy, r5.z, v_31.z);
  r5.z = dpdx(r0.y);
  let v_32 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  r6.w = dpdy(r0.y);
  let v_33 = (r5.yw * r6.yw);
  r3 = vec4<f32>(v_33.xy, r3.zw);
  let v_34 = -(r3.xyxx);
  let v_35 = fma(r5.xz, r6.xz, v_34.xy);
  r7 = vec4<f32>(v_35.xy, r7.zw);
  r3.x = (1.0f / r7.x);
  r3.y = (r5.z * r6.y);
  let v_36 = -(r3.yyyy);
  r7.z = fma(r5.x, r6.w, v_36.z);
  let v_37 = (r3.xx * r7.yz);
  r3 = vec4<f32>(v_37.xy, r3.zw);
  let v_38 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_38.xy, r3.zw);
  let v_39 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_39.xy, r3.zw);
  r0.y = fma((-(r3.wwww)).y, r3.x, r0.y);
  r0.y = fma((-(r3.wwww)).y, r3.y, r0.y);
  let v_40 = bitcast<u32>(r1.w);
  let v_41 = r0.y;
  r3.z = select(r3.z, v_41, (v_40 != 0u));
  let v_42 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_42.xyz, r5.w);
  let v_43 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyz, r5.xyz);
  r1 = vec4<f32>(v_43.xy, r1.z, v_43.z);
  let v_44 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = (r1.xyz * vec3<f32>(1.0f, 0.0f, 0.0f));
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = -(r5.xyzx);
  let v_47 = fma(r1.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), v_46.xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = ((-(r1.zxyz)).xyz * r5.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = -(r1.yzxy);
  let v_50 = -(r6.xyzx);
  let v_51 = fma(v_49.xyz, r5.yzx, v_50.xyz);
  r1 = vec4<f32>(v_51.xyz, r1.w);
  r0.y = dot(r1.xy, r1.xy);
  r1.w = inverseSqrt(r0.y);
  let v_52 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_52.xy, r1.zw);
  let v_53 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_53.xy, r1.zw);
  r0.y = sqrt(r0.y);
  let v_54 = (r1.xy / r0.yy);
  r1 = vec4<f32>(v_54.xy, r1.zw);
  r0.x = bitcast<f32>((4i + bitcast<i32>(r0.x)));
  let v_55 = (r1.xy / cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].xy);
  r1 = vec4<f32>(v_55.xy, r1.zw);
  let v_56 = (r1.xy * cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].zz);
  r0 = vec4<f32>(v_56.xy, r0.zw);
  let v_57 = (r0.xy * vec2<f32>(1.0f, 4.0f));
  r0 = vec4<f32>(v_57.xy, r0.zw);
  r1 = (r2.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r4.z = dot(r0.xy, r1.xy);
  let v_58 = r1;
  r3 = vec4<f32>(v_58.xy, r3.zw);
  let v_59 = (r3.xyz + r4.xyz);
  r5 = vec4<f32>(v_59.xyz, r5.w);
  r4.w = dot(r0.xy, r1.zw);
  let v_60 = r1;
  r3 = vec4<f32>(v_60.zw, r3.zw);
  let v_61 = (r4.xyw + r3.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  r6 = (r2.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r7.x = dot(r0.xy, r6.xy);
  let v_62 = r6;
  r3 = vec4<f32>(v_62.xy, r3.zw);
  let v_63 = r4;
  let v_64 = r7;
  r7 = vec4<f32>(v_64.x, v_63.xy, v_64.w);
  let v_65 = (r7.yzx + r3.xyz);
  r8 = vec4<f32>(v_65.xyz, r8.w);
  r7.w = dot(r0.xy, r6.zw);
  let v_66 = r6;
  r3 = vec4<f32>(v_66.zw, r3.zw);
  let v_67 = (r7.yzw + r3.xyz);
  r6 = vec4<f32>(v_67.xyz, r6.w);
  r9 = (r2.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r7.x = dot(r0.xy, r9.xy);
  let v_68 = r9;
  r3 = vec4<f32>(v_68.xy, r3.zw);
  let v_69 = (r7.yzx + r3.xyz);
  r10 = vec4<f32>(v_69.xyz, r10.w);
  r7.w = dot(r0.xy, r9.zw);
  let v_70 = r9;
  r3 = vec4<f32>(v_70.zw, r3.zw);
  let v_71 = (r7.yzw + r3.xyz);
  r9 = vec4<f32>(v_71.xyz, r9.w);
  r11 = (r2.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r7.x = dot(r0.xy, r11.xy);
  let v_72 = r11;
  r3 = vec4<f32>(v_72.xy, r3.zw);
  let v_73 = (r7.yzx + r3.xyz);
  r12 = vec4<f32>(v_73.xyz, r12.w);
  r7.w = dot(r0.xy, r11.zw);
  let v_74 = r11;
  r3 = vec4<f32>(v_74.zw, r3.zw);
  let v_75 = (r7.yzw + r3.xyz);
  r11 = vec4<f32>(v_75.xyz, r11.w);
  r13 = (r2.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r7.x = dot(r0.xy, r13.xy);
  let v_76 = r13;
  r3 = vec4<f32>(v_76.xy, r3.zw);
  let v_77 = (r7.yzx + r3.xyz);
  r14 = vec4<f32>(v_77.xyz, r14.w);
  r7.w = dot(r0.xy, r13.zw);
  let v_78 = r13;
  r3 = vec4<f32>(v_78.zw, r3.zw);
  let v_79 = (r7.yzw + r3.xyz);
  r13 = vec4<f32>(v_79.xyz, r13.w);
  r15 = (r2.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r7.x = dot(r0.xy, r15.xy);
  let v_80 = r15;
  r3 = vec4<f32>(v_80.xy, r3.zw);
  let v_81 = (r7.yzx + r3.xyz);
  r16 = vec4<f32>(v_81.xyz, r16.w);
  r7.w = dot(r0.xy, r15.zw);
  let v_82 = r15;
  r3 = vec4<f32>(v_82.zw, r3.zw);
  let v_83 = (r7.yzw + r3.xyz);
  r15 = vec4<f32>(v_83.xyz, r15.w);
  r17 = (r2.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r7.x = dot(r0.xy, r17.xy);
  let v_84 = r17;
  r3 = vec4<f32>(v_84.xy, r3.zw);
  let v_85 = (r7.yzx + r3.xyz);
  r18 = vec4<f32>(v_85.xyz, r18.w);
  r7.w = dot(r0.xy, r17.zw);
  let v_86 = r17;
  r3 = vec4<f32>(v_86.zw, r3.zw);
  let v_87 = (r7.yzw + r3.xyz);
  r17 = vec4<f32>(v_87.xyz, r17.w);
  r2 = (r2 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r7.x = dot(r0.xy, r2.xy);
  let v_88 = r2;
  r3 = vec4<f32>(v_88.xy, r3.zw);
  let v_89 = (r7.yzx + r3.xyz);
  r19 = vec4<f32>(v_89.xyz, r19.w);
  r7.w = dot(r0.xy, r2.zw);
  let v_90 = r2;
  r3 = vec4<f32>(v_90.zw, r3.zw);
  let v_91 = (r7.yzw + r3.xyz);
  r2 = vec4<f32>(v_91.xyz, r2.w);
  let v_92 = r5.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_92.xy, r5.z);
  let v_93 = r1.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_93.xy, r1.z);
  let v_94 = r8.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_94.xy, r8.z);
  let v_95 = r6.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_95.xy, r6.z);
  let v_96 = r10.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_96.xy, r10.z);
  let v_97 = r9.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_97.xy, r9.z);
  let v_98 = r12.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_98.xy, r12.z);
  let v_99 = r11.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r14.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_100.xy, r14.z);
  let v_101 = r13.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_101.xy, r13.z);
  let v_102 = r16.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_102.xy, r16.z);
  let v_103 = r15.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_103.xy, r15.z);
  let v_104 = r18.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_104.xy, r18.z);
  let v_105 = r17.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_105.xy, r17.z);
  let v_106 = r19.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_106.xy, r19.z);
  let v_107 = r2.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_107.xy, r2.z);
  r1 = (r1 + r3);
  r1 = (r5 + r1);
  r1 = (r6 + r1);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = textureSample(t2, s2, r4.xyxx.xy).w;
    r0.y = ((-(r1.xxxx)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.0f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_108 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_108.xy, r0.zw);
  let v_109 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_109.xy, r0.zw);
  let v_110 = min(r0.xy, vec2<f32>(1.0f));
  let v_111 = r0;
  r0 = vec4<f32>(v_111.x, v_110.xy, v_111.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_112 = bitcast<u32>(r0.w);
  let v_113 = r1.x;
  r0.x = select(r0.y, v_113, (v_112 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
