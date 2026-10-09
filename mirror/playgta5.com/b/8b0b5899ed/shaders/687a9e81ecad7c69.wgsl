enable clip_distances;
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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb5_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb5_struct_1;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
  r0.x = clamp(v1.w, 0.0f, 1.0f);
  if ((bitcast<u32>(cb7_7.tint_symbol_2[0u].x) != 0u)) {
    let v_1 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
    r0 = vec4<f32>(r0.x, v_1.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = sqrt(r1.x);
    let v_2 = (r0.yzw / r1.xxx);
    r0 = vec4<f32>(r0.x, v_2.xyz);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r1.y = dot(r0.yz, r0.yz);
    r1.y = max(r1.y, 0.00000000999999993923f);
    r1.y = sqrt(r1.y);
    r2 = (r0.yzyz / r1.yyyy);
    r2 = (r0.wwww * r2);
    r2 = fma(r2, vec4<f32>(0.5f), vec4<f32>(0.5f));
    let v_3 = (r2.zw * vec2<f32>(126.73267364501953125f));
    let v_4 = r0;
    r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
    let v_5 = -(r0.yyzy);
    let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yz >= v_5.yz)));
    let v_7 = r1;
    r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
    let v_8 = fract(abs(r0.yyzy).yz);
    let v_9 = r0;
    r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
    let v_10 = -(r0.yyzy);
    let v_11 = bitcast<vec2<u32>>(r1.yz);
    let v_12 = select(v_10.yz, r0.yz, (v_11 != vec2<u32>()));
    let v_13 = r0;
    r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
    r3 = textureSampleLevel(t2, s2, r2.zwzz.xy, 0.0f);
    r2 = fma(-(r0.yzyz), vec4<f32>(0.00789062492549419403f), r2);
    r4 = (r2.zwzw + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
    r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
    r6 = (r2.zwzw + vec4<f32>(0.00789062492549419403f, 0.00789062492549419403f, -0.5f, -0.5f));
    r7 = textureSampleLevel(t2, s2, r6.xyxx.xy, 0.0f);
    let v_14 = ((-(r0.yyzy)).yz + vec2<f32>(1.0f));
    let v_15 = r1;
    r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
    let v_16 = (r1.yyy * r3.xyz);
    r8 = vec4<f32>(v_16.xyz, r8.w);
    let v_17 = (r0.yyy * r5.xyz);
    r9 = vec4<f32>(v_17.xyz, r9.w);
    let v_18 = (r1.zzz * r9.xyz);
    r9 = vec4<f32>(v_18.xyz, r9.w);
    let v_19 = fma(r8.xyz, r1.zzz, r9.xyz);
    r8 = vec4<f32>(v_19.xyz, r8.w);
    let v_20 = (r1.yyy * r4.xyz);
    r1 = vec4<f32>(r1.x, v_20.xyz);
    let v_21 = fma(r1.yzw, r0.zzz, r8.xyz);
    r1 = vec4<f32>(r1.x, v_21.xyz);
    let v_22 = (r0.yyy * r7.xyz);
    r7 = vec4<f32>(v_22.xyz, r7.w);
    let v_23 = fma(r7.xyz, r0.zzz, r1.yzw);
    r0 = vec4<f32>(r0.x, v_23.xyz);
    r1.x = (r1.x / cb12_12.tint_symbol_3[0u].x);
    r1.x = min(r1.x, 1.0f);
    let v_24 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_24.xyz);
    let v_25 = (r0.yzw * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(r0.x, v_25.xyz);
    r1.y = dot(r0.yzw, r0.yzw);
    r1.y = sqrt(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = fma((-(r1.yyyy)).y, 4.0f, 1.0f);
    r7.w = max(r1.y, 0.0f);
    let v_26 = fma(r0.yzw, v1.yyy, v0);
    r8 = vec4<f32>(v_26.xyz, r8.w);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].w)));
    let v_27 = -(cb12_12.tint_symbol_3[1u].xxyz);
    let v_28 = (v_27.yzw + cb12_12.tint_symbol_3[2u].xyz);
    r1 = vec4<f32>(r1.x, v_28.xyz);
    let v_29 = ((-(r1.yzwy)).xyz + r8.xyz);
    r9 = vec4<f32>(v_29.xyz, r9.w);
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_3[2u].w * 1.10000002384185791016f);
    r1.y = clamp(((r0.zzzz / r0.wwww)).y, 0.0f, 1.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < 1.0f)));
    r0.z = (r9.y / r0.z);
    r1.y = fma(r1.y, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.z = (r0.z * r1.y);
    r0.z = fma(r0.z, r0.w, r1.z);
    let v_30 = bitcast<u32>(r1.w);
    let v_31 = r0.z;
    r0.z = select(r8.y, v_31, (v_30 != 0u));
    let v_32 = bitcast<u32>(r0.y);
    let v_33 = r0.z;
    r8.w = select(r8.y, v_33, (v_32 != 0u));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[3u].w)));
    let v_34 = (v_27.yzw + cb12_12.tint_symbol_3[3u].xyz);
    r1 = vec4<f32>(r1.x, v_34.xyz);
    let v_35 = ((-(r1.yzwy)).xyz + r8.xwz);
    r9 = vec4<f32>(v_35.xyz, r9.w);
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_3[3u].w * 1.10000002384185791016f);
    r1.y = clamp(((r0.zzzz / r0.wwww)).y, 0.0f, 1.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < 1.0f)));
    r0.z = (r9.y / r0.z);
    r1.y = fma(r1.y, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.z = (r0.z * r1.y);
    r0.z = fma(r0.z, r0.w, r1.z);
    let v_36 = bitcast<u32>(r1.w);
    let v_37 = r0.z;
    r0.z = select(r8.w, v_37, (v_36 != 0u));
    let v_38 = bitcast<u32>(r0.y);
    let v_39 = r0.z;
    r0.y = select(r8.w, v_39, (v_38 != 0u));
    let v_40 = (r6.zw + r6.zw);
    r0 = vec4<f32>(r0.xy, v_40.xy);
    r1.y = dot(r0.zw, r0.zw);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    r1.y = sqrt(r1.y);
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
    r1.z = fma((-(r1.yyyy)).z, 2.0f, 1.0f);
    r6.z = max(r1.z, -1.0f);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (r6.z < 1.0f)));
    r1.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r6.z)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
    r1.w = fma((-(r6.zzzz)).w, r6.z, 1.0f);
    r1.w = sqrt(r1.w);
    r1.y = (r1.w / r1.y);
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
    let v_41 = (r0.zw * r1.yy);
    r6 = vec4<f32>(v_41.xy, r6.zw);
    let v_42 = (r1.xxx * r3.xyz);
    r1 = vec4<f32>(r1.x, v_42.xyz);
    let v_43 = (r1.yzw * cb12_12.tint_symbol_3[0u].yyy);
    r1 = vec4<f32>(r1.x, v_43.xyz);
    r2 = (r2 + vec4<f32>(-0.49210938811302185059f, -0.5f, -0.5f, -0.49210938811302185059f));
    r2 = (r2 + r2);
    r0.z = dot(r2.xy, r2.xy);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.z = sqrt(r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
    r0.w = fma((-(r0.zzzz)).w, 2.0f, 1.0f);
    r3.z = max(r0.w, -1.0f);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r3.z < 1.0f)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r3.z)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r3.w)));
    r3.w = fma((-(r3.zzzz)).w, r3.z, 1.0f);
    r3.w = sqrt(r3.w);
    r0.z = (r3.w / r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
    let v_44 = (r0.zz * r2.xy);
    r3 = vec4<f32>(v_44.xy, r3.zw);
    let v_45 = (r1.xxx * r5.xyz);
    r5 = vec4<f32>(v_45.xyz, r5.w);
    let v_46 = ((-(r6.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_46.xyz, r3.w);
    let v_47 = -(r1.yzwy);
    let v_48 = fma(r5.xyz, cb12_12.tint_symbol_3[0u].yyy, v_47.xyz);
    r5 = vec4<f32>(v_48.xyz, r5.w);
    r0.z = dot(r5.xyz, v5);
    r0.w = dot(r3.xyz, r3.xyz);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r5.x = (r0.z / r0.w);
    r5.y = 1.0f;
    let v_49 = (r3.xyz * r5.xyx);
    r3 = vec4<f32>(v_49.xyz, r3.w);
    let v_50 = r5;
    r5 = vec4<f32>(v_50.x, v1.yy, v_50.w);
    let v_51 = (r3.xyz * r5.zxz);
    r3 = vec4<f32>(v_51.xyz, r3.w);
    let v_52 = r5;
    r5 = vec4<f32>(0.10000000149011611938f, v_52.y, 0.33329999446868896484f, v_52.w);
    let v_53 = fma(r3.xyz, r5.xyz, v5);
    r3 = vec4<f32>(v_53.xyz, r3.w);
    let v_54 = bitcast<vec3<u32>>(r2.xxx);
    let v_55 = select(v5, r3.xyz, (v_54 != vec3<u32>()));
    r3 = vec4<f32>(v_55.xyz, r3.w);
    r0.z = dot(r2.zw, r2.zw);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.z = sqrt(r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
    r0.w = fma((-(r0.zzzz)).w, 2.0f, 1.0f);
    r9.z = max(r0.w, -1.0f);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r9.z < 1.0f)));
    r2.x = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r9.z)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.x)));
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.x)));
    r2.x = fma((-(r9.zzzz)).x, r9.z, 1.0f);
    r2.x = sqrt(r2.x);
    r0.z = (r2.x / r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
    let v_56 = (r0.zz * r2.zw);
    r9 = vec4<f32>(v_56.xy, r9.zw);
    let v_57 = (r1.xxx * r4.xyz);
    r2 = vec4<f32>(v_57.xyz, r2.w);
    let v_58 = ((-(r6.xyzx)).xyz + r9.xyz);
    r4 = vec4<f32>(v_58.xyz, r4.w);
    let v_59 = -(r1.yzwy);
    let v_60 = fma(r2.xyz, cb12_12.tint_symbol_3[0u].yyy, v_59.xyz);
    r1 = vec4<f32>(v_60.xyz, r1.w);
    r0.z = dot(r1.xyz, v5);
    r0.w = dot(r4.xyz, r4.xyz);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r2.x = (r0.z / r0.w);
    r2.y = 1.0f;
    let v_61 = (r4.xyz * r2.xyx);
    r1 = vec4<f32>(r1.x, v_61.xyz);
    r2.z = v1.y;
    let v_62 = (r1.yzw * r2.zxz);
    r1 = vec4<f32>(r1.x, v_62.xyz);
    let v_63 = fma(r1.yzw, r5.xyz, r3.xyz);
    r1 = vec4<f32>(r1.x, v_63.xyz);
    let v_64 = bitcast<vec3<u32>>(r1.xxx);
    let v_65 = r1.yzw;
    let v_66 = select(r3.xyz, v_65, (v_64 != vec3<u32>()));
    r1 = vec4<f32>(v_66.xyz, r1.w);
    let v_67 = (r1.xyz + vec3<f32>(0.00009999999747378752f));
    r1 = vec4<f32>(v_67.xyz, r1.w);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = inverseSqrt(r0.z);
    let v_68 = (r0.zzz * r1.xyz);
    r1 = vec4<f32>(v_68.xyz, r1.w);
  } else {
    r0.y = v0.y;
    let v_69 = v0.xz;
    let v_70 = r8;
    r8 = vec4<f32>(v_69.x, v_70.y, v_69.y, v_70.w);
    r1 = vec4<f32>(v5.xyz, r1.w);
    r7.w = 1.0f;
  }
  let v_71 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(r8.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = fma(r8.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = (r2.xyz + cb1_1.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  o3 = (((-(r2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_75 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_75.xyz, r3.w);
  let v_76 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r1 = vec4<f32>(v_76.xy, r1.z, v_76.z);
  let v_77 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyw);
  r7 = vec4<f32>(v_77.xyz, r7.w);
  let v_78 = (v6.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_78.xyz, r1.w);
  let v_79 = fma(v6.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_79.xyz, r1.w);
  let v_80 = fma(v6.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_80.xyz, r1.w);
  let v_81 = (r7.yzx * r1.zxy);
  r3 = vec4<f32>(v_81.xyz, r3.w);
  let v_82 = -(r3.xyzx);
  let v_83 = fma(r1.yzx, r7.zxy, v_82.xyz);
  r3 = vec4<f32>(v_83.xyz, r3.w);
  o5 = ((r3.xyz * v6.www)).xyzx;
  if ((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) != 0u)) {
    let v_84 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
    r3 = vec4<f32>(v_84.xyz, r3.w);
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = sqrt(r0.z);
    let v_85 = (r3.xyz / r0.zzz);
    r3 = vec4<f32>(v_85.xyz, r3.w);
    r0.w = ((-(r3.zzzz)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r1.w = dot(r3.xy, r3.xy);
    r1.w = max(r1.w, 0.00000000999999993923f);
    r1.w = sqrt(r1.w);
    let v_86 = (r3.xy / r1.ww);
    r3 = vec4<f32>(v_86.xy, r3.zw);
    let v_87 = (r0.ww * r3.xy);
    r3 = vec4<f32>(v_87.xy, r3.zw);
    let v_88 = fma(r3.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r3 = vec4<f32>(v_88.xy, r3.zw);
    let v_89 = (r3.xy * vec2<f32>(126.73267364501953125f));
    r3 = vec4<f32>(r3.xy, v_89.xy);
    let v_90 = -(r3.zwzz);
    let v_91 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.zw >= v_90.xy)));
    r4 = vec4<f32>(v_91.xy, r4.zw);
    let v_92 = fract(abs(r3.zzzw).zw);
    r3 = vec4<f32>(r3.xy, v_92.xy);
    let v_93 = -(r3.zzzw);
    let v_94 = bitcast<vec2<u32>>(r4.xy);
    let v_95 = select(v_93.zw, r3.zw, (v_94 != vec2<u32>()));
    r3 = vec4<f32>(r3.xy, v_95.xy);
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    let v_96 = fma((-(r3.zwzz)).xy, vec2<f32>(0.00789062492549419403f), r3.xy);
    r3 = vec4<f32>(v_96.xy, r3.zw);
    r5 = (r3.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r6 = textureSampleLevel(t2, s2, r5.xyxx.xy, 0.0f);
    r5 = textureSampleLevel(t2, s2, r5.zwzz.xy, 0.0f);
    let v_97 = (r3.xy + vec2<f32>(0.00789062492549419403f));
    r3 = vec4<f32>(v_97.xy, r3.zw);
    r9 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    let v_98 = ((-(r3.zwzz)).xy + vec2<f32>(1.0f));
    r3 = vec4<f32>(v_98.xy, r3.zw);
    r4 = (r3.xxxx * r4);
    r6 = (r3.zzzz * r6);
    r6 = (r3.yyyy * r6);
    r4 = fma(r4, r3.yyyy, r6);
    r5 = (r3.xxxx * r5);
    r4 = fma(r5, r3.wwww, r4);
    r5 = (r3.zzzz * r9);
    r3 = fma(r5, r3.wwww, r4);
    r0.z = (r0.z / cb12_12.tint_symbol_3[0u].x);
    r0.z = min(r0.z, 1.0f);
    r3 = (r0.zzzz * r3);
    r3 = fma(r3, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r3 = v1;
  }
  r4.x = v1.y;
  r4.w = 1.0f;
  let v_99 = bitcast<vec4<u32>>(cb12_12.tint_symbol_3[4u].yyyy);
  let v_100 = r4.xxxw;
  o6 = select(r3, v_100, (v_99 != vec4<u32>()));
  r3 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r8.xxxx, cb1_1.tint_symbol[8u], r3);
  r3 = fma(r8.zzzz, cb1_1.tint_symbol[10u], r3);
  r3 = (r3 + cb1_1.tint_symbol[11u]);
  o7.z = (r0.x * cb11_11.tint_symbol_4[4u].z);
  x0[0u].x = dot(r3, cb0_0.tint_symbol_1[0u]);
  o0 = vec4<f32>(v2.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v3.xy);
  o1 = r7;
  let v_101 = r2;
  o2 = vec4<f32>(v_101.xyz, o2.w);
  o2.w = 1.0f;
  o8 = r3;
  let v_102 = &(x0[0u]);
  *(v_102) = vec4<f32>((*(v_102)).x, vec3<f32>());
  o4 = r1.xyz.xyzx;
  o7 = vec3<f32>(v4.xy, o7.xyz.z).xyzx;
  o9[0u] = x0[0u].x;
  o9[1u] = x0[0u].y;
  o9[2u] = x0[0u].z;
  o9[3u] = x0[0u].w;
  v = vec4<f32>(o9[0u], o9[1u], o9[2u], o9[3u]);
}

struct tint_symbol_6 {
  @location(0u)
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
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
  @builtin(position)
  o8 : vec4<f32>,
  @builtin(clip_distances)
  o9 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, v);
}
