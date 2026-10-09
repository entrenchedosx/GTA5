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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v4 : vec4<f32>;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
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
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_3 = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r0.w = dot(r1.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r0.w = clamp(((r0.wwww * cb12_12.tint_symbol_4[0u].zzzz)).w, 0.0f, 1.0f);
  r1.x = (r1.y * v0.w);
  let v_5 = -(v3.xyzx);
  let v_6 = (v_5.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_7 = (r1.yyy * r2.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_9 = fma(r2.xyz, r1.yyy, v_8.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_10 = (r1.zzz * r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r1.z = fma(r1.w, cb12_12.tint_symbol_4[0u].y, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_11 = -(r1.zzzz);
  r1.w = fma(r1.w, cb12_12.tint_symbol_4[0u].y, v_11.w);
  r1.z = (r1.z * 558.0f);
  r1.z = fma(r1.w, 3.0f, r1.z);
  r1.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_12 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = &(x0[0u]);
  let v_18 = r7;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = &(x0[1u]);
  let v_21 = r8;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r9 = vec4<f32>(v_22.xyz, r9.w);
  let v_23 = &(x0[2u]);
  let v_24 = r9;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = &(x0[3u]);
  let v_27 = r6;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_29 = r10;
  r10 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_30 = abs(r9.yyyy);
  r3.w = max(v_30.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_31 = (bitcast<u32>(r3.w) != 0u);
  let v_32 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_32, v_31);
  let v_33 = abs(r8.yyyy);
  r4.w = max(v_33.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_34 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_34 != 0u));
  let v_35 = abs(r7.yyyy);
  r4.w = max(v_35.w, abs(r7.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_36 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_36 != 0u));
  let v_37 = x0[bitcast<i32>(r2.w)];
  r7 = vec4<f32>(v_37.xyz, r7.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r2.w = dot(r8, cb6_6.tint_symbol_5[12u]);
  r4.w = dot(r8, cb6_6.tint_symbol_5[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r7.z);
  let v_38 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_38.xy, r9.z, v_38.z);
  r9.z = dpdx(r2.w);
  let v_39 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_39.xyz, r11.w);
  r11.w = dpdy(r2.w);
  let v_40 = (r9.yw * r11.yw);
  r6 = vec4<f32>(r6.xy, v_40.xy);
  let v_41 = -(r6.zwzz);
  let v_42 = fma(r9.xz, r11.xz, v_41.xy);
  r12 = vec4<f32>(v_42.xy, r12.zw);
  r5.w = (1.0f / r12.x);
  r6.z = (r9.z * r11.y);
  let v_43 = -(r6.zzzz);
  r12.z = fma(r9.x, r11.w, v_43.z);
  let v_44 = (r5.ww * r12.yz);
  r6 = vec4<f32>(r6.xy, v_44.xy);
  let v_45 = max(r6.zw, vec2<f32>());
  r6 = vec4<f32>(r6.xy, v_45.xy);
  let v_46 = min(r6.zw, vec2<f32>(0.5f));
  r6 = vec4<f32>(r6.xy, v_46.xy);
  r2.w = fma((-(r4.wwww)).w, r6.z, r2.w);
  r2.w = fma((-(r4.wwww)).w, r6.w, r2.w);
  let v_47 = bitcast<u32>(r3.w);
  let v_48 = r2.w;
  r10.z = select(r7.z, v_48, (v_47 != 0u));
  r8.z = 0.0f;
  let v_49 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_50.xy, r10.zw);
  let v_51 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_52.xy, r10.zw);
  let v_53 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_53.xyz, r11.w);
  let v_54 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_54.xy, r10.zw);
  let v_55 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_56.xy, r10.zw);
  let v_57 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  let v_58 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_58.xy, r10.zw);
  let v_59 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_59.xyz, r14.w);
  let v_60 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_60.xy, r10.zw);
  let v_61 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_62.xy, r10.zw);
  let v_63 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_63.xyz, r16.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_64.xy, r10.zw);
  let v_65 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_65.xyz, r17.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_66.xy, r10.zw);
  let v_67 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_67.xyz, r18.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_68.xy, r10.zw);
  let v_69 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_69.xyz, r19.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_70.xy, r10.zw);
  let v_71 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_71.xyz, r20.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_72.xy, r10.zw);
  let v_73 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_73.xyz, r21.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_74.xy, r10.zw);
  let v_75 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_75.xyz, r22.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_76.xy, r10.zw);
  let v_77 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_77.xyz, r23.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_78.xy, r10.zw);
  let v_79 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_79.xyz, r8.w);
  let v_80 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_80.xy, r7.z);
  let v_81 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_81.xy, r9.z);
  let v_82 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_82.xy, r11.z);
  let v_83 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_83.xy, r12.z);
  let v_84 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_84.xy, r13.z);
  let v_85 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_85.xy, r14.z);
  let v_86 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_86.xy, r15.z);
  let v_87 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_87.xy, r16.z);
  let v_88 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_88.xy, r17.z);
  let v_89 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_89.xy, r18.z);
  let v_90 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_90.xy, r19.z);
  let v_91 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_91.xy, r20.z);
  let v_92 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_92.xy, r21.z);
  let v_93 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_93.xy, r22.z);
  let v_94 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_94.xy, r23.z);
  let v_95 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_95.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r2.w = dot(r7, vec4<f32>(1.0f));
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_96 = abs(r6.yyyy);
  r3.w = max(v_96.w, abs(r6.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = (r3.w * r1.w);
  r1.w = fma(r2.w, 0.0625f, r1.w);
  r1.w = (r1.w * r1.w);
  r1.w = min(r1.w, 1.0f);
  r2.w = clamp(fma(v3.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_97 = -(r1.wwww);
  r1.w = fma(r2.w, v_97.w, r1.w);
  let v_98 = dot(r0.xyz, v_8.xyz);
  r2.w = clamp(vec4<f32>(v_98, v_98, v_98, v_98).w, 0.0f, 1.0f);
  let v_99 = dot(r4.xyz, v_8.xyz);
  r3.w = clamp(vec4<f32>(v_99, v_99, v_99, v_99).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r4.w = (r3.w * r3.w);
  r4.w = (r4.w * r4.w);
  r3.w = (r3.w * r4.w);
  r4.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  r3.w = fma(cb12_12.tint_symbol_4[0u].x, r3.w, r4.w);
  let v_100 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_100.xy, r6.zw);
  r1.z = (r6.x * 0.125f);
  r4.x = dot(r0.xyz, r4.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r6.y);
  r4.x = exp2(r4.x);
  r3.w = (r3.w * r4.x);
  r3.w = (r1.z * r3.w);
  r3.w = (r0.w * r3.w);
  r2.w = (r2.w * r3.w);
  let v_101 = (r2.www * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_101.xyz, r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r6 = vec4<f32>(0.0f, r6.y, vec2<f32>());
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_102 = ((-(v3.xxyz)).xzw + cb3_3.tint_symbol_2[3u].xyz);
    r6 = vec4<f32>(v_102.x, r6.y, v_102.yz);
    let v_103 = (v3.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r7 = vec4<f32>(v_103.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_2[19u].w);
    let v_104 = fma(cb3_3.tint_symbol_2[11u].xyz, r5.www, cb3_3.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_104.xyz, r7.w);
    let v_105 = (r7.xyz + v_5.xyz);
    r7 = vec4<f32>(v_105.xyz, r7.w);
    let v_106 = bitcast<vec3<u32>>(r3.www);
    let v_107 = r6.xzw;
    let v_108 = select(r7.xyz, v_107, (v_106 != vec3<u32>()));
    r6 = vec4<f32>(v_108.x, r6.y, v_108.yz);
    r3.w = dot(r6.xzw, r6.xzw);
    let v_109 = (r6.xzw + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_109.x, r6.y, v_109.yz);
    r5.w = dot(r6.xzw, r6.xzw);
    r5.w = inverseSqrt(r5.w);
    let v_110 = (r5.www * r6.xzw);
    r6 = vec4<f32>(v_110.x, r6.y, v_110.yz);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r3.w, cb3_3.tint_symbol_2[11u].w);
    r3.w = (r3.w / r5.w);
    let v_111 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r5.w = dot(r6.xzw, v_111.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_112 = dot(r6.xzw, r0.xyz);
    r7.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
    let v_113 = fma(r2.xyz, r1.yyy, r6.xzw);
    r6 = vec4<f32>(v_113.x, r6.y, v_113.yz);
    r7.y = dot(r6.xzw, r6.xzw);
    r7.y = inverseSqrt(r7.y);
    let v_114 = (r6.xzw * r7.yyy);
    r6 = vec4<f32>(v_114.x, r6.y, v_114.yz);
    let v_115 = dot(r6.xzw, r3.xyz);
    r7.y = clamp(vec4<f32>(v_115, v_115, v_115, v_115).y, 0.0f, 1.0f);
    r7.y = ((-(r7.yyyy)).y + 1.0f);
    r7.z = (r7.y * r7.y);
    r7.z = (r7.z * r7.z);
    r7.y = (r7.z * r7.y);
    r7.y = fma(cb12_12.tint_symbol_4[0u].x, r7.y, r4.w);
    let v_116 = dot(r6.xzw, r0.xyz);
    r6.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
    r6.x = log2(r6.x);
    r6.x = (r6.x * r6.y);
    r6.x = exp2(r6.x);
    r6.x = (r6.x * r7.y);
    r5.w = (r5.w * r7.x);
    r5.w = (r5.w * r6.x);
    r3.w = (r3.w * r5.w);
    r3.w = (r1.z * r3.w);
    let v_117 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
    r6 = vec4<f32>(v_117.x, r6.y, v_117.yz);
  }
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    let v_118 = bitcast<u32>(r5.w);
    let v_119 = r3.w;
    r2.w = select(r2.w, v_119, (v_118 != 0u));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_120 = (v_5.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r7 = vec4<f32>(v_120.xyz, r7.w);
      let v_121 = (v3.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r8 = vec4<f32>(v_121.xyz, r8.w);
      r5.w = dot(r8.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r5.w = (r5.w * cb3_3.tint_symbol_2[20u].w);
      let v_122 = fma(cb3_3.tint_symbol_2[12u].xyz, r5.www, cb3_3.tint_symbol_2[4u].xyz);
      r8 = vec4<f32>(v_122.xyz, r8.w);
      let v_123 = (r8.xyz + v_5.xyz);
      r8 = vec4<f32>(v_123.xyz, r8.w);
      let v_124 = bitcast<vec3<u32>>(r3.www);
      let v_125 = r7.xyz;
      let v_126 = select(r8.xyz, v_125, (v_124 != vec3<u32>()));
      r7 = vec4<f32>(v_126.xyz, r7.w);
      r3.w = dot(r7.xyz, r7.xyz);
      let v_127 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
      r7 = vec4<f32>(v_127.xyz, r7.w);
      r5.w = dot(r7.xyz, r7.xyz);
      r5.w = inverseSqrt(r5.w);
      let v_128 = (r5.www * r7.xyz);
      r7 = vec4<f32>(v_128.xyz, r7.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r5.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r5.w = fma(r5.w, r3.w, cb3_3.tint_symbol_2[12u].w);
      r3.w = (r3.w / r5.w);
      let v_129 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r5.w = dot(r7.xyz, v_129.xyz);
      r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_130 = dot(r7.xyz, r0.xyz);
      r7.w = clamp(vec4<f32>(v_130, v_130, v_130, v_130).w, 0.0f, 1.0f);
      let v_131 = fma(r2.xyz, r1.yyy, r7.xyz);
      r7 = vec4<f32>(v_131.xyz, r7.w);
      r8.x = dot(r7.xyz, r7.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_132 = (r7.xyz * r8.xxx);
      r7 = vec4<f32>(v_132.xyz, r7.w);
      let v_133 = dot(r7.xyz, r3.xyz);
      r8.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
      r8.x = ((-(r8.xxxx)).x + 1.0f);
      r8.y = (r8.x * r8.x);
      r8.y = (r8.y * r8.y);
      r8.x = (r8.y * r8.x);
      r8.x = fma(cb12_12.tint_symbol_4[0u].x, r8.x, r4.w);
      let v_134 = dot(r7.xyz, r0.xyz);
      r7.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
      r7.x = log2(r7.x);
      r7.x = (r6.y * r7.x);
      r7.x = exp2(r7.x);
      r7.x = (r7.x * r8.x);
      r5.w = (r5.w * r7.w);
      r5.w = (r5.w * r7.x);
      r3.w = (r3.w * r5.w);
      r3.w = (r1.z * r3.w);
      let v_135 = fma(r3.www, cb3_3.tint_symbol_2[20u].xyz, r6.xzw);
      r6 = vec4<f32>(v_135.x, r6.y, v_135.yz);
    }
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_136 = (v_5.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r7 = vec4<f32>(v_136.xyz, r7.w);
      let v_137 = (v3.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r8 = vec4<f32>(v_137.xyz, r8.w);
      r5.w = dot(r8.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r5.w = (r5.w * cb3_3.tint_symbol_2[21u].w);
      let v_138 = fma(cb3_3.tint_symbol_2[13u].xyz, r5.www, cb3_3.tint_symbol_2[5u].xyz);
      r8 = vec4<f32>(v_138.xyz, r8.w);
      let v_139 = (r8.xyz + v_5.xyz);
      r8 = vec4<f32>(v_139.xyz, r8.w);
      let v_140 = bitcast<vec3<u32>>(r3.www);
      let v_141 = r7.xyz;
      let v_142 = select(r8.xyz, v_141, (v_140 != vec3<u32>()));
      r7 = vec4<f32>(v_142.xyz, r7.w);
      r3.w = dot(r7.xyz, r7.xyz);
      let v_143 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
      r7 = vec4<f32>(v_143.xyz, r7.w);
      r5.w = dot(r7.xyz, r7.xyz);
      r5.w = inverseSqrt(r5.w);
      let v_144 = (r5.www * r7.xyz);
      r7 = vec4<f32>(v_144.xyz, r7.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r5.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r5.w = fma(r5.w, r3.w, cb3_3.tint_symbol_2[13u].w);
      r3.w = (r3.w / r5.w);
      let v_145 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r5.w = dot(r7.xyz, v_145.xyz);
      r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_146 = dot(r7.xyz, r0.xyz);
      r7.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
      let v_147 = fma(r2.xyz, r1.yyy, r7.xyz);
      r7 = vec4<f32>(v_147.xyz, r7.w);
      r8.x = dot(r7.xyz, r7.xyz);
      r8.x = inverseSqrt(r8.x);
      let v_148 = (r7.xyz * r8.xxx);
      r7 = vec4<f32>(v_148.xyz, r7.w);
      let v_149 = dot(r7.xyz, r3.xyz);
      r8.x = clamp(vec4<f32>(v_149, v_149, v_149, v_149).x, 0.0f, 1.0f);
      r8.x = ((-(r8.xxxx)).x + 1.0f);
      r8.y = (r8.x * r8.x);
      r8.y = (r8.y * r8.y);
      r8.x = (r8.y * r8.x);
      r8.x = fma(cb12_12.tint_symbol_4[0u].x, r8.x, r4.w);
      let v_150 = dot(r7.xyz, r0.xyz);
      r7.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
      r7.x = log2(r7.x);
      r7.x = (r6.y * r7.x);
      r7.x = exp2(r7.x);
      r7.x = (r7.x * r8.x);
      r5.w = (r5.w * r7.w);
      r5.w = (r5.w * r7.x);
      r3.w = (r3.w * r5.w);
      r3.w = (r1.z * r3.w);
      let v_151 = fma(r3.www, cb3_3.tint_symbol_2[21u].xyz, r6.xzw);
      r6 = vec4<f32>(v_151.x, r6.y, v_151.yz);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_152 = (v_5.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r7 = vec4<f32>(v_152.xyz, r7.w);
      let v_153 = (v3.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r8 = vec4<f32>(v_153.xyz, r8.w);
      r3.w = dot(r8.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r3.w = (r3.w * cb3_3.tint_symbol_2[22u].w);
      let v_154 = fma(cb3_3.tint_symbol_2[14u].xyz, r3.www, cb3_3.tint_symbol_2[6u].xyz);
      r8 = vec4<f32>(v_154.xyz, r8.w);
      let v_155 = (r8.xyz + v_5.xyz);
      r8 = vec4<f32>(v_155.xyz, r8.w);
      let v_156 = bitcast<vec3<u32>>(r2.www);
      let v_157 = r7.xyz;
      let v_158 = select(r8.xyz, v_157, (v_156 != vec3<u32>()));
      r7 = vec4<f32>(v_158.xyz, r7.w);
      r2.w = dot(r7.xyz, r7.xyz);
      let v_159 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
      r7 = vec4<f32>(v_159.xyz, r7.w);
      r3.w = dot(r7.xyz, r7.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_160 = (r3.www * r7.xyz);
      r7 = vec4<f32>(v_160.xyz, r7.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r3.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r3.w = fma(r3.w, r2.w, cb3_3.tint_symbol_2[14u].w);
      r2.w = (r2.w / r3.w);
      let v_161 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r3.w = dot(r7.xyz, v_161.xyz);
      r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_162 = dot(r7.xyz, r0.xyz);
      r5.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
      let v_163 = fma(r2.xyz, r1.yyy, r7.xyz);
      r2 = vec4<f32>(v_163.xyz, r2.w);
      r1.y = dot(r2.xyz, r2.xyz);
      r1.y = inverseSqrt(r1.y);
      let v_164 = (r1.yyy * r2.xyz);
      r2 = vec4<f32>(v_164.xyz, r2.w);
      let v_165 = dot(r2.xyz, r3.xyz);
      r1.y = clamp(vec4<f32>(v_165, v_165, v_165, v_165).y, 0.0f, 1.0f);
      r1.y = ((-(r1.yyyy)).y + 1.0f);
      r3.x = (r1.y * r1.y);
      r3.x = (r3.x * r3.x);
      r1.y = (r1.y * r3.x);
      r1.y = fma(cb12_12.tint_symbol_4[0u].x, r1.y, r4.w);
      let v_166 = dot(r2.xyz, r0.xyz);
      r0.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
      r0.x = log2(r0.x);
      r0.x = (r0.x * r6.y);
      r0.x = exp2(r0.x);
      r0.x = (r0.x * r1.y);
      r0.y = (r3.w * r5.w);
      r0.x = (r0.y * r0.x);
      r0.x = (r2.w * r0.x);
      r0.x = (r1.z * r0.x);
      let v_167 = fma(r0.xxx, cb3_3.tint_symbol_2[22u].xyz, r6.xzw);
      r6 = vec4<f32>(v_167.x, r6.y, v_167.yz);
    }
  }
  r0.x = (r0.w * r0.w);
  let v_168 = (r6.xzw * r0.xxx);
  r0 = vec4<f32>(v_168.xyz, r0.w);
  let v_169 = fma(r4.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_169.xyz, r0.w);
  o0.w = (r1.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.x = sqrt(r0.w);
    let v_170 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_170.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r5.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_171 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_171 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_172 = (r0.www * r5.xyz);
    r2 = vec4<f32>(v_172.xyz, r2.w);
    let v_173 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_174 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_175 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_175.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_176 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_176.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_177 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_177.xyz, r2.w);
    let v_178 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_178.xyz, r2.w);
    let v_179 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_179.xyz, r3.w);
    let v_180 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_180.xyz, r2.w);
    let v_181 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_182 = (r2.xyz + v_181.xyz);
    r2 = vec4<f32>(v_182.xyz, r2.w);
    let v_183 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_183.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_184 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_184.xyz, r3.w);
    let v_185 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_185.xy, r1.z, v_185.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_186 = (v4.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_186.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_187 = -(r0.xyxz);
    let v_188 = fma(r1.xyw, r0.www, v_187.xyw);
    r1 = vec4<f32>(v_188.xy, r1.z, v_188.z);
    let v_189 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_189.xyz, r1.w);
  } else {
    r0.w = dot(r5.xyz, r5.xyz);
    r1.w = sqrt(r0.w);
    let v_190 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_190.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r5.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_191 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_191 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_192 = (r0.www * r5.xyz);
    r3 = vec4<f32>(v_192.xyz, r3.w);
    let v_193 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_194 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_194, v_194, v_194, v_194).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_195 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_195.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_196 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_196.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_197 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_197.xyz, r3.w);
    let v_198 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_198.xyz, r3.w);
    let v_199 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_199.xyz, r4.w);
    let v_200 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_200.xyz, r3.w);
    let v_201 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_202 = (r3.xyz + v_201.xyz);
    r3 = vec4<f32>(v_202.xyz, r3.w);
    let v_203 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_203.x, r2.y, v_203.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_204 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_204.xyz, r3.w);
    let v_205 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_205.x, r2.y, v_205.yz);
    let v_206 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_206.x, r2.y, v_206.yz);
    let v_207 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_207.xyz, r1.w);
  }
  let v_208 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_208.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @builtin(position) v_209 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v_209);
  return o0;
}
