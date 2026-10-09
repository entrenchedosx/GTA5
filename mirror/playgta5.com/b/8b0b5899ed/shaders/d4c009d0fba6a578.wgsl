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
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  v_1((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_2 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r2.x = (r0.w * 255.0099945068359375f);
  r2.x = floor(r2.x);
  r2.y = (r2.x + -32.0f);
  r3.x = (r2.y * 0.0078125f);
  r3.y = cb13_13.tint_symbol_4[3u].x;
  r3 = textureSample(t13, s13, r3.xyxx.xy);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 32.0f)));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r2.x)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
  let v_3 = (r0.xyz * r3.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r3.w = 1.0f;
  let v_4 = bitcast<vec4<u32>>(r2.xxxx);
  let v_5 = r3;
  r0 = select(r0, v_5, (v_4 != vec4<u32>()));
  r0.w = (r0.w * v3.w);
  let v_6 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r2.z = fma(r1.w, 0.5f, 0.5f);
  r3.x = fma(r2.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.y = (r2.z + 0.30000001192092895508f);
  let v_7 = (r2.xy * r3.xy);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = -(v2.xyzx);
  let v_10 = (v_9.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r2.z = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_11 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = &(x0[0u]);
  let v_17 = r5;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = &(x0[1u]);
  let v_20 = r6;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = &(x0[2u]);
  let v_23 = r7;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = &(x0[3u]);
  let v_26 = r4;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_28 = r8;
  r8 = vec4<f32>(v_28.x, v_27.x, v_28.z, v_27.y);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_29 = abs(r7.yyyy);
  r3.w = max(v_29.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_30 = (bitcast<u32>(r3.w) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_31, v_30);
  let v_32 = abs(r6.yyyy);
  r4.z = max(v_32.z, abs(r6.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_33 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_33 != 0u));
  let v_34 = abs(r5.yyyy);
  r4.z = max(v_34.z, abs(r5.xxxx).z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < r2.w)));
  let v_35 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r2.w)];
  r5 = vec4<f32>(v_36.xyz, r5.w);
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
  let v_37 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_37.xy, r7.z, v_37.z);
  r7.z = dpdx(r2.w);
  let v_38 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  r9.w = dpdy(r2.w);
  let v_39 = (r7.yw * r9.yw);
  r5 = vec4<f32>(v_39.xy, r5.zw);
  let v_40 = -(r5.xyxx);
  let v_41 = fma(r7.xz, r9.xz, v_40.xy);
  r10 = vec4<f32>(v_41.xy, r10.zw);
  r4.w = (1.0f / r10.x);
  r5.x = (r7.z * r9.y);
  let v_42 = -(r5.xxxx);
  r10.z = fma(r7.x, r9.w, v_42.z);
  let v_43 = (r4.ww * r10.yz);
  r5 = vec4<f32>(v_43.xy, r5.zw);
  let v_44 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_44.xy, r5.zw);
  let v_45 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_45.xy, r5.zw);
  r2.w = fma((-(r4.zzzz)).w, r5.x, r2.w);
  r2.w = fma((-(r4.zzzz)).w, r5.y, r2.w);
  let v_46 = bitcast<u32>(r3.w);
  let v_47 = r2.w;
  r8.z = select(r5.z, v_47, (v_46 != 0u));
  r6.z = 0.0f;
  let v_48 = (r6.xyz + r8.ywz);
  r5 = vec4<f32>(v_48.xyz, r5.w);
  let v_49 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r8 = vec4<f32>(v_49.xy, r8.zw);
  let v_50 = (r6.xyz + r8.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r8 = vec4<f32>(v_51.xy, r8.zw);
  let v_52 = (r6.xyz + r8.xyz);
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r8 = vec4<f32>(v_53.xy, r8.zw);
  let v_54 = (r6.xyz + r8.xyz);
  r10 = vec4<f32>(v_54.xyz, r10.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r8 = vec4<f32>(v_55.xy, r8.zw);
  let v_56 = (r6.xyz + r8.xyz);
  r11 = vec4<f32>(v_56.xyz, r11.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r8 = vec4<f32>(v_57.xy, r8.zw);
  let v_58 = (r6.xyz + r8.xyz);
  r12 = vec4<f32>(v_58.xyz, r12.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r8 = vec4<f32>(v_59.xy, r8.zw);
  let v_60 = (r6.xyz + r8.xyz);
  r13 = vec4<f32>(v_60.xyz, r13.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r8 = vec4<f32>(v_61.xy, r8.zw);
  let v_62 = (r6.xyz + r8.xyz);
  r14 = vec4<f32>(v_62.xyz, r14.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r8 = vec4<f32>(v_63.xy, r8.zw);
  let v_64 = (r6.xyz + r8.xyz);
  r15 = vec4<f32>(v_64.xyz, r15.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r8 = vec4<f32>(v_65.xy, r8.zw);
  let v_66 = (r6.xyz + r8.xyz);
  r16 = vec4<f32>(v_66.xyz, r16.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r8 = vec4<f32>(v_67.xy, r8.zw);
  let v_68 = (r6.xyz + r8.xyz);
  r17 = vec4<f32>(v_68.xyz, r17.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r8 = vec4<f32>(v_69.xy, r8.zw);
  let v_70 = (r6.xyz + r8.xyz);
  r18 = vec4<f32>(v_70.xyz, r18.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r8 = vec4<f32>(v_71.xy, r8.zw);
  let v_72 = (r6.xyz + r8.xyz);
  r19 = vec4<f32>(v_72.xyz, r19.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r8 = vec4<f32>(v_73.xy, r8.zw);
  let v_74 = (r6.xyz + r8.xyz);
  r20 = vec4<f32>(v_74.xyz, r20.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r8 = vec4<f32>(v_75.xy, r8.zw);
  let v_76 = (r6.xyz + r8.xyz);
  r21 = vec4<f32>(v_76.xyz, r21.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r8 = vec4<f32>(v_77.xy, r8.zw);
  let v_78 = (r6.xyz + r8.xyz);
  r6 = vec4<f32>(v_78.xyz, r6.w);
  let v_79 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_79.xy, r5.z);
  let v_80 = r7.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_80.xy, r7.z);
  let v_81 = r9.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_81.xy, r9.z);
  let v_82 = r10.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_82.xy, r10.z);
  let v_83 = r11.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_83.xy, r11.z);
  let v_84 = r12.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_84.xy, r12.z);
  let v_85 = r13.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_85.xy, r13.z);
  let v_86 = r14.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_86.xy, r14.z);
  let v_87 = r15.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_87.xy, r15.z);
  let v_88 = r16.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_88.xy, r16.z);
  let v_89 = r17.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_89.xy, r17.z);
  let v_90 = r18.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_90.xy, r18.z);
  let v_91 = r19.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_91.xy, r19.z);
  let v_92 = r20.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_92.xy, r20.z);
  let v_93 = r21.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_93.xy, r21.z);
  let v_94 = r6.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_94.xy, r6.z);
  r5 = (r5 + r7);
  r5 = (r8 + r5);
  r5 = (r9 + r5);
  r2.w = dot(r5, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_95 = abs(r4.yyyy);
  r3.w = max(v_95.w, abs(r4.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_96 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_96.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_97 = -(r2.zzzz);
  r2.z = fma(r2.w, v_97.z, r2.z);
  let v_98 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_99 = dot(r1.yzw, v_98.xyz);
  r2.w = clamp(vec4<f32>(v_99, v_99, v_99, v_99).w, 0.0f, 1.0f);
  let v_100 = (r0.xyz * r2.www);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  let v_101 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_101.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_102 = (v_9.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_102.xyz, r5.w);
  let v_103 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_103.xyz, r6.w);
  r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_104 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = (r6.xyz + v_9.xyz);
  r6 = vec4<f32>(v_105.xyz, r6.w);
  let v_106 = bitcast<vec3<u32>>(r3.www);
  let v_107 = r5.xyz;
  let v_108 = select(r6.xyz, v_107, (v_106 != vec3<u32>()));
  r5 = vec4<f32>(v_108.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  let v_109 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_109.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_110 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_110.xyz, r5.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_111 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r5.xyz, v_111.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, r1.yzw);
  r5.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  r4.w = (r4.w * r5.x);
  r3.w = (r3.w * r4.w);
  let v_113 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = (r0.xyz * r5.xyz);
  r5 = vec4<f32>(v_114.xyz, r5.w);
  let v_115 = bitcast<vec3<u32>>(r2.www);
  let v_116 = select(r5.xyz, vec3<f32>(), (v_115 != vec3<u32>()));
  r5 = vec4<f32>(v_116.xyz, r5.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_117 = (v_9.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_117.xyz, r6.w);
    let v_118 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_118.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_119 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_120.xyz, r7.w);
    let v_121 = bitcast<vec3<u32>>(r3.www);
    let v_122 = r6.xyz;
    let v_123 = select(r7.xyz, v_122, (v_121 != vec3<u32>()));
    r6 = vec4<f32>(v_123.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_124 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_124.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_125 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_125.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_126 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r6.xyz, v_126.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_127 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_128 = (r3.www * cb3_3.tint_symbol_2[20u].xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    let v_129 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_129.xyz, r6.w);
    let v_130 = bitcast<vec3<u32>>(r2.www);
    let v_131 = r5.xyz;
    let v_132 = select(r6.xyz, v_131, (v_130 != vec3<u32>()));
    r5 = vec4<f32>(v_132.xyz, r5.w);
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_133 = (v_9.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_133.xyz, r6.w);
    let v_134 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_134.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_135 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r7 = vec4<f32>(v_135.xyz, r7.w);
    let v_136 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_136.xyz, r7.w);
    let v_137 = bitcast<vec3<u32>>(r3.www);
    let v_138 = r6.xyz;
    let v_139 = select(r7.xyz, v_138, (v_137 != vec3<u32>()));
    r6 = vec4<f32>(v_139.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_140 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_140.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_141 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_141.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_142 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r6.xyz, v_142.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_143 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_143, v_143, v_143, v_143).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_144 = (r3.www * cb3_3.tint_symbol_2[21u].xyz);
    r6 = vec4<f32>(v_144.xyz, r6.w);
    let v_145 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_145.xyz, r6.w);
    let v_146 = bitcast<vec3<u32>>(r2.www);
    let v_147 = r5.xyz;
    let v_148 = select(r6.xyz, v_147, (v_146 != vec3<u32>()));
    r5 = vec4<f32>(v_148.xyz, r5.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_149 = (v_9.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_149.xyz, r6.w);
    let v_150 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_150.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_151 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r7 = vec4<f32>(v_151.xyz, r7.w);
    let v_152 = (r7.xyz + v_9.xyz);
    r7 = vec4<f32>(v_152.xyz, r7.w);
    let v_153 = bitcast<vec3<u32>>(r3.www);
    let v_154 = r6.xyz;
    let v_155 = select(r7.xyz, v_154, (v_153 != vec3<u32>()));
    r6 = vec4<f32>(v_155.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_156 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_156.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_157 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_157.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_158 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r6.xyz, v_158.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_159 = dot(r6.xyz, r1.yzw);
    r5.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_160 = (r3.www * cb3_3.tint_symbol_2[22u].xyz);
    r6 = vec4<f32>(v_160.xyz, r6.w);
    let v_161 = fma(r6.xyz, r0.xyz, r5.xyz);
    r6 = vec4<f32>(v_161.xyz, r6.w);
    let v_162 = bitcast<vec3<u32>>(r2.www);
    let v_163 = r5.xyz;
    let v_164 = select(r6.xyz, v_163, (v_162 != vec3<u32>()));
    r5 = vec4<f32>(v_164.xyz, r5.w);
  }
  let v_165 = fma(r4.xyz, r2.zzz, r5.xyz);
  r4 = vec4<f32>(v_165.xyz, r4.w);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_166 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_166.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_167 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_167.xyz, r6.w);
  let v_168 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_168.xyz, r6.w);
  let v_169 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_169.xyz, r5.w);
  let v_170 = (r2.yyy * r5.xyz);
  r2 = vec4<f32>(r2.x, v_170.xyz);
  let v_171 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_171.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_172 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_172, v_172, v_172, v_172).x, 0.0f, 1.0f);
  let v_173 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_173.xyz, r1.w);
  let v_174 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_174.xyz, r1.w);
  let v_175 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_175.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r0.w);
  let v_176 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_176.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_177 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_177 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_178 = (r0.www * r3.xyz);
  r2 = vec4<f32>(v_178.xyz, r2.w);
  let v_179 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_179, v_179, v_179, v_179).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_180 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_180, v_180, v_180, v_180).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_181 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_181.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_182 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_182.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_183 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_183.xyz, r2.w);
  let v_184 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_184.xyz, r2.w);
  let v_185 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_185.xyz, r3.w);
  let v_186 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_186.xyz, r2.w);
  let v_187 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_188 = (r2.xyz + v_187.xyz);
  r2 = vec4<f32>(v_188.xyz, r2.w);
  let v_189 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_189.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_190 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_190.xy, r1.z, v_190.z);
  let v_191 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_191.xy, r1.z, v_191.z);
  let v_192 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_192.xyz, r0.w);
  let v_193 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_193.xyz, r0.w);
  let v_194 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_194.xyz, o0.w);
}

fn v_1(v_195 : bool) {
  if (v_195) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
