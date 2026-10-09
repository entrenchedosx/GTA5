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
  r2.w = fma((-(r2.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_9 = (r2.yx * cb10_10.tint_symbol_5[0u].wz);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(r3.xy, v_10.xy);
  r2.w = fma(r1.w, 0.5f, 0.5f);
  r4.x = fma(r2.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.y = (r2.w + 0.30000001192092895508f);
  let v_11 = (r3.zw * r4.xy);
  r3 = vec4<f32>(r3.xy, v_11.xy);
  r2.w = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
    let v_12 = fract(v6.yx);
    let v_13 = r4;
    r4 = vec4<f32>(v_12.x, v_13.y, v_12.y, v_13.w);
    r4.w = fma(r4.x, v0.w, v1.w);
    r2.w = fract(cb13_13.tint_symbol_4[16u].z);
    r4.y = ((-(r4.zzzz)).y + 1.0f);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_14 = bitcast<vec2<u32>>(r5.xx);
    let v_15 = r4.wy;
    let v_16 = select(r4.zw, v_15, (v_14 != vec2<u32>()));
    r5 = vec4<f32>(v_16.xy, r5.zw);
    r5 = textureSampleLevel(t14, s14, r5.xyxx.xy, 0.0f);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.w)));
    if ((bitcast<u32>(r4.w) != 0u)) {
      let v_17 = abs(v6.zzzz);
      let v_18 = abs(v6.wwww);
      r4.x = fma(r4.x, v_17.x, v_18.x);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
      let v_19 = bitcast<vec2<u32>>(r2.ww);
      let v_20 = r4.xy;
      let v_21 = select(r4.zx, v_20, (v_19 != vec2<u32>()));
      r4 = vec4<f32>(v_21.xy, r4.zw);
      r4 = textureSampleLevel(t14, s14, r4.xyxx.xy, 0.0f);
    } else {
      r4 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r4.w);
    }
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r5.w >= 0.50196081399917602539f)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r5.w)));
    let v_22 = bitcast<u32>(r2.z);
    let v_23 = r2.w;
    r2.w = select(r4.w, v_23, (v_22 != 0u));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r4.w)));
    let v_24 = bitcast<vec4<u32>>(r2.wwww);
    r5 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r5, (v_24 != vec4<u32>()));
    r2.w = fma(r5.w, 2.0f, -1.0f);
    r2.w = ((-(abs(r2.wwww))).w + 1.0f);
    r4.w = ((-(r4.zzzz)).w + 1.0f);
    r4.w = (r4.w * r4.w);
    r4.w = (r4.x * r4.w);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r3.y = fma(r4.w, r2.x, r3.y);
    r2.x = fma((-(r2.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r3.x = fma(r4.w, r2.x, r3.x);
    let v_25 = fma(r0.xyz, r2.www, r5.xyz);
    r2 = vec4<f32>(v_25.xy, r2.z, v_25.z);
    let v_26 = bitcast<u32>(r2.z);
    r2.z = select(r4.y, 0.0f, (v_26 != 0u));
    let v_27 = -(r2.xywx);
    let v_28 = fma(r2.xyw, cb13_13.tint_symbol_4[7u].xyz, v_27.xyz);
    r5 = vec4<f32>(v_28.xyz, r5.w);
    let v_29 = fma(r2.zzz, r5.xyz, r2.xyw);
    r2 = vec4<f32>(v_29.xyz, r2.w);
    let v_30 = (r4.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r4 = vec4<f32>(v_30.xy, r4.z, v_30.z);
    let v_31 = fma(r2.xyz, r4.zzz, r4.xyw);
    r0 = vec4<f32>(v_31.xyz, r0.w);
  }
  let v_32 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = -(v2.xyzx);
  let v_34 = (v_33.xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_35 = (r2.www * r2.xyz);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_37 = fma(r2.xyz, r2.www, v_36.xyz);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_38 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_39 = (r3.zw * r3.zw);
  r3 = vec4<f32>(r3.xy, v_39.xy);
  r4.w = (r3.y + -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_40 = -(r4.wwww);
  r3.y = (r3.y + v_40.y);
  r4.w = (r4.w * 558.0f);
  r3.y = fma(r3.y, 3.0f, r4.w);
  r4.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_41 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  let v_42 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  let v_43 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_43.xyz, r7.w);
  let v_44 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_45.xyz, r8.w);
  let v_46 = &(x0[0u]);
  let v_47 = r8;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = &(x0[1u]);
  let v_50 = r9;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_51.xyz, r10.w);
  let v_52 = &(x0[2u]);
  let v_53 = r10;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  let v_55 = &(x0[3u]);
  let v_56 = r7;
  *(v_55) = vec4<f32>(v_56.xyz, (*(v_55)).w);
  let v_57 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_58 = r11;
  r11 = vec4<f32>(v_58.x, v_57.x, v_58.z, v_57.y);
  r5.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_59 = abs(r10.yyyy);
  r6.w = max(v_59.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r5.w)));
  let v_60 = (bitcast<u32>(r6.w) != 0u);
  let v_61 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r6.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_61, v_60);
  let v_62 = abs(r9.yyyy);
  r7.z = max(v_62.z, abs(r9.xxxx).z);
  r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_63 = bitcast<u32>(r7.z);
  r6.w = select(r6.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_63 != 0u));
  let v_64 = abs(r8.yyyy);
  r7.z = max(v_64.z, abs(r8.xxxx).z);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
  let v_65 = bitcast<u32>(r5.w);
  r5.w = select(r6.w, 0.0f, (v_65 != 0u));
  let v_66 = x0[bitcast<i32>(r5.w)];
  r8 = vec4<f32>(v_66.xyz, r8.w);
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
  let v_67 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_67.xy, r10.z, v_67.z);
  r10.z = dpdx(r5.w);
  let v_68 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_68.xyz, r12.w);
  r12.w = dpdy(r5.w);
  let v_69 = (r10.yw * r12.yw);
  r8 = vec4<f32>(v_69.xy, r8.zw);
  let v_70 = -(r8.xyxx);
  let v_71 = fma(r10.xz, r12.xz, v_70.xy);
  r13 = vec4<f32>(v_71.xy, r13.zw);
  r7.w = (1.0f / r13.x);
  r8.x = (r10.z * r12.y);
  let v_72 = -(r8.xxxx);
  r13.z = fma(r10.x, r12.w, v_72.z);
  let v_73 = (r7.ww * r13.yz);
  r8 = vec4<f32>(v_73.xy, r8.zw);
  let v_74 = max(r8.xy, vec2<f32>());
  r8 = vec4<f32>(v_74.xy, r8.zw);
  let v_75 = min(r8.xy, vec2<f32>(0.5f));
  r8 = vec4<f32>(v_75.xy, r8.zw);
  r5.w = fma((-(r7.zzzz)).w, r8.x, r5.w);
  r5.w = fma((-(r7.zzzz)).w, r8.y, r5.w);
  let v_76 = bitcast<u32>(r6.w);
  let v_77 = r5.w;
  r11.z = select(r8.z, v_77, (v_76 != 0u));
  r9.z = 0.0f;
  let v_78 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_78.xyz, r8.w);
  let v_79 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_79.xy, r11.zw);
  let v_80 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_80.xyz, r10.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_81.xy, r11.zw);
  let v_82 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_82.xyz, r12.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_84.xyz, r13.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_86.xyz, r14.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_88.xyz, r15.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_90.xyz, r16.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_92.xyz, r17.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_94.xyz, r18.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_96.xyz, r19.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_98.xyz, r20.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_100.xyz, r21.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_101.xy, r11.zw);
  let v_102 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_102.xyz, r22.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_103.xy, r11.zw);
  let v_104 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_104.xyz, r23.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_105.xy, r11.zw);
  let v_106 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_106.xyz, r24.w);
  let v_107 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_107.xy, r11.zw);
  let v_108 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_108.xyz, r9.w);
  let v_109 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_109.xy, r8.z);
  let v_110 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_110.xy, r10.z);
  let v_111 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_111.xy, r12.z);
  let v_112 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_112.xy, r13.z);
  let v_113 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_113.xy, r14.z);
  let v_114 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_114.xy, r15.z);
  let v_115 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_115.xy, r16.z);
  let v_116 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_116.xy, r17.z);
  let v_117 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_117.xy, r18.z);
  let v_118 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_118.xy, r19.z);
  let v_119 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_119.xy, r20.z);
  let v_120 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_120.xy, r21.z);
  let v_121 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_121.xy, r22.z);
  let v_122 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_122.xy, r23.z);
  let v_123 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_123.xy, r24.z);
  let v_124 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_124.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r5.w = dot(r8, vec4<f32>(1.0f));
  r4.w = clamp(fma(r4.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_125 = abs(r7.yyyy);
  r6.w = max(v_125.w, abs(r7.xxxx).w);
  r6.w = clamp(fma(r6.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r4.w = (r6.w * r4.w);
  r4.w = fma(r5.w, 0.0625f, r4.w);
  r4.w = (r4.w * r4.w);
  r4.w = min(r4.w, 1.0f);
  r5.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (r5.w * cb6_6.tint_symbol_6[3u].z);
  let v_126 = -(r4.wwww);
  r4.w = fma(r5.w, v_126.w, r4.w);
  let v_127 = dot(r1.xyw, v_36.xyz);
  r5.w = clamp(vec4<f32>(v_127, v_127, v_127, v_127).w, 0.0f, 1.0f);
  let v_128 = dot(r4.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
  let v_129 = dot(r5.xyz, v_36.xyz);
  r7.y = clamp(vec4<f32>(v_129, v_129, v_129, v_129).y, 0.0f, 1.0f);
  let v_130 = ((-(r7.xyxx)).xy + vec2<f32>(1.0f));
  r7 = vec4<f32>(v_130.xy, r7.zw);
  let v_131 = (r7.xy * r7.xy);
  r7 = vec4<f32>(r7.xy, v_131.xy);
  let v_132 = (r7.zw * r7.zw);
  r7 = vec4<f32>(r7.xy, v_132.xy);
  let v_133 = (r7.xy * r7.zw);
  r7 = vec4<f32>(v_133.xy, r7.zw);
  r6.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_134 = fma(cb10_10.tint_symbol_5[0u].yy, r7.xy, r6.ww);
  r7 = vec4<f32>(v_134.xy, r7.zw);
  let v_135 = (r3.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(r7.xy, v_135.xy);
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
  let v_136 = fma(r0.xyz, r5.yyy, r5.xxx);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  let v_137 = (r5.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r5 = vec4<f32>(v_137.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_138 = (v_33.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_138.xyz, r8.w);
    let v_139 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    r7.z = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_2[19u].w);
    let v_140 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = (r9.xyz + v_33.xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
    let v_142 = bitcast<vec3<u32>>(r7.yyy);
    let v_143 = r8.xyz;
    let v_144 = select(r9.xyz, v_143, (v_142 != vec3<u32>()));
    r8 = vec4<f32>(v_144.xyz, r8.w);
    r7.y = dot(r8.xyz, r8.xyz);
    let v_145 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_145.xyz, r8.w);
    r7.z = dot(r8.xyz, r8.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_146 = (r7.zzz * r8.xyz);
    r8 = vec4<f32>(v_146.xyz, r8.w);
    r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[11u].w);
    r7.y = (r7.y / r7.z);
    let v_147 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.z = dot(r8.xyz, v_147.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_148 = dot(r8.xyz, r1.xyw);
    r8.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.y * r7.z);
    let v_149 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_149.xyz, r9.w);
    let v_150 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_150.xyz, r9.w);
    let v_151 = fma(r2.xyz, r2.www, r8.xyz);
    r8 = vec4<f32>(v_151.xyz, r8.w);
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_152 = (r8.www * r8.xyz);
    r8 = vec4<f32>(v_152.xyz, r8.w);
    let v_153 = dot(r8.xyz, r4.xyz);
    r8.w = clamp(vec4<f32>(v_153, v_153, v_153, v_153).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
    let v_154 = dot(r8.xyz, r1.xyw);
    r8.x = clamp(vec4<f32>(v_154, v_154, v_154, v_154).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r7.w * r8.x);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r8.w);
    r7.z = (r7.z * r8.x);
    r7.y = (r7.y * r7.z);
    r7.y = (r3.y * r7.y);
    let v_155 = (r7.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_155.xyz, r8.w);
  }
  r7.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.y) != 0u)) {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.y = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    let v_156 = bitcast<u32>(r7.z);
    let v_157 = r7.y;
    r5.w = select(r5.w, v_157, (v_156 != 0u));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r7.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_158 = (v_33.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_158.xyz, r10.w);
      let v_159 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[20u].w);
      let v_160 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      let v_162 = bitcast<vec3<u32>>(r7.yyy);
      let v_163 = r10.xyz;
      let v_164 = select(r11.xyz, v_163, (v_162 != vec3<u32>()));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_165 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_166 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[12u].w);
      r7.y = (r7.y / r7.z);
      let v_167 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.z = dot(r10.xyz, v_167.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).z, 0.0f, 1.0f);
      let v_168 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_169 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_170.xyz, r9.w);
      let v_171 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_172 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_173, v_173, v_173, v_173).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_174 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_174, v_174, v_174, v_174).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_175 = fma(r7.yyy, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_175.xyz, r8.w);
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
      let v_176 = (v_33.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[21u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = bitcast<vec3<u32>>(r7.yyy);
      let v_181 = r10.xyz;
      let v_182 = select(r11.xyz, v_181, (v_180 != vec3<u32>()));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_183 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_184 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[13u].w);
      r7.y = (r7.y / r7.z);
      let v_185 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.z = dot(r10.xyz, v_185.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).z, 0.0f, 1.0f);
      let v_186 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_187 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
      let v_189 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_190 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_192 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_192, v_192, v_192, v_192).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_193 = fma(r7.yyy, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_193.xyz, r8.w);
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
      let v_194 = (v_33.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_194.xyz, r10.w);
      let v_195 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[22u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[22u].w);
      let v_196 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      let v_198 = bitcast<vec3<u32>>(r7.yyy);
      let v_199 = r10.xyz;
      let v_200 = select(r11.xyz, v_199, (v_198 != vec3<u32>()));
      r10 = vec4<f32>(v_200.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_201 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_202 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[14u].w);
      r7.y = (r7.y / r7.z);
      let v_203 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.z = dot(r10.xyz, v_203.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).z, 0.0f, 1.0f);
      let v_204 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_204, v_204, v_204, v_204).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_205 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_205.xyz, r11.w);
      let v_206 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_206.xyz, r9.w);
      let v_207 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_208 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_209, v_209, v_209, v_209).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_210 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_210, v_210, v_210, v_210).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_211 = fma(r7.yyy, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_211.xyz, r8.w);
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
      let v_212 = (v_33.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_212.xyz, r10.w);
      let v_213 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_213.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[23u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[23u].w);
      let v_214 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_214.xyz, r11.w);
      let v_215 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_215.xyz, r11.w);
      let v_216 = bitcast<vec3<u32>>(r7.yyy);
      let v_217 = r10.xyz;
      let v_218 = select(r11.xyz, v_217, (v_216 != vec3<u32>()));
      r10 = vec4<f32>(v_218.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_219 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_219.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_220 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_220.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[15u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[15u].w);
      r7.y = (r7.y / r7.z);
      let v_221 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.z = dot(r10.xyz, v_221.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).z, 0.0f, 1.0f);
      let v_222 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_222, v_222, v_222, v_222).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_223 = (r8.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_223.xyz, r11.w);
      let v_224 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_224.xyz, r9.w);
      let v_225 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_225.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_226 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_228 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_228, v_228, v_228, v_228).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_229 = fma(r7.yyy, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_229.xyz, r8.w);
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
      let v_230 = (v_33.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_230.xyz, r10.w);
      let v_231 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[24u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[24u].w);
      let v_232 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_232.xyz, r11.w);
      let v_233 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_233.xyz, r11.w);
      let v_234 = bitcast<vec3<u32>>(r7.yyy);
      let v_235 = r10.xyz;
      let v_236 = select(r11.xyz, v_235, (v_234 != vec3<u32>()));
      r10 = vec4<f32>(v_236.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_237 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_237.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_238 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_238.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[16u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[16u].w);
      r7.y = (r7.y / r7.z);
      let v_239 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.z = dot(r10.xyz, v_239.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).z, 0.0f, 1.0f);
      let v_240 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_241 = (r8.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_241.xyz, r11.w);
      let v_242 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_242.xyz, r9.w);
      let v_243 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_243.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_244 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_245, v_245, v_245, v_245).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_246 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_246, v_246, v_246, v_246).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_247 = fma(r7.yyy, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_247.xyz, r8.w);
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
      let v_248 = (v_33.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_248.xyz, r10.w);
      let v_249 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_249.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_2[25u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[25u].w);
      let v_250 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_250.xyz, r11.w);
      let v_251 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      let v_252 = bitcast<vec3<u32>>(r7.yyy);
      let v_253 = r10.xyz;
      let v_254 = select(r11.xyz, v_253, (v_252 != vec3<u32>()));
      r10 = vec4<f32>(v_254.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      let v_255 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_255.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_256 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_256.xyz, r10.w);
      r7.y = clamp(fma(-(r7.yyyy), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[17u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.y, cb3_3.tint_symbol_2[17u].w);
      r7.y = (r7.y / r7.z);
      let v_257 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.z = dot(r10.xyz, v_257.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).z, 0.0f, 1.0f);
      let v_258 = dot(r10.xyz, r1.xyw);
      r8.w = clamp(vec4<f32>(v_258, v_258, v_258, v_258).w, 0.0f, 1.0f);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.y * r7.z);
      let v_259 = (r8.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_259.xyz, r11.w);
      let v_260 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_260.xyz, r9.w);
      let v_261 = fma(r2.xyz, r2.www, r10.xyz);
      r10 = vec4<f32>(v_261.xyz, r10.w);
      r8.w = dot(r10.xyz, r10.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_262 = (r8.www * r10.xyz);
      r10 = vec4<f32>(v_262.xyz, r10.w);
      let v_263 = dot(r10.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_263, v_263, v_263, v_263).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r6.w);
      let v_264 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_264, v_264, v_264, v_264).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r7.w * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.y = (r7.y * r7.z);
      r7.y = (r3.y * r7.y);
      let v_265 = fma(r7.yyy, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_265.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r5.w) != 0u)) {
  } else {
    r7.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r7.y)));
    if ((bitcast<u32>(r5.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_266 = (v_33.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_266.xyz, r10.w);
      let v_267 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_267.xyz, r11.w);
      r7.y = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_2[26u].wwww)).y, 0.0f, 1.0f);
      r7.y = (r7.y * cb3_3.tint_symbol_2[26u].w);
      let v_268 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.yyy, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_268.xyz, r11.w);
      let v_269 = (r11.xyz + v_33.xyz);
      r11 = vec4<f32>(v_269.xyz, r11.w);
      let v_270 = bitcast<vec3<u32>>(r5.www);
      let v_271 = r10.xyz;
      let v_272 = select(r11.xyz, v_271, (v_270 != vec3<u32>()));
      r10 = vec4<f32>(v_272.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_273 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_273.xyz, r10.w);
      r7.y = dot(r10.xyz, r10.xyz);
      r7.y = inverseSqrt(r7.y);
      let v_274 = (r7.yyy * r10.xyz);
      r10 = vec4<f32>(v_274.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.y = ((-(cb3_3.tint_symbol_2[18u].wwww)).y + 1.0f);
      r7.y = fma(r7.y, r5.w, cb3_3.tint_symbol_2[18u].w);
      r5.w = (r5.w / r7.y);
      let v_275 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.y = dot(r10.xyz, v_275.xyz);
      r7.y = clamp(fma(r7.yyyy, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).y, 0.0f, 1.0f);
      let v_276 = dot(r10.xyz, r1.xyw);
      r7.z = clamp(vec4<f32>(v_276, v_276, v_276, v_276).z, 0.0f, 1.0f);
      r7.y = (r7.y * r7.z);
      r7.z = (r5.w * r7.y);
      let v_277 = (r7.zzz * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_277.xyz, r11.w);
      let v_278 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_278.xyz, r9.w);
      let v_279 = fma(r2.xyz, r2.www, r10.xyz);
      r2 = vec4<f32>(v_279.xyz, r2.w);
      r2.w = dot(r2.xyz, r2.xyz);
      r2.w = inverseSqrt(r2.w);
      let v_280 = (r2.www * r2.xyz);
      r2 = vec4<f32>(v_280.xyz, r2.w);
      let v_281 = dot(r2.xyz, r4.xyz);
      r2.w = clamp(vec4<f32>(v_281, v_281, v_281, v_281).w, 0.0f, 1.0f);
      r2.w = ((-(r2.wwww)).w + 1.0f);
      r4.x = (r2.w * r2.w);
      r4.x = (r4.x * r4.x);
      r2.w = (r2.w * r4.x);
      r2.w = fma(cb10_10.tint_symbol_5[0u].y, r2.w, r6.w);
      let v_282 = dot(r2.xyz, r1.xyw);
      r2.x = clamp(vec4<f32>(v_282, v_282, v_282, v_282).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r7.w);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r2.w);
      r2.x = (r7.y * r2.x);
      r2.x = (r5.w * r2.x);
      r2.x = (r3.y * r2.x);
      let v_283 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_283.xyz, r8.w);
    }
  }
  r2.x = (r7.x * r7.x);
  r2.y = (r3.x * r3.x);
  let v_284 = (r8.xyz * r2.yyy);
  r2 = vec4<f32>(r2.x, v_284.xyz);
  let v_285 = fma(r2.xxx, r9.xyz, r2.yzw);
  r2 = vec4<f32>(v_285.xyz, r2.w);
  let v_286 = fma(r5.xyz, r4.www, r2.xyz);
  r2 = vec4<f32>(v_286.xyz, r2.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_287 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_287.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_288 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_288.xyz, r5.w);
  let v_289 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_289.xyz, r5.w);
  let v_290 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_290.xyz, r4.w);
  let v_291 = (r3.www * r4.xyz);
  r3 = vec4<f32>(v_291.xy, r3.z, v_291.z);
  let v_292 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_292.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_293 = dot(r5.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_293, v_293, v_293, v_293).w, 0.0f, 1.0f);
  let v_294 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r4.xyz);
  r1 = vec4<f32>(v_294.xyz, r1.w);
  let v_295 = fma(r1.xyz, r3.zzz, r3.xyw);
  r1 = vec4<f32>(v_295.xyz, r1.w);
  let v_296 = (r7.xxx * r1.xyz);
  r1 = vec4<f32>(v_296.xyz, r1.w);
  let v_297 = fma(r1.xyz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_297.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_298 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_298.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_299 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_299 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_300 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_300.xyz, r2.w);
  let v_301 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_301, v_301, v_301, v_301).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_302 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_302, v_302, v_302, v_302).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_303 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_303.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_304 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_304.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_305 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_305.xyz, r2.w);
  let v_306 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_306.xyz, r2.w);
  let v_307 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_307.xyz, r3.w);
  let v_308 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_308.xyz, r2.w);
  let v_309 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_310 = (r2.xyz + v_309.xyz);
  r2 = vec4<f32>(v_310.xyz, r2.w);
  let v_311 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_311.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_312 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_312.xy, r1.z, v_312.z);
  let v_313 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_313.xy, r1.z, v_313.z);
  let v_314 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_314.xyz, r0.w);
  let v_315 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_315.xyz, r0.w);
  let v_316 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_316.xyz, o0.w);
}

fn v_1(v_317 : bool) {
  if (v_317) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
