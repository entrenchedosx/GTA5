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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

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
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t2, s2, v1.xyz.xyxx.xy);
  let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_5 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  let v_8 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_9 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r3 = textureSample(t3, s3, v1.xyz.xyxx.xy);
  let v_10 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r1.x = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  r0.w = (r0.w * v0.w);
  let v_11 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  let v_12 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_14 = (r1.yyy * r4.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_16 = fma(r4.xyz, r1.yyy, v_15.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_17 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  r1.y = fma(r3.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r1.y = max(r1.y, 0.0f);
  let v_19 = -(r1.yyyy);
  r2.w = fma(r3.w, cb12_12.tint_symbol_4[0u].y, v_19.w);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r2.w, 3.0f, r1.y);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_20 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = fma(r7.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r8 = vec4<f32>(v_24.xyz, r8.w);
  let v_25 = &(x0[0u]);
  let v_26 = r8;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = fma(r7.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r9 = vec4<f32>(v_27.xyz, r9.w);
  let v_28 = &(x0[1u]);
  let v_29 = r9;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r7.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r10 = vec4<f32>(v_30.xyz, r10.w);
  let v_31 = &(x0[2u]);
  let v_32 = r10;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = &(x0[3u]);
  let v_35 = r7;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_37 = r11;
  r11 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  r3.z = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_38 = abs(r10.yyyy);
  r3.w = max(v_38.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_39 = (bitcast<u32>(r3.w) != 0u);
  let v_40 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_40, v_39);
  let v_41 = abs(r9.yyyy);
  r4.w = max(v_41.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_42 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_42 != 0u));
  let v_43 = abs(r8.yyyy);
  r4.w = max(v_43.w, abs(r8.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_44 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_44 != 0u));
  let v_45 = x0[bitcast<i32>(r3.z)];
  r8 = vec4<f32>(v_45.xyz, r8.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.z = (r3.z + 0.5f);
  r3.z = (r3.z * 0.25f);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.z);
  r11.z = r8.z;
  r9.z = 0.0f;
  let v_46 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_47.xy, r11.zw);
  let v_48 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_48.xyz, r10.w);
  let v_49 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_49.xy, r11.zw);
  let v_50 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_50.xyz, r12.w);
  let v_51 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_51.xy, r11.zw);
  let v_52 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_52.xyz, r13.w);
  let v_53 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_53.xy, r11.zw);
  let v_54 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_54.xyz, r14.w);
  let v_55 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_55.xy, r11.zw);
  let v_56 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_56.xyz, r15.w);
  let v_57 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_57.xy, r11.zw);
  let v_58 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_58.xyz, r16.w);
  let v_59 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_59.xy, r11.zw);
  let v_60 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_60.xyz, r17.w);
  let v_61 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_61.xy, r11.zw);
  let v_62 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_62.xyz, r18.w);
  let v_63 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_63.xy, r11.zw);
  let v_64 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_64.xyz, r19.w);
  let v_65 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_66.xyz, r20.w);
  let v_67 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_68.xyz, r21.w);
  let v_69 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_70.xyz, r22.w);
  let v_71 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_72.xyz, r23.w);
  let v_73 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_74.xyz, r24.w);
  let v_75 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_76.xyz, r9.w);
  let v_77 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_77.xy, r8.z);
  let v_78 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_78.xy, r10.z);
  let v_79 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_79.xy, r12.z);
  let v_80 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_80.xy, r13.z);
  let v_81 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_81.xy, r14.z);
  let v_82 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_82.xy, r15.z);
  let v_83 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_83.xy, r16.z);
  let v_84 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_84.xy, r17.z);
  let v_85 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_85.xy, r18.z);
  let v_86 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_86.xy, r19.z);
  let v_87 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_87.xy, r20.z);
  let v_88 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_88.xy, r21.z);
  let v_89 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_89.xy, r22.z);
  let v_90 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_90.xy, r23.z);
  let v_91 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_91.xy, r24.z);
  let v_92 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_92.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.z = dot(r8, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_93 = abs(r7.yyyy);
  r3.w = max(v_93.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r3.w * r2.w);
  r2.w = fma(r3.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_5[3u].z);
  let v_94 = -(r2.wwww);
  r2.w = fma(r3.z, v_94.w, r2.w);
  let v_95 = dot(r2.xyz, v_15.xyz);
  r3.z = clamp(vec4<f32>(v_95, v_95, v_95, v_95).z, 0.0f, 1.0f);
  let v_96 = dot(r5.xyz, r2.xyz);
  r7.x = clamp(vec4<f32>(v_96, v_96, v_96, v_96).x, 0.0f, 1.0f);
  let v_97 = dot(r6.xyz, v_15.xyz);
  r7.y = clamp(vec4<f32>(v_97, v_97, v_97, v_97).y, 0.0f, 1.0f);
  let v_98 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_98.xy, r7.zw);
  let v_99 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_99.xy);
  let v_100 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_100.xy);
  let v_101 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_101.xy, r7.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_102 = fma(cb12_12.tint_symbol_4[0u].xx, r7.xy, r3.ww);
  r7 = vec4<f32>(v_102.xy, r7.zw);
  let v_103 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_103.xy);
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
  let v_104 = fma(r0.xyz, r3.zzz, r1.xxx);
  r6 = vec4<f32>(v_104.xyz, r6.w);
  let v_105 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_105.xyz, r6.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_106 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_106.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_107 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_107.xyz, r8.w);
  let v_108 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_108.xyz, r8.w);
  let v_109 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_109.xyz, r7.w);
  let v_110 = (r3.yyy * r7.xyz);
  r7 = vec4<f32>(v_110.xyz, r7.w);
  let v_111 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_111.x, r1.y, v_111.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_112 = dot(r8.xyz, r2.xyz);
  r3.z = clamp(vec4<f32>(v_112, v_112, v_112, v_112).z, 0.0f, 1.0f);
  let v_113 = fma(cb3_3.tint_symbol_2[49u].xyz, r3.zzz, r1.xzw);
  r1 = vec4<f32>(v_113.x, r1.y, v_113.yz);
  let v_114 = fma(r1.xzw, r3.xxx, r7.xyz);
  r1 = vec4<f32>(v_114.x, r1.y, v_114.yz);
  let v_115 = (r4.www * r1.xzw);
  r1 = vec4<f32>(v_115.x, r1.y, v_115.yz);
  let v_116 = (r0.xyz * r1.xzw);
  r0 = vec4<f32>(v_116.xyz, r0.w);
  let v_117 = fma(r6.xyz, r2.www, r0.xyz);
  r0 = vec4<f32>(v_117.xyz, r0.w);
  r1.x = ((-(r4.wwww)).x + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r2.xyz);
  r1.z = (r1.z + r1.z);
  let v_118 = -(r1.zzzz);
  let v_119 = -(r5.xyzx);
  let v_120 = fma(r2.xyz, v_118.xyz, v_119.xyz);
  r2 = vec4<f32>(v_120.xyz, r2.w);
  let v_121 = clamp(((r1.yyyy * vec4<f32>(0.0f, 0.00066666665952652693f, 0.00177619897294789553f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_122 = r1;
  r1 = vec4<f32>(v_122.x, v_121.xy, v_122.w);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = (r1.y * cb5_5.tint_symbol_3[6u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  r3.z = fma(r1.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.y = (r1.y * r1.y);
  r1.y = fma(r1.y, 5.0f, r1.w);
  let v_123 = bitcast<u32>(r2.w);
  let v_124 = r3.z;
  r1.y = select(r1.y, v_124, (v_123 != 0u));
  let v_125 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_125.xy, r2.z, v_125.z);
  r1.w = (abs(r2.zzzz).w + 1.0f);
  let v_126 = (r2.xyw / r1.www);
  r2 = vec4<f32>(v_126.xy, r2.z, v_126.z);
  let v_127 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_127.xy, r2.z, v_127.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_128 = bitcast<vec2<u32>>(r1.ww);
  let v_129 = r2.xy;
  let v_130 = select(r2.wy, v_129, (v_128 != vec2<u32>()));
  r2 = vec4<f32>(v_130.xy, r2.zw);
  let v_131 = r1.y;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_131);
  r1.y = max(r3.y, r3.x);
  let v_132 = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v_132.xyz, r2.w);
  let v_133 = (r1.zzz * r2.xyz);
  r1 = vec4<f32>(r1.x, v_133.xyz);
  let v_134 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_134.xyz);
  let v_135 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_135.xyz);
  let v_136 = fma(r1.yzw, r1.xxx, r0.xyz);
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

fn v_3(v_176 : bool) {
  if (v_176) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_177 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_177);
  return o0;
}
