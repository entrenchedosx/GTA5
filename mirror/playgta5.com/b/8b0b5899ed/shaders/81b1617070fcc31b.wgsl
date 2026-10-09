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

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

struct cb1_struct {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb16_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb16_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

@group(1u) @binding(71u) var t39 : texture_2d<f32>;

@group(1u) @binding(72u) var t40 : texture_2d<f32>;

var<private> v7 : vec4<f32>;

var<private> v8 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

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
  let v_35 = (r7.yyy * cb6_6.tint_symbol_6[1u].xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = fma(r7.xxx, cb6_6.tint_symbol_6[0u].xyz, r8.xyz);
  r7 = vec4<f32>(v_36.xy, r7.z, v_36.z);
  let v_37 = fma(r7.zzz, cb6_6.tint_symbol_6[2u].xyz, r7.xyw);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = fma(r7.xyz, cb6_6.tint_symbol_6[4u].xyz, cb6_6.tint_symbol_6[8u].xyz);
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = &(x0[0u]);
  let v_40 = r8;
  *(v_39) = vec4<f32>(v_40.xyz, (*(v_39)).w);
  let v_41 = fma(r7.xyz, cb6_6.tint_symbol_6[5u].xyz, cb6_6.tint_symbol_6[9u].xyz);
  r9 = vec4<f32>(v_41.xyz, r9.w);
  let v_42 = &(x0[1u]);
  let v_43 = r9;
  *(v_42) = vec4<f32>(v_43.xyz, (*(v_42)).w);
  let v_44 = fma(r7.xyz, cb6_6.tint_symbol_6[6u].xyz, cb6_6.tint_symbol_6[10u].xyz);
  r10 = vec4<f32>(v_44.xyz, r10.w);
  let v_45 = &(x0[2u]);
  let v_46 = r10;
  *(v_45) = vec4<f32>(v_46.xyz, (*(v_45)).w);
  let v_47 = fma(r7.xyz, cb6_6.tint_symbol_6[7u].xyz, cb6_6.tint_symbol_6[11u].xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = &(x0[3u]);
  let v_49 = r7;
  *(v_48) = vec4<f32>(v_49.xyz, (*(v_48)).w);
  let v_50 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  let v_51 = r11;
  r11 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
  r4.y = fma((-(cb6_6.tint_symbol_6[14u].zzzz)).y, 1.5f, 1.0f);
  r4.y = (r4.y * 0.5f);
  let v_52 = abs(r10.yyyy);
  r5.w = max(v_52.w, abs(r10.xxxx).w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < r4.y)));
  let v_53 = (bitcast<u32>(r5.w) != 0u);
  let v_54 = bitcast<f32>(v.tint_symbol_7[0i].x);
  r5.w = select(bitcast<f32>(v.tint_symbol_7[1i].x), v_54, v_53);
  let v_55 = abs(r9.yyyy);
  r6.w = max(v_55.w, abs(r9.xxxx).w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.y)));
  let v_56 = bitcast<u32>(r6.w);
  r5.w = select(r5.w, bitcast<f32>(v.tint_symbol_7[2i].x), (v_56 != 0u));
  let v_57 = abs(r8.yyyy);
  r6.w = max(v_57.w, abs(r8.xxxx).w);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (r6.w < r4.y)));
  let v_58 = bitcast<u32>(r4.y);
  r4.y = select(r5.w, 0.0f, (v_58 != 0u));
  let v_59 = x0[bitcast<i32>(r4.y)];
  r8 = vec4<f32>(v_59.xyz, r8.w);
  r4.y = f32(bitcast<i32>(r4.y));
  r5.w = (r4.y + 0.5f);
  r5.w = (r5.w * 0.25f);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r4.yyyy)));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
  r4.y = dot(r9, cb6_6.tint_symbol_6[12u]);
  r6.w = dot(r9, cb6_6.tint_symbol_6[13u]);
  r9.x = (r8.x + 0.5f);
  r9.y = fma(r8.y, 0.25f, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, !((r4.y == 0.0f))));
  r4.y = ((-(r4.yyyy)).y + r8.z);
  let v_60 = dpdx(r9.xyy);
  r10 = vec4<f32>(v_60.xy, r10.z, v_60.z);
  r10.z = dpdx(r4.y);
  let v_61 = dpdy(r9.yxy);
  r12 = vec4<f32>(v_61.xyz, r12.w);
  r12.w = dpdy(r4.y);
  let v_62 = (r10.yw * r12.yw);
  r7 = vec4<f32>(r7.xy, v_62.xy);
  let v_63 = -(r7.zwzz);
  let v_64 = fma(r10.xz, r12.xz, v_63.xy);
  r13 = vec4<f32>(v_64.xy, r13.zw);
  r7.z = (1.0f / r13.x);
  r7.w = (r10.z * r12.y);
  let v_65 = -(r7.wwww);
  r13.z = fma(r10.x, r12.w, v_65.z);
  let v_66 = (r7.zz * r13.yz);
  r7 = vec4<f32>(r7.xy, v_66.xy);
  let v_67 = max(r7.zw, vec2<f32>());
  r7 = vec4<f32>(r7.xy, v_67.xy);
  let v_68 = min(r7.zw, vec2<f32>(0.5f));
  r7 = vec4<f32>(r7.xy, v_68.xy);
  r4.y = fma((-(r6.wwww)).y, r7.z, r4.y);
  r4.y = fma((-(r6.wwww)).y, r7.w, r4.y);
  let v_69 = bitcast<u32>(r5.w);
  let v_70 = r4.y;
  r11.z = select(r8.z, v_70, (v_69 != 0u));
  r9.z = 0.0f;
  let v_71 = (r9.xyz + r11.ywz);
  r8 = vec4<f32>(v_71.xyz, r8.w);
  let v_72 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r11 = vec4<f32>(v_72.xy, r11.zw);
  let v_73 = (r9.xyz + r11.xyz);
  r10 = vec4<f32>(v_73.xyz, r10.w);
  let v_74 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r11 = vec4<f32>(v_74.xy, r11.zw);
  let v_75 = (r9.xyz + r11.xyz);
  r12 = vec4<f32>(v_75.xyz, r12.w);
  let v_76 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r11 = vec4<f32>(v_76.xy, r11.zw);
  let v_77 = (r9.xyz + r11.xyz);
  r13 = vec4<f32>(v_77.xyz, r13.w);
  let v_78 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r11 = vec4<f32>(v_78.xy, r11.zw);
  let v_79 = (r9.xyz + r11.xyz);
  r14 = vec4<f32>(v_79.xyz, r14.w);
  let v_80 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r11 = vec4<f32>(v_80.xy, r11.zw);
  let v_81 = (r9.xyz + r11.xyz);
  r15 = vec4<f32>(v_81.xyz, r15.w);
  let v_82 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r11 = vec4<f32>(v_82.xy, r11.zw);
  let v_83 = (r9.xyz + r11.xyz);
  r16 = vec4<f32>(v_83.xyz, r16.w);
  let v_84 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r11 = vec4<f32>(v_84.xy, r11.zw);
  let v_85 = (r9.xyz + r11.xyz);
  r17 = vec4<f32>(v_85.xyz, r17.w);
  let v_86 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r11 = vec4<f32>(v_86.xy, r11.zw);
  let v_87 = (r9.xyz + r11.xyz);
  r18 = vec4<f32>(v_87.xyz, r18.w);
  let v_88 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r11 = vec4<f32>(v_88.xy, r11.zw);
  let v_89 = (r9.xyz + r11.xyz);
  r19 = vec4<f32>(v_89.xyz, r19.w);
  let v_90 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r11 = vec4<f32>(v_90.xy, r11.zw);
  let v_91 = (r9.xyz + r11.xyz);
  r20 = vec4<f32>(v_91.xyz, r20.w);
  let v_92 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r11 = vec4<f32>(v_92.xy, r11.zw);
  let v_93 = (r9.xyz + r11.xyz);
  r21 = vec4<f32>(v_93.xyz, r21.w);
  let v_94 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r11 = vec4<f32>(v_94.xy, r11.zw);
  let v_95 = (r9.xyz + r11.xyz);
  r22 = vec4<f32>(v_95.xyz, r22.w);
  let v_96 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r11 = vec4<f32>(v_96.xy, r11.zw);
  let v_97 = (r9.xyz + r11.xyz);
  r23 = vec4<f32>(v_97.xyz, r23.w);
  let v_98 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r11 = vec4<f32>(v_98.xy, r11.zw);
  let v_99 = (r9.xyz + r11.xyz);
  r24 = vec4<f32>(v_99.xyz, r24.w);
  let v_100 = (cb6_6.tint_symbol_6[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r11 = vec4<f32>(v_100.xy, r11.zw);
  let v_101 = (r9.xyz + r11.xyz);
  r9 = vec4<f32>(v_101.xyz, r9.w);
  let v_102 = r8.xyxx;
  r8.x = textureSampleCompareLevel(t15, s15, v_102.xy, r8.z);
  let v_103 = r10.xyxx;
  r8.y = textureSampleCompareLevel(t15, s15, v_103.xy, r10.z);
  let v_104 = r12.xyxx;
  r8.z = textureSampleCompareLevel(t15, s15, v_104.xy, r12.z);
  let v_105 = r13.xyxx;
  r8.w = textureSampleCompareLevel(t15, s15, v_105.xy, r13.z);
  let v_106 = r14.xyxx;
  r10.x = textureSampleCompareLevel(t15, s15, v_106.xy, r14.z);
  let v_107 = r15.xyxx;
  r10.y = textureSampleCompareLevel(t15, s15, v_107.xy, r15.z);
  let v_108 = r16.xyxx;
  r10.z = textureSampleCompareLevel(t15, s15, v_108.xy, r16.z);
  let v_109 = r17.xyxx;
  r10.w = textureSampleCompareLevel(t15, s15, v_109.xy, r17.z);
  let v_110 = r18.xyxx;
  r11.x = textureSampleCompareLevel(t15, s15, v_110.xy, r18.z);
  let v_111 = r19.xyxx;
  r11.y = textureSampleCompareLevel(t15, s15, v_111.xy, r19.z);
  let v_112 = r20.xyxx;
  r11.z = textureSampleCompareLevel(t15, s15, v_112.xy, r20.z);
  let v_113 = r21.xyxx;
  r11.w = textureSampleCompareLevel(t15, s15, v_113.xy, r21.z);
  let v_114 = r22.xyxx;
  r12.x = textureSampleCompareLevel(t15, s15, v_114.xy, r22.z);
  let v_115 = r23.xyxx;
  r12.y = textureSampleCompareLevel(t15, s15, v_115.xy, r23.z);
  let v_116 = r24.xyxx;
  r12.z = textureSampleCompareLevel(t15, s15, v_116.xy, r24.z);
  let v_117 = r9.xyxx;
  r12.w = textureSampleCompareLevel(t15, s15, v_117.xy, r9.z);
  r8 = (r8 + r10);
  r8 = (r11 + r8);
  r8 = (r12 + r8);
  r4.y = dot(r8, vec4<f32>(1.0f));
  r3.w = clamp(fma(r3.wwww, cb6_6.tint_symbol_6[0u].wwww, cb6_6.tint_symbol_6[1u].wwww).w, 0.0f, 1.0f);
  let v_118 = abs(r7.yyyy);
  r5.w = max(v_118.w, abs(r7.xxxx).w);
  r5.w = clamp(fma(r5.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = (r5.w * r3.w);
  r3.w = fma(r4.y, 0.0625f, r3.w);
  r3.w = (r3.w * r3.w);
  r3.w = min(r3.w, 1.0f);
  r4.y = clamp(fma(v2.zzzz, cb6_6.tint_symbol_6[3u].xxxx, cb6_6.tint_symbol_6[3u].yyyy).y, 0.0f, 1.0f);
  r4.y = sqrt(r4.y);
  r4.y = (r4.y * cb6_6.tint_symbol_6[3u].z);
  let v_119 = -(r3.wwww);
  r3.w = fma(r4.y, v_119.w, r3.w);
  r7.x = (-(cb6_6.tint_symbol_6[15u].wwww)).x;
  let v_120 = r7;
  r7 = vec4<f32>(v_120.x, 0.0f, v_120.z, 0.5f);
  let v_121 = fma(v2.xy, vec2<f32>(0.00028571428265422583f), r7.xy);
  r7 = vec4<f32>(v_121.xy, r7.zw);
  r8 = textureSample(t12, s12, r7.xyxx.xy);
  r7.z = r8.y;
  r7 = textureSample(t13, s13, r7.zwzz.xy);
  r3.w = (r3.w * r7.x);
  let v_122 = dot(r1.xyw, v_20.xyz);
  r4.y = clamp(vec4<f32>(v_122, v_122, v_122, v_122).y, 0.0f, 1.0f);
  let v_123 = dot(r5.xyz, r1.xyw);
  r7.x = clamp(vec4<f32>(v_123, v_123, v_123, v_123).x, 0.0f, 1.0f);
  let v_124 = dot(r6.xyz, v_20.xyz);
  r7.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
  let v_125 = ((-(r7.xxyx)).yz + vec2<f32>(1.0f));
  let v_126 = r7;
  r7 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  let v_127 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_127.xy, r8.zw);
  let v_128 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_128.xy, r8.zw);
  let v_129 = (r7.yz * r8.xy);
  let v_130 = r7;
  r7 = vec4<f32>(v_130.x, v_129.xy, v_130.w);
  r5.w = ((-(r2.zzzz)).w + 1.0f);
  let v_131 = fma(r2.zz, r7.yz, r5.ww);
  let v_132 = r7;
  r7 = vec4<f32>(v_132.x, v_131.xy, v_132.w);
  let v_133 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_133.xy, r8.zw);
  r6.w = (r8.x * 0.125f);
  r7.y = fma((-(r3.yyyy)).y, r7.y, 1.0f);
  r6.x = dot(r1.xyw, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.y);
  r6.x = exp2(r6.x);
  r6.x = (r7.z * r6.x);
  r6.x = (r6.w * r6.x);
  r6.x = (r3.y * r6.x);
  r6.x = (r4.y * r6.x);
  r4.y = (r4.y * r7.y);
  let v_134 = fma(r0.xyz, r4.yyy, r6.xxx);
  r6 = vec4<f32>(v_134.xyz, r6.w);
  let v_135 = (r6.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_135.xyz, r6.w);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r4.y) != 0u)) {
    r9 = vec4<f32>(vec3<f32>(), r9.w);
    r8 = vec4<f32>(0.0f, r8.y, vec2<f32>());
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
    let v_136 = (v_28.xzw + cb3_3.tint_symbol_2[3u].xyz);
    r8 = vec4<f32>(v_136.x, r8.y, v_136.yz);
    let v_137 = (v2.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
    r9 = vec4<f32>(v_137.xyz, r9.w);
    r7.w = dot(r9.xyz, cb3_3.tint_symbol_2[11u].xyz);
    r9.x = (cb3_3.tint_symbol_2[19u].w + 0.00009999999747378752f);
    r7.w = clamp(((r7.wwww / r9.xxxx)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
    let v_138 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
    r9 = vec4<f32>(v_138.xyz, r9.w);
    let v_139 = (r9.xyz + (-(v2.xyzx)).xyz);
    r9 = vec4<f32>(v_139.xyz, r9.w);
    let v_140 = bitcast<vec3<u32>>(r7.zzz);
    let v_141 = r8.xzw;
    let v_142 = select(r9.xyz, v_141, (v_140 != vec3<u32>()));
    r8 = vec4<f32>(v_142.x, r8.y, v_142.yz);
    r7.z = dot(r8.xzw, r8.xzw);
    let v_143 = (r8.xzw + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_143.x, r8.y, v_143.yz);
    r7.w = dot(r8.xzw, r8.xzw);
    r7.w = inverseSqrt(r7.w);
    let v_144 = (r7.www * r8.xzw);
    r8 = vec4<f32>(v_144.x, r8.y, v_144.yz);
    r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[11u].w);
    r7.z = (r7.z / r7.w);
    let v_145 = -(cb3_3.tint_symbol_2[11u].xyzx);
    r7.w = dot(r8.xzw, v_145.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
    let v_146 = dot(r8.xzw, r1.xyw);
    r9.x = clamp(vec4<f32>(v_146, v_146, v_146, v_146).x, 0.0f, 1.0f);
    r7.w = (r7.w * r9.x);
    r9.x = (r7.z * r7.w);
    let v_147 = (r9.xxx * cb3_3.tint_symbol_2[19u].xyz);
    r9 = vec4<f32>(v_147.xyz, r9.w);
    let v_148 = (r0.xyz * r9.xyz);
    r9 = vec4<f32>(v_148.xyz, r9.w);
    let v_149 = fma(r4.xzw, r2.xxx, r8.xzw);
    r8 = vec4<f32>(v_149.x, r8.y, v_149.yz);
    r9.w = dot(r8.xzw, r8.xzw);
    r9.w = inverseSqrt(r9.w);
    let v_150 = (r8.xzw * r9.www);
    r8 = vec4<f32>(v_150.x, r8.y, v_150.yz);
    let v_151 = dot(r8.xzw, r5.xyz);
    r9.w = clamp(vec4<f32>(v_151, v_151, v_151, v_151).w, 0.0f, 1.0f);
    r9.w = ((-(r9.wwww)).w + 1.0f);
    r10.x = (r9.w * r9.w);
    r10.x = (r10.x * r10.x);
    r9.w = (r9.w * r10.x);
    r9.w = fma(r2.z, r9.w, r5.w);
    let v_152 = dot(r8.xzw, r1.xyw);
    r8.x = clamp(vec4<f32>(v_152, v_152, v_152, v_152).x, 0.0f, 1.0f);
    r8.x = log2(r8.x);
    r8.x = (r8.x * r8.y);
    r8.x = exp2(r8.x);
    r8.x = (r8.x * r9.w);
    r7.w = (r7.w * r8.x);
    r7.z = (r7.z * r7.w);
    r7.z = (r6.w * r7.z);
    let v_153 = (r7.zzz * cb3_3.tint_symbol_2[19u].xyz);
    r8 = vec4<f32>(v_153.x, r8.y, v_153.yz);
  }
  r7.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r7.z) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r7.z = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    let v_154 = bitcast<u32>(r7.w);
    let v_155 = r7.z;
    r4.y = select(r4.y, v_155, (v_154 != 0u));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
      let v_156 = -(v2.xyzx);
      let v_157 = (v_156.xyz + cb3_3.tint_symbol_2[4u].xyz);
      r10 = vec4<f32>(v_157.xyz, r10.w);
      let v_158 = (v2.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[12u].xyz);
      r9.w = (cb3_3.tint_symbol_2[20u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
      let v_159 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = (r11.xyz + v_156.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = bitcast<vec3<u32>>(r7.zzz);
      let v_162 = r10.xyz;
      let v_163 = select(r11.xyz, v_162, (v_161 != vec3<u32>()));
      r10 = vec4<f32>(v_163.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_164 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_164.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_165 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_165.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[12u].w);
      r7.z = (r7.z / r7.w);
      let v_166 = -(cb3_3.tint_symbol_2[12u].xyzx);
      r7.w = dot(r10.xyz, v_166.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
      let v_167 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_167, v_167, v_167, v_167).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.z * r7.w);
      let v_168 = (r9.www * cb3_3.tint_symbol_2[20u].xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      let v_169 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
      let v_170 = fma(r4.xzw, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_170.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_171 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_171.xyz, r10.w);
      let v_172 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_172, v_172, v_172, v_172).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(r2.z, r9.w, r5.w);
      let v_173 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_173, v_173, v_173, v_173).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.z = (r7.z * r7.w);
      r7.z = (r6.w * r7.z);
      let v_174 = fma(r7.zzz, cb3_3.tint_symbol_2[20u].xyz, r8.xzw);
      r8 = vec4<f32>(v_174.x, r8.y, v_174.yz);
    }
  } else {
    r4.y = bitcast<f32>(v.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
      let v_175 = -(v2.xyzx);
      let v_176 = (v_175.xyz + cb3_3.tint_symbol_2[5u].xyz);
      r10 = vec4<f32>(v_176.xyz, r10.w);
      let v_177 = (v2.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[13u].xyz);
      r9.w = (cb3_3.tint_symbol_2[21u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
      let v_178 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
      r11 = vec4<f32>(v_178.xyz, r11.w);
      let v_179 = (r11.xyz + v_175.xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = bitcast<vec3<u32>>(r7.zzz);
      let v_181 = r10.xyz;
      let v_182 = select(r11.xyz, v_181, (v_180 != vec3<u32>()));
      r10 = vec4<f32>(v_182.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_183 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_183.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_184 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_184.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[13u].w);
      r7.z = (r7.z / r7.w);
      let v_185 = -(cb3_3.tint_symbol_2[13u].xyzx);
      r7.w = dot(r10.xyz, v_185.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
      let v_186 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.z * r7.w);
      let v_187 = (r9.www * cb3_3.tint_symbol_2[21u].xyz);
      r11 = vec4<f32>(v_187.xyz, r11.w);
      let v_188 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_188.xyz, r9.w);
      let v_189 = fma(r4.xzw, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_189.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_190 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_190.xyz, r10.w);
      let v_191 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_191, v_191, v_191, v_191).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(r2.z, r9.w, r5.w);
      let v_192 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_192, v_192, v_192, v_192).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.z = (r7.z * r7.w);
      r7.z = (r6.w * r7.z);
      let v_193 = fma(r7.zzz, cb3_3.tint_symbol_2[21u].xyz, r8.xzw);
      r8 = vec4<f32>(v_193.x, r8.y, v_193.yz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
      let v_194 = -(v2.xyzx);
      let v_195 = (v_194.xyz + cb3_3.tint_symbol_2[6u].xyz);
      r10 = vec4<f32>(v_195.xyz, r10.w);
      let v_196 = (v2.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
      r11 = vec4<f32>(v_196.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[14u].xyz);
      r9.w = (cb3_3.tint_symbol_2[22u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
      let v_197 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
      r11 = vec4<f32>(v_197.xyz, r11.w);
      let v_198 = (r11.xyz + v_194.xyz);
      r11 = vec4<f32>(v_198.xyz, r11.w);
      let v_199 = bitcast<vec3<u32>>(r7.zzz);
      let v_200 = r10.xyz;
      let v_201 = select(r11.xyz, v_200, (v_199 != vec3<u32>()));
      r10 = vec4<f32>(v_201.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_202 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_202.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_203 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_203.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[14u].w);
      r7.z = (r7.z / r7.w);
      let v_204 = -(cb3_3.tint_symbol_2[14u].xyzx);
      r7.w = dot(r10.xyz, v_204.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
      let v_205 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_205, v_205, v_205, v_205).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.z * r7.w);
      let v_206 = (r9.www * cb3_3.tint_symbol_2[22u].xyz);
      r11 = vec4<f32>(v_206.xyz, r11.w);
      let v_207 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_207.xyz, r9.w);
      let v_208 = fma(r4.xzw, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_208.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_209 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_209.xyz, r10.w);
      let v_210 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_210, v_210, v_210, v_210).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(r2.z, r9.w, r5.w);
      let v_211 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_211, v_211, v_211, v_211).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.z = (r7.z * r7.w);
      r7.z = (r6.w * r7.z);
      let v_212 = fma(r7.zzz, cb3_3.tint_symbol_2[22u].xyz, r8.xzw);
      r8 = vec4<f32>(v_212.x, r8.y, v_212.yz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
      let v_213 = -(v2.xyzx);
      let v_214 = (v_213.xyz + cb3_3.tint_symbol_2[7u].xyz);
      r10 = vec4<f32>(v_214.xyz, r10.w);
      let v_215 = (v2.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
      r11 = vec4<f32>(v_215.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[15u].xyz);
      r9.w = (cb3_3.tint_symbol_2[23u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
      let v_216 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      let v_217 = (r11.xyz + v_213.xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = bitcast<vec3<u32>>(r7.zzz);
      let v_219 = r10.xyz;
      let v_220 = select(r11.xyz, v_219, (v_218 != vec3<u32>()));
      r10 = vec4<f32>(v_220.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_221 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_221.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_222 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_222.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[15u].w);
      r7.z = (r7.z / r7.w);
      let v_223 = -(cb3_3.tint_symbol_2[15u].xyzx);
      r7.w = dot(r10.xyz, v_223.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
      let v_224 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_224, v_224, v_224, v_224).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.z * r7.w);
      let v_225 = (r9.www * cb3_3.tint_symbol_2[23u].xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      let v_226 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_226.xyz, r9.w);
      let v_227 = fma(r4.xzw, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_227.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_228 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_228.xyz, r10.w);
      let v_229 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(r2.z, r9.w, r5.w);
      let v_230 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_230, v_230, v_230, v_230).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.z = (r7.z * r7.w);
      r7.z = (r6.w * r7.z);
      let v_231 = fma(r7.zzz, cb3_3.tint_symbol_2[23u].xyz, r8.xzw);
      r8 = vec4<f32>(v_231.x, r8.y, v_231.yz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
      let v_232 = -(v2.xyzx);
      let v_233 = (v_232.xyz + cb3_3.tint_symbol_2[8u].xyz);
      r10 = vec4<f32>(v_233.xyz, r10.w);
      let v_234 = (v2.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
      r11 = vec4<f32>(v_234.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[16u].xyz);
      r9.w = (cb3_3.tint_symbol_2[24u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
      let v_235 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
      r11 = vec4<f32>(v_235.xyz, r11.w);
      let v_236 = (r11.xyz + v_232.xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      let v_237 = bitcast<vec3<u32>>(r7.zzz);
      let v_238 = r10.xyz;
      let v_239 = select(r11.xyz, v_238, (v_237 != vec3<u32>()));
      r10 = vec4<f32>(v_239.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_240 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_240.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_241 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_241.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[16u].w);
      r7.z = (r7.z / r7.w);
      let v_242 = -(cb3_3.tint_symbol_2[16u].xyzx);
      r7.w = dot(r10.xyz, v_242.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
      let v_243 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_243, v_243, v_243, v_243).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.z * r7.w);
      let v_244 = (r9.www * cb3_3.tint_symbol_2[24u].xyz);
      r11 = vec4<f32>(v_244.xyz, r11.w);
      let v_245 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_245.xyz, r9.w);
      let v_246 = fma(r4.xzw, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_246.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_247 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_247.xyz, r10.w);
      let v_248 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_248, v_248, v_248, v_248).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(r2.z, r9.w, r5.w);
      let v_249 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_249, v_249, v_249, v_249).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.z = (r7.z * r7.w);
      r7.z = (r6.w * r7.z);
      let v_250 = fma(r7.zzz, cb3_3.tint_symbol_2[24u].xyz, r8.xzw);
      r8 = vec4<f32>(v_250.x, r8.y, v_250.yz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
    r4.y = bitcast<f32>(v.tint_symbol_7[3i].x);
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r7.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
      let v_251 = -(v2.xyzx);
      let v_252 = (v_251.xyz + cb3_3.tint_symbol_2[9u].xyz);
      r10 = vec4<f32>(v_252.xyz, r10.w);
      let v_253 = (v2.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
      r11 = vec4<f32>(v_253.xyz, r11.w);
      r7.w = dot(r11.xyz, cb3_3.tint_symbol_2[17u].xyz);
      r9.w = (cb3_3.tint_symbol_2[25u].w + 0.00009999999747378752f);
      r7.w = clamp(((r7.wwww / r9.wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
      let v_254 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
      r11 = vec4<f32>(v_254.xyz, r11.w);
      let v_255 = (r11.xyz + v_251.xyz);
      r11 = vec4<f32>(v_255.xyz, r11.w);
      let v_256 = bitcast<vec3<u32>>(r7.zzz);
      let v_257 = r10.xyz;
      let v_258 = select(r11.xyz, v_257, (v_256 != vec3<u32>()));
      r10 = vec4<f32>(v_258.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      let v_259 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_259.xyz, r10.w);
      r7.w = dot(r10.xyz, r10.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_260 = (r7.www * r10.xyz);
      r10 = vec4<f32>(v_260.xyz, r10.w);
      r7.z = clamp(fma(-(r7.zzzz), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r7.z, cb3_3.tint_symbol_2[17u].w);
      r7.z = (r7.z / r7.w);
      let v_261 = -(cb3_3.tint_symbol_2[17u].xyzx);
      r7.w = dot(r10.xyz, v_261.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
      let v_262 = dot(r10.xyz, r1.xyw);
      r9.w = clamp(vec4<f32>(v_262, v_262, v_262, v_262).w, 0.0f, 1.0f);
      r7.w = (r7.w * r9.w);
      r9.w = (r7.z * r7.w);
      let v_263 = (r9.www * cb3_3.tint_symbol_2[25u].xyz);
      r11 = vec4<f32>(v_263.xyz, r11.w);
      let v_264 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_264.xyz, r9.w);
      let v_265 = fma(r4.xzw, r2.xxx, r10.xyz);
      r10 = vec4<f32>(v_265.xyz, r10.w);
      r9.w = dot(r10.xyz, r10.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_266 = (r9.www * r10.xyz);
      r10 = vec4<f32>(v_266.xyz, r10.w);
      let v_267 = dot(r10.xyz, r5.xyz);
      r9.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(r2.z, r9.w, r5.w);
      let v_268 = dot(r10.xyz, r1.xyw);
      r10.x = clamp(vec4<f32>(v_268, v_268, v_268, v_268).x, 0.0f, 1.0f);
      r10.x = log2(r10.x);
      r10.x = (r8.y * r10.x);
      r10.x = exp2(r10.x);
      r9.w = (r9.w * r10.x);
      r7.w = (r7.w * r9.w);
      r7.z = (r7.z * r7.w);
      r7.z = (r6.w * r7.z);
      let v_269 = fma(r7.zzz, cb3_3.tint_symbol_2[25u].xyz, r8.xzw);
      r8 = vec4<f32>(v_269.x, r8.y, v_269.yz);
    }
  }
  if ((bitcast<u32>(r4.y) != 0u)) {
  } else {
    r7.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r4.y = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r7.z)));
    if ((bitcast<u32>(r4.y) != 0u)) {
    } else {
      r4.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
      let v_270 = -(v2.xyzx);
      let v_271 = (v_270.xyz + cb3_3.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_271.xyz, r10.w);
      let v_272 = (v2.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
      r11 = vec4<f32>(v_272.xyz, r11.w);
      r7.z = dot(r11.xyz, cb3_3.tint_symbol_2[18u].xyz);
      r7.w = (cb3_3.tint_symbol_2[26u].w + 0.00009999999747378752f);
      r7.z = clamp(((r7.zzzz / r7.wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_2[26u].w);
      let v_273 = fma(cb3_3.tint_symbol_2[18u].xyz, r7.zzz, cb3_3.tint_symbol_2[10u].xyz);
      r11 = vec4<f32>(v_273.xyz, r11.w);
      let v_274 = (r11.xyz + v_270.xyz);
      r11 = vec4<f32>(v_274.xyz, r11.w);
      let v_275 = bitcast<vec3<u32>>(r4.yyy);
      let v_276 = r10.xyz;
      let v_277 = select(r11.xyz, v_276, (v_275 != vec3<u32>()));
      r10 = vec4<f32>(v_277.xyz, r10.w);
      r4.y = dot(r10.xyz, r10.xyz);
      let v_278 = (r10.xyz + vec3<f32>(0.00000099999999747524f));
      r10 = vec4<f32>(v_278.xyz, r10.w);
      r7.z = dot(r10.xyz, r10.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_279 = (r7.zzz * r10.xyz);
      r10 = vec4<f32>(v_279.xyz, r10.w);
      r4.y = clamp(fma(-(r4.yyyy), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_2[18u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r4.y, cb3_3.tint_symbol_2[18u].w);
      r4.y = (r4.y / r7.z);
      let v_280 = -(cb3_3.tint_symbol_2[18u].xyzx);
      r7.z = dot(r10.xyz, v_280.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).z, 0.0f, 1.0f);
      let v_281 = dot(r10.xyz, r1.xyw);
      r7.w = clamp(vec4<f32>(v_281, v_281, v_281, v_281).w, 0.0f, 1.0f);
      r7.z = (r7.z * r7.w);
      r7.w = (r4.y * r7.z);
      let v_282 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
      r11 = vec4<f32>(v_282.xyz, r11.w);
      let v_283 = fma(r11.xyz, r0.xyz, r9.xyz);
      r9 = vec4<f32>(v_283.xyz, r9.w);
      let v_284 = fma(r4.xzw, r2.xxx, r10.xyz);
      r4 = vec4<f32>(v_284.x, r4.y, v_284.yz);
      r2.x = dot(r4.xzw, r4.xzw);
      r2.x = inverseSqrt(r2.x);
      let v_285 = (r2.xxx * r4.xzw);
      r4 = vec4<f32>(v_285.x, r4.y, v_285.yz);
      let v_286 = dot(r4.xzw, r5.xyz);
      r2.x = clamp(vec4<f32>(v_286, v_286, v_286, v_286).x, 0.0f, 1.0f);
      r2.x = ((-(r2.xxxx)).x + 1.0f);
      r7.w = (r2.x * r2.x);
      r7.w = (r7.w * r7.w);
      r2.x = (r2.x * r7.w);
      r2.x = fma(r2.z, r2.x, r5.w);
      let v_287 = dot(r4.xzw, r1.xyw);
      r2.z = clamp(vec4<f32>(v_287, v_287, v_287, v_287).z, 0.0f, 1.0f);
      r2.z = log2(r2.z);
      r2.z = (r2.z * r8.y);
      r2.z = exp2(r2.z);
      r2.x = (r2.z * r2.x);
      r2.x = (r7.z * r2.x);
      r2.x = (r4.y * r2.x);
      r2.x = (r6.w * r2.x);
      let v_288 = fma(r2.xxx, cb3_3.tint_symbol_2[26u].xyz, r8.xzw);
      r8 = vec4<f32>(v_288.x, r8.y, v_288.yz);
    }
  }
  r2.x = (r7.y * r7.y);
  r2.z = (r3.y * r3.y);
  let v_289 = (r8.xzw * r2.zzz);
  r4 = vec4<f32>(v_289.xyz, r4.w);
  let v_290 = fma(r2.xxx, r9.xyz, r4.xyz);
  r4 = vec4<f32>(v_290.xyz, r4.w);
  let v_291 = fma(r6.xyz, r3.www, r4.xyz);
  r4 = vec4<f32>(v_291.xyz, r4.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_292 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_292.xyz, r6.w);
  r1.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_293 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r8 = vec4<f32>(v_293.xyz, r8.w);
  let v_294 = (r8.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r8 = vec4<f32>(v_294.xyz, r8.w);
  let v_295 = fma(r6.xyz, r1.zzz, r8.xyz);
  r6 = vec4<f32>(v_295.xyz, r6.w);
  let v_296 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_296.xyz, r6.w);
  let v_297 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_297.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_2[46u].w;
  r9.y = cb3_3.tint_symbol_2[47u].w;
  r9.z = cb3_3.tint_symbol_2[48u].w;
  let v_298 = dot(r9.xyz, r1.xyw);
  r0.w = clamp(vec4<f32>(v_298, v_298, v_298, v_298).w, 0.0f, 1.0f);
  let v_299 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r8.xyz);
  r8 = vec4<f32>(v_299.xyz, r8.w);
  let v_300 = fma(r8.xyz, r3.zzz, r6.xyz);
  r6 = vec4<f32>(v_300.xyz, r6.w);
  let v_301 = (r7.yyy * r6.xyz);
  r6 = vec4<f32>(v_301.xyz, r6.w);
  let v_302 = fma(r6.xyz, r0.xyz, r4.xyz);
  r4 = vec4<f32>(v_302.xyz, r4.w);
  r0.w = ((-(r7.yyyy)).w + 1.0f);
  r1.z = dot((-(r5.xyzx)).xyz, r1.xyw);
  r1.z = (r1.z + r1.z);
  let v_303 = -(r1.zzzz);
  let v_304 = -(r5.xyzx);
  let v_305 = fma(r1.xyw, v_303.xyz, v_304.xyz);
  r1 = vec4<f32>(v_305.xyz, r1.w);
  let v_306 = clamp(((r2.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_306.xy, r2.zw);
  r1.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = (r1.w * cb5_5.tint_symbol_3[6u].z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.x)));
  r3.y = fma(r1.w, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r1.w = (r1.w * r1.w);
  r1.w = fma(r1.w, 5.0f, r2.x);
  let v_307 = bitcast<u32>(r2.z);
  let v_308 = r3.y;
  r1.w = select(r1.w, v_308, (v_307 != 0u));
  let v_309 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_309.xyz, r5.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  let v_310 = (r5.xyz / r1.xxx);
  r5 = vec4<f32>(v_310.xyz, r5.w);
  let v_311 = ((-(r5.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r5 = vec4<f32>(v_311.xyz, r5.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_312 = bitcast<vec2<u32>>(r1.xx);
  let v_313 = r5.xy;
  let v_314 = select(r5.zy, v_313, (v_312 != vec2<u32>()));
  r1 = vec4<f32>(v_314.xy, r1.zw);
  let v_315 = r1.w;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_315);
  r1.w = max(r2.w, r3.z);
  let v_316 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_316.xyz, r1.w);
  let v_317 = (r2.yyy * r1.xyz);
  r2 = vec4<f32>(v_317.xyz, r2.w);
  let v_318 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_318.xyz, r2.w);
  let v_319 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r1 = vec4<f32>(v_319.xyz, r1.w);
  let v_320 = fma(r1.xyz, r0.www, r4.xyz);
  r1 = vec4<f32>(v_320.xyz, r1.w);
  r0.w = (r3.x * r7.x);
  let v_321 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_321.xyz, r0.w);
  let v_322 = v7.xy;
  let v_323 = max(v_322, vec2<f32>(-2147483648.0f));
  let v_324 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_323), vec2<i32>(2147483647i), (v_323 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_322 == v_322))));
  r1 = vec4<f32>(v_324.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t40, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r2.x = (r2.x * r2.x);
  r2.y = dot(v3.xyz, cb1_1.tint_symbol[14u].xyz);
  r1 = textureLoad(t39, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r1.y = (cb7_7.tint_symbol_5[0u].y + 1.0f);
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r1.x = (cb7_7.tint_symbol_5[0u].x / r1.x);
  r1.x = ((-(r1.xxxx)).x + r2.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f >= r1.x)));
  r1.x = (r2.x * r1.x);
  r1.x = (r1.x * -78.43303680419921875f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * cb2_2.tint_symbol_1[15u].x);
  let v_325 = bitcast<u32>(r1.y);
  let v_326 = cb2_2.tint_symbol_1[15u].x;
  r0.w = select(r1.x, v_326, (v_325 != 0u));
  let v_327 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, vec4<f32>(), (v_327 != vec4<u32>()));
  let v_328 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_328.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(position) v_329 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v_329);
  return o0;
}
