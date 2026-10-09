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
  r3.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_8 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  let v_9 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(r4.xy, v_9.xy);
  r2.w = fma(r1.w, 0.5f, 0.5f);
  r5.x = fma(r2.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.y = (r2.w + 0.30000001192092895508f);
  let v_10 = (r4.zw * r5.xy);
  r4 = vec4<f32>(r4.xy, v_10.xy);
  r2.w = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
    let v_11 = fract(v6.yx);
    let v_12 = r5;
    r5 = vec4<f32>(v_11.x, v_12.y, v_11.y, v_12.w);
    r5.w = fma(r5.x, v0.w, v1.w);
    r2.w = fract(cb13_13.tint_symbol_4[16u].z);
    r5.y = ((-(r5.zzzz)).y + 1.0f);
    r6.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_13 = bitcast<vec2<u32>>(r6.xx);
    let v_14 = r5.wy;
    let v_15 = select(r5.zw, v_14, (v_13 != vec2<u32>()));
    r6 = vec4<f32>(v_15.xy, r6.zw);
    r6 = textureSampleLevel(t14, s14, r6.xyxx.xy, 0.0f);
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.w)));
    if ((bitcast<u32>(r5.w) != 0u)) {
      let v_16 = abs(v6.zzzz);
      let v_17 = abs(v6.wwww);
      r5.x = fma(r5.x, v_16.x, v_17.x);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
      let v_18 = bitcast<vec2<u32>>(r2.ww);
      let v_19 = r5.xy;
      let v_20 = select(r5.zx, v_19, (v_18 != vec2<u32>()));
      r5 = vec4<f32>(v_20.xy, r5.zw);
      r5 = textureSampleLevel(t14, s14, r5.xyxx.xy, 0.0f);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
    }
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_21 = bitcast<u32>(r2.z);
    let v_22 = r2.w;
    r2.w = select(r5.w, v_22, (v_21 != 0u));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r5.w)));
    let v_23 = bitcast<vec4<u32>>(r2.wwww);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_23 != vec4<u32>()));
    r2.w = fma(r6.w, 2.0f, -1.0f);
    r2.w = ((-(abs(r2.wwww))).w + 1.0f);
    r5.w = ((-(r5.zzzz)).w + 1.0f);
    r5.w = (r5.w * r5.w);
    r5.w = (r5.x * r5.w);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r4.y = fma(r5.w, r2.x, r4.y);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r4.x = fma(r5.w, r2.x, r4.x);
    let v_24 = fma(r0.xyz, r2.www, r6.xyz);
    r2 = vec4<f32>(v_24.xy, r2.z, v_24.z);
    let v_25 = bitcast<u32>(r2.z);
    r2.z = select(r5.y, 0.0f, (v_25 != 0u));
    let v_26 = -(r2.xywx);
    let v_27 = fma(r2.xyw, cb13_13.tint_symbol_4[7u].xyz, v_26.xyz);
    r6 = vec4<f32>(v_27.xyz, r6.w);
    let v_28 = fma(r2.zzz, r6.xyz, r2.xyw);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = (r5.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r5 = vec4<f32>(v_29.xy, r5.z, v_29.z);
    let v_30 = fma(r2.xyz, r5.zzz, r5.xyw);
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
  r5 = vec4<f32>(v_34.xyz, r5.w);
  let v_35 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_36 = fma(r2.xyz, r2.www, v_35.xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  r5.w = dot(r6.xyz, r6.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_37 = (r5.www * r6.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  r4.x = clamp(r4.xxxx.x, 0.0f, 1.0f);
  let v_38 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_38.xy);
  r5.w = (r4.y + -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_39 = -(r5.wwww);
  r4.y = (r4.y + v_39.y);
  r5.w = (r5.w * 558.0f);
  r4.y = fma(r4.y, 3.0f, r5.w);
  r5.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_40 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  let v_42 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_44.xyz, r9.w);
  let v_45 = &(x0[0u]);
  let v_46 = r9;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_47.xyz, r10.w);
  let v_48 = &(x0[1u]);
  let v_49 = r10;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_50.xyz, r11.w);
  let v_51 = &(x0[2u]);
  let v_52 = r11;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_53.xyz, r8.w);
  let v_54 = &(x0[3u]);
  let v_55 = r8;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_57 = r12;
  r12 = vec4<f32>(v_57.x, v_56.x, v_57.z, v_56.y);
  r6.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r6.w = (r6.w * 0.5f);
  let v_58 = abs(r11.yyyy);
  r7.w = max(v_58.w, abs(r11.xxxx).w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (r7.w < r6.w)));
  let v_59 = (bitcast<u32>(r7.w) != 0u);
  let v_60 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r7.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_60, v_59);
  let v_61 = abs(r10.yyyy);
  r8.z = max(v_61.z, abs(r10.xxxx).z);
  r8.z = bitcast<f32>(select(0u, 4294967295u, (r8.z < r6.w)));
  let v_62 = bitcast<u32>(r8.z);
  r7.w = select(r7.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_62 != 0u));
  let v_63 = abs(r9.yyyy);
  r8.z = max(v_63.z, abs(r9.xxxx).z);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r8.z < r6.w)));
  let v_64 = bitcast<u32>(r6.w);
  r6.w = select(r7.w, 0.0f, (v_64 != 0u));
  let v_65 = x0[bitcast<i32>(r6.w)];
  r9 = vec4<f32>(v_65.xyz, r9.w);
  r6.w = f32(bitcast<i32>(r6.w));
  r7.w = (r6.w + 0.5f);
  r7.w = (r7.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r6.wwww)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r6.w = dot(r10, cb6_6.tint_symbol_6[12u]);
  r8.z = dot(r10, cb6_6.tint_symbol_6[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r7.w);
  r7.w = bitcast<f32>(select(0u, 4294967295u, !((r6.w == 0.0f))));
  r6.w = ((-(r6.wwww)).w + r9.z);
  let v_66 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_66.xy, r11.z, v_66.z);
  r11.z = dpdx(r6.w);
  let v_67 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_67.xyz, r13.w);
  r13.w = dpdy(r6.w);
  let v_68 = (r11.yw * r13.yw);
  r9 = vec4<f32>(v_68.xy, r9.zw);
  let v_69 = -(r9.xyxx);
  let v_70 = fma(r11.xz, r13.xz, v_69.xy);
  r14 = vec4<f32>(v_70.xy, r14.zw);
  r8.w = (1.0f / r14.x);
  r9.x = (r11.z * r13.y);
  let v_71 = -(r9.xxxx);
  r14.z = fma(r11.x, r13.w, v_71.z);
  let v_72 = (r8.ww * r14.yz);
  r9 = vec4<f32>(v_72.xy, r9.zw);
  let v_73 = max(r9.xy, vec2<f32>());
  r9 = vec4<f32>(v_73.xy, r9.zw);
  let v_74 = min(r9.xy, vec2<f32>(0.5f));
  r9 = vec4<f32>(v_74.xy, r9.zw);
  r6.w = fma((-(r8.zzzz)).w, r9.x, r6.w);
  r6.w = fma((-(r8.zzzz)).w, r9.y, r6.w);
  let v_75 = bitcast<u32>(r7.w);
  let v_76 = r6.w;
  r12.z = select(r9.z, v_76, (v_75 != 0u));
  r10.z = 0.0f;
  let v_77 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_77.xyz, r9.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_79.xyz, r11.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_83.xyz, r14.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_87.xyz, r16.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_91.xyz, r18.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_93.xyz, r19.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_94.xy, r12.zw);
  let v_95 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_95.xyz, r20.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_96.xy, r12.zw);
  let v_97 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_97.xyz, r21.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_98.xy, r12.zw);
  let v_99 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_99.xyz, r22.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_100.xy, r12.zw);
  let v_101 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_101.xyz, r23.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_102.xy, r12.zw);
  let v_103 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_103.xyz, r24.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_104.xy, r12.zw);
  let v_105 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_105.xyz, r25.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_106.xy, r12.zw);
  let v_107 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_107.xyz, r10.w);
  let v_108 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_108.xy, r9.z);
  let v_109 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_109.xy, r11.z);
  let v_110 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_110.xy, r13.z);
  let v_111 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_111.xy, r14.z);
  let v_112 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_112.xy, r15.z);
  let v_113 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_113.xy, r16.z);
  let v_114 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_114.xy, r17.z);
  let v_115 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_115.xy, r18.z);
  let v_116 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_116.xy, r19.z);
  let v_117 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_117.xy, r20.z);
  let v_118 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_118.xy, r21.z);
  let v_119 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_119.xy, r22.z);
  let v_120 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_120.xy, r23.z);
  let v_121 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_121.xy, r24.z);
  let v_122 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_122.xy, r25.z);
  let v_123 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_123.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r6.w = dot(r9, vec4<f32>(1.0f));
  r5.w = clamp(fma(r5.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_124 = abs(r8.yyyy);
  r7.w = max(v_124.w, abs(r8.xxxx).w);
  r7.w = clamp(fma(r7.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r5.w = ((-(r5.wwww)).w + 1.0f);
  r5.w = (r7.w * r5.w);
  r5.w = fma(r6.w, 0.0625f, r5.w);
  r5.w = (r5.w * r5.w);
  r5.w = min(r5.w, 1.0f);
  r6.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = (r6.w * cb6_6.tint_symbol_6[3u].z);
  let v_125 = -(r5.wwww);
  r5.w = fma(r6.w, v_125.w, r5.w);
  let v_126 = dot(r1.xyw, v_35.xyz);
  r6.w = clamp(vec4<f32>(v_126, v_126, v_126, v_126).w, 0.0f, 1.0f);
  let v_127 = dot(r5.xyz, r1.xyw);
  r8.x = clamp(vec4<f32>(v_127, v_127, v_127, v_127).x, 0.0f, 1.0f);
  let v_128 = dot(r6.xyz, v_35.xyz);
  r8.y = clamp(vec4<f32>(v_128, v_128, v_128, v_128).y, 0.0f, 1.0f);
  let v_129 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_129.xy, r8.zw);
  let v_130 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_130.xy);
  let v_131 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_131.xy);
  let v_132 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_132.xy, r8.zw);
  r7.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_133 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r7.ww);
  r8 = vec4<f32>(v_133.xy, r8.zw);
  let v_134 = (r4.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_134.xy);
  r4.y = (r8.z * 0.125f);
  r8.x = fma((-(r4.xxxx)).x, r8.x, 1.0f);
  r6.x = dot(r1.xyw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.w);
  r6.x = exp2(r6.x);
  r6.x = (r8.y * r6.x);
  r6.x = (r4.y * r6.x);
  r6.x = (r4.x * r6.x);
  r6.x = (r6.w * r6.x);
  r6.y = (r6.w * r8.x);
  let v_135 = fma(r0.xyz, r6.yyy, r6.xxx);
  r6 = vec4<f32>(v_135.xyz, r6.w);
  let v_136 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_136.xyz, r6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_137 = (v_32.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    let v_138 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_138.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_139 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_139.xyz, r10.w);
    let v_140 = (r10.xyz + v_32.xyz);
    r10 = vec4<f32>(v_140.xyz, r10.w);
    let v_141 = bitcast<vec3<u32>>(r8.yyy);
    let v_142 = r9.xyz;
    let v_143 = select(r10.xyz, v_142, (v_141 != vec3<u32>()));
    r9 = vec4<f32>(v_143.xyz, r9.w);
    r8.y = dot(r9.xyz, r9.xyz);
    let v_144 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_144.xyz, r9.w);
    r8.z = dot(r9.xyz, r9.xyz);
    r8.z = inverseSqrt(r8.z);
    let v_145 = (r8.zzz * r9.xyz);
    r9 = vec4<f32>(v_145.xyz, r9.w);
    r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r8.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[11u].w);
    r8.y = (r8.y / r8.z);
    let v_146 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.z = dot(r9.xyz, v_146.xyz);
    r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_147 = dot(r9.xyz, r1.xyw);
    r9.w = clamp(vec4<f32>(v_147, v_147, v_147, v_147).w, 0.0f, 1.0f);
    r8.z = (r8.z * r9.w);
    r9.w = (r8.y * r8.z);
    let v_148 = (r9.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_148.xyz, r10.w);
    let v_149 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_149.xyz, r10.w);
    let v_150 = fma(r2.xyz, r2.www, r9.xyz);
    r9 = vec4<f32>(v_150.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_151 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_151.xyz, r9.w);
    let v_152 = dot(r9.xyz, r5.xyz);
    r9.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.w = (r9.w * r9.w);
    r10.w = (r10.w * r10.w);
    r9.w = (r9.w * r10.w);
    r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r7.w);
    let v_153 = dot(r9.xyz, r1.xyw);
    r9.x = clamp(vec4<f32>(v_153, v_153, v_153, v_153).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.w * r9.x);
    r9.x = exp2(r9.x);
    r9.x = (r9.x * r9.w);
    r8.z = (r8.z * r9.x);
    r8.y = (r8.y * r8.z);
    r8.y = (r4.y * r8.y);
    let v_154 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_154.xyz, r9.w);
  }
  r8.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r8.y) != 0u)) {
    r8.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    let v_155 = bitcast<u32>(r8.z);
    let v_156 = r8.y;
    r6.w = select(r6.w, v_156, (v_155 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_157 = (v_32.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_158.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_159.xyz, r12.w);
      let v_160 = (r12.xyz + v_32.xyz);
      r12 = vec4<f32>(v_160.xyz, r12.w);
      let v_161 = bitcast<vec3<u32>>(r8.yyy);
      let v_162 = r11.xyz;
      let v_163 = select(r12.xyz, v_162, (v_161 != vec3<u32>()));
      r11 = vec4<f32>(v_163.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_164 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_165 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[12u].w);
      r8.y = (r8.y / r8.z);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.z = dot(r11.xyz, v_166.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_167 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_168 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_168.xyz, r12.w);
      let v_169 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = fma(r2.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_171 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r7.w);
      let v_173 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r4.y * r8.y);
      let v_174 = fma(r8.yyy, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_174.xyz, r9.w);
    }
  } else {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_175 = (v_32.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      let v_176 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_176.xyz, r12.w);
      r8.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r8.z = clamp(((r8.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r8.z = (r8.z * cb3_3.tint_symbol_2[21u].w);
      let v_177 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_177.xyz, r12.w);
      let v_178 = (r12.xyz + v_32.xyz);
      r12 = vec4<f32>(v_178.xyz, r12.w);
      let v_179 = bitcast<vec3<u32>>(r8.yyy);
      let v_180 = r11.xyz;
      let v_181 = select(r12.xyz, v_180, (v_179 != vec3<u32>()));
      r11 = vec4<f32>(v_181.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_182 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_182.xyz, r11.w);
      r8.z = dot(r11.xyz, r11.xyz);
      r8.z = inverseSqrt(r8.z);
      let v_183 = (r8.zzz * r11.xyz);
      r11 = vec4<f32>(v_183.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r8.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r8.z = fma(r8.z, r8.y, cb3_3.tint_symbol_2[13u].w);
      r8.y = (r8.y / r8.z);
      let v_184 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.z = dot(r11.xyz, v_184.xyz);
      r8.z = clamp(fma(r8.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_185 = dot(r11.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_185, v_185, v_185, v_185).w, 0.0f, 1.0f);
      r8.z = (r8.z * r9.w);
      r9.w = (r8.y * r8.z);
      let v_186 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_186.xyz, r12.w);
      let v_187 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      let v_188 = fma(r2.xyz, r2.www, r11.xyz);
      r11 = vec4<f32>(v_188.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_189 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      let v_190 = dot(r11.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb10_10.tint_symbol_5[0u].y, r9.w, r7.w);
      let v_191 = dot(r11.xyz, r1.xyw);
      r10.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r8.z = (r8.z * r9.w);
      r8.y = (r8.y * r8.z);
      r8.y = (r4.y * r8.y);
      let v_192 = fma(r8.yyy, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_192.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_193 = (v_32.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      let v_194 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_194.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_2[22u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_2[22u].w);
      let v_195 = fma(cb3_3.tint_symbol_2[14u].xyz, r8.yyy, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_195.xyz, r12.w);
      let v_196 = (r12.xyz + v_32.xyz);
      r12 = vec4<f32>(v_196.xyz, r12.w);
      let v_197 = bitcast<vec3<u32>>(r6.www);
      let v_198 = r11.xyz;
      let v_199 = select(r12.xyz, v_198, (v_197 != vec3<u32>()));
      r11 = vec4<f32>(v_199.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_200 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_200.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_201 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_201.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_2[14u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r6.w, cb3_3.tint_symbol_2[14u].w);
      r6.w = (r6.w / r8.y);
      let v_202 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r8.y = dot(r11.xyz, v_202.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).y, 0.0f, 1.0f);
      let v_203 = dot(r11.xyz, r1.xyw);
      r8.z = clamp(vec4<f32>(v_203, v_203, v_203, v_203).z, 0.0f, 1.0f);
      r8.y = (r8.y * r8.z);
      r8.z = (r6.w * r8.y);
      let v_204 = (r8.zzz * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_204.xyz, r12.w);
      let v_205 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      let v_206 = fma(r2.xyz, r2.www, r11.xyz);
      r2 = vec4<f32>(v_206.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_207 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_207.xyz, r2.w);
      let v_208 = dot(r2.xyz, r5.xyz);
      r2.w = clamp(vec4<f32>(v_208, v_208, v_208, v_208).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r5.x = (r2.w * r2.w);
      r5.x = (r5.x * r5.x);
      r2.w = (r2.w * r5.x);
      r2.w = fma(cb10_10.tint_symbol_5[0u].y, r2.w, r7.w);
      let v_209 = dot(r2.xyz, r1.xyw);
      r2.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r8.y * r2.x);
      r2.x = (r6.w * r2.x);
      r2.x = (r4.y * r2.x);
      let v_210 = fma(r2.xxx, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_210.xyz, r9.w);
    }
  }
  r2.x = (r8.x * r8.x);
  r2.y = (r4.x * r4.x);
  let v_211 = (r9.xyz * r2.yyy);
  r2 = vec4<f32>(r2.x, v_211.xyz);
  let v_212 = fma(r2.xxx, r10.xyz, r2.yzw);
  r2 = vec4<f32>(v_212.xyz, r2.w);
  let v_213 = fma(r6.xyz, r5.www, r2.xyz);
  r2 = vec4<f32>(v_213.xyz, r2.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_214 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_214.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_215 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_215.xyz, r6.w);
  let v_216 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_216.xyz, r6.w);
  let v_217 = fma(r5.xyz, r1.zzz, r6.xyz);
  r5 = vec4<f32>(v_217.xyz, r5.w);
  let v_218 = (r4.www * r5.xyz);
  r4 = vec4<f32>(v_218.xy, r4.z, v_218.z);
  let v_219 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_219.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_220 = dot(r6.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
  let v_221 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r1 = vec4<f32>(v_221.xyz, r1.w);
  let v_222 = fma(r1.xyz, r4.zzz, r4.xyw);
  r1 = vec4<f32>(v_222.xyz, r1.w);
  let v_223 = (r8.xxx * r1.xyz);
  r1 = vec4<f32>(v_223.xyz, r1.w);
  let v_224 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_224.xyz, r0.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r1.x = sqrt(r0.w);
  let v_225 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_225.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r7.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_226 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_226 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_227 = (r0.www * r7.xyz);
  r2 = vec4<f32>(v_227.xyz, r2.w);
  let v_228 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_228, v_228, v_228, v_228).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_229 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_230 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_230.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_231 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_231.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_232 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_232.xyz, r2.w);
  let v_233 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_233.xyz, r2.w);
  let v_234 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_234.xyz, r4.w);
  let v_235 = fma(r1.www, r4.xyz, r2.xyz);
  r2 = vec4<f32>(v_235.xyz, r2.w);
  let v_236 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_237 = (r2.xyz + v_236.xyz);
  r2 = vec4<f32>(v_237.xyz, r2.w);
  let v_238 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_238.xyz, r2.w);
  r4.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r4.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r4.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_239 = fma(r1.xxx, r4.xyz, r2.xyz);
  r1 = vec4<f32>(v_239.xy, r1.z, v_239.z);
  let v_240 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_240.xy, r1.z, v_240.z);
  let v_241 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_241.xyz, r0.w);
  let v_242 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_242.xyz, r0.w);
  let v_243 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r3 = vec4<f32>(v_243.xyz, r3.w);
  r0 = max(r3, vec4<f32>());
  let v_244 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_244.xyz, r0.w);
  let v_245 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_245.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
