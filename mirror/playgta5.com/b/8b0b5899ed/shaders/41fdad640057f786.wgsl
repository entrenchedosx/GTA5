diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

fn main_inner(v0 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v5 : vec4<f32>, v : i32) {
  let v_1 = 0i;
  v6.x = bitcast<f32>((v - v_1));
  r0.x = (v2.y * 6.28318500518798828125f);
  let v_2 = fma(cb11_11.tint_symbol_2[16u].zzz, cb11_11.tint_symbol_2[17u].zzw, r0.xxx);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = sin(r0.xyzx.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = ((-(v2.zzzz)).w + 1.0f);
  r1.z = (r0.w * cb11_11.tint_symbol_2[17u].y);
  let v_4 = (v2.xx * cb11_11.tint_symbol_2[17u].xx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = vec4<f32>(((v5.xzy * vec3<f32>(1.0f, -1.0f, 1.0f))).xyz, r1.w);
  let v_6 = fma(v0.xzy, vec3<f32>(1.0f, -1.0f, 1.0f), (-(r1.xyzx)).xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(cb1_1.tint_symbol[13u].xyzx);
  let v_8 = (r1.yyy * v_7.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r1.xxx, cb1_1.tint_symbol[12u].xyz, r2.xyz);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  let v_10 = fma(r1.zzz, cb1_1.tint_symbol[14u].xyz, r1.xyw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz + v5.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = t0.tint_symbol_4[(bitcast<u32>((bitcast<i32>(v6.x) * 1i)) + 0u)];
  r2.x = bitcast<f32>(vec4<u32>(v_12, v_12, v_12, v_12).x);
  r0.w = bitcast<f32>((bitcast<u32>(r2.x) >> 24u));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 65535u));
  r0.w = f32(bitcast<u32>(r0.w));
  r2.y = (r0.w * 0.0039215688593685627f);
  r3.x = v6.x;
  r3.y = 1.0f;
  let v_13 = bitcast<vec2<u32>>(cb11_11.tint_symbol_2[22u].ww);
  let v_14 = r2.xy;
  let v_15 = select(r3.xy, v_14, (v_13 != vec2<u32>()));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = (bitcast<u32>((bitcast<i32>(r2.x) * 4i)) + 0u);
  let v_17 = t1.tint_symbol_4[v_16];
  let v_18 = t1.tint_symbol_4[(v_16 + 1u)];
  let v_19 = t1.tint_symbol_4[(v_16 + 2u)];
  let v_20 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v_17, v_17, v_17, v_17).x, vec4<u32>(v_18, v_18, v_18, v_18).x, vec4<u32>(v_19, v_19, v_19, v_19).x));
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.yz) >> vec2<u32>(24u)));
  r2 = vec4<f32>(r2.xy, v_21.xy);
  let v_22 = vec2<f32>(bitcast<vec2<u32>>(r2.zw));
  let v_23 = r4;
  r4 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r0.w = (r4.z * 0.0039215688593685627f);
  r1.w = ((-(cb11_11.tint_symbol_2[19u].xxxx)).w + cb11_11.tint_symbol_2[19u].y);
  r0.w = fma(r1.w, r0.w, cb11_11.tint_symbol_2[19u].x);
  r1.w = bitcast<f32>((bitcast<u32>(r2.x) & 7u));
  r1.w = bitcast<f32>((bitcast<i32>(r1.w) * 3i));
  r2.x = (cb11_11.tint_symbol_2[19u].z * cb11_11.tint_symbol_2[19u].y);
  r2.x = dot(cb7_7.tint_symbol_3[bitcast<i32>(r1.w)].ww, r2.xx);
  r2.x = fma((-(cb11_11.tint_symbol_2[19u].yyyy)).x, cb11_11.tint_symbol_2[19u].z, r2.x);
  r0.w = (r0.w + r2.x);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r2.y * r0.w);
  let v_24 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.yyy * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r1.w) + 1i))].xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  let v_26 = fma(r0.xxx, cb7_7.tint_symbol_3[bitcast<i32>(r1.w)].xyz, r1.xyz);
  r0 = vec4<f32>(v_26.xy, r0.z, v_26.z);
  let v_27 = fma(r0.zzz, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r1.w) + 2i))].xyz, r0.xyw);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.xy) >> vec2<u32>(16u)));
  r1 = vec4<f32>(v_28.xy, r1.zw);
  let v_29 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.xy) & vec2<u32>(65535u)));
  r1 = vec4<f32>(r1.xy, v_29.xy);
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) & 255u));
  let v_30 = vec3<f32>(bitcast<vec3<u32>>(r1.zxw));
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = (r2.xyz * cb11_11.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = fma(r1.xyz, vec3<f32>(0.00001525902189314365f), cb11_11.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  r4.x = f32(bitcast<u32>(r0.w));
  let v_33 = fma(r4.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_33.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.z = sqrt(r0.w);
  r0.w = fma(r2.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.w = fma(r0.w, r2.z, -0.21211439371109008789f);
  r0.w = fma(r0.w, r2.z, 1.57072877883911132812f);
  r1.w = ((-(r2.zzzz)).w + 1.0f);
  let v_34 = fma((-(r2.zzzz)).xyz, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r1.w = sqrt(r1.w);
  r0.w = (r0.w * r1.w);
  r0.w = (r0.w * cb11_11.tint_symbol_2[2u].w);
  let v_35 = r0.wwww;
  r3.x = sin(v_35.x);
  r4.x = cos(v_35.x);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_36 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = (r3.xxx * r2.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = fma(r4.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = (r2.yz * vec2<f32>(1.0f, 0.0f));
  r3 = vec4<f32>(v_39.xy, r3.zw);
  let v_40 = -(r3.xyxx);
  let v_41 = fma(r2.zx, vec2<f32>(0.0f, 1.0f), v_40.xy);
  r3 = vec4<f32>(v_41.xy, r3.zw);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = sqrt(r0.w);
  let v_42 = (r3.xy / r0.ww);
  r3 = vec4<f32>(v_42.xy, r3.zw);
  r0.w = ((-(r2.zzzz)).w + 1.0f);
  r1.w = (r3.x * r0.w);
  r3.x = fma(r1.w, r3.x, r2.z);
  r3.z = (r3.y * r1.w);
  r1.w = (r3.y * r3.y);
  r3.w = fma(r1.w, r0.w, r2.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.z < 1.0f)));
  let v_43 = (r2.xyz * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r2 = vec4<f32>(v_43.xyz, r2.w);
  let v_44 = bitcast<vec3<u32>>(r0.www);
  let v_45 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz, (v_44 != vec3<u32>()));
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = bitcast<vec3<u32>>(r0.www);
  let v_47 = select(vec3<f32>(1.0f, 0.0f, 1.0f), r3.xzw, (v_46 != vec3<u32>()));
  r3 = vec4<f32>(v_47.xyz, r3.w);
  r2.z = dot(r0.xyz, r2.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = cos(r0.wwww.w);
  r0.w = fma(r0.w, 0.5f, 0.5f);
  r0.w = fma(cb11_11.tint_symbol_2[21u].y, r0.w, 1.0f);
  r0.w = (r0.w * cb11_11.tint_symbol_2[21u].x);
  let v_48 = (r0.ww * cb11_11.tint_symbol_2[20u].xy);
  r4 = vec4<f32>(v_48.xy, r4.zw);
  r3.w = r4.x;
  r2.x = dot(r0.xyz, r3.xyw);
  let v_49 = r3;
  r4 = vec4<f32>(r4.xy, v_49.yz);
  r2.y = dot(r0.zxy, r4.yzw);
  let v_50 = (r1.xyz + r2.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[6u].w);
  let v_51 = -(cb11_11.tint_symbol_2[4u].xyxx);
  let v_52 = (r0.xy + v_51.xy);
  r1 = vec4<f32>(v_52.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[5u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[5u].wwww)).x, 0.0f, 1.0f);
  let v_53 = fma(r1.xx, cb11_11.tint_symbol_2[5u].xy, cb11_11.tint_symbol_2[4u].xy);
  r1 = vec4<f32>(v_53.xy, r1.zw);
  let v_54 = -(r1.xyxx);
  let v_55 = (r0.xy + v_54.xy);
  r1 = vec4<f32>(v_55.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[6u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[6u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[6u].x);
  r2.x = (cb11_11.tint_symbol_2[6u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_56 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_56.xy, r1.zw);
  let v_57 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_57.xy, r1.zw);
  let v_58 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_58.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[6u].w + -0.25f);
  let v_59 = bitcast<u32>(r2.x);
  let v_60 = r1.w;
  r1.z = select(r0.w, v_60, (v_59 != 0u));
  let v_61 = -(cb11_11.tint_symbol_2[6u].wwww);
  r0.w = (r0.z + v_61.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_62 = bitcast<vec3<u32>>(r0.www);
  let v_63 = r1.xyz;
  let v_64 = select(r0.xyz, v_63, (v_62 != vec3<u32>()));
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_66 = r1.xyz;
  let v_67 = select(r0.xyz, v_66, (v_65 != vec3<u32>()));
  r0 = vec4<f32>(v_67.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[9u].w);
  let v_68 = -(cb11_11.tint_symbol_2[7u].xyxx);
  let v_69 = (r0.xy + v_68.xy);
  r1 = vec4<f32>(v_69.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[8u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[8u].wwww)).x, 0.0f, 1.0f);
  let v_70 = fma(r1.xx, cb11_11.tint_symbol_2[8u].xy, cb11_11.tint_symbol_2[7u].xy);
  r1 = vec4<f32>(v_70.xy, r1.zw);
  let v_71 = -(r1.xyxx);
  let v_72 = (r0.xy + v_71.xy);
  r1 = vec4<f32>(v_72.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[9u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[9u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[9u].x);
  r2.x = (cb11_11.tint_symbol_2[9u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_73 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_73.xy, r1.zw);
  let v_74 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_74.xy, r1.zw);
  let v_75 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_75.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[9u].w + -0.25f);
  let v_76 = bitcast<u32>(r2.x);
  let v_77 = r1.w;
  r1.z = select(r0.w, v_77, (v_76 != 0u));
  let v_78 = -(cb11_11.tint_symbol_2[9u].wwww);
  r0.w = (r0.z + v_78.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_79 = bitcast<vec3<u32>>(r0.www);
  let v_80 = r1.xyz;
  let v_81 = select(r0.xyz, v_80, (v_79 != vec3<u32>()));
  r1 = vec4<f32>(v_81.xyz, r1.w);
  let v_82 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_83 = r1.xyz;
  let v_84 = select(r0.xyz, v_83, (v_82 != vec3<u32>()));
  r0 = vec4<f32>(v_84.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[12u].w);
  let v_85 = -(cb11_11.tint_symbol_2[10u].xyxx);
  let v_86 = (r0.xy + v_85.xy);
  r1 = vec4<f32>(v_86.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[11u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[11u].wwww)).x, 0.0f, 1.0f);
  let v_87 = fma(r1.xx, cb11_11.tint_symbol_2[11u].xy, cb11_11.tint_symbol_2[10u].xy);
  r1 = vec4<f32>(v_87.xy, r1.zw);
  let v_88 = -(r1.xyxx);
  let v_89 = (r0.xy + v_88.xy);
  r1 = vec4<f32>(v_89.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[12u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[12u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[12u].x);
  r2.x = (cb11_11.tint_symbol_2[12u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_90 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_90.xy, r1.zw);
  let v_91 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_91.xy, r1.zw);
  let v_92 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_92.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[12u].w + -0.25f);
  let v_93 = bitcast<u32>(r2.x);
  let v_94 = r1.w;
  r1.z = select(r0.w, v_94, (v_93 != 0u));
  let v_95 = -(cb11_11.tint_symbol_2[12u].wwww);
  r0.w = (r0.z + v_95.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_96 = bitcast<vec3<u32>>(r0.www);
  let v_97 = r1.xyz;
  let v_98 = select(r0.xyz, v_97, (v_96 != vec3<u32>()));
  r1 = vec4<f32>(v_98.xyz, r1.w);
  let v_99 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_100 = r1.xyz;
  let v_101 = select(r0.xyz, v_100, (v_99 != vec3<u32>()));
  r0 = vec4<f32>(v_101.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[15u].w);
  let v_102 = -(cb11_11.tint_symbol_2[13u].xyxx);
  let v_103 = (r0.xy + v_102.xy);
  r1 = vec4<f32>(v_103.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[14u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[14u].wwww)).x, 0.0f, 1.0f);
  let v_104 = fma(r1.xx, cb11_11.tint_symbol_2[14u].xy, cb11_11.tint_symbol_2[13u].xy);
  r1 = vec4<f32>(v_104.xy, r1.zw);
  let v_105 = -(r1.xyxx);
  let v_106 = (r0.xy + v_105.xy);
  r1 = vec4<f32>(v_106.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[15u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[15u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[15u].x);
  r2.x = (cb11_11.tint_symbol_2[15u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_107 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_107.xy, r1.zw);
  let v_108 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_108.xy, r1.zw);
  let v_109 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_109.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[15u].w + -0.25f);
  let v_110 = bitcast<u32>(r2.x);
  let v_111 = r1.w;
  r1.z = select(r0.w, v_111, (v_110 != 0u));
  let v_112 = -(cb11_11.tint_symbol_2[15u].wwww);
  r0.w = (r0.z + v_112.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_113 = bitcast<vec3<u32>>(r0.www);
  let v_114 = r1.xyz;
  let v_115 = select(r0.xyz, v_114, (v_113 != vec3<u32>()));
  r1 = vec4<f32>(v_115.xyz, r1.w);
  let v_116 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_117 = r1.xyz;
  let v_118 = select(r0.xyz, v_117, (v_116 != vec3<u32>()));
  r0 = vec4<f32>(v_118.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v4.xyxy;
}

struct tint_symbol_6 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec4<f32>, @builtin(instance_index) v_119 : u32) -> tint_symbol_6 {
  main_inner(v0, v2, v3, v4, v5, i32(v_119));
  return tint_symbol_6(o0, o1);
}
