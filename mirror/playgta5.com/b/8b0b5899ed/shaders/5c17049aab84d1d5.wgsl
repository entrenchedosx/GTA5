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

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

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

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r1 = textureSample(t3, s3, v0.xy.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb11_11.tint_symbol_4[4u].w, 0.00100000004749745131f);
  let v_4 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_8 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3 = textureSample(t4, s4, v0.xy.xyxx.xy);
  let v_9 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r1.x = dot(r3.xyz, cb11_11.tint_symbol_4[4u].xyz);
  r1.x = (r1.x * cb11_11.tint_symbol_4[3u].z);
  let v_10 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0 = (r0 * v6.xxxw);
  let v_11 = (v6.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r1.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r1.y = (r1.y * r3.y);
  r1.x = (r1.x * v6.x);
  let v_12 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_4[2u].zzzz)).x, 0.0f, 1.0f);
  let v_13 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_14 = (r2.www * r4.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_16 = fma(r4.xyz, r2.www, v_15.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_17 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r2.w = (r3.x * r3.x);
  r1.y = (r1.y * r1.y);
  r3.x = fma(r3.w, cb11_11.tint_symbol_4[3u].y, -500.0f);
  r3.x = max(r3.x, 0.0f);
  let v_18 = -(r3.xxxx);
  r3.y = fma(r3.w, cb11_11.tint_symbol_4[3u].y, v_18.y);
  r3.x = (r3.x * 558.0f);
  r3.x = fma(r3.y, 3.0f, r3.x);
  r3.y = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_19 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_23.xyz, r8.w);
  let v_24 = &(x0[0u]);
  let v_25 = r8;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  let v_27 = &(x0[1u]);
  let v_28 = r9;
  *(v_27) = vec4<f32>(v_28.xyz, (*(v_27)).w);
  let v_29 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_29.xyz, r10.w);
  let v_30 = &(x0[2u]);
  let v_31 = r10;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = &(x0[3u]);
  let v_34 = r7;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_36 = r11;
  r11 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  r3.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_37 = abs(r10.yyyy);
  r3.w = max(v_37.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_38 = (bitcast<u32>(r3.w) != 0u);
  let v_39 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_39, v_38);
  let v_40 = abs(r9.yyyy);
  r4.w = max(v_40.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_41 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_41 != 0u));
  let v_42 = abs(r8.yyyy);
  r4.w = max(v_42.w, abs(r8.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_43 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_43 != 0u));
  let v_44 = x0[bitcast<i32>(r3.z)];
  r8 = vec4<f32>(v_44.xyz, r8.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.z = dot(r9, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_5[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r8.z);
  let v_45 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_45.xy, r10.z, v_45.z);
  r10.z = dpdx(r3.z);
  let v_46 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_46.xyz, r12.w);
  r12.w = dpdy(r3.z);
  let v_47 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_47.xy);
  let v_48 = -(r7.zwzz);
  let v_49 = fma(r10.xz, r12.xz, v_48.xy);
  r13 = vec4<f32>(v_49.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_50 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_50.z);
  let v_51 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_51.xy);
  let v_52 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_52.xy);
  let v_53 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_53.xy);
  r3.z = fma((-(r4.wwww)).z, r7.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r7.w, r3.z);
  let v_54 = bitcast<u32>(r3.w);
  let v_55 = r3.z;
  r11.z = select(r8.z, v_55, (v_54 != 0u));
  r9.z = 0.0f;
  let v_56 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_56.xyz, r8.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_57.xy, r11.zw);
  let v_58 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_58.xyz, r10.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_59.xy, r11.zw);
  let v_60 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_60.xyz, r12.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_61.xy, r11.zw);
  let v_62 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_62.xyz, r13.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_64.xyz, r14.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_66.xyz, r15.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_68.xyz, r16.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_70.xyz, r17.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_72.xyz, r18.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_74.xyz, r19.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_76.xyz, r20.w);
  let v_77 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_78.xyz, r21.w);
  let v_79 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_80.xyz, r22.w);
  let v_81 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_82.xyz, r23.w);
  let v_83 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_84.xyz, r24.w);
  let v_85 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_86.xyz, r9.w);
  let v_87 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_87.xy, r8.z);
  let v_88 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_88.xy, r10.z);
  let v_89 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_89.xy, r12.z);
  let v_90 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_90.xy, r13.z);
  let v_91 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_91.xy, r14.z);
  let v_92 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_92.xy, r15.z);
  let v_93 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_93.xy, r16.z);
  let v_94 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_94.xy, r17.z);
  let v_95 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_95.xy, r18.z);
  let v_96 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_96.xy, r19.z);
  let v_97 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_97.xy, r20.z);
  let v_98 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_98.xy, r21.z);
  let v_99 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_99.xy, r22.z);
  let v_100 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_100.xy, r23.z);
  let v_101 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_101.xy, r24.z);
  let v_102 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_102.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.z = dot(r8, vec4<f32>(1.0f));
  r3.y = clamp(fma(r3.yyyy, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).y, 0.0f, 1.0f);
  let v_103 = abs(r7.yyyy);
  r3.w = max(v_103.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  r3.y = (r3.w * r3.y);
  r3.y = fma(r3.z, 0.0625f, r3.y);
  r3.y = (r3.y * r3.y);
  r3.y = min(r3.y, 1.0f);
  r3.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_5[3u].z);
  let v_104 = -(r3.yyyy);
  r3.y = fma(r3.z, v_104.y, r3.y);
  let v_105 = dot(r2.xyz, v_15.xyz);
  r3.z = clamp(vec4<f32>(v_105, v_105, v_105, v_105).z, 0.0f, 1.0f);
  let v_106 = dot(r5.xyz, r2.xyz);
  r7.x = clamp(vec4<f32>(v_106, v_106, v_106, v_106).x, 0.0f, 1.0f);
  let v_107 = dot(r6.xyz, v_15.xyz);
  r7.y = clamp(vec4<f32>(v_107, v_107, v_107, v_107).y, 0.0f, 1.0f);
  let v_108 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_108.xy, r7.zw);
  let v_109 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_109.xy);
  let v_110 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_110.xy);
  let v_111 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_111.xy, r7.zw);
  r3.w = ((-(cb11_11.tint_symbol_4[3u].xxxx)).w + 1.0f);
  let v_112 = fma(cb11_11.tint_symbol_4[3u].xx, r7.xy, r3.ww);
  r7 = vec4<f32>(v_112.xy, r7.zw);
  let v_113 = (r3.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_113.xy);
  r3.w = (r7.z * 0.125f);
  r4.w = fma((-(r1.xxxx)).w, r7.x, 1.0f);
  r5.w = dot(r2.xyz, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r7.w);
  r5.w = exp2(r5.w);
  r5.w = (r7.y * r5.w);
  r3.w = (r3.w * r5.w);
  r1.x = (r1.x * r3.w);
  r1.x = (r3.z * r1.x);
  r3.z = (r3.z * r4.w);
  let v_114 = fma(r0.xyz, r3.zzz, r1.xxx);
  r6 = vec4<f32>(v_114.xyz, r6.w);
  let v_115 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_115.xyz, r6.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_116 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_116.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_117 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_117.xyz, r8.w);
  let v_118 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_118.xyz, r8.w);
  let v_119 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_119.xyz, r7.w);
  let v_120 = (r1.yyy * r7.xyz);
  r7 = vec4<f32>(v_120.xyz, r7.w);
  let v_121 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_121.x, r1.y, v_121.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_122 = dot(r8.xyz, r2.xyz);
  r3.z = clamp(vec4<f32>(v_122, v_122, v_122, v_122).z, 0.0f, 1.0f);
  let v_123 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.zzz, r1.xzw);
  r1 = vec4<f32>(v_123.x, r1.y, v_123.yz);
  let v_124 = fma(r1.xzw, r2.www, r7.xyz);
  r1 = vec4<f32>(v_124.x, r1.y, v_124.yz);
  let v_125 = (r4.www * r1.xzw);
  r1 = vec4<f32>(v_125.x, r1.y, v_125.yz);
  let v_126 = (r0.xyz * r1.xzw);
  r0 = vec4<f32>(v_126.xyz, r0.w);
  let v_127 = fma(r6.xyz, r3.yyy, r0.xyz);
  r0 = vec4<f32>(v_127.xyz, r0.w);
  r1.x = ((-(r4.wwww)).x + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_128 = -(r1.zzzz);
  let v_129 = -(r5.xyzx);
  let v_130 = fma(r2.xyz, v_128.xyz, v_129.xyz);
  r2 = vec4<f32>(v_130.xyz, r2.w);
  let v_131 = clamp(((r3.xxxx * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_131.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r3.y = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r3.x)));
  r3.z = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.z = (r1.z * r1.z);
  r1.z = fma(r1.z, 5.0f, r3.x);
  let v_132 = bitcast<u32>(r3.y);
  let v_133 = r3.z;
  r1.z = select(r1.z, v_133, (v_132 != 0u));
  let v_134 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_134.xyz, r3.w);
  r2.x = (abs(r2.zzzz).x + 1.0f);
  let v_135 = (r3.xyz / r2.xxx);
  r3 = vec4<f32>(v_135.xyz, r3.w);
  let v_136 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_136.xyz, r3.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_137 = bitcast<vec2<u32>>(r2.xx);
  let v_138 = r3.xy;
  let v_139 = select(r3.zy, v_138, (v_137 != vec2<u32>()));
  r2 = vec4<f32>(v_139.xy, r2.zw);
  let v_140 = r1.z;
  r3 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_140);
  r1.y = max(r1.y, r2.w);
  let v_141 = (r1.yyy * r3.xyz);
  r2 = vec4<f32>(v_141.xyz, r2.w);
  let v_142 = (r1.www * r2.xyz);
  r1 = vec4<f32>(r1.x, v_142.xyz);
  let v_143 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_143.xyz);
  let v_144 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_144.xyz);
  let v_145 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_145.xyz, r0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r0.w);
  let v_146 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_146.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r4.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_147 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_147 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_148 = (r0.www * r4.xyz);
  r2 = vec4<f32>(v_148.xyz, r2.w);
  let v_149 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_150 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_151 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_151.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_152 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_152.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_153 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_153.xyz, r2.w);
  let v_154 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_154.xyz, r2.w);
  let v_155 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_155.xyz, r3.w);
  let v_156 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_156.xyz, r2.w);
  let v_157 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_158 = (r2.xyz + v_157.xyz);
  r2 = vec4<f32>(v_158.xyz, r2.w);
  let v_159 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_159.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_160 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_160.xy, r1.z, v_160.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_161 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_161.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_162 = -(r0.xyxz);
  let v_163 = fma(r1.xyw, r0.www, v_162.xyw);
  r1 = vec4<f32>(v_163.xy, r1.z, v_163.z);
  let v_164 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_164.xyz, r0.w);
  let v_165 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_165.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_166 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_166);
  return o0;
}
