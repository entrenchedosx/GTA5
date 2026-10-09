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
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = &(x0[2u]);
  let v_17 = r6;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r3.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = &(x0[3u]);
  let v_20 = r3;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  r0.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
  let v_21 = -(r0.xxxx);
  r0.x = fma(r0.y, 0.5f, v_21.x);
  let v_22 = abs(r6.yyyy);
  r0.y = max(v_22.y, abs(r6.xxxx).y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  let v_23 = (bitcast<u32>(r0.y) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_24, v_23);
  let v_25 = abs(r5.yyyy);
  r0.w = max(v_25.w, abs(r5.xxxx).w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.x)));
  let v_26 = bitcast<u32>(r0.w);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_26 != 0u));
  let v_27 = abs(r4.yyyy);
  r0.w = max(v_27.w, abs(r4.xxxx).w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.x)));
  let v_28 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 0.0f, (v_28 != 0u));
  let v_29 = x0[bitcast<i32>(r0.x)];
  r4 = vec4<f32>(v_29.xyz, r4.w);
  r0.y = f32(bitcast<i32>(r0.x));
  r0.w = (r0.y + 0.5f);
  r0.w = (r0.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.y = dot(r5, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r5, cb6_6.tint_symbol_1[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r0.y = ((-(r0.yyyy)).y + r4.z);
  let v_30 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_30.xy, r6.z, v_30.z);
  r6.z = dpdx(r0.y);
  let v_31 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  r7.w = dpdy(r0.y);
  let v_32 = (r6.yw * r7.yw);
  r3 = vec4<f32>(r3.xy, v_32.xy);
  let v_33 = -(r3.zwzz);
  let v_34 = fma(r6.xz, r7.xz, v_33.xy);
  r8 = vec4<f32>(v_34.xy, r8.zw);
  r3.z = (1.0f / r8.x);
  r3.w = (r6.z * r7.y);
  let v_35 = -(r3.wwww);
  r8.z = fma(r6.x, r7.w, v_35.z);
  let v_36 = (r3.zz * r8.yz);
  r3 = vec4<f32>(r3.xy, v_36.xy);
  let v_37 = max(r3.zw, vec2<f32>());
  r3 = vec4<f32>(r3.xy, v_37.xy);
  let v_38 = min(r3.zw, vec2<f32>(0.5f));
  r3 = vec4<f32>(r3.xy, v_38.xy);
  r0.y = fma((-(r1.wwww)).y, r3.z, r0.y);
  r0.y = fma((-(r1.wwww)).y, r3.w, r0.y);
  let v_39 = bitcast<u32>(r0.w);
  let v_40 = r0.y;
  r4.z = select(r4.z, v_40, (v_39 != 0u));
  let v_41 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  let v_42 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyz, r6.xyz);
  r1 = vec4<f32>(v_42.xy, r1.z, v_42.z);
  let v_43 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_43.xyz, r1.w);
  let v_44 = (r1.xyz * vec3<f32>(1.0f, 0.0f, 0.0f));
  r6 = vec4<f32>(v_44.xyz, r6.w);
  let v_45 = -(r6.xyzx);
  let v_46 = fma(r1.zxy, vec3<f32>(0.0f, 0.0f, 1.0f), v_45.xyz);
  r6 = vec4<f32>(v_46.xyz, r6.w);
  let v_47 = ((-(r1.zxyz)).xyz * r6.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = -(r1.yzxy);
  let v_49 = -(r7.xyzx);
  let v_50 = fma(v_48.xyz, r6.yzx, v_49.xyz);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  r0.y = dot(r1.xy, r1.xy);
  r0.w = inverseSqrt(r0.y);
  let v_51 = (r0.ww * r1.xy);
  r1 = vec4<f32>(v_51.xy, r1.zw);
  let v_52 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_52.xy, r1.zw);
  r0.y = sqrt(r0.y);
  let v_53 = (r1.xy / r0.yy);
  let v_54 = r0;
  r0 = vec4<f32>(v_54.x, v_53.x, v_54.z, v_53.y);
  r0.x = bitcast<f32>((4i + bitcast<i32>(r0.x)));
  let v_55 = (r0.yw / cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].xy);
  let v_56 = r0;
  r0 = vec4<f32>(v_56.x, v_55.x, v_56.z, v_55.y);
  let v_57 = (r0.yw * cb6_6.tint_symbol_1[bitcast<i32>(r0.x)].zz);
  r0 = vec4<f32>(v_57.xy, r0.zw);
  let v_58 = (r0.xy * vec2<f32>(1.0f, 4.0f));
  r0 = vec4<f32>(v_58.xy, r0.zw);
  r1 = (r2.zwzw * vec4<f32>(-0.34609651565551757812f, 0.32848981022834777832f, -0.79929149150848388672f, 0.20174059271812438965f));
  r5.z = dot(r0.xy, r1.xy);
  let v_59 = r1;
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = (r4.xyz + r5.xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  r5.w = dot(r0.xy, r1.zw);
  let v_61 = r1;
  r4 = vec4<f32>(v_61.zw, r4.zw);
  let v_62 = (r5.xyw + r4.xyz);
  r1 = vec4<f32>(v_62.xyz, r1.w);
  r7 = (r2.zwzw * vec4<f32>(-0.03117550723254680634f, 0.17933775484561920166f, 0.51474946737289428711f, 0.25350245833396911621f));
  r8.x = dot(r0.xy, r7.xy);
  let v_63 = r7;
  r4 = vec4<f32>(v_63.xy, r4.zw);
  let v_64 = r5;
  let v_65 = r8;
  r8 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  let v_66 = (r8.yzx + r4.xyz);
  r9 = vec4<f32>(v_66.xyz, r9.w);
  r8.w = dot(r0.xy, r7.zw);
  let v_67 = r7;
  r4 = vec4<f32>(v_67.zw, r4.zw);
  let v_68 = (r8.yzw + r4.xyz);
  r7 = vec4<f32>(v_68.xyz, r7.w);
  r10 = (r2.zwzw * vec4<f32>(-0.07286971807479858398f, 0.00809734128415584564f, -0.96978127956390380859f, 0.03452160954475402832f));
  r8.x = dot(r0.xy, r10.xy);
  let v_69 = r10;
  r4 = vec4<f32>(v_69.xy, r4.zw);
  let v_70 = (r8.yzx + r4.xyz);
  r11 = vec4<f32>(v_70.xyz, r11.w);
  r8.w = dot(r0.xy, r10.zw);
  let v_71 = r10;
  r4 = vec4<f32>(v_71.zw, r4.zw);
  let v_72 = (r8.yzw + r4.xyz);
  r10 = vec4<f32>(v_72.xyz, r10.w);
  r12 = (r2.zwzw * vec4<f32>(0.54554665088653564453f, 0.02412854135036468506f, -0.02890610881149768829f, -0.13678458333015441895f));
  r8.x = dot(r0.xy, r12.xy);
  let v_73 = r12;
  r4 = vec4<f32>(v_73.xy, r4.zw);
  let v_74 = (r8.yzx + r4.xyz);
  r13 = vec4<f32>(v_74.xyz, r13.w);
  r8.w = dot(r0.xy, r12.zw);
  let v_75 = r12;
  r4 = vec4<f32>(v_75.zw, r4.zw);
  let v_76 = (r8.yzw + r4.xyz);
  r12 = vec4<f32>(v_76.xyz, r12.w);
  r14 = (r2.zwzw * vec4<f32>(-0.47951146960258483887f, -0.24483287334442138672f, 0.7587884068489074707f, -0.1121091991662979126f));
  r8.x = dot(r0.xy, r14.xy);
  let v_77 = r14;
  r4 = vec4<f32>(v_77.xy, r4.zw);
  let v_78 = (r8.yzx + r4.xyz);
  r15 = vec4<f32>(v_78.xyz, r15.w);
  r8.w = dot(r0.xy, r14.zw);
  let v_79 = r14;
  r4 = vec4<f32>(v_79.zw, r4.zw);
  let v_80 = (r8.yzw + r4.xyz);
  r14 = vec4<f32>(v_80.xyz, r14.w);
  r16 = (r2.zwzw * vec4<f32>(0.33935257792472839355f, -0.24932782351970672607f, 1.07059764862060546875f, 0.2081225961446762085f));
  r8.x = dot(r0.xy, r16.xy);
  let v_81 = r16;
  r4 = vec4<f32>(v_81.xy, r4.zw);
  let v_82 = (r8.yzx + r4.xyz);
  r17 = vec4<f32>(v_82.xyz, r17.w);
  r8.w = dot(r0.xy, r16.zw);
  let v_83 = r16;
  r4 = vec4<f32>(v_83.zw, r4.zw);
  let v_84 = (r8.yzw + r4.xyz);
  r16 = vec4<f32>(v_84.xyz, r16.w);
  r18 = (r2.zwzw * vec4<f32>(1.29403817653656005859f, -0.01807767525315284729f, -0.7475630640983581543f, -0.11397434771060943604f));
  r8.x = dot(r0.xy, r18.xy);
  let v_85 = r18;
  r4 = vec4<f32>(v_85.xy, r4.zw);
  let v_86 = (r8.yzx + r4.xyz);
  r19 = vec4<f32>(v_86.xyz, r19.w);
  r8.w = dot(r0.xy, r18.zw);
  let v_87 = r18;
  r4 = vec4<f32>(v_87.zw, r4.zw);
  let v_88 = (r8.yzw + r4.xyz);
  r18 = vec4<f32>(v_88.xyz, r18.w);
  r2 = (r2 * vec4<f32>(0.94772171974182128906f, -0.24876354634761810303f, -1.34315288066864013672f, -0.08858405798673629761f));
  r8.x = dot(r0.xy, r2.xy);
  let v_89 = r2;
  r4 = vec4<f32>(v_89.xy, r4.zw);
  let v_90 = (r8.yzx + r4.xyz);
  r20 = vec4<f32>(v_90.xyz, r20.w);
  r8.w = dot(r0.xy, r2.zw);
  let v_91 = r2;
  r4 = vec4<f32>(v_91.zw, r4.zw);
  let v_92 = (r8.yzw + r4.xyz);
  r0 = vec4<f32>(v_92.xy, r0.z, v_92.z);
  let v_93 = r6.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_93.xy, r6.z);
  let v_94 = r1.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_94.xy, r1.z);
  let v_95 = r9.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_95.xy, r9.z);
  let v_96 = r7.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_96.xy, r7.z);
  let v_97 = r11.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_97.xy, r11.z);
  let v_98 = r10.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_98.xy, r10.z);
  let v_99 = r13.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_99.xy, r13.z);
  let v_100 = r12.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_100.xy, r12.z);
  let v_101 = r15.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r14.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_102.xy, r14.z);
  let v_103 = r17.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_103.xy, r17.z);
  let v_104 = r16.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r19.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r18.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_106.xy, r18.z);
  let v_107 = r20.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_107.xy, r20.z);
  let v_108 = r0.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_108.xy, r0.w);
  r1 = (r1 + r2);
  r1 = (r4 + r1);
  r1 = (r6 + r1);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t2, s2, r5.xyxx.xy).w;
    r0.y = ((-(r0.wwww)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_109 = abs(r3.yyyy);
  r0.w = max(v_109.w, abs(r3.xxxx).w);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_110 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_110.xy, r0.zw);
  let v_111 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_111.xy, r0.zw);
  let v_112 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_112.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_113 = bitcast<u32>(r0.z);
  let v_114 = r0.w;
  r0.x = select(r0.x, v_114, (v_113 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
