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

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_3 = (v1.xy * cb11_11.tint_symbol_5[0u].zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = fma(r1.zw, vec2<f32>(0.5f), r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1.z = ((-(r1.xxxx)).z * cb11_11.tint_symbol_5[0u].x);
  r1.z = fma(r1.z, r0.w, 1.0f);
  let v_9 = (r1.xy * cb11_11.tint_symbol_5[0u].yy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r2 = (r0 * r1.zzzz);
  r3 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_10 = fma(r1.xy, r0.ww, r3.xy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb12_12.tint_symbol_4[4u].x, 0.00100000004749745131f);
  let v_12 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = (r1.yyy * v5.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(r1.xxx, v4.xyz, r3.xyz);
  r1 = vec4<f32>(v_14.xy, r1.z, v_14.z);
  let v_15 = fma(r0.www, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_15.xy, r1.z, v_15.z);
  r0.w = dot(r1.xyw, r1.xyw);
  r0.w = inverseSqrt(r0.w);
  let v_16 = (r0.www * r1.xyw);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r1.x = dot(r0.xyz, cb12_12.tint_symbol_4[2u].xyz);
  r0.x = dot(r0.xyz, cb12_12.tint_symbol_4[3u].xyz);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r0.z = dot(cb12_12.tint_symbol_4[2u].ww, r1.xx);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = (r1.x + r1.x);
  r1.y = ((-(cb12_12.tint_symbol_4[2u].wwww)).y + 1.0f);
  r1.x = fma((-(r1.xxxx)).x, r1.y, 1.0f);
  let v_17 = bitcast<u32>(r0.y);
  let v_18 = r0.z;
  r1.x = select(r1.x, v_18, (v_17 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.5f)));
  r0.z = dot(cb12_12.tint_symbol_4[3u].ww, r0.xx);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x + r0.x);
  r3.w = ((-(cb12_12.tint_symbol_4[3u].wwww)).w + 1.0f);
  r0.x = fma((-(r0.xxxx)).x, r3.w, 1.0f);
  let v_19 = bitcast<u32>(r0.y);
  let v_20 = r0.z;
  r1.y = select(r0.x, v_20, (v_19 != 0u));
  r0.x = dot(r1.xy, cb12_12.tint_symbol_4[1u].xy);
  r0.x = (r0.x * cb12_12.tint_symbol_4[0u].w);
  r0.x = clamp(((r1.zzzz * r0.xxxx)).x, 0.0f, 1.0f);
  r0.y = (r2.w * v0.w);
  let v_21 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = -(v6.xyzx);
  let v_24 = (v_23.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_25 = (r0.zzz * r4.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_27 = fma(r4.xyz, r0.zzz, v_26.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_28 = (r1.zzz * r6.xyz);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  r1.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_30.xyz, r8.w);
  let v_31 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_33.xyz, r9.w);
  let v_34 = &(x0[0u]);
  let v_35 = r9;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_36.xyz, r10.w);
  let v_37 = &(x0[1u]);
  let v_38 = r10;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_39.xyz, r11.w);
  let v_40 = &(x0[2u]);
  let v_41 = r11;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = &(x0[3u]);
  let v_44 = r8;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r12;
  r12 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r2.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_47 = abs(r11.yyyy);
  r3.w = max(v_47.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_48 = (bitcast<u32>(r3.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_49, v_48);
  let v_50 = abs(r10.yyyy);
  r4.w = max(v_50.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_51 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_51 != 0u));
  let v_52 = abs(r9.yyyy);
  r4.w = max(v_52.w, abs(r9.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_53 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r2.w)];
  r9 = vec4<f32>(v_54.xyz, r9.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.w = (r2.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r2.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r9.z);
  let v_55 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_55.xy, r11.z, v_55.z);
  r11.z = dpdx(r2.w);
  let v_56 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_56.xyz, r13.w);
  r13.w = dpdy(r2.w);
  let v_57 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_57.xy);
  let v_58 = -(r8.zwzz);
  let v_59 = fma(r11.xz, r13.xz, v_58.xy);
  r14 = vec4<f32>(v_59.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_60 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_60.z);
  let v_61 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_61.xy);
  let v_62 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_62.xy);
  let v_63 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_63.xy);
  r2.w = fma((-(r4.wwww)).w, r8.z, r2.w);
  r2.w = fma((-(r4.wwww)).w, r8.w, r2.w);
  let v_64 = bitcast<u32>(r3.w);
  let v_65 = r2.w;
  r12.z = select(r9.z, v_65, (v_64 != 0u));
  r10.z = 0.0f;
  let v_66 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_66.xyz, r9.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_67.xy, r12.zw);
  let v_68 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_68.xyz, r11.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_76.xyz, r16.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_80.xyz, r18.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_88.xyz, r22.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_90.xyz, r23.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_92.xyz, r24.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_93.xy, r12.zw);
  let v_94 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_94.xyz, r25.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_95.xy, r12.zw);
  let v_96 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_96.xyz, r10.w);
  let v_97 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_97.xy, r9.z);
  let v_98 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_98.xy, r11.z);
  let v_99 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_99.xy, r13.z);
  let v_100 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_100.xy, r14.z);
  let v_101 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_102.xy, r16.z);
  let v_103 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_103.xy, r17.z);
  let v_104 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_104.xy, r18.z);
  let v_105 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_106.xy, r20.z);
  let v_107 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_107.xy, r21.z);
  let v_108 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_108.xy, r22.z);
  let v_109 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_109.xy, r23.z);
  let v_110 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_110.xy, r24.z);
  let v_111 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_111.xy, r25.z);
  let v_112 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_112.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r2.w = dot(r9, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_113 = abs(r8.yyyy);
  r3.w = max(v_113.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r3.w * r1.z);
  r1.z = fma(r2.w, 0.0625f, r1.z);
  let v_114 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_114.xyz, r1.w);
  r1.z = min(r1.z, 1.0f);
  r2.w = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_6[3u].z);
  let v_115 = -(r1.zzzz);
  r1.z = fma(r2.w, v_115.z, r1.z);
  let v_116 = dot(r3.xyz, v_26.xyz);
  r2.w = clamp(vec4<f32>(v_116, v_116, v_116, v_116).w, 0.0f, 1.0f);
  let v_117 = dot(r5.xyz, r3.xyz);
  r8.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
  let v_118 = dot(r6.xyz, v_26.xyz);
  r8.y = clamp(vec4<f32>(v_118, v_118, v_118, v_118).y, 0.0f, 1.0f);
  let v_119 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_119.xy, r6.zw);
  let v_120 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_120.xy);
  let v_121 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_121.xy);
  let v_122 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_122.xy, r6.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_123 = fma(cb12_12.tint_symbol_4[0u].yy, r6.xy, r3.ww);
  r6 = vec4<f32>(v_123.xy, r6.zw);
  r4.w = (r0.x * r6.y);
  r5.w = fma((-(r0.xxxx)).w, r6.x, 1.0f);
  r4.w = (r2.w * r4.w);
  r4.w = (r4.w * 0.25f);
  r2.w = (r2.w * r5.w);
  let v_124 = fma(r2.xyz, r2.www, r4.www);
  r6 = vec4<f32>(v_124.xyz, r6.w);
  let v_125 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_125.xyz, r6.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_126 = (v_23.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_126.xyz, r8.w);
    let v_127 = (v6.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_128 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    let v_129 = (r9.xyz + v_23.xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    let v_130 = bitcast<vec3<u32>>(r4.www);
    let v_131 = r8.xyz;
    let v_132 = select(r9.xyz, v_131, (v_130 != vec3<u32>()));
    r8 = vec4<f32>(v_132.xyz, r8.w);
    r4.w = dot(r8.xyz, r8.xyz);
    let v_133 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_133.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_134 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_134.xyz, r8.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[11u].w);
    r4.w = (r4.w / r6.w);
    let v_135 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_135.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_136 = dot(r8.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_136, v_136, v_136, v_136).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r4.w * r6.w);
    let v_137 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = (r2.xyz * r9.xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = fma(r4.xyz, r0.zzz, r8.xyz);
    r8 = vec4<f32>(v_139.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_140 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_140.xyz, r8.w);
    let v_141 = dot(r8.xyz, r5.xyz);
    r7.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.x = (r7.w * r7.w);
    r8.x = (r8.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
    r6.w = (r6.w * r7.w);
    r4.w = (r4.w * r6.w);
    r4.w = (r4.w * 0.25f);
    let v_142 = (r4.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_142.xyz, r8.w);
  }
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    let v_143 = bitcast<u32>(r6.w);
    let v_144 = r4.w;
    r2.w = select(r2.w, v_144, (v_143 != 0u));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_145 = (v_23.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      let v_146 = (v6.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_147 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      let v_148 = (r11.xyz + v_23.xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      let v_149 = bitcast<vec3<u32>>(r4.www);
      let v_150 = r10.xyz;
      let v_151 = select(r11.xyz, v_150, (v_149 != vec3<u32>()));
      r10 = vec4<f32>(v_151.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_152 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_153 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[12u].w);
      r4.w = (r4.w / r6.w);
      let v_154 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_154.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_155 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_156 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = fma(r11.xyz, r2.xyz, r9.xyz);
      r9 = vec4<f32>(v_157.xyz, r9.w);
      let v_158 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_159 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      let v_160 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_160, v_160, v_160, v_160).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_161 = fma(r4.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_161.xyz, r8.w);
    }
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_162 = (v_23.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = (v6.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_164 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = (r11.xyz + v_23.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = bitcast<vec3<u32>>(r4.www);
      let v_167 = r10.xyz;
      let v_168 = select(r11.xyz, v_167, (v_166 != vec3<u32>()));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_169 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_170 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[13u].w);
      r4.w = (r4.w / r6.w);
      let v_171 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_171.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_172 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_173 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      let v_174 = fma(r11.xyz, r2.xyz, r9.xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
      let v_175 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_176 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_178 = fma(r4.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_178.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_179 = (v_23.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = (v6.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r4.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (r11.xyz + v_23.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = bitcast<vec3<u32>>(r2.www);
      let v_184 = r10.xyz;
      let v_185 = select(r11.xyz, v_184, (v_183 != vec3<u32>()));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r2.w = dot(r10.xyz, r10.xyz);
      let v_186 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      r4.w = inverseSqrt(r4.w);
      let v_187 = (r4.www * r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r4.w = fma(r4.w, r2.w, cb3_3.tint_symbol_2[14u].w);
      r2.w = (r2.w / r4.w);
      let v_188 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r4.w = dot(r10.xyz, v_188.xyz);
      r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_189 = dot(r10.xyz, r3.xyz);
      r6.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r4.w = (r4.w * r6.w);
      r6.w = (r2.w * r4.w);
      let v_190 = (r6.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = fma(r11.xyz, r2.xyz, r9.xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
      let v_192 = fma(r4.xyz, r0.zzz, r10.xyz);
      r4 = vec4<f32>(v_192.xyz, r4.w);
      r0.z = dot(r4.xyz, r4.xyz);
      r0.z = inverseSqrt(r0.z);
      let v_193 = (r0.zzz * r4.xyz);
      r4 = vec4<f32>(v_193.xyz, r4.w);
      let v_194 = dot(r4.xyz, r5.xyz);
      r0.z = clamp(vec4<f32>(v_194, v_194, v_194, v_194).z, 0.0f, 1.0f);
      r0.z = ((-(r0.zzzz)).z + 1.0f);
      r4.x = (r0.z * r0.z);
      r4.x = (r4.x * r4.x);
      r0.z = (r0.z * r4.x);
      r0.z = fma(cb12_12.tint_symbol_4[0u].y, r0.z, r3.w);
      r0.z = (r4.w * r0.z);
      r0.z = (r2.w * r0.z);
      r0.z = (r0.z * 0.25f);
      let v_195 = fma(r0.zzz, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_195.xyz, r8.w);
    }
  }
  r0.z = (r5.w * r5.w);
  r0.x = (r0.x * r0.x);
  let v_196 = (r8.xyz * r0.xxx);
  r4 = vec4<f32>(v_196.xyz, r4.w);
  let v_197 = fma(r0.zzz, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_197.xyz, r4.w);
  let v_198 = fma(r6.xyz, r1.zzz, r4.xyz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  r0.x = fma(r1.w, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_199 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_199.xyz, r6.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_200.xyz, r8.w);
  let v_201 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_201.xyz, r8.w);
  let v_202 = fma(r6.xyz, r0.zzz, r8.xyz);
  r6 = vec4<f32>(v_202.xyz, r6.w);
  let v_203 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_203.xyz, r6.w);
  let v_204 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_204.x, r0.y, v_204.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_205 = dot(r8.xyz, r3.xyz);
  r1.z = clamp(vec4<f32>(v_205, v_205, v_205, v_205).z, 0.0f, 1.0f);
  let v_206 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.zzz, r0.xzw);
  r0 = vec4<f32>(v_206.x, r0.y, v_206.yz);
  let v_207 = fma(r0.xzw, r1.xxx, r6.xyz);
  r0 = vec4<f32>(v_207.x, r0.y, v_207.yz);
  let v_208 = (r5.www * r0.xzw);
  r0 = vec4<f32>(v_208.x, r0.y, v_208.yz);
  let v_209 = fma(r0.xzw, r2.xyz, r4.xyz);
  r0 = vec4<f32>(v_209.x, r0.y, v_209.yz);
  r1.z = ((-(r5.wwww)).z + 1.0f);
  r1.w = dot((-(r5.xyzx)).xyz, r3.xyz);
  r1.w = (r1.w + r1.w);
  let v_210 = -(r1.wwww);
  let v_211 = -(r5.xyzx);
  let v_212 = fma(r3.xyz, v_210.xyz, v_211.xyz);
  r2 = vec4<f32>(v_212.xyz, r2.w);
  r1.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r1.w = max(r1.w, cb5_5.tint_symbol_3[6u].z);
  let v_213 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_213.xy, r2.z, v_213.z);
  r3.x = (abs(r2.zzzz).x + 1.0f);
  let v_214 = (r2.xyw / r3.xxx);
  r2 = vec4<f32>(v_214.xy, r2.z, v_214.z);
  let v_215 = ((-(r2.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_215.xy, r2.z, v_215.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_216 = bitcast<vec2<u32>>(r2.zz);
  let v_217 = r2.xy;
  let v_218 = select(r2.wy, v_217, (v_216 != vec2<u32>()));
  r2 = vec4<f32>(v_218.xy, r2.zw);
  let v_219 = r1.w;
  r2 = textureSampleLevel(t1, s1, r2.xyxx.xy, v_219);
  r1.x = max(r1.y, r1.x);
  let v_220 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_220.xy, r1.z, v_220.z);
  let v_221 = (r1.zzz * r1.xyw);
  r1 = vec4<f32>(v_221.xyz, r1.w);
  let v_222 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r0.xzw);
  r0 = vec4<f32>(v_222.x, r0.y, v_222.yz);
  o0.w = (r0.y * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.y = dot(r7.xyz, r7.xyz);
    r1.x = sqrt(r0.y);
    let v_223 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_223.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r7.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_224 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_224 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.y = inverseSqrt(r0.y);
    let v_225 = (r0.yyy * r7.xyz);
    r2 = vec4<f32>(v_225.xyz, r2.w);
    let v_226 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.y = clamp(vec4<f32>(v_226, v_226, v_226, v_226).y, 0.0f, 1.0f);
    r0.y = log2(r0.y);
    r0.y = (r0.y * cb3_3.tint_symbol_2[54u].w);
    r0.y = exp2(r0.y);
    let v_227 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_228 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_228.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_229 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_229.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_230 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_230.xyz, r2.w);
    let v_231 = fma(r0.yyy, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_231.xyz, r2.w);
    let v_232 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_232.xyz, r3.w);
    let v_233 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_233.xyz, r2.w);
    let v_234 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_235 = (r2.xyz + v_234.xyz);
    r2 = vec4<f32>(v_235.xyz, r2.w);
    let v_236 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_236.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_237 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_237.xyz, r3.w);
    let v_238 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_238.xy, r1.z, v_238.z);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.y) != 0u)) {
      let v_239 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_239.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.y = (r2.x + -1.0f);
      r0.y = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.yyyy, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    } else {
      r0.y = 1.0f;
    }
    let v_240 = -(r0.xzxw);
    let v_241 = fma(r1.xyw, r0.yyy, v_240.xyw);
    r1 = vec4<f32>(v_241.xy, r1.z, v_241.z);
    let v_242 = fma(r1.zzz, r1.xyw, r0.xzw);
    r1 = vec4<f32>(v_242.xyz, r1.w);
  } else {
    r0.y = dot(r7.xyz, r7.xyz);
    r1.w = sqrt(r0.y);
    let v_243 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_243.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r7.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_244 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_244 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.y = inverseSqrt(r0.y);
    let v_245 = (r0.yyy * r7.xyz);
    r3 = vec4<f32>(v_245.xyz, r3.w);
    let v_246 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.y = clamp(vec4<f32>(v_246, v_246, v_246, v_246).y, 0.0f, 1.0f);
    r0.y = log2(r0.y);
    r0.y = (r0.y * cb3_3.tint_symbol_2[54u].w);
    r0.y = exp2(r0.y);
    let v_247 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_247, v_247, v_247, v_247).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_248 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_248.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_249 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_249.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_250 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_250.xyz, r3.w);
    let v_251 = fma(r0.yyy, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_251.xyz, r3.w);
    let v_252 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_252.xyz, r4.w);
    let v_253 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_253.xyz, r3.w);
    let v_254 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_255 = (r3.xyz + v_254.xyz);
    r3 = vec4<f32>(v_255.xyz, r3.w);
    let v_256 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_256.x, r2.y, v_256.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_257 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_257.xyz, r3.w);
    let v_258 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_258.x, r2.y, v_258.yz);
    let v_259 = ((-(r0.xxzw)).xzw + r2.xzw);
    r2 = vec4<f32>(v_259.x, r2.y, v_259.yz);
    let v_260 = fma(r2.yyy, r2.xzw, r0.xzw);
    r1 = vec4<f32>(v_260.xyz, r1.w);
  }
  let v_261 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_261.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_262 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_262);
  return o0;
}
