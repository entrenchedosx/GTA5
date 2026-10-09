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
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.w)));
  v_1((bitcast<u32>(r0.w) != 0u));
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_2 = (r0.www * v1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_3 = (r2.yx * r2.yx);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r1.w = fma((-(r2.zzzz)).w, 16.0f, 14.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r1.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  let v_4 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r2 = vec4<f32>(r2.xy, v_4.xy);
  let v_5 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r1.w = fma(r1.z, 0.5f, 0.5f);
  r4.x = fma(r1.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r1.w + 0.30000001192092895508f);
  let v_6 = (r3.xy * r4.xy);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r1.w = (v4.z * cb13_13.tint_symbol_4[16u].x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.w == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = fract(cb13_13.tint_symbol_4[16u].z);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r1.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      let v_7 = fract(v4.xy);
      r4 = vec4<f32>(v_7.xy, r4.zw);
      let v_8 = abs(v4.zzzz);
      let v_9 = abs(v4.wwww);
      r4.z = fma(r4.y, v_8.z, v_9.z);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r1.w)));
      r4.w = ((-(r4.xxxx)).w + 1.0f);
      let v_10 = bitcast<vec2<u32>>(r1.ww);
      let v_11 = r4.zw;
      let v_12 = select(r4.xz, v_11, (v_10 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_12.xy);
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
    let v_13 = -(r0.xyzx);
    let v_14 = fma(r0.xyz, cb13_13.tint_symbol_4[7u].xyz, v_13.xyz);
    r5 = vec4<f32>(v_14.xyz, r5.w);
    let v_15 = fma(r4.yyy, r5.xyz, r0.xyz);
    r5 = vec4<f32>(v_15.xyz, r5.w);
    let v_16 = (r4.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r4 = vec4<f32>(v_16.xy, r4.z, v_16.z);
    let v_17 = fma(r5.xyz, r4.zzz, r4.xyw);
    r0 = vec4<f32>(v_17.xyz, r0.w);
  }
  let v_18 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = -(v2.xyzx);
  let v_20 = (v_19.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_21 = (r1.www * r4.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_23 = fma(r4.xyz, r1.www, v_22.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r2.x = dot(r6.xyz, r6.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_24 = (r2.xxx * r6.xyz);
  r6 = vec4<f32>(v_24.xyz, r6.w);
  r2.z = clamp(r2.zzzz.z, 0.0f, 1.0f);
  let v_25 = (r3.xy * r3.xy);
  r2 = vec4<f32>(v_25.xy, r2.zw);
  r3.x = (r2.w + -500.0f);
  r3.x = max(r3.x, 0.0f);
  let v_26 = -(r3.xxxx);
  r2.w = (r2.w + v_26.w);
  r3.x = (r3.x * 558.0f);
  r2.w = fma(r2.w, 3.0f, r3.x);
  r3.x = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_27 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r3 = vec4<f32>(r3.x, v_27.xyz);
  let v_28 = (r3.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  let v_29 = fma(r3.yyy, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = fma(r3.www, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_31.xyz, r8.w);
  let v_32 = &(x0[0u]);
  let v_33 = r8;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = &(x0[1u]);
  let v_36 = r9;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_37.xyz, r10.w);
  let v_38 = &(x0[2u]);
  let v_39 = r10;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = &(x0[3u]);
  let v_42 = r7;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_44 = r11;
  r11 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
  r4.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r4.w = (r4.w * 0.5f);
  let v_45 = abs(r10.yyyy);
  r5.w = max(v_45.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.w)));
  let v_46 = (bitcast<u32>(r5.w) != 0u);
  let v_47 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_47, v_46);
  let v_48 = abs(r9.yyyy);
  r6.w = max(v_48.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_49 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_49 != 0u));
  let v_50 = abs(r8.yyyy);
  r6.w = max(v_50.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.w)));
  let v_51 = bitcast<u32>(r4.w);
  r4.w = select(r5.w, 0.0f, (v_51 != 0u));
  let v_52 = x0[bitcast<i32>(r4.w)];
  r8 = vec4<f32>(v_52.xyz, r8.w);
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
  let v_53 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_53.xy, r10.z, v_53.z);
  r10.z = dpdx(r4.w);
  let v_54 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_54.xyz, r12.w);
  r12.w = dpdy(r4.w);
  let v_55 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_55.xy);
  let v_56 = -(r7.zwzz);
  let v_57 = fma(r10.xz, r12.xz, v_56.xy);
  r13 = vec4<f32>(v_57.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_58 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_58.z);
  let v_59 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_59.xy);
  let v_60 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_60.xy);
  let v_61 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_61.xy);
  r4.w = fma((-(r6.wwww)).w, r7.z, r4.w);
  r4.w = fma((-(r6.wwww)).w, r7.w, r4.w);
  let v_62 = bitcast<u32>(r5.w);
  let v_63 = r4.w;
  r11.z = select(r8.z, v_63, (v_62 != 0u));
  r9.z = 0.0f;
  let v_64 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_64.xyz, r8.w);
  let v_65 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_65.xy, r11.zw);
  let v_66 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_66.xyz, r10.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_67.xy, r11.zw);
  let v_68 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_69.xy, r11.zw);
  let v_70 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_71.xy, r11.zw);
  let v_72 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_73.xy, r11.zw);
  let v_74 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_75.xy, r11.zw);
  let v_76 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_76.xyz, r16.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_77.xy, r11.zw);
  let v_78 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_80.xyz, r18.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_88.xyz, r22.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_90.xyz, r23.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_92.xyz, r24.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_94.xyz, r9.w);
  let v_95 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_95.xy, r8.z);
  let v_96 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_96.xy, r10.z);
  let v_97 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_97.xy, r12.z);
  let v_98 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_98.xy, r13.z);
  let v_99 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_99.xy, r14.z);
  let v_100 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_100.xy, r15.z);
  let v_101 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_101.xy, r16.z);
  let v_102 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_102.xy, r17.z);
  let v_103 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_103.xy, r18.z);
  let v_104 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_104.xy, r19.z);
  let v_105 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_105.xy, r20.z);
  let v_106 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_106.xy, r21.z);
  let v_107 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_107.xy, r22.z);
  let v_108 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_108.xy, r23.z);
  let v_109 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_109.xy, r24.z);
  let v_110 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_110.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.w = dot(r8, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_111 = abs(r7.yyyy);
  r5.w = max(v_111.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r5.w * r3.x);
  r3.x = fma(r4.w, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r4.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = (r4.w * cb6_6.tint_symbol_6[3u].z);
  let v_112 = -(r3.xxxx);
  r3.x = fma(r4.w, v_112.x, r3.x);
  let v_113 = dot(r1.xyz, v_22.xyz);
  r4.w = clamp(vec4<f32>(v_113, v_113, v_113, v_113).w, 0.0f, 1.0f);
  let v_114 = dot(r5.xyz, r1.xyz);
  r7.x = clamp(vec4<f32>(v_114, v_114, v_114, v_114).x, 0.0f, 1.0f);
  let v_115 = dot(r6.xyz, v_22.xyz);
  r7.y = clamp(vec4<f32>(v_115, v_115, v_115, v_115).y, 0.0f, 1.0f);
  let v_116 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_116.xy, r7.zw);
  let v_117 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_117.xy);
  let v_118 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_118.xy);
  let v_119 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_119.xy, r7.zw);
  r5.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_120 = fma(cb10_10.tint_symbol_5[0u].yy, r7.xy, r5.ww);
  r7 = vec4<f32>(v_120.xy, r7.zw);
  let v_121 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_121.xy);
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
  let v_122 = fma(r0.xyz, r4.www, r6.xxx);
  r6 = vec4<f32>(v_122.xyz, r6.w);
  let v_123 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_123.xyz, r6.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_124 = (v_19.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    let v_125 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_125.xyz, r9.w);
    r7.y = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_2[19u].w);
    let v_126 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.yyy, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_126.xyz, r9.w);
    let v_127 = (r9.xyz + v_19.xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = bitcast<vec3<u32>>(r7.xxx);
    let v_129 = r8.xyz;
    let v_130 = select(r9.xyz, v_129, (v_128 != vec3<u32>()));
    r7 = vec4<f32>(v_130.xyz, r7.w);
    r8.x = dot(r7.xyz, r7.xyz);
    let v_131 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_131.xyz, r7.w);
    r8.y = dot(r7.xyz, r7.xyz);
    r8.y = inverseSqrt(r8.y);
    let v_132 = (r7.xyz * r8.yyy);
    r7 = vec4<f32>(v_132.xyz, r7.w);
    r8.x = clamp(fma(-(r8.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r8.y = ((-(cb3_3.tint_symbol_2[11u].wwww)).y + 1.0f);
    r8.y = fma(r8.y, r8.x, cb3_3.tint_symbol_2[11u].w);
    r8.x = (r8.x / r8.y);
    let v_133 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.y = dot(r7.xyz, v_133.xyz);
    r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).y, 0.0f, 1.0f);
    let v_134 = dot(r7.xyz, r1.xyz);
    r8.z = clamp(vec4<f32>(v_134, v_134, v_134, v_134).z, 0.0f, 1.0f);
    r8.y = (r8.y * r8.z);
    r8.z = (r8.x * r8.y);
    let v_135 = (r8.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_135.xyz, r9.w);
    let v_136 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_136.xyz, r9.w);
    let v_137 = fma(r4.xyz, r1.www, r7.xyz);
    r7 = vec4<f32>(v_137.xyz, r7.w);
    r8.z = dot(r7.xyz, r7.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_138 = (r7.xyz * r8.zzz);
    r7 = vec4<f32>(v_138.xyz, r7.w);
    let v_139 = dot(r7.xyz, r5.xyz);
    r8.z = clamp(vec4<f32>(v_139, v_139, v_139, v_139).z, 0.0f, 1.0f);
    r8.z = ((-(r8.zzzz)).z + 1.0f);
    r8.w = (r8.z * r8.z);
    r8.w = (r8.w * r8.w);
    r8.z = (r8.w * r8.z);
    r8.z = fma(cb10_10.tint_symbol_5[0u].y, r8.z, r5.w);
    let v_140 = dot(r7.xyz, r1.xyz);
    r7.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r7.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r8.z);
    r7.x = (r8.y * r7.x);
    r7.x = (r8.x * r7.x);
    r7.x = (r2.w * r7.x);
    let v_141 = (r7.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r7 = vec4<f32>(v_141.xyz, r7.w);
  }
  r8.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.x) != 0u)) {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.x = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    let v_142 = bitcast<u32>(r8.y);
    let v_143 = r8.x;
    r4.w = select(r4.w, v_143, (v_142 != 0u));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r8.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_144 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[4u].xyz);
      r8 = vec4<f32>(r8.x, v_144.xyz);
      let v_145 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[20u].w);
      let v_146 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.www, cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_146.xyz, r10.w);
      let v_147 = (r10.xyz + v_19.xyz);
      r10 = vec4<f32>(v_147.xyz, r10.w);
      let v_148 = bitcast<vec3<u32>>(r8.xxx);
      let v_149 = r8.yzw;
      let v_150 = select(r10.xyz, v_149, (v_148 != vec3<u32>()));
      r8 = vec4<f32>(v_150.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_151 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_151.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_152 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_152.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[12u].w);
      r8.w = (r8.w / r9.w);
      let v_153 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r9.w = dot(r8.xyz, v_153.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_154 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_155 = (r10.xxx * cb3_3.tint_symbol_2[20u].xyz);
      r10 = vec4<f32>(v_155.xyz, r10.w);
      let v_156 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_156.xyz, r9.w);
      let v_157 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_157.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_158 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_158.xyz, r8.w);
      let v_159 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_159, v_159, v_159, v_159).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_160 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_160, v_160, v_160, v_160).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_161 = fma(r8.xxx, cb3_3.tint_symbol_2[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_161.xyz, r7.w);
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
      let v_162 = ((-(v2.xxyz)).yzw + cb3_3.tint_symbol_2[5u].xyz);
      r8 = vec4<f32>(r8.x, v_162.xyz);
      let v_163 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r9.w = dot(r10.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_2[21u].w);
      let v_164 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.www, cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_164.xyz, r10.w);
      let v_165 = (r10.xyz + v_19.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = bitcast<vec3<u32>>(r8.xxx);
      let v_167 = r8.yzw;
      let v_168 = select(r10.xyz, v_167, (v_166 != vec3<u32>()));
      r8 = vec4<f32>(v_168.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      let v_169 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_169.xyz, r8.w);
      r9.w = dot(r8.xyz, r8.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_170 = (r8.xyz * r9.www);
      r8 = vec4<f32>(v_170.xyz, r8.w);
      r8.w = clamp(fma(-(r8.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r8.w, cb3_3.tint_symbol_2[13u].w);
      r8.w = (r8.w / r9.w);
      let v_171 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r9.w = dot(r8.xyz, v_171.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_172 = dot(r8.xyz, r1.xyz);
      r10.x = clamp(vec4<f32>(v_172, v_172, v_172, v_172).x, 0.0f, 1.0f);
      r9.w = (r9.w * r10.x);
      r10.x = (r8.w * r9.w);
      let v_173 = (r10.xxx * cb3_3.tint_symbol_2[21u].xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      let v_174 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
      let v_175 = fma(r4.xyz, r1.www, r8.xyz);
      r8 = vec4<f32>(v_175.xyz, r8.w);
      r10.x = dot(r8.xyz, r8.xyz);
      r10.x = inverseSqrt(r10.x);
      let v_176 = (r8.xyz * r10.xxx);
      r8 = vec4<f32>(v_176.xyz, r8.w);
      let v_177 = dot(r8.xyz, r5.xyz);
      r10.x = clamp(vec4<f32>(v_177, v_177, v_177, v_177).x, 0.0f, 1.0f);
      r10.x = ((-(r10.xxxx)).x + 1.0f);
      r10.y = (r10.x * r10.x);
      r10.y = (r10.y * r10.y);
      r10.x = (r10.y * r10.x);
      r10.x = fma(cb10_10.tint_symbol_5[0u].y, r10.x, r5.w);
      let v_178 = dot(r8.xyz, r1.xyz);
      r8.x = clamp(vec4<f32>(v_178, v_178, v_178, v_178).x, 0.0f, 1.0f);
      r8.x = log2(r8.x);
      r8.x = (r7.w * r8.x);
      r8.x = exp2(r8.x);
      r8.x = (r8.x * r10.x);
      r8.x = (r9.w * r8.x);
      r8.x = (r8.w * r8.x);
      r8.x = (r2.w * r8.x);
      let v_179 = fma(r8.xxx, cb3_3.tint_symbol_2[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_179.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r8.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r8.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_180 = (v_19.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r8 = vec4<f32>(v_180.xyz, r8.w);
      let v_181 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r8.w = dot(r10.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = clamp(((r8.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[22u].w);
      let v_182 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.www, cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_182.xyz, r10.w);
      let v_183 = (r10.xyz + v_19.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = bitcast<vec3<u32>>(r4.www);
      let v_185 = r8.xyz;
      let v_186 = select(r10.xyz, v_185, (v_184 != vec3<u32>()));
      r8 = vec4<f32>(v_186.xyz, r8.w);
      r4.w = dot(r8.xyz, r8.xyz);
      let v_187 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
      r8 = vec4<f32>(v_187.xyz, r8.w);
      r8.w = dot(r8.xyz, r8.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_188 = (r8.www * r8.xyz);
      r8 = vec4<f32>(v_188.xyz, r8.w);
      r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r4.w, cb3_3.tint_symbol_2[14u].w);
      r4.w = (r4.w / r8.w);
      let v_189 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.w = dot(r8.xyz, v_189.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_190 = dot(r8.xyz, r1.xyz);
      r9.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r8.w = (r8.w * r9.w);
      r9.w = (r4.w * r8.w);
      let v_191 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      let v_192 = fma(r10.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_192.xyz, r9.w);
      let v_193 = fma(r4.xyz, r1.www, r8.xyz);
      r4 = vec4<f32>(v_193.xyz, r4.w);
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_194 = (r1.www * r4.xyz);
      r4 = vec4<f32>(v_194.xyz, r4.w);
      let v_195 = dot(r4.xyz, r5.xyz);
      r1.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r5.x = (r1.w * r1.w);
      r5.x = (r5.x * r5.x);
      r1.w = (r1.w * r5.x);
      r1.w = fma(cb10_10.tint_symbol_5[0u].y, r1.w, r5.w);
      let v_196 = dot(r4.xyz, r1.xyz);
      r4.x = clamp(vec4<f32>(v_196, v_196, v_196, v_196).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r7.w);
      r4.x = exp2(r4.x);
      r1.w = (r1.w * r4.x);
      r1.w = (r8.w * r1.w);
      r1.w = (r4.w * r1.w);
      r1.w = (r2.w * r1.w);
      let v_197 = fma(r1.www, cb3_3.tint_symbol_2[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_197.xyz, r7.w);
    }
  }
  r1.w = (r6.w * r6.w);
  r2.z = (r2.z * r2.z);
  let v_198 = (r7.xyz * r2.zzz);
  r4 = vec4<f32>(v_198.xyz, r4.w);
  let v_199 = fma(r1.www, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_199.xyz, r4.w);
  let v_200 = fma(r6.xyz, r3.xxx, r4.xyz);
  r4 = vec4<f32>(v_200.xyz, r4.w);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_201 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_201.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_202 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_202.xyz, r6.w);
  let v_203 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_203.xyz, r6.w);
  let v_204 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_204.xyz, r5.w);
  let v_205 = (r2.yyy * r5.xyz);
  r2 = vec4<f32>(r2.x, v_205.xyz);
  let v_206 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_206.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_207 = dot(r6.xyz, r1.xyz);
  r0.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
  let v_208 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r1 = vec4<f32>(v_208.xyz, r1.w);
  let v_209 = fma(r1.xyz, r2.xxx, r2.yzw);
  r1 = vec4<f32>(v_209.xyz, r1.w);
  let v_210 = (r6.www * r1.xyz);
  r1 = vec4<f32>(v_210.xyz, r1.w);
  let v_211 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_211.xyz, r0.w);
  r0.w = dot(r3.yzw, r3.yzw);
  r1.x = sqrt(r0.w);
  let v_212 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_212.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_213 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_213 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_214 = (r0.www * r3.yzw);
  r2 = vec4<f32>(v_214.xyz, r2.w);
  let v_215 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_215, v_215, v_215, v_215).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_216 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_217 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_217.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_218 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_218.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_219 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_219.xyz, r2.w);
  let v_220 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_220.xyz, r2.w);
  let v_221 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_221.xyz, r3.w);
  let v_222 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_222.xyz, r2.w);
  let v_223 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_224 = (r2.xyz + v_223.xyz);
  r2 = vec4<f32>(v_224.xyz, r2.w);
  let v_225 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_225.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_226 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_226.xy, r1.z, v_226.z);
  let v_227 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_227.xy, r1.z, v_227.z);
  let v_228 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_228.xyz, r0.w);
  let v_229 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_229.xyz, r0.w);
  let v_230 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_230.xyz, o0.w);
}

fn v_1(v_231 : bool) {
  if (v_231) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
