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

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].y, 0.00100000004749745131f);
  let v_2 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_4.xy, r1.z, v_4.z);
  let v_5 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_6 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3 = textureSample(t4, s4, v0.xyxx.xy);
  let v_7 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r2.w = fma((-(r3.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  r4.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r1.x * cb10_10.tint_symbol_5[1u].x);
  r3.x = (r1.y * cb10_10.tint_symbol_5[0u].w);
  r0.w = (r0.w * cb10_10.tint_symbol_5[0u].x);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].w);
  let v_8 = (v3.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_9 = r3;
  r3 = vec4<f32>(v_9.x, v_8.x, v_9.z, v_8.y);
  r5.x = fma(r2.z, 0.5f, 0.5f);
  r6.x = fma(r5.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r6.y = (r5.x + 0.30000001192092895508f);
  let v_10 = (r3.yw * r6.xy);
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v_10.x, v_11.z, v_10.y);
  r0.w = (r0.w * v3.z);
  r5.x = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r5.x = bitcast<f32>(select(0u, 4294967295u, !((r5.x == 0.0f))));
  if ((bitcast<u32>(r5.x) != 0u)) {
    r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
    let v_12 = fract(v6.yx);
    let v_13 = r5;
    r5 = vec4<f32>(v_12.x, v_13.y, v_12.y, v_13.w);
    r5.w = fma(r5.x, v0.w, v1.w);
    r6.x = fract(cb13_13.tint_symbol_4[16u].z);
    r5.y = ((-(r5.zzzz)).y + 1.0f);
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_14 = bitcast<vec2<u32>>(r6.yy);
    let v_15 = r5.wy;
    let v_16 = select(r5.zw, v_15, (v_14 != vec2<u32>()));
    let v_17 = r6;
    r6 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
    r7 = textureSampleLevel(t6, s6, r6.yzyy.xy, 0.0f);
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r6.x)));
    if ((bitcast<u32>(r5.w) != 0u)) {
      let v_18 = abs(v6.zzzz);
      let v_19 = abs(v6.wwww);
      r5.x = fma(r5.x, v_18.x, v_19.x);
      r5.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r6.x)));
      let v_20 = bitcast<vec2<u32>>(r5.ww);
      let v_21 = r5.xy;
      let v_22 = select(r5.zx, v_21, (v_20 != vec2<u32>()));
      r5 = vec4<f32>(v_22.xy, r5.zw);
      r5 = textureSampleLevel(t6, s6, r5.xyxx.xy, 0.0f);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
    }
    r5.w = bitcast<f32>(select(0u, 4294967295u, (r7.w >= 0.50196081399917602539f)));
    r6.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r7.w)));
    let v_23 = bitcast<u32>(r3.z);
    let v_24 = r5.w;
    r5.w = select(r6.x, v_24, (v_23 != 0u));
    r6.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) & bitcast<u32>(r6.x)));
    let v_25 = bitcast<vec4<u32>>(r5.wwww);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r7, (v_25 != vec4<u32>()));
    r5.w = fma(r6.w, 2.0f, -1.0f);
    r5.w = ((-(abs(r5.wwww))).w + 1.0f);
    r6.w = ((-(r5.zzzz)).w + 1.0f);
    r6.w = (r6.w * r6.w);
    r6.w = (r5.x * r6.w);
    r1.y = fma((-(r1.yyyy)).y, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[6u].w);
    r3.x = fma(r6.w, r1.y, r3.x);
    r1.x = fma((-(r1.xxxx)).x, cb10_10.tint_symbol_5[1u].x, cb13_13.tint_symbol_4[7u].w);
    r2.w = fma(r6.w, r1.x, r2.w);
    let v_26 = bitcast<vec3<u32>>(r3.zzz);
    let v_27 = select(vec3<f32>(1.0f), r0.xyz, (v_26 != vec3<u32>()));
    r7 = vec4<f32>(v_27.xyz, r7.w);
    let v_28 = (r6.xyz * r7.xyz);
    r6 = vec4<f32>(v_28.xyz, r6.w);
    let v_29 = fma(r0.xyz, r5.www, r6.xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = bitcast<u32>(r3.z);
    r1.x = select(r5.y, 0.0f, (v_30 != 0u));
    let v_31 = -(r6.xyzx);
    let v_32 = fma(r6.xyz, cb13_13.tint_symbol_4[7u].xyz, v_31.xyz);
    r7 = vec4<f32>(v_32.xyz, r7.w);
    let v_33 = fma(r1.xxx, r7.xyz, r6.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = (r5.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r5 = vec4<f32>(v_34.xy, r5.z, v_34.z);
    let v_35 = fma(r6.xyz, r5.zzz, r5.xyw);
    r0 = vec4<f32>(v_35.xyz, r0.w);
  }
  let v_36 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = -(v2.xyzx);
  let v_38 = (v_37.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  r1.x = dot(r5.xyz, r5.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_39 = (r1.xxx * r5.xyz);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_41 = fma(r5.xyz, r1.xxx, v_40.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  r1.y = dot(r7.xyz, r7.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_42 = (r1.yyy * r7.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  r2.w = clamp(r2.wwww.w, 0.0f, 1.0f);
  let v_43 = (r3.yw * r3.yw);
  let v_44 = r3;
  r3 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  r1.y = (r3.x + -500.0f);
  r1.y = max(r1.y, 0.0f);
  r3.x = ((-(r1.yyyy)).x + r3.x);
  r1.y = (r1.y * 558.0f);
  r1.y = fma(r3.x, 3.0f, r1.y);
  let v_45 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  r3.x = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_46 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = (r8.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = fma(r8.xxx, cb6_6.tint_symbol_6[0u].xyz, r9.xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = fma(r8.zzz, cb6_6.tint_symbol_6[2u].xyz, r9.xyz);
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = fma(r9.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  let v_51 = &(x0[0u]);
  let v_52 = r10;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r9.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r11 = vec4<f32>(v_53.xyz, r11.w);
  let v_54 = &(x0[1u]);
  let v_55 = r11;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = fma(r9.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r12 = vec4<f32>(v_56.xyz, r12.w);
  let v_57 = &(x0[2u]);
  let v_58 = r12;
  *(v_57) = vec4<f32>(v_58.xyz, (*(v_57)).w);
  let v_59 = fma(r9.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r9 = vec4<f32>(v_59.xyz, r9.w);
  let v_60 = &(x0[3u]);
  let v_61 = r9;
  *(v_60) = vec4<f32>(v_61.xyz, (*(v_60)).w);
  let v_62 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_63 = r13;
  r13 = vec4<f32>(v_63.x, v_62.x, v_63.z, v_62.y);
  r3.w = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_64 = abs(r12.yyyy);
  r5.w = max(v_64.w, abs(r12.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.w)));
  let v_65 = (bitcast<u32>(r5.w) != 0u);
  let v_66 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_66, v_65);
  let v_67 = abs(r11.yyyy);
  r6.w = max(v_67.w, abs(r11.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.w)));
  let v_68 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_68 != 0u));
  let v_69 = abs(r10.yyyy);
  r6.w = max(v_69.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r3.w)));
  let v_70 = bitcast<u32>(r3.w);
  r3.w = select(r5.w, 0.0f, (v_70 != 0u));
  let v_71 = x0[bitcast<i32>(r3.w)];
  r10 = vec4<f32>(v_71.xyz, r10.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r5.w = (r3.w + 0.5f);
  r5.w = (r5.w * 0.25f);
  r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.wwww)));
  r11 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r11) & vec4<u32>(1065353216u)));
  r3.w = dot(r11, cb6_6.tint_symbol_6[12u]);
  r6.w = dot(r11, cb6_6.tint_symbol_6[13u]);
  r11.x = (r10.x + 0.5f);
  r11.y = fma(r10.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  r3.w = ((-(r3.wwww)).w + r10.z);
  let v_72 = dpdx(r11.xyy);
  r12 = vec4<f32>(v_72.xy, r12.z, v_72.z);
  r12.z = dpdx(r3.w);
  let v_73 = dpdy(r11.yxy);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  r14.w = dpdy(r3.w);
  let v_74 = (r12.yw * r14.yw);
  r9 = vec4<f32>(r9.xy, v_74.xy);
  let v_75 = -(r9.zwzz);
  let v_76 = fma(r12.xz, r14.xz, v_75.xy);
  r15 = vec4<f32>(v_76.xy, r15.zw);
  r7.w = (1.0f / r15.x);
  r8.w = (r12.z * r14.y);
  let v_77 = -(r8.wwww);
  r15.z = fma(r12.x, r14.w, v_77.z);
  let v_78 = (r7.ww * r15.yz);
  r9 = vec4<f32>(r9.xy, v_78.xy);
  let v_79 = max(r9.zw, vec2<f32>());
  r9 = vec4<f32>(r9.xy, v_79.xy);
  let v_80 = min(r9.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(r9.xy, v_80.xy);
  r3.w = fma((-(r6.wwww)).w, r9.z, r3.w);
  r3.w = fma((-(r6.wwww)).w, r9.w, r3.w);
  let v_81 = bitcast<u32>(r5.w);
  let v_82 = r3.w;
  r13.z = select(r10.z, v_82, (v_81 != 0u));
  r11.z = 0.0f;
  let v_83 = (r11.xyz + r13.ywz);
  r10 = vec4<f32>(v_83.xyz, r10.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r13 = vec4<f32>(v_84.xy, r13.zw);
  let v_85 = (r11.xyz + r13.xyz);
  r12 = vec4<f32>(v_85.xyz, r12.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r13 = vec4<f32>(v_86.xy, r13.zw);
  let v_87 = (r11.xyz + r13.xyz);
  r14 = vec4<f32>(v_87.xyz, r14.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r13 = vec4<f32>(v_88.xy, r13.zw);
  let v_89 = (r11.xyz + r13.xyz);
  r15 = vec4<f32>(v_89.xyz, r15.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r13 = vec4<f32>(v_90.xy, r13.zw);
  let v_91 = (r11.xyz + r13.xyz);
  r16 = vec4<f32>(v_91.xyz, r16.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r13 = vec4<f32>(v_92.xy, r13.zw);
  let v_93 = (r11.xyz + r13.xyz);
  r17 = vec4<f32>(v_93.xyz, r17.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r13 = vec4<f32>(v_94.xy, r13.zw);
  let v_95 = (r11.xyz + r13.xyz);
  r18 = vec4<f32>(v_95.xyz, r18.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r13 = vec4<f32>(v_96.xy, r13.zw);
  let v_97 = (r11.xyz + r13.xyz);
  r19 = vec4<f32>(v_97.xyz, r19.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r13 = vec4<f32>(v_98.xy, r13.zw);
  let v_99 = (r11.xyz + r13.xyz);
  r20 = vec4<f32>(v_99.xyz, r20.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r13 = vec4<f32>(v_100.xy, r13.zw);
  let v_101 = (r11.xyz + r13.xyz);
  r21 = vec4<f32>(v_101.xyz, r21.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r13 = vec4<f32>(v_102.xy, r13.zw);
  let v_103 = (r11.xyz + r13.xyz);
  r22 = vec4<f32>(v_103.xyz, r22.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r13 = vec4<f32>(v_104.xy, r13.zw);
  let v_105 = (r11.xyz + r13.xyz);
  r23 = vec4<f32>(v_105.xyz, r23.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r13 = vec4<f32>(v_106.xy, r13.zw);
  let v_107 = (r11.xyz + r13.xyz);
  r24 = vec4<f32>(v_107.xyz, r24.w);
  let v_108 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r13 = vec4<f32>(v_108.xy, r13.zw);
  let v_109 = (r11.xyz + r13.xyz);
  r25 = vec4<f32>(v_109.xyz, r25.w);
  let v_110 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r13 = vec4<f32>(v_110.xy, r13.zw);
  let v_111 = (r11.xyz + r13.xyz);
  r26 = vec4<f32>(v_111.xyz, r26.w);
  let v_112 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r13 = vec4<f32>(v_112.xy, r13.zw);
  let v_113 = (r11.xyz + r13.xyz);
  r11 = vec4<f32>(v_113.xyz, r11.w);
  let v_114 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_114.xy, r10.z);
  let v_115 = r12.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_115.xy, r12.z);
  let v_116 = r14.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_116.xy, r14.z);
  let v_117 = r15.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_117.xy, r15.z);
  let v_118 = r16.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_118.xy, r16.z);
  let v_119 = r17.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_119.xy, r17.z);
  let v_120 = r18.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_120.xy, r18.z);
  let v_121 = r19.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_121.xy, r19.z);
  let v_122 = r20.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_122.xy, r20.z);
  let v_123 = r21.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_123.xy, r21.z);
  let v_124 = r22.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_124.xy, r22.z);
  let v_125 = r23.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_125.xy, r23.z);
  let v_126 = r24.xyxx;
  r14.x = textureSampleCompareLevel(t15, s15, v_126.xy, r24.z);
  let v_127 = r25.xyxx;
  r14.y = textureSampleCompareLevel(t15, s15, v_127.xy, r25.z);
  let v_128 = r26.xyxx;
  r14.z = textureSampleCompareLevel(t15, s15, v_128.xy, r26.z);
  let v_129 = r11.xyxx;
  r14.w = textureSampleCompareLevel(t15, s15, v_129.xy, r11.z);
  r10 = (r10 + r12);
  r10 = (r13 + r10);
  r10 = (r14 + r10);
  r3.w = dot(r10, vec4<f32>(1.0f));
  r3.x = clamp(fma(r3.xxxx, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).x, 0.0f, 1.0f);
  let v_130 = abs(r9.yyyy);
  r5.w = max(v_130.w, abs(r9.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = (r5.w * r3.x);
  r3.x = fma(r3.w, 0.0625f, r3.x);
  r3.x = (r3.x * r3.x);
  r3.x = min(r3.x, 1.0f);
  r3.w = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = (r3.w * cb6_6.tint_symbol_6[3u].z);
  let v_131 = -(r3.xxxx);
  r3.x = fma(r3.w, v_131.x, r3.x);
  let v_132 = dot(r2.xyz, v_40.xyz);
  r3.w = clamp(vec4<f32>(v_132, v_132, v_132, v_132).w, 0.0f, 1.0f);
  let v_133 = dot(r6.xyz, r2.xyz);
  r9.x = clamp(vec4<f32>(v_133, v_133, v_133, v_133).x, 0.0f, 1.0f);
  let v_134 = dot(r7.xyz, v_40.xyz);
  r9.y = clamp(vec4<f32>(v_134, v_134, v_134, v_134).y, 0.0f, 1.0f);
  let v_135 = ((-(r9.xxyx)).yz + vec2<f32>(1.0f));
  let v_136 = r9;
  r9 = vec4<f32>(v_136.x, v_135.xy, v_136.w);
  let v_137 = (r9.yz * r9.yz);
  r10 = vec4<f32>(v_137.xy, r10.zw);
  let v_138 = (r10.xy * r10.xy);
  r10 = vec4<f32>(v_138.xy, r10.zw);
  let v_139 = (r9.yz * r10.xy);
  let v_140 = r9;
  r9 = vec4<f32>(v_140.x, v_139.xy, v_140.w);
  r5.w = ((-(cb10_10.tint_symbol_5[0u].zzzz)).w + 1.0f);
  let v_141 = fma(cb10_10.tint_symbol_5[0u].zz, r9.yz, r5.ww);
  let v_142 = r9;
  r9 = vec4<f32>(v_142.x, v_141.xy, v_142.w);
  let v_143 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r10 = vec4<f32>(v_143.xy, r10.zw);
  r1.y = (r10.x * 0.125f);
  r6.w = fma((-(r2.wwww)).w, r9.y, 1.0f);
  r7.x = dot(r2.xyz, r7.xyz);
  r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r7.x = log2(r7.x);
  r7.x = (r7.x * r10.y);
  r7.x = exp2(r7.x);
  r7.x = (r9.z * r7.x);
  r7.x = (r1.y * r7.x);
  r7.x = (r2.w * r7.x);
  r7.x = (r3.w * r7.x);
  r3.w = (r3.w * r6.w);
  let v_144 = fma(r0.xyz, r3.www, r7.xxx);
  r7 = vec4<f32>(v_144.xyz, r7.w);
  let v_145 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_145.xyz, r7.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r10 = vec4<f32>(0.0f, r10.y, vec2<f32>());
    r9 = vec4<f32>(r9.x, vec3<f32>());
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_146 = -(v2.xxyz);
    let v_147 = (v_146.yzw + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(r9.x, v_147.xyz);
    let v_148 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xxyz)).xzw);
    r10 = vec4<f32>(v_148.x, r10.y, v_148.yz);
    r8.w = dot(r10.xzw, cb3_3.tint_symbol_2[11u].xyz);
    r10.x = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r8.w = clamp(((r8.wwww / r10.xxxx)).w, 0.0f, 1.0f);
    r8.w = (r8.w * cb3_3.tint_symbol_2[19u].w);
    let v_149 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_149.x, r10.y, v_149.yz);
    let v_150 = (r10.xzw + v_146.xzw);
    r10 = vec4<f32>(v_150.x, r10.y, v_150.yz);
    let v_151 = bitcast<vec3<u32>>(r7.www);
    let v_152 = r9.yzw;
    let v_153 = select(r10.xzw, v_152, (v_151 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_153.xyz);
    r7.w = dot(r9.yzw, r9.yzw);
    let v_154 = (r9.yzw + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(r9.x, v_154.xyz);
    r8.w = dot(r9.yzw, r9.yzw);
    r8.w = inverseSqrt(r8.w);
    let v_155 = (r8.www * r9.yzw);
    r9 = vec4<f32>(r9.x, v_155.xyz);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r8.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[11u].w);
    r7.w = (r7.w / r8.w);
    let v_156 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r8.w = dot(r9.yzw, v_156.xyz);
    r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_157 = dot(r9.yzw, r2.xyz);
    r10.x = clamp(vec4<f32>(v_157, v_157, v_157, v_157).x, 0.0f, 1.0f);
    r8.w = (r8.w * r10.x);
    r10.x = (r7.w * r8.w);
    let v_158 = (r10.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_158.x, r10.y, v_158.yz);
    let v_159 = (r0.xyz * r10.xzw);
    r10 = vec4<f32>(v_159.x, r10.y, v_159.yz);
    let v_160 = fma(r5.xyz, r1.xxx, r9.yzw);
    r9 = vec4<f32>(r9.x, v_160.xyz);
    r11.x = dot(r9.yzw, r9.yzw);
    r11.x = inverseSqrt(r11.x);
    let v_161 = (r9.yzw * r11.xxx);
    r9 = vec4<f32>(r9.x, v_161.xyz);
    let v_162 = dot(r9.yzw, r6.xyz);
    r11.x = clamp(vec4<f32>(v_162, v_162, v_162, v_162).x, 0.0f, 1.0f);
    r11.x = ((-(r11.xxxx)).x + 1.0f);
    r11.y = (r11.x * r11.x);
    r11.y = (r11.y * r11.y);
    r11.x = (r11.y * r11.x);
    r11.x = fma(cb10_10.tint_symbol_5[0u].z, r11.x, r5.w);
    let v_163 = dot(r9.yzw, r2.xyz);
    r9.y = clamp(vec4<f32>(v_163, v_163, v_163, v_163).y, 0.0f, 1.0f);
    r9.y = log2(r9.y);
    r9.y = (r9.y * r10.y);
    r9.y = exp2(r9.y);
    r9.y = (r9.y * r11.x);
    r8.w = (r8.w * r9.y);
    r7.w = (r7.w * r8.w);
    r7.w = (r1.y * r7.w);
    let v_164 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(r9.x, v_164.xyz);
  }
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r8.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    let v_165 = bitcast<u32>(r8.w);
    let v_166 = r7.w;
    r3.w = select(r3.w, v_166, (v_165 != 0u));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_167 = (v_37.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_167.xyz, r11.w);
      let v_168 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_168.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r11.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r11.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[20u].w);
      let v_169 = fma(cb3_3.tint_symbol_2[12u].xyz, r8.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_169.xyz, r12.w);
      let v_170 = (r12.xyz + v_37.xyz);
      r12 = vec4<f32>(v_170.xyz, r12.w);
      let v_171 = bitcast<vec3<u32>>(r7.www);
      let v_172 = r11.xyz;
      let v_173 = select(r12.xyz, v_172, (v_171 != vec3<u32>()));
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_174 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_174.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_175 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_175.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[12u].w);
      r7.w = (r7.w / r8.w);
      let v_176 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r8.w = dot(r11.xyz, v_176.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_177 = dot(r11.xyz, r2.xyz);
      r11.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r8.w = (r8.w * r11.w);
      r11.w = (r7.w * r8.w);
      let v_178 = (r11.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_178.xyz, r12.w);
      let v_179 = fma(r12.xyz, r0.xyz, r10.xzw);
      r10 = vec4<f32>(v_179.x, r10.y, v_179.yz);
      let v_180 = fma(r5.xyz, r1.xxx, r11.xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r11.w = dot(r11.xyz, r11.xyz);
      r11.w = inverseSqrt(r11.w);
      let v_181 = (r11.www * r11.xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = dot(r11.xyz, r6.xyz);
      r11.w = clamp(vec4<f32>(v_182, v_182, v_182, v_182).w, 0.0f, 1.0f);
      r11.w = ((-(r11.wwww)).w + 1.0f);
      r12.x = (r11.w * r11.w);
      r12.x = (r12.x * r12.x);
      r11.w = (r11.w * r12.x);
      r11.w = fma(cb10_10.tint_symbol_5[0u].z, r11.w, r5.w);
      let v_183 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_183, v_183, v_183, v_183).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r10.y * r11.x);
      r11.x = exp2(r11.x);
      r11.x = (r11.x * r11.w);
      r8.w = (r8.w * r11.x);
      r7.w = (r7.w * r8.w);
      r7.w = (r1.y * r7.w);
      let v_184 = fma(r7.www, cb3_3.tint_symbol_2[20u].xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_184.xyz);
    }
  } else {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_185 = (v_37.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_185.xyz, r11.w);
      let v_186 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_186.xyz, r12.w);
      r8.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r11.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r8.w = clamp(((r8.wwww / r11.wwww)).w, 0.0f, 1.0f);
      r8.w = (r8.w * cb3_3.tint_symbol_2[21u].w);
      let v_187 = fma(cb3_3.tint_symbol_2[13u].xyz, r8.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_187.xyz, r12.w);
      let v_188 = (r12.xyz + v_37.xyz);
      r12 = vec4<f32>(v_188.xyz, r12.w);
      let v_189 = bitcast<vec3<u32>>(r7.www);
      let v_190 = r11.xyz;
      let v_191 = select(r12.xyz, v_190, (v_189 != vec3<u32>()));
      r11 = vec4<f32>(v_191.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      let v_192 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_192.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_193 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_193.xyz, r11.w);
      r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r8.w = fma(r8.w, r7.w, cb3_3.tint_symbol_2[13u].w);
      r7.w = (r7.w / r8.w);
      let v_194 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r8.w = dot(r11.xyz, v_194.xyz);
      r8.w = clamp(fma(r8.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_195 = dot(r11.xyz, r2.xyz);
      r11.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r8.w = (r8.w * r11.w);
      r11.w = (r7.w * r8.w);
      let v_196 = (r11.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_196.xyz, r12.w);
      let v_197 = fma(r12.xyz, r0.xyz, r10.xzw);
      r10 = vec4<f32>(v_197.x, r10.y, v_197.yz);
      let v_198 = fma(r5.xyz, r1.xxx, r11.xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r11.w = dot(r11.xyz, r11.xyz);
      r11.w = inverseSqrt(r11.w);
      let v_199 = (r11.www * r11.xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = dot(r11.xyz, r6.xyz);
      r11.w = clamp(vec4<f32>(v_200, v_200, v_200, v_200).w, 0.0f, 1.0f);
      r11.w = ((-(r11.wwww)).w + 1.0f);
      r12.x = (r11.w * r11.w);
      r12.x = (r12.x * r12.x);
      r11.w = (r11.w * r12.x);
      r11.w = fma(cb10_10.tint_symbol_5[0u].z, r11.w, r5.w);
      let v_201 = dot(r11.xyz, r2.xyz);
      r11.x = clamp(vec4<f32>(v_201, v_201, v_201, v_201).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r10.y * r11.x);
      r11.x = exp2(r11.x);
      r11.x = (r11.x * r11.w);
      r8.w = (r8.w * r11.x);
      r7.w = (r7.w * r8.w);
      r7.w = (r1.y * r7.w);
      let v_202 = fma(r7.www, cb3_3.tint_symbol_2[21u].xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_202.xyz);
    }
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r7.w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
    } else {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_203 = (v_37.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_203.xyz, r11.w);
      let v_204 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_204.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r8.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r8.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_205 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_205.xyz, r12.w);
      let v_206 = (r12.xyz + v_37.xyz);
      r12 = vec4<f32>(v_206.xyz, r12.w);
      let v_207 = bitcast<vec3<u32>>(r3.www);
      let v_208 = r11.xyz;
      let v_209 = select(r12.xyz, v_208, (v_207 != vec3<u32>()));
      r11 = vec4<f32>(v_209.xyz, r11.w);
      r3.w = dot(r11.xyz, r11.xyz);
      let v_210 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_210.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_211 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_2[14u].w);
      r3.w = (r3.w / r7.w);
      let v_212 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r11.xyz, v_212.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_213 = dot(r11.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_213, v_213, v_213, v_213).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r3.w * r7.w);
      let v_214 = (r8.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_214.xyz, r12.w);
      let v_215 = fma(r12.xyz, r0.xyz, r10.xzw);
      r10 = vec4<f32>(v_215.x, r10.y, v_215.yz);
      let v_216 = fma(r5.xyz, r1.xxx, r11.xyz);
      r5 = vec4<f32>(v_216.xyz, r5.w);
      r1.x = dot(r5.xyz, r5.xyz);
      r1.x = inverseSqrt(r1.x);
      let v_217 = (r1.xxx * r5.xyz);
      r5 = vec4<f32>(v_217.xyz, r5.w);
      let v_218 = dot(r5.xyz, r6.xyz);
      r1.x = clamp(vec4<f32>(v_218, v_218, v_218, v_218).x, 0.0f, 1.0f);
      r1.x = ((-(r1.xxxx)).x + 1.0f);
      r6.x = (r1.x * r1.x);
      r6.x = (r6.x * r6.x);
      r1.x = (r1.x * r6.x);
      r1.x = fma(cb10_10.tint_symbol_5[0u].z, r1.x, r5.w);
      let v_219 = dot(r5.xyz, r2.xyz);
      r5.x = clamp(vec4<f32>(v_219, v_219, v_219, v_219).x, 0.0f, 1.0f);
      r5.x = log2(r5.x);
      r5.x = (r5.x * r10.y);
      r5.x = exp2(r5.x);
      r1.x = (r1.x * r5.x);
      r1.x = (r7.w * r1.x);
      r1.x = (r3.w * r1.x);
      r1.x = (r1.y * r1.x);
      let v_220 = fma(r1.xxx, cb3_3.tint_symbol_2[22u].xyz, r9.yzw);
      r9 = vec4<f32>(r9.x, v_220.xyz);
    }
  }
  r1.x = (r6.w * r6.w);
  r1.y = (r2.w * r2.w);
  let v_221 = (r9.yzw * r1.yyy);
  r5 = vec4<f32>(v_221.xyz, r5.w);
  let v_222 = fma(r1.xxx, r10.xzw, r5.xyz);
  r5 = vec4<f32>(v_222.xyz, r5.w);
  let v_223 = fma(r7.xyz, r3.xxx, r5.xyz);
  r5 = vec4<f32>(v_223.xyz, r5.w);
  r1.x = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_224 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r1 = vec4<f32>(r1.x, v_224.xyz);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_225 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_225.xyz, r6.w);
  let v_226 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_226.xyz, r6.w);
  let v_227 = fma(r1.yzw, r2.www, r6.xyz);
  r1 = vec4<f32>(r1.x, v_227.xyz);
  let v_228 = (r3.zzz * r1.yzw);
  r1 = vec4<f32>(r1.x, v_228.xyz);
  let v_229 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r3 = vec4<f32>(v_229.x, r3.y, v_229.yz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_230 = dot(r6.xyz, r2.xyz);
  r1.x = clamp(vec4<f32>(v_230, v_230, v_230, v_230).x, 0.0f, 1.0f);
  let v_231 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r3.xzw);
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = fma(r2.xyz, r3.yyy, r1.yzw);
  r1 = vec4<f32>(v_232.xyz, r1.w);
  let v_233 = (r6.www * r1.xyz);
  r1 = vec4<f32>(v_233.xyz, r1.w);
  let v_234 = fma(r1.xyz, r0.xyz, r5.xyz);
  r1 = vec4<f32>(v_234.xyz, r1.w);
  r0.w = (r0.w * r9.x);
  let v_235 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_235.xyz, r0.w);
  r0.w = dot(r8.xyz, r8.xyz);
  r1.x = sqrt(r0.w);
  let v_236 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_236.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r8.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_237 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_237 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_238 = (r0.www * r8.xyz);
  r2 = vec4<f32>(v_238.xyz, r2.w);
  let v_239 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_239, v_239, v_239, v_239).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_240 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_241 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_241.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_242 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_242.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_243 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_243.xyz, r2.w);
  let v_244 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_244.xyz, r2.w);
  let v_245 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_245.xyz, r3.w);
  let v_246 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_246.xyz, r2.w);
  let v_247 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_248 = (r2.xyz + v_247.xyz);
  r2 = vec4<f32>(v_248.xyz, r2.w);
  let v_249 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_249.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_250 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_250.xy, r1.z, v_250.z);
  let v_251 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_251.xy, r1.z, v_251.z);
  let v_252 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_252.xyz, r0.w);
  let v_253 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r4 = vec4<f32>(v_253.xyz, r4.w);
  r0 = max(r4, vec4<f32>());
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.w)));
  v_254((bitcast<u32>(r1.x) != 0u));
  let v_255 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_255.xyz, r0.w);
  let v_256 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_256.xyz, o0.w);
  o0.w = r0.w;
}

fn v_254(v_257 : bool) {
  if (v_257) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
