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

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  let v_1 = textureNumSamples(t3);
  let v_2 = sample_pos[select(0u, ((v_1 + 0u) - 1u), ((0u < v_1) & true))];
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = dpdx(v3.xyz.yxyz);
  r2 = dpdy(v3.xyz.yxyz);
  r2 = (r0.yyyy * r2);
  r0 = fma(r0.xxxx, r1, r2);
  r0 = (r0 + v3.xyz.yxyz);
  let v_3 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.x = (r1.x * cb11_11.tint_symbol_3[0u].w);
  r1.y = (r1.y * cb11_11.tint_symbol_3[1u].w);
  let v_5 = (r1.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r1.xxx, cb11_11.tint_symbol_3[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_8 = (r1.xyz + v_7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = r2.xy;
  let v_11 = max(v_10, vec2<f32>(-2147483648.0f));
  let v_12 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_11), vec2<i32>(2147483647i), (v_11 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_10 == v_10))));
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r1.w = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r2.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r1.w = ((-(r1.wwww)).w + r2.z);
  r1.w = (cb11_11.tint_symbol_3[2u].w / r1.w);
  let v_13 = fma(r1.xyz, r1.www, cb11_11.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0 = (r0 * r1.wwww);
  let v_14 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_14.xy, r2.zw);
  r2.x = textureSample(t14, s14, r2.xyxx.xy).z;
  r2.x = (r2.x * cb12_12.tint_symbol_2[0u].w);
  let v_15 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(r2.x, v_15.xyz);
  let v_16 = &(x0[0u]);
  let v_17 = r2;
  *(v_16) = vec4<f32>(v_17.yzw, (*(v_16)).w);
  let v_18 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = &(x0[1u]);
  let v_20 = r3;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = &(x0[2u]);
  let v_23 = r4;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = &(x0[3u]);
  let v_26 = r5;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  let v_27 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  r3 = vec4<f32>(r3.xy, v_27.xy);
  r2.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_28 = -(r2.xxxx);
  r2.x = fma(r2.w, 0.5f, v_28.x);
  let v_29 = abs(r4.yyyy);
  r2.w = max(v_29.w, abs(r4.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.x)));
  let v_30 = (bitcast<u32>(r2.w) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r3.yyyy);
  r3.x = max(v_32.x, abs(r3.xxxx).x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.x)));
  let v_33 = bitcast<u32>(r3.x);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r2.zzzz);
  r2.y = max(v_34.y, abs(r2.yyyy).y);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.y < r2.x)));
  let v_35 = bitcast<u32>(r2.x);
  r2.x = select(r2.w, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r2.x)];
  r2 = vec4<f32>(r2.x, v_36.xyz);
  r3.x = f32(bitcast<i32>(r2.x));
  r3.y = (r3.x + 0.5f);
  r3.y = (r3.y * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.xxxx)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r3.x = dot(r4, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r6.x = (r2.y + 0.5f);
  r6.y = fma(r2.z, 0.25f, r3.y);
  r2.y = bitcast<f32>(select(0u, 4294967295u, !((r3.x == 0.0f))));
  let v_37 = -(r3.xxxx);
  r2.z = (r2.w + v_37.z);
  let v_38 = dpdx(r6.xyy);
  r7 = vec4<f32>(v_38.xy, r7.z, v_38.z);
  r7.z = dpdx(r2.z);
  let v_39 = dpdy(r6.yxy);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  r8.w = dpdy(r2.z);
  let v_40 = (r7.yw * r8.yw);
  r3 = vec4<f32>(v_40.xy, r3.zw);
  let v_41 = -(r3.xyxx);
  let v_42 = fma(r7.xz, r8.xz, v_41.xy);
  r9 = vec4<f32>(v_42.xy, r9.zw);
  r3.x = (1.0f / r9.x);
  r3.y = (r7.z * r8.y);
  let v_43 = -(r3.yyyy);
  r9.z = fma(r7.x, r8.w, v_43.z);
  let v_44 = (r3.xx * r9.yz);
  r3 = vec4<f32>(v_44.xy, r3.zw);
  let v_45 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_45.xy, r3.zw);
  let v_46 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_46.xy, r3.zw);
  r2.z = fma((-(r4.xxxx)).z, r3.x, r2.z);
  r2.z = fma((-(r4.xxxx)).z, r3.y, r2.z);
  let v_47 = bitcast<u32>(r2.y);
  let v_48 = r2.z;
  r4.z = select(r2.w, v_48, (v_47 != 0u));
  r2.x = bitcast<f32>((4i + bitcast<i32>(r2.x)));
  r2 = (vec4<f32>(0.25f, 1.0f, 0.25f, 1.0f) * cb6_6.tint_symbol_1[bitcast<i32>(r2.x)].yxyz);
  r7 = dpdx(r0.yzwz);
  r7 = (r2.yzwz * r7);
  r0 = dpdy(r0);
  r0 = (r2 * r0);
  let v_49 = (r0.yw * r7.yw);
  r2 = vec4<f32>(v_49.xy, r2.zw);
  let v_50 = -(r2.xyxx);
  let v_51 = fma(r7.xz, r0.xz, v_50.xy);
  r2 = vec4<f32>(v_51.xy, r2.zw);
  r0.x = (1.0f / r2.x);
  r0.y = (r0.y * r7.z);
  let v_52 = -(r0.yyyy);
  r2.z = fma(r7.x, r0.w, v_52.z);
  let v_53 = (r0.xx * r2.yz);
  r0 = vec4<f32>(v_53.xy, r0.zw);
  let v_54 = max(r0.xy, vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_54.xy, r0.zw);
  let v_55 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_55.xy, r0.zw);
  r6.z = dot(r0.xy, r3.zw);
  let v_56 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.34609651565551757812f, 0.32848981022834777832f));
  r4 = vec4<f32>(v_56.xy, r4.zw);
  let v_57 = (r4.xyz + r6.xyz);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  r3 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.79929149150848388672f, 0.20174059271812438965f, -0.03117550723254680634f, 0.17933775484561920166f));
  r6.w = dot(r0.xy, r3.xy);
  let v_58 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.79929149150848388672f, 0.20174059271812438965f));
  r4 = vec4<f32>(v_58.xy, r4.zw);
  let v_59 = (r6.xyw + r4.xyz);
  r7 = vec4<f32>(v_59.xyz, r7.w);
  r3.x = dot(r0.xy, r3.zw);
  let v_60 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.03117550723254680634f, 0.17933775484561920166f));
  r4 = vec4<f32>(v_60.xy, r4.zw);
  let v_61 = r6;
  let v_62 = r3;
  r3 = vec4<f32>(v_62.x, v_61.xy, v_62.w);
  let v_63 = (r3.yzx + r4.xyz);
  r8 = vec4<f32>(v_63.xyz, r8.w);
  r9 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(0.51474946737289428711f, 0.25350245833396911621f, -0.07286971807479858398f, 0.00809734128415584564f));
  r3.w = dot(r0.xy, r9.xy);
  let v_64 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.51474946737289428711f, 0.25350245833396911621f));
  r4 = vec4<f32>(v_64.xy, r4.zw);
  let v_65 = (r3.yzw + r4.xyz);
  r10 = vec4<f32>(v_65.xyz, r10.w);
  r3.x = dot(r0.xy, r9.zw);
  let v_66 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.07286971807479858398f, 0.00809734128415584564f));
  r4 = vec4<f32>(v_66.xy, r4.zw);
  let v_67 = (r3.yzx + r4.xyz);
  r9 = vec4<f32>(v_67.xyz, r9.w);
  r11 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.96978127956390380859f, 0.03452160954475402832f, 0.54554665088653564453f, 0.02412854135036468506f));
  r3.w = dot(r0.xy, r11.xy);
  let v_68 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.96978127956390380859f, 0.03452160954475402832f));
  r4 = vec4<f32>(v_68.xy, r4.zw);
  let v_69 = (r3.yzw + r4.xyz);
  r12 = vec4<f32>(v_69.xyz, r12.w);
  r3.x = dot(r0.xy, r11.zw);
  let v_70 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.54554665088653564453f, 0.02412854135036468506f));
  r4 = vec4<f32>(v_70.xy, r4.zw);
  let v_71 = (r3.yzx + r4.xyz);
  r11 = vec4<f32>(v_71.xyz, r11.w);
  r13 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.02890610881149768829f, -0.13678458333015441895f, -0.47951146960258483887f, -0.24483287334442138672f));
  r3.w = dot(r0.xy, r13.xy);
  let v_72 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.02890610881149768829f, -0.13678458333015441895f));
  r4 = vec4<f32>(v_72.xy, r4.zw);
  let v_73 = (r3.yzw + r4.xyz);
  r14 = vec4<f32>(v_73.xyz, r14.w);
  r3.x = dot(r0.xy, r13.zw);
  let v_74 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.47951146960258483887f, -0.24483287334442138672f));
  r4 = vec4<f32>(v_74.xy, r4.zw);
  let v_75 = (r3.yzx + r4.xyz);
  r13 = vec4<f32>(v_75.xyz, r13.w);
  r15 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(0.7587884068489074707f, -0.1121091991662979126f, 0.33935257792472839355f, -0.24932782351970672607f));
  r3.w = dot(r0.xy, r15.xy);
  let v_76 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.7587884068489074707f, -0.1121091991662979126f));
  r4 = vec4<f32>(v_76.xy, r4.zw);
  let v_77 = (r3.yzw + r4.xyz);
  r16 = vec4<f32>(v_77.xyz, r16.w);
  r3.x = dot(r0.xy, r15.zw);
  let v_78 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.33935257792472839355f, -0.24932782351970672607f));
  r4 = vec4<f32>(v_78.xy, r4.zw);
  let v_79 = (r3.yzx + r4.xyz);
  r15 = vec4<f32>(v_79.xyz, r15.w);
  r17 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(1.07059764862060546875f, 0.2081225961446762085f, 1.29403817653656005859f, -0.01807767525315284729f));
  r3.w = dot(r0.xy, r17.xy);
  let v_80 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.07059764862060546875f, 0.2081225961446762085f));
  r4 = vec4<f32>(v_80.xy, r4.zw);
  let v_81 = (r3.yzw + r4.xyz);
  r18 = vec4<f32>(v_81.xyz, r18.w);
  r3.x = dot(r0.xy, r17.zw);
  let v_82 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.29403817653656005859f, -0.01807767525315284729f));
  r4 = vec4<f32>(v_82.xy, r4.zw);
  let v_83 = (r3.yzx + r4.xyz);
  r17 = vec4<f32>(v_83.xyz, r17.w);
  r19 = (cb6_6.tint_symbol_1[14u].zwzw * vec4<f32>(-0.7475630640983581543f, -0.11397434771060943604f, 0.94772171974182128906f, -0.24876354634761810303f));
  r3.w = dot(r0.xy, r19.xy);
  let v_84 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.7475630640983581543f, -0.11397434771060943604f));
  r4 = vec4<f32>(v_84.xy, r4.zw);
  let v_85 = (r3.yzw + r4.xyz);
  r20 = vec4<f32>(v_85.xyz, r20.w);
  r3.x = dot(r0.xy, r19.zw);
  let v_86 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.94772171974182128906f, -0.24876354634761810303f));
  r4 = vec4<f32>(v_86.xy, r4.zw);
  let v_87 = (r3.yzx + r4.xyz);
  r19 = vec4<f32>(v_87.xyz, r19.w);
  let v_88 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r0 = vec4<f32>(r0.xy, v_88.xy);
  r3.w = dot(r0.xy, r0.zw);
  let v_89 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.34315288066864013672f, -0.08858405798673629761f));
  r4 = vec4<f32>(v_89.xy, r4.zw);
  let v_90 = (r3.yzw + r4.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_91.xy, r2.z);
  let v_92 = r7.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_92.xy, r7.z);
  let v_93 = r8.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_93.xy, r8.z);
  let v_94 = r10.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_94.xy, r10.z);
  let v_95 = r9.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_95.xy, r9.z);
  let v_96 = r12.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_96.xy, r12.z);
  let v_97 = r11.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_97.xy, r11.z);
  let v_98 = r14.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_98.xy, r14.z);
  let v_99 = r13.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_99.xy, r13.z);
  let v_100 = r16.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_100.xy, r16.z);
  let v_101 = r15.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_101.xy, r15.z);
  let v_102 = r18.xyxx;
  r4.w = textureSampleCompareLevel(t15, s15, v_102.xy, r18.z);
  let v_103 = r17.xyxx;
  r7.x = textureSampleCompareLevel(t15, s15, v_103.xy, r17.z);
  let v_104 = r20.xyxx;
  r7.y = textureSampleCompareLevel(t15, s15, v_104.xy, r20.z);
  let v_105 = r19.xyxx;
  r7.z = textureSampleCompareLevel(t15, s15, v_105.xy, r19.z);
  let v_106 = r0.xyxx;
  r7.w = textureSampleCompareLevel(t15, s15, v_106.xy, r0.z);
  r0 = (r2 + r3);
  r0 = (r4 + r0);
  r0 = (r7 + r0);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.0625f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r6.xyxx.xy).w;
    r0.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r1.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_107 = abs(r5.yyyy);
  r0.w = max(v_107.w, abs(r5.xxxx).w);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_108 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_108.xy, r0.zw);
  let v_109 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_109.xy, r0.zw);
  let v_110 = min(r0.xy, vec2<f32>(1.0f));
  let v_111 = r0;
  r0 = vec4<f32>(v_111.x, v_110.xy, v_111.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r0.z * r0.y);
  let v_112 = bitcast<u32>(r0.w);
  let v_113 = r1.w;
  r0.x = select(r0.y, v_113, (v_112 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_114 = r2;
  r2 = vec4<f32>(v_114.x, 0.0f, v_114.z, 0.5f);
  let v_115 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_116 = r0;
  r0 = vec4<f32>(v_116.x, v_115.x, v_116.z, v_115.y);
  r2.z = textureSample(t5, s5, r0.ywyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.y = (r0.w * r0.y);
  let v_117 = (r0.yy * r0.xz);
  r0 = vec4<f32>(v_117.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
