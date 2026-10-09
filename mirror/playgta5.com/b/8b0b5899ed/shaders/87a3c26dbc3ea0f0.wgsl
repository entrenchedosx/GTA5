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

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

struct cb16_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v7 = v_2;
  x1[0u].x = v8[0u];
  x1[0u].y = v8[1u];
  x1[0u].z = v8[2u];
  x1[0u].w = v8[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1 = textureSample(t3, s3, v0.xyxx.xy);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
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
  let v_8 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  let v_9 = (r0.xyz * cb12_12.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r2.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r2.w = (r2.w * cb2_2.tint_symbol_1[15u].y);
  r3.x = (v6.x * cb12_12.tint_symbol_4[2u].x);
  r3.x = (r3.x * cb12_12.tint_symbol_4[3u].z);
  r3.y = (r2.x * v6.x);
  let v_10 = ((-(cb12_12.tint_symbol_4[3u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(r3.xy, v_10.xy);
  r4.x = (r3.z * v6.z);
  let v_11 = (r3.ww * v0.zw);
  let v_12 = r4;
  r4 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r5 = textureSample(t2, s2, r4.yzyy.xy);
  r3.w = (cb5_5.tint_symbol_3[3u].z * cb12_12.tint_symbol_4[3u].z);
  r4.y = ((-(r5.xxxx)).y + r5.z);
  r5.x = fma(r3.w, r4.y, r5.x);
  let v_13 = (r5.xy * cb12_12.tint_symbol_4[3u].xx);
  let v_14 = r4;
  r4 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r3.w = fma(v6.z, r3.z, -1.0f);
  r3.z = fma(r3.z, r3.w, 1.0f);
  r3.w = (r3.z * r4.y);
  let v_15 = -(r0.xyxz);
  let v_16 = fma(cb12_12.tint_symbol_4[4u].xyz, cb12_12.tint_symbol_4[3u].yyy, v_15.xyw);
  r5 = vec4<f32>(v_16.xy, r5.z, v_16.z);
  let v_17 = fma(r3.www, r5.xyw, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r3.w = (r4.x * cb12_12.tint_symbol_4[3u].x);
  let v_18 = ((-(r0.xyxz)).xyw + r5.zzz);
  r4 = vec4<f32>(v_18.xy, r4.z, v_18.z);
  let v_19 = fma(r3.www, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r3.z = fma((-(r4.zzzz)).z, r3.z, 1.0f);
  r3.y = clamp(((r3.zzzz * r3.yyyy)).y, 0.0f, 1.0f);
  r3.z = (v6.x * cb12_12.tint_symbol_4[3u].w);
  r2.x = (r2.x * r3.z);
  r2.x = (r2.x * 1.5f);
  r3.z = dot(v3.xyz, v3.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_20 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r4 = vec4<f32>(((v_20.xyz + vec3<f32>(0.0f, 0.0f, -1.0f))).xyz, r4.w);
  let v_21 = fma(cb12_12.tint_symbol_4[5u].www, r4.xyz, cb3_3.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = -(r4.xyzx);
  let v_23 = fma(v3.xyz, r3.zzz, v_22.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_24 = (r3.zzz * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r3.z = dot(r1.xyw, r4.xyz);
  r3.z = clamp(((r3.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  let v_25 = fma(r2.yy, vec2<f32>(7.0f, 512.0f), vec2<f32>(0.00000000999999993923f, -500.0f));
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r3.z = log2(r3.z);
  r3.z = (r3.z * r4.x);
  r3.z = exp2(r3.z);
  let v_26 = fma(r2.xxx, r3.zzz, r0.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = -(v2.xxyz);
  let v_29 = (v_28.xzw + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_29.x, r4.y, v_29.yz);
  r2.x = dot(r4.xzw, r4.xzw);
  r2.x = inverseSqrt(r2.x);
  let v_30 = (r2.xxx * r4.xzw);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = fma(r4.xzw, r2.xxx, v_20.xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  r3.z = dot(r6.xyz, r6.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_32 = (r3.zzz * r6.xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  r3.z = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  r2.w = (r2.w * r2.w);
  r3.w = max(r4.y, 0.0f);
  let v_33 = -(r3.wwww);
  r2.y = fma(r2.y, 512.0f, v_33.y);
  r3.w = (r3.w * 558.0f);
  r2.y = fma(r2.y, 3.0f, r3.w);
  r3.w = dot(r4.xzw, cb1_1.tint_symbol[14u].xyz);
  let v_34 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = (r7.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = fma(r7.xxx, cb6_6.tint_symbol_5[0u].xyz, r8.xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  let v_37 = fma(r7.zzz, cb6_6.tint_symbol_5[2u].xyz, r8.xyz);
  r8 = vec4<f32>(v_37.xyz, r8.w);
  let v_38 = fma(r8.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r9 = vec4<f32>(v_38.xyz, r9.w);
  let v_39 = &(x0[0u]);
  let v_40 = r9;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r8.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r10 = vec4<f32>(v_41.xyz, r10.w);
  let v_42 = &(x0[1u]);
  let v_43 = r10;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r8.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r11 = vec4<f32>(v_44.xyz, r11.w);
  let v_45 = &(x0[2u]);
  let v_46 = r11;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r8.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r8 = vec4<f32>(v_47.xyz, r8.w);
  let v_48 = &(x0[3u]);
  let v_49 = r8;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_51 = r12;
  r12 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
  r4.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r4.y = (r4.y * 0.5f);
  let v_52 = abs(r11.yyyy);
  r5.w = max(v_52.w, abs(r11.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.y)));
  let v_53 = (bitcast<u32>(r5.w) != 0u);
  let v_54 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_54, v_53);
  let v_55 = abs(r10.yyyy);
  r6.w = max(v_55.w, abs(r10.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.y)));
  let v_56 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_6[2i].x), (v_56 != 0u));
  let v_57 = abs(r9.yyyy);
  r6.w = max(v_57.w, abs(r9.xxxx).w);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.y)));
  let v_58 = bitcast<u32>(r4.y);
  r4.y = select(r5.w, 0.0f, (v_58 != 0u));
  let v_59 = x0[bitcast<i32>(r4.y)];
  r9 = vec4<f32>(v_59.xyz, r9.w);
  r4.y = f32(bitcast<i32>(r4.y));
  r5.w = (r4.y + 0.5f);
  r5.w = (r5.w * 0.25f);
  r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.yyyy)));
  r10 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r10) & vec4<u32>(1065353216u)));
  r4.y = dot(r10, cb6_6.tint_symbol_5[12u]);
  r6.w = dot(r10, cb6_6.tint_symbol_5[13u]);
  r10.x = (r9.x + 0.5f);
  r10.y = fma(r9.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.y == 0.0f))));
  r4.y = ((-(r4.yyyy)).y + r9.z);
  let v_60 = dpdx(r10.xyy);
  r11 = vec4<f32>(v_60.xy, r11.z, v_60.z);
  r11.z = dpdx(r4.y);
  let v_61 = dpdy(r10.yxy);
  r13 = vec4<f32>(v_61.xyz, r13.w);
  r13.w = dpdy(r4.y);
  let v_62 = (r11.yw * r13.yw);
  r8 = vec4<f32>(r8.xy, v_62.xy);
  let v_63 = -(r8.zwzz);
  let v_64 = fma(r11.xz, r13.xz, v_63.xy);
  r14 = vec4<f32>(v_64.xy, r14.zw);
  r7.w = (1.0f / r14.x);
  r8.z = (r11.z * r13.y);
  let v_65 = -(r8.zzzz);
  r14.z = fma(r11.x, r13.w, v_65.z);
  let v_66 = (r7.ww * r14.yz);
  r8 = vec4<f32>(r8.xy, v_66.xy);
  let v_67 = max(r8.zw, vec2<f32>());
  r8 = vec4<f32>(r8.xy, v_67.xy);
  let v_68 = min(r8.zw, vec2<f32>(0.5f));
  r8 = vec4<f32>(r8.xy, v_68.xy);
  r4.y = fma((-(r6.wwww)).y, r8.z, r4.y);
  r4.y = fma((-(r6.wwww)).y, r8.w, r4.y);
  let v_69 = bitcast<u32>(r5.w);
  let v_70 = r4.y;
  r12.z = select(r9.z, v_70, (v_69 != 0u));
  r10.z = 0.0f;
  let v_71 = (r10.xyz + r12.ywz);
  r9 = vec4<f32>(v_71.xyz, r9.w);
  let v_72 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r12 = vec4<f32>(v_72.xy, r12.zw);
  let v_73 = (r10.xyz + r12.xyz);
  r11 = vec4<f32>(v_73.xyz, r11.w);
  let v_74 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r12 = vec4<f32>(v_74.xy, r12.zw);
  let v_75 = (r10.xyz + r12.xyz);
  r13 = vec4<f32>(v_75.xyz, r13.w);
  let v_76 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r12 = vec4<f32>(v_76.xy, r12.zw);
  let v_77 = (r10.xyz + r12.xyz);
  r14 = vec4<f32>(v_77.xyz, r14.w);
  let v_78 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r12 = vec4<f32>(v_78.xy, r12.zw);
  let v_79 = (r10.xyz + r12.xyz);
  r15 = vec4<f32>(v_79.xyz, r15.w);
  let v_80 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r12 = vec4<f32>(v_80.xy, r12.zw);
  let v_81 = (r10.xyz + r12.xyz);
  r16 = vec4<f32>(v_81.xyz, r16.w);
  let v_82 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r12 = vec4<f32>(v_82.xy, r12.zw);
  let v_83 = (r10.xyz + r12.xyz);
  r17 = vec4<f32>(v_83.xyz, r17.w);
  let v_84 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r12 = vec4<f32>(v_84.xy, r12.zw);
  let v_85 = (r10.xyz + r12.xyz);
  r18 = vec4<f32>(v_85.xyz, r18.w);
  let v_86 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r12 = vec4<f32>(v_86.xy, r12.zw);
  let v_87 = (r10.xyz + r12.xyz);
  r19 = vec4<f32>(v_87.xyz, r19.w);
  let v_88 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r12 = vec4<f32>(v_88.xy, r12.zw);
  let v_89 = (r10.xyz + r12.xyz);
  r20 = vec4<f32>(v_89.xyz, r20.w);
  let v_90 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r12 = vec4<f32>(v_90.xy, r12.zw);
  let v_91 = (r10.xyz + r12.xyz);
  r21 = vec4<f32>(v_91.xyz, r21.w);
  let v_92 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r12 = vec4<f32>(v_92.xy, r12.zw);
  let v_93 = (r10.xyz + r12.xyz);
  r22 = vec4<f32>(v_93.xyz, r22.w);
  let v_94 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r12 = vec4<f32>(v_94.xy, r12.zw);
  let v_95 = (r10.xyz + r12.xyz);
  r23 = vec4<f32>(v_95.xyz, r23.w);
  let v_96 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r12 = vec4<f32>(v_96.xy, r12.zw);
  let v_97 = (r10.xyz + r12.xyz);
  r24 = vec4<f32>(v_97.xyz, r24.w);
  let v_98 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r12 = vec4<f32>(v_98.xy, r12.zw);
  let v_99 = (r10.xyz + r12.xyz);
  r25 = vec4<f32>(v_99.xyz, r25.w);
  let v_100 = (cb6_6.tint_symbol_5[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r12 = vec4<f32>(v_100.xy, r12.zw);
  let v_101 = (r10.xyz + r12.xyz);
  r10 = vec4<f32>(v_101.xyz, r10.w);
  let v_102 = r9.xyxx;
  r9.x = textureSampleCompareLevel(t15, s15, v_102.xy, r9.z);
  let v_103 = r11.xyxx;
  r9.y = textureSampleCompareLevel(t15, s15, v_103.xy, r11.z);
  let v_104 = r13.xyxx;
  r9.z = textureSampleCompareLevel(t15, s15, v_104.xy, r13.z);
  let v_105 = r14.xyxx;
  r9.w = textureSampleCompareLevel(t15, s15, v_105.xy, r14.z);
  let v_106 = r15.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_106.xy, r15.z);
  let v_107 = r16.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_107.xy, r16.z);
  let v_108 = r17.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_108.xy, r17.z);
  let v_109 = r18.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_109.xy, r18.z);
  let v_110 = r19.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_110.xy, r19.z);
  let v_111 = r20.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_111.xy, r20.z);
  let v_112 = r21.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_112.xy, r21.z);
  let v_113 = r22.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_113.xy, r22.z);
  let v_114 = r23.xyxx;
  r13.x = textureSampleCompareLevel(t15, s15, v_114.xy, r23.z);
  let v_115 = r24.xyxx;
  r13.y = textureSampleCompareLevel(t15, s15, v_115.xy, r24.z);
  let v_116 = r25.xyxx;
  r13.z = textureSampleCompareLevel(t15, s15, v_116.xy, r25.z);
  let v_117 = r10.xyxx;
  r13.w = textureSampleCompareLevel(t15, s15, v_117.xy, r10.z);
  r9 = (r9 + r11);
  r9 = (r12 + r9);
  r9 = (r13 + r9);
  r4.y = dot(r9, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_118 = abs(r8.yyyy);
  r5.w = max(v_118.w, abs(r8.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.y, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r4.y = sqrt(r4.y);
  r4.y = (r4.y * cb6_6.tint_symbol_5[3u].z);
  let v_119 = -(r3.wwww);
  r3.w = fma(r4.y, v_119.w, r3.w);
  r8.x = (-(cb6_6.tint_symbol_5[15u].wwww)).x;
  let v_120 = r8;
  r8 = vec4<f32>(v_120.x, 0.0f, v_120.z, 0.5f);
  let v_121 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r8.xy);
  r8 = vec4<f32>(v_121.xy, r8.zw);
  r9 = textureSample(t12, s12, r8.xyxx.xy);
  r8.z = r9.y;
  r8 = textureSample(t13, s13, r8.zwzz.xy);
  r3.w = (r3.w * r8.x);
  let v_122 = dot(r1.xyw, v_20.xyz);
  r4.y = clamp(vec4<f32>(v_122, v_122, v_122, v_122).y, 0.0f, 1.0f);
  let v_123 = dot(r5.xyz, r1.xyw);
  r8.x = clamp(vec4<f32>(v_123, v_123, v_123, v_123).x, 0.0f, 1.0f);
  let v_124 = dot(r6.xyz, v_20.xyz);
  r8.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = ((-(r8.xxyx)).yz + vec2<f32>(1.0f));
  let v_126 = r8;
  r8 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  let v_127 = (r8.yz * r8.yz);
  r9 = vec4<f32>(v_127.xy, r9.zw);
  let v_128 = (r9.xy * r9.xy);
  r9 = vec4<f32>(v_128.xy, r9.zw);
  let v_129 = (r8.yz * r9.xy);
  let v_130 = r8;
  r8 = vec4<f32>(v_130.x, v_129.xy, v_130.w);
  r5.w = ((-(r2.zzzz)).w + 1.0f);
  let v_131 = fma(r2.zz, r8.yz, r5.ww);
  let v_132 = r8;
  r8 = vec4<f32>(v_132.x, v_131.xy, v_132.w);
  let v_133 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r9 = vec4<f32>(v_133.xy, r9.zw);
  r6.w = (r9.x * 0.125f);
  r7.w = fma((-(r3.yyyy)).w, r8.y, 1.0f);
  r6.x = dot(r1.xyw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r9.y);
  r6.x = exp2(r6.x);
  r6.x = (r8.z * r6.x);
  r6.x = (r6.w * r6.x);
  r6.x = (r3.y * r6.x);
  r6.x = (r4.y * r6.x);
  r4.y = (r4.y * r7.w);
  let v_134 = fma(r0.xyz, r4.yyy, r6.xxx);
  r6 = vec4<f32>(v_134.xyz, r6.w);
  let v_135 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_135.xyz, r6.w);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.y) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r8 = vec4<f32>(r8.x, vec3<f32>());
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_136 = (v_28.xzw + cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_136.x, r9.y, v_136.yz);
    let v_137 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r10 = vec4<f32>(v_137.xyz, r10.w);
    r8.z = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r8.w = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r8.z = clamp(((r8.zzzz / r8.wwww)).z, 0.0f, 1.0f);
    r8.z = (r8.z * cb3_3.tint_symbol_2[19u].w);
    let v_138 = fma(cb3_3.tint_symbol_2[11u].xyz, r8.zzz, cb3_3.tint_symbol_2[3u].xyz);
    r10 = vec4<f32>(v_138.xyz, r10.w);
    let v_139 = (r10.xyz + (-(v2.xyzx)).xyz);
    r10 = vec4<f32>(v_139.xyz, r10.w);
    let v_140 = bitcast<vec3<u32>>(r8.yyy);
    let v_141 = r9.xzw;
    let v_142 = select(r10.xyz, v_141, (v_140 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_142.xyz);
    r9.x = dot(r8.yzw, r8.yzw);
    let v_143 = (r8.yzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(r8.x, v_143.xyz);
    r9.z = dot(r8.yzw, r8.yzw);
    r9.z = inverseSqrt(r9.z);
    let v_144 = (r8.yzw * r9.zzz);
    r8 = vec4<f32>(r8.x, v_144.xyz);
    r9.x = clamp(fma(-(r9.xxxx), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r9.z = ((-(cb3_3.tint_symbol_2[11u].wwww)).z + 1.0f);
    r9.z = fma(r9.z, r9.x, cb3_3.tint_symbol_2[11u].w);
    r9.x = (r9.x / r9.z);
    let v_145 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r9.z = dot(r8.yzw, v_145.xyz);
    r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).z, 0.0f, 1.0f);
    let v_146 = dot(r8.yzw, r1.xyw);
    r9.w = clamp(vec4<f32>(v_146, v_146, v_146, v_146).w, 0.0f, 1.0f);
    r9.z = (r9.z * r9.w);
    r9.w = (r9.x * r9.z);
    let v_147 = (r9.www * cb3_3.tint_symbol_2[19u].xyz);
    r10 = vec4<f32>(v_147.xyz, r10.w);
    let v_148 = (r0.xyz * r10.xyz);
    r10 = vec4<f32>(v_148.xyz, r10.w);
    let v_149 = fma(r4.xzw, r2.xxx, r8.yzw);
    r8 = vec4<f32>(r8.x, v_149.xyz);
    r9.w = dot(r8.yzw, r8.yzw);
    r9.w = inverseSqrt(r9.w);
    let v_150 = (r8.yzw * r9.www);
    r8 = vec4<f32>(r8.x, v_150.xyz);
    let v_151 = dot(r8.yzw, r5.xyz);
    r9.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.w = (r9.w * r9.w);
    r10.w = (r10.w * r10.w);
    r9.w = (r9.w * r10.w);
    r9.w = fma(r2.z, r9.w, r5.w);
    let v_152 = dot(r8.yzw, r1.xyw);
    r8.y = clamp(vec4<f32>(v_152, v_152, v_152, v_152).y, 0.0f, 1.0f);
    r8.y = log2(r8.y);
    r8.y = (r8.y * r9.y);
    r8.y = exp2(r8.y);
    r8.y = (r8.y * r9.w);
    r8.y = (r9.z * r8.y);
    r8.y = (r9.x * r8.y);
    r8.y = (r6.w * r8.y);
    let v_153 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(r8.x, v_153.xyz);
  }
  r9.x = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r9.x) != 0u)) {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r9.x = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    let v_154 = bitcast<u32>(r9.z);
    let v_155 = r9.x;
    r4.y = select(r4.y, v_155, (v_154 != 0u));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_156 = -(v2.xyzx);
      let v_157 = (v_156.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_157.xyz, r11.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r12 = vec4<f32>(v_158.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r9.z = clamp(((r9.zzzz / r9.wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r9.zzz, cb3_3.tint_symbol_2[4u].xyz);
      r12 = vec4<f32>(v_159.xyz, r12.w);
      let v_160 = (r12.xyz + v_156.xyz);
      r12 = vec4<f32>(v_160.xyz, r12.w);
      let v_161 = bitcast<vec3<u32>>(r9.xxx);
      let v_162 = r11.xyz;
      let v_163 = select(r12.xyz, v_162, (v_161 != vec3<u32>()));
      r9 = vec4<f32>(v_163.x, r9.y, v_163.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      let v_164 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_164.x, r9.y, v_164.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_165 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_165.x, r9.y, v_165.yz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_2[12u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_2[12u].w);
      r10.w = (r10.w / r11.x);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r11.x = dot(r9.xzw, v_166.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).x, 0.0f, 1.0f);
      let v_167 = dot(r9.xzw, r1.xyw);
      r11.y = clamp(vec4<f32>(v_167, v_167, v_167, v_167).y, 0.0f, 1.0f);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_168 = (r11.yyy * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(r11.x, v_168.xyz);
      let v_169 = fma(r11.yzw, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_169.xyz, r10.w);
      let v_170 = fma(r4.xzw, r2.xxx, r9.xzw);
      r9 = vec4<f32>(v_170.x, r9.y, v_170.yz);
      r11.y = dot(r9.xzw, r9.xzw);
      r11.y = inverseSqrt(r11.y);
      let v_171 = (r9.xzw * r11.yyy);
      r9 = vec4<f32>(v_171.x, r9.y, v_171.yz);
      let v_172 = dot(r9.xzw, r5.xyz);
      r11.y = clamp(vec4<f32>(v_172, v_172, v_172, v_172).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(r2.z, r11.y, r5.w);
      let v_173 = dot(r9.xzw, r1.xyw);
      r9.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.y);
      r9.x = (r11.x * r9.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_174 = fma(r9.xxx, cb3_3.tint_symbol_2[20u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_174.xyz);
    }
  } else {
    r4.y = bitcast<f32>(v.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_175 = -(v2.xyzx);
      let v_176 = (v_175.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_176.xyz, r11.w);
      let v_177 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r12 = vec4<f32>(v_177.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r9.z = clamp(((r9.zzzz / r9.wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_2[21u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[13u].xyz, r9.zzz, cb3_3.tint_symbol_2[5u].xyz);
      r12 = vec4<f32>(v_178.xyz, r12.w);
      let v_179 = (r12.xyz + v_175.xyz);
      r12 = vec4<f32>(v_179.xyz, r12.w);
      let v_180 = bitcast<vec3<u32>>(r9.xxx);
      let v_181 = r11.xyz;
      let v_182 = select(r12.xyz, v_181, (v_180 != vec3<u32>()));
      r9 = vec4<f32>(v_182.x, r9.y, v_182.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      let v_183 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_183.x, r9.y, v_183.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_184 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_184.x, r9.y, v_184.yz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_2[13u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_2[13u].w);
      r10.w = (r10.w / r11.x);
      let v_185 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r11.x = dot(r9.xzw, v_185.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).x, 0.0f, 1.0f);
      let v_186 = dot(r9.xzw, r1.xyw);
      r11.y = clamp(vec4<f32>(v_186, v_186, v_186, v_186).y, 0.0f, 1.0f);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_187 = (r11.yyy * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(r11.x, v_187.xyz);
      let v_188 = fma(r11.yzw, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_188.xyz, r10.w);
      let v_189 = fma(r4.xzw, r2.xxx, r9.xzw);
      r9 = vec4<f32>(v_189.x, r9.y, v_189.yz);
      r11.y = dot(r9.xzw, r9.xzw);
      r11.y = inverseSqrt(r11.y);
      let v_190 = (r9.xzw * r11.yyy);
      r9 = vec4<f32>(v_190.x, r9.y, v_190.yz);
      let v_191 = dot(r9.xzw, r5.xyz);
      r11.y = clamp(vec4<f32>(v_191, v_191, v_191, v_191).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(r2.z, r11.y, r5.w);
      let v_192 = dot(r9.xzw, r1.xyw);
      r9.x = clamp(vec4<f32>(v_192, v_192, v_192, v_192).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.y);
      r9.x = (r11.x * r9.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_193 = fma(r9.xxx, cb3_3.tint_symbol_2[21u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_193.xyz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_194 = -(v2.xyzx);
      let v_195 = (v_194.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_195.xyz, r11.w);
      let v_196 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r12 = vec4<f32>(v_196.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r9.z = clamp(((r9.zzzz / r9.wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_2[22u].w);
      let v_197 = fma(cb3_3.tint_symbol_2[14u].xyz, r9.zzz, cb3_3.tint_symbol_2[6u].xyz);
      r12 = vec4<f32>(v_197.xyz, r12.w);
      let v_198 = (r12.xyz + v_194.xyz);
      r12 = vec4<f32>(v_198.xyz, r12.w);
      let v_199 = bitcast<vec3<u32>>(r9.xxx);
      let v_200 = r11.xyz;
      let v_201 = select(r12.xyz, v_200, (v_199 != vec3<u32>()));
      r9 = vec4<f32>(v_201.x, r9.y, v_201.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      let v_202 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_202.x, r9.y, v_202.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_203 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_203.x, r9.y, v_203.yz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_2[14u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_2[14u].w);
      r10.w = (r10.w / r11.x);
      let v_204 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r11.x = dot(r9.xzw, v_204.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).x, 0.0f, 1.0f);
      let v_205 = dot(r9.xzw, r1.xyw);
      r11.y = clamp(vec4<f32>(v_205, v_205, v_205, v_205).y, 0.0f, 1.0f);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_206 = (r11.yyy * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(r11.x, v_206.xyz);
      let v_207 = fma(r11.yzw, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_207.xyz, r10.w);
      let v_208 = fma(r4.xzw, r2.xxx, r9.xzw);
      r9 = vec4<f32>(v_208.x, r9.y, v_208.yz);
      r11.y = dot(r9.xzw, r9.xzw);
      r11.y = inverseSqrt(r11.y);
      let v_209 = (r9.xzw * r11.yyy);
      r9 = vec4<f32>(v_209.x, r9.y, v_209.yz);
      let v_210 = dot(r9.xzw, r5.xyz);
      r11.y = clamp(vec4<f32>(v_210, v_210, v_210, v_210).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(r2.z, r11.y, r5.w);
      let v_211 = dot(r9.xzw, r1.xyw);
      r9.x = clamp(vec4<f32>(v_211, v_211, v_211, v_211).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.y);
      r9.x = (r11.x * r9.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_212 = fma(r9.xxx, cb3_3.tint_symbol_2[22u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_212.xyz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_213 = -(v2.xyzx);
      let v_214 = (v_213.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_214.xyz, r11.w);
      let v_215 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r12 = vec4<f32>(v_215.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r9.z = clamp(((r9.zzzz / r9.wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_2[23u].w);
      let v_216 = fma(cb3_3.tint_symbol_2[15u].xyz, r9.zzz, cb3_3.tint_symbol_2[7u].xyz);
      r12 = vec4<f32>(v_216.xyz, r12.w);
      let v_217 = (r12.xyz + v_213.xyz);
      r12 = vec4<f32>(v_217.xyz, r12.w);
      let v_218 = bitcast<vec3<u32>>(r9.xxx);
      let v_219 = r11.xyz;
      let v_220 = select(r12.xyz, v_219, (v_218 != vec3<u32>()));
      r9 = vec4<f32>(v_220.x, r9.y, v_220.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      let v_221 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_221.x, r9.y, v_221.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_222 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_222.x, r9.y, v_222.yz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_2[15u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_2[15u].w);
      r10.w = (r10.w / r11.x);
      let v_223 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r11.x = dot(r9.xzw, v_223.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).x, 0.0f, 1.0f);
      let v_224 = dot(r9.xzw, r1.xyw);
      r11.y = clamp(vec4<f32>(v_224, v_224, v_224, v_224).y, 0.0f, 1.0f);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_225 = (r11.yyy * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(r11.x, v_225.xyz);
      let v_226 = fma(r11.yzw, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_226.xyz, r10.w);
      let v_227 = fma(r4.xzw, r2.xxx, r9.xzw);
      r9 = vec4<f32>(v_227.x, r9.y, v_227.yz);
      r11.y = dot(r9.xzw, r9.xzw);
      r11.y = inverseSqrt(r11.y);
      let v_228 = (r9.xzw * r11.yyy);
      r9 = vec4<f32>(v_228.x, r9.y, v_228.yz);
      let v_229 = dot(r9.xzw, r5.xyz);
      r11.y = clamp(vec4<f32>(v_229, v_229, v_229, v_229).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(r2.z, r11.y, r5.w);
      let v_230 = dot(r9.xzw, r1.xyw);
      r9.x = clamp(vec4<f32>(v_230, v_230, v_230, v_230).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.y);
      r9.x = (r11.x * r9.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_231 = fma(r9.xxx, cb3_3.tint_symbol_2[23u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_231.xyz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_232 = -(v2.xyzx);
      let v_233 = (v_232.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_233.xyz, r11.w);
      let v_234 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r12 = vec4<f32>(v_234.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r9.z = clamp(((r9.zzzz / r9.wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_2[24u].w);
      let v_235 = fma(cb3_3.tint_symbol_2[16u].xyz, r9.zzz, cb3_3.tint_symbol_2[8u].xyz);
      r12 = vec4<f32>(v_235.xyz, r12.w);
      let v_236 = (r12.xyz + v_232.xyz);
      r12 = vec4<f32>(v_236.xyz, r12.w);
      let v_237 = bitcast<vec3<u32>>(r9.xxx);
      let v_238 = r11.xyz;
      let v_239 = select(r12.xyz, v_238, (v_237 != vec3<u32>()));
      r9 = vec4<f32>(v_239.x, r9.y, v_239.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      let v_240 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_240.x, r9.y, v_240.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_241 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_241.x, r9.y, v_241.yz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_2[16u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_2[16u].w);
      r10.w = (r10.w / r11.x);
      let v_242 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r11.x = dot(r9.xzw, v_242.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).x, 0.0f, 1.0f);
      let v_243 = dot(r9.xzw, r1.xyw);
      r11.y = clamp(vec4<f32>(v_243, v_243, v_243, v_243).y, 0.0f, 1.0f);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_244 = (r11.yyy * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(r11.x, v_244.xyz);
      let v_245 = fma(r11.yzw, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_245.xyz, r10.w);
      let v_246 = fma(r4.xzw, r2.xxx, r9.xzw);
      r9 = vec4<f32>(v_246.x, r9.y, v_246.yz);
      r11.y = dot(r9.xzw, r9.xzw);
      r11.y = inverseSqrt(r11.y);
      let v_247 = (r9.xzw * r11.yyy);
      r9 = vec4<f32>(v_247.x, r9.y, v_247.yz);
      let v_248 = dot(r9.xzw, r5.xyz);
      r11.y = clamp(vec4<f32>(v_248, v_248, v_248, v_248).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(r2.z, r11.y, r5.w);
      let v_249 = dot(r9.xzw, r1.xyw);
      r9.x = clamp(vec4<f32>(v_249, v_249, v_249, v_249).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.y);
      r9.x = (r11.x * r9.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_250 = fma(r9.xxx, cb3_3.tint_symbol_2[24u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_250.xyz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_6[3i].x);
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r9.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_251 = -(v2.xyzx);
      let v_252 = (v_251.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_252.xyz, r11.w);
      let v_253 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r12 = vec4<f32>(v_253.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r9.z = clamp(((r9.zzzz / r9.wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_2[25u].w);
      let v_254 = fma(cb3_3.tint_symbol_2[17u].xyz, r9.zzz, cb3_3.tint_symbol_2[9u].xyz);
      r12 = vec4<f32>(v_254.xyz, r12.w);
      let v_255 = (r12.xyz + v_251.xyz);
      r12 = vec4<f32>(v_255.xyz, r12.w);
      let v_256 = bitcast<vec3<u32>>(r9.xxx);
      let v_257 = r11.xyz;
      let v_258 = select(r12.xyz, v_257, (v_256 != vec3<u32>()));
      r9 = vec4<f32>(v_258.x, r9.y, v_258.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      let v_259 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_259.x, r9.y, v_259.yz);
      r11.x = dot(r9.xzw, r9.xzw);
      r11.x = inverseSqrt(r11.x);
      let v_260 = (r9.xzw * r11.xxx);
      r9 = vec4<f32>(v_260.x, r9.y, v_260.yz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_2[17u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_2[17u].w);
      r10.w = (r10.w / r11.x);
      let v_261 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r11.x = dot(r9.xzw, v_261.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).x, 0.0f, 1.0f);
      let v_262 = dot(r9.xzw, r1.xyw);
      r11.y = clamp(vec4<f32>(v_262, v_262, v_262, v_262).y, 0.0f, 1.0f);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_263 = (r11.yyy * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(r11.x, v_263.xyz);
      let v_264 = fma(r11.yzw, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_264.xyz, r10.w);
      let v_265 = fma(r4.xzw, r2.xxx, r9.xzw);
      r9 = vec4<f32>(v_265.x, r9.y, v_265.yz);
      r11.y = dot(r9.xzw, r9.xzw);
      r11.y = inverseSqrt(r11.y);
      let v_266 = (r9.xzw * r11.yyy);
      r9 = vec4<f32>(v_266.x, r9.y, v_266.yz);
      let v_267 = dot(r9.xzw, r5.xyz);
      r11.y = clamp(vec4<f32>(v_267, v_267, v_267, v_267).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(r2.z, r11.y, r5.w);
      let v_268 = dot(r9.xzw, r1.xyw);
      r9.x = clamp(vec4<f32>(v_268, v_268, v_268, v_268).x, 0.0f, 1.0f);
      r9.x = log2(r9.x);
      r9.x = (r9.x * r9.y);
      r9.x = exp2(r9.x);
      r9.x = (r9.x * r11.y);
      r9.x = (r11.x * r9.x);
      r9.x = (r10.w * r9.x);
      r9.x = (r6.w * r9.x);
      let v_269 = fma(r9.xxx, cb3_3.tint_symbol_2[25u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_269.xyz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
  } else {
    r9.x = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r9.x)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r4.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_270 = (v_28.xzw + cb3_3.tint_symbol_2[10u].xyz);
      r9 = vec4<f32>(v_270.x, r9.y, v_270.yz);
      let v_271 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_271.xyz, r11.w);
      r10.w = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r11.x = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r10.w = clamp(((r10.wwww / r11.xxxx)).w, 0.0f, 1.0f);
      r10.w = (r10.w * cb3_3.tint_symbol_2[26u].w);
      let v_272 = fma(cb3_3.tint_symbol_2[18u].xyz, r10.www, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_272.xyz, r11.w);
      let v_273 = (r11.xyz + (-(v2.xyzx)).xyz);
      r11 = vec4<f32>(v_273.xyz, r11.w);
      let v_274 = bitcast<vec3<u32>>(r4.yyy);
      let v_275 = r9.xzw;
      let v_276 = select(r11.xyz, v_275, (v_274 != vec3<u32>()));
      r9 = vec4<f32>(v_276.x, r9.y, v_276.yz);
      r4.y = dot(r9.xzw, r9.xzw);
      let v_277 = (r9.xzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_277.x, r9.y, v_277.yz);
      r10.w = dot(r9.xzw, r9.xzw);
      r10.w = inverseSqrt(r10.w);
      let v_278 = (r9.xzw * r10.www);
      r9 = vec4<f32>(v_278.x, r9.y, v_278.yz);
      r4.y = clamp(fma(-(r4.yyyy), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r10.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
      r10.w = fma(r10.w, r4.y, cb3_3.tint_symbol_2[18u].w);
      r4.y = (r4.y / r10.w);
      let v_279 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r10.w = dot(r9.xzw, v_279.xyz);
      r10.w = clamp(fma(r10.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
      let v_280 = dot(r9.xzw, r1.xyw);
      r11.x = clamp(vec4<f32>(v_280, v_280, v_280, v_280).x, 0.0f, 1.0f);
      r10.w = (r10.w * r11.x);
      r11.x = (r4.y * r10.w);
      let v_281 = (r11.xxx * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_281.xyz, r11.w);
      let v_282 = fma(r11.xyz, r0.xyz, r10.xyz);
      r10 = vec4<f32>(v_282.xyz, r10.w);
      let v_283 = fma(r4.xzw, r2.xxx, r9.xzw);
      r4 = vec4<f32>(v_283.x, r4.y, v_283.yz);
      r2.x = dot(r4.xzw, r4.xzw);
      r2.x = inverseSqrt(r2.x);
      let v_284 = (r2.xxx * r4.xzw);
      r4 = vec4<f32>(v_284.x, r4.y, v_284.yz);
      let v_285 = dot(r4.xzw, r5.xyz);
      r2.x = clamp(vec4<f32>(v_285, v_285, v_285, v_285).x, 0.0f, 1.0f);
      r2.x = ((-(r2.xxxx)).x + 1.0f);
      r9.x = (r2.x * r2.x);
      r9.x = (r9.x * r9.x);
      r2.x = (r2.x * r9.x);
      r2.x = fma(r2.z, r2.x, r5.w);
      let v_286 = dot(r4.xzw, r1.xyw);
      r2.z = clamp(vec4<f32>(v_286, v_286, v_286, v_286).z, 0.0f, 1.0f);
      r2.z = log2(r2.z);
      r2.z = (r2.z * r9.y);
      r2.z = exp2(r2.z);
      r2.x = (r2.z * r2.x);
      r2.x = (r10.w * r2.x);
      r2.x = (r4.y * r2.x);
      r2.x = (r6.w * r2.x);
      let v_287 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.yzw);
      r8 = vec4<f32>(r8.x, v_287.xyz);
    }
  }
  r2.x = (r7.w * r7.w);
  r2.z = (r3.y * r3.y);
  let v_288 = (r8.yzw * r2.zzz);
  r4 = vec4<f32>(v_288.xyz, r4.w);
  let v_289 = fma(r2.xxx, r10.xyz, r4.xyz);
  r4 = vec4<f32>(v_289.xyz, r4.w);
  let v_290 = fma(r6.xyz, r3.www, r4.xyz);
  r4 = vec4<f32>(v_290.xyz, r4.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_291 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_291.xyz, r6.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_292 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(r8.x, v_292.xyz);
  let v_293 = (r8.yzw * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(r8.x, v_293.xyz);
  let v_294 = fma(r6.xyz, r1.zzz, r8.yzw);
  r6 = vec4<f32>(v_294.xyz, r6.w);
  let v_295 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_295.xyz, r6.w);
  let v_296 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(r8.x, v_296.xyz);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_297 = dot(r9.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_297, v_297, v_297, v_297).w, 0.0f, 1.0f);
  let v_298 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r8.yzw);
  r8 = vec4<f32>(r8.x, v_298.xyz);
  let v_299 = fma(r8.yzw, r3.zzz, r6.xyz);
  r6 = vec4<f32>(v_299.xyz, r6.w);
  let v_300 = (r7.www * r6.xyz);
  r6 = vec4<f32>(v_300.xyz, r6.w);
  let v_301 = fma(r6.xyz, r0.xyz, r4.xyz);
  r4 = vec4<f32>(v_301.xyz, r4.w);
  r0.w = ((-(r7.wwww)).w + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_302 = -(r1.zzzz);
  let v_303 = -(r5.xyzx);
  let v_304 = fma(r1.xyw, v_302.xyz, v_303.xyz);
  r1 = vec4<f32>(v_304.xyz, r1.w);
  let v_305 = clamp(((r2.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_305.xy, r2.zw);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.x)));
  r3.y = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_306 = bitcast<u32>(r2.z);
  let v_307 = r3.y;
  r1.w = select(r1.w, v_307, (v_306 != 0u));
  let v_308 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_308.xyz, r5.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_309 = (r5.xyz / r1.xxx);
  r5 = vec4<f32>(v_309.xyz, r5.w);
  let v_310 = ((-(r5.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_310.xyz, r5.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_311 = bitcast<vec2<u32>>(r1.xx);
  let v_312 = r5.xy;
  let v_313 = select(r5.zy, v_312, (v_311 != vec2<u32>()));
  r1 = vec4<f32>(v_313.xy, r1.zw);
  let v_314 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_314);
  r1.w = max(r2.w, r3.z);
  let v_315 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_315.xyz, r1.w);
  let v_316 = (r2.yyy * r1.xyz);
  r2 = vec4<f32>(v_316.xyz, r2.w);
  let v_317 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_317.xyz, r2.w);
  let v_318 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_318.xyz, r1.w);
  let v_319 = fma(r1.xyz, r0.www, r4.xyz);
  r1 = vec4<f32>(v_319.xyz, r1.w);
  r0.w = (r3.x * r8.x);
  let v_320 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_320.xyz, r0.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r1.x = sqrt(r0.w);
  let v_321 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_321.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r7.z);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_322 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_322 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_2[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_323 = (r0.www * r7.xyz);
  r2 = vec4<f32>(v_323.xyz, r2.w);
  let v_324 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_324, v_324, v_324, v_324).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_325 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_325, v_325, v_325, v_325).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].y);
  let v_326 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.y + v_326.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r1.z = clamp(fma(r1.xxxx, r2.xxxx, r1.zzzz).z, 0.0f, 1.0f);
  let v_327 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_327.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_328 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_328.xyz, r2.w);
  let v_329 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_329.xyz, r2.w);
  let v_330 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r3 = vec4<f32>(v_330.xyz, r3.w);
  let v_331 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_331.xyz, r2.w);
  let v_332 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_333 = (r2.xyz + v_332.xyz);
  r2 = vec4<f32>(v_333.xyz, r2.w);
  let v_334 = fma(r1.yyy, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_334.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_335 = fma(r1.xxx, r3.xyz, r2.xyz);
  r1 = vec4<f32>(v_335.xy, r1.z, v_335.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_336 = (v7.xy * cb2_2.tint_symbol_1[18u].zw);
    r2 = vec4<f32>(v_336.xy, r2.zw);
    r2 = textureSample(t11, s11, r2.xyxx.xy);
    r0.w = (r2.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  } else {
    r0.w = 1.0f;
  }
  let v_337 = -(r0.xyxz);
  let v_338 = fma(r1.xyw, r0.www, v_337.xyw);
  r1 = vec4<f32>(v_338.xy, r1.z, v_338.z);
  let v_339 = fma(r1.zzz, r1.xyw, r0.xyz);
  r0 = vec4<f32>(v_339.xyz, r0.w);
  let v_340 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_340.xyz, o0.w);
  o0.w = cb2_2.tint_symbol_1[15u].x;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_341 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_341);
  return o0;
}
