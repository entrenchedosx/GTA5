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

var<private> r25 : vec4<f32>;

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

struct cb6_struct {
  tint_symbol_6 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v9 : vec4<f32>;

var<private> v10 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v9 = v_2;
  x1[0u].x = v10[0u];
  x1[0u].y = v10[1u];
  x1[0u].z = v10[2u];
  x1[0u].w = v10[3u];
  r0 = textureSample(t4, s4, v2.zwzz.xy);
  r0.x = dot(v1, r0);
  r0.z = (r0.x * v0.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb10_10.tint_symbol_6[5u].z < r0.z)));
  let v_3 = (v2.xy * cb10_10.tint_symbol_6[4u].zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = textureSample(t5, s5, r1.xyxx.xy);
  if ((bitcast<u32>(r0.z) != 0u)) {
    let v_4 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(r0.xy, v_4.xy);
    let v_5 = fma(r0.zw, cb10_10.tint_symbol_6[5u].yy, v3.xyz.xy);
    r1 = vec4<f32>(v_5.xy, r1.zw);
    r1.z = v3.z;
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = inverseSqrt(r0.z);
    let v_6 = (r0.zzz * r1.xyz);
    r1 = vec4<f32>(v_6.xyz, r1.w);
  } else {
    r1 = vec4<f32>(v3.xyz.xyz, r1.w);
  }
  r2 = textureSample(t0, s0, v2.xyxx.xy);
  r3 = textureSample(t2, s2, v2.xyxx.xy);
  let v_7 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r1.w = dot(r0.zw, r0.zw);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r3.x = max(cb12_12.tint_symbol_4[1u].w, 0.00100000004749745131f);
  let v_8 = (r0.zw * r3.xx);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = (r0.www * v5.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r0.zzz, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r1.www, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_12 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_12.xy, r1.z, v_12.z);
  r3 = textureSample(t3, s3, v2.xyxx.xy);
  let v_13 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  r0.w = dot(r3.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r3.y = (r0.w * cb12_12.tint_symbol_4[0u].z);
  r3.x = (r3.w * cb12_12.tint_symbol_4[0u].y);
  r2 = clamp(fma(r0.xxxx, v0, r2), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r0.xxx, cb12_12.tint_symbol_4[1u].xyz);
  let v_14 = max(r0.yx, r3.yx);
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = -(v7.xyz.xyzx);
  let v_17 = (v_16.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = fma(r3.xyz, r0.www, v_19.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_21 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_22 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r6 = vec4<f32>(v_22.xy, r6.zw);
  r3.w = (r0.y + -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_23 = -(r3.wwww);
  r0.y = (r0.y + v_23.y);
  r3.w = (r3.w * 558.0f);
  r0.y = fma(r0.y, 3.0f, r3.w);
  r3.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_24 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_25.xyz, r8.w);
  let v_26 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_28.xyz, r9.w);
  let v_29 = &(x0[0u]);
  let v_30 = r9;
  *(v_29) = vec4<f32>(v_30.xyz, (*(v_29)).w);
  let v_31 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_31.xyz, r10.w);
  let v_32 = &(x0[1u]);
  let v_33 = r10;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_34.xyz, r11.w);
  let v_35 = &(x0[2u]);
  let v_36 = r11;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_37.xyz, r8.w);
  let v_38 = &(x0[3u]);
  let v_39 = r8;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_41 = r12;
  r12 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  r4.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_42 = abs(r11.yyyy);
  r5.w = max(v_42.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_43 = (bitcast<u32>(r5.w) != 0u);
  let v_44 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_44, v_43);
  let v_45 = abs(r10.yyyy);
  r6.z = max(v_45.z, abs(r10.xxxx).z);
  r6.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_46 = bitcast<u32>(r6.z);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_46 != 0u));
  let v_47 = abs(r9.yyyy);
  r6.z = max(v_47.z, abs(r9.xxxx).z);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.z < r4.w)));
  let v_48 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_48 != 0u));
  let v_49 = x0[bitcast<i32>(r4.w)];
  r9 = vec4<f32>(v_49.xyz, r9.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.w = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.z = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r9.z);
  let v_50 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_50.xy, r11.z, v_50.z);
  r11.z = dpdx(r4.w);
  let v_51 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_51.xyz, r13.w);
  r13.w = dpdy(r4.w);
  let v_52 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_52.xy);
  let v_53 = -(r8.zwzz);
  let v_54 = fma(r11.xz, r13.xz, v_53.xy);
  r14 = vec4<f32>(v_54.xy, r14.zw);
  r6.w = (1.0f / r14.x);
  r7.w = (r11.z * r13.y);
  let v_55 = -(r7.wwww);
  r14.z = fma(r11.x, r13.w, v_55.z);
  let v_56 = (r6.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_56.xy);
  let v_57 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_57.xy);
  let v_58 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_58.xy);
  r4.w = fma((-(r6.zzzz)).w, r8.z, r4.w);
  r4.w = fma((-(r6.zzzz)).w, r8.w, r4.w);
  let v_59 = bitcast<u32>(r5.w);
  let v_60 = r4.w;
  r12.z = select(r9.z, v_60, (v_59 != 0u));
  r10.z = 0.0f;
  let v_61 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_61.xyz, r9.w);
  let v_62 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_62.xy, r12.zw);
  let v_63 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_63.xyz, r11.w);
  let v_64 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_65.xyz, r13.w);
  let v_66 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_67.xyz, r14.w);
  let v_68 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_69.xyz, r15.w);
  let v_70 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_71.xyz, r16.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_73.xyz, r17.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_75.xyz, r18.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_77.xyz, r19.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_79.xyz, r20.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_81.xyz, r21.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_83.xyz, r22.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_85.xyz, r23.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_87.xyz, r24.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_89.xyz, r25.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_91.xyz, r10.w);
  let v_92 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_92.xy, r9.z);
  let v_93 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_93.xy, r11.z);
  let v_94 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_94.xy, r13.z);
  let v_95 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_95.xy, r14.z);
  let v_96 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_96.xy, r15.z);
  let v_97 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_97.xy, r16.z);
  let v_98 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_98.xy, r17.z);
  let v_99 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_99.xy, r18.z);
  let v_100 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_100.xy, r19.z);
  let v_101 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_101.xy, r20.z);
  let v_102 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_102.xy, r21.z);
  let v_103 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_103.xy, r22.z);
  let v_104 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_104.xy, r23.z);
  let v_105 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_105.xy, r24.z);
  let v_106 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_106.xy, r25.z);
  let v_107 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.w = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_108 = abs(r8.yyyy);
  r5.w = max(v_108.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.w, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.w = clamp(fma(v7.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_5[3u].z);
  let v_109 = -(r3.wwww);
  r3.w = fma(r4.w, v_109.w, r3.w);
  r4.w = dot(r1.xyw, v_19.xyz);
  r5.w = clamp(r4.wwww.w, 0.0f, 1.0f);
  r5.w = ((-(abs(r4.wwww))).w + r5.w);
  let v_110 = abs(r4.wwww);
  r4.w = fma(r2.w, r5.w, v_110.w);
  let v_111 = dot(r4.xyz, r1.xyw);
  r8.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, v_19.xyz);
  r8.y = clamp(vec4<f32>(v_112, v_112, v_112, v_112).y, 0.0f, 1.0f);
  let v_113 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
  r6 = vec4<f32>(r6.xy, v_113.xy);
  let v_114 = (r6.zw * r6.zw);
  r8 = vec4<f32>(v_114.xy, r8.zw);
  let v_115 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_115.xy, r8.zw);
  let v_116 = (r6.zw * r8.xy);
  r6 = vec4<f32>(r6.xy, v_116.xy);
  r5.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_117 = fma(cb12_12.tint_symbol_4[0u].xx, r6.zw, r5.ww);
  r6 = vec4<f32>(r6.xy, v_117.xy);
  let v_118 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_118.xy, r8.zw);
  r7.w = (r8.x * 0.125f);
  r8.x = max(r2.w, r6.z);
  r6.z = (r6.z + -1.0f);
  r6.z = fma(r8.x, r6.z, 1.0f);
  r6.z = fma((-(r0.xxxx)).z, r6.z, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r8.y);
  r5.x = exp2(r5.x);
  r5.x = (r6.w * r5.x);
  r5.x = (r7.w * r5.x);
  r5.x = (r0.x * r5.x);
  r5.x = (r4.w * r5.x);
  r4.w = (r4.w * r6.z);
  let v_119 = fma(r2.xyz, r4.www, r5.xxx);
  r5 = vec4<f32>(v_119.xyz, r5.w);
  let v_120 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_120.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_121 = (v_16.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_121.xyz, r9.w);
    let v_122 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_122.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_123 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_123.xyz, r10.w);
    let v_124 = (r10.xyz + v_16.xyz);
    r10 = vec4<f32>(v_124.xyz, r10.w);
    let v_125 = bitcast<vec3<u32>>(r6.www);
    let v_126 = r9.xyz;
    let v_127 = select(r10.xyz, v_126, (v_125 != vec3<u32>()));
    r9 = vec4<f32>(v_127.xyz, r9.w);
    r6.w = dot(r9.xyz, r9.xyz);
    let v_128 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_128.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_129 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r8.z);
    let v_130 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_130.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    r8.w = dot(r9.xyz, r1.xyw);
    r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
    r9.w = ((-(abs(r8.wwww))).w + r9.w);
    let v_131 = abs(r8.wwww);
    r8.w = fma(r2.w, r9.w, v_131.w);
    r8.z = (r8.z * r8.w);
    r8.w = (r6.w * r8.z);
    let v_132 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_132.xyz, r10.w);
    let v_133 = (r2.xyz * r10.xyz);
    r10 = vec4<f32>(v_133.xyz, r10.w);
    let v_134 = fma(r3.xyz, r0.www, r9.xyz);
    r9 = vec4<f32>(v_134.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_135 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    let v_136 = dot(r9.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_136, v_136, v_136, v_136).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
    let v_137 = dot(r9.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.y * r9.x);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r8.z = (r8.z * r8.w);
    r6.w = (r6.w * r8.z);
    r6.w = (r7.w * r6.w);
    let v_138 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    let v_139 = bitcast<u32>(r8.z);
    let v_140 = r6.w;
    r4.w = select(r4.w, v_140, (v_139 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_141 = (v_16.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_141.xyz, r11.w);
      let v_142 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_142.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_143 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_143.xyz, r12.w);
      let v_144 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_144.xyz, r12.w);
      let v_145 = bitcast<vec3<u32>>(r6.www);
      let v_146 = r11.xyz;
      let v_147 = select(r12.xyz, v_146, (v_145 != vec3<u32>()));
      r11 = vec4<f32>(v_147.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_148 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_148.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_149 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r8.z);
      let v_150 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_150.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r1.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_151 = abs(r8.wwww);
      r8.w = fma(r2.w, r9.w, v_151.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_152 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_152.xyz, r12.w);
      let v_153 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      let v_154 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_154.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_155 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      let v_156 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_157 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_158 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_158.xyz, r9.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_159 = (v_16.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_160.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_161 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_161.xyz, r12.w);
      let v_162 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      let v_163 = bitcast<vec3<u32>>(r6.www);
      let v_164 = r11.xyz;
      let v_165 = select(r12.xyz, v_164, (v_163 != vec3<u32>()));
      r11 = vec4<f32>(v_165.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_166 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_167 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r8.z);
      let v_168 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_168.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r1.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_169 = abs(r8.wwww);
      r8.w = fma(r2.w, r9.w, v_169.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_170 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_170.xyz, r12.w);
      let v_171 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_173 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_175 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_176 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_176.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_177 = (v_16.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_178.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[22u].w);
      let v_179 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_179.xyz, r12.w);
      let v_180 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_180.xyz, r12.w);
      let v_181 = bitcast<vec3<u32>>(r6.www);
      let v_182 = r11.xyz;
      let v_183 = select(r12.xyz, v_182, (v_181 != vec3<u32>()));
      r11 = vec4<f32>(v_183.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_184 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_185 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r8.z);
      let v_186 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.z = dot(r11.xyz, v_186.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r1.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_187 = abs(r8.wwww);
      r8.w = fma(r2.w, r9.w, v_187.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_188 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_188.xyz, r12.w);
      let v_189 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_191 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_192, v_192, v_192, v_192).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_193 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_194 = fma(r6.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_194.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_195 = (v_16.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (v7.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_196.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[23u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[23u].w);
      let v_197 = fma(cb3_3.tint_symbol_2[15u].xyz, r8.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_197.xyz, r12.w);
      let v_198 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_198.xyz, r12.w);
      let v_199 = bitcast<vec3<u32>>(r6.www);
      let v_200 = r11.xyz;
      let v_201 = select(r12.xyz, v_200, (v_199 != vec3<u32>()));
      r11 = vec4<f32>(v_201.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_202 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_202.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_203 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[15u].w);
      r6.w = (r6.w / r8.z);
      let v_204 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r8.z = dot(r11.xyz, v_204.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r1.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_205 = abs(r8.wwww);
      r8.w = fma(r2.w, r9.w, v_205.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_206 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r12 = vec4<f32>(v_206.xyz, r12.w);
      let v_207 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_209 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_209.xyz, r11.w);
      let v_210 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_210, v_210, v_210, v_210).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_211 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_211, v_211, v_211, v_211).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_212 = fma(r6.www, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_212.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_213 = (v_16.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = (v7.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_214.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[24u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[24u].w);
      let v_215 = fma(cb3_3.tint_symbol_2[16u].xyz, r8.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_215.xyz, r12.w);
      let v_216 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_216.xyz, r12.w);
      let v_217 = bitcast<vec3<u32>>(r6.www);
      let v_218 = r11.xyz;
      let v_219 = select(r12.xyz, v_218, (v_217 != vec3<u32>()));
      r11 = vec4<f32>(v_219.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_220 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_220.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_221 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_221.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[16u].w);
      r6.w = (r6.w / r8.z);
      let v_222 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r8.z = dot(r11.xyz, v_222.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r1.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_223 = abs(r8.wwww);
      r8.w = fma(r2.w, r9.w, v_223.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_224 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r12 = vec4<f32>(v_224.xyz, r12.w);
      let v_225 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      let v_226 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_226.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_227 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_227.xyz, r11.w);
      let v_228 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_228, v_228, v_228, v_228).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_229 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_230 = fma(r6.www, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_230.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_231 = (v_16.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = (v7.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_232.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[25u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[25u].w);
      let v_233 = fma(cb3_3.tint_symbol_2[17u].xyz, r8.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_233.xyz, r12.w);
      let v_234 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_234.xyz, r12.w);
      let v_235 = bitcast<vec3<u32>>(r6.www);
      let v_236 = r11.xyz;
      let v_237 = select(r12.xyz, v_236, (v_235 != vec3<u32>()));
      r11 = vec4<f32>(v_237.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_238 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_238.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_239 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_239.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r6.w, cb3_3.tint_symbol_2[17u].w);
      r6.w = (r6.w / r8.z);
      let v_240 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r8.z = dot(r11.xyz, v_240.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r1.xyw);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_241 = abs(r8.wwww);
      r8.w = fma(r2.w, r9.w, v_241.w);
      r8.z = (r8.z * r8.w);
      r8.w = (r6.w * r8.z);
      let v_242 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r12 = vec4<f32>(v_242.xyz, r12.w);
      let v_243 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = fma(r3.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_244.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_245 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      let v_246 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r5.w);
      let v_247 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r8.z = (r8.z * r8.w);
      r6.w = (r6.w * r8.z);
      r6.w = (r7.w * r6.w);
      let v_248 = fma(r6.www, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_248.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_249 = (v_16.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = (v7.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r12 = vec4<f32>(v_250.xyz, r12.w);
      r6.w = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[26u].w);
      let v_251 = fma(cb3_3.tint_symbol_2[18u].xyz, r6.www, cb3_3.tint_symbol_2[10u].xyz);
      r12 = vec4<f32>(v_251.xyz, r12.w);
      let v_252 = (r12.xyz + v_16.xyz);
      r12 = vec4<f32>(v_252.xyz, r12.w);
      let v_253 = bitcast<vec3<u32>>(r4.www);
      let v_254 = r11.xyz;
      let v_255 = select(r12.xyz, v_254, (v_253 != vec3<u32>()));
      r11 = vec4<f32>(v_255.xyz, r11.w);
      r4.w = dot(r11.xyz, r11.xyz);
      let v_256 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_256.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_257 = (r6.www * r11.xyz);
      r11 = vec4<f32>(v_257.xyz, r11.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r6.w);
      let v_258 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r6.w = dot(r11.xyz, v_258.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      r8.z = dot(r11.xyz, r1.xyw);
      r8.w = clamp(r8.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r8.zzzz))).w + r8.w);
      let v_259 = abs(r8.zzzz);
      r2.w = fma(r2.w, r8.w, v_259.w);
      r2.w = (r6.w * r2.w);
      r6.w = (r4.w * r2.w);
      let v_260 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r12 = vec4<f32>(v_260.xyz, r12.w);
      let v_261 = fma(r12.xyz, r2.xyz, r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      let v_262 = fma(r3.xyz, r0.www, r11.xyz);
      r3 = vec4<f32>(v_262.xyz, r3.w);
      r0.w = dot(r3.xyz, r3.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_263 = (r0.www * r3.xyz);
      r3 = vec4<f32>(v_263.xyz, r3.w);
      let v_264 = dot(r3.xyz, r4.xyz);
      r0.w = clamp(vec4<f32>(v_264, v_264, v_264, v_264).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r6.w = (r0.w * r0.w);
      r6.w = (r6.w * r6.w);
      r0.w = (r0.w * r6.w);
      r0.w = fma(cb12_12.tint_symbol_4[0u].x, r0.w, r5.w);
      let v_265 = dot(r3.xyz, r1.xyw);
      r3.x = clamp(vec4<f32>(v_265, v_265, v_265, v_265).x, 0.0f, 1.0f);
      r3.x = log2(r3.x);
      r3.x = (r3.x * r8.y);
      r3.x = exp2(r3.x);
      r0.w = (r0.w * r3.x);
      r0.w = (r2.w * r0.w);
      r0.w = (r4.w * r0.w);
      r0.w = (r7.w * r0.w);
      let v_266 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_266.xyz, r9.w);
    }
  }
  r0.w = (r6.z * r6.z);
  r0.x = (r0.x * r0.x);
  let v_267 = (r9.xyz * r0.xxx);
  r3 = vec4<f32>(v_267.xyz, r3.w);
  let v_268 = fma(r0.www, r10.xyz, r3.xyz);
  r3 = vec4<f32>(v_268.xyz, r3.w);
  let v_269 = fma(r5.xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_269.xyz, r3.w);
  r0.x = fma(r1.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_270 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_270.xyz, r5.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_271 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(r8.x, v_271.xyz);
  let v_272 = (r8.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(r8.x, v_272.xyz);
  let v_273 = fma(r5.xyz, r0.zzz, r8.yzw);
  r5 = vec4<f32>(v_273.xyz, r5.w);
  let v_274 = (r6.yyy * r5.xyz);
  r5 = vec4<f32>(v_274.xyz, r5.w);
  let v_275 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_275.x, r0.y, v_275.yz);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_276 = dot(r9.xyz, r1.xyw);
  r1.z = clamp(vec4<f32>(v_276, v_276, v_276, v_276).z, 0.0f, 1.0f);
  let v_277 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r0.xzw);
  r0 = vec4<f32>(v_277.x, r0.y, v_277.yz);
  let v_278 = fma(r0.xzw, r6.xxx, r5.xyz);
  r0 = vec4<f32>(v_278.x, r0.y, v_278.yz);
  let v_279 = (r6.zzz * r0.xzw);
  r0 = vec4<f32>(v_279.x, r0.y, v_279.yz);
  let v_280 = fma(r0.xzw, r2.xyz, r3.xyz);
  r0 = vec4<f32>(v_280.x, r0.y, v_280.yz);
  r1.z = ((-(r6.zzzz)).z + 1.0f);
  r2.x = dot((-(r4.xyzx)).xyz, r1.xyw);
  r2.x = (r2.x + r2.x);
  let v_281 = -(r2.xxxx);
  let v_282 = -(r4.xyxz);
  let v_283 = fma(r1.xyw, v_281.xyw, v_282.xyw);
  r1 = vec4<f32>(v_283.xy, r1.z, v_283.z);
  let v_284 = clamp(((r0.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_284.xy, r2.zw);
  r0.y = ((-(r2.xxxx)).y + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r0.y * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.x)));
  r2.w = fma(r0.y, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r0.y = (r0.y * r0.y);
  r0.y = fma(r0.y, 5.0f, r2.x);
  let v_285 = bitcast<u32>(r2.z);
  let v_286 = r2.w;
  r0.y = select(r0.y, v_286, (v_285 != 0u));
  let v_287 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_287.x, r2.y, v_287.yz);
  r1.x = (abs(r1.wwww).x + 1.0f);
  let v_288 = (r2.xzw / r1.xxx);
  r2 = vec4<f32>(v_288.x, r2.y, v_288.yz);
  let v_289 = ((-(r2.xxzw)).xzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_289.x, r2.y, v_289.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_290 = bitcast<vec2<u32>>(r1.xx);
  let v_291 = r2.xz;
  let v_292 = select(r2.wz, v_291, (v_290 != vec2<u32>()));
  r1 = vec4<f32>(v_292.xy, r1.zw);
  let v_293 = r0.y;
  r3 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_293);
  r0.y = max(r6.y, r6.x);
  let v_294 = (r0.yyy * r3.xyz);
  r1 = vec4<f32>(v_294.xy, r1.z, v_294.z);
  let v_295 = (r2.yyy * r1.xyw);
  r2 = vec4<f32>(v_295.xyz, r2.w);
  let v_296 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_296.xyz, r2.w);
  let v_297 = fma(r1.xyw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_297.xy, r1.z, v_297.z);
  let v_298 = fma(r1.xyw, r1.zzz, r0.xzw);
  r0 = vec4<f32>(v_298.xyz, r0.w);
  r0.w = (r8.x * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_299 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_299.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_300 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_300 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_301 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_301.xyz, r2.w);
    let v_302 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_302, v_302, v_302, v_302).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_303 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_303, v_303, v_303, v_303).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_304 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_304.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_305 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_305.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_306 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_306.xyz);
    let v_307 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_307.xyz);
    let v_308 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_308.xyz, r3.w);
    let v_309 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_309.xyz, r2.w);
    let v_310 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_311 = (r2.xyz + v_310.xyz);
    r2 = vec4<f32>(v_311.xyz, r2.w);
    let v_312 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_312.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_313 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_313.xyz, r3.w);
    let v_314 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_314.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_315 = (v9.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_315.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_316 = -(r0.xyzx);
    let v_317 = fma(r1.xyz, r2.xxx, v_316.xyz);
    r1 = vec4<f32>(v_317.xyz, r1.w);
    let v_318 = fma(r1.www, r1.xyz, r0.xyz);
    r1 = vec4<f32>(v_318.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_319 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_319.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_320 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_320 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_321 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_321.xyz, r3.w);
    let v_322 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_322, v_322, v_322, v_322).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_323 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_323, v_323, v_323, v_323).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_324 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_324.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_325 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_325.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_326 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_326.xyz, r3.w);
    let v_327 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_327.xyz, r3.w);
    let v_328 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_328.xyz, r4.w);
    let v_329 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_329.xyz, r3.w);
    let v_330 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_331 = (r3.xyz + v_330.xyz);
    r3 = vec4<f32>(v_331.xyz, r3.w);
    let v_332 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_332.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_333 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_333.xyz, r4.w);
    let v_334 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_334.xy, r2.z, v_334.z);
    let v_335 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_335.xy, r2.z, v_335.z);
    let v_336 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_336.xyz, r1.w);
  }
  o0.w = (r0.w * v8.x);
  let v_337 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_337.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @builtin(position) v_338 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v7, v8, v_338);
  return o0;
}
