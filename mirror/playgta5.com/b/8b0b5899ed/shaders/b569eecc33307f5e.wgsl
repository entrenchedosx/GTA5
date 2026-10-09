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
  tint_symbol_7 : array<vec4<u32>, 3u>,
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
  let v_19 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r4.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_22 = fma(r4.xyz, r1.www, v_21.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  r1.w = dot(r6.xyz, r6.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_23 = (r1.www * r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r2.z = clamp(r2.zzzz.z, 0.0f, 1.0f);
  let v_24 = (r3.xy * r3.xy);
  r2 = vec4<f32>(v_24.xy, r2.zw);
  r1.w = (r2.w + -500.0f);
  r1.w = max(r1.w, 0.0f);
  r2.w = ((-(r1.wwww)).w + r2.w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.w, 3.0f, r1.w);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_25 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = (r3.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = fma(r3.xxx, cb6_6.tint_symbol_6[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = fma(r3.zzz, cb6_6.tint_symbol_6[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r4.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  let v_30 = &(x0[0u]);
  let v_31 = r7;
  *(v_30) = vec4<f32>(v_31.xyz, (*(v_30)).w);
  let v_32 = fma(r4.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = &(x0[1u]);
  let v_34 = r8;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r4.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_35.xyz, r9.w);
  let v_36 = &(x0[2u]);
  let v_37 = r9;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r4.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r4 = vec4<f32>(v_38.xyz, r4.w);
  let v_39 = &(x0[3u]);
  let v_40 = r4;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_42 = r10;
  r10 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
  r3.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_43 = abs(r9.yyyy);
  r4.z = max(v_43.z, abs(r9.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.w)));
  let v_44 = (bitcast<u32>(r4.z) != 0u);
  let v_45 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_45, v_44);
  let v_46 = abs(r8.yyyy);
  r4.w = max(v_46.w, abs(r8.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_47 = bitcast<u32>(r4.w);
  r4.z = select(r4.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_47 != 0u));
  let v_48 = abs(r7.yyyy);
  r4.w = max(v_48.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.w)));
  let v_49 = bitcast<u32>(r3.w);
  r3.w = select(r4.z, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r3.w)];
  r7 = vec4<f32>(v_50.xyz, r7.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r4.z = (r3.w + 0.5f);
  r4.z = (r4.z * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r3.w = dot(r8, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r7.x + 0.5f);
  r8.y = fma(r7.y, 0.25f, r4.z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r7.z);
  let v_51 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_51.xy, r9.z, v_51.z);
  r9.z = dpdx(r3.w);
  let v_52 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_52.xyz, r11.w);
  r11.w = dpdy(r3.w);
  let v_53 = (r9.yw * r11.yw);
  r7 = vec4<f32>(v_53.xy, r7.zw);
  let v_54 = -(r7.xyxx);
  let v_55 = fma(r9.xz, r11.xz, v_54.xy);
  r12 = vec4<f32>(v_55.xy, r12.zw);
  r5.w = (1.0f / r12.x);
  r6.w = (r9.z * r11.y);
  let v_56 = -(r6.wwww);
  r12.z = fma(r9.x, r11.w, v_56.z);
  let v_57 = (r5.ww * r12.yz);
  r7 = vec4<f32>(v_57.xy, r7.zw);
  let v_58 = max(r7.xy, vec2<f32>());
  r7 = vec4<f32>(v_58.xy, r7.zw);
  let v_59 = min(r7.xy, vec2<f32>(0.5f));
  r7 = vec4<f32>(v_59.xy, r7.zw);
  r3.w = fma((-(r4.wwww)).w, r7.x, r3.w);
  r3.w = fma((-(r4.wwww)).w, r7.y, r3.w);
  let v_60 = bitcast<u32>(r4.z);
  let v_61 = r3.w;
  r10.z = select(r7.z, v_61, (v_60 != 0u));
  r8.z = 0.0f;
  let v_62 = (r8.xyz + r10.ywz);
  r7 = vec4<f32>(v_62.xyz, r7.w);
  let v_63 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_63.xy, r10.zw);
  let v_64 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_64.xyz, r9.w);
  let v_65 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_65.xy, r10.zw);
  let v_66 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_66.xyz, r11.w);
  let v_67 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_67.xy, r10.zw);
  let v_68 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_69.xy, r10.zw);
  let v_70 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_71.xy, r10.zw);
  let v_72 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_72.xyz, r14.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_73.xy, r10.zw);
  let v_74 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_74.xyz, r15.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_75.xy, r10.zw);
  let v_76 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_76.xyz, r16.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_77.xy, r10.zw);
  let v_78 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_78.xyz, r17.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_79.xy, r10.zw);
  let v_80 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_80.xyz, r18.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_81.xy, r10.zw);
  let v_82 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_82.xyz, r19.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_83.xy, r10.zw);
  let v_84 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_84.xyz, r20.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_85.xy, r10.zw);
  let v_86 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_86.xyz, r21.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_87.xy, r10.zw);
  let v_88 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_88.xyz, r22.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_89.xy, r10.zw);
  let v_90 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_90.xyz, r23.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_91.xy, r10.zw);
  let v_92 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_92.xyz, r8.w);
  let v_93 = r7.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_93.xy, r7.z);
  let v_94 = r9.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_94.xy, r9.z);
  let v_95 = r11.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_95.xy, r11.z);
  let v_96 = r12.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_96.xy, r12.z);
  let v_97 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_97.xy, r13.z);
  let v_98 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_99.xy, r15.z);
  let v_100 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_100.xy, r16.z);
  let v_101 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_101.xy, r17.z);
  let v_102 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_103.xy, r19.z);
  let v_104 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_105.xy, r21.z);
  let v_106 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_106.xy, r22.z);
  let v_107 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_107.xy, r23.z);
  let v_108 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_108.xy, r8.z);
  r7 = (r7 + r9);
  r7 = (r10 + r7);
  r7 = (r11 + r7);
  r3.w = dot(r7, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_109 = abs(r4.yyyy);
  r4.x = max(v_109.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.x * r2.w);
  r2.w = fma(r3.w, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_6[3u].z);
  let v_110 = -(r2.wwww);
  r2.w = fma(r3.w, v_110.w, r2.w);
  let v_111 = dot(r1.xyz, v_21.xyz);
  r3.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
  let v_112 = dot(r5.xyz, r1.xyz);
  r4.x = clamp(vec4<f32>(v_112, v_112, v_112, v_112).x, 0.0f, 1.0f);
  let v_113 = dot(r6.xyz, v_21.xyz);
  r4.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
  let v_114 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_114.xy, r4.zw);
  let v_115 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_115.xy);
  let v_116 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_116.xy);
  let v_117 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_117.xy, r4.zw);
  r4.z = ((-(cb10_10.tint_symbol_5[0u].yyyy)).z + 1.0f);
  let v_118 = fma(cb10_10.tint_symbol_5[0u].yy, r4.xy, r4.zz);
  r4 = vec4<f32>(v_118.xy, r4.zw);
  let v_119 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_119.xy);
  r1.w = (r4.z * 0.125f);
  r4.x = fma((-(r2.zzzz)).x, r4.x, 1.0f);
  r4.z = dot(r1.xyz, r6.xyz);
  r4.z = clamp(((r4.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r4.z = log2(r4.z);
  r4.z = (r4.z * r4.w);
  r4.z = exp2(r4.z);
  r4.y = (r4.y * r4.z);
  r1.w = (r1.w * r4.y);
  r1.w = (r2.z * r1.w);
  r1.w = (r3.w * r1.w);
  r2.z = (r3.w * r4.x);
  let v_120 = fma(r0.xyz, r2.zzz, r1.www);
  r4 = vec4<f32>(r4.x, v_120.xyz);
  let v_121 = (r4.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(r4.x, v_121.xyz);
  r0.w = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_122 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_122.xyz, r5.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_123 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_123.xyz, r6.w);
  let v_124 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_124.xyz, r6.w);
  let v_125 = fma(r5.xyz, r1.www, r6.xyz);
  r5 = vec4<f32>(v_125.xyz, r5.w);
  let v_126 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_126.xyz, r5.w);
  let v_127 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_127.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_128 = dot(r7.xyz, r1.xyz);
  r0.w = clamp(vec4<f32>(v_128, v_128, v_128, v_128).w, 0.0f, 1.0f);
  let v_129 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xyz);
  r1 = vec4<f32>(v_129.xyz, r1.w);
  let v_130 = fma(r1.xyz, r2.xxx, r5.xyz);
  r1 = vec4<f32>(v_130.xyz, r1.w);
  let v_131 = (r4.xxx * r1.xyz);
  r1 = vec4<f32>(v_131.xyz, r1.w);
  let v_132 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_132.xyz, r0.w);
  let v_133 = fma(r4.yzw, r2.www, r0.xyz);
  r0 = vec4<f32>(v_133.xyz, r0.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.x = sqrt(r0.w);
  let v_134 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_134.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_135 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_135 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_136 = (r0.www * r3.xyz);
  r2 = vec4<f32>(v_136.xyz, r2.w);
  let v_137 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_137, v_137, v_137, v_137).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_138 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_139 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_139.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_140 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_140.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_141 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_141.xyz, r2.w);
  let v_142 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_142.xyz, r2.w);
  let v_143 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_143.xyz, r3.w);
  let v_144 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_144.xyz, r2.w);
  let v_145 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_146 = (r2.xyz + v_145.xyz);
  r2 = vec4<f32>(v_146.xyz, r2.w);
  let v_147 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_147.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_148 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_148.xy, r1.z, v_148.z);
  let v_149 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_149.xy, r1.z, v_149.z);
  let v_150 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_150.xyz, r0.w);
  let v_151 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_151.xyz, r0.w);
  let v_152 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_152.xyz, o0.w);
}

fn v_1(v_153 : bool) {
  if (v_153) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
