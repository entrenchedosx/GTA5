diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb1_struct;

struct cb23_struct {
  tint_symbol_2 : array<vec4<f32>, 23u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb23_struct;

struct cb24_struct {
  tint_symbol_3 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb24_struct;

struct tint_symbol_5 {
  tint_symbol_4 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_5;

@group(0u) @binding(33u) var<storage, read> t1 : tint_symbol_5;

var<private> v5 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v5.x = bitcast<f32>((v - v_1));
  let v_2 = t0.tint_symbol_4[(bitcast<u32>((bitcast<i32>(v5.x) * 1i)) + 0u)];
  r0.x = bitcast<f32>(vec4<u32>(v_2, v_2, v_2, v_2).x);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 255u));
  r0.y = f32(bitcast<u32>(r0.y));
  r1.y = (r0.y * 0.0039215688593685627f);
  r2.x = v5.x;
  let v_3 = r2;
  r2 = vec4<f32>(v_3.x, vec2<f32>(1.0f), v_3.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 24u));
  r1.x = bitcast<f32>((bitcast<u32>(r0.x) & 65535u));
  r0.x = f32(bitcast<u32>(r0.y));
  r1.z = (r0.x * 0.0039215688593685627f);
  let v_4 = bitcast<vec3<u32>>(cb11_11.tint_symbol_2[22u].www);
  let v_5 = r1.xyz;
  let v_6 = select(r2.xyz, v_5, (v_4 != vec3<u32>()));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
  let v_8 = t1.tint_symbol_4[v_7];
  let v_9 = t1.tint_symbol_4[(v_7 + 1u)];
  let v_10 = t1.tint_symbol_4[(v_7 + 2u)];
  let v_11 = t1.tint_symbol_4[(v_7 + 3u)];
  r1 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_8, v_8, v_8, v_8).x, vec4<u32>(v_9, v_9, v_9, v_9).x, vec4<u32>(v_10, v_10, v_10, v_10).x, vec4<u32>(v_11, v_11, v_11, v_11).x));
  r2.w = bitcast<f32>((bitcast<u32>(r1.z) >> 8u));
  let v_12 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) >> vec2<u32>(16u)));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.yw) & vec2<u32>(255u)));
  let v_14 = r2;
  r2 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r3.y = f32(bitcast<u32>(r2.x));
  r2.x = f32(bitcast<u32>(r2.y));
  r4.y = f32(bitcast<u32>(r2.z));
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) >> 24u));
  r2.y = f32(bitcast<u32>(r0.w));
  let v_15 = fma(r2.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.z = sqrt(r0.w);
  r0.w = fma(r2.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.w = fma(r0.w, r2.z, -0.21211439371109008789f);
  r0.w = fma(r0.w, r2.z, 1.57072877883911132812f);
  r2.w = ((-(r2.zzzz)).w + 1.0f);
  let v_16 = fma((-(r2.zzzz)).xyz, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r2.w = sqrt(r2.w);
  r0.w = (r0.w * r2.w);
  r0.w = (r0.w * cb11_11.tint_symbol_2[2u].w);
  let v_17 = r0.wwww;
  r5.x = sin(v_17.x);
  r6.x = cos(v_17.x);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = (r5.xxx * r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r6.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = (r2.yz * vec2<f32>(1.0f, 0.0f));
  r5 = vec4<f32>(v_21.xy, r5.zw);
  let v_22 = -(r5.xyxx);
  let v_23 = fma(r2.zx, vec2<f32>(0.0f, 1.0f), v_22.xy);
  r5 = vec4<f32>(v_23.xy, r5.zw);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = sqrt(r0.w);
  let v_24 = (r5.xy / r0.ww);
  r5 = vec4<f32>(v_24.xy, r5.zw);
  r0.w = ((-(r2.zzzz)).w + 1.0f);
  r2.w = (r5.x * r0.w);
  r5.x = fma(r2.w, r5.x, r2.z);
  r5.z = (r5.y * r2.w);
  r2.w = (r5.y * r5.y);
  r5.w = fma(r2.w, r0.w, r2.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.z < 1.0f)));
  let v_25 = (r2.xyz * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = bitcast<vec3<u32>>(r0.www);
  let v_27 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz, (v_26 != vec3<u32>()));
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = bitcast<vec3<u32>>(r0.www);
  let v_29 = select(vec3<f32>(1.0f, 0.0f, 1.0f), r5.xzw, (v_28 != vec3<u32>()));
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r0.w = (v2.y * 6.28318500518798828125f);
  let v_30 = fma(cb11_11.tint_symbol_2[16u].zzz, cb11_11.tint_symbol_2[17u].zzw, r0.www);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  let v_31 = sin(r6.xyzx.xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  r0.w = ((-(v2.zzzz)).w + 1.0f);
  r7.z = (r0.w * cb11_11.tint_symbol_2[17u].y);
  let v_32 = (v2.xx * cb11_11.tint_symbol_2[17u].xx);
  r7 = vec4<f32>(v_32.xy, r7.zw);
  let v_33 = (r6.xyz * r7.xyz);
  r6 = vec4<f32>(v_33.xyz, r6.w);
  r0.w = bitcast<f32>((bitcast<u32>(r1.z) >> 24u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = (r0.w * 0.0039215688593685627f);
  r2.w = ((-(cb11_11.tint_symbol_2[19u].xxxx)).w + cb11_11.tint_symbol_2[19u].y);
  r0.w = fma(r2.w, r0.w, cb11_11.tint_symbol_2[19u].x);
  r2.w = (cb11_11.tint_symbol_2[19u].z * cb11_11.tint_symbol_2[19u].y);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 7u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r2.w = dot(cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].ww, r2.ww);
  r2.w = fma((-(cb11_11.tint_symbol_2[19u].yyyy)).w, cb11_11.tint_symbol_2[19u].z, r2.w);
  r0.w = (r0.w + r2.w);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r0.z * r0.w);
  o4.x = (r0.z * r0.y);
  let v_34 = fma(v0.xyz, r0.www, r6.xyz);
  r0 = vec4<f32>(r0.x, v_34.xyz);
  let v_35 = (r0.zzz * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = fma(r0.yyy, cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r6.xyz);
  r6 = vec4<f32>(v_36.xyz, r6.w);
  let v_37 = fma(r0.www, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r6.xyz);
  r0 = vec4<f32>(r0.x, v_37.xyz);
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(65535u, 65535u, 255u, 255u)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) >> 16u));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 255u));
  r4.z = f32(bitcast<u32>(r1.x));
  let v_38 = vec3<f32>(bitcast<vec3<u32>>(r6.xyw));
  r3 = vec4<f32>(v_38.x, r3.y, v_38.yz);
  r4.x = f32(bitcast<u32>(r6.z));
  let v_39 = (r4.xyz * vec3<f32>(0.0039215688593685627f));
  o1 = vec4<f32>(v_39.xyz, o1.w);
  let v_40 = (r3.xyz * cb11_11.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  o4.y = (r3.w * 0.0039215688593685627f);
  let v_41 = fma(r1.xyz, vec3<f32>(0.00001525902189314365f), cb11_11.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = cos(r1.wwww.w);
  r1.w = fma(r1.w, 0.5f, 0.5f);
  r1.w = fma(cb11_11.tint_symbol_2[21u].y, r1.w, 1.0f);
  r1.w = (r1.w * cb11_11.tint_symbol_2[21u].x);
  let v_42 = (r1.ww * cb11_11.tint_symbol_2[20u].xy);
  r3 = vec4<f32>(v_42.xy, r3.zw);
  r5.w = r3.x;
  r4.x = dot(r0.yzw, r5.xyw);
  let v_43 = r5;
  r3 = vec4<f32>(r3.xy, v_43.yz);
  r4.y = dot(r0.wyz, r3.yzw);
  r4.z = dot(r0.yzw, r2.xyz);
  let v_44 = (r1.xyz + r4.xyz);
  r0 = vec4<f32>(r0.x, v_44.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[6u].w);
  let v_45 = -(cb11_11.tint_symbol_2[2u].xxyz);
  let v_46 = (r0.yzw + v_45.yzw);
  r1 = vec4<f32>(r1.x, v_46.xyz);
  r1.w = dot(r1.yzw, r1.yzw);
  r2.w = inverseSqrt(r1.w);
  r1.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[3u].x);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[3u].yyyy)).w, 0.0f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_47 = (r1.yz * r2.ww);
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  let v_49 = (r1.yz * r1.ww);
  let v_50 = r1;
  r1 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  let v_51 = fma(r1.yz, v3.zz, r0.yz);
  let v_52 = r0;
  r0 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  let v_53 = -(cb11_11.tint_symbol_2[4u].xxyx);
  let v_54 = (r0.yz + v_53.yz);
  let v_55 = r1;
  r1 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
  r1.y = dot(cb11_11.tint_symbol_2[5u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[5u].wwww)).y, 0.0f, 1.0f);
  let v_56 = fma(r1.yy, cb11_11.tint_symbol_2[5u].xy, cb11_11.tint_symbol_2[4u].xy);
  let v_57 = r1;
  r1 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = -(r1.yyzy);
  let v_59 = (r0.yz + v_58.yz);
  let v_60 = r1;
  r1 = vec4<f32>(v_60.x, v_59.xy, v_60.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[6u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[6u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[6u].x);
  r3.x = (cb11_11.tint_symbol_2[6u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_61 = (r1.ww * r1.yz);
  let v_62 = r1;
  r1 = vec4<f32>(v_62.x, v_61.xy, v_62.w);
  let v_63 = (r1.yz * r2.ww);
  let v_64 = r1;
  r1 = vec4<f32>(v_64.x, v_63.xy, v_64.w);
  let v_65 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_65.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[6u].w + -0.25f);
  let v_66 = bitcast<u32>(r3.x);
  let v_67 = r1.y;
  r4.z = select(r1.x, v_67, (v_66 != 0u));
  let v_68 = -(cb11_11.tint_symbol_2[6u].wwww);
  r1.x = (r0.w + v_68.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_69 = bitcast<vec3<u32>>(r1.xxx);
  let v_70 = r4.xyz;
  let v_71 = select(r0.yzw, v_70, (v_69 != vec3<u32>()));
  r1 = vec4<f32>(v_71.xyz, r1.w);
  let v_72 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_73 = r1.xyz;
  let v_74 = select(r0.yzw, v_73, (v_72 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_74.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[9u].w);
  let v_75 = -(cb11_11.tint_symbol_2[7u].xxyx);
  let v_76 = (r0.yz + v_75.yz);
  let v_77 = r1;
  r1 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
  r1.y = dot(cb11_11.tint_symbol_2[8u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[8u].wwww)).y, 0.0f, 1.0f);
  let v_78 = fma(r1.yy, cb11_11.tint_symbol_2[8u].xy, cb11_11.tint_symbol_2[7u].xy);
  let v_79 = r1;
  r1 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
  let v_80 = -(r1.yyzy);
  let v_81 = (r0.yz + v_80.yz);
  let v_82 = r1;
  r1 = vec4<f32>(v_82.x, v_81.xy, v_82.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[9u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[9u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[9u].x);
  r3.x = (cb11_11.tint_symbol_2[9u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_83 = (r1.ww * r1.yz);
  let v_84 = r1;
  r1 = vec4<f32>(v_84.x, v_83.xy, v_84.w);
  let v_85 = (r1.yz * r2.ww);
  let v_86 = r1;
  r1 = vec4<f32>(v_86.x, v_85.xy, v_86.w);
  let v_87 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_87.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[9u].w + -0.25f);
  let v_88 = bitcast<u32>(r3.x);
  let v_89 = r1.y;
  r4.z = select(r1.x, v_89, (v_88 != 0u));
  let v_90 = -(cb11_11.tint_symbol_2[9u].wwww);
  r1.x = (r0.w + v_90.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_91 = bitcast<vec3<u32>>(r1.xxx);
  let v_92 = r4.xyz;
  let v_93 = select(r0.yzw, v_92, (v_91 != vec3<u32>()));
  r1 = vec4<f32>(v_93.xyz, r1.w);
  let v_94 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_95 = r1.xyz;
  let v_96 = select(r0.yzw, v_95, (v_94 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_96.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[12u].w);
  let v_97 = -(cb11_11.tint_symbol_2[10u].xxyx);
  let v_98 = (r0.yz + v_97.yz);
  let v_99 = r1;
  r1 = vec4<f32>(v_99.x, v_98.xy, v_99.w);
  r1.y = dot(cb11_11.tint_symbol_2[11u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[11u].wwww)).y, 0.0f, 1.0f);
  let v_100 = fma(r1.yy, cb11_11.tint_symbol_2[11u].xy, cb11_11.tint_symbol_2[10u].xy);
  let v_101 = r1;
  r1 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
  let v_102 = -(r1.yyzy);
  let v_103 = (r0.yz + v_102.yz);
  let v_104 = r1;
  r1 = vec4<f32>(v_104.x, v_103.xy, v_104.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[12u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[12u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[12u].x);
  r3.x = (cb11_11.tint_symbol_2[12u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_105 = (r1.ww * r1.yz);
  let v_106 = r1;
  r1 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
  let v_107 = (r1.yz * r2.ww);
  let v_108 = r1;
  r1 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
  let v_109 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_109.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[12u].w + -0.25f);
  let v_110 = bitcast<u32>(r3.x);
  let v_111 = r1.y;
  r4.z = select(r1.x, v_111, (v_110 != 0u));
  let v_112 = -(cb11_11.tint_symbol_2[12u].wwww);
  r1.x = (r0.w + v_112.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_113 = bitcast<vec3<u32>>(r1.xxx);
  let v_114 = r4.xyz;
  let v_115 = select(r0.yzw, v_114, (v_113 != vec3<u32>()));
  r1 = vec4<f32>(v_115.xyz, r1.w);
  let v_116 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_117 = r1.xyz;
  let v_118 = select(r0.yzw, v_117, (v_116 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_118.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[15u].w);
  let v_119 = -(cb11_11.tint_symbol_2[13u].xxyx);
  let v_120 = (r0.yz + v_119.yz);
  let v_121 = r1;
  r1 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  r1.y = dot(cb11_11.tint_symbol_2[14u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[14u].wwww)).y, 0.0f, 1.0f);
  let v_122 = fma(r1.yy, cb11_11.tint_symbol_2[14u].xy, cb11_11.tint_symbol_2[13u].xy);
  let v_123 = r1;
  r1 = vec4<f32>(v_123.x, v_122.xy, v_123.w);
  let v_124 = -(r1.yyzy);
  let v_125 = (r0.yz + v_124.yz);
  let v_126 = r1;
  r1 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[15u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[15u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[15u].x);
  r3.x = (cb11_11.tint_symbol_2[15u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_127 = (r1.ww * r1.yz);
  let v_128 = r1;
  r1 = vec4<f32>(v_128.x, v_127.xy, v_128.w);
  let v_129 = (r1.yz * r2.ww);
  let v_130 = r1;
  r1 = vec4<f32>(v_130.x, v_129.xy, v_130.w);
  let v_131 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_131.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[15u].w + -0.25f);
  let v_132 = bitcast<u32>(r3.x);
  let v_133 = r1.y;
  r4.z = select(r1.x, v_133, (v_132 != 0u));
  let v_134 = -(cb11_11.tint_symbol_2[15u].wwww);
  r1.x = (r0.w + v_134.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_135 = bitcast<vec3<u32>>(r1.xxx);
  let v_136 = r4.xyz;
  let v_137 = select(r0.yzw, v_136, (v_135 != vec3<u32>()));
  r1 = vec4<f32>(v_137.xyz, r1.w);
  let v_138 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_139 = r1.xyz;
  let v_140 = select(r0.yzw, v_139, (v_138 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_140.xyz);
  r1 = (r0.zzzz * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.wwww, cb1_1.tint_symbol[10u], r1);
  let v_141 = r0;
  o3 = vec4<f32>(v_141.yzw, o3.w);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  o1.w = v3.x;
  let v_142 = (v1.yyy * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz);
  r0 = vec4<f32>(r0.x, v_142.xyz);
  let v_143 = fma(v1.xxx, cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_143.xyz);
  let v_144 = fma(v1.zzz, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r0.yzw);
  r0 = vec4<f32>(v_144.xyz, r0.w);
  r1.x = dot(r0.xyz, r5.xyw);
  r1.y = dot(r0.zxy, r3.yzw);
  r1.z = dot(r0.xyz, r2.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_145 = (r0.xxx * r1.xyz);
  o2 = vec4<f32>(v_145.xyz, o2.w);
  o2.w = v4.x;
  o3.w = v4.y;
}

struct tint_symbol_6 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @builtin(instance_index) v_146 : u32) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, i32(v_146));
  return tint_symbol_6(o0, o1, o2, o3, o4);
}
