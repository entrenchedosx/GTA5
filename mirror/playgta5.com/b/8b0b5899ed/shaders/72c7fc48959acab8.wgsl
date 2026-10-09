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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_1 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_1.xyz);
  r2.x = (r0.w * 255.0099945068359375f);
  r2.x = floor(r2.x);
  r2.y = (r2.x + -32.0f);
  r3.x = (r2.y * 0.0078125f);
  r3.y = cb13_13.tint_symbol_4[3u].x;
  r3 = textureSample(t13, s13, r3.xyxx.xy);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 32.0f)));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r2.x)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
  let v_2 = (r0.xyz * r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r3.w = 1.0f;
  let v_3 = bitcast<vec4<u32>>(r2.xxxx);
  let v_4 = r3;
  r0 = select(r0, v_4, (v_3 != vec4<u32>()));
  r0.w = (r0.w * v3.w);
  let v_5 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r2.z = fma(r1.w, 0.5f, 0.5f);
  r3.x = fma(r2.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r2.z + 0.30000001192092895508f);
  let v_6 = (r2.xy * r3.xy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = -(v2.xyzx);
  let v_9 = (v_8.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_10 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[0u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = &(x0[1u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = &(x0[2u]);
  let v_22 = r7;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = &(x0[3u]);
  let v_25 = r4;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_27 = r8;
  r8 = vec4<f32>(v_27.x, v_26.x, v_27.z, v_26.y);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_28 = abs(r7.yyyy);
  r3.w = max(v_28.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_29 = (bitcast<u32>(r3.w) != 0u);
  let v_30 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_30, v_29);
  let v_31 = abs(r6.yyyy);
  r4.z = max(v_31.z, abs(r6.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_32 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_32 != 0u));
  let v_33 = abs(r5.yyyy);
  r4.z = max(v_33.z, abs(r5.xxxx).z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_34 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_34 != 0u));
  let v_35 = x0[bitcast<i32>(r2.w)];
  r5 = vec4<f32>(v_35.xyz, r5.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r2.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r4.z = dot(r6, cb6_6.tint_symbol_5[13u]);
  r6.x = (r5.x + 0.5f);
  r6.y = fma(r5.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r5.z);
  let v_36 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_36.xy, r7.z, v_36.z);
  r7.z = dpdx(r2.w);
  let v_37 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_37.xyz, r9.w);
  r9.w = dpdy(r2.w);
  let v_38 = (r7.yw * r9.yw);
  r5 = vec4<f32>(v_38.xy, r5.zw);
  let v_39 = -(r5.xyxx);
  let v_40 = fma(r7.xz, r9.xz, v_39.xy);
  r10 = vec4<f32>(v_40.xy, r10.zw);
  r4.w = (1.0f / r10.x);
  r5.x = (r7.z * r9.y);
  let v_41 = -(r5.xxxx);
  r10.z = fma(r7.x, r9.w, v_41.z);
  let v_42 = (r4.ww * r10.yz);
  r5 = vec4<f32>(v_42.xy, r5.zw);
  let v_43 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_44.xy, r5.zw);
  r2.w = fma((-(r4.zzzz)).w, r5.x, r2.w);
  r2.w = fma((-(r4.zzzz)).w, r5.y, r2.w);
  let v_45 = bitcast<u32>(r3.w);
  let v_46 = r2.w;
  r8.z = select(r5.z, v_46, (v_45 != 0u));
  r6.z = 0.0f;
  let v_47 = (r6.xyz + r8.ywz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r8 = vec4<f32>(v_48.xy, r8.zw);
  let v_49 = (r6.xyz + r8.xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r8 = vec4<f32>(v_50.xy, r8.zw);
  let v_51 = (r6.xyz + r8.xyz);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r8 = vec4<f32>(v_52.xy, r8.zw);
  let v_53 = (r6.xyz + r8.xyz);
  r10 = vec4<f32>(v_53.xyz, r10.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r8 = vec4<f32>(v_54.xy, r8.zw);
  let v_55 = (r6.xyz + r8.xyz);
  r11 = vec4<f32>(v_55.xyz, r11.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r8 = vec4<f32>(v_56.xy, r8.zw);
  let v_57 = (r6.xyz + r8.xyz);
  r12 = vec4<f32>(v_57.xyz, r12.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r8 = vec4<f32>(v_58.xy, r8.zw);
  let v_59 = (r6.xyz + r8.xyz);
  r13 = vec4<f32>(v_59.xyz, r13.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r8 = vec4<f32>(v_60.xy, r8.zw);
  let v_61 = (r6.xyz + r8.xyz);
  r14 = vec4<f32>(v_61.xyz, r14.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r8 = vec4<f32>(v_62.xy, r8.zw);
  let v_63 = (r6.xyz + r8.xyz);
  r15 = vec4<f32>(v_63.xyz, r15.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r8 = vec4<f32>(v_64.xy, r8.zw);
  let v_65 = (r6.xyz + r8.xyz);
  r16 = vec4<f32>(v_65.xyz, r16.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r8 = vec4<f32>(v_66.xy, r8.zw);
  let v_67 = (r6.xyz + r8.xyz);
  r17 = vec4<f32>(v_67.xyz, r17.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r8 = vec4<f32>(v_68.xy, r8.zw);
  let v_69 = (r6.xyz + r8.xyz);
  r18 = vec4<f32>(v_69.xyz, r18.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r8 = vec4<f32>(v_70.xy, r8.zw);
  let v_71 = (r6.xyz + r8.xyz);
  r19 = vec4<f32>(v_71.xyz, r19.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = (r6.xyz + r8.xyz);
  r20 = vec4<f32>(v_73.xyz, r20.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r8 = vec4<f32>(v_74.xy, r8.zw);
  let v_75 = (r6.xyz + r8.xyz);
  r21 = vec4<f32>(v_75.xyz, r21.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r8 = vec4<f32>(v_76.xy, r8.zw);
  let v_77 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_77.xyz, r6.w);
  let v_78 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_78.xy, r5.z);
  let v_79 = r7.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_79.xy, r7.z);
  let v_80 = r9.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_80.xy, r9.z);
  let v_81 = r10.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_81.xy, r10.z);
  let v_82 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_82.xy, r11.z);
  let v_83 = r12.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_83.xy, r12.z);
  let v_84 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_84.xy, r13.z);
  let v_85 = r14.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_85.xy, r14.z);
  let v_86 = r15.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_87.xy, r16.z);
  let v_88 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_88.xy, r17.z);
  let v_89 = r18.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_89.xy, r18.z);
  let v_90 = r19.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_90.xy, r19.z);
  let v_91 = r20.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_91.xy, r20.z);
  let v_92 = r21.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_92.xy, r21.z);
  let v_93 = r6.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_93.xy, r6.z);
  r5 = (r5 + r7);
  r5 = (r8 + r5);
  r5 = (r9 + r5);
  r2.w = dot(r5, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_94 = abs(r4.yyyy);
  r3.w = max(v_94.w, abs(r4.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_95 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_96 = -(r2.zzzz);
  r2.z = fma(r2.w, v_96.z, r2.z);
  let v_97 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_98 = dot(r1.yzw, v_97.xyz);
  r2.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
  let v_99 = (r0.xyz * r2.www);
  r4 = vec4<f32>(v_99.xyz, r4.w);
  let v_100 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_101 = (v_8.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_101.xyz, r5.w);
  let v_102 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_102.xyz, r6.w);
  r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_103 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_103.xyz, r6.w);
  let v_104 = (r6.xyz + v_8.xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = bitcast<vec3<u32>>(r3.www);
  let v_106 = r5.xyz;
  let v_107 = select(r6.xyz, v_106, (v_105 != vec3<u32>()));
  r5 = vec4<f32>(v_107.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  let v_108 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_108.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_109 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_109.xyz, r5.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_110 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r5.xyz, v_110.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_111 = dot(r5.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  r4.w = (r4.w * r5.x);
  r3.w = (r3.w * r4.w);
  let v_112 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r5 = vec4<f32>(v_112.xyz, r5.w);
  let v_113 = (r0.xyz * r5.xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = bitcast<vec3<u32>>(r2.www);
  let v_115 = select(r5.xyz, vec3<f32>(), (v_114 != vec3<u32>()));
  r5 = vec4<f32>(v_115.xyz, r5.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_116 = (v_8.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_116.xyz, r6.w);
    let v_117 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_117.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_118 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r7 = vec4<f32>(v_118.xyz, r7.w);
    let v_119 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = bitcast<vec3<u32>>(r3.www);
    let v_121 = r6.xyz;
    let v_122 = select(r7.xyz, v_121, (v_120 != vec3<u32>()));
    r6 = vec4<f32>(v_122.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_123 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_123.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_124 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_124.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_125 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r6.xyz, v_125.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_126 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_127 = (r3.www * cb3_3.tint_symbol_2[20u].xyz);
    r6 = vec4<f32>(v_127.xyz, r6.w);
    let v_128 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    let v_129 = bitcast<vec3<u32>>(r2.www);
    let v_130 = r5.xyz;
    let v_131 = select(r6.xyz, v_130, (v_129 != vec3<u32>()));
    r5 = vec4<f32>(v_131.xyz, r5.w);
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_132 = (v_8.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_132.xyz, r6.w);
    let v_133 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_133.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_134 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r7 = vec4<f32>(v_134.xyz, r7.w);
    let v_135 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_135.xyz, r7.w);
    let v_136 = bitcast<vec3<u32>>(r3.www);
    let v_137 = r6.xyz;
    let v_138 = select(r7.xyz, v_137, (v_136 != vec3<u32>()));
    r6 = vec4<f32>(v_138.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_139 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_139.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_140 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_140.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_141 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r6.xyz, v_141.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_142 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_143 = (r3.www * cb3_3.tint_symbol_2[21u].xyz);
    r6 = vec4<f32>(v_143.xyz, r6.w);
    let v_144 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_144.xyz, r6.w);
    let v_145 = bitcast<vec3<u32>>(r2.www);
    let v_146 = r5.xyz;
    let v_147 = select(r6.xyz, v_146, (v_145 != vec3<u32>()));
    r5 = vec4<f32>(v_147.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_148 = (v_8.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_148.xyz, r6.w);
    let v_149 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_149.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_150 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r7 = vec4<f32>(v_150.xyz, r7.w);
    let v_151 = (r7.xyz + v_8.xyz);
    r7 = vec4<f32>(v_151.xyz, r7.w);
    let v_152 = bitcast<vec3<u32>>(r3.www);
    let v_153 = r6.xyz;
    let v_154 = select(r7.xyz, v_153, (v_152 != vec3<u32>()));
    r6 = vec4<f32>(v_154.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_155 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_155.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_156 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_156.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_157 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r6.xyz, v_157.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_158 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_159 = (r3.www * cb3_3.tint_symbol_2[22u].xyz);
    r6 = vec4<f32>(v_159.xyz, r6.w);
    let v_160 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_160.xyz, r6.w);
    let v_161 = bitcast<vec3<u32>>(r2.www);
    let v_162 = r5.xyz;
    let v_163 = select(r6.xyz, v_162, (v_161 != vec3<u32>()));
    r5 = vec4<f32>(v_163.xyz, r5.w);
  }
  let v_164 = fma(r4.xyz, r2.zzz, r5.xyz);
  r4 = vec4<f32>(v_164.xyz, r4.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_165 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_165.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_166 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_166.xyz, r6.w);
  let v_167 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_167.xyz, r6.w);
  let v_168 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_168.xyz, r5.w);
  let v_169 = (r2.yyy * r5.xyz);
  r2 = vec4<f32>(r2.x, v_169.xyz);
  let v_170 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_170.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_171 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_171, v_171, v_171, v_171).x, 0.0f, 1.0f);
  let v_172 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_172.xyz, r1.w);
  let v_173 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_173.xyz, r1.w);
  let v_174 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_174.xyz, r0.w);
  r0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.y = sqrt(r1.x);
  let v_175 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.z = (r1.y + v_175.z);
  r1.z = max(r1.z, 0.0f);
  r1.y = (r1.z / r1.y);
  r1.y = (r1.y * r3.z);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
  r2.x = (r1.w * -1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.w = (r2.x / r1.w);
  let v_176 = bitcast<u32>(r1.y);
  r1.y = select(1.0f, r1.w, (v_176 != 0u));
  r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
  r1.y = (r1.y * r1.w);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
  r1.x = inverseSqrt(r1.x);
  let v_177 = (r1.xxx * r3.xyz);
  r2 = vec4<f32>(v_177.xyz, r2.w);
  let v_178 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.x = clamp(vec4<f32>(v_178, v_178, v_178, v_178).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
  r1.x = exp2(r1.x);
  let v_179 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r2.x = clamp(vec4<f32>(v_179, v_179, v_179, v_179).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
  r2.x = exp2(r2.x);
  r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_180 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.y = (r1.z + v_180.y);
  r2.y = max(r2.y, 0.0f);
  r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
  let v_181 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.z * v_181.z);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_182 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_182.xyz);
  let v_183 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_183.xyz);
  let v_184 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_184.xyz, r3.w);
  let v_185 = fma(r2.xxx, r3.xyz, r2.yzw);
  r2 = vec4<f32>(v_185.xyz, r2.w);
  let v_186 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_187 = (r2.xyz + v_186.xyz);
  r2 = vec4<f32>(v_187.xyz, r2.w);
  let v_188 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_188.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_189 = fma(r1.yyy, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_189.xyz, r1.w);
  let v_190 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_190.xyz, r1.w);
  let v_191 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_191.xyz, r0.w);
  let v_192 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_192.xyz, r0.w);
  let v_193 = clamp(((r0.xyzx * cb2_2.tint_symbol_1[17u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_193.xyz, r0.w);
  let v_194 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_194.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
