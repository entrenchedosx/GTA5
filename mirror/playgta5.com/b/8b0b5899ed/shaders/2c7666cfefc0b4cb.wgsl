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
  r3.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  let v_3 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r2 = vec4<f32>(r2.xy, v_3.xy);
  let v_4 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_4.xy, r4.zw);
  r1.w = fma(r1.z, 0.5f, 0.5f);
  r5.x = fma(r1.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.y = (r1.w + 0.30000001192092895508f);
  let v_5 = (r4.xy * r5.xy);
  r4 = vec4<f32>(v_5.xy, r4.zw);
  r1.w = (v4.z * cb13_13.tint_symbol_4[16u].x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = fract(cb13_13.tint_symbol_4[16u].z);
    r4.z = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r1.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
      let v_6 = fract(v4.xy);
      r5 = vec4<f32>(v_6.xy, r5.zw);
      let v_7 = abs(v4.zzzz);
      let v_8 = abs(v4.wwww);
      r5.z = fma(r5.y, v_7.z, v_8.z);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.w)));
      r5.w = ((-(r5.xxxx)).w + 1.0f);
      let v_9 = bitcast<vec2<u32>>(r1.ww);
      let v_10 = r5.zw;
      let v_11 = select(r5.xz, v_10, (v_9 != vec2<u32>()));
      r4 = vec4<f32>(r4.xy, v_11.xy);
      r5 = textureSampleLevel(t14, s14, r4.zwzz.xy, 0.0f);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
    }
    r1.w = ((-(r5.zzzz)).w + 1.0f);
    r1.w = (r1.w * r1.w);
    r1.w = (r5.x * r1.w);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r2.w = fma(r1.w, r2.x, r2.w);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r2.z = fma(r1.w, r2.x, r2.z);
    let v_12 = -(r0.xyzx);
    let v_13 = fma(r0.xyz, cb13_13.tint_symbol_4[7u].xyz, v_12.xyz);
    r6 = vec4<f32>(v_13.xyz, r6.w);
    let v_14 = fma(r5.yyy, r6.xyz, r0.xyz);
    r6 = vec4<f32>(v_14.xyz, r6.w);
    let v_15 = (r5.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
    let v_16 = fma(r6.xyz, r5.zzz, r5.xyw);
    r0 = vec4<f32>(v_16.xyz, r0.w);
  }
  let v_17 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(v2.xyzx);
  let v_19 = (v_18.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r5.xyz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r5.xyz, r1.www, v_21.xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  r2.x = dot(r7.xyz, r7.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_23 = (r2.xxx * r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  r2.z = clamp(r2.zzzz.z, 0.0f, 1.0f);
  let v_24 = (r4.xy * r4.xy);
  r2 = vec4<f32>(v_24.xy, r2.zw);
  r4.x = (r2.w + -500.0f);
  r4.x = max(r4.x, 0.0f);
  let v_25 = -(r4.xxxx);
  r2.w = (r2.w + v_25.w);
  r4.x = (r4.x * 558.0f);
  r2.w = fma(r2.w, 3.0f, r4.x);
  r4.x = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_26 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r4 = vec4<f32>(r4.x, v_26.xyz);
  let v_27 = (r4.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = fma(r4.yyy, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = fma(r4.www, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_30.xyz, r9.w);
  let v_31 = &(x0[0u]);
  let v_32 = r9;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_33.xyz, r10.w);
  let v_34 = &(x0[1u]);
  let v_35 = r10;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_36.xyz, r11.w);
  let v_37 = &(x0[2u]);
  let v_38 = r11;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  let v_39 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  let v_40 = &(x0[3u]);
  let v_41 = r8;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_43 = r12;
  r12 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  r5.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_44 = abs(r11.yyyy);
  r6.w = max(v_44.w, abs(r11.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_45 = (bitcast<u32>(r6.w) != 0u);
  let v_46 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_46, v_45);
  let v_47 = abs(r10.yyyy);
  r7.w = max(v_47.w, abs(r10.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r5.w)));
  let v_48 = bitcast<u32>(r7.w);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_48 != 0u));
  let v_49 = abs(r9.yyyy);
  r7.w = max(v_49.w, abs(r9.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r5.w)));
  let v_50 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_50 != 0u));
  let v_51 = x0[bitcast<i32>(r5.w)];
  r9 = vec4<f32>(v_51.xyz, r9.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.w = (r5.w + 0.5f);
  r6.w = (r6.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r5.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r7.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r9.z);
  let v_52 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_52.xy, r11.z, v_52.z);
  r11.z = dpdx(r5.w);
  let v_53 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_53.xyz, r13.w);
  r13.w = dpdy(r5.w);
  let v_54 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_54.xy);
  let v_55 = -(r8.zwzz);
  let v_56 = fma(r11.xz, r13.xz, v_55.xy);
  r14 = vec4<f32>(v_56.xy, r14.zw);
  r8.z = (1.0f / r14.x);
  r8.w = (r11.z * r13.y);
  let v_57 = -(r8.wwww);
  r14.z = fma(r11.x, r13.w, v_57.z);
  let v_58 = (r8.zz * r14.yz);
  r8 = vec4<f32>(r8.xy, v_58.xy);
  let v_59 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_59.xy);
  let v_60 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_60.xy);
  r5.w = fma((-(r7.wwww)).w, r8.z, r5.w);
  r5.w = fma((-(r7.wwww)).w, r8.w, r5.w);
  let v_61 = bitcast<u32>(r6.w);
  let v_62 = r5.w;
  r12.z = select(r9.z, v_62, (v_61 != 0u));
  r10.z = 0.0f;
  let v_63 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_63.xyz, r9.w);
  let v_64 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_64.xy, r12.zw);
  let v_65 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_65.xyz, r11.w);
  let v_66 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_66.xy, r12.zw);
  let v_67 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_67.xyz, r13.w);
  let v_68 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_68.xy, r12.zw);
  let v_69 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_69.xyz, r14.w);
  let v_70 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_70.xy, r12.zw);
  let v_71 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_71.xyz, r15.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_73.xyz, r16.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_75.xyz, r17.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_77.xyz, r18.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_79.xyz, r19.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_81.xyz, r20.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_83.xyz, r21.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_85.xyz, r22.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_87.xyz, r23.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_89.xyz, r24.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_91.xyz, r25.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_93.xyz, r10.w);
  let v_94 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_94.xy, r9.z);
  let v_95 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_95.xy, r11.z);
  let v_96 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_96.xy, r13.z);
  let v_97 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_97.xy, r14.z);
  let v_98 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_98.xy, r15.z);
  let v_99 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_99.xy, r16.z);
  let v_100 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_100.xy, r17.z);
  let v_101 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_101.xy, r18.z);
  let v_102 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_102.xy, r19.z);
  let v_103 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_103.xy, r20.z);
  let v_104 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_104.xy, r21.z);
  let v_105 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_105.xy, r22.z);
  let v_106 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_106.xy, r23.z);
  let v_107 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_107.xy, r24.z);
  let v_108 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_108.xy, r25.z);
  let v_109 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_109.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r5.w = dot(r9, vec4<f32>(1.0f));
  r4.x = clamp(fma(r4.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_110 = abs(r8.yyyy);
  r6.w = max(v_110.w, abs(r8.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.x = ((-(r4.xxxx)).x + 1.0f);
  r4.x = (r6.w * r4.x);
  r4.x = fma(r5.w, 0.0625f, r4.x);
  r4.x = (r4.x * r4.x);
  r4.x = min(r4.x, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_6[3u].z);
  let v_111 = -(r4.xxxx);
  r4.x = fma(r5.w, v_111.x, r4.x);
  let v_112 = dot(r1.xyz, v_21.xyz);
  r5.w = clamp(vec4<f32>(v_112, v_112, v_112, v_112).w, 0.0f, 1.0f);
  let v_113 = dot(r6.xyz, r1.xyz);
  r8.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
  let v_114 = dot(r7.xyz, v_21.xyz);
  r8.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
  let v_115 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_115.xy, r8.zw);
  let v_116 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_116.xy);
  let v_117 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_117.xy);
  let v_118 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_118.xy, r8.zw);
  r6.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_119 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r6.ww);
  r8 = vec4<f32>(v_119.xy, r8.zw);
  let v_120 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_120.xy);
  r2.w = (r8.z * 0.125f);
  r7.w = fma((-(r2.zzzz)).w, r8.x, 1.0f);
  r7.x = dot(r1.xyz, r7.xyz);
  r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r7.x = log2(r7.x);
  r7.x = (r7.x * r8.w);
  r7.x = exp2(r7.x);
  r7.x = (r8.y * r7.x);
  r7.x = (r2.w * r7.x);
  r7.x = (r2.z * r7.x);
  r7.x = (r5.w * r7.x);
  r5.w = (r5.w * r7.w);
  let v_121 = fma(r0.xyz, r5.www, r7.xxx);
  r7 = vec4<f32>(v_121.xyz, r7.w);
  let v_122 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_122.xyz, r7.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_123 = (v_18.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    let v_124 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_124.xyz, r10.w);
    r8.y = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[19u].wwww)).y, 0.0f, 1.0f);
    r8.y = (r8.y * cb3_3.tint_symbol_2[19u].w);
    let v_125 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_125.xyz, r10.w);
    let v_126 = (r10.xyz + v_18.xyz);
    r10 = vec4<f32>(v_126.xyz, r10.w);
    let v_127 = bitcast<vec3<u32>>(r8.xxx);
    let v_128 = r9.xyz;
    let v_129 = select(r10.xyz, v_128, (v_127 != vec3<u32>()));
    r8 = vec4<f32>(v_129.xyz, r8.w);
    r9.x = dot(r8.xyz, r8.xyz);
    let v_130 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_130.xyz, r8.w);
    r9.y = dot(r8.xyz, r8.xyz);
    r9.y = inverseSqrt(r9.y);
    let v_131 = (r8.xyz * r9.yyy);
    r8 = vec4<f32>(v_131.xyz, r8.w);
    r9.x = clamp(fma(-(r9.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r9.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r9.y = fma(r9.y, r9.x, cb3_3.tint_symbol_2[11u].w);
    r9.x = (r9.x / r9.y);
    let v_132 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.y = dot(r8.xyz, v_132.xyz);
    r9.y = clamp(fma(r9.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    let v_133 = dot(r8.xyz, r1.xyz);
    r9.z = clamp(vec4<f32>(v_133, v_133, v_133, v_133).z, 0.0f, 1.0f);
    r9.y = (r9.y * r9.z);
    r9.z = (r9.x * r9.y);
    let v_134 = (r9.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_134.xyz, r10.w);
    let v_135 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_135.xyz, r10.w);
    let v_136 = fma(r5.xyz, r1.www, r8.xyz);
    r8 = vec4<f32>(v_136.xyz, r8.w);
    r9.z = dot(r8.xyz, r8.xyz);
    r9.z = inverseSqrt(r9.z);
    let v_137 = (r8.xyz * r9.zzz);
    r8 = vec4<f32>(v_137.xyz, r8.w);
    let v_138 = dot(r8.xyz, r6.xyz);
    r9.z = clamp(vec4<f32>(v_138, v_138, v_138, v_138).z, 0.0f, 1.0f);
    r9.z = ((-(r9.zzzz)).z + 1.0f);
    r9.w = (r9.z * r9.z);
    r9.w = (r9.w * r9.w);
    r9.z = (r9.w * r9.z);
    r9.z = fma(cb10_10.tint_symbol_5[0u].y, r9.z, r6.w);
    let v_139 = dot(r8.xyz, r1.xyz);
    r8.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.z);
    r8.x = (r9.y * r8.x);
    r8.x = (r9.x * r8.x);
    r8.x = (r2.w * r8.x);
    let v_140 = (r8.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_140.xyz, r8.w);
  }
  r9.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r9.x) != 0u)) {
    r9.y = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r9.x = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r9.x)));
    let v_141 = bitcast<u32>(r9.y);
    let v_142 = r9.x;
    r5.w = select(r5.w, v_142, (v_141 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_143 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[4u].xyz);
      r9 = vec4<f32>(r9.x, v_143.xyz);
      let v_144 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[20u].w);
      let v_145 = fma(cb3_3.tint_symbol_2[12u].xyz, r10.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      let v_147 = bitcast<vec3<u32>>(r9.xxx);
      let v_148 = r9.yzw;
      let v_149 = select(r11.xyz, v_148, (v_147 != vec3<u32>()));
      r9 = vec4<f32>(v_149.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      let v_150 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_150.xyz, r9.w);
      r10.w = dot(r9.xyz, r9.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_151 = (r9.xyz * r10.www);
      r9 = vec4<f32>(v_151.xyz, r9.w);
      r9.w = clamp(fma(-(r9.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r9.w, cb3_3.tint_symbol_2[12u].w);
      r9.w = (r9.w / r10.w);
      let v_152 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r10.w = dot(r9.xyz, v_152.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_153 = dot(r9.xyz, r1.xyz);
      r11.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r9.w * r10.w);
      let v_154 = (r11.xxx * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_154.xyz, r11.w);
      let v_155 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = fma(r5.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_156.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_157 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_157.xyz, r9.w);
      let v_158 = dot(r9.xyz, r6.xyz);
      r11.x = clamp(vec4<f32>(v_158, v_158, v_158, v_158).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r6.w);
      let v_159 = dot(r9.xyz, r1.xyz);
      r9.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r9.w * r9.x);
      r9.x = (r2.w * r9.x);
      let v_160 = fma(r9.xxx, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_160.xyz, r8.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_161 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[5u].xyz);
      r9 = vec4<f32>(r9.x, v_161.xyz);
      let v_162 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r10.w = clamp(((r10.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[21u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[13u].xyz, r10.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = bitcast<vec3<u32>>(r9.xxx);
      let v_166 = r9.yzw;
      let v_167 = select(r11.xyz, v_166, (v_165 != vec3<u32>()));
      r9 = vec4<f32>(v_167.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      let v_168 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_168.xyz, r9.w);
      r10.w = dot(r9.xyz, r9.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_169 = (r9.xyz * r10.www);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      r9.w = clamp(fma(-(r9.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r9.w, cb3_3.tint_symbol_2[13u].w);
      r9.w = (r9.w / r10.w);
      let v_170 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r10.w = dot(r9.xyz, v_170.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_171 = dot(r9.xyz, r1.xyz);
      r11.x = clamp(vec4<f32>(v_171, v_171, v_171, v_171).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r9.w * r10.w);
      let v_172 = (r11.xxx * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      let v_173 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      let v_174 = fma(r5.xyz, r1.www, r9.xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
      r11.x = dot(r9.xyz, r9.xyz);
      r11.x = inverseSqrt(r11.x);
      let v_175 = (r9.xyz * r11.xxx);
      r9 = vec4<f32>(v_175.xyz, r9.w);
      let v_176 = dot(r9.xyz, r6.xyz);
      r11.x = clamp(vec4<f32>(v_176, v_176, v_176, v_176).x, 0.0f, 1.0f);
      r11.x = ((-(r11.xxxx)).x + 1.0f);
      r11.y = (r11.x * r11.x);
      r11.y = (r11.y * r11.y);
      r11.x = (r11.y * r11.x);
      r11.x = fma(cb10_10.tint_symbol_5[0u].y, r11.x, r6.w);
      let v_177 = dot(r9.xyz, r1.xyz);
      r9.x = clamp(vec4<f32>(v_177, v_177, v_177, v_177).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r8.w * r9.x);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r9.w * r9.x);
      r9.x = (r2.w * r9.x);
      let v_178 = fma(r9.xxx, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_178.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_179 = (v_18.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r9 = vec4<f32>(v_179.xyz, r9.w);
      let v_180 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r9.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[22u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (r11.xyz + v_18.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = bitcast<vec3<u32>>(r5.www);
      let v_184 = r9.xyz;
      let v_185 = select(r11.xyz, v_184, (v_183 != vec3<u32>()));
      r9 = vec4<f32>(v_185.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_186 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_186.xyz, r9.w);
      r9.w = dot(r9.xyz, r9.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_187 = (r9.www * r9.xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r9.w);
      let v_188 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r9.w = dot(r9.xyz, v_188.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_189 = dot(r9.xyz, r1.xyz);
      r10.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r9.w = (r9.w * r10.w);
      r10.w = (r5.w * r9.w);
      let v_190 = (r10.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      let v_192 = fma(r5.xyz, r1.www, r9.xyz);
      r5 = vec4<f32>(v_192.xyz, r5.w);
      r1.w = dot(r5.xyz, r5.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_193 = (r1.www * r5.xyz);
      r5 = vec4<f32>(v_193.xyz, r5.w);
      let v_194 = dot(r5.xyz, r6.xyz);
      r1.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r6.x = (r1.w * r1.w);
      r6.x = (r6.x * r6.x);
      r1.w = (r1.w * r6.x);
      r1.w = fma(cb10_10.tint_symbol_5[0u].y, r1.w, r6.w);
      let v_195 = dot(r5.xyz, r1.xyz);
      r5.x = clamp(vec4<f32>(v_195, v_195, v_195, v_195).x, 0.0f, 1.0f);
      r5.x = log2(r5.x);
      r5.x = (r5.x * r8.w);
      r5.x = exp2(r5.x);
      r1.w = (r1.w * r5.x);
      r1.w = (r9.w * r1.w);
      r1.w = (r5.w * r1.w);
      r1.w = (r2.w * r1.w);
      let v_196 = fma(r1.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_196.xyz, r8.w);
    }
  }
  r1.w = (r7.w * r7.w);
  r2.z = (r2.z * r2.z);
  let v_197 = (r8.xyz * r2.zzz);
  r5 = vec4<f32>(v_197.xyz, r5.w);
  let v_198 = fma(r1.www, r10.xyz, r5.xyz);
  r5 = vec4<f32>(v_198.xyz, r5.w);
  let v_199 = fma(r7.xyz, r4.xxx, r5.xyz);
  r5 = vec4<f32>(v_199.xyz, r5.w);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_200 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_200.xyz, r6.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_201 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_201.xyz, r7.w);
  let v_202 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_202.xyz, r7.w);
  let v_203 = fma(r6.xyz, r1.www, r7.xyz);
  r6 = vec4<f32>(v_203.xyz, r6.w);
  let v_204 = (r2.yyy * r6.xyz);
  r2 = vec4<f32>(r2.x, v_204.xyz);
  let v_205 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_205.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_206 = dot(r7.xyz, r1.xyz);
  r0.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
  let v_207 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xyz);
  r1 = vec4<f32>(v_207.xyz, r1.w);
  let v_208 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_208.xyz, r1.w);
  let v_209 = (r7.www * r1.xyz);
  r1 = vec4<f32>(v_209.xyz, r1.w);
  let v_210 = fma(r1.xyz, r0.xyz, r5.xyz);
  r0 = vec4<f32>(v_210.xyz, r0.w);
  r0.w = dot(r4.yzw, r4.yzw);
  r1.x = sqrt(r0.w);
  let v_211 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_211.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r4.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_212 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_212 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_213 = (r0.www * r4.yzw);
  r2 = vec4<f32>(v_213.xyz, r2.w);
  let v_214 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_214, v_214, v_214, v_214).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_215 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_215, v_215, v_215, v_215).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_216 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_216.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_217 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_217.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_218 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_218.xyz, r2.w);
  let v_219 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_219.xyz, r2.w);
  let v_220 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_220.xyz, r4.w);
  let v_221 = fma(r1.www, r4.xyz, r2.xyz);
  r2 = vec4<f32>(v_221.xyz, r2.w);
  let v_222 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_223 = (r2.xyz + v_222.xyz);
  r2 = vec4<f32>(v_223.xyz, r2.w);
  let v_224 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_224.xyz, r2.w);
  r4.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r4.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r4.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_225 = fma(r1.xxx, r4.xyz, r2.xyz);
  r1 = vec4<f32>(v_225.xy, r1.z, v_225.z);
  let v_226 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_226.xy, r1.z, v_226.z);
  let v_227 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_227.xyz, r0.w);
  let v_228 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_228.xyz, r0.w);
  let v_229 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r3 = vec4<f32>(v_229.xyz, r3.w);
  r0 = max(r3, vec4<f32>());
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.w)));
  v_230((bitcast<u32>(r1.x) != 0u));
  let v_231 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_231.xyz, r0.w);
  let v_232 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_232.xyz, o0.w);
  o0.w = r0.w;
}

fn v_230(v_233 : bool) {
  if (v_233) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
