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
  r4.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_8 = (r1.yx * cb10_10.tint_symbol_5[0u].wz);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r0.w = (r0.w * 255.0099945068359375f);
  r0.w = floor(r0.w);
  r2.w = (r0.w + -32.0f);
  r5.x = (r2.w * 0.0078125f);
  r5.y = cb13_13.tint_symbol_4[3u].x;
  r5 = textureSample(t13, s13, r5.xyxx.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 32.0f)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r0.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.w)));
  let v_9 = (r0.xyz * r5.xyz);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = bitcast<vec3<u32>>(r0.www);
  let v_11 = r5.xyz;
  let v_12 = select(r0.xyz, v_11, (v_10 != vec3<u32>()));
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r5 = vec4<f32>(v_13.xy, r5.zw);
  r0.w = fma(r2.z, 0.5f, 0.5f);
  r6.x = fma(r0.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r6.y = (r0.w + 0.30000001192092895508f);
  let v_14 = (r5.xy * r6.xy);
  r5 = vec4<f32>(v_14.xy, r5.zw);
  r0.w = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
    let v_15 = fract(v6.yx);
    let v_16 = r6;
    r6 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
    r6.w = fma(r6.x, v0.w, v1.w);
    r2.w = fract(cb13_13.tint_symbol_4[16u].z);
    r6.y = ((-(r6.zzzz)).y + 1.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_17 = bitcast<vec2<u32>>(r3.zz);
    let v_18 = r6.wy;
    let v_19 = select(r6.zw, v_18, (v_17 != vec2<u32>()));
    r3 = vec4<f32>(r3.xy, v_19.xy);
    r7 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      let v_20 = abs(v6.zzzz);
      let v_21 = abs(v6.wwww);
      r6.x = fma(r6.x, v_20.x, v_21.x);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
      let v_22 = bitcast<vec2<u32>>(r2.ww);
      let v_23 = r6.xy;
      let v_24 = select(r6.zx, v_23, (v_22 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_24.xy);
      r6 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    } else {
      r6 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r6.w);
    }
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r7.w >= 0.50196081399917602539f)));
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r7.w)));
    let v_25 = bitcast<u32>(r0.w);
    let v_26 = r2.w;
    r2.w = select(r3.z, v_26, (v_25 != 0u));
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.z)));
    let v_27 = bitcast<vec4<u32>>(r2.wwww);
    r7 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r7, (v_27 != vec4<u32>()));
    r2.w = fma(r7.w, 2.0f, -1.0f);
    r2.w = ((-(abs(r2.wwww))).w + 1.0f);
    r3.z = ((-(r6.zzzz)).z + 1.0f);
    r3.z = (r3.z * r3.z);
    r3.z = (r6.x * r3.z);
    r1.x = fma((-(r1.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r3.y = fma(r3.z, r1.x, r3.y);
    r1.x = fma((-(r1.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r3.x = fma(r3.z, r1.x, r3.x);
    let v_28 = fma(r0.xyz, r2.www, r7.xyz);
    r7 = vec4<f32>(v_28.xyz, r7.w);
    let v_29 = bitcast<u32>(r0.w);
    r0.w = select(r6.y, 0.0f, (v_29 != 0u));
    let v_30 = -(r7.xyzx);
    let v_31 = fma(r7.xyz, cb13_13.tint_symbol_4[7u].xyz, v_30.xyz);
    r8 = vec4<f32>(v_31.xyz, r8.w);
    let v_32 = fma(r0.www, r8.xyz, r7.xyz);
    r7 = vec4<f32>(v_32.xyz, r7.w);
    let v_33 = (r6.xxx * cb13_13.tint_symbol_4[6u].xyz);
    r6 = vec4<f32>(v_33.xy, r6.z, v_33.z);
    let v_34 = fma(r7.xyz, r6.zzz, r6.xyw);
    r0 = vec4<f32>(v_34.xyz, r0.w);
  }
  let v_35 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = -(v2.xyzx);
  let v_37 = (v_36.xyz + cb1_1.tint_symbol[15u].xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_38 = (r0.www * r6.xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_40 = fma(r6.xyz, r0.www, v_39.xyz);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  r1.x = dot(r8.xyz, r8.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_41 = (r1.xxx * r8.xyz);
  r8 = vec4<f32>(v_41.xyz, r8.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_42 = (r5.xy * r5.xy);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  r2.w = (r3.y + -500.0f);
  r2.w = max(r2.w, 0.0f);
  r3.y = ((-(r2.wwww)).y + r3.y);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.y, 3.0f, r2.w);
  r3.y = dot(r6.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_43 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r5 = vec4<f32>(v_43.xyz, r5.w);
  let v_44 = (r5.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r9 = vec4<f32>(v_44.xyz, r9.w);
  let v_45 = fma(r5.xxx, cb6_6.tint_symbol_6[0u].xyz, r9.xyz);
  r9 = vec4<f32>(v_45.xyz, r9.w);
  let v_46 = fma(r5.zzz, cb6_6.tint_symbol_6[2u].xyz, r9.xyz);
  r9 = vec4<f32>(v_46.xyz, r9.w);
  let v_47 = fma(r9.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r10 = vec4<f32>(v_47.xyz, r10.w);
  let v_48 = &(x0[0u]);
  let v_49 = r10;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r9.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r11 = vec4<f32>(v_50.xyz, r11.w);
  let v_51 = &(x0[1u]);
  let v_52 = r11;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r9.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r12 = vec4<f32>(v_53.xyz, r12.w);
  let v_54 = &(x0[2u]);
  let v_55 = r12;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = fma(r9.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r9 = vec4<f32>(v_56.xyz, r9.w);
  let v_57 = &(x0[3u]);
  let v_58 = r9;
  *(v_57) = vec4<f32>(v_58.xyz, (*(v_57)).w);
  let v_59 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_60 = r13;
  r13 = vec4<f32>(v_60.x, v_59.x, v_60.z, v_59.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_61 = abs(r12.yyyy);
  r3.w = max(v_61.w, abs(r12.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_62 = (bitcast<u32>(r3.w) != 0u);
  let v_63 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_63, v_62);
  let v_64 = abs(r11.yyyy);
  r5.w = max(v_64.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.z)));
  let v_65 = bitcast<u32>(r5.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_65 != 0u));
  let v_66 = abs(r10.yyyy);
  r5.w = max(v_66.w, abs(r10.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r5.w < r3.z)));
  let v_67 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_67 != 0u));
  let v_68 = x0[bitcast<i32>(r3.z)];
  r10 = vec4<f32>(v_68.xyz, r10.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r11 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r11) & vec4<u32>(1065353216u)));
  r3.z = dot(r11, cb6_6.tint_symbol_6[12u]);
  r5.w = dot(r11, cb6_6.tint_symbol_6[13u]);
  r11.x = (r10.x + 0.5f);
  r11.y = fma(r10.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r10.z);
  let v_69 = dpdx(r11.xyy);
  r12 = vec4<f32>(v_69.xy, r12.z, v_69.z);
  r12.z = dpdx(r3.z);
  let v_70 = dpdy(r11.yxy);
  r14 = vec4<f32>(v_70.xyz, r14.w);
  r14.w = dpdy(r3.z);
  let v_71 = (r12.yw * r14.yw);
  r9 = vec4<f32>(r9.xy, v_71.xy);
  let v_72 = -(r9.zwzz);
  let v_73 = fma(r12.xz, r14.xz, v_72.xy);
  r15 = vec4<f32>(v_73.xy, r15.zw);
  r6.w = (1.0f / r15.x);
  r7.w = (r12.z * r14.y);
  let v_74 = -(r7.wwww);
  r15.z = fma(r12.x, r14.w, v_74.z);
  let v_75 = (r6.ww * r15.yz);
  r9 = vec4<f32>(r9.xy, v_75.xy);
  let v_76 = max(r9.zw, vec2<f32>());
  r9 = vec4<f32>(r9.xy, v_76.xy);
  let v_77 = min(r9.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(r9.xy, v_77.xy);
  r3.z = fma((-(r5.wwww)).z, r9.z, r3.z);
  r3.z = fma((-(r5.wwww)).z, r9.w, r3.z);
  let v_78 = bitcast<u32>(r3.w);
  let v_79 = r3.z;
  r13.z = select(r10.z, v_79, (v_78 != 0u));
  r11.z = 0.0f;
  let v_80 = (r11.xyz + r13.ywz);
  r10 = vec4<f32>(v_80.xyz, r10.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r13 = vec4<f32>(v_81.xy, r13.zw);
  let v_82 = (r11.xyz + r13.xyz);
  r12 = vec4<f32>(v_82.xyz, r12.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r13 = vec4<f32>(v_83.xy, r13.zw);
  let v_84 = (r11.xyz + r13.xyz);
  r14 = vec4<f32>(v_84.xyz, r14.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r13 = vec4<f32>(v_85.xy, r13.zw);
  let v_86 = (r11.xyz + r13.xyz);
  r15 = vec4<f32>(v_86.xyz, r15.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r13 = vec4<f32>(v_87.xy, r13.zw);
  let v_88 = (r11.xyz + r13.xyz);
  r16 = vec4<f32>(v_88.xyz, r16.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r13 = vec4<f32>(v_89.xy, r13.zw);
  let v_90 = (r11.xyz + r13.xyz);
  r17 = vec4<f32>(v_90.xyz, r17.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r13 = vec4<f32>(v_91.xy, r13.zw);
  let v_92 = (r11.xyz + r13.xyz);
  r18 = vec4<f32>(v_92.xyz, r18.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r13 = vec4<f32>(v_93.xy, r13.zw);
  let v_94 = (r11.xyz + r13.xyz);
  r19 = vec4<f32>(v_94.xyz, r19.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r13 = vec4<f32>(v_95.xy, r13.zw);
  let v_96 = (r11.xyz + r13.xyz);
  r20 = vec4<f32>(v_96.xyz, r20.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r13 = vec4<f32>(v_97.xy, r13.zw);
  let v_98 = (r11.xyz + r13.xyz);
  r21 = vec4<f32>(v_98.xyz, r21.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r13 = vec4<f32>(v_99.xy, r13.zw);
  let v_100 = (r11.xyz + r13.xyz);
  r22 = vec4<f32>(v_100.xyz, r22.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r13 = vec4<f32>(v_101.xy, r13.zw);
  let v_102 = (r11.xyz + r13.xyz);
  r23 = vec4<f32>(v_102.xyz, r23.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r13 = vec4<f32>(v_103.xy, r13.zw);
  let v_104 = (r11.xyz + r13.xyz);
  r24 = vec4<f32>(v_104.xyz, r24.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r13 = vec4<f32>(v_105.xy, r13.zw);
  let v_106 = (r11.xyz + r13.xyz);
  r25 = vec4<f32>(v_106.xyz, r25.w);
  let v_107 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r13 = vec4<f32>(v_107.xy, r13.zw);
  let v_108 = (r11.xyz + r13.xyz);
  r26 = vec4<f32>(v_108.xyz, r26.w);
  let v_109 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r13 = vec4<f32>(v_109.xy, r13.zw);
  let v_110 = (r11.xyz + r13.xyz);
  r11 = vec4<f32>(v_110.xyz, r11.w);
  let v_111 = r10.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_111.xy, r10.z);
  let v_112 = r12.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_112.xy, r12.z);
  let v_113 = r14.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_113.xy, r14.z);
  let v_114 = r15.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_114.xy, r15.z);
  let v_115 = r16.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_115.xy, r16.z);
  let v_116 = r17.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_116.xy, r17.z);
  let v_117 = r18.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_117.xy, r18.z);
  let v_118 = r19.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_118.xy, r19.z);
  let v_119 = r20.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_119.xy, r20.z);
  let v_120 = r21.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_120.xy, r21.z);
  let v_121 = r22.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_121.xy, r22.z);
  let v_122 = r23.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_122.xy, r23.z);
  let v_123 = r24.xyxx;
  r14.x = textureSampleCompareLevel(t15, s15, v_123.xy, r24.z);
  let v_124 = r25.xyxx;
  r14.y = textureSampleCompareLevel(t15, s15, v_124.xy, r25.z);
  let v_125 = r26.xyxx;
  r14.z = textureSampleCompareLevel(t15, s15, v_125.xy, r26.z);
  let v_126 = r11.xyxx;
  r14.w = textureSampleCompareLevel(t15, s15, v_126.xy, r11.z);
  r10 = (r10 + r12);
  r10 = (r13 + r10);
  r10 = (r14 + r10);
  r3.z = dot(r10, vec4<f32>(1.0f));
  r3.y = clamp(fma(r3.yyyy, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).y, 0.0f, 1.0f);
  let v_127 = abs(r9.yyyy);
  r3.w = max(v_127.w, abs(r9.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  r3.y = (r3.w * r3.y);
  r3.y = fma(r3.z, 0.0625f, r3.y);
  r3.y = (r3.y * r3.y);
  r3.y = min(r3.y, 1.0f);
  r3.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_6[3u].z);
  let v_128 = -(r3.yyyy);
  r3.y = fma(r3.z, v_128.y, r3.y);
  let v_129 = dot(r2.xyz, v_39.xyz);
  r3.z = clamp(vec4<f32>(v_129, v_129, v_129, v_129).z, 0.0f, 1.0f);
  let v_130 = dot(r7.xyz, r2.xyz);
  r9.x = clamp(vec4<f32>(v_130, v_130, v_130, v_130).x, 0.0f, 1.0f);
  let v_131 = dot(r8.xyz, v_39.xyz);
  r9.y = clamp(vec4<f32>(v_131, v_131, v_131, v_131).y, 0.0f, 1.0f);
  let v_132 = ((-(r9.xyxx)).xy + vec2<f32>(1.0f));
  r9 = vec4<f32>(v_132.xy, r9.zw);
  let v_133 = (r9.xy * r9.xy);
  r9 = vec4<f32>(r9.xy, v_133.xy);
  let v_134 = (r9.zw * r9.zw);
  r9 = vec4<f32>(r9.xy, v_134.xy);
  let v_135 = (r9.xy * r9.zw);
  r9 = vec4<f32>(v_135.xy, r9.zw);
  r3.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_136 = fma(cb10_10.tint_symbol_5[0u].yy, r9.xy, r3.ww);
  r9 = vec4<f32>(v_136.xy, r9.zw);
  let v_137 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r9 = vec4<f32>(r9.xy, v_137.xy);
  r2.w = (r9.z * 0.125f);
  r5.w = fma((-(r3.xxxx)).w, r9.x, 1.0f);
  r6.w = dot(r2.xyz, r8.xyz);
  r6.w = clamp(((r6.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r6.w = log2(r6.w);
  r6.w = (r6.w * r9.w);
  r6.w = exp2(r6.w);
  r6.w = (r9.y * r6.w);
  r6.w = (r2.w * r6.w);
  r6.w = (r3.x * r6.w);
  r6.w = (r3.z * r6.w);
  r3.z = (r3.z * r5.w);
  let v_138 = fma(r0.xyz, r3.zzz, r6.www);
  r8 = vec4<f32>(v_138.xyz, r8.w);
  let v_139 = (r8.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r8 = vec4<f32>(v_139.xyz, r8.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_140 = (v_36.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_140.xyz, r9.w);
    let v_141 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_141.xyz, r10.w);
    r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_142 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_142.xyz, r10.w);
    let v_143 = (r10.xyz + v_36.xyz);
    r10 = vec4<f32>(v_143.xyz, r10.w);
    let v_144 = bitcast<vec3<u32>>(r6.www);
    let v_145 = r9.xyz;
    let v_146 = select(r10.xyz, v_145, (v_144 != vec3<u32>()));
    r9 = vec4<f32>(v_146.xyz, r9.w);
    r6.w = dot(r9.xyz, r9.xyz);
    let v_147 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_147.xyz, r9.w);
    r7.w = dot(r9.xyz, r9.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_148 = (r7.www * r9.xyz);
    r9 = vec4<f32>(v_148.xyz, r9.w);
    r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[11u].w);
    r6.w = (r6.w / r7.w);
    let v_149 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r9.xyz, v_149.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_150 = dot(r9.xyz, r2.xyz);
    r8.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
    r7.w = (r7.w * r8.w);
    r8.w = (r6.w * r7.w);
    let v_151 = (r8.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_151.xyz, r10.w);
    let v_152 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_152.xyz, r10.w);
    let v_153 = fma(r6.xyz, r0.www, r9.xyz);
    r9 = vec4<f32>(v_153.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_154 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_154.xyz, r9.w);
    let v_155 = dot(r9.xyz, r7.xyz);
    r8.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r10.w = (r8.w * r8.w);
    r10.w = (r10.w * r10.w);
    r8.w = (r8.w * r10.w);
    r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r3.w);
    let v_156 = dot(r9.xyz, r2.xyz);
    r9.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r9.x * r9.w);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r7.w = (r7.w * r8.w);
    r6.w = (r6.w * r7.w);
    r6.w = (r2.w * r6.w);
    let v_157 = (r6.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_157.xyz, r9.w);
  }
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r6.w)));
    let v_158 = bitcast<u32>(r7.w);
    let v_159 = r6.w;
    r3.z = select(r3.z, v_159, (v_158 != 0u));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_160 = (v_36.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_161.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_162 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      let v_163 = (r12.xyz + v_36.xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      let v_164 = bitcast<vec3<u32>>(r6.www);
      let v_165 = r11.xyz;
      let v_166 = select(r12.xyz, v_165, (v_164 != vec3<u32>()));
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_167 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_168 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[12u].w);
      r6.w = (r6.w / r7.w);
      let v_169 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r11.xyz, v_169.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_170 = dot(r11.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.w * r7.w);
      let v_171 = (r8.www * cb3_3.tint_symbol_2[20u].xyz);
      r12 = vec4<f32>(v_171.xyz, r12.w);
      let v_172 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r6.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_174 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = dot(r11.xyz, r7.xyz);
      r8.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r10.w = (r8.w * r8.w);
      r10.w = (r10.w * r10.w);
      r8.w = (r8.w * r10.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r3.w);
      let v_176 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r9.w * r10.w);
      r10.w = exp2(r10.w);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.w * r6.w);
      let v_177 = fma(r6.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
    }
  } else {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_178 = (v_36.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_179.xyz, r12.w);
      r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_180.xyz, r12.w);
      let v_181 = (r12.xyz + v_36.xyz);
      r12 = vec4<f32>(v_181.xyz, r12.w);
      let v_182 = bitcast<vec3<u32>>(r6.www);
      let v_183 = r11.xyz;
      let v_184 = select(r12.xyz, v_183, (v_182 != vec3<u32>()));
      r11 = vec4<f32>(v_184.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_185 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_185.xyz, r11.w);
      r7.w = dot(r11.xyz, r11.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_186 = (r7.www * r11.xyz);
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r6.w, cb3_3.tint_symbol_2[13u].w);
      r6.w = (r6.w / r7.w);
      let v_187 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r11.xyz, v_187.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_188 = dot(r11.xyz, r2.xyz);
      r8.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r7.w = (r7.w * r8.w);
      r8.w = (r6.w * r7.w);
      let v_189 = (r8.www * cb3_3.tint_symbol_2[21u].xyz);
      r12 = vec4<f32>(v_189.xyz, r12.w);
      let v_190 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = fma(r6.xyz, r0.www, r11.xyz);
      r11 = vec4<f32>(v_191.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_192 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_192.xyz, r11.w);
      let v_193 = dot(r11.xyz, r7.xyz);
      r8.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r10.w = (r8.w * r8.w);
      r10.w = (r10.w * r10.w);
      r8.w = (r8.w * r10.w);
      r8.w = fma(cb10_10.tint_symbol_5[0u].y, r8.w, r3.w);
      let v_194 = dot(r11.xyz, r2.xyz);
      r10.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r9.w * r10.w);
      r10.w = exp2(r10.w);
      r8.w = (r8.w * r10.w);
      r7.w = (r7.w * r8.w);
      r6.w = (r6.w * r7.w);
      r6.w = (r2.w * r6.w);
      let v_195 = fma(r6.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_195.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
  } else {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r6.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_196 = (v_36.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      let v_197 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_197.xyz, r12.w);
      r6.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_198 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_198.xyz, r12.w);
      let v_199 = (r12.xyz + v_36.xyz);
      r12 = vec4<f32>(v_199.xyz, r12.w);
      let v_200 = bitcast<vec3<u32>>(r3.zzz);
      let v_201 = r11.xyz;
      let v_202 = select(r12.xyz, v_201, (v_200 != vec3<u32>()));
      r11 = vec4<f32>(v_202.xyz, r11.w);
      r3.z = dot(r11.xyz, r11.xyz);
      let v_203 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_203.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_204 = (r6.www * r11.xyz);
      r11 = vec4<f32>(v_204.xyz, r11.w);
      r3.z = clamp(fma(-(r3.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r3.z, cb3_3.tint_symbol_2[14u].w);
      r3.z = (r3.z / r6.w);
      let v_205 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r11.xyz, v_205.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_206 = dot(r11.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r3.z * r6.w);
      let v_207 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r12 = vec4<f32>(v_207.xyz, r12.w);
      let v_208 = fma(r12.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      let v_209 = fma(r6.xyz, r0.www, r11.xyz);
      r6 = vec4<f32>(v_209.xyz, r6.w);
      r0.w = dot(r6.xyz, r6.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_210 = (r0.www * r6.xyz);
      r6 = vec4<f32>(v_210.xyz, r6.w);
      let v_211 = dot(r6.xyz, r7.xyz);
      r0.w = clamp(vec4<f32>(v_211, v_211, v_211, v_211).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r7.x = (r0.w * r0.w);
      r7.x = (r7.x * r7.x);
      r0.w = (r0.w * r7.x);
      r0.w = fma(cb10_10.tint_symbol_5[0u].y, r0.w, r3.w);
      let v_212 = dot(r6.xyz, r2.xyz);
      r3.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r3.w = log2(r3.w);
      r3.w = (r3.w * r9.w);
      r3.w = exp2(r3.w);
      r0.w = (r0.w * r3.w);
      r0.w = (r6.w * r0.w);
      r0.w = (r3.z * r0.w);
      r0.w = (r2.w * r0.w);
      let v_213 = fma(r0.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_213.xyz, r9.w);
    }
  }
  r0.w = (r5.w * r5.w);
  r2.w = (r3.x * r3.x);
  let v_214 = (r9.xyz * r2.www);
  r3 = vec4<f32>(v_214.x, r3.y, v_214.yz);
  let v_215 = fma(r0.www, r10.xyz, r3.xzw);
  r3 = vec4<f32>(v_215.x, r3.y, v_215.yz);
  let v_216 = fma(r8.xyz, r3.yyy, r3.xzw);
  r3 = vec4<f32>(v_216.xyz, r3.w);
  r0.w = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_217 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_217.xyz, r6.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_218 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_218.xyz, r7.w);
  let v_219 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_219.xyz, r7.w);
  let v_220 = fma(r6.xyz, r1.zzz, r7.xyz);
  r6 = vec4<f32>(v_220.xyz, r6.w);
  let v_221 = (r1.yyy * r6.xyz);
  r1 = vec4<f32>(r1.x, v_221.xyz);
  let v_222 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_222.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_223 = dot(r7.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_223, v_223, v_223, v_223).w, 0.0f, 1.0f);
  let v_224 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r6.xyz);
  r2 = vec4<f32>(v_224.xyz, r2.w);
  let v_225 = fma(r2.xyz, r1.xxx, r1.yzw);
  r1 = vec4<f32>(v_225.xyz, r1.w);
  let v_226 = (r5.www * r1.xyz);
  r1 = vec4<f32>(v_226.xyz, r1.w);
  let v_227 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_227.xyz, r0.w);
  r0.w = dot(r5.xyz, r5.xyz);
  r1.x = sqrt(r0.w);
  let v_228 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_228.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r5.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_229 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_229 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_230 = (r0.www * r5.xyz);
  r2 = vec4<f32>(v_230.xyz, r2.w);
  let v_231 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_231, v_231, v_231, v_231).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_232 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_233 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_233.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_234 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_234.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_235 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_235.xyz, r2.w);
  let v_236 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_236.xyz, r2.w);
  let v_237 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_237.xyz, r3.w);
  let v_238 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_238.xyz, r2.w);
  let v_239 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_240 = (r2.xyz + v_239.xyz);
  r2 = vec4<f32>(v_240.xyz, r2.w);
  let v_241 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_241.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_242 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_242.xy, r1.z, v_242.z);
  let v_243 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_243.xy, r1.z, v_243.z);
  let v_244 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_244.xyz, r0.w);
  let v_245 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_245.xyz, r0.w);
  let v_246 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r4 = vec4<f32>(v_246.xyz, r4.w);
  r0 = max(r4, vec4<f32>());
  let v_247 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_247.xyz, r0.w);
  let v_248 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_248.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
