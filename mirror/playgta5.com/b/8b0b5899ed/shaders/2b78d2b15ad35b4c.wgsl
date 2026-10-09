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

fn main_inner(v0 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v5.x = bitcast<f32>((v - v_1));
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
  let v_6 = t0.tint_symbol_4[(bitcast<u32>((bitcast<i32>(v5.x) * 1i)) + 0u)];
  r1.x = bitcast<f32>(vec4<u32>(v_6, v_6, v_6, v_6).x);
  r0.w = bitcast<f32>((bitcast<u32>(r1.x) >> 24u));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 65535u));
  r0.w = f32(bitcast<u32>(r0.w));
  r1.y = (r0.w * 0.0039215688593685627f);
  r2.x = v5.x;
  r2.y = 1.0f;
  let v_7 = bitcast<vec2<u32>>(cb11_11.tint_symbol_2[22u].ww);
  let v_8 = r1.xy;
  let v_9 = select(r2.xy, v_8, (v_7 != vec2<u32>()));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = (bitcast<u32>((bitcast<i32>(r1.x) * 4i)) + 0u);
  let v_11 = t1.tint_symbol_4[v_10];
  let v_12 = t1.tint_symbol_4[(v_10 + 1u)];
  let v_13 = t1.tint_symbol_4[(v_10 + 2u)];
  let v_14 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v_11, v_11, v_11, v_11).x, vec4<u32>(v_12, v_12, v_12, v_12).x, vec4<u32>(v_13, v_13, v_13, v_13).x));
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.yz) >> vec2<u32>(24u)));
  r1 = vec4<f32>(r1.xy, v_15.xy);
  let v_16 = vec2<f32>(bitcast<vec2<u32>>(r1.zw));
  let v_17 = r3;
  r3 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r0.w = (r3.z * 0.0039215688593685627f);
  r1.z = ((-(cb11_11.tint_symbol_2[19u].xxxx)).z + cb11_11.tint_symbol_2[19u].y);
  r0.w = fma(r1.z, r0.w, cb11_11.tint_symbol_2[19u].x);
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 7u));
  r1.x = bitcast<f32>((bitcast<i32>(r1.x) * 3i));
  r1.z = (cb11_11.tint_symbol_2[19u].z * cb11_11.tint_symbol_2[19u].y);
  r1.z = dot(cb7_7.tint_symbol_3[bitcast<i32>(r1.x)].ww, r1.zz);
  r1.z = fma((-(cb11_11.tint_symbol_2[19u].yyyy)).z, cb11_11.tint_symbol_2[19u].z, r1.z);
  r0.w = (r0.w + r1.z);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r1.y * r0.w);
  let v_18 = fma(v0.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r0.yyy * cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz);
  r1 = vec4<f32>(r1.x, v_19.xyz);
  let v_20 = fma(r0.xxx, cb7_7.tint_symbol_3[bitcast<i32>(r1.x)].xyz, r1.yzw);
  r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
  let v_21 = fma(r0.zzz, cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, r0.xyw);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.xy) >> vec2<u32>(16u)));
  r1 = vec4<f32>(v_22.xy, r1.zw);
  let v_23 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.xy) & vec2<u32>(65535u)));
  r1 = vec4<f32>(r1.xy, v_23.xy);
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) & 255u));
  let v_24 = vec3<f32>(bitcast<vec3<u32>>(r1.zxw));
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = (r2.xyz * cb11_11.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  let v_26 = fma(r1.xyz, vec3<f32>(0.00001525902189314365f), cb11_11.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r3.x = f32(bitcast<u32>(r0.w));
  let v_27 = fma(r3.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_27.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.z = sqrt(r0.w);
  r0.w = fma(r2.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.w = fma(r0.w, r2.z, -0.21211439371109008789f);
  r0.w = fma(r0.w, r2.z, 1.57072877883911132812f);
  r1.w = ((-(r2.zzzz)).w + 1.0f);
  let v_28 = fma((-(r2.zzzz)).xyz, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r1.w = sqrt(r1.w);
  r0.w = (r0.w * r1.w);
  r0.w = (r0.w * cb11_11.tint_symbol_2[2u].w);
  let v_29 = r0.wwww;
  r3.x = sin(v_29.x);
  r4.x = cos(v_29.x);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_30 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = (r3.xxx * r2.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = fma(r4.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = (r2.yz * vec2<f32>(1.0f, 0.0f));
  r3 = vec4<f32>(v_33.xy, r3.zw);
  let v_34 = -(r3.xyxx);
  let v_35 = fma(r2.zx, vec2<f32>(0.0f, 1.0f), v_34.xy);
  r3 = vec4<f32>(v_35.xy, r3.zw);
  r0.w = dot(r3.xy, r3.xy);
  r0.w = sqrt(r0.w);
  let v_36 = (r3.xy / r0.ww);
  r3 = vec4<f32>(v_36.xy, r3.zw);
  r0.w = ((-(r2.zzzz)).w + 1.0f);
  r1.w = (r3.x * r0.w);
  r3.x = fma(r1.w, r3.x, r2.z);
  r3.z = (r3.y * r1.w);
  r1.w = (r3.y * r3.y);
  r3.w = fma(r1.w, r0.w, r2.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.z < 1.0f)));
  let v_37 = (r2.xyz * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = bitcast<vec3<u32>>(r0.www);
  let v_39 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz, (v_38 != vec3<u32>()));
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = bitcast<vec3<u32>>(r0.www);
  let v_41 = select(vec3<f32>(1.0f, 0.0f, 1.0f), r3.xzw, (v_40 != vec3<u32>()));
  r3 = vec4<f32>(v_41.xyz, r3.w);
  r2.z = dot(r0.xyz, r2.xyz);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = cos(r0.wwww.w);
  r0.w = fma(r0.w, 0.5f, 0.5f);
  r0.w = fma(cb11_11.tint_symbol_2[21u].y, r0.w, 1.0f);
  r0.w = (r0.w * cb11_11.tint_symbol_2[21u].x);
  let v_42 = (r0.ww * cb11_11.tint_symbol_2[20u].xy);
  r4 = vec4<f32>(v_42.xy, r4.zw);
  r3.w = r4.x;
  r2.x = dot(r0.xyz, r3.xyw);
  let v_43 = r3;
  r4 = vec4<f32>(r4.xy, v_43.yz);
  r2.y = dot(r0.zxy, r4.yzw);
  let v_44 = (r1.xyz + r2.xyz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[6u].w);
  let v_45 = -(cb11_11.tint_symbol_2[4u].xyxx);
  let v_46 = (r0.xy + v_45.xy);
  r1 = vec4<f32>(v_46.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[5u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[5u].wwww)).x, 0.0f, 1.0f);
  let v_47 = fma(r1.xx, cb11_11.tint_symbol_2[5u].xy, cb11_11.tint_symbol_2[4u].xy);
  r1 = vec4<f32>(v_47.xy, r1.zw);
  let v_48 = -(r1.xyxx);
  let v_49 = (r0.xy + v_48.xy);
  r1 = vec4<f32>(v_49.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[6u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[6u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[6u].x);
  r2.x = (cb11_11.tint_symbol_2[6u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_50 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_50.xy, r1.zw);
  let v_51 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_51.xy, r1.zw);
  let v_52 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_52.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[6u].w + -0.25f);
  let v_53 = bitcast<u32>(r2.x);
  let v_54 = r1.w;
  r1.z = select(r0.w, v_54, (v_53 != 0u));
  let v_55 = -(cb11_11.tint_symbol_2[6u].wwww);
  r0.w = (r0.z + v_55.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_56 = bitcast<vec3<u32>>(r0.www);
  let v_57 = r1.xyz;
  let v_58 = select(r0.xyz, v_57, (v_56 != vec3<u32>()));
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].xxx);
  let v_60 = r1.xyz;
  let v_61 = select(r0.xyz, v_60, (v_59 != vec3<u32>()));
  r0 = vec4<f32>(v_61.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[9u].w);
  let v_62 = -(cb11_11.tint_symbol_2[7u].xyxx);
  let v_63 = (r0.xy + v_62.xy);
  r1 = vec4<f32>(v_63.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[8u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[8u].wwww)).x, 0.0f, 1.0f);
  let v_64 = fma(r1.xx, cb11_11.tint_symbol_2[8u].xy, cb11_11.tint_symbol_2[7u].xy);
  r1 = vec4<f32>(v_64.xy, r1.zw);
  let v_65 = -(r1.xyxx);
  let v_66 = (r0.xy + v_65.xy);
  r1 = vec4<f32>(v_66.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[9u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[9u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[9u].x);
  r2.x = (cb11_11.tint_symbol_2[9u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_67 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_67.xy, r1.zw);
  let v_68 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_68.xy, r1.zw);
  let v_69 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_69.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[9u].w + -0.25f);
  let v_70 = bitcast<u32>(r2.x);
  let v_71 = r1.w;
  r1.z = select(r0.w, v_71, (v_70 != 0u));
  let v_72 = -(cb11_11.tint_symbol_2[9u].wwww);
  r0.w = (r0.z + v_72.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_73 = bitcast<vec3<u32>>(r0.www);
  let v_74 = r1.xyz;
  let v_75 = select(r0.xyz, v_74, (v_73 != vec3<u32>()));
  r1 = vec4<f32>(v_75.xyz, r1.w);
  let v_76 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].yyy);
  let v_77 = r1.xyz;
  let v_78 = select(r0.xyz, v_77, (v_76 != vec3<u32>()));
  r0 = vec4<f32>(v_78.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[12u].w);
  let v_79 = -(cb11_11.tint_symbol_2[10u].xyxx);
  let v_80 = (r0.xy + v_79.xy);
  r1 = vec4<f32>(v_80.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[11u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[11u].wwww)).x, 0.0f, 1.0f);
  let v_81 = fma(r1.xx, cb11_11.tint_symbol_2[11u].xy, cb11_11.tint_symbol_2[10u].xy);
  r1 = vec4<f32>(v_81.xy, r1.zw);
  let v_82 = -(r1.xyxx);
  let v_83 = (r0.xy + v_82.xy);
  r1 = vec4<f32>(v_83.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[12u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[12u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[12u].x);
  r2.x = (cb11_11.tint_symbol_2[12u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_84 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_84.xy, r1.zw);
  let v_85 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_85.xy, r1.zw);
  let v_86 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_86.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[12u].w + -0.25f);
  let v_87 = bitcast<u32>(r2.x);
  let v_88 = r1.w;
  r1.z = select(r0.w, v_88, (v_87 != 0u));
  let v_89 = -(cb11_11.tint_symbol_2[12u].wwww);
  r0.w = (r0.z + v_89.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_90 = bitcast<vec3<u32>>(r0.www);
  let v_91 = r1.xyz;
  let v_92 = select(r0.xyz, v_91, (v_90 != vec3<u32>()));
  r1 = vec4<f32>(v_92.xyz, r1.w);
  let v_93 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].zzz);
  let v_94 = r1.xyz;
  let v_95 = select(r0.xyz, v_94, (v_93 != vec3<u32>()));
  r0 = vec4<f32>(v_95.xyz, r0.w);
  r0.w = ((-(r0.zzzz)).w + cb11_11.tint_symbol_2[15u].w);
  let v_96 = -(cb11_11.tint_symbol_2[13u].xyxx);
  let v_97 = (r0.xy + v_96.xy);
  r1 = vec4<f32>(v_97.xy, r1.zw);
  r1.x = dot(cb11_11.tint_symbol_2[14u].xy, r1.xy);
  r1.x = clamp(((r1.xxxx * cb11_11.tint_symbol_2[14u].wwww)).x, 0.0f, 1.0f);
  let v_98 = fma(r1.xx, cb11_11.tint_symbol_2[14u].xy, cb11_11.tint_symbol_2[13u].xy);
  r1 = vec4<f32>(v_98.xy, r1.zw);
  let v_99 = -(r1.xyxx);
  let v_100 = (r0.xy + v_99.xy);
  r1 = vec4<f32>(v_100.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.w = ((-(r1.zzzz)).w + cb11_11.tint_symbol_2[15u].y);
  r1.w = clamp(((r1.wwww * cb11_11.tint_symbol_2[15u].zzzz)).w, 0.0f, 1.0f);
  r0.w = fma(r1.w, r0.w, r0.z);
  r1.w = (r1.w * cb11_11.tint_symbol_2[15u].x);
  r2.x = (cb11_11.tint_symbol_2[15u].x * 0.5f);
  r2.x = (r2.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r2.x)));
  r1.z = inverseSqrt(r1.z);
  let v_101 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_101.xy, r1.zw);
  let v_102 = (r1.xy * r1.ww);
  r1 = vec4<f32>(v_102.xy, r1.zw);
  let v_103 = fma(r1.xy, v3.zz, r0.xy);
  r1 = vec4<f32>(v_103.xy, r1.zw);
  r1.w = (cb11_11.tint_symbol_2[15u].w + -0.25f);
  let v_104 = bitcast<u32>(r2.x);
  let v_105 = r1.w;
  r1.z = select(r0.w, v_105, (v_104 != 0u));
  let v_106 = -(cb11_11.tint_symbol_2[15u].wwww);
  r0.w = (r0.z + v_106.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (2.0f >= abs(r0.wwww).w)));
  let v_107 = bitcast<vec3<u32>>(r0.www);
  let v_108 = r1.xyz;
  let v_109 = select(r0.xyz, v_108, (v_107 != vec3<u32>()));
  r1 = vec4<f32>(v_109.xyz, r1.w);
  let v_110 = bitcast<vec3<u32>>(cb4_4.tint_symbol_1[0u].www);
  let v_111 = r1.xyz;
  let v_112 = select(r0.xyz, v_111, (v_110 != vec3<u32>()));
  r0 = vec4<f32>(v_112.xyz, r0.w);
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
fn main(@location(0u) v0 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @builtin(instance_index) v_113 : u32) -> tint_symbol_6 {
  main_inner(v0, v2, v3, v4, i32(v_113));
  return tint_symbol_6(o0, o1);
}
