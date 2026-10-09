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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb17_struct {
  tint_symbol_4 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb17_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v6 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  x1[0u].x = v6[0u];
  x1[0u].y = v6[1u];
  x1[0u].z = v6[2u];
  x1[0u].w = v6[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * v1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_2 = (r2.yx * r2.yx);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  r1.w = fma((-(r2.zzzz)).w, 16.0f, 14.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r1.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  let v_3 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r2 = vec4<f32>(r2.xy, v_3.xy);
  let v_4 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  r1.w = fma(r1.z, 0.5f, 0.5f);
  r4.x = fma(r1.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r1.w + 0.30000001192092895508f);
  let v_5 = (r3.xy * r4.xy);
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r1.w = (v4.z * cb13_13.tint_symbol_4[16u].x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = fract(cb13_13.tint_symbol_4[16u].z);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r1.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      let v_6 = fract(v4.xy);
      r4 = vec4<f32>(v_6.xy, r4.zw);
      let v_7 = abs(v4.zzzz);
      let v_8 = abs(v4.wwww);
      r4.z = fma(r4.y, v_7.z, v_8.z);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.w)));
      r4.w = ((-(r4.xxxx)).w + 1.0f);
      let v_9 = bitcast<vec2<u32>>(r1.ww);
      let v_10 = r4.zw;
      let v_11 = select(r4.xz, v_10, (v_9 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_11.xy);
      r4 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    } else {
      r4 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r4.w);
    }
    r1.w = ((-(r4.zzzz)).w + 1.0f);
    r1.w = (r1.w * r1.w);
    r1.w = (r4.x * r1.w);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r2.w = fma(r1.w, r2.x, r2.w);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r2.z = fma(r1.w, r2.x, r2.z);
    let v_12 = -(r0.xyzx);
    let v_13 = fma(r0.xyz, cb13_13.tint_symbol_4[7u].xyz, v_12.xyz);
    r5 = vec4<f32>(v_13.xyz, r5.w);
    let v_14 = fma(r4.yyy, r5.xyz, r0.xyz);
    r5 = vec4<f32>(v_14.xyz, r5.w);
    let v_15 = (r4.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r4 = vec4<f32>(v_15.xy, r4.z, v_15.z);
    let v_16 = fma(r5.xyz, r4.zzz, r4.xyw);
    r0 = vec4<f32>(v_16.xyz, r0.w);
  }
  let v_17 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(v2.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r4.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r4.xyz, r1.www, v_21.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r2.x = dot(r6.xyz, r6.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_23 = (r2.xxx * r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r2.z = clamp(r2.zzzz.z, 0.0f, 1.0f);
  let v_24 = (r3.xy * r3.xy);
  r2 = vec4<f32>(v_24.xy, r2.zw);
  r3.x = (r2.w + -500.0f);
  r3.x = max(r3.x, 0.0f);
  let v_25 = -(r3.xxxx);
  r2.w = (r2.w + v_25.w);
  r3.x = (r3.x * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.x);
  r3.x = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_26 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r3 = vec4<f32>(r3.x, v_26.xyz);
  let v_27 = (r3.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = fma(r3.yyy, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r3.www, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_30.xyz, r8.w);
  let v_31 = &(x0[0u]);
  let v_32 = r8;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_33.xyz, r9.w);
  let v_34 = &(x0[1u]);
  let v_35 = r9;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_36.xyz, r10.w);
  let v_37 = &(x0[2u]);
  let v_38 = r10;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = &(x0[3u]);
  let v_41 = r7;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_43 = r11;
  r11 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_44 = abs(r10.yyyy);
  r5.w = max(v_44.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_45 = (bitcast<u32>(r5.w) != 0u);
  let v_46 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_46, v_45);
  let v_47 = abs(r9.yyyy);
  r6.w = max(v_47.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_48 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_48 != 0u));
  let v_49 = abs(r8.yyyy);
  r6.w = max(v_49.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_50 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_50 != 0u));
  let v_51 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_51.xyz, r8.w);
  r4.w = f32(bitcast<i32>(r4.w));
  r5.w = (r4.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r4.w = dot(r9, cb6_6.tint_symbol_6[12u]);
  r6.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  r4.w = ((-(r4.wwww)).w + r8.z);
  let v_52 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_52.xy, r10.z, v_52.z);
  r10.z = dpdx(r4.w);
  let v_53 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_53.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_54 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_54.xy);
  let v_55 = -(r7.zwzz);
  let v_56 = fma(r10.xz, r12.xz, v_55.xy);
  r13 = vec4<f32>(v_56.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_57 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_57.z);
  let v_58 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_58.xy);
  let v_59 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_59.xy);
  let v_60 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_60.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_61 = bitcast<u32>(r5.w);
  let v_62 = r4.w;
  r11.z = select(r8.z, v_62, (v_61 != 0u));
  r9.z = 0.0f;
  let v_63 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_63.xyz, r8.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_64.xy, r11.zw);
  let v_65 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_66.xy, r11.zw);
  let v_67 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_68.xy, r11.zw);
  let v_69 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_69.xyz, r13.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_70.xy, r11.zw);
  let v_71 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_71.xyz, r14.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_73.xyz, r15.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_75.xyz, r16.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_77.xyz, r17.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_79.xyz, r18.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_81.xyz, r19.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_83.xyz, r20.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_85.xyz, r21.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_87.xyz, r22.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_89.xyz, r23.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_91.xyz, r24.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_93.xyz, r9.w);
  let v_94 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_94.xy, r8.z);
  let v_95 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_95.xy, r10.z);
  let v_96 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_96.xy, r12.z);
  let v_97 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_99.xy, r15.z);
  let v_100 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_100.xy, r16.z);
  let v_101 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_101.xy, r17.z);
  let v_102 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_103.xy, r19.z);
  let v_104 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_105.xy, r21.z);
  let v_106 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_106.xy, r22.z);
  let v_107 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_107.xy, r23.z);
  let v_108 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_108.xy, r24.z);
  let v_109 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_109.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.w = dot(r8, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_110 = abs(r7.yyyy);
  r5.w = max(v_110.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r5.w * r3.x);
  r3.x = fma(r4.w, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_111 = -(r3.xxxx);
  r3.x = fma(r4.w, v_111.x, r3.x);
  let v_112 = dot(r1.xyz, v_21.xyz);
  r4.w = clamp(vec4<f32>(v_112, v_112, v_112, v_112).w, 0.0f, 1.0f);
  let v_113 = dot(r5.xyz, r1.xyz);
  r7.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot(r6.xyz, v_21.xyz);
  r7.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  let v_115 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_115.xy, r7.zw);
  let v_116 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_116.xy);
  let v_117 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_117.xy);
  let v_118 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_118.xy, r7.zw);
  r5.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_119 = fma(cb10_10.tint_symbol_5[0u].yy, r7.xy, r5.ww);
  r7 = vec4<f32>(v_119.xy, r7.zw);
  let v_120 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_120.xy);
  r2.w = (r7.z * 0.125f);
  r6.w = fma((-(r2.zzzz)).w, r7.x, 1.0f);
  r6.x = dot(r1.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r7.w);
  r6.x = exp2(r6.x);
  r6.x = (r7.y * r6.x);
  r6.x = (r2.w * r6.x);
  r6.x = (r2.z * r6.x);
  r6.x = (r4.w * r6.x);
  r4.w = (r4.w * r6.w);
  let v_121 = fma(r0.xyz, r4.www, r6.xxx);
  r6 = vec4<f32>(v_121.xyz, r6.w);
  let v_122 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_122.xyz, r6.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_123 = (v_18.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_123.xyz, r8.w);
    let v_124 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_124.xyz, r9.w);
    r7.y = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_2[19u].w);
    let v_125 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    let v_126 = (r9.xyz + v_18.xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = bitcast<vec3<u32>>(r7.xxx);
    let v_128 = r8.xyz;
    let v_129 = select(r9.xyz, v_128, (v_127 != vec3<u32>()));
    r7 = vec4<f32>(v_129.xyz, r7.w);
    r8.x = dot(r7.xyz, r7.xyz);
    let v_130 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_130.xyz, r7.w);
    r8.y = dot(r7.xyz, r7.xyz);
    r8.y = inverseSqrt(r8.y);
    let v_131 = (r7.xyz * r8.yyy);
    r7 = vec4<f32>(v_131.xyz, r7.w);
    r8.x = clamp(fma(-(r8.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r8.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r8.y = fma(r8.y, r8.x, cb3_3.tint_symbol_2[11u].w);
    r8.x = (r8.x / r8.y);
    let v_132 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.y = dot(r7.xyz, v_132.xyz);
    r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    let v_133 = dot(r7.xyz, r1.xyz);
    r8.z = clamp(vec4<f32>(v_133, v_133, v_133, v_133).z, 0.0f, 1.0f);
    r8.y = (r8.y * r8.z);
    r8.z = (r8.x * r8.y);
    let v_134 = (r8.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_134.xyz, r9.w);
    let v_135 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    let v_136 = fma(r4.xyz, r1.www, r7.xyz);
    r7 = vec4<f32>(v_136.xyz, r7.w);
    r8.z = dot(r7.xyz, r7.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_137 = (r7.xyz * r8.zzz);
    r7 = vec4<f32>(v_137.xyz, r7.w);
    let v_138 = dot(r7.xyz, r5.xyz);
    r8.z = clamp(vec4<f32>(v_138, v_138, v_138, v_138).z, 0.0f, 1.0f);
    r8.z = ((-(r8.zzzz)).z + 1.0f);
    r8.w = (r8.z * r8.z);
    r8.w = (r8.w * r8.w);
    r8.z = (r8.w * r8.z);
    r8.z = fma(cb10_10.tint_symbol_5[0u].y, r8.z, r5.w);
    let v_139 = dot(r7.xyz, r1.xyz);
    r7.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.z);
    r7.x = (r8.y * r7.x);
    r7.x = (r8.x * r7.x);
    r7.x = (r2.w * r7.x);
    let v_140 = (r7.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_140.xyz, r7.w);
  }
  r8.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.x) != 0u)) {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.x = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    let v_141 = bitcast<u32>(r8.y);
    let v_142 = r8.x;
    r4.w = select(r4.w, v_142, (v_141 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_143 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[4u].xyz);
      r8 = vec4<f32>(r8.x, v_143.xyz);
      let v_144 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_144.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_145 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      let v_146 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      let v_147 = bitcast<vec3<u32>>(r8.xxx);
      let v_148 = r8.yzw;
      let v_149 = select(r10.xyz, v_148, (v_147 != vec3<u32>()));
      r8 = vec4<f32>(v_149.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_150 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_150.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_151 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_151.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[12u].w);
      r8.w = (r8.w / r9.w);
      let v_152 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r8.xyz, v_152.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_153 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_154 = (r10.xxx * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_155.xyz, r9.w);
      let v_156 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_156.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_157 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_157.xyz, r8.w);
      let v_158 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_159 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_160 = fma(r8.xxx, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_160.xyz, r7.w);
    }
  } else {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_161 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[5u].xyz);
      r8 = vec4<f32>(r8.x, v_161.xyz);
      let v_162 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_164.xyz, r10.w);
      let v_165 = bitcast<vec3<u32>>(r8.xxx);
      let v_166 = r8.yzw;
      let v_167 = select(r10.xyz, v_166, (v_165 != vec3<u32>()));
      r8 = vec4<f32>(v_167.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_168 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_168.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_169 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_169.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[13u].w);
      r8.w = (r8.w / r9.w);
      let v_170 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r8.xyz, v_170.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_171 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_171, v_171, v_171, v_171).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_172 = (r10.xxx * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_173.xyz, r9.w);
      let v_174 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_174.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_175 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_175.xyz, r8.w);
      let v_176 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_176, v_176, v_176, v_176).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_177 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_177, v_177, v_177, v_177).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_178 = fma(r8.xxx, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_178.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_179 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[6u].xyz);
      r8 = vec4<f32>(r8.x, v_179.xyz);
      let v_180 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[22u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      let v_182 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_182.xyz, r10.w);
      let v_183 = bitcast<vec3<u32>>(r8.xxx);
      let v_184 = r8.yzw;
      let v_185 = select(r10.xyz, v_184, (v_183 != vec3<u32>()));
      r8 = vec4<f32>(v_185.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_186 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_186.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_187 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_187.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[14u].w);
      r8.w = (r8.w / r9.w);
      let v_188 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.w = dot(r8.xyz, v_188.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_189 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_189, v_189, v_189, v_189).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_190 = (r10.xxx * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
      let v_192 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_192.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_193 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_193.xyz, r8.w);
      let v_194 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_194, v_194, v_194, v_194).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_195 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_195, v_195, v_195, v_195).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_196 = fma(r8.xxx, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_196.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_197 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[7u].xyz);
      r8 = vec4<f32>(r8.x, v_197.xyz);
      let v_198 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r10 = vec4<f32>(v_198.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[23u].w);
      let v_199 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.www, cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_199.xyz, r10.w);
      let v_200 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_200.xyz, r10.w);
      let v_201 = bitcast<vec3<u32>>(r8.xxx);
      let v_202 = r8.yzw;
      let v_203 = select(r10.xyz, v_202, (v_201 != vec3<u32>()));
      r8 = vec4<f32>(v_203.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_204 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_204.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_205 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_205.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[15u].w);
      r8.w = (r8.w / r9.w);
      let v_206 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r9.w = dot(r8.xyz, v_206.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_207 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_208 = (r10.xxx * cb3_3.tint_symbol_2[23u].xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_209.xyz, r9.w);
      let v_210 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_210.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_211 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_211.xyz, r8.w);
      let v_212 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_212, v_212, v_212, v_212).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_213 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_213, v_213, v_213, v_213).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_214 = fma(r8.xxx, cb3_3.tint_symbol_2[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_214.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_215 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[8u].xyz);
      r8 = vec4<f32>(r8.x, v_215.xyz);
      let v_216 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r10 = vec4<f32>(v_216.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[24u].w);
      let v_217 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.www, cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_217.xyz, r10.w);
      let v_218 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_218.xyz, r10.w);
      let v_219 = bitcast<vec3<u32>>(r8.xxx);
      let v_220 = r8.yzw;
      let v_221 = select(r10.xyz, v_220, (v_219 != vec3<u32>()));
      r8 = vec4<f32>(v_221.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_222 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_222.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_223 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_223.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[16u].w);
      r8.w = (r8.w / r9.w);
      let v_224 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r9.w = dot(r8.xyz, v_224.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_225 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_225, v_225, v_225, v_225).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_226 = (r10.xxx * cb3_3.tint_symbol_2[24u].xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_227.xyz, r9.w);
      let v_228 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_228.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_229 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_229.xyz, r8.w);
      let v_230 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_230, v_230, v_230, v_230).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_231 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_231, v_231, v_231, v_231).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_232 = fma(r8.xxx, cb3_3.tint_symbol_2[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_232.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_233 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[9u].xyz);
      r8 = vec4<f32>(r8.x, v_233.xyz);
      let v_234 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r10 = vec4<f32>(v_234.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[25u].w);
      let v_235 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.www, cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_236.xyz, r10.w);
      let v_237 = bitcast<vec3<u32>>(r8.xxx);
      let v_238 = r8.yzw;
      let v_239 = select(r10.xyz, v_238, (v_237 != vec3<u32>()));
      r8 = vec4<f32>(v_239.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_240 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_240.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_241 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_241.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[17u].w);
      r8.w = (r8.w / r9.w);
      let v_242 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r9.w = dot(r8.xyz, v_242.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_243 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_243, v_243, v_243, v_243).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_244 = (r10.xxx * cb3_3.tint_symbol_2[25u].xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_245.xyz, r9.w);
      let v_246 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_246.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_247 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_247.xyz, r8.w);
      let v_248 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_248, v_248, v_248, v_248).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_249 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_249, v_249, v_249, v_249).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_250 = fma(r8.xxx, cb3_3.tint_symbol_2[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_250.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_251 = (v_18.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r8 = vec4<f32>(v_251.xyz, r8.w);
      let v_252 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      r8.w = dot(r10.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[26u].w);
      let v_253 = fma(cb3_3.tint_symbol_2[18u].xyz, r8.www, cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_253.xyz, r10.w);
      let v_254 = (r10.xyz + v_18.xyz);
      r10 = vec4<f32>(v_254.xyz, r10.w);
      let v_255 = bitcast<vec3<u32>>(r4.www);
      let v_256 = r8.xyz;
      let v_257 = select(r10.xyz, v_256, (v_255 != vec3<u32>()));
      r8 = vec4<f32>(v_257.xyz, r8.w);
      r4.w = dot(r8.xyz, r8.xyz);
      let v_258 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_258.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_259 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_259.xyz, r8.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r4.w, cb3_3.tint_symbol_2[18u].w);
      r4.w = (r4.w / r8.w);
      let v_260 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r8.w = dot(r8.xyz, v_260.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_261 = dot(r8.xyz, r1.xyz);
      r9.w = clamp(vec4<f32>(v_261, v_261, v_261, v_261).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r4.w * r8.w);
      let v_262 = (r9.www * cb3_3.tint_symbol_2[26u].xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_263.xyz, r9.w);
      let v_264 = fma(r4.xyz, r1.www, r8.xyz);
      r4 = vec4<f32>(v_264.xyz, r4.w);
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_265 = (r1.www * r4.xyz);
      r4 = vec4<f32>(v_265.xyz, r4.w);
      let v_266 = dot(r4.xyz, r5.xyz);
      r1.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r5.x = (r1.w * r1.w);
      r5.x = (r5.x * r5.x);
      r1.w = (r1.w * r5.x);
      r1.w = fma(cb10_10.tint_symbol_5[0u].y, r1.w, r5.w);
      let v_267 = dot(r4.xyz, r1.xyz);
      r4.x = clamp(vec4<f32>(v_267, v_267, v_267, v_267).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r7.w);
      r4.x = exp2(r4.x);
      r1.w = (r1.w * r4.x);
      r1.w = (r8.w * r1.w);
      r1.w = (r4.w * r1.w);
      r1.w = (r2.w * r1.w);
      let v_268 = fma(r1.www, cb3_3.tint_symbol_2[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_268.xyz, r7.w);
    }
  }
  r1.w = (r6.w * r6.w);
  r2.z = (r2.z * r2.z);
  let v_269 = (r7.xyz * r2.zzz);
  r4 = vec4<f32>(v_269.xyz, r4.w);
  let v_270 = fma(r1.www, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_270.xyz, r4.w);
  let v_271 = fma(r6.xyz, r3.xxx, r4.xyz);
  r4 = vec4<f32>(v_271.xyz, r4.w);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_272 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_272.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_273 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_273.xyz, r6.w);
  let v_274 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_274.xyz, r6.w);
  let v_275 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_275.xyz, r5.w);
  let v_276 = (r2.yyy * r5.xyz);
  r2 = vec4<f32>(r2.x, v_276.xyz);
  let v_277 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_277.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_278 = dot(r6.xyz, r1.xyz);
  r0.w = clamp(vec4<f32>(v_278, v_278, v_278, v_278).w, 0.0f, 1.0f);
  let v_279 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r1 = vec4<f32>(v_279.xyz, r1.w);
  let v_280 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_280.xyz, r1.w);
  let v_281 = (r6.www * r1.xyz);
  r1 = vec4<f32>(v_281.xyz, r1.w);
  let v_282 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_282.xyz, r0.w);
  r0.w = dot(r3.yzw, r3.yzw);
  r1.x = sqrt(r0.w);
  let v_283 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_283.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_284 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_284 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_285 = (r0.www * r3.yzw);
  r2 = vec4<f32>(v_285.xyz, r2.w);
  let v_286 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_286, v_286, v_286, v_286).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_287 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_288 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_288.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_289 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_289.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_290 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_290.xyz, r2.w);
  let v_291 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_291.xyz, r2.w);
  let v_292 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_292.xyz, r3.w);
  let v_293 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_293.xyz, r2.w);
  let v_294 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_295 = (r2.xyz + v_294.xyz);
  r2 = vec4<f32>(v_295.xyz, r2.w);
  let v_296 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_296.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_297 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_297.xy, r1.z, v_297.z);
  let v_298 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_298.xy, r1.z, v_298.z);
  let v_299 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_299.xyz, r0.w);
  let v_300 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_300.xyz, r0.w);
  let v_301 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_301.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
