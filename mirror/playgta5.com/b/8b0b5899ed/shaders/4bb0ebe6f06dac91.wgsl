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
  let v_2 = (cb1_1.tint_symbol[12u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(r0.xyzx);
  let v_4 = fma(cb1_1.tint_symbol[12u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_3.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_5 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (cb1_1.tint_symbol[14u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(r1.xyzx);
  let v_8 = fma(cb1_1.tint_symbol[14u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r2 = vec4<f32>(((v5.xzy * vec3<f32>(1.0f, -1.0f, 1.0f))).xyz, r2.w);
  let v_10 = fma(v0.xzy, vec3<f32>(1.0f, -1.0f, 1.0f), (-(r2.xyzx)).xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = (r2.yyy * vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r2.xxx, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r2.zzz, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (r0.xyz + v5.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = (v2.y * 6.28318500518798828125f);
  let v_15 = fma(cb11_11.tint_symbol_2[16u].zzz, cb11_11.tint_symbol_2[17u].zzw, r0.www);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = sin(r1.xyzx.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.w = ((-(v2.zzzz)).w + 1.0f);
  r2.z = (r0.w * cb11_11.tint_symbol_2[17u].y);
  let v_17 = (v2.xx * cb11_11.tint_symbol_2[17u].xx);
  r2 = vec4<f32>(v_17.xy, r2.zw);
  let v_18 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = t0.tint_symbol_4[(bitcast<u32>((bitcast<i32>(v6.x) * 1i)) + 0u)];
  r2.x = bitcast<f32>(vec4<u32>(v_19, v_19, v_19, v_19).x);
  r0.w = bitcast<f32>((bitcast<u32>(r2.x) >> 24u));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 65535u));
  r0.w = f32(bitcast<u32>(r0.w));
  r2.y = (r0.w * 0.0039215688593685627f);
  r3.x = v6.x;
  r3.y = 1.0f;
  let v_20 = bitcast<vec2<u32>>(cb11_11.tint_symbol_2[22u].ww);
  let v_21 = r2.xy;
  let v_22 = select(r3.xy, v_21, (v_20 != vec2<u32>()));
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = (bitcast<u32>((bitcast<i32>(r2.x) * 4i)) + 0u);
  let v_24 = t1.tint_symbol_4[v_23];
  let v_25 = t1.tint_symbol_4[(v_23 + 1u)];
  let v_26 = t1.tint_symbol_4[(v_23 + 2u)];
  let v_27 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v_24, v_24, v_24, v_24).x, vec4<u32>(v_25, v_25, v_25, v_25).x, vec4<u32>(v_26, v_26, v_26, v_26).x));
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.yz) >> vec2<u32>(24u)));
  r2 = vec4<f32>(r2.xy, v_28.xy);
  let v_29 = vec2<f32>(bitcast<vec2<u32>>(r2.zw));
  let v_30 = r4;
  r4 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
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
  let v_31 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (r0.yyy * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r1.w) + 1i))].xyz);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = fma(r0.xxx, cb7_7.tint_symbol_3[bitcast<i32>(r1.w)].xyz, r1.xyz);
  r0 = vec4<f32>(v_33.xy, r0.z, v_33.z);
  let v_34 = fma(r0.zzz, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r1.w) + 2i))].xyz, r0.xyw);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.xy) >> vec2<u32>(16u)));
  r1 = vec4<f32>(v_35.xy, r1.zw);
  let v_36 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.xy) & vec2<u32>(65535u)));
  r1 = vec4<f32>(r1.xy, v_36.xy);
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) & 255u));
  let v_37 = vec3<f32>(bitcast<vec3<u32>>(r1.zxw));
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = (r2.xyz * cb11_11.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  let v_39 = fma(r1.xyz, vec3<f32>(0.00001525902189314365f), cb11_11.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  r4.x = f32(bitcast<u32>(r0.w));
  let v_40 = fma(r4.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_40.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.z = sqrt(r0.w);
  r0.w = fma(r2.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.w = fma(r0.w, r2.z, -0.21211439371109008789f);
  r0.w = fma(r0.w, r2.z, 1.57072877883911132812f);
  r1.w = ((-(r2.zzzz)).w + 1.0f);
  let v_41 = fma((-(r2.zzzz)).xyz, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  r1.w = sqrt(r1.w);
  r0.w = (r0.w * r1.w);
  r0.w = (r0.w * cb11_11.tint_symbol_2[2u].w);
  let v_42 = r0.wwww;
  r3.x = sin(v_42.x);
  r4.x = cos(v_42.x);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_43 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  let v_44 = (r3.xxx * r2.xyz);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = fma(r4.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = (r2.yz * vec2<f32>(1.0f, 0.0f));
  r3 = vec4<f32>(v_46.xy, r3.zw);
  let v_47 = -(r3.xyxx);
  let v_48 = fma(r2.zx, vec2<f32>(0.0f, 1.0f), v_47.xy);
  r3 = vec4<f32>(v_48.xy, r3.zw);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = sqrt(r0.w);
  let v_49 = (r3.xy / r0.ww);
  r3 = vec4<f32>(v_49.xy, r3.zw);
  r0.w = ((-(r2.zzzz)).w + 1.0f);
  r1.w = (r3.x * r0.w);
  r3.x = fma(r1.w, r3.x, r2.z);
  r3.z = (r3.y * r1.w);
  r1.w = (r3.y * r3.y);
  r3.w = fma(r1.w, r0.w, r2.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.z < 1.0f)));
  let v_50 = (r2.xyz * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r2 = vec4<f32>(v_50.xyz, r2.w);
  let v_51 = bitcast<vec3<u32>>(r0.www);
  let v_52 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz, (v_51 != vec3<u32>()));
  r2 = vec4<f32>(v_52.xyz, r2.w);
  let v_53 = bitcast<vec3<u32>>(r0.www);
  let v_54 = select(vec3<f32>(1.0f, 0.0f, 1.0f), r3.xzw, (v_53 != vec3<u32>()));
  r3 = vec4<f32>(v_54.xyz, r3.w);
  r2.z = dot(r0.xyz, r2.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = cos(r0.wwww.w);
  r0.w = fma(r0.w, 0.5f, 0.5f);
  r0.w = fma(cb11_11.tint_symbol_2[21u].y, r0.w, 1.0f);
  r0.w = (r0.w * cb11_11.tint_symbol_2[21u].x);
  let v_55 = (r0.ww * cb11_11.tint_symbol_2[20u].xy);
  r4 = vec4<f32>(v_55.xy, r4.zw);
  r3.w = r4.x;
  r2.x = dot(r0.xyz, r3.xyw);
  let v_56 = r3;
  r4 = vec4<f32>(r4.xy, v_56.yz);
  r2.y = dot(r0.zxy, r4.yzw);
  let v_57 = (r1.xyz + r2.xyz);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[6u].w);
  let v_58 = -(cb11_11.tint_symbol_2[4u].xyxx);
  let v_59 = (r0.xy + v_58.xy);
  r1 = vec4<f32>(v_59.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[5u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[5u].wwww)).x, 0.0f, 1.0f);
  let v_60 = fma(r1.xx, cb11_11.tint_symbol_2[5u].xy, cb11_11.tint_symbol_2[4u].xy);
  r1 = vec4<f32>(v_60.xy, r1.zw);
  let v_61 = -(r1.xyxx);
  let v_62 = (r0.xy + v_61.xy);
  r1 = vec4<f32>(v_62.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[6u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[6u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[6u].x);
  r2.x = (cb11_11.tint_symbol_2[6u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_63 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_63.xy, r1.zw);
  let v_64 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_64.xy, r1.zw);
  let v_65 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_65.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[6u].w + -0.25f);
  let v_66 = bitcast<u32>(r2.x);
  let v_67 = r1.w;
  r1.z = select(r0.w, v_67, (v_66 != 0u));
  let v_68 = -(cb11_11.tint_symbol_2[6u].wwww);
  r0.w = (r0.z + v_68.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_69 = bitcast<vec3<u32>>(r0.www);
  let v_70 = r1.xyz;
  let v_71 = select(r0.xyz, v_70, (v_69 != vec3<u32>()));
  r1 = vec4<f32>(v_71.xyz, r1.w);
  let v_72 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_73 = r1.xyz;
  let v_74 = select(r0.xyz, v_73, (v_72 != vec3<u32>()));
  r0 = vec4<f32>(v_74.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[9u].w);
  let v_75 = -(cb11_11.tint_symbol_2[7u].xyxx);
  let v_76 = (r0.xy + v_75.xy);
  r1 = vec4<f32>(v_76.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[8u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[8u].wwww)).x, 0.0f, 1.0f);
  let v_77 = fma(r1.xx, cb11_11.tint_symbol_2[8u].xy, cb11_11.tint_symbol_2[7u].xy);
  r1 = vec4<f32>(v_77.xy, r1.zw);
  let v_78 = -(r1.xyxx);
  let v_79 = (r0.xy + v_78.xy);
  r1 = vec4<f32>(v_79.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[9u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[9u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[9u].x);
  r2.x = (cb11_11.tint_symbol_2[9u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_80 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_80.xy, r1.zw);
  let v_81 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_81.xy, r1.zw);
  let v_82 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_82.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[9u].w + -0.25f);
  let v_83 = bitcast<u32>(r2.x);
  let v_84 = r1.w;
  r1.z = select(r0.w, v_84, (v_83 != 0u));
  let v_85 = -(cb11_11.tint_symbol_2[9u].wwww);
  r0.w = (r0.z + v_85.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_86 = bitcast<vec3<u32>>(r0.www);
  let v_87 = r1.xyz;
  let v_88 = select(r0.xyz, v_87, (v_86 != vec3<u32>()));
  r1 = vec4<f32>(v_88.xyz, r1.w);
  let v_89 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_90 = r1.xyz;
  let v_91 = select(r0.xyz, v_90, (v_89 != vec3<u32>()));
  r0 = vec4<f32>(v_91.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[12u].w);
  let v_92 = -(cb11_11.tint_symbol_2[10u].xyxx);
  let v_93 = (r0.xy + v_92.xy);
  r1 = vec4<f32>(v_93.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[11u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[11u].wwww)).x, 0.0f, 1.0f);
  let v_94 = fma(r1.xx, cb11_11.tint_symbol_2[11u].xy, cb11_11.tint_symbol_2[10u].xy);
  r1 = vec4<f32>(v_94.xy, r1.zw);
  let v_95 = -(r1.xyxx);
  let v_96 = (r0.xy + v_95.xy);
  r1 = vec4<f32>(v_96.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[12u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[12u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[12u].x);
  r2.x = (cb11_11.tint_symbol_2[12u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_97 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_97.xy, r1.zw);
  let v_98 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_98.xy, r1.zw);
  let v_99 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_99.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[12u].w + -0.25f);
  let v_100 = bitcast<u32>(r2.x);
  let v_101 = r1.w;
  r1.z = select(r0.w, v_101, (v_100 != 0u));
  let v_102 = -(cb11_11.tint_symbol_2[12u].wwww);
  r0.w = (r0.z + v_102.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_103 = bitcast<vec3<u32>>(r0.www);
  let v_104 = r1.xyz;
  let v_105 = select(r0.xyz, v_104, (v_103 != vec3<u32>()));
  r1 = vec4<f32>(v_105.xyz, r1.w);
  let v_106 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_107 = r1.xyz;
  let v_108 = select(r0.xyz, v_107, (v_106 != vec3<u32>()));
  r0 = vec4<f32>(v_108.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[15u].w);
  let v_109 = -(cb11_11.tint_symbol_2[13u].xyxx);
  let v_110 = (r0.xy + v_109.xy);
  r1 = vec4<f32>(v_110.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[14u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[14u].wwww)).x, 0.0f, 1.0f);
  let v_111 = fma(r1.xx, cb11_11.tint_symbol_2[14u].xy, cb11_11.tint_symbol_2[13u].xy);
  r1 = vec4<f32>(v_111.xy, r1.zw);
  let v_112 = -(r1.xyxx);
  let v_113 = (r0.xy + v_112.xy);
  r1 = vec4<f32>(v_113.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[15u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[15u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[15u].x);
  r2.x = (cb11_11.tint_symbol_2[15u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_114 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_114.xy, r1.zw);
  let v_115 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_115.xy, r1.zw);
  let v_116 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_116.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[15u].w + -0.25f);
  let v_117 = bitcast<u32>(r2.x);
  let v_118 = r1.w;
  r1.z = select(r0.w, v_118, (v_117 != 0u));
  let v_119 = -(cb11_11.tint_symbol_2[15u].wwww);
  r0.w = (r0.z + v_119.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_120 = bitcast<vec3<u32>>(r0.www);
  let v_121 = r1.xyz;
  let v_122 = select(r0.xyz, v_121, (v_120 != vec3<u32>()));
  r1 = vec4<f32>(v_122.xyz, r1.w);
  let v_123 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_124 = r1.xyz;
  let v_125 = select(r0.xyz, v_124, (v_123 != vec3<u32>()));
  r0 = vec4<f32>(v_125.xyz, r0.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec4<f32>, @builtin(instance_index) v_126 : u32) -> tint_symbol_6 {
  main_inner(v0, v2, v3, v4, v5, i32(v_126));
  return tint_symbol_6(o0, o1);
}
