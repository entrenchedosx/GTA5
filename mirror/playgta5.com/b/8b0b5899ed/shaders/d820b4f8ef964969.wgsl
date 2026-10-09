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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : vec4<f32>;

var<private> v9 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v8 = v_2;
  x1[0u].x = v9[0u];
  x1[0u].y = v9[1u];
  x1[0u].z = v9[2u];
  x1[0u].w = v9[3u];
  r0 = textureSample(t0, s0, v2.xyz.xyxx.xy);
  let v_3 = (v2.xyz.xy * cb11_11.tint_symbol_5[0u].zw);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = (r1.xy * vec2<f32>(3.1700000762939453125f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r2 = textureSample(t3, s3, r1.xyxx.xy);
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
  r3 = textureSample(t5, s5, v2.xyz.xyxx.xy);
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
  let v_13 = (r1.yyy * v6.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(r1.xxx, v5.xyz, r3.xyz);
  r1 = vec4<f32>(v_14.xy, r1.z, v_14.z);
  let v_15 = fma(r0.www, v3.xyz, r1.xyw);
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
  let v_21 = (r2.xyz * v1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.y = (r2.w * v0.w);
  let v_22 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = -(v7.xyzx);
  let v_25 = (v_24.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_26 = (r0.zzz * r4.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_28 = fma(r4.xyz, r0.zzz, v_27.xyz);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  r2.z = dot(r6.xyz, r6.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_29 = (r2.zzz * r6.xyz);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  r2.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_30 = (v7.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = &(x0[0u]);
  let v_36 = r9;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_37.xyz, r10.w);
  let v_38 = &(x0[1u]);
  let v_39 = r10;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_40.xyz, r11.w);
  let v_41 = &(x0[2u]);
  let v_42 = r11;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = &(x0[3u]);
  let v_45 = r8;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_47 = r12;
  r12 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  r2.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_48 = abs(r11.yyyy);
  r3.w = max(v_48.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_49 = (bitcast<u32>(r3.w) != 0u);
  let v_50 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_50, v_49);
  let v_51 = abs(r10.yyyy);
  r4.w = max(v_51.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_52 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_52 != 0u));
  let v_53 = abs(r9.yyyy);
  r4.w = max(v_53.w, abs(r9.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r2.w)));
  let v_54 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_54 != 0u));
  let v_55 = x0[bitcast<i32>(r2.w)];
  r9 = vec4<f32>(v_55.xyz, r9.w);
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
  let v_56 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_56.xy, r11.z, v_56.z);
  r11.z = dpdx(r2.w);
  let v_57 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  r13.w = dpdy(r2.w);
  let v_58 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_58.xy);
  let v_59 = -(r8.zwzz);
  let v_60 = fma(r11.xz, r13.xz, v_59.xy);
  r14 = vec4<f32>(v_60.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_61 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_61.z);
  let v_62 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_62.xy);
  let v_63 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_63.xy);
  let v_64 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_64.xy);
  r2.w = fma((-(r4.wwww)).w, r8.z, r2.w);
  r2.w = fma((-(r4.wwww)).w, r8.w, r2.w);
  let v_65 = bitcast<u32>(r3.w);
  let v_66 = r2.w;
  r12.z = select(r9.z, v_66, (v_65 != 0u));
  r10.z = 0.0f;
  let v_67 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_67.xyz, r9.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_69.xyz, r11.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_75.xyz, r15.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_77.xyz, r16.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_79.xyz, r17.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_81.xyz, r18.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_83.xyz, r19.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_85.xyz, r20.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_87.xyz, r21.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_89.xyz, r22.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_91.xyz, r23.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_93.xyz, r24.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_94.xy, r12.zw);
  let v_95 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_95.xyz, r25.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_96.xy, r12.zw);
  let v_97 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_97.xyz, r10.w);
  let v_98 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_98.xy, r9.z);
  let v_99 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_99.xy, r11.z);
  let v_100 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_101.xy, r14.z);
  let v_102 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_102.xy, r15.z);
  let v_103 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_104.xy, r17.z);
  let v_105 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_105.xy, r18.z);
  let v_106 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_106.xy, r19.z);
  let v_107 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_107.xy, r20.z);
  let v_108 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_108.xy, r21.z);
  let v_109 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_109.xy, r22.z);
  let v_110 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_110.xy, r23.z);
  let v_111 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_111.xy, r24.z);
  let v_112 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_112.xy, r25.z);
  let v_113 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_113.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r2.w = dot(r9, vec4<f32>(1.0f));
  r2.z = clamp(fma(r2.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_114 = abs(r8.yyyy);
  r3.w = max(v_114.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r3.w * r2.z);
  r2.z = fma(r2.w, 0.0625f, r2.z);
  let v_115 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_115.xyz, r2.w);
  r2.z = min(r2.z, 1.0f);
  r2.w = clamp(fma(v7.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_6[3u].z);
  let v_116 = -(r2.zzzz);
  r2.z = fma(r2.w, v_116.z, r2.z);
  let v_117 = dot(r3.xyz, v_27.xyz);
  r2.w = clamp(vec4<f32>(v_117, v_117, v_117, v_117).w, 0.0f, 1.0f);
  let v_118 = dot(r5.xyz, r3.xyz);
  r8.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r6.xyz, v_27.xyz);
  r8.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_120.xy, r6.zw);
  let v_121 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_121.xy);
  let v_122 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_122.xy);
  let v_123 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_123.xy, r6.zw);
  r3.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_124 = fma(cb12_12.tint_symbol_4[0u].yy, r6.xy, r3.ww);
  r6 = vec4<f32>(v_124.xy, r6.zw);
  r4.w = (r0.x * r6.y);
  r5.w = fma((-(r0.xxxx)).w, r6.x, 1.0f);
  r4.w = (r2.w * r4.w);
  r4.w = (r4.w * 0.25f);
  r2.w = (r2.w * r5.w);
  let v_125 = fma(r1.xyz, r2.www, r4.www);
  r6 = vec4<f32>(v_125.xyz, r6.w);
  let v_126 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_126.xyz, r6.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_127 = (v_24.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_127.xyz, r8.w);
    let v_128 = (v7.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_128.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_129 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    let v_130 = (r9.xyz + v_24.xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = bitcast<vec3<u32>>(r4.www);
    let v_132 = r8.xyz;
    let v_133 = select(r9.xyz, v_132, (v_131 != vec3<u32>()));
    r8 = vec4<f32>(v_133.xyz, r8.w);
    r4.w = dot(r8.xyz, r8.xyz);
    let v_134 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_134.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_135 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_135.xyz, r8.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[11u].w);
    r4.w = (r4.w / r6.w);
    let v_136 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_136.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_137 = dot(r8.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_137, v_137, v_137, v_137).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r4.w * r6.w);
    let v_138 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = (r1.xyz * r9.xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = fma(r4.xyz, r0.zzz, r8.xyz);
    r8 = vec4<f32>(v_140.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_141 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_141.xyz, r8.w);
    let v_142 = dot(r8.xyz, r5.xyz);
    r7.w = clamp(vec4<f32>(v_142, v_142, v_142, v_142).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r8.x = (r7.w * r7.w);
    r8.x = (r8.x * r8.x);
    r7.w = (r7.w * r8.x);
    r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
    r6.w = (r6.w * r7.w);
    r4.w = (r4.w * r6.w);
    r4.w = (r4.w * 0.25f);
    let v_143 = (r4.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_143.xyz, r8.w);
  }
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    let v_144 = bitcast<u32>(r6.w);
    let v_145 = r4.w;
    r2.w = select(r2.w, v_145, (v_144 != 0u));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_146 = (v_24.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      let v_147 = (v7.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_148 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      let v_149 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      let v_150 = bitcast<vec3<u32>>(r4.www);
      let v_151 = r10.xyz;
      let v_152 = select(r11.xyz, v_151, (v_150 != vec3<u32>()));
      r10 = vec4<f32>(v_152.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_153 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_153.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_154 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[12u].w);
      r4.w = (r4.w / r6.w);
      let v_155 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_155.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_156 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_157 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_158.xyz, r9.w);
      let v_159 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_159.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_160 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_162 = fma(r4.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_162.xyz, r8.w);
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
      let v_163 = (v_24.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = (v7.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_165 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      let v_167 = bitcast<vec3<u32>>(r4.www);
      let v_168 = r10.xyz;
      let v_169 = select(r11.xyz, v_168, (v_167 != vec3<u32>()));
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_170 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_171 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[13u].w);
      r4.w = (r4.w / r6.w);
      let v_172 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_172.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_173 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_174 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_175.xyz, r9.w);
      let v_176 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_177 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_177.xyz, r10.w);
      let v_178 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_178, v_178, v_178, v_178).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_179 = fma(r4.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_179.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_180 = (v_24.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      let v_181 = (v7.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_182 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      let v_184 = bitcast<vec3<u32>>(r4.www);
      let v_185 = r10.xyz;
      let v_186 = select(r11.xyz, v_185, (v_184 != vec3<u32>()));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_187 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_188 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r6.w);
      let v_189 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r10.xyz, v_189.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_190 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_191 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      let v_192 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_192.xyz, r9.w);
      let v_193 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_194 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      let v_195 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_196 = fma(r4.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_196.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_197 = (v_24.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = (v7.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_199 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = bitcast<vec3<u32>>(r4.www);
      let v_202 = r10.xyz;
      let v_203 = select(r11.xyz, v_202, (v_201 != vec3<u32>()));
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_204 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_205 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[15u].w);
      r4.w = (r4.w / r6.w);
      let v_206 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r10.xyz, v_206.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_207 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_208 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_209.xyz, r9.w);
      let v_210 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_211 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_213 = fma(r4.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_213.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_214 = (v_24.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      let v_215 = (v7.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_215.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_216 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      let v_217 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = bitcast<vec3<u32>>(r4.www);
      let v_219 = r10.xyz;
      let v_220 = select(r11.xyz, v_219, (v_218 != vec3<u32>()));
      r10 = vec4<f32>(v_220.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_221 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_222 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[16u].w);
      r4.w = (r4.w / r6.w);
      let v_223 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r10.xyz, v_223.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_224 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_225 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_226.xyz, r9.w);
      let v_227 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_228 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      let v_229 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_230 = fma(r4.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_230.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_231 = (v_24.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_231.xyz, r10.w);
      let v_232 = (v7.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_233 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_233.xyz, r11.w);
      let v_234 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      let v_235 = bitcast<vec3<u32>>(r4.www);
      let v_236 = r10.xyz;
      let v_237 = select(r11.xyz, v_236, (v_235 != vec3<u32>()));
      r10 = vec4<f32>(v_237.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      let v_238 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_238.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_239 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.w, cb3_3.tint_symbol_2[17u].w);
      r4.w = (r4.w / r6.w);
      let v_240 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r10.xyz, v_240.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_241 = dot(r10.xyz, r3.xyz);
      r7.w = clamp(vec4<f32>(v_241, v_241, v_241, v_241).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.w * r6.w);
      let v_242 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_243.xyz, r9.w);
      let v_244 = fma(r4.xyz, r0.zzz, r10.xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_245 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      let v_246 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r8.w = (r7.w * r7.w);
      r8.w = (r8.w * r8.w);
      r7.w = (r7.w * r8.w);
      r7.w = fma(cb12_12.tint_symbol_4[0u].y, r7.w, r3.w);
      r6.w = (r6.w * r7.w);
      r4.w = (r4.w * r6.w);
      r4.w = (r4.w * 0.25f);
      let v_247 = fma(r4.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_247.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_248 = (v_24.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      let v_249 = (v7.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      r4.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r4.w = (r4.w * cb3_3.tint_symbol_2[26u].w);
      let v_250 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      let v_252 = bitcast<vec3<u32>>(r2.www);
      let v_253 = r10.xyz;
      let v_254 = select(r11.xyz, v_253, (v_252 != vec3<u32>()));
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r2.w = dot(r10.xyz, r10.xyz);
      let v_255 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_255.xyz, r10.w);
      r4.w = dot(r10.xyz, r10.xyz);
      r4.w = inverseSqrt(r4.w);
      let v_256 = (r4.www * r10.xyz);
      r10 = vec4<f32>(v_256.xyz, r10.w);
      r2.w = clamp(fma(-(r2.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r4.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r4.w = fma(r4.w, r2.w, cb3_3.tint_symbol_2[18u].w);
      r2.w = (r2.w / r4.w);
      let v_257 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r4.w = dot(r10.xyz, v_257.xyz);
      r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_258 = dot(r10.xyz, r3.xyz);
      r6.w = clamp(vec4<f32>(v_258, v_258, v_258, v_258).w, 0.0f, 1.0f);
      r4.w = (r4.w * r6.w);
      r6.w = (r2.w * r4.w);
      let v_259 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_259.xyz, r11.w);
      let v_260 = fma(r11.xyz, r1.xyz, r9.xyz);
      r9 = vec4<f32>(v_260.xyz, r9.w);
      let v_261 = fma(r4.xyz, r0.zzz, r10.xyz);
      r4 = vec4<f32>(v_261.xyz, r4.w);
      r0.z = dot(r4.xyz, r4.xyz);
      r0.z = inverseSqrt(r0.z);
      let v_262 = (r0.zzz * r4.xyz);
      r4 = vec4<f32>(v_262.xyz, r4.w);
      let v_263 = dot(r4.xyz, r5.xyz);
      r0.z = clamp(vec4<f32>(v_263, v_263, v_263, v_263).z, 0.0f, 1.0f);
      r0.z = ((-(r0.zzzz)).z + 1.0f);
      r4.x = (r0.z * r0.z);
      r4.x = (r4.x * r4.x);
      r0.z = (r0.z * r4.x);
      r0.z = fma(cb12_12.tint_symbol_4[0u].y, r0.z, r3.w);
      r0.z = (r4.w * r0.z);
      r0.z = (r2.w * r0.z);
      r0.z = (r0.z * 0.25f);
      let v_264 = fma(r0.zzz, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_264.xyz, r8.w);
    }
  }
  r0.z = (r5.w * r5.w);
  r0.x = (r0.x * r0.x);
  let v_265 = (r8.xyz * r0.xxx);
  r4 = vec4<f32>(v_265.xyz, r4.w);
  let v_266 = fma(r0.zzz, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_266.xyz, r4.w);
  let v_267 = fma(r6.xyz, r2.zzz, r4.xyz);
  r4 = vec4<f32>(v_267.xyz, r4.w);
  r0.x = fma(r1.w, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_268 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_268.xyz, r6.w);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_269 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_269.xyz, r8.w);
  let v_270 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_270.xyz, r8.w);
  let v_271 = fma(r6.xyz, r0.zzz, r8.xyz);
  r6 = vec4<f32>(v_271.xyz, r6.w);
  let v_272 = (r2.yyy * r6.xyz);
  r6 = vec4<f32>(v_272.xyz, r6.w);
  let v_273 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r0 = vec4<f32>(v_273.x, r0.y, v_273.yz);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_274 = dot(r8.xyz, r3.xyz);
  r1.w = clamp(vec4<f32>(v_274, v_274, v_274, v_274).w, 0.0f, 1.0f);
  let v_275 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r0.xzw);
  r0 = vec4<f32>(v_275.x, r0.y, v_275.yz);
  let v_276 = fma(r0.xzw, r2.xxx, r6.xyz);
  r0 = vec4<f32>(v_276.x, r0.y, v_276.yz);
  let v_277 = (r5.www * r0.xzw);
  r0 = vec4<f32>(v_277.x, r0.y, v_277.yz);
  let v_278 = fma(r0.xzw, r1.xyz, r4.xyz);
  r0 = vec4<f32>(v_278.x, r0.y, v_278.yz);
  r1.x = ((-(r5.wwww)).x + 1.0f);
  r1.y = dot((-(r5.xyzx)).xyz, r3.xyz);
  r1.y = (r1.y + r1.y);
  let v_279 = -(r1.yyyy);
  let v_280 = -(r5.xxyz);
  let v_281 = fma(r3.xyz, v_279.yzw, v_280.yzw);
  r1 = vec4<f32>(r1.x, v_281.xyz);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = max(r2.z, cb5_5.tint_symbol_3[6u].z);
  let v_282 = (r1.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_282.xyz, r3.w);
  r1.y = (abs(r1.wwww).y + 1.0f);
  let v_283 = (r3.xyz / r1.yyy);
  r3 = vec4<f32>(v_283.xyz, r3.w);
  let v_284 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_284.xyz, r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_285 = bitcast<vec2<u32>>(r1.yy);
  let v_286 = r3.xy;
  let v_287 = select(r3.zy, v_286, (v_285 != vec2<u32>()));
  let v_288 = r1;
  r1 = vec4<f32>(v_288.x, v_287.xy, v_288.w);
  let v_289 = r2.z;
  r3 = textureSampleLevel(t1, s1, r1.yzyy.xy, v_289);
  r1.y = max(r2.y, r2.x);
  let v_290 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_290.xyz);
  let v_291 = (r1.xxx * r1.yzw);
  r1 = vec4<f32>(v_291.xyz, r1.w);
  let v_292 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r0.xzw);
  r0 = vec4<f32>(v_292.x, r0.y, v_292.yz);
  r0.y = (r0.y * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r1.x = dot(r7.xyz, r7.xyz);
    r1.y = sqrt(r1.x);
    let v_293 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.z = (r1.y + v_293.z);
    r1.z = max(r1.z, 0.0f);
    r1.y = (r1.z / r1.y);
    r1.y = (r1.y * r7.z);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
    r2.x = (r1.w * -1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.w = (r2.x / r1.w);
    let v_294 = bitcast<u32>(r1.y);
    r1.y = select(1.0f, r1.w, (v_294 != 0u));
    r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
    r1.y = (r1.y * r1.w);
    r1.y = min(r1.y, 1.0f);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
    r1.x = inverseSqrt(r1.x);
    let v_295 = (r1.xxx * r7.xyz);
    r2 = vec4<f32>(v_295.xyz, r2.w);
    let v_296 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.x = clamp(vec4<f32>(v_296, v_296, v_296, v_296).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
    r1.x = exp2(r1.x);
    let v_297 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_297, v_297, v_297, v_297).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
    let v_298 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r1.z + v_298.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
    let v_299 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.z = (r1.z * v_299.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_300 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(r2.x, v_300.xyz);
    let v_301 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(r2.x, v_301.xyz);
    let v_302 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_302.xyz, r3.w);
    let v_303 = fma(r2.xxx, r3.xyz, r2.yzw);
    r2 = vec4<f32>(v_303.xyz, r2.w);
    let v_304 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_305 = (r2.xyz + v_304.xyz);
    r2 = vec4<f32>(v_305.xyz, r2.w);
    let v_306 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_306.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_307 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_307.xyz, r3.w);
    let v_308 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_308.xyz, r1.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_309 = (v8.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_309.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r2.x = (r2.x + -1.0f);
      r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    } else {
      r2.x = 1.0f;
    }
    let v_310 = -(r0.xzwx);
    let v_311 = fma(r1.xyz, r2.xxx, v_310.xyz);
    r1 = vec4<f32>(v_311.xyz, r1.w);
    let v_312 = fma(r1.www, r1.xyz, r0.xzw);
    r1 = vec4<f32>(v_312.xyz, r1.w);
  } else {
    r1.w = dot(r7.xyz, r7.xyz);
    r2.x = sqrt(r1.w);
    let v_313 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.y = (r2.x + v_313.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r2.x * r7.z);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_314 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_314 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_2[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_2[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_315 = (r1.www * r7.xyz);
    r3 = vec4<f32>(v_315.xyz, r3.w);
    let v_316 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r1.w = clamp(vec4<f32>(v_316, v_316, v_316, v_316).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
    r1.w = exp2(r1.w);
    let v_317 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_317, v_317, v_317, v_317).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].y);
    let v_318 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r2.y + v_318.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r2.z = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).z, 0.0f, 1.0f);
    let v_319 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.y = (r2.y * v_319.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    let v_320 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_320.xyz, r3.w);
    let v_321 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_321.xyz, r3.w);
    let v_322 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_322.xyz, r4.w);
    let v_323 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_323.xyz, r3.w);
    let v_324 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_325 = (r3.xyz + v_324.xyz);
    r3 = vec4<f32>(v_325.xyz, r3.w);
    let v_326 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_326.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_327 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_327.xyz, r4.w);
    let v_328 = fma(r2.xxx, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_328.xy, r2.z, v_328.z);
    let v_329 = ((-(r0.xzxw)).xyw + r2.xyw);
    r2 = vec4<f32>(v_329.xy, r2.z, v_329.z);
    let v_330 = fma(r2.zzz, r2.xyw, r0.xzw);
    r1 = vec4<f32>(v_330.xyz, r1.w);
  }
  let v_331 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_331.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v2.z);
  o0.w = r0.y;
  o2 = r0.x;
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_332 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v_332);
  return tint_symbol_9(o0, o1, o2);
}
