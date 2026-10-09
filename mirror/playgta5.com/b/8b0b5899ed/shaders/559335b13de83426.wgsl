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
  r2.w = fma((-(r2.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_8 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(r3.xy, v_9.xy);
  r2.w = fma(r1.w, 0.5f, 0.5f);
  r4.x = fma(r2.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r2.w + 0.30000001192092895508f);
  let v_10 = (r3.zw * r4.xy);
  r3 = vec4<f32>(r3.xy, v_10.xy);
  r2.w = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
    let v_11 = fract(v6.yx);
    let v_12 = r4;
    r4 = vec4<f32>(v_11.x, v_12.y, v_11.y, v_12.w);
    r4.w = fma(r4.x, v0.w, v1.w);
    r2.w = fract(cb13_13.tint_symbol_4[16u].z);
    r4.y = ((-(r4.zzzz)).y + 1.0f);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_13 = bitcast<vec2<u32>>(r5.xx);
    let v_14 = r4.wy;
    let v_15 = select(r4.zw, v_14, (v_13 != vec2<u32>()));
    r5 = vec4<f32>(v_15.xy, r5.zw);
    r5 = textureSampleLevel(t14, s14, r5.xyxx.xy, 0.0f);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
      let v_16 = abs(v6.zzzz);
      let v_17 = abs(v6.wwww);
      r4.x = fma(r4.x, v_16.x, v_17.x);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
      let v_18 = bitcast<vec2<u32>>(r2.ww);
      let v_19 = r4.xy;
      let v_20 = select(r4.zx, v_19, (v_18 != vec2<u32>()));
      r4 = vec4<f32>(v_20.xy, r4.zw);
      r4 = textureSampleLevel(t14, s14, r4.xyxx.xy, 0.0f);
    } else {
      r4 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r4.w);
    }
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r5.w >= 0.50196081399917602539f)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r5.w)));
    let v_21 = bitcast<u32>(r2.z);
    let v_22 = r2.w;
    r2.w = select(r4.w, v_22, (v_21 != 0u));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r4.w)));
    let v_23 = bitcast<vec4<u32>>(r2.wwww);
    r5 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r5, (v_23 != vec4<u32>()));
    r2.w = fma(r5.w, 2.0f, -1.0f);
    r2.w = ((-(abs(r2.wwww))).w + 1.0f);
    r4.w = ((-(r4.zzzz)).w + 1.0f);
    r4.w = (r4.w * r4.w);
    r4.w = (r4.x * r4.w);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r3.y = fma(r4.w, r2.x, r3.y);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r3.x = fma(r4.w, r2.x, r3.x);
    let v_24 = fma(r0.xyz, r2.www, r5.xyz);
    r2 = vec4<f32>(v_24.xy, r2.z, v_24.z);
    let v_25 = bitcast<u32>(r2.z);
    r2.z = select(r4.y, 0.0f, (v_25 != 0u));
    let v_26 = -(r2.xywx);
    let v_27 = fma(r2.xyw, cb13_13.tint_symbol_4[7u].xyz, v_26.xyz);
    r5 = vec4<f32>(v_27.xyz, r5.w);
    let v_28 = fma(r2.zzz, r5.xyz, r2.xyw);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = (r4.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r4 = vec4<f32>(v_29.xy, r4.z, v_29.z);
    let v_30 = fma(r2.xyz, r4.zzz, r4.xyw);
    r0 = vec4<f32>(v_30.xyz, r0.w);
  }
  let v_31 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = -(v2.xyzx);
  let v_33 = (v_32.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_34 = (r2.www * r2.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_36 = fma(r2.xyz, r2.www, v_35.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_37 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_38 = (r3.zw * r3.zw);
  r3 = vec4<f32>(r3.xy, v_38.xy);
  r4.w = (r3.y + -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_39 = -(r4.wwww);
  r3.y = (r3.y + v_39.y);
  r4.w = (r4.w * 558.0f);
  r3.y = fma(r3.y, 3.0f, r4.w);
  r4.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_40 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  let v_41 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = &(x0[0u]);
  let v_46 = r8;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = &(x0[1u]);
  let v_49 = r9;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  let v_51 = &(x0[2u]);
  let v_52 = r10;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = &(x0[3u]);
  let v_55 = r7;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_57 = r11;
  r11 = vec4<f32>(v_57.x, v_56.x, v_57.z, v_56.y);
  r5.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_58 = abs(r10.yyyy);
  r6.w = max(v_58.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_59 = (bitcast<u32>(r6.w) != 0u);
  let v_60 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_60, v_59);
  let v_61 = abs(r9.yyyy);
  r7.z = max(v_61.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_62 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_62 != 0u));
  let v_63 = abs(r8.yyyy);
  r7.z = max(v_63.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_64 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_64 != 0u));
  let v_65 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_65.xyz, r8.w);
  r5.w = f32(bitcast<i32>(r5.w));
  r6.w = (r5.w + 0.5f);
  r6.w = (r6.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r5.wwww)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r5.w = dot(r9, cb6_6.tint_symbol_6[12u]);
  r7.z = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, !((r5.w == 0.0f))));
  r5.w = ((-(r5.wwww)).w + r8.z);
  let v_66 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_66.xy, r10.z, v_66.z);
  r10.z = dpdx(r5.w);
  let v_67 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_67.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_68 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_68.xy, r8.zw);
  let v_69 = -(r8.xyxx);
  let v_70 = fma(r10.xz, r12.xz, v_69.xy);
  r13 = vec4<f32>(v_70.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_71 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_71.z);
  let v_72 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_73.xy, r8.zw);
  let v_74 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_74.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_75 = bitcast<u32>(r6.w);
  let v_76 = r5.w;
  r11.z = select(r8.z, v_76, (v_75 != 0u));
  r9.z = 0.0f;
  let v_77 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_77.xyz, r8.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_79.xyz, r10.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_81.xyz, r12.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_83.xyz, r13.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_85.xyz, r14.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_87.xyz, r15.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_89.xyz, r16.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_91.xyz, r17.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_93.xyz, r18.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_95.xyz, r19.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_97.xyz, r20.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_99.xyz, r21.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_101.xyz, r22.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_102.xy, r11.zw);
  let v_103 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_103.xyz, r23.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_104.xy, r11.zw);
  let v_105 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_105.xyz, r24.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_106.xy, r11.zw);
  let v_107 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_107.xyz, r9.w);
  let v_108 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_108.xy, r8.z);
  let v_109 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_109.xy, r10.z);
  let v_110 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_110.xy, r12.z);
  let v_111 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_111.xy, r13.z);
  let v_112 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_112.xy, r14.z);
  let v_113 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_113.xy, r15.z);
  let v_114 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_114.xy, r16.z);
  let v_115 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_115.xy, r17.z);
  let v_116 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_116.xy, r18.z);
  let v_117 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_117.xy, r19.z);
  let v_118 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_118.xy, r20.z);
  let v_119 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_119.xy, r21.z);
  let v_120 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_120.xy, r22.z);
  let v_121 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_121.xy, r23.z);
  let v_122 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_122.xy, r24.z);
  let v_123 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_123.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_124 = abs(r7.yyyy);
  r6.w = max(v_124.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_6[3u].z);
  let v_125 = -(r4.wwww);
  r4.w = fma(r5.w, v_125.w, r4.w);
  let v_126 = dot(r1.xyw, v_35.xyz);
  r5.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
  let v_127 = dot(r4.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
  let v_128 = dot(r5.xyz, v_35.xyz);
  r7.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
  let v_129 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_129.xy, r7.zw);
  let v_130 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_130.xy);
  let v_131 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_131.xy);
  let v_132 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_132.xy, r7.zw);
  r6.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_133 = fma(cb10_10.tint_symbol_5[0u].yy, r7.xy, r6.ww);
  r7 = vec4<f32>(v_133.xy, r7.zw);
  let v_134 = (r3.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_134.xy);
  r3.y = (r7.z * 0.125f);
  r7.x = fma((-(r3.xxxx)).x, r7.x, 1.0f);
  r5.x = dot(r1.xyw, r5.xyz);
  r5.x = clamp(((r5.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r5.x = log2(r5.x);
  r5.x = (r5.x * r7.w);
  r5.x = exp2(r5.x);
  r5.x = (r7.y * r5.x);
  r5.x = (r3.y * r5.x);
  r5.x = (r3.x * r5.x);
  r5.x = (r5.w * r5.x);
  r5.y = (r5.w * r7.x);
  let v_135 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_135.xyz, r5.w);
  let v_136 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_137 = (v_32.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_137.xyz, r8.w);
    let v_138 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_139 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = (r9.xyz + v_32.xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = bitcast<vec3<u32>>(r7.yyy);
    let v_142 = r8.xyz;
    let v_143 = select(r9.xyz, v_142, (v_141 != vec3<u32>()));
    r8 = vec4<f32>(v_143.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_144 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_144.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_145 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_145.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_146 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_146.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_147 = dot(r8.xyz, r1.xyw);
    r8.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_148 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_148.xyz, r9.w);
    let v_149 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_149.xyz, r9.w);
    let v_150 = fma(r2.xyz, r2.www, r8.xyz);
    r8 = vec4<f32>(v_150.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_151 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
    let v_152 = dot(r8.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
    let v_153 = dot(r8.xyz, r1.xyw);
    r8.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r3.y * r7.y);
    let v_154 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_155 = bitcast<u32>(r7.z);
    let v_156 = r7.y;
    r5.w = select(r5.w, v_156, (v_155 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_157 = (v_32.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = bitcast<vec3<u32>>(r7.yyy);
      let v_162 = r10.xyz;
      let v_163 = select(r11.xyz, v_162, (v_161 != vec3<u32>()));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_164 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_165 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_166.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_167 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_168 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      let v_170 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_171 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_173 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_174 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_174.xyz, r8.w);
    }
  } else {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_175 = (v_32.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      let v_178 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = bitcast<vec3<u32>>(r7.yyy);
      let v_180 = r10.xyz;
      let v_181 = select(r11.xyz, v_180, (v_179 != vec3<u32>()));
      r10 = vec4<f32>(v_181.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_182 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_183 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_184 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_184.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_185 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_186 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      let v_187 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_187.xyz, r9.w);
      let v_188 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_189 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      let v_190 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_191 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_192 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_192.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_193 = (v_32.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_194.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = bitcast<vec3<u32>>(r7.yyy);
      let v_198 = r10.xyz;
      let v_199 = select(r11.xyz, v_198, (v_197 != vec3<u32>()));
      r10 = vec4<f32>(v_199.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_200 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_201 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.z);
      let v_202 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_202.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_203 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_204 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      let v_205 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_205.xyz, r9.w);
      let v_206 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_206.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_207 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_209 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_210 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_210.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_211 = (v_32.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_211.xyz, r10.w);
      let v_212 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_212.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[23u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[23u].w);
      let v_213 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      let v_214 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_214.xyz, r11.w);
      let v_215 = bitcast<vec3<u32>>(r7.yyy);
      let v_216 = r10.xyz;
      let v_217 = select(r11.xyz, v_216, (v_215 != vec3<u32>()));
      r10 = vec4<f32>(v_217.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_218 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_219 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_219.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.z);
      let v_220 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.z = dot(r10.xyz, v_220.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_221 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_221, v_221, v_221, v_221).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_222 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_223.xyz, r9.w);
      let v_224 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_225 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      let v_226 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_226, v_226, v_226, v_226).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_227 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_228 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_228.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_229 = (v_32.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_229.xyz, r10.w);
      let v_230 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[24u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[24u].w);
      let v_231 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      let v_233 = bitcast<vec3<u32>>(r7.yyy);
      let v_234 = r10.xyz;
      let v_235 = select(r11.xyz, v_234, (v_233 != vec3<u32>()));
      r10 = vec4<f32>(v_235.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_236 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_237 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_237.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.z);
      let v_238 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.z = dot(r10.xyz, v_238.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_239 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_240 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      let v_241 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_241.xyz, r9.w);
      let v_242 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_242.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_243 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      let v_244 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_244, v_244, v_244, v_244).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_245 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_246 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_246.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_247 = (v_32.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_248.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[25u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[25u].w);
      let v_249 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      let v_250 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = bitcast<vec3<u32>>(r7.yyy);
      let v_252 = r10.xyz;
      let v_253 = select(r11.xyz, v_252, (v_251 != vec3<u32>()));
      r10 = vec4<f32>(v_253.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_254 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_255 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_255.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.z);
      let v_256 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.z = dot(r10.xyz, v_256.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_257 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_257, v_257, v_257, v_257).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_258 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_258.xyz, r11.w);
      let v_259 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_259.xyz, r9.w);
      let v_260 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_261 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      let v_262 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_262, v_262, v_262, v_262).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_263 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_264 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_264.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_265 = (v_32.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_265.xyz, r10.w);
      let v_266 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_266.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_267 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_267.xyz, r11.w);
      let v_268 = (r11.xyz + v_32.xyz);
      r11 = vec4<f32>(v_268.xyz, r11.w);
      let v_269 = bitcast<vec3<u32>>(r5.www);
      let v_270 = r10.xyz;
      let v_271 = select(r11.xyz, v_270, (v_269 != vec3<u32>()));
      r10 = vec4<f32>(v_271.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_272 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_272.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_273 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_273.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r7.y);
      let v_274 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_274.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_275 = dot(r10.xyz, r1.xyw);
      r7.z = clamp(vec4<f32>(v_275, v_275, v_275, v_275).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r5.w * r7.y);
      let v_276 = (r7.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_276.xyz, r11.w);
      let v_277 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_277.xyz, r9.w);
      let v_278 = fma(r2.xyz, r2.www, r10.xyz);
      r2 = vec4<f32>(v_278.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_279 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_279.xyz, r2.w);
      let v_280 = dot(r2.xyz, r4.xyz);
      r2.w = clamp(vec4<f32>(v_280, v_280, v_280, v_280).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r4.x = (r2.w * r2.w);
      r4.x = (r4.x * r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = fma(cb10_10.tint_symbol_5[0u].y, r2.w, r6.w);
      let v_281 = dot(r2.xyz, r1.xyw);
      r2.x = clamp(vec4<f32>(v_281, v_281, v_281, v_281).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r7.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r7.y * r2.x);
      r2.x = (r5.w * r2.x);
      r2.x = (r3.y * r2.x);
      let v_282 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_282.xyz, r8.w);
    }
  }
  r2.x = (r7.x * r7.x);
  r2.y = (r3.x * r3.x);
  let v_283 = (r8.xyz * r2.yyy);
  r2 = vec4<f32>(r2.x, v_283.xyz);
  let v_284 = fma(r2.xxx, r9.xyz, r2.yzw);
  r2 = vec4<f32>(v_284.xyz, r2.w);
  let v_285 = fma(r5.xyz, r4.www, r2.xyz);
  r2 = vec4<f32>(v_285.xyz, r2.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_286 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_286.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_287 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_287.xyz, r5.w);
  let v_288 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_288.xyz, r5.w);
  let v_289 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_289.xyz, r4.w);
  let v_290 = (r3.www * r4.xyz);
  r3 = vec4<f32>(v_290.xy, r3.z, v_290.z);
  let v_291 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_291.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_292 = dot(r5.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_292, v_292, v_292, v_292).w, 0.0f, 1.0f);
  let v_293 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r4.xyz);
  r1 = vec4<f32>(v_293.xyz, r1.w);
  let v_294 = fma(r1.xyz, r3.zzz, r3.xyw);
  r1 = vec4<f32>(v_294.xyz, r1.w);
  let v_295 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_295.xyz, r1.w);
  let v_296 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_296.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_297 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_297.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_298 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_298 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_299 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_299.xyz, r2.w);
  let v_300 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_300, v_300, v_300, v_300).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_301 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_301, v_301, v_301, v_301).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_302 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_302.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_303 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_303.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_304 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_304.xyz, r2.w);
  let v_305 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_305.xyz, r2.w);
  let v_306 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_306.xyz, r3.w);
  let v_307 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_307.xyz, r2.w);
  let v_308 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_309 = (r2.xyz + v_308.xyz);
  r2 = vec4<f32>(v_309.xyz, r2.w);
  let v_310 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_310.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_311 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_311.xy, r1.z, v_311.z);
  let v_312 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_312.xy, r1.z, v_312.z);
  let v_313 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_313.xyz, r0.w);
  let v_314 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_314.xyz, r0.w);
  let v_315 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_315.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
