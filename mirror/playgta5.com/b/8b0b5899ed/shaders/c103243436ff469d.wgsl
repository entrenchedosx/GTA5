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
  tint_symbol_7 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  v_1((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].y, 0.00100000004749745131f);
  let v_3 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.yyy * v5.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(r1.xxx, v4.xyz, r2.xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = fma(r1.zzz, v1.xyz, r1.xyw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_7 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r3 = textureSample(t4, s4, v0.xyxx.xy);
  let v_8 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2.w = fma((-(r3.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r1.x * cb10_10.tint_symbol_5[1u].x);
  r3.x = (r1.y * cb10_10.tint_symbol_5[0u].w);
  r0.w = (r0.w * cb10_10.tint_symbol_5[0u].x);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].w);
  let v_9 = (v3.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_10 = r3;
  r3 = vec4<f32>(v_10.x, v_9.x, v_10.z, v_9.y);
  r4.x = fma(r2.z, 0.5f, 0.5f);
  r5.x = fma(r4.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.y = (r4.x + 0.30000001192092895508f);
  let v_11 = (r3.yw * r5.xy);
  let v_12 = r3;
  r3 = vec4<f32>(v_12.x, v_11.x, v_12.z, v_11.y);
  r0.w = (r0.w * v3.z);
  r4.x = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r4.x == 0.0f))));
  if ((bitcast<u32>(r4.x) != 0u)) {
    r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
    let v_13 = fract(v6.yx);
    let v_14 = r4;
    r4 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
    r4.w = fma(r4.x, v0.w, v1.w);
    r5.x = fract(cb13_13.tint_symbol_4[16u].z);
    r4.y = ((-(r4.zzzz)).y + 1.0f);
    r5.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_15 = bitcast<vec2<u32>>(r5.yy);
    let v_16 = r4.wy;
    let v_17 = select(r4.zw, v_16, (v_15 != vec2<u32>()));
    let v_18 = r5;
    r5 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
    r6 = textureSampleLevel(t6, s6, r5.yzyy.xy, 0.0f);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r5.x)));
    if ((bitcast<u32>(r4.w) != 0u)) {
      let v_19 = abs(v6.zzzz);
      let v_20 = abs(v6.wwww);
      r4.x = fma(r4.x, v_19.x, v_20.x);
      r4.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r5.x)));
      let v_21 = bitcast<vec2<u32>>(r4.ww);
      let v_22 = r4.xy;
      let v_23 = select(r4.zx, v_22, (v_21 != vec2<u32>()));
      r4 = vec4<f32>(v_23.xy, r4.zw);
      r4 = textureSampleLevel(t6, s6, r4.xyxx.xy, 0.0f);
    } else {
      r4 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r4.w);
    }
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r5.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_24 = bitcast<u32>(r3.z);
    let v_25 = r4.w;
    r4.w = select(r5.x, v_25, (v_24 != 0u));
    r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) & bitcast<u32>(r5.x)));
    let v_26 = bitcast<vec4<u32>>(r4.wwww);
    r5 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_26 != vec4<u32>()));
    r4.w = fma(r5.w, 2.0f, -1.0f);
    r4.w = ((-(abs(r4.wwww))).w + 1.0f);
    r5.w = ((-(r4.zzzz)).w + 1.0f);
    r5.w = (r5.w * r5.w);
    r5.w = (r4.x * r5.w);
    r1.y = fma((-(r1.yyyy)).y, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[6u].w);
    r3.x = fma(r5.w, r1.y, r3.x);
    r1.x = fma((-(r1.xxxx)).x, cb10_10.tint_symbol_5[1u].x, cb13_13.tint_symbol_4[7u].w);
    r2.w = fma(r5.w, r1.x, r2.w);
    let v_27 = bitcast<vec3<u32>>(r3.zzz);
    let v_28 = select(vec3<f32>(1.0f), r0.xyz, (v_27 != vec3<u32>()));
    r6 = vec4<f32>(v_28.xyz, r6.w);
    let v_29 = (r5.xyz * r6.xyz);
    r5 = vec4<f32>(v_29.xyz, r5.w);
    let v_30 = fma(r0.xyz, r4.www, r5.xyz);
    r5 = vec4<f32>(v_30.xyz, r5.w);
    let v_31 = bitcast<u32>(r3.z);
    r1.x = select(r4.y, 0.0f, (v_31 != 0u));
    let v_32 = -(r5.xyzx);
    let v_33 = fma(r5.xyz, cb13_13.tint_symbol_4[7u].xyz, v_32.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = fma(r1.xxx, r6.xyz, r5.xyz);
    r5 = vec4<f32>(v_34.xyz, r5.w);
    let v_35 = (r4.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r4 = vec4<f32>(v_35.xy, r4.z, v_35.z);
    let v_36 = fma(r5.xyz, r4.zzz, r4.xyw);
    r0 = vec4<f32>(v_36.xyz, r0.w);
  }
  let v_37 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_38.xyz, r4.w);
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_39 = (r1.xxx * r4.xyz);
  r5 = vec4<f32>(v_39.xyz, r5.w);
  let v_40 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_41 = fma(r4.xyz, r1.xxx, v_40.xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  r1.x = dot(r6.xyz, r6.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_42 = (r1.xxx * r6.xyz);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  r2.w = clamp(r2.wwww.w, 0.0f, 1.0f);
  let v_43 = (r3.yw * r3.yw);
  r1 = vec4<f32>(v_43.xy, r1.zw);
  r3.y = (r3.x + -500.0f);
  r3.y = max(r3.y, 0.0f);
  r3.x = ((-(r3.yyyy)).x + r3.x);
  r3.y = (r3.y * 558.0f);
  r3.x = fma(r3.x, 3.0f, r3.y);
  let v_44 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  r3.y = dot(r4.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_45 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r7 = vec4<f32>(v_46.xyz, r7.w);
  let v_47 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_48.xyz, r7.w);
  let v_49 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_49.xyz, r8.w);
  let v_50 = &(x0[0u]);
  let v_51 = r8;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = &(x0[1u]);
  let v_54 = r9;
  *(v_53) = vec4<f32>(v_54.xyz, (*(v_53)).w);
  let v_55 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_55.xyz, r10.w);
  let v_56 = &(x0[2u]);
  let v_57 = r10;
  *(v_56) = vec4<f32>(v_57.xyz, (*(v_56)).w);
  let v_58 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_58.xyz, r7.w);
  let v_59 = &(x0[3u]);
  let v_60 = r7;
  *(v_59) = vec4<f32>(v_60.xyz, (*(v_59)).w);
  let v_61 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_62 = r11;
  r11 = vec4<f32>(v_62.x, v_61.x, v_62.z, v_61.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_63 = abs(r10.yyyy);
  r3.w = max(v_63.w, abs(r10.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_64 = (bitcast<u32>(r3.w) != 0u);
  let v_65 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_65, v_64);
  let v_66 = abs(r9.yyyy);
  r4.w = max(v_66.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_67 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_67 != 0u));
  let v_68 = abs(r8.yyyy);
  r4.w = max(v_68.w, abs(r8.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_69 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_69 != 0u));
  let v_70 = x0[bitcast<i32>(r3.z)];
  r8 = vec4<f32>(v_70.xyz, r8.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r3.z = dot(r9, cb6_6.tint_symbol_6[12u]);
  r4.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r8.z);
  let v_71 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_71.xy, r10.z, v_71.z);
  r10.z = dpdx(r3.z);
  let v_72 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_72.xyz, r12.w);
  r12.w = dpdy(r3.z);
  let v_73 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_73.xy);
  let v_74 = -(r7.zwzz);
  let v_75 = fma(r10.xz, r12.xz, v_74.xy);
  r13 = vec4<f32>(v_75.xy, r13.zw);
  r5.w = (1.0f / r13.x);
  r6.w = (r10.z * r12.y);
  let v_76 = -(r6.wwww);
  r13.z = fma(r10.x, r12.w, v_76.z);
  let v_77 = (r5.ww * r13.yz);
  r7 = vec4<f32>(r7.xy, v_77.xy);
  let v_78 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_78.xy);
  let v_79 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_79.xy);
  r3.z = fma((-(r4.wwww)).z, r7.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r7.w, r3.z);
  let v_80 = bitcast<u32>(r3.w);
  let v_81 = r3.z;
  r11.z = select(r8.z, v_81, (v_80 != 0u));
  r9.z = 0.0f;
  let v_82 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_82.xyz, r8.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_83.xy, r11.zw);
  let v_84 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_84.xyz, r10.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_85.xy, r11.zw);
  let v_86 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_86.xyz, r12.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_87.xy, r11.zw);
  let v_88 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_88.xyz, r13.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_89.xy, r11.zw);
  let v_90 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_90.xyz, r14.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_91.xy, r11.zw);
  let v_92 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_92.xyz, r15.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_93.xy, r11.zw);
  let v_94 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_94.xyz, r16.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_95.xy, r11.zw);
  let v_96 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_96.xyz, r17.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_97.xy, r11.zw);
  let v_98 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_98.xyz, r18.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_99.xy, r11.zw);
  let v_100 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_100.xyz, r19.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_101.xy, r11.zw);
  let v_102 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_102.xyz, r20.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_103.xy, r11.zw);
  let v_104 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_104.xyz, r21.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_105.xy, r11.zw);
  let v_106 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_106.xyz, r22.w);
  let v_107 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_107.xy, r11.zw);
  let v_108 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_108.xyz, r23.w);
  let v_109 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_109.xy, r11.zw);
  let v_110 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_110.xyz, r24.w);
  let v_111 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_111.xy, r11.zw);
  let v_112 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_112.xyz, r9.w);
  let v_113 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_113.xy, r8.z);
  let v_114 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_114.xy, r10.z);
  let v_115 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_115.xy, r12.z);
  let v_116 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_116.xy, r13.z);
  let v_117 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_117.xy, r14.z);
  let v_118 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_118.xy, r15.z);
  let v_119 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_119.xy, r16.z);
  let v_120 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_120.xy, r17.z);
  let v_121 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_121.xy, r18.z);
  let v_122 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_122.xy, r19.z);
  let v_123 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_123.xy, r20.z);
  let v_124 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_124.xy, r21.z);
  let v_125 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_125.xy, r22.z);
  let v_126 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_126.xy, r23.z);
  let v_127 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_127.xy, r24.z);
  let v_128 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_128.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r3.z = dot(r8, vec4<f32>(1.0f));
  r3.y = clamp(fma(r3.yyyy, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).y, 0.0f, 1.0f);
  let v_129 = abs(r7.yyyy);
  r3.w = max(v_129.w, abs(r7.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  r3.y = (r3.w * r3.y);
  r3.y = fma(r3.z, 0.0625f, r3.y);
  r3.y = (r3.y * r3.y);
  r3.y = min(r3.y, 1.0f);
  r3.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_6[3u].z);
  let v_130 = -(r3.yyyy);
  r3.y = fma(r3.z, v_130.y, r3.y);
  let v_131 = dot(r2.xyz, v_40.xyz);
  r3.z = clamp(vec4<f32>(v_131, v_131, v_131, v_131).z, 0.0f, 1.0f);
  let v_132 = dot(r5.xyz, r2.xyz);
  r5.x = clamp(vec4<f32>(v_132, v_132, v_132, v_132).x, 0.0f, 1.0f);
  let v_133 = dot(r6.xyz, v_40.xyz);
  r5.y = clamp(vec4<f32>(v_133, v_133, v_133, v_133).y, 0.0f, 1.0f);
  let v_134 = ((-(r5.xxyx)).yz + vec2<f32>(1.0f));
  let v_135 = r5;
  r5 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
  let v_136 = (r5.yz * r5.yz);
  r7 = vec4<f32>(v_136.xy, r7.zw);
  let v_137 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_137.xy, r7.zw);
  let v_138 = (r5.yz * r7.xy);
  let v_139 = r5;
  r5 = vec4<f32>(v_139.x, v_138.xy, v_139.w);
  r3.w = ((-(cb10_10.tint_symbol_5[0u].zzzz)).w + 1.0f);
  let v_140 = fma(cb10_10.tint_symbol_5[0u].zz, r5.yz, r3.ww);
  let v_141 = r5;
  r5 = vec4<f32>(v_141.x, v_140.xy, v_141.w);
  let v_142 = (r3.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r3 = vec4<f32>(v_142.x, r3.yz, v_142.y);
  r3.x = (r3.x * 0.125f);
  r4.w = fma((-(r2.wwww)).w, r5.y, 1.0f);
  r5.y = dot(r2.xyz, r6.xyz);
  r5.y = clamp(((r5.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r5.y = log2(r5.y);
  r3.w = (r3.w * r5.y);
  r3.w = exp2(r3.w);
  r3.w = (r5.z * r3.w);
  r3.x = (r3.x * r3.w);
  r2.w = (r2.w * r3.x);
  r2.w = (r3.z * r2.w);
  r3.x = (r3.z * r4.w);
  let v_143 = fma(r0.xyz, r3.xxx, r2.www);
  r3 = vec4<f32>(v_143.x, r3.y, v_143.yz);
  let v_144 = (r3.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_144.x, r3.y, v_144.yz);
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_2[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_145 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(r5.x, v_145.xyz);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_146 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_146.xyz, r6.w);
  let v_147 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_147.xyz, r6.w);
  let v_148 = fma(r5.yzw, r1.www, r6.xyz);
  r5 = vec4<f32>(r5.x, v_148.xyz);
  let v_149 = (r1.yyy * r5.yzw);
  r5 = vec4<f32>(r5.x, v_149.xyz);
  let v_150 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_150.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_151 = dot(r6.xyz, r2.xyz);
  r2.x = clamp(vec4<f32>(v_151, v_151, v_151, v_151).x, 0.0f, 1.0f);
  let v_152 = fma(cb3_3.tint_symbol_2[49u].xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_152.xyz);
  let v_153 = fma(r1.yzw, r1.xxx, r5.yzw);
  r1 = vec4<f32>(v_153.xyz, r1.w);
  let v_154 = (r4.www * r1.xyz);
  r1 = vec4<f32>(v_154.xyz, r1.w);
  let v_155 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_155.xyz, r1.w);
  let v_156 = fma(r3.xzw, r3.yyy, r1.xyz);
  r1 = vec4<f32>(v_156.xyz, r1.w);
  r0.w = (r0.w * r5.x);
  let v_157 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_157.xyz, r0.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r0.w);
  let v_158 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_158.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r4.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_159 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_159 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_160 = (r0.www * r4.xyz);
  r2 = vec4<f32>(v_160.xyz, r2.w);
  let v_161 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_162 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_162, v_162, v_162, v_162).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_163 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_163.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_164 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_164.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_165 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_165.xyz, r2.w);
  let v_166 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_166.xyz, r2.w);
  let v_167 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_167.xyz, r3.w);
  let v_168 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_168.xyz, r2.w);
  let v_169 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_170 = (r2.xyz + v_169.xyz);
  r2 = vec4<f32>(v_170.xyz, r2.w);
  let v_171 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_171.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_172 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_172.xy, r1.z, v_172.z);
  let v_173 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_173.xy, r1.z, v_173.z);
  let v_174 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_174.xyz, r0.w);
  let v_175 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_175.xyz, o0.w);
}

fn v_1(v_176 : bool) {
  if (v_176) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
