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
  r1.x = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  v_1((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
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
  let v_8 = (r3.yx * r3.yx);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r2.w = fma((-(r3.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  o0.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_9 = (r1.yx * cb10_10.tint_symbol_5[0u].wz);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r0.w = (r0.w * 255.0099945068359375f);
  r0.w = floor(r0.w);
  r2.w = (r0.w + -32.0f);
  r4.x = (r2.w * 0.0078125f);
  r4.y = cb13_13.tint_symbol_4[3u].x;
  r4 = textureSample(t13, s13, r4.xyxx.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 32.0f)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r0.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.w)));
  let v_10 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = bitcast<vec3<u32>>(r0.www);
  let v_12 = r4.xyz;
  let v_13 = select(r0.xyz, v_12, (v_11 != vec3<u32>()));
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r0.w = fma(r2.z, 0.5f, 0.5f);
  r5.x = fma(r0.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r5.y = (r0.w + 0.30000001192092895508f);
  let v_15 = (r4.xy * r5.xy);
  r4 = vec4<f32>(v_15.xy, r4.zw);
  r0.w = (v6.z * cb13_13.tint_symbol_4[16u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
    let v_16 = fract(v6.yx);
    let v_17 = r5;
    r5 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
    r5.w = fma(r5.x, v0.w, v1.w);
    r2.w = fract(cb13_13.tint_symbol_4[16u].z);
    r5.y = ((-(r5.zzzz)).y + 1.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_4[16u].z >= 1.0f)));
    let v_18 = bitcast<vec2<u32>>(r3.zz);
    let v_19 = r5.wy;
    let v_20 = select(r5.zw, v_19, (v_18 != vec2<u32>()));
    r3 = vec4<f32>(r3.xy, v_20.xy);
    r6 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      let v_21 = abs(v6.zzzz);
      let v_22 = abs(v6.wwww);
      r5.x = fma(r5.x, v_21.x, v_22.x);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r2.w)));
      let v_23 = bitcast<vec2<u32>>(r2.ww);
      let v_24 = r5.xy;
      let v_25 = select(r5.zx, v_24, (v_23 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_25.xy);
      r5 = textureSampleLevel(t14, s14, r3.zwzz.xy, 0.0f);
    } else {
      r5 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 1.0f), r5.w);
    }
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_26 = bitcast<u32>(r0.w);
    let v_27 = r2.w;
    r2.w = select(r3.z, v_27, (v_26 != 0u));
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_4[16u].x)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.z)));
    let v_28 = bitcast<vec4<u32>>(r2.wwww);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_28 != vec4<u32>()));
    r2.w = fma(r6.w, 2.0f, -1.0f);
    r2.w = ((-(abs(r2.wwww))).w + 1.0f);
    r3.z = ((-(r5.zzzz)).z + 1.0f);
    r3.z = (r3.z * r3.z);
    r3.z = (r5.x * r3.z);
    r1.x = fma((-(r1.xxxx)).x, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_4[6u].w);
    r3.y = fma(r3.z, r1.x, r3.y);
    r1.x = fma((-(r1.yyyy)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_4[7u].w);
    r3.x = fma(r3.z, r1.x, r3.x);
    let v_29 = fma(r0.xyz, r2.www, r6.xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = bitcast<u32>(r0.w);
    r0.w = select(r5.y, 0.0f, (v_30 != 0u));
    let v_31 = -(r6.xyzx);
    let v_32 = fma(r6.xyz, cb13_13.tint_symbol_4[7u].xyz, v_31.xyz);
    r7 = vec4<f32>(v_32.xyz, r7.w);
    let v_33 = fma(r0.www, r7.xyz, r6.xyz);
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
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_39 = (r0.www * r5.xyz);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_41 = fma(r5.xyz, r0.www, v_40.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  r1.x = dot(r7.xyz, r7.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_42 = (r1.xxx * r7.xyz);
  r7 = vec4<f32>(v_42.xyz, r7.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_43 = (r4.xy * r4.xy);
  r1 = vec4<f32>(v_43.xy, r1.zw);
  r2.w = (r3.y + -500.0f);
  r2.w = max(r2.w, 0.0f);
  r3.y = ((-(r2.wwww)).y + r3.y);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.y, 3.0f, r2.w);
  r3.y = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_44 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_45.xyz, r8.w);
  let v_46 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_47.xyz, r8.w);
  let v_48 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = &(x0[0u]);
  let v_50 = r9;
  *(v_49) = vec4<f32>(v_50.xyz, (*(v_49)).w);
  let v_51 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_51.xyz, r10.w);
  let v_52 = &(x0[1u]);
  let v_53 = r10;
  *(v_52) = vec4<f32>(v_53.xyz, (*(v_52)).w);
  let v_54 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_54.xyz, r11.w);
  let v_55 = &(x0[2u]);
  let v_56 = r11;
  *(v_55) = vec4<f32>(v_56.xyz, (*(v_55)).w);
  let v_57 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_57.xyz, r8.w);
  let v_58 = &(x0[3u]);
  let v_59 = r8;
  *(v_58) = vec4<f32>(v_59.xyz, (*(v_58)).w);
  let v_60 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_61 = r12;
  r12 = vec4<f32>(v_61.x, v_60.x, v_61.z, v_60.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_62 = abs(r11.yyyy);
  r3.w = max(v_62.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_63 = (bitcast<u32>(r3.w) != 0u);
  let v_64 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_64, v_63);
  let v_65 = abs(r10.yyyy);
  r4.w = max(v_65.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_66 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_66 != 0u));
  let v_67 = abs(r9.yyyy);
  r4.w = max(v_67.w, abs(r9.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_68 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_68 != 0u));
  let v_69 = x0[bitcast<i32>(r3.z)];
  r9 = vec4<f32>(v_69.xyz, r9.w);
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
  let v_70 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_70.xy, r11.z, v_70.z);
  r11.z = dpdx(r3.z);
  let v_71 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_71.xyz, r13.w);
  r13.w = dpdy(r3.z);
  let v_72 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_72.xy);
  let v_73 = -(r8.zwzz);
  let v_74 = fma(r11.xz, r13.xz, v_73.xy);
  r14 = vec4<f32>(v_74.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_75 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_75.z);
  let v_76 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_76.xy);
  let v_77 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_77.xy);
  let v_78 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_78.xy);
  r3.z = fma((-(r4.wwww)).z, r8.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r8.w, r3.z);
  let v_79 = bitcast<u32>(r3.w);
  let v_80 = r3.z;
  r12.z = select(r9.z, v_80, (v_79 != 0u));
  r10.z = 0.0f;
  let v_81 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_81.xyz, r9.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_83.xyz, r11.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_85.xyz, r13.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_87.xyz, r14.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_89.xyz, r15.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_91.xyz, r16.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_93.xyz, r17.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_94.xy, r12.zw);
  let v_95 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_95.xyz, r18.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_96.xy, r12.zw);
  let v_97 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_97.xyz, r19.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_98.xy, r12.zw);
  let v_99 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_99.xyz, r20.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_100.xy, r12.zw);
  let v_101 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_101.xyz, r21.w);
  let v_102 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_102.xy, r12.zw);
  let v_103 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_103.xyz, r22.w);
  let v_104 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_104.xy, r12.zw);
  let v_105 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_105.xyz, r23.w);
  let v_106 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_106.xy, r12.zw);
  let v_107 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_107.xyz, r24.w);
  let v_108 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_108.xy, r12.zw);
  let v_109 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_109.xyz, r25.w);
  let v_110 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_110.xy, r12.zw);
  let v_111 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_111.xyz, r10.w);
  let v_112 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_112.xy, r9.z);
  let v_113 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_113.xy, r11.z);
  let v_114 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_114.xy, r13.z);
  let v_115 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_115.xy, r14.z);
  let v_116 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_116.xy, r15.z);
  let v_117 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_117.xy, r16.z);
  let v_118 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_118.xy, r17.z);
  let v_119 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_119.xy, r18.z);
  let v_120 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_120.xy, r19.z);
  let v_121 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_121.xy, r20.z);
  let v_122 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_122.xy, r21.z);
  let v_123 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_123.xy, r22.z);
  let v_124 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_124.xy, r23.z);
  let v_125 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_125.xy, r24.z);
  let v_126 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_126.xy, r25.z);
  let v_127 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_127.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.z = dot(r9, vec4<f32>(1.0f));
  r3.y = clamp(fma(r3.yyyy, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).y, 0.0f, 1.0f);
  let v_128 = abs(r8.yyyy);
  r3.w = max(v_128.w, abs(r8.xxxx).w);
  r3.w = clamp(fma(r3.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  r3.y = (r3.w * r3.y);
  r3.y = fma(r3.z, 0.0625f, r3.y);
  r3.y = (r3.y * r3.y);
  r3.y = min(r3.y, 1.0f);
  r3.z = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).z, 0.0f, 1.0f);
  r3.z = sqrt(r3.z);
  r3.z = (r3.z * cb6_6.tint_symbol_6[3u].z);
  let v_129 = -(r3.yyyy);
  r3.y = fma(r3.z, v_129.y, r3.y);
  let v_130 = dot(r2.xyz, v_40.xyz);
  r3.z = clamp(vec4<f32>(v_130, v_130, v_130, v_130).z, 0.0f, 1.0f);
  let v_131 = dot(r6.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_131, v_131, v_131, v_131).x, 0.0f, 1.0f);
  let v_132 = dot(r7.xyz, v_40.xyz);
  r8.y = clamp(vec4<f32>(v_132, v_132, v_132, v_132).y, 0.0f, 1.0f);
  let v_133 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_133.xy, r8.zw);
  let v_134 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_134.xy);
  let v_135 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_135.xy);
  let v_136 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_136.xy, r8.zw);
  r3.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_137 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r3.ww);
  r8 = vec4<f32>(v_137.xy, r8.zw);
  let v_138 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_138.xy);
  r2.w = (r8.z * 0.125f);
  r4.w = fma((-(r3.xxxx)).w, r8.x, 1.0f);
  r5.w = dot(r2.xyz, r7.xyz);
  r5.w = clamp(((r5.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r5.w = log2(r5.w);
  r5.w = (r5.w * r8.w);
  r5.w = exp2(r5.w);
  r5.w = (r8.y * r5.w);
  r5.w = (r2.w * r5.w);
  r5.w = (r3.x * r5.w);
  r5.w = (r3.z * r5.w);
  r3.z = (r3.z * r4.w);
  let v_139 = fma(r0.xyz, r3.zzz, r5.www);
  r7 = vec4<f32>(v_139.xyz, r7.w);
  let v_140 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_140.xyz, r7.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_141 = (v_37.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_141.xyz, r8.w);
    let v_142 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_142.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_143 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_143.xyz, r9.w);
    let v_144 = (r9.xyz + v_37.xyz);
    r9 = vec4<f32>(v_144.xyz, r9.w);
    let v_145 = bitcast<vec3<u32>>(r5.www);
    let v_146 = r8.xyz;
    let v_147 = select(r9.xyz, v_146, (v_145 != vec3<u32>()));
    r8 = vec4<f32>(v_147.xyz, r8.w);
    r5.w = dot(r8.xyz, r8.xyz);
    let v_148 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_148.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_149 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_149.xyz, r8.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[11u].w);
    r5.w = (r5.w / r6.w);
    let v_150 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_150.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_151 = dot(r8.xyz, r2.xyz);
    r7.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r5.w * r6.w);
    let v_152 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_152.xyz, r9.w);
    let v_153 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_153.xyz, r9.w);
    let v_154 = fma(r5.xyz, r0.www, r8.xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_155 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_155.xyz, r8.w);
    let v_156 = dot(r8.xyz, r6.xyz);
    r7.w = clamp(vec4<f32>(v_156, v_156, v_156, v_156).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r9.w = (r7.w * r7.w);
    r9.w = (r9.w * r9.w);
    r7.w = (r7.w * r9.w);
    r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
    let v_157 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_157, v_157, v_157, v_157).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r5.w = (r5.w * r6.w);
    r5.w = (r2.w * r5.w);
    let v_158 = (r5.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_158.xyz, r8.w);
  }
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    let v_159 = bitcast<u32>(r6.w);
    let v_160 = r5.w;
    r3.z = select(r3.z, v_160, (v_159 != 0u));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_161 = (v_37.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_161.xyz, r10.w);
      let v_162 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_163 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = (r11.xyz + v_37.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      let v_165 = bitcast<vec3<u32>>(r5.www);
      let v_166 = r10.xyz;
      let v_167 = select(r11.xyz, v_166, (v_165 != vec3<u32>()));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_168 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_169 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[12u].w);
      r5.w = (r5.w / r6.w);
      let v_170 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_170.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_171 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_172 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_172.xyz, r11.w);
      let v_173 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_173.xyz, r9.w);
      let v_174 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_175 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_175.xyz, r10.w);
      let v_176 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_177 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_178 = fma(r5.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_178.xyz, r8.w);
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
      let v_179 = (v_37.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_179.xyz, r10.w);
      let v_180 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_181 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = (r11.xyz + v_37.xyz);
      r11 = vec4<f32>(v_182.xyz, r11.w);
      let v_183 = bitcast<vec3<u32>>(r5.www);
      let v_184 = r10.xyz;
      let v_185 = select(r11.xyz, v_184, (v_183 != vec3<u32>()));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_186 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_187 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_187.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[13u].w);
      r5.w = (r5.w / r6.w);
      let v_188 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_188.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_189 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_189, v_189, v_189, v_189).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_190 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_190.xyz, r11.w);
      let v_191 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_191.xyz, r9.w);
      let v_192 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_193 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_193.xyz, r10.w);
      let v_194 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_195 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_196 = fma(r5.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_196.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_197 = (v_37.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_197.xyz, r10.w);
      let v_198 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      r5.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
      let v_199 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = (r11.xyz + v_37.xyz);
      r11 = vec4<f32>(v_200.xyz, r11.w);
      let v_201 = bitcast<vec3<u32>>(r3.zzz);
      let v_202 = r10.xyz;
      let v_203 = select(r11.xyz, v_202, (v_201 != vec3<u32>()));
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r3.z = dot(r10.xyz, r10.xyz);
      let v_204 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      r5.w = inverseSqrt(r5.w);
      let v_205 = (r5.www * r10.xyz);
      r10 = vec4<f32>(v_205.xyz, r10.w);
      r3.z = clamp(fma(-(r3.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r5.w = fma(r5.w, r3.z, cb3_3.tint_symbol_2[14u].w);
      r3.z = (r3.z / r5.w);
      let v_206 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r5.w = dot(r10.xyz, v_206.xyz);
      r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_207 = dot(r10.xyz, r2.xyz);
      r6.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
      r5.w = (r5.w * r6.w);
      r6.w = (r3.z * r5.w);
      let v_208 = (r6.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_208.xyz, r11.w);
      let v_209 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_209.xyz, r9.w);
      let v_210 = fma(r5.xyz, r0.www, r10.xyz);
      r5 = vec4<f32>(v_210.xyz, r5.w);
      r0.w = dot(r5.xyz, r5.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_211 = (r0.www * r5.xyz);
      r5 = vec4<f32>(v_211.xyz, r5.w);
      let v_212 = dot(r5.xyz, r6.xyz);
      r0.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r6.x = (r0.w * r0.w);
      r6.x = (r6.x * r6.x);
      r0.w = (r0.w * r6.x);
      r0.w = fma(cb10_10.tint_symbol_5[0u].y, r0.w, r3.w);
      let v_213 = dot(r5.xyz, r2.xyz);
      r3.w = clamp(vec4<f32>(v_213, v_213, v_213, v_213).w, 0.0f, 1.0f);
      r3.w = log2(r3.w);
      r3.w = (r3.w * r8.w);
      r3.w = exp2(r3.w);
      r0.w = (r0.w * r3.w);
      r0.w = (r5.w * r0.w);
      r0.w = (r3.z * r0.w);
      r0.w = (r2.w * r0.w);
      let v_214 = fma(r0.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_214.xyz, r8.w);
    }
  }
  r0.w = (r4.w * r4.w);
  r2.w = (r3.x * r3.x);
  let v_215 = (r8.xyz * r2.www);
  r3 = vec4<f32>(v_215.x, r3.y, v_215.yz);
  let v_216 = fma(r0.www, r9.xyz, r3.xzw);
  r3 = vec4<f32>(v_216.x, r3.y, v_216.yz);
  let v_217 = fma(r7.xyz, r3.yyy, r3.xzw);
  r3 = vec4<f32>(v_217.xyz, r3.w);
  r0.w = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_218 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_218.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_219 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_219.xyz, r6.w);
  let v_220 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_220.xyz, r6.w);
  let v_221 = fma(r5.xyz, r1.zzz, r6.xyz);
  r5 = vec4<f32>(v_221.xyz, r5.w);
  let v_222 = (r1.yyy * r5.xyz);
  r1 = vec4<f32>(r1.x, v_222.xyz);
  let v_223 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_223.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_224 = dot(r6.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
  let v_225 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r2 = vec4<f32>(v_225.xyz, r2.w);
  let v_226 = fma(r2.xyz, r1.xxx, r1.yzw);
  r1 = vec4<f32>(v_226.xyz, r1.w);
  let v_227 = (r4.www * r1.xyz);
  r1 = vec4<f32>(v_227.xyz, r1.w);
  let v_228 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_228.xyz, r0.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r0.w);
  let v_229 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_229.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r4.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_230 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_230 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_231 = (r0.www * r4.xyz);
  r2 = vec4<f32>(v_231.xyz, r2.w);
  let v_232 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_232, v_232, v_232, v_232).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_233 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_233, v_233, v_233, v_233).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_234 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_234.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_235 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_235.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_236 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_236.xyz, r2.w);
  let v_237 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_237.xyz, r2.w);
  let v_238 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_238.xyz, r3.w);
  let v_239 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_239.xyz, r2.w);
  let v_240 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_241 = (r2.xyz + v_240.xyz);
  r2 = vec4<f32>(v_241.xyz, r2.w);
  let v_242 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_242.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_243 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_243.xy, r1.z, v_243.z);
  let v_244 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_244.xy, r1.z, v_244.z);
  let v_245 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_245.xyz, r0.w);
  let v_246 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_246.xyz, r0.w);
  let v_247 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_247.xyz, o0.w);
}

fn v_1(v_248 : bool) {
  if (v_248) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
