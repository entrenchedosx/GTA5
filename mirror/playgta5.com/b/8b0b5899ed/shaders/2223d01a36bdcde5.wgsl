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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

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
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
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
  let v_7 = (r3.yx * r3.yx);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r2.w = fma((-(r3.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_8 = (r1.yx * cb10_10.tint_symbol_5[0u].wz);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r0.w = (r0.w * 255.0099945068359375f);
  r0.w = floor(r0.w);
  r2.w = (r0.w + -32.0f);
  r4.x = (r2.w * 0.0078125f);
  r4.y = cb13_13.tint_symbol_4[3u].x;
  r4 = textureSample(t13, s13, r4.xyxx.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 32.0f)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r0.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.w)));
  let v_9 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = bitcast<vec3<u32>>(r0.www);
  let v_11 = r4.xyz;
  let v_12 = select(r0.xyz, v_11, (v_10 != vec3<u32>()));
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  r0.w = fma(r2.z, 0.5f, 0.5f);
  r5.x = fma(r0.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.y = (r0.w + 0.30000001192092895508f);
  let v_14 = (r4.xy * r5.xy);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r0.w = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
    let v_15 = fract(v6.yx);
    let v_16 = r5;
    r5 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
    r5.w = fma(r5.x, v0.w, v1.w);
    r2.w = fract(cb13_13.tint_symbol_4[16u].z);
    r5.y = ((-(r5.zzzz)).y + 1.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_17 = bitcast<vec2<u32>>(r3.zz);
    let v_18 = r5.wy;
    let v_19 = select(r5.zw, v_18, (v_17 != vec2<u32>()));
    r3 = vec4<f32>(r3.xy, v_19.xy);
    r6 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      let v_20 = abs(v6.zzzz);
      let v_21 = abs(v6.wwww);
      r5.x = fma(r5.x, v_20.x, v_21.x);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
      let v_22 = bitcast<vec2<u32>>(r2.ww);
      let v_23 = r5.xy;
      let v_24 = select(r5.zx, v_23, (v_22 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_24.xy);
      r5 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
    }
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_25 = bitcast<u32>(r0.w);
    let v_26 = r2.w;
    r2.w = select(r3.z, v_26, (v_25 != 0u));
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.z)));
    let v_27 = bitcast<vec4<u32>>(r2.wwww);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_27 != vec4<u32>()));
    r2.w = fma(r6.w, 2.0f, -1.0f);
    r2.w = ((-(abs(r2.wwww))).w + 1.0f);
    r3.z = ((-(r5.zzzz)).z + 1.0f);
    r3.z = (r3.z * r3.z);
    r3.z = (r5.x * r3.z);
    r1.x = fma((-(r1.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r3.y = fma(r3.z, r1.x, r3.y);
    r1.x = fma((-(r1.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r3.x = fma(r3.z, r1.x, r3.x);
    let v_28 = fma(r0.xyz, r2.www, r6.xyz);
    r6 = vec4<f32>(v_28.xyz, r6.w);
    let v_29 = bitcast<u32>(r0.w);
    r0.w = select(r5.y, 0.0f, (v_29 != 0u));
    let v_30 = -(r6.xyzx);
    let v_31 = fma(r6.xyz, cb13_13.tint_symbol_4[7u].xyz, v_30.xyz);
    r7 = vec4<f32>(v_31.xyz, r7.w);
    let v_32 = fma(r0.www, r7.xyz, r6.xyz);
    r6 = vec4<f32>(v_32.xyz, r6.w);
    let v_33 = (r5.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r5 = vec4<f32>(v_33.xy, r5.z, v_33.z);
    let v_34 = fma(r6.xyz, r5.zzz, r5.xyw);
    r0 = vec4<f32>(v_34.xyz, r0.w);
  }
  let v_35 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = ((-(v2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_37 = (r0.www * r5.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  let v_38 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_39 = fma(r5.xyz, r0.www, v_38.xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_40 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_41 = (r4.xy * r4.xy);
  r1 = vec4<f32>(v_41.xy, r1.zw);
  r0.w = (r3.y + -500.0f);
  r0.w = max(r0.w, 0.0f);
  r2.w = ((-(r0.wwww)).w + r3.y);
  r0.w = (r0.w * 558.0f);
  r0.w = fma(r2.w, 3.0f, r0.w);
  r2.w = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_42 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r3 = vec4<f32>(r3.x, v_42.xyz);
  let v_43 = (r3.zzz * cb6_6.tint_symbol_6[1u].xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = fma(r3.yyy, cb6_6.tint_symbol_6[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma(r3.www, cb6_6.tint_symbol_6[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = fma(r4.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r5 = vec4<f32>(v_46.xyz, r5.w);
  let v_47 = &(x0[0u]);
  let v_48 = r5;
  *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
  let v_49 = fma(r4.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r8 = vec4<f32>(v_49.xyz, r8.w);
  let v_50 = &(x0[1u]);
  let v_51 = r8;
  *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
  let v_52 = fma(r4.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r9 = vec4<f32>(v_52.xyz, r9.w);
  let v_53 = &(x0[2u]);
  let v_54 = r9;
  *(v_53) = vec4<f32>(v_54.xyz, (*(v_53)).w);
  let v_55 = fma(r4.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = &(x0[3u]);
  let v_57 = r4;
  *(v_56) = vec4<f32>(v_57.xyz, (*(v_56)).w);
  let v_58 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_59 = r10;
  r10 = vec4<f32>(v_59.x, v_58.x, v_59.z, v_58.y);
  r4.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r4.z = (r4.z * 0.5f);
  let v_60 = abs(r9.yyyy);
  r4.w = max(v_60.w, abs(r9.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r4.z)));
  let v_61 = (bitcast<u32>(r4.w) != 0u);
  let v_62 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r4.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_62, v_61);
  let v_63 = abs(r8.yyyy);
  r5.z = max(v_63.z, abs(r8.xxxx).z);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z < r4.z)));
  let v_64 = bitcast<u32>(r5.z);
  r4.w = select(r4.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_64 != 0u));
  let v_65 = abs(r5.yyyy);
  r5.x = max(v_65.x, abs(r5.xxxx).x);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r5.x < r4.z)));
  let v_66 = bitcast<u32>(r4.z);
  r4.z = select(r4.w, 0.0f, (v_66 != 0u));
  let v_67 = x0[bitcast<i32>(r4.z)];
  r5 = vec4<f32>(v_67.xyz, r5.w);
  r4.z = f32(bitcast<i32>(r4.z));
  r4.w = (r4.z + 0.5f);
  r4.w = (r4.w * 0.25f);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.zzzz)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(1065353216u)));
  r4.z = dot(r8, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r8, cb6_6.tint_symbol_6[13u]);
  r8.x = (r5.x + 0.5f);
  r8.y = fma(r5.y, 0.25f, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  r4.z = ((-(r4.zzzz)).z + r5.z);
  let v_68 = dpdx(r8.xyy);
  r9 = vec4<f32>(v_68.xy, r9.z, v_68.z);
  r9.z = dpdx(r4.z);
  let v_69 = dpdy(r8.yxy);
  r11 = vec4<f32>(v_69.xyz, r11.w);
  r11.w = dpdy(r4.z);
  let v_70 = (r9.yw * r11.yw);
  r5 = vec4<f32>(v_70.xy, r5.zw);
  let v_71 = -(r5.xyxx);
  let v_72 = fma(r9.xz, r11.xz, v_71.xy);
  r12 = vec4<f32>(v_72.xy, r12.zw);
  r5.x = (1.0f / r12.x);
  r5.y = (r9.z * r11.y);
  let v_73 = -(r5.yyyy);
  r12.z = fma(r9.x, r11.w, v_73.z);
  let v_74 = (r5.xx * r12.yz);
  r5 = vec4<f32>(v_74.xy, r5.zw);
  let v_75 = max(r5.xy, vec2<f32>());
  r5 = vec4<f32>(v_75.xy, r5.zw);
  let v_76 = min(r5.xy, vec2<f32>(0.5f));
  r5 = vec4<f32>(v_76.xy, r5.zw);
  r4.z = fma((-(r5.wwww)).z, r5.x, r4.z);
  r4.z = fma((-(r5.wwww)).z, r5.y, r4.z);
  let v_77 = bitcast<u32>(r4.w);
  let v_78 = r4.z;
  r10.z = select(r5.z, v_78, (v_77 != 0u));
  r8.z = 0.0f;
  let v_79 = (r8.xyz + r10.ywz);
  r5 = vec4<f32>(v_79.xyz, r5.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r10 = vec4<f32>(v_80.xy, r10.zw);
  let v_81 = (r8.xyz + r10.xyz);
  r9 = vec4<f32>(v_81.xyz, r9.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r10 = vec4<f32>(v_82.xy, r10.zw);
  let v_83 = (r8.xyz + r10.xyz);
  r11 = vec4<f32>(v_83.xyz, r11.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r10 = vec4<f32>(v_84.xy, r10.zw);
  let v_85 = (r8.xyz + r10.xyz);
  r12 = vec4<f32>(v_85.xyz, r12.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r10 = vec4<f32>(v_86.xy, r10.zw);
  let v_87 = (r8.xyz + r10.xyz);
  r13 = vec4<f32>(v_87.xyz, r13.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r10 = vec4<f32>(v_88.xy, r10.zw);
  let v_89 = (r8.xyz + r10.xyz);
  r14 = vec4<f32>(v_89.xyz, r14.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r10 = vec4<f32>(v_90.xy, r10.zw);
  let v_91 = (r8.xyz + r10.xyz);
  r15 = vec4<f32>(v_91.xyz, r15.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r10 = vec4<f32>(v_92.xy, r10.zw);
  let v_93 = (r8.xyz + r10.xyz);
  r16 = vec4<f32>(v_93.xyz, r16.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r10 = vec4<f32>(v_94.xy, r10.zw);
  let v_95 = (r8.xyz + r10.xyz);
  r17 = vec4<f32>(v_95.xyz, r17.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r10 = vec4<f32>(v_96.xy, r10.zw);
  let v_97 = (r8.xyz + r10.xyz);
  r18 = vec4<f32>(v_97.xyz, r18.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r10 = vec4<f32>(v_98.xy, r10.zw);
  let v_99 = (r8.xyz + r10.xyz);
  r19 = vec4<f32>(v_99.xyz, r19.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r10 = vec4<f32>(v_100.xy, r10.zw);
  let v_101 = (r8.xyz + r10.xyz);
  r20 = vec4<f32>(v_101.xyz, r20.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r10 = vec4<f32>(v_102.xy, r10.zw);
  let v_103 = (r8.xyz + r10.xyz);
  r21 = vec4<f32>(v_103.xyz, r21.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r10 = vec4<f32>(v_104.xy, r10.zw);
  let v_105 = (r8.xyz + r10.xyz);
  r22 = vec4<f32>(v_105.xyz, r22.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r10 = vec4<f32>(v_106.xy, r10.zw);
  let v_107 = (r8.xyz + r10.xyz);
  r23 = vec4<f32>(v_107.xyz, r23.w);
  let v_108 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r10 = vec4<f32>(v_108.xy, r10.zw);
  let v_109 = (r8.xyz + r10.xyz);
  r8 = vec4<f32>(v_109.xyz, r8.w);
  let v_110 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_110.xy, r5.z);
  let v_111 = r9.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_111.xy, r9.z);
  let v_112 = r11.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_112.xy, r11.z);
  let v_113 = r12.xyxx;
  r5.w = textureSampleCompareLevel(t15, s15, v_113.xy, r12.z);
  let v_114 = r13.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_114.xy, r13.z);
  let v_115 = r14.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_115.xy, r14.z);
  let v_116 = r15.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_116.xy, r15.z);
  let v_117 = r16.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_117.xy, r16.z);
  let v_118 = r17.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_118.xy, r17.z);
  let v_119 = r18.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_119.xy, r18.z);
  let v_120 = r19.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_120.xy, r19.z);
  let v_121 = r20.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_121.xy, r20.z);
  let v_122 = r21.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_122.xy, r21.z);
  let v_123 = r22.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_123.xy, r22.z);
  let v_124 = r23.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_124.xy, r23.z);
  let v_125 = r8.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_125.xy, r8.z);
  r5 = (r5 + r9);
  r5 = (r10 + r5);
  r5 = (r11 + r5);
  r4.z = dot(r5, vec4<f32>(1.0f));
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_126 = abs(r4.yyyy);
  r4.x = max(v_126.x, abs(r4.xxxx).x);
  r4.x = clamp(fma(r4.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = (r4.x * r2.w);
  r2.w = fma(r4.z, 0.0625f, r2.w);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r4.x = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).x, 0.0f, 1.0f);
  r4.x = sqrt(r4.x);
  r4.x = (r4.x * cb6_6.tint_symbol_6[3u].z);
  let v_127 = -(r2.wwww);
  r2.w = fma(r4.x, v_127.w, r2.w);
  let v_128 = dot(r2.xyz, v_38.xyz);
  r4.x = clamp(vec4<f32>(v_128, v_128, v_128, v_128).x, 0.0f, 1.0f);
  let v_129 = dot(r6.xyz, r2.xyz);
  r5.x = clamp(vec4<f32>(v_129, v_129, v_129, v_129).x, 0.0f, 1.0f);
  let v_130 = dot(r7.xyz, v_38.xyz);
  r5.y = clamp(vec4<f32>(v_130, v_130, v_130, v_130).y, 0.0f, 1.0f);
  let v_131 = ((-(r5.xxyx)).yz + vec2<f32>(1.0f));
  let v_132 = r4;
  r4 = vec4<f32>(v_132.x, v_131.xy, v_132.w);
  let v_133 = (r4.yz * r4.yz);
  r5 = vec4<f32>(v_133.xy, r5.zw);
  let v_134 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_134.xy, r5.zw);
  let v_135 = (r4.yz * r5.xy);
  let v_136 = r4;
  r4 = vec4<f32>(v_136.x, v_135.xy, v_136.w);
  r4.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_137 = fma(cb10_10.tint_symbol_5[0u].yy, r4.yz, r4.ww);
  let v_138 = r4;
  r4 = vec4<f32>(v_138.x, v_137.xy, v_138.w);
  let v_139 = (r0.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_139.xy, r5.zw);
  r0.w = (r5.x * 0.125f);
  r4.y = fma((-(r3.xxxx)).y, r4.y, 1.0f);
  r4.w = dot(r2.xyz, r7.xyz);
  r4.w = clamp(((r4.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r4.w = log2(r4.w);
  r4.w = (r4.w * r5.y);
  r4.w = exp2(r4.w);
  r4.z = (r4.z * r4.w);
  r0.w = (r0.w * r4.z);
  r0.w = (r3.x * r0.w);
  r0.w = (r4.x * r0.w);
  r3.x = (r4.y * r4.x);
  let v_140 = fma(r0.xyz, r3.xxx, r0.www);
  r4 = vec4<f32>(v_140.x, r4.y, v_140.yz);
  let v_141 = (r4.xzw * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_141.x, r4.y, v_141.yz);
  r0.w = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_142 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_142.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_143 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_143.xyz, r6.w);
  let v_144 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_144.xyz, r6.w);
  let v_145 = fma(r5.xyz, r1.zzz, r6.xyz);
  r5 = vec4<f32>(v_145.xyz, r5.w);
  let v_146 = (r1.yyy * r5.xyz);
  r1 = vec4<f32>(r1.x, v_146.xyz);
  let v_147 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_147.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_148 = dot(r6.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
  let v_149 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r2 = vec4<f32>(v_149.xyz, r2.w);
  let v_150 = fma(r2.xyz, r1.xxx, r1.yzw);
  r1 = vec4<f32>(v_150.xyz, r1.w);
  let v_151 = (r4.yyy * r1.xyz);
  r1 = vec4<f32>(v_151.xyz, r1.w);
  let v_152 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_152.xyz, r0.w);
  let v_153 = fma(r4.xzw, r2.www, r0.xyz);
  r0 = vec4<f32>(v_153.xyz, r0.w);
  r0.w = dot(r3.yzw, r3.yzw);
  r1.x = sqrt(r0.w);
  let v_154 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_154.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r3.w);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_155 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_155 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_156 = (r0.www * r3.yzw);
  r2 = vec4<f32>(v_156.xyz, r2.w);
  let v_157 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_158 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_159 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_159.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_160 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_160.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_161 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_161.xyz, r2.w);
  let v_162 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_162.xyz, r2.w);
  let v_163 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_163.xyz, r3.w);
  let v_164 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_164.xyz, r2.w);
  let v_165 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_166 = (r2.xyz + v_165.xyz);
  r2 = vec4<f32>(v_166.xyz, r2.w);
  let v_167 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_167.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_168 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_168.xy, r1.z, v_168.z);
  let v_169 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_169.xy, r1.z, v_169.z);
  let v_170 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_170.xyz, r0.w);
  let v_171 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_171.xyz, r0.w);
  let v_172 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_172.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
