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
  tint_symbol_7 : array<vec4<u32>, 3u>,
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
  let v_32 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_33 = (r2.www * r2.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_35 = fma(r2.xyz, r2.www, v_34.xyz);
  r5 = vec4<f32>(v_35.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_36 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_37 = (r3.zw * r3.zw);
  r3 = vec4<f32>(r3.xy, v_37.xy);
  r2.w = (r3.y + -500.0f);
  r2.w = max(r2.w, 0.0f);
  r3.y = ((-(r2.wwww)).y + r3.y);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.y, 3.0f, r2.w);
  r2.x = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_38 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  let v_39 = (r6.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = fma(r6.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = fma(r6.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = &(x0[0u]);
  let v_44 = r8;
  *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
  let v_45 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_45.xyz, r9.w);
  let v_46 = &(x0[1u]);
  let v_47 = r9;
  *(v_46) = vec4<f32>(v_47.xyz, (*(v_46)).w);
  let v_48 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_48.xyz, r10.w);
  let v_49 = &(x0[2u]);
  let v_50 = r10;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_51.xyz, r7.w);
  let v_52 = &(x0[3u]);
  let v_53 = r7;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_55 = r11;
  r11 = vec4<f32>(v_55.x, v_54.x, v_55.z, v_54.y);
  r2.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r2.y = (r2.y * 0.5f);
  let v_56 = abs(r10.yyyy);
  r2.z = max(v_56.z, abs(r10.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.y)));
  let v_57 = (bitcast<u32>(r2.z) != 0u);
  let v_58 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r2.z = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_58, v_57);
  let v_59 = abs(r9.yyyy);
  r3.y = max(v_59.y, abs(r9.xxxx).y);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r2.y)));
  let v_60 = bitcast<u32>(r3.y);
  r2.z = select(r2.z, bitcast<f32>(v.tint_symbol_7[2i].x), (v_60 != 0u));
  let v_61 = abs(r8.yyyy);
  r3.y = max(v_61.y, abs(r8.xxxx).y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r2.y)));
  let v_62 = bitcast<u32>(r2.y);
  r2.y = select(r2.z, 0.0f, (v_62 != 0u));
  let v_63 = x0[bitcast<i32>(r2.y)];
  r8 = vec4<f32>(v_63.xyz, r8.w);
  r2.y = f32(bitcast<i32>(r2.y));
  r2.z = (r2.y + 0.5f);
  r2.z = (r2.z * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r2.y = dot(r9, cb6_6.tint_symbol_6[12u]);
  r3.y = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r2.z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, !((r2.y == 0.0f))));
  r2.y = ((-(r2.yyyy)).y + r8.z);
  let v_64 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_64.xy, r10.z, v_64.z);
  r10.z = dpdx(r2.y);
  let v_65 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_65.xyz, r12.w);
  r12.w = dpdy(r2.y);
  let v_66 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_66.xy);
  let v_67 = -(r7.zwzz);
  let v_68 = fma(r10.xz, r12.xz, v_67.xy);
  r13 = vec4<f32>(v_68.xy, r13.zw);
  r4.w = (1.0f / r13.x);
  r5.w = (r10.z * r12.y);
  let v_69 = -(r5.wwww);
  r13.z = fma(r10.x, r12.w, v_69.z);
  let v_70 = (r4.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_70.xy);
  let v_71 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_71.xy);
  let v_72 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_72.xy);
  r2.y = fma((-(r3.yyyy)).y, r7.z, r2.y);
  r2.y = fma((-(r3.yyyy)).y, r7.w, r2.y);
  let v_73 = bitcast<u32>(r2.z);
  let v_74 = r2.y;
  r11.z = select(r8.z, v_74, (v_73 != 0u));
  r9.z = 0.0f;
  let v_75 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_75.xyz, r8.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_77.xyz, r10.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_79.xyz, r12.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_81.xyz, r13.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_83.xyz, r14.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_85.xyz, r15.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_87.xyz, r16.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_89.xyz, r17.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_91.xyz, r18.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_93.xyz, r19.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_95.xyz, r20.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_97.xyz, r21.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_99.xyz, r22.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_101.xyz, r23.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_102.xy, r11.zw);
  let v_103 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_103.xyz, r24.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_104.xy, r11.zw);
  let v_105 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_105.xyz, r9.w);
  let v_106 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_106.xy, r8.z);
  let v_107 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_107.xy, r10.z);
  let v_108 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_108.xy, r12.z);
  let v_109 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_109.xy, r13.z);
  let v_110 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_110.xy, r14.z);
  let v_111 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_111.xy, r15.z);
  let v_112 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_112.xy, r16.z);
  let v_113 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_113.xy, r17.z);
  let v_114 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_114.xy, r18.z);
  let v_115 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_115.xy, r19.z);
  let v_116 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_116.xy, r20.z);
  let v_117 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_117.xy, r21.z);
  let v_118 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_118.xy, r22.z);
  let v_119 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_119.xy, r23.z);
  let v_120 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_120.xy, r24.z);
  let v_121 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_121.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r2.y = dot(r8, vec4<f32>(1.0f));
  r2.x = clamp(fma(r2.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_122 = abs(r7.yyyy);
  r2.z = max(v_122.z, abs(r7.xxxx).z);
  r2.z = clamp(fma(r2.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = (r2.z * r2.x);
  r2.x = fma(r2.y, 0.0625f, r2.x);
  r2.x = (r2.x * r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = (r2.y * cb6_6.tint_symbol_6[3u].z);
  let v_123 = -(r2.xxxx);
  r2.x = fma(r2.y, v_123.x, r2.x);
  let v_124 = dot(r1.xyw, v_34.xyz);
  r2.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = dot(r4.xyz, r1.xyw);
  r4.x = clamp(vec4<f32>(v_125, v_125, v_125, v_125).x, 0.0f, 1.0f);
  let v_126 = dot(r5.xyz, v_34.xyz);
  r4.y = clamp(vec4<f32>(v_126, v_126, v_126, v_126).y, 0.0f, 1.0f);
  let v_127 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_127.xy, r4.zw);
  let v_128 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_128.xy);
  let v_129 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_129.xy);
  let v_130 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_130.xy, r4.zw);
  r2.z = ((-(cb10_10.tint_symbol_5[0u].yyyy)).z + 1.0f);
  let v_131 = fma(cb10_10.tint_symbol_5[0u].yy, r4.xy, r2.zz);
  r4 = vec4<f32>(v_131.xy, r4.zw);
  let v_132 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_132.xy);
  r2.z = (r2.z * 0.125f);
  r3.y = fma((-(r3.xxxx)).y, r4.x, 1.0f);
  r4.x = dot(r1.xyw, r5.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r2.w = (r2.w * r4.x);
  r2.w = exp2(r2.w);
  r2.w = (r4.y * r2.w);
  r2.z = (r2.z * r2.w);
  r2.z = (r3.x * r2.z);
  r2.z = (r2.y * r2.z);
  r2.y = (r2.y * r3.y);
  let v_133 = fma(r0.xyz, r2.yyy, r2.zzz);
  r2 = vec4<f32>(r2.x, v_133.xyz);
  let v_134 = (r2.yzw * cb3_3.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(r2.x, v_134.xyz);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_135 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_135.xyz, r4.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_136 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_136.xyz, r5.w);
  let v_137 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_137.xyz, r5.w);
  let v_138 = fma(r4.xyz, r1.zzz, r5.xyz);
  r4 = vec4<f32>(v_138.xyz, r4.w);
  let v_139 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_139.xyz, r4.w);
  let v_140 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_140.xyz, r5.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_141 = dot(r7.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_141, v_141, v_141, v_141).w, 0.0f, 1.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r1 = vec4<f32>(v_142.xyz, r1.w);
  let v_143 = fma(r1.xyz, r3.zzz, r4.xyz);
  r1 = vec4<f32>(v_143.xyz, r1.w);
  let v_144 = (r3.yyy * r1.xyz);
  r1 = vec4<f32>(v_144.xyz, r1.w);
  let v_145 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_145.xyz, r0.w);
  let v_146 = fma(r2.yzw, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_146.xyz, r0.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.x = sqrt(r0.w);
  let v_147 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_147.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r6.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_148 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_148 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_149 = (r0.www * r6.xyz);
  r2 = vec4<f32>(v_149.xyz, r2.w);
  let v_150 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_151 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_152 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_152.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_153 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_153.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_154 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_154.xyz, r2.w);
  let v_155 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_155.xyz, r2.w);
  let v_156 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_156.xyz, r3.w);
  let v_157 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_157.xyz, r2.w);
  let v_158 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_159 = (r2.xyz + v_158.xyz);
  r2 = vec4<f32>(v_159.xyz, r2.w);
  let v_160 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_160.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_161 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_161.xy, r1.z, v_161.z);
  let v_162 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_162.xy, r1.z, v_162.z);
  let v_163 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_163.xyz, r0.w);
  let v_164 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_164.xyz, r0.w);
  let v_165 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_165.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
