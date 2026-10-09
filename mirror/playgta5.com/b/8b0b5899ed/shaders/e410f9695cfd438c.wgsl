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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v4 = v_2;
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[4u].x >= r0.x)));
  v_3((bitcast<u32>(r0.x) != 0u));
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_4 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_5 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r0.w = dot(r1.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r0.w = clamp(((r0.wwww * cb12_12.tint_symbol_4[0u].zzzz)).w, 0.0f, 1.0f);
  r1.x = (r1.y * v0.w);
  let v_6 = ((-(v3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_7 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_8 = fma(r2.xyz, r1.yyy, v_7.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_9 = (r1.yyy * r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r1.y = fma(r1.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r1.y = max(r1.y, 0.0f);
  let v_10 = -(r1.yyyy);
  r1.z = fma(r1.w, cb12_12.tint_symbol_4[0u].y, v_10.z);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r1.z, 3.0f, r1.y);
  r1.z = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_11 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r2.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r2.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r2.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyz);
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
  r1.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_29 = abs(r7.yyyy);
  r2.w = max(v_29.w, abs(r7.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  let v_30 = (bitcast<u32>(r2.w) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_31, v_30);
  let v_32 = abs(r6.yyyy);
  r3.w = max(v_32.w, abs(r6.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.w)));
  let v_33 = bitcast<u32>(r3.w);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_33 != 0u));
  let v_34 = abs(r5.yyyy);
  r3.w = max(v_34.w, abs(r5.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.w)));
  let v_35 = bitcast<u32>(r1.w);
  r1.w = select(r2.w, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r1.w)];
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r1.w = f32(bitcast<i32>(r1.w));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r1.w = dot(r6, cb6_6.tint_symbol_5[12u]);
  r3.w = dot(r6, cb6_6.tint_symbol_5[13u]);
  r6.x = (r5.x + 0.5f);
  r6.y = fma(r5.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r5.z);
  let v_37 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_37.xy, r7.z, v_37.z);
  r7.z = dpdx(r1.w);
  let v_38 = dpdy(r6.yxy);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  r9.w = dpdy(r1.w);
  let v_39 = (r7.yw * r9.yw);
  r4 = vec4<f32>(r4.xy, v_39.xy);
  let v_40 = -(r4.zwzz);
  let v_41 = fma(r7.xz, r9.xz, v_40.xy);
  r10 = vec4<f32>(v_41.xy, r10.zw);
  r4.z = (1.0f / r10.x);
  r4.w = (r7.z * r9.y);
  let v_42 = -(r4.wwww);
  r10.z = fma(r7.x, r9.w, v_42.z);
  let v_43 = (r4.zz * r10.yz);
  r4 = vec4<f32>(r4.xy, v_43.xy);
  let v_44 = max(r4.zw, vec2<f32>());
  r4 = vec4<f32>(r4.xy, v_44.xy);
  let v_45 = min(r4.zw, vec2<f32>(0.5f));
  r4 = vec4<f32>(r4.xy, v_45.xy);
  r1.w = fma((-(r3.wwww)).w, r4.z, r1.w);
  r1.w = fma((-(r3.wwww)).w, r4.w, r1.w);
  let v_46 = bitcast<u32>(r2.w);
  let v_47 = r1.w;
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
  r1.w = dot(r5, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  let v_95 = abs(r4.yyyy);
  r2.w = max(v_95.w, abs(r4.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r2.w * r1.z);
  r1.z = fma(r1.w, 0.0625f, r1.z);
  r1.z = (r1.z * r1.z);
  r1.z = min(r1.z, 1.0f);
  r1.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_5[3u].z);
  let v_96 = -(r1.zzzz);
  r1.z = fma(r1.w, v_96.z, r1.z);
  let v_97 = dot(r0.xyz, v_7.xyz);
  r1.w = clamp(vec4<f32>(v_97, v_97, v_97, v_97).w, 0.0f, 1.0f);
  let v_98 = dot(r3.xyz, v_7.xyz);
  r2.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r3.w = (r2.w * r2.w);
  r3.w = (r3.w * r3.w);
  r2.w = (r2.w * r3.w);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  r2.w = fma(cb12_12.tint_symbol_4[0u].x, r2.w, r3.w);
  let v_99 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_99.xy, r4.zw);
  r1.y = (r4.x * 0.125f);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r4.y);
  r0.x = exp2(r0.x);
  r0.x = (r2.w * r0.x);
  r0.x = (r1.y * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r1.w * r0.x);
  let v_100 = (r0.xxx * cb3_3.tint_symbol_2[1u].xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = (r1.zzz * r0.xyz);
  r3 = vec4<f32>(v_101.xyz, r3.w);
  o0.w = (r1.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r0.w);
    let v_102 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_102.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.z);
    r1.w = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r2.w = (r1.w * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r1.w = (r2.w / r1.w);
    let v_103 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.w, (v_103 != 0u));
    r1.w = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.w);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.w = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_104 = (r0.www * r2.xyz);
    r4 = vec4<f32>(v_104.xyz, r4.w);
    let v_105 = dot(r4.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_105, v_105, v_105, v_105).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_106 = dot(r4.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_106, v_106, v_106, v_106).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_107 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.w = (r1.y + v_107.w);
    r3.w = max(r3.w, 0.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[51u].x);
    r3.w = (r3.w * 1.44269502162933349609f);
    r3.w = exp2(r3.w);
    r3.w = ((-(r3.wwww)).w + 1.0f);
    r1.w = clamp(fma(r1.xxxx, r3.wwww, r1.wwww).w, 0.0f, 1.0f);
    let v_108 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_108.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_109 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r4 = vec4<f32>(v_109.xyz, r4.w);
    let v_110 = fma(r0.www, r4.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r4 = vec4<f32>(v_110.xyz, r4.w);
    let v_111 = ((-(r4.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r5 = vec4<f32>(v_111.xyz, r5.w);
    let v_112 = fma(r2.www, r5.xyz, r4.xyz);
    r4 = vec4<f32>(v_112.xyz, r4.w);
    let v_113 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_114 = (r4.xyz + v_113.xyz);
    r4 = vec4<f32>(v_114.xyz, r4.w);
    let v_115 = fma(r1.yyy, r4.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r4 = vec4<f32>(v_115.xyz, r4.w);
    r5.x = cb3_3.tint_symbol_2[55u].w;
    r5.y = cb3_3.tint_symbol_2[56u].w;
    r5.z = cb3_3.tint_symbol_2[57u].w;
    let v_116 = ((-(r4.xyzx)).xyz + r5.xyz);
    r5 = vec4<f32>(v_116.xyz, r5.w);
    let v_117 = fma(r1.xxx, r5.xyz, r4.xyz);
    r4 = vec4<f32>(v_117.xyz, r4.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_118 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r1 = vec4<f32>(v_118.xy, r1.zw);
      r5 = textureSample(t11, s11, r1.xyxx.xy);
      r0.w = (r5.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_119 = -(r3.xyzx);
    let v_120 = fma(r4.xyz, r0.www, v_119.xyz);
    r4 = vec4<f32>(v_120.xyz, r4.w);
    let v_121 = fma(r1.www, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_121.xy, r1.z, v_121.z);
  } else {
    r0.w = dot(r2.xyz, r2.xyz);
    r2.w = sqrt(r0.w);
    let v_122 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r3.w = (r2.w + v_122.w);
    r3.w = max(r3.w, 0.0f);
    r2.w = (r3.w / r2.w);
    r2.w = (r2.w * r2.z);
    r4.x = (r2.w * cb3_3.tint_symbol_2[52u].z);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.wwww).w)));
    r4.y = (r4.x * -1.44269502162933349609f);
    r4.y = exp2(r4.y);
    r4.y = ((-(r4.yyyy)).y + 1.0f);
    r4.x = (r4.y / r4.x);
    let v_123 = bitcast<u32>(r2.w);
    r2.w = select(1.0f, r4.x, (v_123 != 0u));
    r4.x = (r3.w * cb3_3.tint_symbol_2[51u].w);
    r2.w = (r2.w * r4.x);
    r2.w = min(r2.w, 1.0f);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = min(r2.w, 1.0f);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r4.x = (r2.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_124 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_124.xyz, r2.w);
    let v_125 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_125, v_125, v_125, v_125).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_126 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r2.y = fma((-(r2.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_127 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.z = (r3.w + v_127.z);
    r2.z = max(r2.z, 0.0f);
    let v_128 = (r2.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_129 = r2;
    r2 = vec4<f32>(v_129.x, v_128.xy, v_129.w);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.z = clamp(fma(r2.yyyy, r2.zzzz, r4.xxxx).z, 0.0f, 1.0f);
    let v_130 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.w = (r3.w * v_130.w);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    let v_131 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r4 = vec4<f32>(v_131.xyz, r4.w);
    let v_132 = fma(r0.www, r4.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r4 = vec4<f32>(v_132.xyz, r4.w);
    let v_133 = ((-(r4.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r5 = vec4<f32>(v_133.xyz, r5.w);
    let v_134 = fma(r2.xxx, r5.xyz, r4.xyz);
    r4 = vec4<f32>(v_134.xyz, r4.w);
    let v_135 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_136 = (r4.xyz + v_135.xyz);
    r4 = vec4<f32>(v_136.xyz, r4.w);
    let v_137 = fma(r2.www, r4.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r4 = vec4<f32>(v_137.xyz, r4.w);
    r5.x = cb3_3.tint_symbol_2[55u].w;
    r5.y = cb3_3.tint_symbol_2[56u].w;
    r5.z = cb3_3.tint_symbol_2[57u].w;
    let v_138 = ((-(r4.xyzx)).xyz + r5.xyz);
    r5 = vec4<f32>(v_138.xyz, r5.w);
    let v_139 = fma(r2.yyy, r5.xyz, r4.xyz);
    r2 = vec4<f32>(v_139.xy, r2.z, v_139.z);
    let v_140 = fma((-(r0.xyzx)).xyz, r1.zzz, r2.xyw);
    r0 = vec4<f32>(v_140.xyz, r0.w);
    let v_141 = fma(r2.zzz, r0.xyz, r3.xyz);
    r1 = vec4<f32>(v_141.xy, r1.z, v_141.z);
  }
  let v_142 = (r1.xyw * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_142.xyz, o0.w);
}

fn v_3(v_143 : bool) {
  if (v_143) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_144 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_144);
  return o0;
}
