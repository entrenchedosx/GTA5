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
  let v_36 = -(v2.xyzx);
  let v_37 = (v_36.xyz + cb1_1.tint_symbol[15u].xyz);
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_38 = (r0.www * r5.xyz);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  let v_39 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_40 = fma(r5.xyz, r0.www, v_39.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  r1.x = dot(r7.xyz, r7.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_41 = (r1.xxx * r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
  let v_42 = (r4.xy * r4.xy);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  r2.w = (r3.y + -500.0f);
  r2.w = max(r2.w, 0.0f);
  r3.y = ((-(r2.wwww)).y + r3.y);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r3.y, 3.0f, r2.w);
  r3.y = dot(r5.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_43 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = (r4.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = fma(r4.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_45.xyz, r8.w);
  let v_46 = fma(r4.zzz, cb6_6.tint_symbol_6[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = fma(r8.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  let v_48 = &(x0[0u]);
  let v_49 = r9;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = fma(r8.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r10 = vec4<f32>(v_50.xyz, r10.w);
  let v_51 = &(x0[1u]);
  let v_52 = r10;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r8.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r11 = vec4<f32>(v_53.xyz, r11.w);
  let v_54 = &(x0[2u]);
  let v_55 = r11;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = fma(r8.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r8 = vec4<f32>(v_56.xyz, r8.w);
  let v_57 = &(x0[3u]);
  let v_58 = r8;
  *(v_57) = vec4<f32>(v_58.xyz, (*(v_57)).w);
  let v_59 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_60 = r12;
  r12 = vec4<f32>(v_60.x, v_59.x, v_60.z, v_59.y);
  r3.z = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_61 = abs(r11.yyyy);
  r3.w = max(v_61.w, abs(r11.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_62 = (bitcast<u32>(r3.w) != 0u);
  let v_63 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_63, v_62);
  let v_64 = abs(r10.yyyy);
  r4.w = max(v_64.w, abs(r10.xxxx).w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_65 = bitcast<u32>(r4.w);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_65 != 0u));
  let v_66 = abs(r9.yyyy);
  r4.w = max(v_66.w, abs(r9.xxxx).w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.w < r3.z)));
  let v_67 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_67 != 0u));
  let v_68 = x0[bitcast<i32>(r3.z)];
  r9 = vec4<f32>(v_68.xyz, r9.w);
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
  let v_69 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_69.xy, r11.z, v_69.z);
  r11.z = dpdx(r3.z);
  let v_70 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_70.xyz, r13.w);
  r13.w = dpdy(r3.z);
  let v_71 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_71.xy);
  let v_72 = -(r8.zwzz);
  let v_73 = fma(r11.xz, r13.xz, v_72.xy);
  r14 = vec4<f32>(v_73.xy, r14.zw);
  r5.w = (1.0f / r14.x);
  r6.w = (r11.z * r13.y);
  let v_74 = -(r6.wwww);
  r14.z = fma(r11.x, r13.w, v_74.z);
  let v_75 = (r5.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_75.xy);
  let v_76 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_76.xy);
  let v_77 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_77.xy);
  r3.z = fma((-(r4.wwww)).z, r8.z, r3.z);
  r3.z = fma((-(r4.wwww)).z, r8.w, r3.z);
  let v_78 = bitcast<u32>(r3.w);
  let v_79 = r3.z;
  r12.z = select(r9.z, v_79, (v_78 != 0u));
  r10.z = 0.0f;
  let v_80 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_80.xyz, r9.w);
  let v_81 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_81.xy, r12.zw);
  let v_82 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_82.xyz, r11.w);
  let v_83 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_83.xy, r12.zw);
  let v_84 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_84.xyz, r13.w);
  let v_85 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_85.xy, r12.zw);
  let v_86 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_86.xyz, r14.w);
  let v_87 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_87.xy, r12.zw);
  let v_88 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_88.xyz, r15.w);
  let v_89 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_89.xy, r12.zw);
  let v_90 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_90.xyz, r16.w);
  let v_91 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_91.xy, r12.zw);
  let v_92 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_92.xyz, r17.w);
  let v_93 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_93.xy, r12.zw);
  let v_94 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_94.xyz, r18.w);
  let v_95 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_95.xy, r12.zw);
  let v_96 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_96.xyz, r19.w);
  let v_97 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_97.xy, r12.zw);
  let v_98 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_98.xyz, r20.w);
  let v_99 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_99.xy, r12.zw);
  let v_100 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_100.xyz, r21.w);
  let v_101 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_101.xy, r12.zw);
  let v_102 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_102.xyz, r22.w);
  let v_103 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_103.xy, r12.zw);
  let v_104 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_104.xyz, r23.w);
  let v_105 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_105.xy, r12.zw);
  let v_106 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_106.xyz, r24.w);
  let v_107 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_107.xy, r12.zw);
  let v_108 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_108.xyz, r25.w);
  let v_109 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_109.xy, r12.zw);
  let v_110 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_110.xyz, r10.w);
  let v_111 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_111.xy, r9.z);
  let v_112 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_112.xy, r11.z);
  let v_113 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_113.xy, r13.z);
  let v_114 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_114.xy, r14.z);
  let v_115 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_115.xy, r15.z);
  let v_116 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_116.xy, r16.z);
  let v_117 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_117.xy, r17.z);
  let v_118 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_118.xy, r18.z);
  let v_119 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_119.xy, r19.z);
  let v_120 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_120.xy, r20.z);
  let v_121 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_121.xy, r21.z);
  let v_122 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_122.xy, r22.z);
  let v_123 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_123.xy, r23.z);
  let v_124 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_124.xy, r24.z);
  let v_125 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_125.xy, r25.z);
  let v_126 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_126.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r3.z = dot(r9, vec4<f32>(1.0f));
  r3.y = clamp(fma(r3.yyyy, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).y, 0.0f, 1.0f);
  let v_127 = abs(r8.yyyy);
  r3.w = max(v_127.w, abs(r8.xxxx).w);
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
  let v_130 = dot(r6.xyz, r2.xyz);
  r8.x = clamp(vec4<f32>(v_130, v_130, v_130, v_130).x, 0.0f, 1.0f);
  let v_131 = dot(r7.xyz, v_39.xyz);
  r8.y = clamp(vec4<f32>(v_131, v_131, v_131, v_131).y, 0.0f, 1.0f);
  let v_132 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_132.xy, r8.zw);
  let v_133 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_133.xy);
  let v_134 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_134.xy);
  let v_135 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_135.xy, r8.zw);
  r3.w = ((-(cb10_10.tint_symbol_5[0u].yyyy)).w + 1.0f);
  let v_136 = fma(cb10_10.tint_symbol_5[0u].yy, r8.xy, r3.ww);
  r8 = vec4<f32>(v_136.xy, r8.zw);
  let v_137 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_137.xy);
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
  let v_138 = fma(r0.xyz, r3.zzz, r5.www);
  r7 = vec4<f32>(v_138.xyz, r7.w);
  let v_139 = (r7.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r7 = vec4<f32>(v_139.xyz, r7.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(vec3<f32>(), r8.w);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_140 = (v_36.xyz + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_140.xyz, r8.w);
    let v_141 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_141.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_2[19u].w);
    let v_142 = fma(cb3_3.tint_symbol_2[11u].xyz, r6.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_142.xyz, r9.w);
    let v_143 = (r9.xyz + v_36.xyz);
    r9 = vec4<f32>(v_143.xyz, r9.w);
    let v_144 = bitcast<vec3<u32>>(r5.www);
    let v_145 = r8.xyz;
    let v_146 = select(r9.xyz, v_145, (v_144 != vec3<u32>()));
    r8 = vec4<f32>(v_146.xyz, r8.w);
    r5.w = dot(r8.xyz, r8.xyz);
    let v_147 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_147.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_148 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_148.xyz, r8.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[11u].w);
    r5.w = (r5.w / r6.w);
    let v_149 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r6.w = dot(r8.xyz, v_149.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_150 = dot(r8.xyz, r2.xyz);
    r7.w = clamp(vec4<f32>(v_150, v_150, v_150, v_150).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r7.w = (r5.w * r6.w);
    let v_151 = (r7.www * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_151.xyz, r9.w);
    let v_152 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_152.xyz, r9.w);
    let v_153 = fma(r5.xyz, r0.www, r8.xyz);
    r8 = vec4<f32>(v_153.xyz, r8.w);
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_154 = (r7.www * r8.xyz);
    r8 = vec4<f32>(v_154.xyz, r8.w);
    let v_155 = dot(r8.xyz, r6.xyz);
    r7.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
    r7.w = ((-(r7.wwww)).w + 1.0f);
    r9.w = (r7.w * r7.w);
    r9.w = (r9.w * r9.w);
    r7.w = (r7.w * r9.w);
    r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
    let v_156 = dot(r8.xyz, r2.xyz);
    r8.x = clamp(vec4<f32>(v_156, v_156, v_156, v_156).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.w);
    r8.x = exp2(r8.x);
    r7.w = (r7.w * r8.x);
    r6.w = (r6.w * r7.w);
    r5.w = (r5.w * r6.w);
    r5.w = (r2.w * r5.w);
    let v_157 = (r5.www * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_157.xyz, r8.w);
  }
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r5.w = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    let v_158 = bitcast<u32>(r6.w);
    let v_159 = r5.w;
    r3.z = select(r3.z, v_159, (v_158 != 0u));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_160 = (v_36.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_160.xyz, r10.w);
      let v_161 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_161.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[20u].w);
      let v_162 = fma(cb3_3.tint_symbol_2[12u].xyz, r6.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_162.xyz, r11.w);
      let v_163 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_163.xyz, r11.w);
      let v_164 = bitcast<vec3<u32>>(r5.www);
      let v_165 = r10.xyz;
      let v_166 = select(r11.xyz, v_165, (v_164 != vec3<u32>()));
      r10 = vec4<f32>(v_166.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_167 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_167.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_168 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_168.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[12u].w);
      r5.w = (r5.w / r6.w);
      let v_169 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r6.w = dot(r10.xyz, v_169.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_170 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_170, v_170, v_170, v_170).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_171 = (r7.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_171.xyz, r11.w);
      let v_172 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_172.xyz, r9.w);
      let v_173 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_173.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_174 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_174.xyz, r10.w);
      let v_175 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_176 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_177 = fma(r5.www, cb3_3.tint_symbol_2[20u].xyz, r8.xyz);
      r8 = vec4<f32>(v_177.xyz, r8.w);
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
      let v_178 = (v_36.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_178.xyz, r10.w);
      let v_179 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[21u].w);
      let v_180 = fma(cb3_3.tint_symbol_2[13u].xyz, r6.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_180.xyz, r11.w);
      let v_181 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_181.xyz, r11.w);
      let v_182 = bitcast<vec3<u32>>(r5.www);
      let v_183 = r10.xyz;
      let v_184 = select(r11.xyz, v_183, (v_182 != vec3<u32>()));
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_185 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_185.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_186 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_186.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[13u].w);
      r5.w = (r5.w / r6.w);
      let v_187 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r6.w = dot(r10.xyz, v_187.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_188 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_188, v_188, v_188, v_188).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_189 = (r7.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_189.xyz, r11.w);
      let v_190 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_190.xyz, r9.w);
      let v_191 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_191.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_192 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      let v_193 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_193, v_193, v_193, v_193).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_194 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_194, v_194, v_194, v_194).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_195 = fma(r5.www, cb3_3.tint_symbol_2[21u].xyz, r8.xyz);
      r8 = vec4<f32>(v_195.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_196 = (v_36.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_196.xyz, r10.w);
      let v_197 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[22u].w);
      let v_198 = fma(cb3_3.tint_symbol_2[14u].xyz, r6.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      let v_199 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_199.xyz, r11.w);
      let v_200 = bitcast<vec3<u32>>(r5.www);
      let v_201 = r10.xyz;
      let v_202 = select(r11.xyz, v_201, (v_200 != vec3<u32>()));
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_203 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_204 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_204.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[14u].w);
      r5.w = (r5.w / r6.w);
      let v_205 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r6.w = dot(r10.xyz, v_205.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_206 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_207 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_207.xyz, r11.w);
      let v_208 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_208.xyz, r9.w);
      let v_209 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_209.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_210 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_210.xyz, r10.w);
      let v_211 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_211, v_211, v_211, v_211).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_212 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_212, v_212, v_212, v_212).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_213 = fma(r5.www, cb3_3.tint_symbol_2[22u].xyz, r8.xyz);
      r8 = vec4<f32>(v_213.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_214 = (v_36.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      let v_215 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_215.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[23u].w);
      let v_216 = fma(cb3_3.tint_symbol_2[15u].xyz, r6.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      let v_217 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = bitcast<vec3<u32>>(r5.www);
      let v_219 = r10.xyz;
      let v_220 = select(r11.xyz, v_219, (v_218 != vec3<u32>()));
      r10 = vec4<f32>(v_220.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_221 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_222 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[15u].w);
      r5.w = (r5.w / r6.w);
      let v_223 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r6.w = dot(r10.xyz, v_223.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_224 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_225 = (r7.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_226.xyz, r9.w);
      let v_227 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_228 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      let v_229 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_230 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_230, v_230, v_230, v_230).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_231 = fma(r5.www, cb3_3.tint_symbol_2[23u].xyz, r8.xyz);
      r8 = vec4<f32>(v_231.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_232 = (v_36.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_232.xyz, r10.w);
      let v_233 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_233.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[24u].w);
      let v_234 = fma(cb3_3.tint_symbol_2[16u].xyz, r6.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      let v_235 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      let v_236 = bitcast<vec3<u32>>(r5.www);
      let v_237 = r10.xyz;
      let v_238 = select(r11.xyz, v_237, (v_236 != vec3<u32>()));
      r10 = vec4<f32>(v_238.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_239 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_240 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_240.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[16u].w);
      r5.w = (r5.w / r6.w);
      let v_241 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r6.w = dot(r10.xyz, v_241.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_242 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_242, v_242, v_242, v_242).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_243 = (r7.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_243.xyz, r11.w);
      let v_244 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_244.xyz, r9.w);
      let v_245 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_246 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      let v_247 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_248 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_249 = fma(r5.www, cb3_3.tint_symbol_2[24u].xyz, r8.xyz);
      r8 = vec4<f32>(v_249.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_250 = (v_36.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_250.xyz, r10.w);
      let v_251 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      r6.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
      r6.w = (r6.w * cb3_3.tint_symbol_2[25u].w);
      let v_252 = fma(cb3_3.tint_symbol_2[17u].xyz, r6.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_252.xyz, r11.w);
      let v_253 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      let v_254 = bitcast<vec3<u32>>(r5.www);
      let v_255 = r10.xyz;
      let v_256 = select(r11.xyz, v_255, (v_254 != vec3<u32>()));
      r10 = vec4<f32>(v_256.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      let v_257 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_257.xyz, r10.w);
      r6.w = dot(r10.xyz, r10.xyz);
      r6.w = inverseSqrt(r6.w);
      let v_258 = (r6.www * r10.xyz);
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r6.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_2[17u].w);
      r5.w = (r5.w / r6.w);
      let v_259 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r6.w = dot(r10.xyz, v_259.xyz);
      r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_260 = dot(r10.xyz, r2.xyz);
      r7.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r6.w = (r6.w * r7.w);
      r7.w = (r5.w * r6.w);
      let v_261 = (r7.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_261.xyz, r11.w);
      let v_262 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_262.xyz, r9.w);
      let v_263 = fma(r5.xyz, r0.www, r10.xyz);
      r10 = vec4<f32>(v_263.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_264 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_264.xyz, r10.w);
      let v_265 = dot(r10.xyz, r6.xyz);
      r7.w = clamp(vec4<f32>(v_265, v_265, v_265, v_265).w, 0.0f, 1.0f);
      r7.w = ((-(r7.wwww)).w + 1.0f);
      r9.w = (r7.w * r7.w);
      r9.w = (r9.w * r9.w);
      r7.w = (r7.w * r9.w);
      r7.w = fma(cb10_10.tint_symbol_5[0u].y, r7.w, r3.w);
      let v_266 = dot(r10.xyz, r2.xyz);
      r9.w = clamp(vec4<f32>(v_266, v_266, v_266, v_266).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.w * r9.w);
      r9.w = exp2(r9.w);
      r7.w = (r7.w * r9.w);
      r6.w = (r6.w * r7.w);
      r5.w = (r5.w * r6.w);
      r5.w = (r2.w * r5.w);
      let v_267 = fma(r5.www, cb3_3.tint_symbol_2[25u].xyz, r8.xyz);
      r8 = vec4<f32>(v_267.xyz, r8.w);
    }
  }
  if ((bitcast<u32>(r3.z) != 0u)) {
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r3.z) != 0u)) {
    } else {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_268 = (v_36.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_268.xyz, r10.w);
      let v_269 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_269.xyz, r11.w);
      r5.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
      r5.w = (r5.w * cb3_3.tint_symbol_2[26u].w);
      let v_270 = fma(cb3_3.tint_symbol_2[18u].xyz, r5.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_270.xyz, r11.w);
      let v_271 = (r11.xyz + v_36.xyz);
      r11 = vec4<f32>(v_271.xyz, r11.w);
      let v_272 = bitcast<vec3<u32>>(r3.zzz);
      let v_273 = r10.xyz;
      let v_274 = select(r11.xyz, v_273, (v_272 != vec3<u32>()));
      r10 = vec4<f32>(v_274.xyz, r10.w);
      r3.z = dot(r10.xyz, r10.xyz);
      let v_275 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_275.xyz, r10.w);
      r5.w = dot(r10.xyz, r10.xyz);
      r5.w = inverseSqrt(r5.w);
      let v_276 = (r5.www * r10.xyz);
      r10 = vec4<f32>(v_276.xyz, r10.w);
      r3.z = clamp(fma(-(r3.zzzz), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r5.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r5.w = fma(r5.w, r3.z, cb3_3.tint_symbol_2[18u].w);
      r3.z = (r3.z / r5.w);
      let v_277 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r5.w = dot(r10.xyz, v_277.xyz);
      r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_278 = dot(r10.xyz, r2.xyz);
      r6.w = clamp(vec4<f32>(v_278, v_278, v_278, v_278).w, 0.0f, 1.0f);
      r5.w = (r5.w * r6.w);
      r6.w = (r3.z * r5.w);
      let v_279 = (r6.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_279.xyz, r11.w);
      let v_280 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_280.xyz, r9.w);
      let v_281 = fma(r5.xyz, r0.www, r10.xyz);
      r5 = vec4<f32>(v_281.xyz, r5.w);
      r0.w = dot(r5.xyz, r5.xyz);
      r0.w = inverseSqrt(r0.w);
      let v_282 = (r0.www * r5.xyz);
      r5 = vec4<f32>(v_282.xyz, r5.w);
      let v_283 = dot(r5.xyz, r6.xyz);
      r0.w = clamp(vec4<f32>(v_283, v_283, v_283, v_283).w, 0.0f, 1.0f);
      r0.w = ((-(r0.wwww)).w + 1.0f);
      r6.x = (r0.w * r0.w);
      r6.x = (r6.x * r6.x);
      r0.w = (r0.w * r6.x);
      r0.w = fma(cb10_10.tint_symbol_5[0u].y, r0.w, r3.w);
      let v_284 = dot(r5.xyz, r2.xyz);
      r3.w = clamp(vec4<f32>(v_284, v_284, v_284, v_284).w, 0.0f, 1.0f);
      r3.w = log2(r3.w);
      r3.w = (r3.w * r8.w);
      r3.w = exp2(r3.w);
      r0.w = (r0.w * r3.w);
      r0.w = (r5.w * r0.w);
      r0.w = (r3.z * r0.w);
      r0.w = (r2.w * r0.w);
      let v_285 = fma(r0.www, cb3_3.tint_symbol_2[26u].xyz, r8.xyz);
      r8 = vec4<f32>(v_285.xyz, r8.w);
    }
  }
  r0.w = (r4.w * r4.w);
  r2.w = (r3.x * r3.x);
  let v_286 = (r8.xyz * r2.www);
  r3 = vec4<f32>(v_286.x, r3.y, v_286.yz);
  let v_287 = fma(r0.www, r9.xyz, r3.xzw);
  r3 = vec4<f32>(v_287.x, r3.y, v_287.yz);
  let v_288 = fma(r7.xyz, r3.yyy, r3.xzw);
  r3 = vec4<f32>(v_288.xyz, r3.w);
  r0.w = fma(r1.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_289 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_289.xyz, r5.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_290 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_290.xyz, r6.w);
  let v_291 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_291.xyz, r6.w);
  let v_292 = fma(r5.xyz, r1.zzz, r6.xyz);
  r5 = vec4<f32>(v_292.xyz, r5.w);
  let v_293 = (r1.yyy * r5.xyz);
  r1 = vec4<f32>(r1.x, v_293.xyz);
  let v_294 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_294.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_295 = dot(r6.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_295, v_295, v_295, v_295).w, 0.0f, 1.0f);
  let v_296 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r5.xyz);
  r2 = vec4<f32>(v_296.xyz, r2.w);
  let v_297 = fma(r2.xyz, r1.xxx, r1.yzw);
  r1 = vec4<f32>(v_297.xyz, r1.w);
  let v_298 = (r4.www * r1.xyz);
  r1 = vec4<f32>(v_298.xyz, r1.w);
  let v_299 = fma(r1.xyz, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_299.xyz, r0.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r0.w);
  let v_300 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_300.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r4.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_301 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_301 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_302 = (r0.www * r4.xyz);
  r2 = vec4<f32>(v_302.xyz, r2.w);
  let v_303 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_303, v_303, v_303, v_303).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_304 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_304, v_304, v_304, v_304).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_305 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_305.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_306 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_306.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_307 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_307.xyz, r2.w);
  let v_308 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_308.xyz, r2.w);
  let v_309 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_309.xyz, r3.w);
  let v_310 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_310.xyz, r2.w);
  let v_311 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_312 = (r2.xyz + v_311.xyz);
  r2 = vec4<f32>(v_312.xyz, r2.w);
  let v_313 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_313.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_314 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_314.xy, r1.z, v_314.z);
  let v_315 = ((-(r0.xyxz)).xyw + r1.xyw);
  r1 = vec4<f32>(v_315.xy, r1.z, v_315.z);
  let v_316 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_316.xyz, r0.w);
  let v_317 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_317.xyz, r0.w);
  let v_318 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_318.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return o0;
}
