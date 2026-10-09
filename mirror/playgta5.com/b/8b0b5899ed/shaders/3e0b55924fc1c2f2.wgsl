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
  tint_symbol_7 : array<vec4<u32>, 3u>,
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
  let v_23 = ((-(v6.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_24 = (r0.zzz * r4.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_26 = fma(r4.xyz, r0.zzz, v_25.xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  r0.z = dot(r6.xyz, r6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_27 = (r0.zzz * r6.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  let v_28 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  r0.z = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_29 = (v6.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_29.xyz, r4.w);
  let v_30 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = &(x0[0u]);
  let v_35 = r8;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_36.xyz, r9.w);
  let v_37 = &(x0[1u]);
  let v_38 = r9;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_39.xyz, r10.w);
  let v_40 = &(x0[2u]);
  let v_41 = r10;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = &(x0[3u]);
  let v_44 = r7;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_46 = r11;
  r11 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r1.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r1.z = (r1.z * 0.5f);
  let v_47 = abs(r10.yyyy);
  r2.w = max(v_47.w, abs(r10.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.z)));
  let v_48 = (bitcast<u32>(r2.w) != 0u);
  let v_49 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_49, v_48);
  let v_50 = abs(r9.yyyy);
  r3.w = max(v_50.w, abs(r9.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.z)));
  let v_51 = bitcast<u32>(r3.w);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_51 != 0u));
  let v_52 = abs(r8.yyyy);
  r3.w = max(v_52.w, abs(r8.xxxx).w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r3.w < r1.z)));
  let v_53 = bitcast<u32>(r1.z);
  r1.z = select(r2.w, 0.0f, (v_53 != 0u));
  let v_54 = x0[bitcast<i32>(r1.z)];
  r8 = vec4<f32>(v_54.xyz, r8.w);
  r1.z = f32(bitcast<i32>(r1.z));
  r2.w = (r1.z + 0.5f);
  r2.w = (r2.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.zzzz)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r1.z = dot(r9, cb6_6.tint_symbol_6[12u]);
  r3.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 0.0f))));
  r1.z = ((-(r1.zzzz)).z + r8.z);
  let v_55 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_55.xy, r10.z, v_55.z);
  r10.z = dpdx(r1.z);
  let v_56 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  r12.w = dpdy(r1.z);
  let v_57 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_57.xy);
  let v_58 = -(r7.zwzz);
  let v_59 = fma(r10.xz, r12.xz, v_58.xy);
  r13 = vec4<f32>(v_59.xy, r13.zw);
  r4.w = (1.0f / r13.x);
  r5.w = (r10.z * r12.y);
  let v_60 = -(r5.wwww);
  r13.z = fma(r10.x, r12.w, v_60.z);
  let v_61 = (r4.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_61.xy);
  let v_62 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_62.xy);
  let v_63 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_63.xy);
  r1.z = fma((-(r3.wwww)).z, r7.z, r1.z);
  r1.z = fma((-(r3.wwww)).z, r7.w, r1.z);
  let v_64 = bitcast<u32>(r2.w);
  let v_65 = r1.z;
  r11.z = select(r8.z, v_65, (v_64 != 0u));
  r9.z = 0.0f;
  let v_66 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_66.xyz, r8.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_68.xyz, r10.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_70.xyz, r12.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_72.xyz, r13.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_74.xyz, r14.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_76.xyz, r15.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_78.xyz, r16.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_80.xyz, r17.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_84.xyz, r19.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_86.xyz, r20.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_88.xyz, r21.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_90.xyz, r22.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_92.xyz, r23.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_94.xyz, r24.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_96.xyz, r9.w);
  let v_97 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_97.xy, r8.z);
  let v_98 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_98.xy, r10.z);
  let v_99 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_99.xy, r12.z);
  let v_100 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_100.xy, r13.z);
  let v_101 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_101.xy, r14.z);
  let v_102 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_102.xy, r15.z);
  let v_103 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_103.xy, r16.z);
  let v_104 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_104.xy, r17.z);
  let v_105 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_105.xy, r18.z);
  let v_106 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_106.xy, r19.z);
  let v_107 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_107.xy, r20.z);
  let v_108 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_108.xy, r21.z);
  let v_109 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_109.xy, r22.z);
  let v_110 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_110.xy, r23.z);
  let v_111 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_111.xy, r24.z);
  let v_112 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_112.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r1.z = dot(r8, vec4<f32>(1.0f));
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).z, 0.0f, 1.0f);
  let v_113 = abs(r7.yyyy);
  r2.w = max(v_113.w, abs(r7.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = (r2.w * r0.z);
  r0.z = fma(r1.z, 0.0625f, r0.z);
  r0.z = (r0.z * r0.z);
  r0.z = min(r0.z, 1.0f);
  r1.z = clamp(fma(v6.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r1.z = sqrt(r1.z);
  r1.z = (r1.z * cb6_6.tint_symbol_6[3u].z);
  let v_114 = -(r0.zzzz);
  r0.z = fma(r1.z, v_114.z, r0.z);
  let v_115 = dot(r3.xyz, v_25.xyz);
  r1.z = clamp(vec4<f32>(v_115, v_115, v_115, v_115).z, 0.0f, 1.0f);
  let v_116 = dot(r5.xyz, r3.xyz);
  r7.x = clamp(vec4<f32>(v_116, v_116, v_116, v_116).x, 0.0f, 1.0f);
  let v_117 = dot(r6.xyz, v_25.xyz);
  r7.y = clamp(vec4<f32>(v_117, v_117, v_117, v_117).y, 0.0f, 1.0f);
  let v_118 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_118.xy, r6.zw);
  let v_119 = (r6.xy * r6.xy);
  r6 = vec4<f32>(r6.xy, v_119.xy);
  let v_120 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_120.xy);
  let v_121 = (r6.xy * r6.zw);
  r6 = vec4<f32>(v_121.xy, r6.zw);
  r2.w = ((-(cb12_12.tint_symbol_4[0u].yyyy)).w + 1.0f);
  let v_122 = fma(cb12_12.tint_symbol_4[0u].yy, r6.xy, r2.ww);
  r6 = vec4<f32>(v_122.xy, r6.zw);
  r2.w = (r0.x * r6.y);
  r0.x = fma((-(r0.xxxx)).x, r6.x, 1.0f);
  r2.w = (r1.z * r2.w);
  r2.w = (r2.w * 0.25f);
  r1.z = (r0.x * r1.z);
  let v_123 = fma(r2.xyz, r1.zzz, r2.www);
  r6 = vec4<f32>(v_123.xyz, r6.w);
  let v_124 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_124.xyz, r6.w);
  r0.w = fma(r1.w, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_125 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_125.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_126 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_126.xyz, r8.w);
  let v_127 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_127.xyz, r8.w);
  let v_128 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_128.xyz, r7.w);
  let v_129 = (r1.yyy * r7.xyz);
  r7 = vec4<f32>(v_129.xyz, r7.w);
  let v_130 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_130.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_131 = dot(r9.xyz, r3.xyz);
  r0.w = clamp(vec4<f32>(v_131, v_131, v_131, v_131).w, 0.0f, 1.0f);
  let v_132 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r8.xyz);
  r8 = vec4<f32>(v_132.xyz, r8.w);
  let v_133 = fma(r8.xyz, r1.xxx, r7.xyz);
  r7 = vec4<f32>(v_133.xyz, r7.w);
  let v_134 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_134.xyz, r7.w);
  let v_135 = (r2.xyz * r7.xyz);
  r2 = vec4<f32>(v_135.xyz, r2.w);
  let v_136 = fma(r6.xyz, r0.zzz, r2.xyz);
  r2 = vec4<f32>(v_136.xyz, r2.w);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.z = dot((-(r5.xyzx)).xyz, r3.xyz);
  r0.z = (r0.z + r0.z);
  let v_137 = -(r0.zzzz);
  let v_138 = -(r5.xyzx);
  let v_139 = fma(r3.xyz, v_137.xyz, v_138.xyz);
  r3 = vec4<f32>(v_139.xyz, r3.w);
  r0.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r0.z = max(r0.z, cb5_5.tint_symbol_3[6u].z);
  let v_140 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_140.xy, r3.z, v_140.z);
  r0.w = (abs(r3.zzzz).w + 1.0f);
  let v_141 = (r3.xyw / r0.www);
  r3 = vec4<f32>(v_141.xy, r3.z, v_141.z);
  let v_142 = ((-(r3.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_142.xy, r3.z, v_142.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_143 = bitcast<vec2<u32>>(r0.ww);
  let v_144 = r3.xy;
  let v_145 = select(r3.wy, v_144, (v_143 != vec2<u32>()));
  r1 = vec4<f32>(r1.xy, v_145.xy);
  let v_146 = r0.z;
  r3 = textureSampleLevel(t1, s1, r1.zwzz.xy, v_146);
  r0.z = max(r1.y, r1.x);
  let v_147 = (r0.zzz * r3.xyz);
  r1 = vec4<f32>(v_147.xyz, r1.w);
  let v_148 = (r0.xxx * r1.xyz);
  r0 = vec4<f32>(v_148.x, r0.y, v_148.yz);
  let v_149 = fma(r0.xzw, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r0 = vec4<f32>(v_149.x, r0.y, v_149.yz);
  o0.w = (r0.y * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.y = dot(r4.xyz, r4.xyz);
    r1.x = sqrt(r0.y);
    let v_150 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_150.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r4.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_151 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_151 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.y = inverseSqrt(r0.y);
    let v_152 = (r0.yyy * r4.xyz);
    r2 = vec4<f32>(v_152.xyz, r2.w);
    let v_153 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.y = clamp(vec4<f32>(v_153, v_153, v_153, v_153).y, 0.0f, 1.0f);
    r0.y = log2(r0.y);
    r0.y = (r0.y * cb3_3.tint_symbol_2[54u].w);
    r0.y = exp2(r0.y);
    let v_154 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_154, v_154, v_154, v_154).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_155 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.x = (r1.y + v_155.x);
    r2.x = max(r2.x, 0.0f);
    r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
    let v_156 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_156.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_157 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_157.xyz, r2.w);
    let v_158 = fma(r0.yyy, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_158.xyz, r2.w);
    let v_159 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_159.xyz, r3.w);
    let v_160 = fma(r1.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_160.xyz, r2.w);
    let v_161 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_162 = (r2.xyz + v_161.xyz);
    r2 = vec4<f32>(v_162.xyz, r2.w);
    let v_163 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_163.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_164 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_164.xyz, r3.w);
    let v_165 = fma(r1.xxx, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_165.xy, r1.z, v_165.z);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.y) != 0u)) {
      let v_166 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_166.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.y = (r2.x + -1.0f);
      r0.y = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.yyyy, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    } else {
      r0.y = 1.0f;
    }
    let v_167 = -(r0.xzxw);
    let v_168 = fma(r1.xyw, r0.yyy, v_167.xyw);
    r1 = vec4<f32>(v_168.xy, r1.z, v_168.z);
    let v_169 = fma(r1.zzz, r1.xyw, r0.xzw);
    r1 = vec4<f32>(v_169.xyz, r1.w);
  } else {
    r0.y = dot(r4.xyz, r4.xyz);
    r1.w = sqrt(r0.y);
    let v_170 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_170.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r4.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_171 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_171 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.y = inverseSqrt(r0.y);
    let v_172 = (r0.yyy * r4.xyz);
    r3 = vec4<f32>(v_172.xyz, r3.w);
    let v_173 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.y = clamp(vec4<f32>(v_173, v_173, v_173, v_173).y, 0.0f, 1.0f);
    r0.y = log2(r0.y);
    r0.y = (r0.y * cb3_3.tint_symbol_2[54u].w);
    r0.y = exp2(r0.y);
    let v_174 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.z = clamp(vec4<f32>(v_174, v_174, v_174, v_174).z, 0.0f, 1.0f);
    r2.z = log2(r2.z);
    r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
    r2.z = exp2(r2.z);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_175 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r2.x + v_175.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).y, 0.0f, 1.0f);
    let v_176 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.x = (r2.x * v_176.x);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    let v_177 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_177.xyz, r3.w);
    let v_178 = fma(r0.yyy, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_178.xyz, r3.w);
    let v_179 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_179.xyz, r4.w);
    let v_180 = fma(r2.zzz, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_180.xyz, r3.w);
    let v_181 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_182 = (r3.xyz + v_181.xyz);
    r3 = vec4<f32>(v_182.xyz, r3.w);
    let v_183 = fma(r2.xxx, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_183.x, r2.y, v_183.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_184 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_184.xyz, r3.w);
    let v_185 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_185.x, r2.y, v_185.yz);
    let v_186 = ((-(r0.xxzw)).xzw + r2.xzw);
    r2 = vec4<f32>(v_186.x, r2.y, v_186.yz);
    let v_187 = fma(r2.yyy, r2.xzw, r0.xzw);
    r1 = vec4<f32>(v_187.xyz, r1.w);
  }
  let v_188 = log2(r1.xyz);
  r0 = vec4<f32>(v_188.xyz, r0.w);
  let v_189 = (r0.xyz * vec3<f32>(0.45454546809196472168f));
  r0 = vec4<f32>(v_189.xyz, r0.w);
  let v_190 = exp2(r0.xyz);
  o0 = vec4<f32>(v_190.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_191 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v6, v_191);
  return o0;
}
