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

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v3 : vec4<f32>;

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v3 = v_2;
  x1[0u].x = v4[0u];
  x1[0u].y = v4[1u];
  x1[0u].z = v4[2u];
  x1[0u].w = v4[3u];
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_3 = (r0.xxx * v1.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (v0.xyw * cb2_2.tint_symbol_1[15u].zyx);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = -(v2.xyzx);
  let v_6 = (v_5.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_7 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = (r2.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(r2.xxx, cb6_6.tint_symbol_4[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r2.zzz, cb6_6.tint_symbol_4[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r3.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = &(x0[0u]);
  let v_13 = r4;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = fma(r3.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[1u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r3.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = &(x0[2u]);
  let v_19 = r6;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r3.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = &(x0[3u]);
  let v_22 = r3;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_24 = r7;
  r7 = vec4<f32>(v_24.x, v_23.x, v_24.z, v_23.y);
  r2.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_25 = abs(r6.yyyy);
  r3.z = max(v_25.z, abs(r6.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r2.w)));
  let v_26 = (bitcast<u32>(r3.z) != 0u);
  let v_27 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_27, v_26);
  let v_28 = abs(r5.yyyy);
  r3.w = max(v_28.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_29 = bitcast<u32>(r3.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_5[2i].x), (v_29 != 0u));
  let v_30 = abs(r4.yyyy);
  r3.w = max(v_30.w, abs(r4.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_31 = bitcast<u32>(r2.w);
  r2.w = select(r3.z, 0.0f, (v_31 != 0u));
  let v_32 = x0[bitcast<i32>(r2.w)];
  r4 = vec4<f32>(v_32.xyz, r4.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.z = (r2.w + 0.5f);
  r3.z = (r3.z * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r2.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r3.w = dot(r5, cb6_6.tint_symbol_4[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r4.z);
  let v_33 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_33.xy, r6.z, v_33.z);
  r6.z = dpdx(r2.w);
  let v_34 = dpdy(r5.yxy);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  r8.w = dpdy(r2.w);
  let v_35 = (r6.yw * r8.yw);
  r4 = vec4<f32>(v_35.xy, r4.zw);
  let v_36 = -(r4.xyxx);
  let v_37 = fma(r6.xz, r8.xz, v_36.xy);
  r9 = vec4<f32>(v_37.xy, r9.zw);
  r4.x = (1.0f / r9.x);
  r4.y = (r6.z * r8.y);
  let v_38 = -(r4.yyyy);
  r9.z = fma(r6.x, r8.w, v_38.z);
  let v_39 = (r4.xx * r9.yz);
  r4 = vec4<f32>(v_39.xy, r4.zw);
  let v_40 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_41.xy, r4.zw);
  r2.w = fma((-(r3.wwww)).w, r4.x, r2.w);
  r2.w = fma((-(r3.wwww)).w, r4.y, r2.w);
  let v_42 = bitcast<u32>(r3.z);
  let v_43 = r2.w;
  r7.z = select(r4.z, v_43, (v_42 != 0u));
  r5.z = 0.0f;
  let v_44 = (r5.xyz + r7.ywz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r7 = vec4<f32>(v_45.xy, r7.zw);
  let v_46 = (r5.xyz + r7.xyz);
  r6 = vec4<f32>(v_46.xyz, r6.w);
  let v_47 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r7 = vec4<f32>(v_47.xy, r7.zw);
  let v_48 = (r5.xyz + r7.xyz);
  r8 = vec4<f32>(v_48.xyz, r8.w);
  let v_49 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r7 = vec4<f32>(v_49.xy, r7.zw);
  let v_50 = (r5.xyz + r7.xyz);
  r9 = vec4<f32>(v_50.xyz, r9.w);
  let v_51 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r7 = vec4<f32>(v_51.xy, r7.zw);
  let v_52 = (r5.xyz + r7.xyz);
  r10 = vec4<f32>(v_52.xyz, r10.w);
  let v_53 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r7 = vec4<f32>(v_53.xy, r7.zw);
  let v_54 = (r5.xyz + r7.xyz);
  r11 = vec4<f32>(v_54.xyz, r11.w);
  let v_55 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r7 = vec4<f32>(v_55.xy, r7.zw);
  let v_56 = (r5.xyz + r7.xyz);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  let v_57 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r7 = vec4<f32>(v_57.xy, r7.zw);
  let v_58 = (r5.xyz + r7.xyz);
  r13 = vec4<f32>(v_58.xyz, r13.w);
  let v_59 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r7 = vec4<f32>(v_59.xy, r7.zw);
  let v_60 = (r5.xyz + r7.xyz);
  r14 = vec4<f32>(v_60.xyz, r14.w);
  let v_61 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r7 = vec4<f32>(v_61.xy, r7.zw);
  let v_62 = (r5.xyz + r7.xyz);
  r15 = vec4<f32>(v_62.xyz, r15.w);
  let v_63 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r7 = vec4<f32>(v_63.xy, r7.zw);
  let v_64 = (r5.xyz + r7.xyz);
  r16 = vec4<f32>(v_64.xyz, r16.w);
  let v_65 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r7 = vec4<f32>(v_65.xy, r7.zw);
  let v_66 = (r5.xyz + r7.xyz);
  r17 = vec4<f32>(v_66.xyz, r17.w);
  let v_67 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r7 = vec4<f32>(v_67.xy, r7.zw);
  let v_68 = (r5.xyz + r7.xyz);
  r18 = vec4<f32>(v_68.xyz, r18.w);
  let v_69 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r7 = vec4<f32>(v_69.xy, r7.zw);
  let v_70 = (r5.xyz + r7.xyz);
  r19 = vec4<f32>(v_70.xyz, r19.w);
  let v_71 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r7 = vec4<f32>(v_71.xy, r7.zw);
  let v_72 = (r5.xyz + r7.xyz);
  r20 = vec4<f32>(v_72.xyz, r20.w);
  let v_73 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r7 = vec4<f32>(v_73.xy, r7.zw);
  let v_74 = (r5.xyz + r7.xyz);
  r5 = vec4<f32>(v_74.xyz, r5.w);
  let v_75 = r4.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_75.xy, r4.z);
  let v_76 = r6.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_76.xy, r6.z);
  let v_77 = r8.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_77.xy, r8.z);
  let v_78 = r9.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_78.xy, r9.z);
  let v_79 = r10.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_79.xy, r10.z);
  let v_80 = r11.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_80.xy, r11.z);
  let v_81 = r12.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_81.xy, r12.z);
  let v_82 = r13.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_82.xy, r13.z);
  let v_83 = r14.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_83.xy, r14.z);
  let v_84 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_84.xy, r15.z);
  let v_85 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_85.xy, r16.z);
  let v_86 = r17.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_86.xy, r17.z);
  let v_87 = r18.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_87.xy, r18.z);
  let v_88 = r19.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_88.xy, r19.z);
  let v_89 = r20.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_89.xy, r20.z);
  let v_90 = r5.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_90.xy, r5.z);
  r4 = (r4 + r6);
  r4 = (r7 + r4);
  r4 = (r8 + r4);
  r2.w = dot(r4, vec4<f32>(1.0f));
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).w, 0.0f, 1.0f);
  let v_91 = abs(r3.yyyy);
  r3.x = max(v_91.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = (r3.x * r1.w);
  r1.w = fma(r2.w, 0.0625f, r1.w);
  let v_92 = (r1.xyw * r1.xyw);
  r1 = vec4<f32>(v_92.xy, r1.z, v_92.z);
  r1.w = min(r1.w, 1.0f);
  r2.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_4[3u].z);
  let v_93 = -(r1.wwww);
  r1.w = fma(r2.w, v_93.w, r1.w);
  let v_94 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_95 = dot(r0.yzw, v_94.xyz);
  r2.w = clamp(vec4<f32>(v_95, v_95, v_95, v_95).w, 0.0f, 1.0f);
  let v_96 = (r2.www * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_96.xyz, r3.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_97 = (v_5.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_97.xyz, r4.w);
  let v_98 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_98.xyz, r5.w);
  r4.w = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_99 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_99.xyz, r5.w);
  let v_100 = (r5.xyz + v_5.xyz);
  r5 = vec4<f32>(v_100.xyz, r5.w);
  let v_101 = bitcast<vec3<u32>>(r3.www);
  let v_102 = r4.xyz;
  let v_103 = select(r5.xyz, v_102, (v_101 != vec3<u32>()));
  r4 = vec4<f32>(v_103.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  let v_104 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_104.xyz, r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_105 = (r4.www * r4.xyz);
  r4 = vec4<f32>(v_105.xyz, r4.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_106 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r4.xyz, v_106.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_107 = dot(r4.xyz, r0.yzw);
  r4.x = clamp(vec4<f32>(v_107, v_107, v_107, v_107).x, 0.0f, 1.0f);
  r4.x = (r4.w * r4.x);
  r3.w = (r3.w * r4.x);
  let v_108 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_108.xyz, r4.w);
  let v_109 = bitcast<vec3<u32>>(r2.www);
  let v_110 = select(r4.xyz, vec3<f32>(), (v_109 != vec3<u32>()));
  r4 = vec4<f32>(v_110.xyz, r4.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_111 = (v_5.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_111.xyz, r5.w);
    let v_112 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_112.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_113 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_113.xyz, r6.w);
    let v_114 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_114.xyz, r6.w);
    let v_115 = bitcast<vec3<u32>>(r3.www);
    let v_116 = r5.xyz;
    let v_117 = select(r6.xyz, v_116, (v_115 != vec3<u32>()));
    r5 = vec4<f32>(v_117.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_118 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_118.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_119 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_119.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_120 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r5.xyz, v_120.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_121 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_121, v_121, v_121, v_121).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_122 = fma(r3.www, cb3_3.tint_symbol_2[20u].xyz, r4.xyz);
    r5 = vec4<f32>(v_122.xyz, r5.w);
    let v_123 = bitcast<vec3<u32>>(r2.www);
    let v_124 = r4.xyz;
    let v_125 = select(r5.xyz, v_124, (v_123 != vec3<u32>()));
    r4 = vec4<f32>(v_125.xyz, r4.w);
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_126 = (v_5.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_126.xyz, r5.w);
    let v_127 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_127.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_128 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    let v_129 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_129.xyz, r6.w);
    let v_130 = bitcast<vec3<u32>>(r3.www);
    let v_131 = r5.xyz;
    let v_132 = select(r6.xyz, v_131, (v_130 != vec3<u32>()));
    r5 = vec4<f32>(v_132.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_133 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_133.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_134 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_134.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_135 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r5.xyz, v_135.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_136 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_136, v_136, v_136, v_136).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_137 = fma(r3.www, cb3_3.tint_symbol_2[21u].xyz, r4.xyz);
    r5 = vec4<f32>(v_137.xyz, r5.w);
    let v_138 = bitcast<vec3<u32>>(r2.www);
    let v_139 = r4.xyz;
    let v_140 = select(r5.xyz, v_139, (v_138 != vec3<u32>()));
    r4 = vec4<f32>(v_140.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_141 = (v_5.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_141.xyz, r5.w);
    let v_142 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_142.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_143 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_143.xyz, r6.w);
    let v_144 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_144.xyz, r6.w);
    let v_145 = bitcast<vec3<u32>>(r3.www);
    let v_146 = r5.xyz;
    let v_147 = select(r6.xyz, v_146, (v_145 != vec3<u32>()));
    r5 = vec4<f32>(v_147.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_148 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_148.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_149 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_149.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_150 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r5.xyz, v_150.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_151 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_152 = fma(r3.www, cb3_3.tint_symbol_2[22u].xyz, r4.xyz);
    r5 = vec4<f32>(v_152.xyz, r5.w);
    let v_153 = bitcast<vec3<u32>>(r2.www);
    let v_154 = r4.xyz;
    let v_155 = select(r5.xyz, v_154, (v_153 != vec3<u32>()));
    r4 = vec4<f32>(v_155.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_156 = (v_5.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r5 = vec4<f32>(v_156.xyz, r5.w);
    let v_157 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r6 = vec4<f32>(v_157.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[23u].w);
    let v_158 = fma(cb3_3.tint_symbol_2[15u].xyz, r4.www, cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_158.xyz, r6.w);
    let v_159 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_159.xyz, r6.w);
    let v_160 = bitcast<vec3<u32>>(r3.www);
    let v_161 = r5.xyz;
    let v_162 = select(r6.xyz, v_161, (v_160 != vec3<u32>()));
    r5 = vec4<f32>(v_162.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_163 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_163.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_164 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_164.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[15u].w);
    r3.w = (r3.w / r4.w);
    let v_165 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r4.w = dot(r5.xyz, v_165.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_166 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_166, v_166, v_166, v_166).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_167 = fma(r3.www, cb3_3.tint_symbol_2[23u].xyz, r4.xyz);
    r5 = vec4<f32>(v_167.xyz, r5.w);
    let v_168 = bitcast<vec3<u32>>(r2.www);
    let v_169 = r4.xyz;
    let v_170 = select(r5.xyz, v_169, (v_168 != vec3<u32>()));
    r4 = vec4<f32>(v_170.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_171 = (v_5.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r5 = vec4<f32>(v_171.xyz, r5.w);
    let v_172 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r6 = vec4<f32>(v_172.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[24u].w);
    let v_173 = fma(cb3_3.tint_symbol_2[16u].xyz, r4.www, cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_173.xyz, r6.w);
    let v_174 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_174.xyz, r6.w);
    let v_175 = bitcast<vec3<u32>>(r3.www);
    let v_176 = r5.xyz;
    let v_177 = select(r6.xyz, v_176, (v_175 != vec3<u32>()));
    r5 = vec4<f32>(v_177.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_178 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_178.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_179 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_179.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[16u].w);
    r3.w = (r3.w / r4.w);
    let v_180 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r4.w = dot(r5.xyz, v_180.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_181 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_181, v_181, v_181, v_181).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_182 = fma(r3.www, cb3_3.tint_symbol_2[24u].xyz, r4.xyz);
    r5 = vec4<f32>(v_182.xyz, r5.w);
    let v_183 = bitcast<vec3<u32>>(r2.www);
    let v_184 = r4.xyz;
    let v_185 = select(r5.xyz, v_184, (v_183 != vec3<u32>()));
    r4 = vec4<f32>(v_185.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_186 = (v_5.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r5 = vec4<f32>(v_186.xyz, r5.w);
    let v_187 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r6 = vec4<f32>(v_187.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[25u].w);
    let v_188 = fma(cb3_3.tint_symbol_2[17u].xyz, r4.www, cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_188.xyz, r6.w);
    let v_189 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_189.xyz, r6.w);
    let v_190 = bitcast<vec3<u32>>(r3.www);
    let v_191 = r5.xyz;
    let v_192 = select(r6.xyz, v_191, (v_190 != vec3<u32>()));
    r5 = vec4<f32>(v_192.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_193 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_193.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_194 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_194.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[17u].w);
    r3.w = (r3.w / r4.w);
    let v_195 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r4.w = dot(r5.xyz, v_195.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_196 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_196, v_196, v_196, v_196).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_197 = fma(r3.www, cb3_3.tint_symbol_2[25u].xyz, r4.xyz);
    r5 = vec4<f32>(v_197.xyz, r5.w);
    let v_198 = bitcast<vec3<u32>>(r2.www);
    let v_199 = r4.xyz;
    let v_200 = select(r5.xyz, v_199, (v_198 != vec3<u32>()));
    r4 = vec4<f32>(v_200.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_201 = (v_5.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r5 = vec4<f32>(v_201.xyz, r5.w);
    let v_202 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r6 = vec4<f32>(v_202.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[26u].w);
    let v_203 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.www, cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_203.xyz, r6.w);
    let v_204 = (r6.xyz + v_5.xyz);
    r6 = vec4<f32>(v_204.xyz, r6.w);
    let v_205 = bitcast<vec3<u32>>(r3.www);
    let v_206 = r5.xyz;
    let v_207 = select(r6.xyz, v_206, (v_205 != vec3<u32>()));
    r5 = vec4<f32>(v_207.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_208 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_208.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_209 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_209.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[18u].w);
    r3.w = (r3.w / r4.w);
    let v_210 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r4.w = dot(r5.xyz, v_210.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_211 = dot(r5.xyz, r0.yzw);
    r5.x = clamp(vec4<f32>(v_211, v_211, v_211, v_211).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_212 = fma(r3.www, cb3_3.tint_symbol_2[26u].xyz, r4.xyz);
    r5 = vec4<f32>(v_212.xyz, r5.w);
    let v_213 = bitcast<vec3<u32>>(r2.www);
    let v_214 = r4.xyz;
    let v_215 = select(r5.xyz, v_214, (v_213 != vec3<u32>()));
    r4 = vec4<f32>(v_215.xyz, r4.w);
  }
  let v_216 = fma(r3.xyz, r1.www, r4.xyz);
  r3 = vec4<f32>(v_216.xyz, r3.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_217 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_217.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_218 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  let v_219 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_219.xyz, r5.w);
  let v_220 = fma(r4.xyz, r1.www, r5.xyz);
  r4 = vec4<f32>(v_220.xyz, r4.w);
  let v_221 = (r1.yyy * r4.xyz);
  r4 = vec4<f32>(v_221.xyz, r4.w);
  let v_222 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_222.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_223 = dot(r6.xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_223, v_223, v_223, v_223).x, 0.0f, 1.0f);
  let v_224 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r5.xyz);
  r0 = vec4<f32>(v_224.xyz, r0.w);
  let v_225 = fma(r0.xyz, r1.xxx, r4.xyz);
  r0 = vec4<f32>(v_225.xyz, r0.w);
  let v_226 = (r0.xyz + r3.xyz);
  r0 = vec4<f32>(v_226.xyz, r0.w);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r0.w);
    let v_227 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_227.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.z);
    r1.w = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r2.w = (r1.w * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r1.w = (r2.w / r1.w);
    let v_228 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.w, (v_228 != 0u));
    r1.w = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.w);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.w = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_229 = (r0.www * r2.xyz);
    r3 = vec4<f32>(v_229.xyz, r3.w);
    let v_230 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_231 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.w = clamp(vec4<f32>(v_231, v_231, v_231, v_231).w, 0.0f, 1.0f);
    r2.w = log2(r2.w);
    r2.w = (r2.w * cb3_3.tint_symbol_2[53u].w);
    r2.w = exp2(r2.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_232 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r3.x = (r1.y + v_232.x);
    r3.x = max(r3.x, 0.0f);
    r3.x = (r3.x * cb3_3.tint_symbol_2[51u].x);
    r3.x = (r3.x * 1.44269502162933349609f);
    r3.x = exp2(r3.x);
    r3.x = ((-(r3.xxxx)).x + 1.0f);
    r1.w = clamp(fma(r1.xxxx, r3.xxxx, r1.wwww).w, 0.0f, 1.0f);
    let v_233 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_233.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_234 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_234.xyz, r3.w);
    let v_235 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_235.xyz, r3.w);
    let v_236 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_236.xyz, r4.w);
    let v_237 = fma(r2.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_237.xyz, r3.w);
    let v_238 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_239 = (r3.xyz + v_238.xyz);
    r3 = vec4<f32>(v_239.xyz, r3.w);
    let v_240 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_240.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_241 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_241.xyz, r4.w);
    let v_242 = fma(r1.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_242.xyz, r3.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_243 = (v3.xy * cb2_2.tint_symbol_1[18u].zw);
      r1 = vec4<f32>(v_243.xy, r1.zw);
      r4 = textureSample(t11, s11, r1.xyxx.xy);
      r0.w = (r4.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_244 = -(r0.xyzx);
    let v_245 = fma(r3.xyz, r0.www, v_244.xyz);
    r3 = vec4<f32>(v_245.xyz, r3.w);
    let v_246 = fma(r1.www, r3.xyz, r0.xyz);
    r1 = vec4<f32>(v_246.xy, r1.z, v_246.z);
  } else {
    r0.w = dot(r2.xyz, r2.xyz);
    r2.w = sqrt(r0.w);
    let v_247 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r3.x = (r2.w + v_247.x);
    r3.x = max(r3.x, 0.0f);
    r2.w = (r3.x / r2.w);
    r2.w = (r2.w * r2.z);
    r3.y = (r2.w * cb3_3.tint_symbol_2[52u].z);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.wwww).w)));
    r3.z = (r3.y * -1.44269502162933349609f);
    r3.z = exp2(r3.z);
    r3.z = ((-(r3.zzzz)).z + 1.0f);
    r3.y = (r3.z / r3.y);
    let v_248 = bitcast<u32>(r2.w);
    r2.w = select(1.0f, r3.y, (v_248 != 0u));
    r3.y = (r3.x * cb3_3.tint_symbol_2[51u].w);
    r2.w = (r2.w * r3.y);
    r2.w = min(r2.w, 1.0f);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = min(r2.w, 1.0f);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r3.y = (r2.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_249 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_249.xyz, r2.w);
    let v_250 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_250, v_250, v_250, v_250).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_251 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_251, v_251, v_251, v_251).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r2.y = fma((-(r2.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_252 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.z = (r3.x + v_252.z);
    r2.z = max(r2.z, 0.0f);
    let v_253 = (r2.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_254 = r2;
    r2 = vec4<f32>(v_254.x, v_253.xy, v_254.w);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.z = clamp(fma(r2.yyyy, r2.zzzz, r3.yyyy).z, 0.0f, 1.0f);
    let v_255 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.w = (r3.x * v_255.w);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    let v_256 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_256.xyz, r3.w);
    let v_257 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_257.xyz, r3.w);
    let v_258 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_258.xyz, r4.w);
    let v_259 = fma(r2.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_259.xyz, r3.w);
    let v_260 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_261 = (r3.xyz + v_260.xyz);
    r3 = vec4<f32>(v_261.xyz, r3.w);
    let v_262 = fma(r2.www, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_262.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_263 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_263.xyz, r4.w);
    let v_264 = fma(r2.yyy, r4.xyz, r3.xyz);
    r2 = vec4<f32>(v_264.xy, r2.z, v_264.z);
    let v_265 = ((-(r0.xyxz)).xyw + r2.xyw);
    r2 = vec4<f32>(v_265.xy, r2.z, v_265.z);
    let v_266 = fma(r2.zzz, r2.xyw, r0.xyz);
    r1 = vec4<f32>(v_266.xy, r1.z, v_266.z);
  }
  let v_267 = (r1.xyw * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_267.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r1.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v1.w);
  o0.w = r1.z;
  o2 = r0.x;
}

struct tint_symbol_7 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_268 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v_268);
  return tint_symbol_7(o0, o1, o2);
}
