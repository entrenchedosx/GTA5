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

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = (r0.x * cb11_11.tint_symbol_3[0u].w);
  r0.y = (r0.y * cb11_11.tint_symbol_3[1u].w);
  let v_3 = (r0.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb11_11.tint_symbol_3[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_6 = (r0.xyz + v_5.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v4)).x;
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_11 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r2 = (r0.wwww * v3.xyz.yxyz);
  let v_12 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
  r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
  let v_13 = fma(r2.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  let v_14 = &(x0[0u]);
  let v_15 = r1;
  *(v_14) = vec4<f32>(v_15.yzw, (*(v_14)).w);
  let v_16 = fma(r2.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = &(x0[1u]);
  let v_18 = r3;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r2.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = &(x0[2u]);
  let v_21 = r4;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = &(x0[3u]);
  let v_23 = r4;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  r3 = vec4<f32>(r3.xy, v_24.xy);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_25 = -(r1.xxxx);
  r1.x = fma(r1.w, 0.5f, v_25.x);
  let v_26 = abs(r4.yyyy);
  let v_27 = max(v_26.xy, abs(r4.xxxx).xy);
  r4 = vec4<f32>(v_27.xy, r4.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r4.x < r1.x)));
  let v_28 = (bitcast<u32>(r1.w) != 0u);
  let v_29 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_29, v_28);
  let v_30 = abs(r3.yyyy);
  r3.x = max(v_30.x, abs(r3.xxxx).x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r1.x)));
  let v_31 = bitcast<u32>(r3.x);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_31 != 0u));
  let v_32 = abs(r1.zzzz);
  r1.y = max(v_32.y, abs(r1.yyyy).y);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_33 = bitcast<u32>(r1.x);
  r1.x = select(r1.w, 0.0f, (v_33 != 0u));
  let v_34 = x0[bitcast<i32>(r1.x)];
  r1 = vec4<f32>(r1.x, v_34.xyz);
  r3.x = f32(bitcast<i32>(r1.x));
  r3.y = (r3.x + 0.5f);
  r3.y = (r3.y * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r3.x = dot(r5, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r1.y + 0.5f);
  r5.y = fma(r1.z, 0.25f, r3.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r3.x == 0.0f))));
  let v_35 = -(r3.xxxx);
  r1.z = (r1.w + v_35.z);
  let v_36 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_36.xy, r6.z, v_36.z);
  r6.z = dpdx(r1.z);
  let v_37 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  r7.w = dpdy(r1.z);
  let v_38 = (r6.yw * r7.yw);
  r3 = vec4<f32>(v_38.xy, r3.zw);
  let v_39 = -(r3.xyxx);
  let v_40 = fma(r6.xz, r7.xz, v_39.xy);
  r8 = vec4<f32>(v_40.xy, r8.zw);
  r3.x = (1.0f / r8.x);
  r3.y = (r6.z * r7.y);
  let v_41 = -(r3.yyyy);
  r8.z = fma(r6.x, r7.w, v_41.z);
  let v_42 = (r3.xx * r8.yz);
  r3 = vec4<f32>(v_42.xy, r3.zw);
  let v_43 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_43.xy, r3.zw);
  let v_44 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_44.xy, r3.zw);
  r1.z = fma((-(r4.xxxx)).z, r3.x, r1.z);
  r1.z = fma((-(r4.xxxx)).z, r3.y, r1.z);
  let v_45 = bitcast<u32>(r1.y);
  let v_46 = r1.z;
  r6.z = select(r1.w, v_46, (v_45 != 0u));
  r1.x = bitcast<f32>((4i + bitcast<i32>(r1.x)));
  r1 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r1.x)].yxyz);
  r7 = dpdx(r2.yzwz);
  r7 = (r1.yzwz * r7);
  r2 = dpdy(r2);
  r1 = (r1 * r2);
  let v_47 = (r1.yw * r7.yw);
  r2 = vec4<f32>(v_47.xy, r2.zw);
  let v_48 = -(r2.xyxx);
  let v_49 = fma(r7.xz, r1.xz, v_48.xy);
  r2 = vec4<f32>(v_49.xy, r2.zw);
  r1.x = (1.0f / r2.x);
  r1.y = (r1.y * r7.z);
  let v_50 = -(r1.yyyy);
  r2.z = fma(r7.x, r1.w, v_50.z);
  let v_51 = (r1.xx * r2.yz);
  r1 = vec4<f32>(v_51.xy, r1.zw);
  let v_52 = max(r1.xy, vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_52.xy, r1.zw);
  let v_53 = min(r1.xy, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_53.xy, r1.zw);
  r5.z = dot(r1.xy, r3.zw);
  let v_54 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  r6 = vec4<f32>(v_54.xy, r6.zw);
  let v_55 = (r5.xyz + r6.xyz);
  r2 = vec4<f32>(v_55.xyz, r2.w);
  r3 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.79929149150848388672f, 0.20174059271812438965f, -0.03117550723254680634f, 0.17933775484561920166f));
  r5.w = dot(r1.xy, r3.xy);
  let v_56 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r6 = vec4<f32>(v_56.xy, r6.zw);
  let v_57 = (r5.xyw + r6.xyz);
  r4 = vec4<f32>(v_57.x, r4.y, v_57.yz);
  r3.x = dot(r1.xy, r3.zw);
  let v_58 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r6 = vec4<f32>(v_58.xy, r6.zw);
  let v_59 = r5;
  let v_60 = r3;
  r3 = vec4<f32>(v_60.x, v_59.xy, v_60.w);
  let v_61 = (r3.yzx + r6.xyz);
  r7 = vec4<f32>(v_61.xyz, r7.w);
  r8 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(0.51474946737289428711f, 0.25350245833396911621f, -0.07286971807479858398f, 0.00809734128415584564f));
  r3.w = dot(r1.xy, r8.xy);
  let v_62 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r6 = vec4<f32>(v_62.xy, r6.zw);
  let v_63 = (r3.yzw + r6.xyz);
  r9 = vec4<f32>(v_63.xyz, r9.w);
  r3.x = dot(r1.xy, r8.zw);
  let v_64 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r6 = vec4<f32>(v_64.xy, r6.zw);
  let v_65 = (r3.yzx + r6.xyz);
  r8 = vec4<f32>(v_65.xyz, r8.w);
  r10 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.96978127956390380859f, 0.03452160954475402832f, 0.54554665088653564453f, 0.02412854135036468506f));
  r3.w = dot(r1.xy, r10.xy);
  let v_66 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r6 = vec4<f32>(v_66.xy, r6.zw);
  let v_67 = (r3.yzw + r6.xyz);
  r11 = vec4<f32>(v_67.xyz, r11.w);
  r3.x = dot(r1.xy, r10.zw);
  let v_68 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r6 = vec4<f32>(v_68.xy, r6.zw);
  let v_69 = (r3.yzx + r6.xyz);
  r10 = vec4<f32>(v_69.xyz, r10.w);
  r12 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.02890610881149768829f, -0.13678458333015441895f, -0.47951146960258483887f, -0.24483287334442138672f));
  r3.w = dot(r1.xy, r12.xy);
  let v_70 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r6 = vec4<f32>(v_70.xy, r6.zw);
  let v_71 = (r3.yzw + r6.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  r3.x = dot(r1.xy, r12.zw);
  let v_72 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r6 = vec4<f32>(v_72.xy, r6.zw);
  let v_73 = (r3.yzx + r6.xyz);
  r12 = vec4<f32>(v_73.xyz, r12.w);
  r14 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(0.7587884068489074707f, -0.1121091991662979126f, 0.33935257792472839355f, -0.24932782351970672607f));
  r3.w = dot(r1.xy, r14.xy);
  let v_74 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r6 = vec4<f32>(v_74.xy, r6.zw);
  let v_75 = (r3.yzw + r6.xyz);
  r15 = vec4<f32>(v_75.xyz, r15.w);
  r3.x = dot(r1.xy, r14.zw);
  let v_76 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r6 = vec4<f32>(v_76.xy, r6.zw);
  let v_77 = (r3.yzx + r6.xyz);
  r14 = vec4<f32>(v_77.xyz, r14.w);
  r16 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(1.07059764862060546875f, 0.2081225961446762085f, 1.29403817653656005859f, -0.01807767525315284729f));
  r3.w = dot(r1.xy, r16.xy);
  let v_78 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r6 = vec4<f32>(v_78.xy, r6.zw);
  let v_79 = (r3.yzw + r6.xyz);
  r17 = vec4<f32>(v_79.xyz, r17.w);
  r3.x = dot(r1.xy, r16.zw);
  let v_80 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r6 = vec4<f32>(v_80.xy, r6.zw);
  let v_81 = (r3.yzx + r6.xyz);
  r16 = vec4<f32>(v_81.xyz, r16.w);
  r18 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.7475630640983581543f, -0.11397434771060943604f, 0.94772171974182128906f, -0.24876354634761810303f));
  r3.w = dot(r1.xy, r18.xy);
  let v_82 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r6 = vec4<f32>(v_82.xy, r6.zw);
  let v_83 = (r3.yzw + r6.xyz);
  r19 = vec4<f32>(v_83.xyz, r19.w);
  r3.x = dot(r1.xy, r18.zw);
  let v_84 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r6 = vec4<f32>(v_84.xy, r6.zw);
  let v_85 = (r3.yzx + r6.xyz);
  r18 = vec4<f32>(v_85.xyz, r18.w);
  let v_86 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r1 = vec4<f32>(r1.xy, v_86.xy);
  r3.w = dot(r1.xy, r1.zw);
  let v_87 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r6 = vec4<f32>(v_87.xy, r6.zw);
  let v_88 = (r3.yzw + r6.xyz);
  r1 = vec4<f32>(v_88.xyz, r1.w);
  let v_89 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_89.xy, r2.z);
  let v_90 = r4.xzxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_90.xy, r4.w);
  let v_91 = r7.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_91.xy, r7.z);
  let v_92 = r9.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_92.xy, r9.z);
  let v_93 = r8.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r11.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_94.xy, r11.z);
  let v_95 = r10.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_95.xy, r10.z);
  let v_96 = r13.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_96.xy, r13.z);
  let v_97 = r12.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_97.xy, r12.z);
  let v_98 = r15.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r14.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_99.xy, r14.z);
  let v_100 = r17.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_100.xy, r17.z);
  let v_101 = r16.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r19.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_102.xy, r19.z);
  let v_103 = r18.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_104.xy, r1.z);
  r1 = (r2 + r3);
  r1 = (r6 + r1);
  r1 = (r7 + r1);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.z = clamp(fma(r4.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_105 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_105.xy, r1.zw);
  let v_106 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_106.xy, r1.zw);
  let v_107 = min(r1.xy, vec2<f32>(1.0f));
  let v_108 = r1;
  r1 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_109 = bitcast<u32>(r0.w);
  let v_110 = r1.w;
  r1.x = select(r1.y, v_110, (v_109 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_111 = r2;
  r2 = vec4<f32>(v_111.x, 0.0f, v_111.z, 0.5f);
  let v_112 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_112.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  o0 = (r0.xxxx * r1.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
