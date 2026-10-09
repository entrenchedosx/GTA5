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

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

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

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v5 : vec4<f32>, v : i32) {
  let v_1 = 0i;
  v6.x = bitcast<f32>((v - v_1));
  let v_2 = t0.tint_symbol_4[(bitcast<u32>((bitcast<i32>(v6.x) * 1i)) + 0u)];
  r0.x = bitcast<f32>(vec4<u32>(v_2, v_2, v_2, v_2).x);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 255u));
  r0.y = f32(bitcast<u32>(r0.y));
  r1.y = (r0.y * 0.0039215688593685627f);
  r2.x = v6.x;
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
  let v_34 = (cb1_1.tint_symbol[14u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = -(r7.xyzx);
  let v_36 = fma(cb1_1.tint_symbol[14u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_35.xyz);
  r7 = vec4<f32>(v_36.xyz, r7.w);
  r0.w = dot(r7.xy, r7.xy);
  r0.w = inverseSqrt(r0.w);
  let v_37 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  r8 = vec4<f32>(((v5.xzy * vec3<f32>(1.0f, -1.0f, 1.0f))).xyz, r8.w);
  let v_38 = fma(v0.xzy, vec3<f32>(1.0f, -1.0f, 1.0f), (-(r8.xyzx)).xyz);
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = (r8.yyy * vec3<f32>(0.0f, 0.0f, -1.0f));
  r9 = vec4<f32>(v_39.xyz, r9.w);
  let v_40 = fma(r8.xxx, r7.xyz, r9.xyz);
  r8 = vec4<f32>(v_40.xy, r8.z, v_40.z);
  let v_41 = (cb1_1.tint_symbol[12u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r9 = vec4<f32>(v_41.xyz, r9.w);
  let v_42 = -(r9.xyzx);
  let v_43 = fma(cb1_1.tint_symbol[12u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_42.xyz);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  r0.w = dot(r9.xy, r9.xy);
  r0.w = inverseSqrt(r0.w);
  let v_44 = (r0.www * r9.xyz);
  r9 = vec4<f32>(v_44.xyz, r9.w);
  let v_45 = fma(r8.zzz, r9.xyz, r8.xyw);
  r8 = vec4<f32>(v_45.xyz, r8.w);
  let v_46 = (r8.xyz + v5.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
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
  let v_47 = fma(r8.xyz, r0.www, r6.xyz);
  r0 = vec4<f32>(r0.x, v_47.xyz);
  let v_48 = (r0.zzz * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = fma(r0.yyy, cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r6.xyz);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  let v_50 = fma(r0.www, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r6.xyz);
  r0 = vec4<f32>(r0.x, v_50.xyz);
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(65535u, 65535u, 255u, 255u)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) >> 16u));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 255u));
  r4.z = f32(bitcast<u32>(r1.x));
  let v_51 = vec3<f32>(bitcast<vec3<u32>>(r6.xyw));
  r3 = vec4<f32>(v_51.x, r3.y, v_51.yz);
  r4.x = f32(bitcast<u32>(r6.z));
  let v_52 = (r4.xyz * vec3<f32>(0.0039215688593685627f));
  o1 = vec4<f32>(v_52.xyz, o1.w);
  let v_53 = (r3.xyz * cb11_11.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_53.xyz, r1.w);
  o4.y = (r3.w * 0.0039215688593685627f);
  let v_54 = fma(r1.xyz, vec3<f32>(0.00001525902189314365f), cb11_11.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_54.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = cos(r1.wwww.w);
  r1.w = fma(r1.w, 0.5f, 0.5f);
  r1.w = fma(cb11_11.tint_symbol_2[21u].y, r1.w, 1.0f);
  r1.w = (r1.w * cb11_11.tint_symbol_2[21u].x);
  let v_55 = (r1.ww * cb11_11.tint_symbol_2[20u].xy);
  r3 = vec4<f32>(v_55.xy, r3.zw);
  r5.w = r3.x;
  r4.x = dot(r0.yzw, r5.xyw);
  let v_56 = r5;
  r3 = vec4<f32>(r3.xy, v_56.yz);
  r4.y = dot(r0.wyz, r3.yzw);
  r4.z = dot(r0.yzw, r2.xyz);
  let v_57 = (r1.xyz + r4.xyz);
  r0 = vec4<f32>(r0.x, v_57.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[6u].w);
  let v_58 = -(cb11_11.tint_symbol_2[2u].xxyz);
  let v_59 = (r0.yzw + v_58.yzw);
  r1 = vec4<f32>(r1.x, v_59.xyz);
  r1.w = dot(r1.yzw, r1.yzw);
  r2.w = inverseSqrt(r1.w);
  r1.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[3u].x);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[3u].yyyy)).w, 0.0f, 1.0f);
  r1.w = (r1.w * 0.5f);
  let v_60 = (r1.yz * r2.ww);
  let v_61 = r1;
  r1 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
  let v_62 = (r1.yz * r1.ww);
  let v_63 = r1;
  r1 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  let v_64 = fma(r1.yz, v3.zz, r0.yz);
  let v_65 = r0;
  r0 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  let v_66 = -(cb11_11.tint_symbol_2[4u].xxyx);
  let v_67 = (r0.yz + v_66.yz);
  let v_68 = r1;
  r1 = vec4<f32>(v_68.x, v_67.xy, v_68.w);
  r1.y = dot(cb11_11.tint_symbol_2[5u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[5u].wwww)).y, 0.0f, 1.0f);
  let v_69 = fma(r1.yy, cb11_11.tint_symbol_2[5u].xy, cb11_11.tint_symbol_2[4u].xy);
  let v_70 = r1;
  r1 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
  let v_71 = -(r1.yyzy);
  let v_72 = (r0.yz + v_71.yz);
  let v_73 = r1;
  r1 = vec4<f32>(v_73.x, v_72.xy, v_73.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[6u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[6u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[6u].x);
  r3.x = (cb11_11.tint_symbol_2[6u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_74 = (r1.ww * r1.yz);
  let v_75 = r1;
  r1 = vec4<f32>(v_75.x, v_74.xy, v_75.w);
  let v_76 = (r1.yz * r2.ww);
  let v_77 = r1;
  r1 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
  let v_78 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_78.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[6u].w + -0.25f);
  let v_79 = bitcast<u32>(r3.x);
  let v_80 = r1.y;
  r4.z = select(r1.x, v_80, (v_79 != 0u));
  let v_81 = -(cb11_11.tint_symbol_2[6u].wwww);
  r1.x = (r0.w + v_81.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_82 = bitcast<vec3<u32>>(r1.xxx);
  let v_83 = r4.xyz;
  let v_84 = select(r0.yzw, v_83, (v_82 != vec3<u32>()));
  r1 = vec4<f32>(v_84.xyz, r1.w);
  let v_85 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_86 = r1.xyz;
  let v_87 = select(r0.yzw, v_86, (v_85 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_87.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[9u].w);
  let v_88 = -(cb11_11.tint_symbol_2[7u].xxyx);
  let v_89 = (r0.yz + v_88.yz);
  let v_90 = r1;
  r1 = vec4<f32>(v_90.x, v_89.xy, v_90.w);
  r1.y = dot(cb11_11.tint_symbol_2[8u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[8u].wwww)).y, 0.0f, 1.0f);
  let v_91 = fma(r1.yy, cb11_11.tint_symbol_2[8u].xy, cb11_11.tint_symbol_2[7u].xy);
  let v_92 = r1;
  r1 = vec4<f32>(v_92.x, v_91.xy, v_92.w);
  let v_93 = -(r1.yyzy);
  let v_94 = (r0.yz + v_93.yz);
  let v_95 = r1;
  r1 = vec4<f32>(v_95.x, v_94.xy, v_95.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[9u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[9u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[9u].x);
  r3.x = (cb11_11.tint_symbol_2[9u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_96 = (r1.ww * r1.yz);
  let v_97 = r1;
  r1 = vec4<f32>(v_97.x, v_96.xy, v_97.w);
  let v_98 = (r1.yz * r2.ww);
  let v_99 = r1;
  r1 = vec4<f32>(v_99.x, v_98.xy, v_99.w);
  let v_100 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_100.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[9u].w + -0.25f);
  let v_101 = bitcast<u32>(r3.x);
  let v_102 = r1.y;
  r4.z = select(r1.x, v_102, (v_101 != 0u));
  let v_103 = -(cb11_11.tint_symbol_2[9u].wwww);
  r1.x = (r0.w + v_103.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_104 = bitcast<vec3<u32>>(r1.xxx);
  let v_105 = r4.xyz;
  let v_106 = select(r0.yzw, v_105, (v_104 != vec3<u32>()));
  r1 = vec4<f32>(v_106.xyz, r1.w);
  let v_107 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_108 = r1.xyz;
  let v_109 = select(r0.yzw, v_108, (v_107 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_109.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[12u].w);
  let v_110 = -(cb11_11.tint_symbol_2[10u].xxyx);
  let v_111 = (r0.yz + v_110.yz);
  let v_112 = r1;
  r1 = vec4<f32>(v_112.x, v_111.xy, v_112.w);
  r1.y = dot(cb11_11.tint_symbol_2[11u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[11u].wwww)).y, 0.0f, 1.0f);
  let v_113 = fma(r1.yy, cb11_11.tint_symbol_2[11u].xy, cb11_11.tint_symbol_2[10u].xy);
  let v_114 = r1;
  r1 = vec4<f32>(v_114.x, v_113.xy, v_114.w);
  let v_115 = -(r1.yyzy);
  let v_116 = (r0.yz + v_115.yz);
  let v_117 = r1;
  r1 = vec4<f32>(v_117.x, v_116.xy, v_117.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[12u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[12u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[12u].x);
  r3.x = (cb11_11.tint_symbol_2[12u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_118 = (r1.ww * r1.yz);
  let v_119 = r1;
  r1 = vec4<f32>(v_119.x, v_118.xy, v_119.w);
  let v_120 = (r1.yz * r2.ww);
  let v_121 = r1;
  r1 = vec4<f32>(v_121.x, v_120.xy, v_121.w);
  let v_122 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_122.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[12u].w + -0.25f);
  let v_123 = bitcast<u32>(r3.x);
  let v_124 = r1.y;
  r4.z = select(r1.x, v_124, (v_123 != 0u));
  let v_125 = -(cb11_11.tint_symbol_2[12u].wwww);
  r1.x = (r0.w + v_125.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_126 = bitcast<vec3<u32>>(r1.xxx);
  let v_127 = r4.xyz;
  let v_128 = select(r0.yzw, v_127, (v_126 != vec3<u32>()));
  r1 = vec4<f32>(v_128.xyz, r1.w);
  let v_129 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_130 = r1.xyz;
  let v_131 = select(r0.yzw, v_130, (v_129 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_131.xyz);
  r1.x = ((-(r0.wwww)).x + cb11_11.tint_symbol_2[15u].w);
  let v_132 = -(cb11_11.tint_symbol_2[13u].xxyx);
  let v_133 = (r0.yz + v_132.yz);
  let v_134 = r1;
  r1 = vec4<f32>(v_134.x, v_133.xy, v_134.w);
  r1.y = dot(cb11_11.tint_symbol_2[14u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb11_11.tint_symbol_2[14u].wwww)).y, 0.0f, 1.0f);
  let v_135 = fma(r1.yy, cb11_11.tint_symbol_2[14u].xy, cb11_11.tint_symbol_2[13u].xy);
  let v_136 = r1;
  r1 = vec4<f32>(v_136.x, v_135.xy, v_136.w);
  let v_137 = -(r1.yyzy);
  let v_138 = (r0.yz + v_137.yz);
  let v_139 = r1;
  r1 = vec4<f32>(v_139.x, v_138.xy, v_139.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.w = ((-(r1.wwww)).w + cb11_11.tint_symbol_2[15u].y);
  r2.w = clamp(((r2.wwww * cb11_11.tint_symbol_2[15u].zzzz)).w, 0.0f, 1.0f);
  r1.x = fma(r2.w, r1.x, r0.w);
  r2.w = (r2.w * cb11_11.tint_symbol_2[15u].x);
  r3.x = (cb11_11.tint_symbol_2[15u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_140 = (r1.ww * r1.yz);
  let v_141 = r1;
  r1 = vec4<f32>(v_141.x, v_140.xy, v_141.w);
  let v_142 = (r1.yz * r2.ww);
  let v_143 = r1;
  r1 = vec4<f32>(v_143.x, v_142.xy, v_143.w);
  let v_144 = fma(r1.yz, v3.zz, r0.yz);
  r4 = vec4<f32>(v_144.xy, r4.zw);
  r1.y = (cb11_11.tint_symbol_2[15u].w + -0.25f);
  let v_145 = bitcast<u32>(r3.x);
  let v_146 = r1.y;
  r4.z = select(r1.x, v_146, (v_145 != 0u));
  let v_147 = -(cb11_11.tint_symbol_2[15u].wwww);
  r1.x = (r0.w + v_147.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_148 = bitcast<vec3<u32>>(r1.xxx);
  let v_149 = r4.xyz;
  let v_150 = select(r0.yzw, v_149, (v_148 != vec3<u32>()));
  r1 = vec4<f32>(v_150.xyz, r1.w);
  let v_151 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_152 = r1.xyz;
  let v_153 = select(r0.yzw, v_152, (v_151 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_153.xyz);
  r1 = (r0.zzzz * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.wwww, cb1_1.tint_symbol[10u], r1);
  let v_154 = r0;
  o3 = vec4<f32>(v_154.yzw, o3.w);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  o1.w = v3.x;
  r0 = vec4<f32>(r0.x, ((v1.zzz * vec3<f32>(0.0f, 0.0f, 1.0f))).xyz);
  let v_155 = fma(v1.xxx, r7.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_155.xyz);
  let v_156 = fma(v1.yyy, r9.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_156.xyz);
  let v_157 = (r0.zzz * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz);
  r1 = vec4<f32>(v_157.xyz, r1.w);
  let v_158 = fma(r0.yyy, cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r1.xyz);
  r1 = vec4<f32>(v_158.xyz, r1.w);
  let v_159 = fma(r0.www, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r1.xyz);
  r0 = vec4<f32>(v_159.xyz, r0.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r1.x = dot(r0.xyz, r5.xyw);
  r1.y = dot(r0.zxy, r3.yzw);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_160 = (r0.xxx * r1.xyz);
  o2 = vec4<f32>(v_160.xyz, o2.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec4<f32>, @builtin(instance_index) v_161 : u32) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, i32(v_161));
  return tint_symbol_6(o0, o1, o2, o3, o4);
}
