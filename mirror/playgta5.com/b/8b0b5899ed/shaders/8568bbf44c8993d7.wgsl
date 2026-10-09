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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.w)));
  v_1((bitcast<u32>(r0.w) != 0u));
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.z = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_3 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.www, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_8 = (r2.yx * r2.yx);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2.z = fma((-(r2.zzzz)).z, 16.0f, 14.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.zzzz).z)));
  o0.w = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
  let v_9 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r2 = vec4<f32>(r2.xy, v_9.xy);
  let v_10 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r3.z = fma(r1.w, 0.5f, 0.5f);
  r4.x = fma(r3.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r3.z + 0.30000001192092895508f);
  let v_11 = (r3.xy * r4.xy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r3.z = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = fract(cb13_13.tint_symbol_4[16u].z);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r3.z)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      let v_12 = fract(v6.xy);
      r4 = vec4<f32>(v_12.xy, r4.zw);
      let v_13 = abs(v6.zzzz);
      let v_14 = abs(v6.wwww);
      r4.z = fma(r4.y, v_13.z, v_14.z);
      r3.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r3.z)));
      r4.w = ((-(r4.xxxx)).w + 1.0f);
      let v_15 = bitcast<vec2<u32>>(r3.zz);
      let v_16 = r4.zw;
      let v_17 = select(r4.xz, v_16, (v_15 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_17.xy);
      r4 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    } else {
      r4 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r4.w);
    }
    r3.z = ((-(r4.zzzz)).z + 1.0f);
    r3.z = (r3.z * r3.z);
    r3.z = (r4.x * r3.z);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r2.w = fma(r3.z, r2.x, r2.w);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r2.z = fma(r3.z, r2.x, r2.z);
    let v_18 = -(r0.xyzx);
    let v_19 = fma(r0.xyz, cb13_13.tint_symbol_4[7u].xyz, v_18.xyz);
    r5 = vec4<f32>(v_19.xyz, r5.w);
    let v_20 = fma(r4.yyy, r5.xyz, r0.xyz);
    r5 = vec4<f32>(v_20.xyz, r5.w);
    let v_21 = (r4.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r4 = vec4<f32>(v_21.xy, r4.z, v_21.z);
    let v_22 = fma(r5.xyz, r4.zzz, r4.xyw);
    r0 = vec4<f32>(v_22.xyz, r0.w);
  }
  let v_23 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = -(v2.xyzx);
  let v_25 = (v_24.xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r2.x = dot(r4.xyz, r4.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_26 = (r2.xxx * r4.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_28 = fma(r4.xyz, r2.xxx, v_27.xyz);
  r6 = vec4<f32>(v_28.xyz, r6.w);
  r2.y = dot(r6.xyz, r6.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_29 = (r2.yyy * r6.xyz);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  r2.z = clamp(r2.zzzz.z, 0.0f, 1.0f);
  let v_30 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_30.xy, r3.zw);
  r2.y = (r2.w + -500.0f);
  r2.y = max(r2.y, 0.0f);
  r2.w = ((-(r2.yyyy)).w + r2.w);
  r2.y = (r2.y * 558.0f);
  r2.y = fma(r2.w, 3.0f, r2.y);
  r2.w = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_31 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  let v_33 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_35.xyz, r9.w);
  let v_36 = &(x0[0u]);
  let v_37 = r9;
  *(v_36) = vec4<f32>(v_37.xyz, (*(v_36)).w);
  let v_38 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_38.xyz, r10.w);
  let v_39 = &(x0[1u]);
  let v_40 = r10;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_41.xyz, r11.w);
  let v_42 = &(x0[2u]);
  let v_43 = r11;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = &(x0[3u]);
  let v_46 = r8;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_48 = r12;
  r12 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_49 = abs(r11.yyyy);
  r3.w = max(v_49.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_50 = (bitcast<u32>(r3.w) != 0u);
  let v_51 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_51, v_50);
  let v_52 = abs(r10.yyyy);
  r4.w = max(v_52.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_53 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_53 != 0u));
  let v_54 = abs(r9.yyyy);
  r4.w = max(v_54.w, abs(r9.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_55 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_55 != 0u));
  let v_56 = x0[bitcast<i32>(r3.z)];
  r9 = vec4<f32>(v_56.xyz, r9.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r3.z = dot(r10, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r9.z);
  let v_57 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_57.xy, r11.z, v_57.z);
  r11.z = dpdx(r3.z);
  let v_58 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_58.xyz, r13.w);
  r13.w = dpdy(r3.z);
  let v_59 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_59.xy);
  let v_60 = -(r8.zwzz);
  let v_61 = fma(r11.xz, r13.xz, v_60.xy);
  r14 = vec4<f32>(v_61.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_62 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_62.z);
  let v_63 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_63.xy);
  let v_64 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_64.xy);
  let v_65 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_65.xy);
  r3.z = fma((-(r4.wwww)).z, r8.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r8.w, r3.z);
  let v_66 = bitcast<u32>(r3.w);
  let v_67 = r3.z;
  r12.z = select(r9.z, v_67, (v_66 != 0u));
  r10.z = 0.0f;
  let v_68 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_68.xyz, r9.w);
  let v_69 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_69.xy, r12.zw);
  let v_70 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_70.xyz, r11.w);
  let v_71 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_71.xy, r12.zw);
  let v_72 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_72.xyz, r13.w);
  let v_73 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_73.xy, r12.zw);
  let v_74 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_74.xyz, r14.w);
  let v_75 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_75.xy, r12.zw);
  let v_76 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_76.xyz, r15.w);
  let v_77 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_77.xy, r12.zw);
  let v_78 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_78.xyz, r16.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_79.xy, r12.zw);
  let v_80 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_80.xyz, r17.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_82.xyz, r18.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_84.xyz, r19.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_86.xyz, r20.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_88.xyz, r21.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_90.xyz, r22.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_92.xyz, r23.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_93.xy, r12.zw);
  let v_94 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_94.xyz, r24.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_95.xy, r12.zw);
  let v_96 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_96.xyz, r25.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_97.xy, r12.zw);
  let v_98 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_98.xyz, r10.w);
  let v_99 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_99.xy, r9.z);
  let v_100 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_100.xy, r11.z);
  let v_101 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_101.xy, r13.z);
  let v_102 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_102.xy, r14.z);
  let v_103 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_103.xy, r15.z);
  let v_104 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_104.xy, r16.z);
  let v_105 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_105.xy, r17.z);
  let v_106 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_106.xy, r18.z);
  let v_107 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_107.xy, r19.z);
  let v_108 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_108.xy, r20.z);
  let v_109 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_109.xy, r21.z);
  let v_110 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_110.xy, r22.z);
  let v_111 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_111.xy, r23.z);
  let v_112 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_112.xy, r24.z);
  let v_113 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_113.xy, r25.z);
  let v_114 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_114.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.z = dot(r9, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_115 = abs(r8.yyyy);
  r3.w = max(v_115.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r3.w * r2.w);
  r2.w = fma(r3.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_6[3u].z);
  let v_116 = -(r2.wwww);
  r2.w = fma(r3.z, v_116.w, r2.w);
  let v_117 = dot(r1.xyw, v_27.xyz);
  r3.z = clamp(vec4<f32>(v_117, v_117, v_117, v_117).z, 0.0f, 1.0f);
  let v_118 = dot(r5.xyz, r1.xyw);
  r8.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot(r6.xyz, v_27.xyz);
  r8.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
  let v_120 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_120.xy, r8.zw);
  let v_121 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_121.xy);
  let v_122 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_122.xy);
  let v_123 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_123.xy, r8.zw);
  r3.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_124 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r3.ww);
  r8 = vec4<f32>(v_124.xy, r8.zw);
  let v_125 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_125.xy);
  r2.y = (r8.z * 0.125f);
  r4.w = fma((-(r2.zzzz)).w, r8.x, 1.0f);
  r5.w = dot(r1.xyw, r6.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r8.w);
  r5.w = exp2(r5.w);
  r5.w = (r8.y * r5.w);
  r5.w = (r2.y * r5.w);
  r5.w = (r2.z * r5.w);
  r5.w = (r3.z * r5.w);
  r3.z = (r3.z * r4.w);
  let v_126 = fma(r0.xyz, r3.zzz, r5.www);
  r6 = vec4<f32>(v_126.xyz, r6.w);
  let v_127 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_127.xyz, r6.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_128 = (v_24.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_128.xyz, r8.w);
    let v_129 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_129.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_130 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_130.xyz, r9.w);
    let v_131 = (r9.xyz + v_24.xyz);
    r9 = vec4<f32>(v_131.xyz, r9.w);
    let v_132 = bitcast<vec3<u32>>(r5.www);
    let v_133 = r8.xyz;
    let v_134 = select(r9.xyz, v_133, (v_132 != vec3<u32>()));
    r8 = vec4<f32>(v_134.xyz, r8.w);
    r5.w = dot(r8.xyz, r8.xyz);
    let v_135 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_135.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_136 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_136.xyz, r8.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[11u].w);
    r5.w = (r5.w / r6.w);
    let v_137 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_137.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_138 = dot(r8.xyz, r1.xyw);
    r7.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r5.w * r6.w);
    let v_139 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = fma(r4.xyz, r2.xxx, r8.xyz);
    r8 = vec4<f32>(v_141.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_142 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_142.xyz, r8.w);
    let v_143 = dot(r8.xyz, r5.xyz);
    r7.w = clamp(vec4<f32>(v_143, v_143, v_143, v_143).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r9.w = (r7.w * r7.w);
    r9.w = (r9.w * r9.w);
    r7.w = (r7.w * r9.w);
    r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
    let v_144 = dot(r8.xyz, r1.xyw);
    r8.x = clamp(vec4<f32>(v_144, v_144, v_144, v_144).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r5.w = (r5.w * r6.w);
    r5.w = (r2.y * r5.w);
    let v_145 = (r5.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_145.xyz, r8.w);
  }
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    let v_146 = bitcast<u32>(r6.w);
    let v_147 = r5.w;
    r3.z = select(r3.z, v_147, (v_146 != 0u));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_148 = (v_24.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_148.xyz, r10.w);
      let v_149 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_150 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = bitcast<vec3<u32>>(r5.www);
      let v_153 = r10.xyz;
      let v_154 = select(r11.xyz, v_153, (v_152 != vec3<u32>()));
      r10 = vec4<f32>(v_154.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_155 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_155.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_156 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_156.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[12u].w);
      r5.w = (r5.w / r6.w);
      let v_157 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_157.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_158 = dot(r10.xyz, r1.xyw);
      r7.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_159 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_160.xyz, r9.w);
      let v_161 = fma(r4.xyz, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_162 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_162.xyz, r10.w);
      let v_163 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_164 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_164, v_164, v_164, v_164).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.y * r5.w);
      let v_165 = fma(r5.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_165.xyz, r8.w);
    }
  } else {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_166 = (v_24.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      let v_167 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_168 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = bitcast<vec3<u32>>(r5.www);
      let v_171 = r10.xyz;
      let v_172 = select(r11.xyz, v_171, (v_170 != vec3<u32>()));
      r10 = vec4<f32>(v_172.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_173 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_174 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[13u].w);
      r5.w = (r5.w / r6.w);
      let v_175 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_175.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_176 = dot(r10.xyz, r1.xyw);
      r7.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_177 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_178.xyz, r9.w);
      let v_179 = fma(r4.xyz, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_180 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_180.xyz, r10.w);
      let v_181 = dot(r10.xyz, r5.xyz);
      r7.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_182 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.y * r5.w);
      let v_183 = fma(r5.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_183.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_184 = (v_24.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      let v_185 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r5.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
      let v_186 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = (r11.xyz + v_24.xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = bitcast<vec3<u32>>(r3.zzz);
      let v_189 = r10.xyz;
      let v_190 = select(r11.xyz, v_189, (v_188 != vec3<u32>()));
      r10 = vec4<f32>(v_190.xyz, r10.w);
      r3.z = dot(r10.xyz, r10.xyz);
      let v_191 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      r5.w = inverseSqrt(r5.w);
      let v_192 = (r5.www * r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r3.z = clamp(fma(-(r3.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r5.w = fma(r5.w, r3.z, cb3_3.tint_symbol_2[14u].w);
      r3.z = (r3.z / r5.w);
      let v_193 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r5.w = dot(r10.xyz, v_193.xyz);
      r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_194 = dot(r10.xyz, r1.xyw);
      r6.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r5.w = (r5.w * r6.w);
      r6.w = (r3.z * r5.w);
      let v_195 = (r6.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_196.xyz, r9.w);
      let v_197 = fma(r4.xyz, r2.xxx, r10.xyz);
      r4 = vec4<f32>(v_197.xyz, r4.w);
      r2.x = dot(r4.xyz, r4.xyz);
      r2.x = inverseSqrt(r2.x);
      let v_198 = (r2.xxx * r4.xyz);
      r4 = vec4<f32>(v_198.xyz, r4.w);
      let v_199 = dot(r4.xyz, r5.xyz);
      r2.x = clamp(vec4<f32>(v_199, v_199, v_199, v_199).x, 0.0f, 1.0f);
      r2.x = ((-(r2.xxxx)).x + 1.0f);
      r5.x = (r2.x * r2.x);
      r5.x = (r5.x * r5.x);
      r2.x = (r2.x * r5.x);
      r2.x = fma(cb10_10.tint_symbol_5[0u].y, r2.x, r3.w);
      let v_200 = dot(r4.xyz, r1.xyw);
      r3.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r3.w = log2(r3.w);
      r3.w = (r3.w * r8.w);
      r3.w = exp2(r3.w);
      r2.x = (r2.x * r3.w);
      r2.x = (r5.w * r2.x);
      r2.x = (r3.z * r2.x);
      r2.x = (r2.y * r2.x);
      let v_201 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_201.xyz, r8.w);
    }
  }
  r2.x = (r4.w * r4.w);
  r2.y = (r2.z * r2.z);
  let v_202 = (r8.xyz * r2.yyy);
  r4 = vec4<f32>(v_202.xyz, r4.w);
  let v_203 = fma(r2.xxx, r9.xyz, r4.xyz);
  r2 = vec4<f32>(v_203.xyz, r2.w);
  let v_204 = fma(r6.xyz, r2.www, r2.xyz);
  r2 = vec4<f32>(v_204.xyz, r2.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_205 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_205.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_206 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_206.xyz, r5.w);
  let v_207 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_207.xyz, r5.w);
  let v_208 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_208.xyz, r4.w);
  let v_209 = (r3.yyy * r4.xyz);
  r3 = vec4<f32>(r3.x, v_209.xyz);
  let v_210 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_210.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_211 = dot(r5.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_211, v_211, v_211, v_211).w, 0.0f, 1.0f);
  let v_212 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r4.xyz);
  r1 = vec4<f32>(v_212.xyz, r1.w);
  let v_213 = fma(r1.xyz, r3.xxx, r3.yzw);
  r1 = vec4<f32>(v_213.xyz, r1.w);
  let v_214 = (r4.www * r1.xyz);
  r1 = vec4<f32>(v_214.xyz, r1.w);
  let v_215 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_215.xyz, r0.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r1.x = sqrt(r0.w);
  let v_216 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_216.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r7.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_217 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_217 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_218 = (r0.www * r7.xyz);
  r2 = vec4<f32>(v_218.xyz, r2.w);
  let v_219 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_220 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_221 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_221.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_222 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_222.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_223 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_223.xyz, r2.w);
  let v_224 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_224.xyz, r2.w);
  let v_225 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_225.xyz, r3.w);
  let v_226 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_226.xyz, r2.w);
  let v_227 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_228 = (r2.xyz + v_227.xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_229.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_230 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_230.xy, r1.z, v_230.z);
  let v_231 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_231.xy, r1.z, v_231.z);
  let v_232 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_232.xyz, r0.w);
  let v_233 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_233.xyz, r0.w);
  let v_234 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_234.xyz, o0.w);
}

fn v_1(v_235 : bool) {
  if (v_235) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
