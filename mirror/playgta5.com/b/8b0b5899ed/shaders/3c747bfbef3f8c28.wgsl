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

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : vec4<f32>;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v5 = v_2;
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v0.xyz.xyxx.xy);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v1.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = (r0.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r2.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r2.x = (r2.x * cb2_2.tint_symbol_1[15u].y);
  r2.y = (v4.x * 0.30000001192092895508f);
  let v_5 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = -(v2.xyzx);
  let v_7 = (v_6.xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.z = dot(r3.xyz, r3.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_8 = (r2.zzz * r3.xyz);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  r2.z = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_9 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = fma(r3.xxx, cb6_6.tint_symbol_4[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = fma(r3.zzz, cb6_6.tint_symbol_4[2u].xyz, r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fma(r5.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = &(x0[0u]);
  let v_15 = r6;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r5.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  let v_17 = &(x0[1u]);
  let v_18 = r7;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r5.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r8 = vec4<f32>(v_19.xyz, r8.w);
  let v_20 = &(x0[2u]);
  let v_21 = r8;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r5.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = &(x0[3u]);
  let v_24 = r5;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_26 = r9;
  r9 = vec4<f32>(v_26.x, v_25.x, v_26.z, v_25.y);
  r3.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_27 = abs(r8.yyyy);
  r4.w = max(v_27.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_28 = (bitcast<u32>(r4.w) != 0u);
  let v_29 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_29, v_28);
  let v_30 = abs(r7.yyyy);
  r5.z = max(v_30.z, abs(r7.xxxx).z);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z < r3.w)));
  let v_31 = bitcast<u32>(r5.z);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_31 != 0u));
  let v_32 = abs(r6.yyyy);
  r5.z = max(v_32.z, abs(r6.xxxx).z);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.z < r3.w)));
  let v_33 = bitcast<u32>(r3.w);
  r3.w = select(r4.w, 0.0f, (v_33 != 0u));
  let v_34 = x0[bitcast<i32>(r3.w)];
  r6 = vec4<f32>(v_34.xyz, r6.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.w = (r3.w + 0.5f);
  r4.w = (r4.w * 0.25f);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) & vec4<u32>(1065353216u)));
  r3.w = dot(r7, cb6_6.tint_symbol_4[12u]);
  r5.z = dot(r7, cb6_6.tint_symbol_4[13u]);
  r7.x = (r6.x + 0.5f);
  r7.y = fma(r6.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r6.z);
  let v_35 = dpdx(r7.xyy);
  r8 = vec4<f32>(v_35.xy, r8.z, v_35.z);
  r8.z = dpdx(r3.w);
  let v_36 = dpdy(r7.yxy);
  r10 = vec4<f32>(v_36.xyz, r10.w);
  r10.w = dpdy(r3.w);
  let v_37 = (r8.yw * r10.yw);
  r6 = vec4<f32>(v_37.xy, r6.zw);
  let v_38 = -(r6.xyxx);
  let v_39 = fma(r8.xz, r10.xz, v_38.xy);
  r11 = vec4<f32>(v_39.xy, r11.zw);
  r5.w = (1.0f / r11.x);
  r6.x = (r8.z * r10.y);
  let v_40 = -(r6.xxxx);
  r11.z = fma(r8.x, r10.w, v_40.z);
  let v_41 = (r5.ww * r11.yz);
  r6 = vec4<f32>(v_41.xy, r6.zw);
  let v_42 = max(r6.xy, vec2<f32>());
  r6 = vec4<f32>(v_42.xy, r6.zw);
  let v_43 = min(r6.xy, vec2<f32>(0.5f));
  r6 = vec4<f32>(v_43.xy, r6.zw);
  r3.w = fma((-(r5.zzzz)).w, r6.x, r3.w);
  r3.w = fma((-(r5.zzzz)).w, r6.y, r3.w);
  let v_44 = bitcast<u32>(r4.w);
  let v_45 = r3.w;
  r9.z = select(r6.z, v_45, (v_44 != 0u));
  r7.z = 0.0f;
  let v_46 = (r7.xyz + r9.ywz);
  r6 = vec4<f32>(v_46.xyz, r6.w);
  let v_47 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r9 = vec4<f32>(v_47.xy, r9.zw);
  let v_48 = (r7.xyz + r9.xyz);
  r8 = vec4<f32>(v_48.xyz, r8.w);
  let v_49 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r9 = vec4<f32>(v_49.xy, r9.zw);
  let v_50 = (r7.xyz + r9.xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  let v_51 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r9 = vec4<f32>(v_51.xy, r9.zw);
  let v_52 = (r7.xyz + r9.xyz);
  r11 = vec4<f32>(v_52.xyz, r11.w);
  let v_53 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r9 = vec4<f32>(v_53.xy, r9.zw);
  let v_54 = (r7.xyz + r9.xyz);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  let v_55 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r9 = vec4<f32>(v_55.xy, r9.zw);
  let v_56 = (r7.xyz + r9.xyz);
  r13 = vec4<f32>(v_56.xyz, r13.w);
  let v_57 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r9 = vec4<f32>(v_57.xy, r9.zw);
  let v_58 = (r7.xyz + r9.xyz);
  r14 = vec4<f32>(v_58.xyz, r14.w);
  let v_59 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r9 = vec4<f32>(v_59.xy, r9.zw);
  let v_60 = (r7.xyz + r9.xyz);
  r15 = vec4<f32>(v_60.xyz, r15.w);
  let v_61 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r9 = vec4<f32>(v_61.xy, r9.zw);
  let v_62 = (r7.xyz + r9.xyz);
  r16 = vec4<f32>(v_62.xyz, r16.w);
  let v_63 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r9 = vec4<f32>(v_63.xy, r9.zw);
  let v_64 = (r7.xyz + r9.xyz);
  r17 = vec4<f32>(v_64.xyz, r17.w);
  let v_65 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r9 = vec4<f32>(v_65.xy, r9.zw);
  let v_66 = (r7.xyz + r9.xyz);
  r18 = vec4<f32>(v_66.xyz, r18.w);
  let v_67 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r9 = vec4<f32>(v_67.xy, r9.zw);
  let v_68 = (r7.xyz + r9.xyz);
  r19 = vec4<f32>(v_68.xyz, r19.w);
  let v_69 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r9 = vec4<f32>(v_69.xy, r9.zw);
  let v_70 = (r7.xyz + r9.xyz);
  r20 = vec4<f32>(v_70.xyz, r20.w);
  let v_71 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r9 = vec4<f32>(v_71.xy, r9.zw);
  let v_72 = (r7.xyz + r9.xyz);
  r21 = vec4<f32>(v_72.xyz, r21.w);
  let v_73 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r9 = vec4<f32>(v_73.xy, r9.zw);
  let v_74 = (r7.xyz + r9.xyz);
  r22 = vec4<f32>(v_74.xyz, r22.w);
  let v_75 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r9 = vec4<f32>(v_75.xy, r9.zw);
  let v_76 = (r7.xyz + r9.xyz);
  r7 = vec4<f32>(v_76.xyz, r7.w);
  let v_77 = r6.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_77.xy, r6.z);
  let v_78 = r8.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_78.xy, r8.z);
  let v_79 = r10.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_79.xy, r10.z);
  let v_80 = r11.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_80.xy, r11.z);
  let v_81 = r12.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_81.xy, r12.z);
  let v_82 = r13.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_82.xy, r13.z);
  let v_83 = r14.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_83.xy, r14.z);
  let v_84 = r15.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_84.xy, r15.z);
  let v_85 = r16.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_85.xy, r16.z);
  let v_86 = r17.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_86.xy, r17.z);
  let v_87 = r18.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_87.xy, r18.z);
  let v_88 = r19.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_88.xy, r19.z);
  let v_89 = r20.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_89.xy, r20.z);
  let v_90 = r21.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_90.xy, r21.z);
  let v_91 = r22.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_91.xy, r22.z);
  let v_92 = r7.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_92.xy, r7.z);
  r6 = (r6 + r8);
  r6 = (r9 + r6);
  r6 = (r10 + r6);
  r3.w = dot(r6, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).w, 0.0f, 1.0f);
  let v_93 = abs(r5.yyyy);
  r4.w = max(v_93.w, abs(r5.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  let v_94 = (r2.xw * r2.xw);
  r2 = vec4<f32>(v_94.x, r2.yz, v_94.y);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_4[3u].z);
  let v_95 = -(r2.wwww);
  r2.w = fma(r3.w, v_95.w, r2.w);
  let v_96 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_97 = dot(r1.yzw, v_96.xyz);
  r3.w = clamp(vec4<f32>(v_97, v_97, v_97, v_97).w, 0.0f, 1.0f);
  let v_98 = dot(r4.xyz, r1.yzw);
  r4.x = clamp(vec4<f32>(v_98, v_98, v_98, v_98).x, 0.0f, 1.0f);
  let v_99 = (r0.xyz * r3.www);
  r4 = vec4<f32>(r4.x, v_99.xyz);
  let v_100 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_100.xyz);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r5 = vec4<f32>(vec3<f32>(), r5.w);
  } else {
    r5.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_101 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[3u].xyz);
    r5 = vec4<f32>(r5.x, v_101.xyz);
    let v_102 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r6 = vec4<f32>(v_102.xyz, r6.w);
    r6.x = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.x = clamp(((r6.xxxx / cb3_3.tint_symbol_2[19u].wwww)).x, 0.0f, 1.0f);
    r6.x = (r6.x * cb3_3.tint_symbol_2[19u].w);
    let v_103 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.xxx, cb3_3.tint_symbol_2[3u].xyz);
    r6 = vec4<f32>(v_103.xyz, r6.w);
    let v_104 = (r6.xyz + v_6.xyz);
    r6 = vec4<f32>(v_104.xyz, r6.w);
    let v_105 = bitcast<vec3<u32>>(r5.xxx);
    let v_106 = r5.yzw;
    let v_107 = select(r6.xyz, v_106, (v_105 != vec3<u32>()));
    r5 = vec4<f32>(v_107.xyz, r5.w);
    r5.w = dot(r5.xyz, r5.xyz);
    let v_108 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_108.xyz, r5.w);
    r6.x = dot(r5.xyz, r5.xyz);
    r6.x = inverseSqrt(r6.x);
    let v_109 = (r5.xyz * r6.xxx);
    r5 = vec4<f32>(v_109.xyz, r5.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.x = ((-(cb3_3.tint_symbol_2[11u].wwww)).x + 1.0f);
    r6.x = fma(r6.x, r5.w, cb3_3.tint_symbol_2[11u].w);
    r5.w = (r5.w / r6.x);
    let v_110 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.x = dot(r5.xyz, v_110.xyz);
    r6.x = clamp(fma(r6.xxxx, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).x, 0.0f, 1.0f);
    let v_111 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
    r5.x = (r6.x * r5.x);
    r5.x = (r5.w * r5.x);
    let v_112 = (r5.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r5 = vec4<f32>(v_112.xyz, r5.w);
    let v_113 = (r0.xyz * r5.xyz);
    r5 = vec4<f32>(v_113.xyz, r5.w);
  }
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r6.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r5.w)));
    let v_114 = bitcast<u32>(r6.x);
    let v_115 = r5.w;
    r3.w = select(r3.w, v_115, (v_114 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_116 = (v_6.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r6 = vec4<f32>(v_116.xyz, r6.w);
      let v_117 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r7 = vec4<f32>(v_117.xyz, r7.w);
      r6.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_118 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r7 = vec4<f32>(v_118.xyz, r7.w);
      let v_119 = (r7.xyz + v_6.xyz);
      r7 = vec4<f32>(v_119.xyz, r7.w);
      let v_120 = bitcast<vec3<u32>>(r5.www);
      let v_121 = r6.xyz;
      let v_122 = select(r7.xyz, v_121, (v_120 != vec3<u32>()));
      r6 = vec4<f32>(v_122.xyz, r6.w);
      r5.w = dot(r6.xyz, r6.xyz);
      let v_123 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_123.xyz, r6.w);
      r6.w = dot(r6.xyz, r6.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_124 = (r6.www * r6.xyz);
      r6 = vec4<f32>(v_124.xyz, r6.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[12u].w);
      r5.w = (r5.w / r6.w);
      let v_125 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r6.xyz, v_125.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_126 = dot(r6.xyz, r1.yzw);
      r6.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
      r6.x = (r6.w * r6.x);
      r5.w = (r5.w * r6.x);
      let v_127 = (r5.www * cb3_3.tint_symbol_2[20u].xyz);
      r6 = vec4<f32>(v_127.xyz, r6.w);
      let v_128 = fma(r6.xyz, r0.xyz, r5.xyz);
      r5 = vec4<f32>(v_128.xyz, r5.w);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_5[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_129 = (v_6.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r6 = vec4<f32>(v_129.xyz, r6.w);
      let v_130 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r7 = vec4<f32>(v_130.xyz, r7.w);
      r6.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_131 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r7 = vec4<f32>(v_131.xyz, r7.w);
      let v_132 = (r7.xyz + v_6.xyz);
      r7 = vec4<f32>(v_132.xyz, r7.w);
      let v_133 = bitcast<vec3<u32>>(r5.www);
      let v_134 = r6.xyz;
      let v_135 = select(r7.xyz, v_134, (v_133 != vec3<u32>()));
      r6 = vec4<f32>(v_135.xyz, r6.w);
      r5.w = dot(r6.xyz, r6.xyz);
      let v_136 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_136.xyz, r6.w);
      r6.w = dot(r6.xyz, r6.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_137 = (r6.www * r6.xyz);
      r6 = vec4<f32>(v_137.xyz, r6.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[13u].w);
      r5.w = (r5.w / r6.w);
      let v_138 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r6.xyz, v_138.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_139 = dot(r6.xyz, r1.yzw);
      r6.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
      r6.x = (r6.w * r6.x);
      r5.w = (r5.w * r6.x);
      let v_140 = (r5.www * cb3_3.tint_symbol_2[21u].xyz);
      r6 = vec4<f32>(v_140.xyz, r6.w);
      let v_141 = fma(r6.xyz, r0.xyz, r5.xyz);
      r5 = vec4<f32>(v_141.xyz, r5.w);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_142 = (v_6.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r6 = vec4<f32>(v_142.xyz, r6.w);
      let v_143 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r7 = vec4<f32>(v_143.xyz, r7.w);
      r5.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
      let v_144 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
      r7 = vec4<f32>(v_144.xyz, r7.w);
      let v_145 = (r7.xyz + v_6.xyz);
      r7 = vec4<f32>(v_145.xyz, r7.w);
      let v_146 = bitcast<vec3<u32>>(r3.www);
      let v_147 = r6.xyz;
      let v_148 = select(r7.xyz, v_147, (v_146 != vec3<u32>()));
      r6 = vec4<f32>(v_148.xyz, r6.w);
      r3.w = dot(r6.xyz, r6.xyz);
      let v_149 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
      r6 = vec4<f32>(v_149.xyz, r6.w);
      r5.w = dot(r6.xyz, r6.xyz);
      r5.w = inverseSqrt(r5.w);
      let v_150 = (r5.www * r6.xyz);
      r6 = vec4<f32>(v_150.xyz, r6.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r5.w = fma(r5.w, r3.w, cb3_3.tint_symbol_2[14u].w);
      r3.w = (r3.w / r5.w);
      let v_151 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r5.w = dot(r6.xyz, v_151.xyz);
      r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_152 = dot(r6.xyz, r1.yzw);
      r6.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
      r5.w = (r5.w * r6.x);
      r3.w = (r3.w * r5.w);
      let v_153 = (r3.www * cb3_3.tint_symbol_2[22u].xyz);
      r6 = vec4<f32>(v_153.xyz, r6.w);
      let v_154 = fma(r6.xyz, r0.xyz, r5.xyz);
      r5 = vec4<f32>(v_154.xyz, r5.w);
    }
  }
  let v_155 = fma(r4.yzw, r2.www, r5.xyz);
  r4 = vec4<f32>(r4.x, v_155.xyz);
  r1.x = fma(v1.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_156 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_156.xyz, r5.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_157 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_157.xyz, r6.w);
  let v_158 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_158.xyz, r6.w);
  let v_159 = fma(r5.xyz, r2.www, r6.xyz);
  r5 = vec4<f32>(v_159.xyz, r5.w);
  let v_160 = (r2.xxx * r5.xyz);
  r5 = vec4<f32>(v_160.xyz, r5.w);
  let v_161 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_161.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_162 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_162, v_162, v_162, v_162).x, 0.0f, 1.0f);
  let v_163 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_163.xyz, r1.w);
  let v_164 = fma(r1.xyz, r2.zzz, r5.xyz);
  r1 = vec4<f32>(v_164.xyz, r1.w);
  let v_165 = fma(r1.xyz, r0.xyz, r4.yzw);
  r1 = vec4<f32>(v_165.xyz, r1.w);
  r1.w = (r2.y * r4.x);
  let v_166 = fma(r0.xyz, r1.www, r1.xyz);
  r0 = vec4<f32>(v_166.xyz, r0.w);
  r0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.y = sqrt(r1.x);
  let v_167 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.z = (r1.y + v_167.z);
  r1.z = max(r1.z, 0.0f);
  r1.y = (r1.z / r1.y);
  r1.y = (r1.y * r3.z);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
  r2.x = (r1.w * -1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.w = (r2.x / r1.w);
  let v_168 = bitcast<u32>(r1.y);
  r1.y = select(1.0f, r1.w, (v_168 != 0u));
  r1.w = (r1.z * cb3_3.tint_symbol_2[51u].w);
  r1.y = (r1.y * r1.w);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (r1.y * cb3_3.tint_symbol_2[52u].y);
  r1.x = inverseSqrt(r1.x);
  let v_169 = (r1.xxx * r3.xyz);
  r2 = vec4<f32>(v_169.xyz, r2.w);
  let v_170 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.x = clamp(vec4<f32>(v_170, v_170, v_170, v_170).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.x = (r1.x * cb3_3.tint_symbol_2[54u].w);
  r1.x = exp2(r1.x);
  let v_171 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r2.x = clamp(vec4<f32>(v_171, v_171, v_171, v_171).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
  r2.x = exp2(r2.x);
  r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_172 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.y = (r1.z + v_172.y);
  r2.y = max(r2.y, 0.0f);
  r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r1.w = clamp(fma(r1.yyyy, r2.yyyy, r1.wwww).w, 0.0f, 1.0f);
  let v_173 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.z = (r1.z * v_173.z);
  r1.z = (r1.z * 1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_174 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(r2.x, v_174.xyz);
  let v_175 = fma(r1.xxx, r2.yzw, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(r2.x, v_175.xyz);
  let v_176 = ((-(r2.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_176.xyz, r3.w);
  let v_177 = fma(r2.xxx, r3.xyz, r2.yzw);
  r2 = vec4<f32>(v_177.xyz, r2.w);
  let v_178 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_179 = (r2.xyz + v_178.xyz);
  r2 = vec4<f32>(v_179.xyz, r2.w);
  let v_180 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_180.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_181 = fma(r1.yyy, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_181.xyz, r1.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r2.x) != 0u)) {
    let v_182 = (v5.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_182.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r2.x = (r2.x + -1.0f);
    r2.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r2.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  } else {
    r2.x = 1.0f;
  }
  let v_183 = -(r0.xyzx);
  let v_184 = fma(r1.xyz, r2.xxx, v_183.xyz);
  r1 = vec4<f32>(v_184.xyz, r1.w);
  let v_185 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_185.xyz, r0.w);
  let v_186 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_186.xyz, o0.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  o1 = (r0.x * v0.z);
  o0.w = r0.w;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @builtin(position) v_187 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v4, v_187);
  return tint_symbol_7(o0, o1, o2);
}
