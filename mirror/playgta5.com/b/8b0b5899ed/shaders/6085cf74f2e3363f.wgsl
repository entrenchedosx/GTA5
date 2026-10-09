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

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1 = textureSample(t2, s2, v1.xyz.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[4u].x, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.x = dot(r0.xyz, cb12_12.tint_symbol_4[2u].xyz);
  r1.y = dot(r0.xyz, cb12_12.tint_symbol_4[3u].xyz);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r3.x = dot(cb12_12.tint_symbol_4[2u].ww, r1.xx);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = (r1.x + r1.x);
  r3.y = ((-(cb12_12.tint_symbol_4[2u].wwww)).y + 1.0f);
  r1.x = fma((-(r1.xxxx)).x, r3.y, 1.0f);
  let v_9 = bitcast<u32>(r2.w);
  let v_10 = r3.x;
  r3.x = select(r1.x, v_10, (v_9 != 0u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r2.w = dot(cb12_12.tint_symbol_4[3u].ww, r1.yy);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (r1.y + r1.y);
  r3.z = ((-(cb12_12.tint_symbol_4[3u].wwww)).z + 1.0f);
  r1.y = fma((-(r1.yyyy)).y, r3.z, 1.0f);
  let v_11 = bitcast<u32>(r1.x);
  let v_12 = r2.w;
  r3.y = select(r1.y, v_12, (v_11 != 0u));
  r1.x = dot(r3.xy, cb12_12.tint_symbol_4[1u].xy);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_13 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_16 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_18 = fma(r4.xyz, r1.yyy, v_17.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_19 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_20.xy, r3.zw);
  r1.y = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_21 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_25.xyz, r8.w);
  let v_26 = &(x0[0u]);
  let v_27 = r8;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_28.xyz, r9.w);
  let v_29 = &(x0[1u]);
  let v_30 = r9;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_31.xyz, r10.w);
  let v_32 = &(x0[2u]);
  let v_33 = r10;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = &(x0[3u]);
  let v_36 = r7;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_38 = r11;
  r11 = vec4<f32>(v_38.x, v_37.x, v_38.z, v_37.y);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_39 = abs(r10.yyyy);
  r3.z = max(v_39.z, abs(r10.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r2.w)));
  let v_40 = (bitcast<u32>(r3.z) != 0u);
  let v_41 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_41, v_40);
  let v_42 = abs(r9.yyyy);
  r3.w = max(v_42.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_43 = bitcast<u32>(r3.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_43 != 0u));
  let v_44 = abs(r8.yyyy);
  r3.w = max(v_44.w, abs(r8.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_45 = bitcast<u32>(r2.w);
  r2.w = select(r3.z, 0.0f, (v_45 != 0u));
  let v_46 = x0[bitcast<i32>(r2.w)];
  r8 = vec4<f32>(v_46.xyz, r8.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.z = (r2.w + 0.5f);
  r3.z = (r3.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.w = dot(r9, cb6_6.tint_symbol_5[12u]);
  r3.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r8.z);
  let v_47 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_47.xy, r10.z, v_47.z);
  r10.z = dpdx(r2.w);
  let v_48 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_48.xyz, r12.w);
  r12.w = dpdy(r2.w);
  let v_49 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_49.xy);
  let v_50 = -(r7.zwzz);
  let v_51 = fma(r10.xz, r12.xz, v_50.xy);
  r13 = vec4<f32>(v_51.xy, r13.zw);
  r4.w = (1.0f / r13.x);
  r5.w = (r10.z * r12.y);
  let v_52 = -(r5.wwww);
  r13.z = fma(r10.x, r12.w, v_52.z);
  let v_53 = (r4.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_53.xy);
  let v_54 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_54.xy);
  let v_55 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_55.xy);
  r2.w = fma((-(r3.wwww)).w, r7.z, r2.w);
  r2.w = fma((-(r3.wwww)).w, r7.w, r2.w);
  let v_56 = bitcast<u32>(r3.z);
  let v_57 = r2.w;
  r11.z = select(r8.z, v_57, (v_56 != 0u));
  r9.z = 0.0f;
  let v_58 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_59.xy, r11.zw);
  let v_60 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_60.xyz, r10.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_61.xy, r11.zw);
  let v_62 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_62.xyz, r12.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_64.xyz, r13.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_66.xyz, r14.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_68.xyz, r15.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_70.xyz, r16.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_72.xyz, r17.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_74.xyz, r18.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_76.xyz, r19.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_78.xyz, r20.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_80.xyz, r21.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_82.xyz, r22.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_84.xyz, r23.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_86.xyz, r24.w);
  let v_87 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_88.xyz, r9.w);
  let v_89 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_89.xy, r8.z);
  let v_90 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_90.xy, r10.z);
  let v_91 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_91.xy, r12.z);
  let v_92 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_92.xy, r13.z);
  let v_93 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_93.xy, r14.z);
  let v_94 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_94.xy, r15.z);
  let v_95 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_95.xy, r16.z);
  let v_96 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_96.xy, r17.z);
  let v_97 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_97.xy, r18.z);
  let v_98 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_98.xy, r19.z);
  let v_99 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_99.xy, r20.z);
  let v_100 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_100.xy, r21.z);
  let v_101 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_101.xy, r22.z);
  let v_102 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_102.xy, r23.z);
  let v_103 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_103.xy, r24.z);
  let v_104 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_104.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.w = dot(r8, vec4<f32>(1.0f));
  r1.y = clamp(fma(r1.yyyy, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).y, 0.0f, 1.0f);
  let v_105 = abs(r7.yyyy);
  r3.z = max(v_105.z, abs(r7.xxxx).z);
  r3.z = clamp(fma(r3.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = (r3.z * r1.y);
  r1.y = fma(r2.w, 0.0625f, r1.y);
  r1.y = (r1.y * r1.y);
  r1.y = min(r1.y, 1.0f);
  r2.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_106 = -(r1.yyyy);
  r1.y = fma(r2.w, v_106.y, r1.y);
  let v_107 = dot(r2.xyz, v_17.xyz);
  r2.w = clamp(vec4<f32>(v_107, v_107, v_107, v_107).w, 0.0f, 1.0f);
  let v_108 = dot(r5.xyz, r2.xyz);
  r7.x = clamp(vec4<f32>(v_108, v_108, v_108, v_108).x, 0.0f, 1.0f);
  let v_109 = dot(r6.xyz, v_17.xyz);
  r7.y = clamp(vec4<f32>(v_109, v_109, v_109, v_109).y, 0.0f, 1.0f);
  let v_110 = ((-(r7.xxxy)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_110.xy);
  let v_111 = (r3.zw * r3.zw);
  r6 = vec4<f32>(v_111.xy, r6.zw);
  let v_112 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_112.xy, r6.zw);
  let v_113 = (r3.zw * r6.xy);
  r3 = vec4<f32>(r3.xy, v_113.xy);
  r4.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_114 = fma(cb12_12.tint_symbol_4[0u].xx, r3.zw, r4.ww);
  r3 = vec4<f32>(r3.xy, v_114.xy);
  r3.w = (r1.x * r3.w);
  r1.x = fma((-(r1.xxxx)).x, r3.z, 1.0f);
  r3.z = (r2.w * r3.w);
  r3.z = (r3.z * 0.25f);
  r2.w = (r1.x * r2.w);
  let v_115 = fma(r0.xyz, r2.www, r3.zzz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  let v_116 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_116.xyz, r6.w);
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_117 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_117.xyz, r7.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_118 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_118.xyz, r8.w);
  let v_119 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_119.xyz, r8.w);
  let v_120 = fma(r7.xyz, r1.www, r8.xyz);
  r7 = vec4<f32>(v_120.xyz, r7.w);
  let v_121 = (r3.yyy * r7.xyz);
  r7 = vec4<f32>(v_121.xyz, r7.w);
  let v_122 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_122.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_123 = dot(r9.xyz, r2.xyz);
  r1.z = clamp(vec4<f32>(v_123, v_123, v_123, v_123).z, 0.0f, 1.0f);
  let v_124 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r8.xyz);
  r8 = vec4<f32>(v_124.xyz, r8.w);
  let v_125 = fma(r8.xyz, r3.xxx, r7.xyz);
  r7 = vec4<f32>(v_125.xyz, r7.w);
  let v_126 = (r1.xxx * r7.xyz);
  r7 = vec4<f32>(v_126.xyz, r7.w);
  let v_127 = (r0.xyz * r7.xyz);
  r0 = vec4<f32>(v_127.xyz, r0.w);
  let v_128 = fma(r6.xyz, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_128.xyz, r0.w);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.y = (r1.y + r1.y);
  let v_129 = -(r1.yyyy);
  let v_130 = -(r5.xxyz);
  let v_131 = fma(r2.xyz, v_129.yzw, v_130.yzw);
  r1 = vec4<f32>(r1.x, v_131.xyz);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.x = max(r2.x, cb5_5.tint_symbol_3[6u].z);
  let v_132 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_132.xyz);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_133 = (r2.yzw / r1.yyy);
  r2 = vec4<f32>(r2.x, v_133.xyz);
  let v_134 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_134.xyz);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_135 = bitcast<vec2<u32>>(r1.yy);
  let v_136 = r2.yz;
  let v_137 = select(r2.wz, v_136, (v_135 != vec2<u32>()));
  let v_138 = r1;
  r1 = vec4<f32>(v_138.x, v_137.xy, v_138.w);
  let v_139 = r2.x;
  r2 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_139);
  r1.y = max(r3.y, r3.x);
  let v_140 = (r1.yyy * r2.xyz);
  r1 = vec4<f32>(r1.x, v_140.xyz);
  let v_141 = (r1.xxx * r1.yzw);
  r1 = vec4<f32>(v_141.xyz, r1.w);
  let v_142 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r0.xyz);
  r0 = vec4<f32>(v_142.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r4.xyz, r4.xyz);
    r1.y = sqrt(r1.x);
    let v_143 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_143.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r4.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_144 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_144 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_145 = (r1.xxx * r4.xyz);
    r2 = vec4<f32>(v_145.xyz, r2.w);
    let v_146 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_146, v_146, v_146, v_146).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_147 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_148 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_148.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_149 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_149.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_150 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_150.xyz);
    let v_151 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_151.xyz);
    let v_152 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_152.xyz, r3.w);
    let v_153 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_153.xyz, r2.w);
    let v_154 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_155 = (r2.xyz + v_154.xyz);
    r2 = vec4<f32>(v_155.xyz, r2.w);
    let v_156 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_156.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_157 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_157.xyz, r3.w);
    let v_158 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_158.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_159 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_159.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_160 = -(r0.xyzx);
    let v_161 = fma(r1.xyz, r2.xxx, v_160.xyz);
    r1 = vec4<f32>(v_161.xyz, r1.w);
    let v_162 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_162.xyz, r1.w);
  } else {
    r1.w = dot(r4.xyz, r4.xyz);
    r2.x = sqrt(r1.w);
    let v_163 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_163.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r4.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_164 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_164 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_165 = (r1.www * r4.xyz);
    r3 = vec4<f32>(v_165.xyz, r3.w);
    let v_166 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_167 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_168 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_168.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_169 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_169.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_170 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_170.xyz, r3.w);
    let v_171 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_171.xyz, r3.w);
    let v_172 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_172.xyz, r4.w);
    let v_173 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_173.xyz, r3.w);
    let v_174 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_175 = (r3.xyz + v_174.xyz);
    r3 = vec4<f32>(v_175.xyz, r3.w);
    let v_176 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_176.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_177 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_177.xyz, r4.w);
    let v_178 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_178.xy, r2.z, v_178.z);
    let v_179 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_179.xy, r2.z, v_179.z);
    let v_180 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_180.xyz, r1.w);
  }
  let v_181 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_181.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.z);
  o0.w = r0.w;
  o2 = r0.x;
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_182 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v4, v5, v6, v_182);
  return tint_symbol_8(o0, o1, o2);
}
