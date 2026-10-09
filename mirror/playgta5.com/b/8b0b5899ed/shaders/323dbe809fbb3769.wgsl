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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
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
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_7 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r1 = (r0.wwww * v3.xyz.yxyz);
  let v_8 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2 = textureSample(t14, s14, r2.xyxx.xy);
  r2.x = (r2.z * cb12_12.tint_symbol_2[0u].w);
  let v_10 = fma(r1.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(r2.x, v_10.xyz);
  let v_11 = &(x0[0u]);
  let v_12 = r2;
  *(v_11) = vec4<f32>(v_12.yzw, (*(v_11)).w);
  let v_13 = fma(r1.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = &(x0[1u]);
  let v_15 = r3;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r1.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = &(x0[2u]);
  let v_18 = r4;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r1.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = &(x0[3u]);
  let v_21 = r5;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  r3 = vec4<f32>(r3.xy, v_22.xy);
  r2.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_23 = -(r2.xxxx);
  r2.x = fma(r2.w, 0.5f, v_23.x);
  let v_24 = abs(r4.yyyy);
  r2.w = max(v_24.w, abs(r4.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.x)));
  let v_25 = (bitcast<u32>(r2.w) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_26, v_25);
  let v_27 = abs(r3.yyyy);
  r3.x = max(v_27.x, abs(r3.xxxx).x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.x)));
  let v_28 = bitcast<u32>(r3.x);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_28 != 0u));
  let v_29 = abs(r2.zzzz);
  r2.y = max(v_29.y, abs(r2.yyyy).y);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.y < r2.x)));
  let v_30 = bitcast<u32>(r2.x);
  r2.x = select(r2.w, 0.0f, (v_30 != 0u));
  let v_31 = x0[bitcast<i32>(r2.x)];
  r2 = vec4<f32>(r2.x, v_31.xyz);
  r3.x = f32(bitcast<i32>(r2.x));
  r3.y = (r3.x + 0.5f);
  r3.y = (r3.y * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.xxxx)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r3.x = dot(r4, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r6.x = (r2.y + 0.5f);
  r6.y = fma(r2.z, 0.25f, r3.y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, !((r3.x == 0.0f))));
  let v_32 = -(r3.xxxx);
  r2.z = (r2.w + v_32.z);
  let v_33 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_33.xy, r7.z, v_33.z);
  r7.z = dpdx(r2.z);
  let v_34 = dpdy(r6.yxy);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  r8.w = dpdy(r2.z);
  let v_35 = (r7.yw * r8.yw);
  r3 = vec4<f32>(v_35.xy, r3.zw);
  let v_36 = -(r3.xyxx);
  let v_37 = fma(r7.xz, r8.xz, v_36.xy);
  r9 = vec4<f32>(v_37.xy, r9.zw);
  r3.x = (1.0f / r9.x);
  r3.y = (r7.z * r8.y);
  let v_38 = -(r3.yyyy);
  r9.z = fma(r7.x, r8.w, v_38.z);
  let v_39 = (r3.xx * r9.yz);
  r3 = vec4<f32>(v_39.xy, r3.zw);
  let v_40 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_40.xy, r3.zw);
  let v_41 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_41.xy, r3.zw);
  r2.z = fma((-(r4.xxxx)).z, r3.x, r2.z);
  r2.z = fma((-(r4.xxxx)).z, r3.y, r2.z);
  let v_42 = bitcast<u32>(r2.y);
  let v_43 = r2.z;
  r4.z = select(r2.w, v_43, (v_42 != 0u));
  r2.x = bitcast<f32>((4i + bitcast<i32>(r2.x)));
  r2 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r2.x)].yxyz);
  r7 = dpdx(r1.yzwz);
  r7 = (r2.yzwz * r7);
  r1 = dpdy(r1);
  r1 = (r2 * r1);
  let v_44 = (r1.yw * r7.yw);
  r2 = vec4<f32>(v_44.xy, r2.zw);
  let v_45 = -(r2.xyxx);
  let v_46 = fma(r7.xz, r1.xz, v_45.xy);
  r2 = vec4<f32>(v_46.xy, r2.zw);
  r1.x = (1.0f / r2.x);
  r1.y = (r1.y * r7.z);
  let v_47 = -(r1.yyyy);
  r2.z = fma(r7.x, r1.w, v_47.z);
  let v_48 = (r1.xx * r2.yz);
  r1 = vec4<f32>(v_48.xy, r1.zw);
  let v_49 = max(r1.xy, vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_49.xy, r1.zw);
  let v_50 = min(r1.xy, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_50.xy, r1.zw);
  r6.z = dot(r1.xy, r3.zw);
  let v_51 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  r4 = vec4<f32>(v_51.xy, r4.zw);
  let v_52 = (r4.xyz + r6.xyz);
  r2 = vec4<f32>(v_52.xyz, r2.w);
  r3 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.79929149150848388672f, 0.20174059271812438965f, -0.03117550723254680634f, 0.17933775484561920166f));
  r6.w = dot(r1.xy, r3.xy);
  let v_53 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r4 = vec4<f32>(v_53.xy, r4.zw);
  let v_54 = (r6.xyw + r4.xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  r3.x = dot(r1.xy, r3.zw);
  let v_55 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r4 = vec4<f32>(v_55.xy, r4.zw);
  let v_56 = r6;
  let v_57 = r3;
  r3 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = (r3.yzx + r4.xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  r9 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(0.51474946737289428711f, 0.25350245833396911621f, -0.07286971807479858398f, 0.00809734128415584564f));
  r3.w = dot(r1.xy, r9.xy);
  let v_59 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = (r3.yzw + r4.xyz);
  r10 = vec4<f32>(v_60.xyz, r10.w);
  r3.x = dot(r1.xy, r9.zw);
  let v_61 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r4 = vec4<f32>(v_61.xy, r4.zw);
  let v_62 = (r3.yzx + r4.xyz);
  r9 = vec4<f32>(v_62.xyz, r9.w);
  r11 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.96978127956390380859f, 0.03452160954475402832f, 0.54554665088653564453f, 0.02412854135036468506f));
  r3.w = dot(r1.xy, r11.xy);
  let v_63 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r4 = vec4<f32>(v_63.xy, r4.zw);
  let v_64 = (r3.yzw + r4.xyz);
  r12 = vec4<f32>(v_64.xyz, r12.w);
  r3.x = dot(r1.xy, r11.zw);
  let v_65 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r4 = vec4<f32>(v_65.xy, r4.zw);
  let v_66 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_66.xyz, r11.w);
  r13 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.02890610881149768829f, -0.13678458333015441895f, -0.47951146960258483887f, -0.24483287334442138672f));
  r3.w = dot(r1.xy, r13.xy);
  let v_67 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r4 = vec4<f32>(v_67.xy, r4.zw);
  let v_68 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_68.xyz, r14.w);
  r3.x = dot(r1.xy, r13.zw);
  let v_69 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r4 = vec4<f32>(v_69.xy, r4.zw);
  let v_70 = (r3.yzx + r4.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  r15 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(0.7587884068489074707f, -0.1121091991662979126f, 0.33935257792472839355f, -0.24932782351970672607f));
  r3.w = dot(r1.xy, r15.xy);
  let v_71 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r4 = vec4<f32>(v_71.xy, r4.zw);
  let v_72 = (r3.yzw + r4.xyz);
  r16 = vec4<f32>(v_72.xyz, r16.w);
  r3.x = dot(r1.xy, r15.zw);
  let v_73 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r4 = vec4<f32>(v_73.xy, r4.zw);
  let v_74 = (r3.yzx + r4.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  r17 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(1.07059764862060546875f, 0.2081225961446762085f, 1.29403817653656005859f, -0.01807767525315284729f));
  r3.w = dot(r1.xy, r17.xy);
  let v_75 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r4 = vec4<f32>(v_75.xy, r4.zw);
  let v_76 = (r3.yzw + r4.xyz);
  r18 = vec4<f32>(v_76.xyz, r18.w);
  r3.x = dot(r1.xy, r17.zw);
  let v_77 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r4 = vec4<f32>(v_77.xy, r4.zw);
  let v_78 = (r3.yzx + r4.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  r19 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.7475630640983581543f, -0.11397434771060943604f, 0.94772171974182128906f, -0.24876354634761810303f));
  r3.w = dot(r1.xy, r19.xy);
  let v_79 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r4 = vec4<f32>(v_79.xy, r4.zw);
  let v_80 = (r3.yzw + r4.xyz);
  r20 = vec4<f32>(v_80.xyz, r20.w);
  r3.x = dot(r1.xy, r19.zw);
  let v_81 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r4 = vec4<f32>(v_81.xy, r4.zw);
  let v_82 = (r3.yzx + r4.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r1 = vec4<f32>(r1.xy, v_83.xy);
  r3.w = dot(r1.xy, r1.zw);
  let v_84 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r4 = vec4<f32>(v_84.xy, r4.zw);
  let v_85 = (r3.yzw + r4.xyz);
  r1 = vec4<f32>(v_85.xyz, r1.w);
  let v_86 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_86.xy, r2.z);
  let v_87 = r7.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_87.xy, r7.z);
  let v_88 = r8.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_88.xy, r8.z);
  let v_89 = r10.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_89.xy, r10.z);
  let v_90 = r9.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_90.xy, r9.z);
  let v_91 = r12.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_91.xy, r12.z);
  let v_92 = r11.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_92.xy, r11.z);
  let v_93 = r14.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_93.xy, r14.z);
  let v_94 = r13.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_94.xy, r13.z);
  let v_95 = r16.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_95.xy, r16.z);
  let v_96 = r15.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_96.xy, r15.z);
  let v_97 = r18.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_97.xy, r18.z);
  let v_98 = r17.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_98.xy, r17.z);
  let v_99 = r20.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_99.xy, r20.z);
  let v_100 = r19.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_100.xy, r19.z);
  let v_101 = r1.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_101.xy, r1.z);
  r1 = (r2 + r3);
  r1 = (r4 + r1);
  r1 = (r7 + r1);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = (r1.x * 0.0625f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r2 = textureSample(t2, s2, r6.xyxx.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_102 = abs(r5.yyyy);
  r1.z = max(v_102.z, abs(r5.xxxx).z);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_103 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_103.xy, r1.zw);
  let v_104 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_104.xy, r1.zw);
  let v_105 = min(r1.xy, vec2<f32>(1.0f));
  let v_106 = r1;
  r1 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_107 = bitcast<u32>(r0.w);
  let v_108 = r1.w;
  r1.x = select(r1.y, v_108, (v_107 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_109 = r2;
  r2 = vec4<f32>(v_109.x, 0.0f, v_109.z, 0.5f);
  let v_110 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_110.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  let v_111 = (r0.xx * r1.xz);
  r0 = vec4<f32>(v_111.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
