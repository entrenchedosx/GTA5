diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

@group(0u) @binding(10u) var<uniform> cb10_10 : cb23_struct;

struct cb1280_struct {
  tint_symbol_3 : array<vec4<f32>, 1280u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb1280_struct;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v6.x = bitcast<f32>((v - v_1));
  r0.x = (cb10_10.tint_symbol_2[6u].w + -0.25f);
  r1.w = 1.0f;
  r0.y = (v2.y * 6.28318500518798828125f);
  r2 = bitcast<vec4<f32>>(((bitcast<vec4<i32>>(v6.xxxx) * vec4<i32>(5i)) + vec4<i32>(1i, 2i, 3i, 4i)));
  let v_2 = fma(cb10_10.tint_symbol_2[16u].zzz, cb5_5.tint_symbol_3[bitcast<i32>(r2.w)].zzw, r0.yyy);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = sin(r0.yyzw.yzw);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  r3.x = ((-(v2.zzzz)).x + 1.0f);
  r3.z = (r3.x * cb5_5.tint_symbol_3[bitcast<i32>(r2.w)].y);
  let v_4 = (v2.xx * cb5_5.tint_symbol_3[bitcast<i32>(r2.w)].xx);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = fma(r0.yzw, r3.xyz, v0.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.y = bitcast<f32>((bitcast<i32>(v6.x) * 5i));
  r3.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].x;
  r3.y = cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].x;
  r3.z = cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].x;
  r3.w = cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].x;
  r3.x = dot(r1, r3);
  r4.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].y;
  r4.y = cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].y;
  r4.z = cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].y;
  r4.w = cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].y;
  r3.y = dot(r1, r4);
  r4.x = cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].z;
  r4.y = cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].z;
  r4.z = cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].z;
  r4.w = cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].z;
  r3.z = dot(r1, r4);
  let v_6 = -(cb10_10.tint_symbol_2[1u].xyzx);
  let v_7 = (r3.xyz + v_6.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = ((-(r0.zzzz)).z + cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].w);
  r0.z = clamp(((r0.zzzz * cb5_5.tint_symbol_3[bitcast<i32>(r2.z)].wwww)).z, 0.0f, 1.0f);
  r0.z = (r0.z * 0.5f);
  let v_8 = (r1.xy * r0.zz);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = fma(r0.zw, v3.zz, r3.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = r3;
  o3 = vec4<f32>(v_10.xyz, o3.w);
  let v_11 = -(cb10_10.tint_symbol_2[4u].xxxy);
  let v_12 = (r1.xy + v_11.zw);
  r0 = vec4<f32>(r0.xy, v_12.xy);
  r0.z = dot(cb10_10.tint_symbol_2[5u].xy, r0.zw);
  r0.z = clamp(((r0.zzzz * cb10_10.tint_symbol_2[5u].wwww)).z, 0.0f, 1.0f);
  let v_13 = fma(r0.zz, cb10_10.tint_symbol_2[5u].xy, cb10_10.tint_symbol_2[4u].xy);
  r0 = vec4<f32>(r0.xy, v_13.xy);
  let v_14 = ((-(r0.zzzw)).zw + r1.xy);
  r0 = vec4<f32>(r0.xy, v_14.xy);
  r1.w = dot(r0.zw, r0.zw);
  r2.z = ((-(r1.wwww)).z + cb10_10.tint_symbol_2[6u].y);
  r2.z = clamp(((r2.zzzz * cb10_10.tint_symbol_2[6u].zzzz)).z, 0.0f, 1.0f);
  r2.w = ((-(r3.zzzz)).w + cb10_10.tint_symbol_2[6u].w);
  r2.w = fma(r2.z, r2.w, r3.z);
  r2.z = (r2.z * cb10_10.tint_symbol_2[6u].x);
  r3.x = (cb10_10.tint_symbol_2[6u].x * 0.5f);
  r3.x = (r3.x * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r0.zw * r1.ww);
  r0 = vec4<f32>(r0.xy, v_15.xy);
  let v_16 = (r0.zw * r2.zz);
  r0 = vec4<f32>(r0.xy, v_16.xy);
  let v_17 = fma(r0.zw, v3.zz, r1.xy);
  r4 = vec4<f32>(v_17.xy, r4.zw);
  let v_18 = bitcast<u32>(r3.x);
  let v_19 = r0.x;
  r4.z = select(r2.w, v_19, (v_18 != 0u));
  let v_20 = -(cb10_10.tint_symbol_2[6u].wwww);
  r0.x = (r3.z + v_20.x);
  r1.z = r3.z;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.xxxx).x)));
  let v_21 = bitcast<vec3<u32>>(r0.xxx);
  let v_22 = r4.xyz;
  let v_23 = select(r1.xyz, v_22, (v_21 != vec3<u32>()));
  r0 = vec4<f32>(v_23.x, r0.y, v_23.yz);
  let v_24 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_25 = r0.xzw;
  let v_26 = select(r1.xyz, v_25, (v_24 != vec3<u32>()));
  r0 = vec4<f32>(v_26.x, r0.y, v_26.yz);
  r1.x = ((-(r0.wwww)).x + cb10_10.tint_symbol_2[9u].w);
  let v_27 = -(cb10_10.tint_symbol_2[7u].xxyx);
  let v_28 = (r0.xz + v_27.yz);
  let v_29 = r1;
  r1 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r1.y = dot(cb10_10.tint_symbol_2[8u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb10_10.tint_symbol_2[8u].wwww)).y, 0.0f, 1.0f);
  let v_30 = fma(r1.yy, cb10_10.tint_symbol_2[8u].xy, cb10_10.tint_symbol_2[7u].xy);
  let v_31 = r1;
  r1 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  let v_32 = -(r1.yyzy);
  let v_33 = (r0.xz + v_32.yz);
  let v_34 = r1;
  r1 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.z = ((-(r1.wwww)).z + cb10_10.tint_symbol_2[9u].y);
  r2.z = clamp(((r2.zzzz * cb10_10.tint_symbol_2[9u].zzzz)).z, 0.0f, 1.0f);
  r1.x = fma(r2.z, r1.x, r0.w);
  r2.z = (r2.z * cb10_10.tint_symbol_2[9u].x);
  r2.w = (cb10_10.tint_symbol_2[9u].x * 0.5f);
  r2.w = (r2.w * r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
  r1.w = inverseSqrt(r1.w);
  let v_35 = (r1.ww * r1.yz);
  let v_36 = r1;
  r1 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  let v_37 = (r1.yz * r2.zz);
  let v_38 = r1;
  r1 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  let v_39 = fma(r1.yz, v3.zz, r0.xz);
  r3 = vec4<f32>(v_39.xy, r3.zw);
  r1.y = (cb10_10.tint_symbol_2[9u].w + -0.25f);
  let v_40 = bitcast<u32>(r2.w);
  let v_41 = r1.y;
  r3.z = select(r1.x, v_41, (v_40 != 0u));
  let v_42 = -(cb10_10.tint_symbol_2[9u].wwww);
  r1.x = (r0.w + v_42.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_43 = bitcast<vec3<u32>>(r1.xxx);
  let v_44 = r3.xyz;
  let v_45 = select(r0.xzw, v_44, (v_43 != vec3<u32>()));
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_47 = r1.xyz;
  let v_48 = select(r0.xzw, v_47, (v_46 != vec3<u32>()));
  r0 = vec4<f32>(v_48.x, r0.y, v_48.yz);
  r1.x = ((-(r0.wwww)).x + cb10_10.tint_symbol_2[12u].w);
  let v_49 = -(cb10_10.tint_symbol_2[10u].xxyx);
  let v_50 = (r0.xz + v_49.yz);
  let v_51 = r1;
  r1 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  r1.y = dot(cb10_10.tint_symbol_2[11u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb10_10.tint_symbol_2[11u].wwww)).y, 0.0f, 1.0f);
  let v_52 = fma(r1.yy, cb10_10.tint_symbol_2[11u].xy, cb10_10.tint_symbol_2[10u].xy);
  let v_53 = r1;
  r1 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  let v_54 = -(r1.yyzy);
  let v_55 = (r0.xz + v_54.yz);
  let v_56 = r1;
  r1 = vec4<f32>(v_56.x, v_55.xy, v_56.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.z = ((-(r1.wwww)).z + cb10_10.tint_symbol_2[12u].y);
  r2.z = clamp(((r2.zzzz * cb10_10.tint_symbol_2[12u].zzzz)).z, 0.0f, 1.0f);
  r1.x = fma(r2.z, r1.x, r0.w);
  r2.z = (r2.z * cb10_10.tint_symbol_2[12u].x);
  r2.w = (cb10_10.tint_symbol_2[12u].x * 0.5f);
  r2.w = (r2.w * r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
  r1.w = inverseSqrt(r1.w);
  let v_57 = (r1.ww * r1.yz);
  let v_58 = r1;
  r1 = vec4<f32>(v_58.x, v_57.xy, v_58.w);
  let v_59 = (r1.yz * r2.zz);
  let v_60 = r1;
  r1 = vec4<f32>(v_60.x, v_59.xy, v_60.w);
  let v_61 = fma(r1.yz, v3.zz, r0.xz);
  r3 = vec4<f32>(v_61.xy, r3.zw);
  r1.y = (cb10_10.tint_symbol_2[12u].w + -0.25f);
  let v_62 = bitcast<u32>(r2.w);
  let v_63 = r1.y;
  r3.z = select(r1.x, v_63, (v_62 != 0u));
  let v_64 = -(cb10_10.tint_symbol_2[12u].wwww);
  r1.x = (r0.w + v_64.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_65 = bitcast<vec3<u32>>(r1.xxx);
  let v_66 = r3.xyz;
  let v_67 = select(r0.xzw, v_66, (v_65 != vec3<u32>()));
  r1 = vec4<f32>(v_67.xyz, r1.w);
  let v_68 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_69 = r1.xyz;
  let v_70 = select(r0.xzw, v_69, (v_68 != vec3<u32>()));
  r0 = vec4<f32>(v_70.x, r0.y, v_70.yz);
  r1.x = ((-(r0.wwww)).x + cb10_10.tint_symbol_2[15u].w);
  let v_71 = -(cb10_10.tint_symbol_2[13u].xxyx);
  let v_72 = (r0.xz + v_71.yz);
  let v_73 = r1;
  r1 = vec4<f32>(v_73.x, v_72.xy, v_73.w);
  r1.y = dot(cb10_10.tint_symbol_2[14u].xy, r1.yz);
  r1.y = clamp(((r1.yyyy * cb10_10.tint_symbol_2[14u].wwww)).y, 0.0f, 1.0f);
  let v_74 = fma(r1.yy, cb10_10.tint_symbol_2[14u].xy, cb10_10.tint_symbol_2[13u].xy);
  let v_75 = r1;
  r1 = vec4<f32>(v_75.x, v_74.xy, v_75.w);
  let v_76 = -(r1.yyzy);
  let v_77 = (r0.xz + v_76.yz);
  let v_78 = r1;
  r1 = vec4<f32>(v_78.x, v_77.xy, v_78.w);
  r1.w = dot(r1.yz, r1.yz);
  r2.z = ((-(r1.wwww)).z + cb10_10.tint_symbol_2[15u].y);
  r2.z = clamp(((r2.zzzz * cb10_10.tint_symbol_2[15u].zzzz)).z, 0.0f, 1.0f);
  r1.x = fma(r2.z, r1.x, r0.w);
  r2.z = (r2.z * cb10_10.tint_symbol_2[15u].x);
  r2.w = (cb10_10.tint_symbol_2[15u].x * 0.5f);
  r2.w = (r2.w * r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
  r1.w = inverseSqrt(r1.w);
  let v_79 = (r1.ww * r1.yz);
  let v_80 = r1;
  r1 = vec4<f32>(v_80.x, v_79.xy, v_80.w);
  let v_81 = (r1.yz * r2.zz);
  let v_82 = r1;
  r1 = vec4<f32>(v_82.x, v_81.xy, v_82.w);
  let v_83 = fma(r1.yz, v3.zz, r0.xz);
  r3 = vec4<f32>(v_83.xy, r3.zw);
  r1.y = (cb10_10.tint_symbol_2[15u].w + -0.25f);
  let v_84 = bitcast<u32>(r2.w);
  let v_85 = r1.y;
  r3.z = select(r1.x, v_85, (v_84 != 0u));
  let v_86 = -(cb10_10.tint_symbol_2[15u].wwww);
  r1.x = (r0.w + v_86.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r1.xxxx).x)));
  let v_87 = bitcast<vec3<u32>>(r1.xxx);
  let v_88 = r3.xyz;
  let v_89 = select(r0.xzw, v_88, (v_87 != vec3<u32>()));
  r1 = vec4<f32>(v_89.xyz, r1.w);
  let v_90 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_91 = r1.xyz;
  let v_92 = select(r0.xzw, v_91, (v_90 != vec3<u32>()));
  r0 = vec4<f32>(v_92.x, r0.y, v_92.yz);
  r1 = (r0.zzzz * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.wwww, cb1_1.tint_symbol[10u], r1);
  let v_93 = -(cb10_10.tint_symbol_2[0u].xxyx);
  let v_94 = (r0.xz + v_93.xz);
  let v_95 = r0;
  r0 = vec4<f32>(v_94.x, v_95.y, v_94.y, v_95.w);
  r0.x = dot(r0.xz, r0.xz);
  r0.x = clamp(fma(r0.xxxx, cb10_10.tint_symbol_2[16u].yyyy, cb10_10.tint_symbol_2[16u].xxxx).x, 0.0f, 1.0f);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  r1.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].w) >> 16u));
  r1.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].w) >> 8u));
  let v_96 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & vec2<u32>(255u)));
  r0 = vec4<f32>(r0.xy, v_96.xy);
  let v_97 = vec2<f32>(bitcast<vec2<u32>>(r0.zw));
  r1 = vec4<f32>(v_97.xy, r1.zw);
  r0.z = bitcast<f32>((255u & bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].w)));
  r1.z = f32(bitcast<u32>(r0.z));
  r0.z = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].w) >> 24u));
  r1.w = f32(bitcast<u32>(r0.z));
  r1 = (r1 * vec4<f32>(0.0039215688593685627f));
  let v_98 = r1;
  o1 = vec4<f32>(v_98.xyz, o1.w);
  r0.x = (r0.x * r1.w);
  o1.w = (r0.x * cb10_10.tint_symbol_2[22u].w);
  let v_99 = (v1.yyy * cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].xyz);
  r0 = vec4<f32>(v_99.x, r0.y, v_99.yz);
  let v_100 = fma(v1.xxx, cb5_5.tint_symbol_3[bitcast<i32>(r0.y)].xyz, r0.xzw);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = fma(v1.zzz, cb5_5.tint_symbol_3[bitcast<i32>(r2.y)].xyz, r0.xyz);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_102 = (r0.www * r0.xyz);
  o2 = vec4<f32>(v_102.xyz, o2.w);
  o2.w = v4.x;
  o3.w = v4.y;
  r0.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].w) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].w) >> 8u));
  let v_103 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(255u)));
  r0 = vec4<f32>(v_103.xy, r0.zw);
  let v_104 = vec2<f32>(bitcast<vec2<u32>>(r0.xy));
  r0 = vec4<f32>(v_104.xy, r0.zw);
  r1.x = bitcast<f32>((255u & bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].w)));
  r1.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_3[bitcast<i32>(r2.x)].w) >> 24u));
  let v_105 = vec2<f32>(bitcast<vec2<u32>>(r1.xy));
  r0 = vec4<f32>(r0.xy, v_105.xy);
  r0 = (r0 * vec4<f32>(0.0039215688593685627f));
  let v_106 = r0;
  o4 = vec4<f32>(v_106.xyz, o4.w);
  o5.x = r0.w;
  o4.w = v3.x;
  o5 = vec4<f32>(o5.x, vec3<f32>());
}

struct tint_symbol_4 {
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
  @location(5u)
  o5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @builtin(instance_index) v_107 : u32) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, i32(v_107));
  return tint_symbol_4(o0, o1, o2, o3, o4, o5);
}
