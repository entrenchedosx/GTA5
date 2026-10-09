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

var<private> r26 : vec4<f32>;

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
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_1 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.z = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_2 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.yyy * v5.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = fma(r1.xxx, v4.xyz, r1.yzw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.www, v1.xyz, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  r2 = textureSample(t4, s4, v0.xyxx.xy);
  let v_7 = (r2.yx * r2.yx);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  r2.z = fma((-(r2.zzzz)).z, 16.0f, 14.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.zzzz).z)));
  r3.w = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
  let v_8 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r2 = vec4<f32>(r2.xy, v_8.xy);
  let v_9 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_9.xy, r4.zw);
  r4.z = fma(r1.w, 0.5f, 0.5f);
  r5.x = fma(r4.z, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.y = (r4.z + 0.30000001192092895508f);
  let v_10 = (r4.xy * r5.xy);
  r4 = vec4<f32>(v_10.xy, r4.zw);
  r4.z = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  if ((bitcast<u32>(r4.z) != 0u)) {
    let v_11 = fract(v6.yx);
    let v_12 = r5;
    r5 = vec4<f32>(v_11.x, v_12.y, v_11.y, v_12.w);
    r5.w = fma(r5.x, v0.w, v1.w);
    r4.z = fract(cb13_13.tint_symbol_4[16u].z);
    r5.y = ((-(r5.zzzz)).y + 1.0f);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_13 = bitcast<vec2<u32>>(r4.ww);
    let v_14 = r5.wy;
    let v_15 = select(r5.zw, v_14, (v_13 != vec2<u32>()));
    r6 = vec4<f32>(v_15.xy, r6.zw);
    r6 = textureSampleLevel(t14, s14, r6.xyxx.xy, 0.0f);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r4.z)));
    if ((bitcast<u32>(r4.w) != 0u)) {
      let v_16 = abs(v6.zzzz);
      let v_17 = abs(v6.wwww);
      r5.x = fma(r5.x, v_16.x, v_17.x);
      r4.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r4.z)));
      let v_18 = bitcast<vec2<u32>>(r4.zz);
      let v_19 = r5.xy;
      let v_20 = select(r5.zx, v_19, (v_18 != vec2<u32>()));
      r4 = vec4<f32>(r4.xy, v_20.xy);
      r5 = textureSampleLevel(t14, s14, r4.zwzz.xy, 0.0f);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
    }
    r4.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) & bitcast<u32>(r4.w)));
    let v_21 = bitcast<vec4<u32>>(r4.zzzz);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_21 != vec4<u32>()));
    r4.z = fma(r6.w, 2.0f, -1.0f);
    r4.z = ((-(abs(r4.zzzz))).z + 1.0f);
    r4.w = ((-(r5.zzzz)).w + 1.0f);
    r4.w = (r4.w * r4.w);
    r4.w = (r5.x * r4.w);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r2.w = fma(r4.w, r2.x, r2.w);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r2.z = fma(r4.w, r2.x, r2.z);
    let v_22 = fma(r0.xyz, r4.zzz, r6.xyz);
    r6 = vec4<f32>(v_22.xyz, r6.w);
    let v_23 = -(r6.xyzx);
    let v_24 = fma(r6.xyz, cb13_13.tint_symbol_4[7u].xyz, v_23.xyz);
    r7 = vec4<f32>(v_24.xyz, r7.w);
    let v_25 = fma(r5.yyy, r7.xyz, r6.xyz);
    r6 = vec4<f32>(v_25.xyz, r6.w);
    let v_26 = (r5.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r5 = vec4<f32>(v_26.xy, r5.z, v_26.z);
    let v_27 = fma(r6.xyz, r5.zzz, r5.xyw);
    r0 = vec4<f32>(v_27.xyz, r0.w);
  }
  let v_28 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = -(v2.xyzx);
  let v_30 = (v_29.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = inverseSqrt(r2.x);
  let v_31 = (r2.xxx * r5.xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_33 = fma(r5.xyz, r2.xxx, v_32.xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  r2.y = dot(r7.xyz, r7.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_34 = (r2.yyy * r7.xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  r2.z = clamp(r2.zzzz.z, 0.0f, 1.0f);
  let v_35 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_35.xy, r4.zw);
  r2.y = (r2.w + -500.0f);
  r2.y = max(r2.y, 0.0f);
  r2.w = ((-(r2.yyyy)).w + r2.w);
  r2.y = (r2.y * 558.0f);
  r2.y = fma(r2.w, 3.0f, r2.y);
  r2.w = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_36 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  let v_37 = (r8.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r9 = vec4<f32>(v_37.xyz, r9.w);
  let v_38 = fma(r8.xxx, cb6_6.tint_symbol_6[0u].xyz, r9.xyz);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  let v_39 = fma(r8.zzz, cb6_6.tint_symbol_6[2u].xyz, r9.xyz);
  r9 = vec4<f32>(v_39.xyz, r9.w);
  let v_40 = fma(r9.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r10 = vec4<f32>(v_40.xyz, r10.w);
  let v_41 = &(x0[0u]);
  let v_42 = r10;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  let v_43 = fma(r9.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r11 = vec4<f32>(v_43.xyz, r11.w);
  let v_44 = &(x0[1u]);
  let v_45 = r11;
  *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
  let v_46 = fma(r9.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r12 = vec4<f32>(v_46.xyz, r12.w);
  let v_47 = &(x0[2u]);
  let v_48 = r12;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r9.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = &(x0[3u]);
  let v_51 = r9;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_53 = r13;
  r13 = vec4<f32>(v_53.x, v_52.x, v_53.z, v_52.y);
  r4.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r4.z = (r4.z * 0.5f);
  let v_54 = abs(r12.yyyy);
  r4.w = max(v_54.w, abs(r12.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r4.z)));
  let v_55 = (bitcast<u32>(r4.w) != 0u);
  let v_56 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_56, v_55);
  let v_57 = abs(r11.yyyy);
  r5.w = max(v_57.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_58 = bitcast<u32>(r5.w);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_58 != 0u));
  let v_59 = abs(r10.yyyy);
  r5.w = max(v_59.w, abs(r10.xxxx).w);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.z)));
  let v_60 = bitcast<u32>(r4.z);
  r4.z = select(r4.w, 0.0f, (v_60 != 0u));
  let v_61 = x0[bitcast<i32>(r4.z)];
  r10 = vec4<f32>(v_61.xyz, r10.w);
  r4.z = f32(bitcast<i32>(r4.z));
  r4.w = (r4.z + 0.5f);
  r4.w = (r4.w * 0.25f);
  r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.zzzz)));
  r11 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r11) & vec4<u32>(1065353216u)));
  r4.z = dot(r11, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r11, cb6_6.tint_symbol_6[13u]);
  r11.x = (r10.x + 0.5f);
  r11.y = fma(r10.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  r4.z = ((-(r4.zzzz)).z + r10.z);
  let v_62 = dpdx(r11.xyy);
  r12 = vec4<f32>(v_62.xy, r12.z, v_62.z);
  r12.z = dpdx(r4.z);
  let v_63 = dpdy(r11.yxy);
  r14 = vec4<f32>(v_63.xyz, r14.w);
  r14.w = dpdy(r4.z);
  let v_64 = (r12.yw * r14.yw);
  r9 = vec4<f32>(r9.xy, v_64.xy);
  let v_65 = -(r9.zwzz);
  let v_66 = fma(r12.xz, r14.xz, v_65.xy);
  r15 = vec4<f32>(v_66.xy, r15.zw);
  r6.w = (1.0f / r15.x);
  r7.w = (r12.z * r14.y);
  let v_67 = -(r7.wwww);
  r15.z = fma(r12.x, r14.w, v_67.z);
  let v_68 = (r6.ww * r15.yz);
  r9 = vec4<f32>(r9.xy, v_68.xy);
  let v_69 = max(r9.zw, vec2<f32>());
  r9 = vec4<f32>(r9.xy, v_69.xy);
  let v_70 = min(r9.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(r9.xy, v_70.xy);
  r4.z = fma((-(r5.wwww)).z, r9.z, r4.z);
  r4.z = fma((-(r5.wwww)).z, r9.w, r4.z);
  let v_71 = bitcast<u32>(r4.w);
  let v_72 = r4.z;
  r13.z = select(r10.z, v_72, (v_71 != 0u));
  r11.z = 0.0f;
  let v_73 = (r11.xyz + r13.ywz);
  r10 = vec4<f32>(v_73.xyz, r10.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r13 = vec4<f32>(v_74.xy, r13.zw);
  let v_75 = (r11.xyz + r13.xyz);
  r12 = vec4<f32>(v_75.xyz, r12.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r13 = vec4<f32>(v_76.xy, r13.zw);
  let v_77 = (r11.xyz + r13.xyz);
  r14 = vec4<f32>(v_77.xyz, r14.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r13 = vec4<f32>(v_78.xy, r13.zw);
  let v_79 = (r11.xyz + r13.xyz);
  r15 = vec4<f32>(v_79.xyz, r15.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r13 = vec4<f32>(v_80.xy, r13.zw);
  let v_81 = (r11.xyz + r13.xyz);
  r16 = vec4<f32>(v_81.xyz, r16.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r13 = vec4<f32>(v_82.xy, r13.zw);
  let v_83 = (r11.xyz + r13.xyz);
  r17 = vec4<f32>(v_83.xyz, r17.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r13 = vec4<f32>(v_84.xy, r13.zw);
  let v_85 = (r11.xyz + r13.xyz);
  r18 = vec4<f32>(v_85.xyz, r18.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r13 = vec4<f32>(v_86.xy, r13.zw);
  let v_87 = (r11.xyz + r13.xyz);
  r19 = vec4<f32>(v_87.xyz, r19.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r13 = vec4<f32>(v_88.xy, r13.zw);
  let v_89 = (r11.xyz + r13.xyz);
  r20 = vec4<f32>(v_89.xyz, r20.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r13 = vec4<f32>(v_90.xy, r13.zw);
  let v_91 = (r11.xyz + r13.xyz);
  r21 = vec4<f32>(v_91.xyz, r21.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r13 = vec4<f32>(v_92.xy, r13.zw);
  let v_93 = (r11.xyz + r13.xyz);
  r22 = vec4<f32>(v_93.xyz, r22.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r13 = vec4<f32>(v_94.xy, r13.zw);
  let v_95 = (r11.xyz + r13.xyz);
  r23 = vec4<f32>(v_95.xyz, r23.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r13 = vec4<f32>(v_96.xy, r13.zw);
  let v_97 = (r11.xyz + r13.xyz);
  r24 = vec4<f32>(v_97.xyz, r24.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r13 = vec4<f32>(v_98.xy, r13.zw);
  let v_99 = (r11.xyz + r13.xyz);
  r25 = vec4<f32>(v_99.xyz, r25.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r13 = vec4<f32>(v_100.xy, r13.zw);
  let v_101 = (r11.xyz + r13.xyz);
  r26 = vec4<f32>(v_101.xyz, r26.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r13 = vec4<f32>(v_102.xy, r13.zw);
  let v_103 = (r11.xyz + r13.xyz);
  r11 = vec4<f32>(v_103.xyz, r11.w);
  let v_104 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_104.xy, r10.z);
  let v_105 = r12.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_105.xy, r12.z);
  let v_106 = r14.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_106.xy, r14.z);
  let v_107 = r15.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_107.xy, r15.z);
  let v_108 = r16.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_108.xy, r16.z);
  let v_109 = r17.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_109.xy, r17.z);
  let v_110 = r18.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_110.xy, r18.z);
  let v_111 = r19.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_111.xy, r19.z);
  let v_112 = r20.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_112.xy, r20.z);
  let v_113 = r21.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_113.xy, r21.z);
  let v_114 = r22.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_114.xy, r22.z);
  let v_115 = r23.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_115.xy, r23.z);
  let v_116 = r24.xyxx;
  r14.x = textureSampleCompareLevel(t15, s15, v_116.xy, r24.z);
  let v_117 = r25.xyxx;
  r14.y = textureSampleCompareLevel(t15, s15, v_117.xy, r25.z);
  let v_118 = r26.xyxx;
  r14.z = textureSampleCompareLevel(t15, s15, v_118.xy, r26.z);
  let v_119 = r11.xyxx;
  r14.w = textureSampleCompareLevel(t15, s15, v_119.xy, r11.z);
  r10 = (r10 + r12);
  r10 = (r13 + r10);
  r10 = (r14 + r10);
  r4.z = dot(r10, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_120 = abs(r9.yyyy);
  r4.w = max(v_120.w, abs(r9.xxxx).w);
  r4.w = clamp(fma(r4.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.w * r2.w);
  r2.w = fma(r4.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r4.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r4.z = sqrt(r4.z);
  r4.z = (r4.z * cb6_6.tint_symbol_6[3u].z);
  let v_121 = -(r2.wwww);
  r2.w = fma(r4.z, v_121.w, r2.w);
  let v_122 = dot(r1.xyw, v_32.xyz);
  r4.z = clamp(vec4<f32>(v_122, v_122, v_122, v_122).z, 0.0f, 1.0f);
  let v_123 = dot(r6.xyz, r1.xyw);
  r9.x = clamp(vec4<f32>(v_123, v_123, v_123, v_123).x, 0.0f, 1.0f);
  let v_124 = dot(r7.xyz, v_32.xyz);
  r9.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = ((-(r9.xyxx)).xy + vec2<f32>(1.0f));
  r9 = vec4<f32>(v_125.xy, r9.zw);
  let v_126 = (r9.xy * r9.xy);
  r9 = vec4<f32>(r9.xy, v_126.xy);
  let v_127 = (r9.zw * r9.zw);
  r9 = vec4<f32>(r9.xy, v_127.xy);
  let v_128 = (r9.xy * r9.zw);
  r9 = vec4<f32>(v_128.xy, r9.zw);
  r4.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_129 = fma(cb10_10.tint_symbol_5[0u].yy, r9.xy, r4.ww);
  r9 = vec4<f32>(v_129.xy, r9.zw);
  let v_130 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r9 = vec4<f32>(r9.xy, v_130.xy);
  r2.y = (r9.z * 0.125f);
  r5.w = fma((-(r2.zzzz)).w, r9.x, 1.0f);
  r6.w = dot(r1.xyw, r7.xyz);
  r6.w = clamp(((r6.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r6.w = log2(r6.w);
  r6.w = (r6.w * r9.w);
  r6.w = exp2(r6.w);
  r6.w = (r9.y * r6.w);
  r6.w = (r2.y * r6.w);
  r6.w = (r2.z * r6.w);
  r6.w = (r4.z * r6.w);
  r4.z = (r4.z * r5.w);
  let v_131 = fma(r0.xyz, r4.zzz, r6.www);
  r7 = vec4<f32>(v_131.xyz, r7.w);
  let v_132 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_132.xyz, r7.w);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.z) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_133 = (v_29.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_133.xyz, r9.w);
    let v_134 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_134.xyz, r10.w);
    r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_135 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_135.xyz, r10.w);
    let v_136 = (r10.xyz + v_29.xyz);
    r10 = vec4<f32>(v_136.xyz, r10.w);
    let v_137 = bitcast<vec3<u32>>(r6.www);
    let v_138 = r9.xyz;
    let v_139 = select(r10.xyz, v_138, (v_137 != vec3<u32>()));
    r9 = vec4<f32>(v_139.xyz, r9.w);
    r6.w = dot(r9.xyz, r9.xyz);
    let v_140 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_140.xyz, r9.w);
    r7.w = dot(r9.xyz, r9.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_141 = (r7.www * r9.xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_142 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r9.xyz, v_142.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_143 = dot(r9.xyz, r1.xyw);
    r8.w = clamp(vec4<f32>(v_143, v_143, v_143, v_143).w, 0.0f, 1.0f);
    r7.w = (r7.w * r8.w);
    r8.w = (r6.w * r7.w);
    let v_144 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_144.xyz, r10.w);
    let v_145 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_145.xyz, r10.w);
    let v_146 = fma(r5.xyz, r2.xxx, r9.xyz);
    r9 = vec4<f32>(v_146.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_147 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_147.xyz, r9.w);
    let v_148 = dot(r9.xyz, r6.xyz);
    r8.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r10.w = (r8.w * r8.w);
    r10.w = (r10.w * r10.w);
    r8.w = (r8.w * r10.w);
    r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r4.w);
    let v_149 = dot(r9.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_149, v_149, v_149, v_149).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r9.x * r9.w);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r7.w = (r7.w * r8.w);
    r6.w = (r6.w * r7.w);
    r6.w = (r2.y * r6.w);
    let v_150 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_150.xyz, r9.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r6.w)));
    let v_151 = bitcast<u32>(r7.w);
    let v_152 = r6.w;
    r4.z = select(r4.z, v_152, (v_151 != 0u));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_153 = (v_29.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      let v_154 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_154.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_155 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_155.xyz, r12.w);
      let v_156 = (r12.xyz + v_29.xyz);
      r12 = vec4<f32>(v_156.xyz, r12.w);
      let v_157 = bitcast<vec3<u32>>(r6.www);
      let v_158 = r11.xyz;
      let v_159 = select(r12.xyz, v_158, (v_157 != vec3<u32>()));
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_160 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_160.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_161 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_162 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r11.xyz, v_162.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_163 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_163, v_163, v_163, v_163).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.w * r7.w);
      let v_164 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_164.xyz, r12.w);
      let v_165 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      let v_166 = fma(r5.xyz, r2.xxx, r11.xyz);
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_167 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = dot(r11.xyz, r6.xyz);
      r8.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r10.w = (r8.w * r8.w);
      r10.w = (r10.w * r10.w);
      r8.w = (r8.w * r10.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r4.w);
      let v_169 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_169, v_169, v_169, v_169).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r9.w * r10.w);
      r10.w = exp2(r10.w);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.y * r6.w);
      let v_170 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
    }
  } else {
    r4.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
    r4.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_171 = (v_29.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_172.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_173 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_173.xyz, r12.w);
      let v_174 = (r12.xyz + v_29.xyz);
      r12 = vec4<f32>(v_174.xyz, r12.w);
      let v_175 = bitcast<vec3<u32>>(r6.www);
      let v_176 = r11.xyz;
      let v_177 = select(r12.xyz, v_176, (v_175 != vec3<u32>()));
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_178 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_178.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_179 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_180 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r11.xyz, v_180.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_181 = dot(r11.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_181, v_181, v_181, v_181).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.w * r7.w);
      let v_182 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_182.xyz, r12.w);
      let v_183 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = fma(r5.xyz, r2.xxx, r11.xyz);
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_185 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = dot(r11.xyz, r6.xyz);
      r8.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r10.w = (r8.w * r8.w);
      r10.w = (r10.w * r10.w);
      r8.w = (r8.w * r10.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r4.w);
      let v_187 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r9.w * r10.w);
      r10.w = exp2(r10.w);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.y * r6.w);
      let v_188 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r4.z) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.z = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r4.z) != 0u)) {
    } else {
      r4.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_189 = (v_29.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      let v_190 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_190.xyz, r12.w);
      r6.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_191 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_191.xyz, r12.w);
      let v_192 = (r12.xyz + v_29.xyz);
      r12 = vec4<f32>(v_192.xyz, r12.w);
      let v_193 = bitcast<vec3<u32>>(r4.zzz);
      let v_194 = r11.xyz;
      let v_195 = select(r12.xyz, v_194, (v_193 != vec3<u32>()));
      r11 = vec4<f32>(v_195.xyz, r11.w);
      r4.z = dot(r11.xyz, r11.xyz);
      let v_196 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_196.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_197 = (r6.www * r11.xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      r4.z = clamp(fma(-(r4.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r4.z, cb3_3.tint_symbol_2[14u].w);
      r4.z = (r4.z / r6.w);
      let v_198 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r11.xyz, v_198.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_199 = dot(r11.xyz, r1.xyw);
      r7.w = clamp(vec4<f32>(v_199, v_199, v_199, v_199).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r4.z * r6.w);
      let v_200 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_200.xyz, r12.w);
      let v_201 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      let v_202 = fma(r5.xyz, r2.xxx, r11.xyz);
      r5 = vec4<f32>(v_202.xyz, r5.w);
      r2.x = dot(r5.xyz, r5.xyz);
      r2.x = inverseSqrt(r2.x);
      let v_203 = (r2.xxx * r5.xyz);
      r5 = vec4<f32>(v_203.xyz, r5.w);
      let v_204 = dot(r5.xyz, r6.xyz);
      r2.x = clamp(vec4<f32>(v_204, v_204, v_204, v_204).x, 0.0f, 1.0f);
      r2.x = ((-(r2.xxxx)).x + 1.0f);
      r6.x = (r2.x * r2.x);
      r6.x = (r6.x * r6.x);
      r2.x = (r2.x * r6.x);
      r2.x = fma(cb10_10.tint_symbol_5[0u].y, r2.x, r4.w);
      let v_205 = dot(r5.xyz, r1.xyw);
      r4.w = clamp(vec4<f32>(v_205, v_205, v_205, v_205).w, 0.0f, 1.0f);
      r4.w = log2(r4.w);
      r4.w = (r4.w * r9.w);
      r4.w = exp2(r4.w);
      r2.x = (r2.x * r4.w);
      r2.x = (r6.w * r2.x);
      r2.x = (r4.z * r2.x);
      r2.x = (r2.y * r2.x);
      let v_206 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_206.xyz, r9.w);
    }
  }
  r2.x = (r5.w * r5.w);
  r2.y = (r2.z * r2.z);
  let v_207 = (r9.xyz * r2.yyy);
  r5 = vec4<f32>(v_207.xyz, r5.w);
  let v_208 = fma(r2.xxx, r10.xyz, r5.xyz);
  r2 = vec4<f32>(v_208.xyz, r2.w);
  let v_209 = fma(r7.xyz, r2.www, r2.xyz);
  r2 = vec4<f32>(v_209.xyz, r2.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_210 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_210.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_211 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_211.xyz, r6.w);
  let v_212 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_212.xyz, r6.w);
  let v_213 = fma(r5.xyz, r1.zzz, r6.xyz);
  r5 = vec4<f32>(v_213.xyz, r5.w);
  let v_214 = (r4.yyy * r5.xyz);
  r4 = vec4<f32>(r4.x, v_214.xyz);
  let v_215 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_215.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_216 = dot(r6.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_216, v_216, v_216, v_216).w, 0.0f, 1.0f);
  let v_217 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r1 = vec4<f32>(v_217.xyz, r1.w);
  let v_218 = fma(r1.xyz, r4.xxx, r4.yzw);
  r1 = vec4<f32>(v_218.xyz, r1.w);
  let v_219 = (r5.www * r1.xyz);
  r1 = vec4<f32>(v_219.xyz, r1.w);
  let v_220 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_220.xyz, r0.w);
  r0.w = dot(r8.xyz, r8.xyz);
  r1.x = sqrt(r0.w);
  let v_221 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_221.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r8.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_222 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_222 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_223 = (r0.www * r8.xyz);
  r2 = vec4<f32>(v_223.xyz, r2.w);
  let v_224 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_225 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_225, v_225, v_225, v_225).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_226 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_226.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_227 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_227.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_228 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_228.xyz, r2.w);
  let v_229 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_229.xyz, r2.w);
  let v_230 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_230.xyz, r4.w);
  let v_231 = fma(r1.www, r4.xyz, r2.xyz);
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_233 = (r2.xyz + v_232.xyz);
  r2 = vec4<f32>(v_233.xyz, r2.w);
  let v_234 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_234.xyz, r2.w);
  r4.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r4.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r4.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_235 = fma(r1.xxx, r4.xyz, r2.xyz);
  r1 = vec4<f32>(v_235.xy, r1.z, v_235.z);
  let v_236 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_236.xy, r1.z, v_236.z);
  let v_237 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_237.xyz, r0.w);
  let v_238 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_238.xyz, r0.w);
  let v_239 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r3 = vec4<f32>(v_239.xyz, r3.w);
  r0 = max(r3, vec4<f32>());
  let v_240 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_240.xyz, r0.w);
  let v_241 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_241.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
