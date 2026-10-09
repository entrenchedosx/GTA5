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

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
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
  let v_4 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r1.z = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_6 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = (r2.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(r2.xxx, cb6_6.tint_symbol_4[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(r2.zzz, cb6_6.tint_symbol_4[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r3.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = &(x0[0u]);
  let v_12 = r4;
  *(v_11) = vec4<f32>(v_12.xyz, (*(v_11)).w);
  let v_13 = fma(r3.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = &(x0[1u]);
  let v_15 = r5;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r3.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = &(x0[2u]);
  let v_18 = r6;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r3.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = &(x0[3u]);
  let v_21 = r3;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_23 = r7;
  r7 = vec4<f32>(v_23.x, v_22.x, v_23.z, v_22.y);
  r1.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_24 = abs(r6.yyyy);
  r2.w = max(v_24.w, abs(r6.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r1.w)));
  let v_25 = (bitcast<u32>(r2.w) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_26, v_25);
  let v_27 = abs(r5.yyyy);
  r3.z = max(v_27.z, abs(r5.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.w)));
  let v_28 = bitcast<u32>(r3.z);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_28 != 0u));
  let v_29 = abs(r4.yyyy);
  r3.z = max(v_29.z, abs(r4.xxxx).z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.z < r1.w)));
  let v_30 = bitcast<u32>(r1.w);
  r1.w = select(r2.w, 0.0f, (v_30 != 0u));
  let v_31 = x0[bitcast<i32>(r1.w)];
  r4 = vec4<f32>(v_31.xyz, r4.w);
  r1.w = f32(bitcast<i32>(r1.w));
  r2.w = (r1.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r1.w = dot(r5, cb6_6.tint_symbol_4[12u]);
  r3.z = dot(r5, cb6_6.tint_symbol_4[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  r1.w = ((-(r1.wwww)).w + r4.z);
  let v_32 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_32.xy, r6.z, v_32.z);
  r6.z = dpdx(r1.w);
  let v_33 = dpdy(r5.yxy);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  r8.w = dpdy(r1.w);
  let v_34 = (r6.yw * r8.yw);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  let v_35 = -(r4.xyxx);
  let v_36 = fma(r6.xz, r8.xz, v_35.xy);
  r9 = vec4<f32>(v_36.xy, r9.zw);
  r3.w = (1.0f / r9.x);
  r4.x = (r6.z * r8.y);
  let v_37 = -(r4.xxxx);
  r9.z = fma(r6.x, r8.w, v_37.z);
  let v_38 = (r3.ww * r9.yz);
  r4 = vec4<f32>(v_38.xy, r4.zw);
  let v_39 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_39.xy, r4.zw);
  let v_40 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_40.xy, r4.zw);
  r1.w = fma((-(r3.zzzz)).w, r4.x, r1.w);
  r1.w = fma((-(r3.zzzz)).w, r4.y, r1.w);
  let v_41 = bitcast<u32>(r2.w);
  let v_42 = r1.w;
  r7.z = select(r4.z, v_42, (v_41 != 0u));
  r5.z = 0.0f;
  let v_43 = (r5.xyz + r7.ywz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r7 = vec4<f32>(v_44.xy, r7.zw);
  let v_45 = (r5.xyz + r7.xyz);
  r6 = vec4<f32>(v_45.xyz, r6.w);
  let v_46 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r7 = vec4<f32>(v_46.xy, r7.zw);
  let v_47 = (r5.xyz + r7.xyz);
  r8 = vec4<f32>(v_47.xyz, r8.w);
  let v_48 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r7 = vec4<f32>(v_48.xy, r7.zw);
  let v_49 = (r5.xyz + r7.xyz);
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r7 = vec4<f32>(v_50.xy, r7.zw);
  let v_51 = (r5.xyz + r7.xyz);
  r10 = vec4<f32>(v_51.xyz, r10.w);
  let v_52 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r7 = vec4<f32>(v_52.xy, r7.zw);
  let v_53 = (r5.xyz + r7.xyz);
  r11 = vec4<f32>(v_53.xyz, r11.w);
  let v_54 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r7 = vec4<f32>(v_54.xy, r7.zw);
  let v_55 = (r5.xyz + r7.xyz);
  r12 = vec4<f32>(v_55.xyz, r12.w);
  let v_56 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r7 = vec4<f32>(v_56.xy, r7.zw);
  let v_57 = (r5.xyz + r7.xyz);
  r13 = vec4<f32>(v_57.xyz, r13.w);
  let v_58 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r7 = vec4<f32>(v_58.xy, r7.zw);
  let v_59 = (r5.xyz + r7.xyz);
  r14 = vec4<f32>(v_59.xyz, r14.w);
  let v_60 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r7 = vec4<f32>(v_60.xy, r7.zw);
  let v_61 = (r5.xyz + r7.xyz);
  r15 = vec4<f32>(v_61.xyz, r15.w);
  let v_62 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r7 = vec4<f32>(v_62.xy, r7.zw);
  let v_63 = (r5.xyz + r7.xyz);
  r16 = vec4<f32>(v_63.xyz, r16.w);
  let v_64 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r7 = vec4<f32>(v_64.xy, r7.zw);
  let v_65 = (r5.xyz + r7.xyz);
  r17 = vec4<f32>(v_65.xyz, r17.w);
  let v_66 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r7 = vec4<f32>(v_66.xy, r7.zw);
  let v_67 = (r5.xyz + r7.xyz);
  r18 = vec4<f32>(v_67.xyz, r18.w);
  let v_68 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r7 = vec4<f32>(v_68.xy, r7.zw);
  let v_69 = (r5.xyz + r7.xyz);
  r19 = vec4<f32>(v_69.xyz, r19.w);
  let v_70 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r7 = vec4<f32>(v_70.xy, r7.zw);
  let v_71 = (r5.xyz + r7.xyz);
  r20 = vec4<f32>(v_71.xyz, r20.w);
  let v_72 = (cb6_6.tint_symbol_4[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r7 = vec4<f32>(v_72.xy, r7.zw);
  let v_73 = (r5.xyz + r7.xyz);
  r5 = vec4<f32>(v_73.xyz, r5.w);
  let v_74 = r4.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_74.xy, r4.z);
  let v_75 = r6.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_75.xy, r6.z);
  let v_76 = r8.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_76.xy, r8.z);
  let v_77 = r9.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_77.xy, r9.z);
  let v_78 = r10.xyxx;
  r6.x = textureSampleCompareLevel(t15, s15, v_78.xy, r10.z);
  let v_79 = r11.xyxx;
  r6.y = textureSampleCompareLevel(t15, s15, v_79.xy, r11.z);
  let v_80 = r12.xyxx;
  r6.z = textureSampleCompareLevel(t15, s15, v_80.xy, r12.z);
  let v_81 = r13.xyxx;
  r6.w = textureSampleCompareLevel(t15, s15, v_81.xy, r13.z);
  let v_82 = r14.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_82.xy, r14.z);
  let v_83 = r15.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_83.xy, r15.z);
  let v_84 = r16.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_84.xy, r16.z);
  let v_85 = r17.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_85.xy, r17.z);
  let v_86 = r18.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_86.xy, r18.z);
  let v_87 = r19.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_87.xy, r19.z);
  let v_88 = r20.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_88.xy, r20.z);
  let v_89 = r5.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_89.xy, r5.z);
  r4 = (r4 + r6);
  r4 = (r7 + r4);
  r4 = (r8 + r4);
  r1.w = dot(r4, vec4<f32>(1.0f));
  r1.z = clamp(fma(r1.zzzz, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).z, 0.0f, 1.0f);
  let v_90 = abs(r3.yyyy);
  r2.w = max(v_90.w, abs(r3.xxxx).w);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = (r2.w * r1.z);
  r1.z = fma(r1.w, 0.0625f, r1.z);
  let v_91 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_91.xyz, r1.w);
  r1.z = min(r1.z, 1.0f);
  r1.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_4[3u].z);
  let v_92 = -(r1.zzzz);
  r1.z = fma(r1.w, v_92.z, r1.z);
  let v_93 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_94 = dot(r0.yzw, v_93.xyz);
  r1.w = clamp(vec4<f32>(v_94, v_94, v_94, v_94).w, 0.0f, 1.0f);
  let v_95 = (r1.www * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_95.xyz, r3.w);
  r0.x = fma(v1.z, r0.x, cb3_3.tint_symbol_2[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_96 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_96.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_97 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_97.xyz, r5.w);
  let v_98 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_98.xyz, r5.w);
  let v_99 = fma(r4.xyz, r1.www, r5.xyz);
  r4 = vec4<f32>(v_99.xyz, r4.w);
  let v_100 = (r1.yyy * r4.xyz);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  let v_101 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_101.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_102 = dot(r6.xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_102, v_102, v_102, v_102).x, 0.0f, 1.0f);
  let v_103 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r5.xyz);
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = fma(r0.xyz, r1.xxx, r4.xyz);
  r0 = vec4<f32>(v_104.xyz, r0.w);
  let v_105 = fma(r3.xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_105.xyz, r0.w);
  o0.w = (v0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r0.w);
    let v_106 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r1.y = (r1.x + v_106.y);
    r1.y = max(r1.y, 0.0f);
    r1.x = (r1.y / r1.x);
    r1.x = (r1.x * r2.z);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
    r1.w = (r1.z * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.z = (r1.w / r1.z);
    let v_107 = bitcast<u32>(r1.x);
    r1.x = select(1.0f, r1.z, (v_107 != 0u));
    r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
    r1.x = (r1.x * r1.z);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = min(r1.x, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_108 = (r0.www * r2.xyz);
    r3 = vec4<f32>(v_108.xyz, r3.w);
    let v_109 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_109, v_109, v_109, v_109).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_110 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.w = clamp(vec4<f32>(v_110, v_110, v_110, v_110).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
    r1.w = exp2(r1.w);
    r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
    let v_111 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.w = (r1.y + v_111.w);
    r2.w = max(r2.w, 0.0f);
    r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
    r2.w = (r2.w * 1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r1.z = clamp(fma(r1.xxxx, r2.wwww, r1.zzzz).z, 0.0f, 1.0f);
    let v_112 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.y = (r1.y * v_112.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    let v_113 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_113.xyz, r3.w);
    let v_114 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_114.xyz, r3.w);
    let v_115 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_115.xyz, r4.w);
    let v_116 = fma(r1.www, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_116.xyz, r3.w);
    let v_117 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_118 = (r3.xyz + v_117.xyz);
    r3 = vec4<f32>(v_118.xyz, r3.w);
    let v_119 = fma(r1.yyy, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r3 = vec4<f32>(v_119.xyz, r3.w);
    r4.x = cb3_3.tint_symbol_2[55u].w;
    r4.y = cb3_3.tint_symbol_2[56u].w;
    r4.z = cb3_3.tint_symbol_2[57u].w;
    let v_120 = ((-(r3.xyzx)).xyz + r4.xyz);
    r4 = vec4<f32>(v_120.xyz, r4.w);
    let v_121 = fma(r1.xxx, r4.xyz, r3.xyz);
    r1 = vec4<f32>(v_121.xy, r1.z, v_121.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_122 = (v3.xy * cb2_2.tint_symbol_1[18u].zw);
      r3 = vec4<f32>(v_122.xy, r3.zw);
      r3 = textureSample(t11, s11, r3.xyxx.xy);
      r0.w = (r3.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_123 = -(r0.xyxz);
    let v_124 = fma(r1.xyw, r0.www, v_123.xyw);
    r1 = vec4<f32>(v_124.xy, r1.z, v_124.z);
    let v_125 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_125.xyz, r1.w);
  } else {
    r0.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.w);
    let v_126 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_126.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r2.z);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_127 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_127 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_128 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_128.xyz, r2.w);
    let v_129 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_129, v_129, v_129, v_129).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_130 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_130, v_130, v_130, v_130).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_131 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r2.w + v_131.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.yyyy, r3.xxxx).y, 0.0f, 1.0f);
    let v_132 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.w * v_132.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_133 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_133.xyz, r3.w);
    let v_134 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_134.xyz, r3.w);
    let v_135 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_135.xyz, r4.w);
    let v_136 = fma(r2.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_136.xyz, r3.w);
    let v_137 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_138 = (r3.xyz + v_137.xyz);
    r3 = vec4<f32>(v_138.xyz, r3.w);
    let v_139 = fma(r2.zzz, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_139.x, r2.y, v_139.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_140 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_140.xyz, r3.w);
    let v_141 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_141.x, r2.y, v_141.yz);
    let v_142 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_142.x, r2.y, v_142.yz);
    let v_143 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_143.xyz, r1.w);
  }
  let v_144 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_144.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_145 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v_145);
  return o0;
}
