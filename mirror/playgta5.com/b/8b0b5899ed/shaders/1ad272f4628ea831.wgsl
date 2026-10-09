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

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb9_struct {
  tint_symbol_3 : array<vec4<f32>, 9u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>) {
  r0.x = clamp(v1.w, 0.0f, 1.0f);
  if ((bitcast<u32>(cb7_7.tint_symbol_1[0u].x) != 0u)) {
    let v = (v0 + cb12_12.tint_symbol_2[1u].xyz);
    r0 = vec4<f32>(r0.x, v.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = sqrt(r1.x);
    let v_1 = (r0.yzw / r1.xxx);
    r0 = vec4<f32>(r0.x, v_1.xyz);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r1.y = dot(r0.yz, r0.yz);
    r1.y = max(r1.y, 0.00000000999999993923f);
    r1.y = sqrt(r1.y);
    r2 = (r0.yzyz / r1.yyyy);
    r2 = (r0.wwww * r2);
    r2 = fma(r2, vec4<f32>(0.5f), vec4<f32>(0.5f));
    let v_2 = (r2.zw * vec2<f32>(126.73267364501953125f));
    let v_3 = r0;
    r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
    let v_4 = -(r0.yyzy);
    let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yz >= v_4.yz)));
    let v_6 = r1;
    r1 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
    let v_7 = fract(abs(r0.yyzy).yz);
    let v_8 = r0;
    r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
    let v_9 = -(r0.yyzy);
    let v_10 = bitcast<vec2<u32>>(r1.yz);
    let v_11 = select(v_9.yz, r0.yz, (v_10 != vec2<u32>()));
    let v_12 = r0;
    r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
    r3 = textureSampleLevel(t2, s2, r2.zwzz.xy, 0.0f);
    r2 = fma(-(r0.yzyz), vec4<f32>(0.00789062492549419403f), r2);
    r4 = (r2.zwzw + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
    r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
    r6 = (r2.zwzw + vec4<f32>(0.00789062492549419403f, 0.00789062492549419403f, -0.5f, -0.5f));
    r7 = textureSampleLevel(t2, s2, r6.xyxx.xy, 0.0f);
    let v_13 = ((-(r0.yyzy)).yz + vec2<f32>(1.0f));
    let v_14 = r1;
    r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
    let v_15 = (r1.yyy * r3.xyz);
    r8 = vec4<f32>(v_15.xyz, r8.w);
    let v_16 = (r0.yyy * r5.xyz);
    r9 = vec4<f32>(v_16.xyz, r9.w);
    let v_17 = (r1.zzz * r9.xyz);
    r9 = vec4<f32>(v_17.xyz, r9.w);
    let v_18 = fma(r8.xyz, r1.zzz, r9.xyz);
    r8 = vec4<f32>(v_18.xyz, r8.w);
    let v_19 = (r1.yyy * r4.xyz);
    r1 = vec4<f32>(r1.x, v_19.xyz);
    let v_20 = fma(r1.yzw, r0.zzz, r8.xyz);
    r1 = vec4<f32>(r1.x, v_20.xyz);
    let v_21 = (r0.yyy * r7.xyz);
    r7 = vec4<f32>(v_21.xyz, r7.w);
    let v_22 = fma(r7.xyz, r0.zzz, r1.yzw);
    r0 = vec4<f32>(r0.x, v_22.xyz);
    r1.x = (r1.x / cb12_12.tint_symbol_2[0u].x);
    r1.x = min(r1.x, 1.0f);
    let v_23 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_23.xyz);
    let v_24 = (r0.yzw * cb12_12.tint_symbol_2[0u].yyy);
    r0 = vec4<f32>(r0.x, v_24.xyz);
    r1.y = dot(r0.yzw, r0.yzw);
    r1.y = sqrt(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = fma((-(r1.yyyy)).y, 4.0f, 1.0f);
    o2.w = max(r1.y, 0.0f);
    let v_25 = fma(r0.yzw, v1.yyy, v0);
    r7 = vec4<f32>(v_25.xyz, r7.w);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_2[2u].w)));
    let v_26 = -(cb12_12.tint_symbol_2[1u].xxyz);
    let v_27 = (v_26.yzw + cb12_12.tint_symbol_2[2u].xyz);
    r1 = vec4<f32>(r1.x, v_27.xyz);
    let v_28 = ((-(r1.yzwy)).xyz + r7.xyz);
    r8 = vec4<f32>(v_28.xyz, r8.w);
    r0.z = dot(r8.xyz, r8.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_2[2u].w * 1.10000002384185791016f);
    r1.y = clamp(((r0.zzzz / r0.wwww)).y, 0.0f, 1.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < 1.0f)));
    r0.z = (r8.y / r0.z);
    r1.y = fma(r1.y, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.z = (r0.z * r1.y);
    r0.z = fma(r0.z, r0.w, r1.z);
    let v_29 = bitcast<u32>(r1.w);
    let v_30 = r0.z;
    r0.z = select(r7.y, v_30, (v_29 != 0u));
    let v_31 = bitcast<u32>(r0.y);
    let v_32 = r0.z;
    r7.w = select(r7.y, v_32, (v_31 != 0u));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_2[3u].w)));
    let v_33 = (v_26.yzw + cb12_12.tint_symbol_2[3u].xyz);
    r1 = vec4<f32>(r1.x, v_33.xyz);
    let v_34 = ((-(r1.yzwy)).xyz + r7.xwz);
    r8 = vec4<f32>(v_34.xyz, r8.w);
    r0.z = dot(r8.xyz, r8.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_2[3u].w * 1.10000002384185791016f);
    r1.y = clamp(((r0.zzzz / r0.wwww)).y, 0.0f, 1.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < 1.0f)));
    r0.z = (r8.y / r0.z);
    r1.y = fma(r1.y, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.z = (r0.z * r1.y);
    r0.z = fma(r0.z, r0.w, r1.z);
    let v_35 = bitcast<u32>(r1.w);
    let v_36 = r0.z;
    r0.z = select(r7.w, v_36, (v_35 != 0u));
    let v_37 = bitcast<u32>(r0.y);
    let v_38 = r0.z;
    r0.y = select(r7.w, v_38, (v_37 != 0u));
    let v_39 = (r6.zw + r6.zw);
    r0 = vec4<f32>(r0.xy, v_39.xy);
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
    let v_40 = (r0.zw * r1.yy);
    r6 = vec4<f32>(v_40.xy, r6.zw);
    let v_41 = (r1.xxx * r3.xyz);
    r1 = vec4<f32>(r1.x, v_41.xyz);
    let v_42 = (r1.yzw * cb12_12.tint_symbol_2[0u].yyy);
    r1 = vec4<f32>(r1.x, v_42.xyz);
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
    let v_43 = (r0.zz * r2.xy);
    r3 = vec4<f32>(v_43.xy, r3.zw);
    let v_44 = (r1.xxx * r5.xyz);
    r5 = vec4<f32>(v_44.xyz, r5.w);
    let v_45 = ((-(r6.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_45.xyz, r3.w);
    let v_46 = -(r1.yzwy);
    let v_47 = fma(r5.xyz, cb12_12.tint_symbol_2[0u].yyy, v_46.xyz);
    r5 = vec4<f32>(v_47.xyz, r5.w);
    r0.z = dot(r5.xyz, v4);
    r0.w = dot(r3.xyz, r3.xyz);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r5.x = (r0.z / r0.w);
    r5.y = 1.0f;
    let v_48 = (r3.xyz * r5.xyx);
    r3 = vec4<f32>(v_48.xyz, r3.w);
    let v_49 = r5;
    r5 = vec4<f32>(v_49.x, v1.yy, v_49.w);
    let v_50 = (r3.xyz * r5.zxz);
    r3 = vec4<f32>(v_50.xyz, r3.w);
    let v_51 = r5;
    r5 = vec4<f32>(0.10000000149011611938f, v_51.y, 0.33329999446868896484f, v_51.w);
    let v_52 = fma(r3.xyz, r5.xyz, v4);
    r3 = vec4<f32>(v_52.xyz, r3.w);
    let v_53 = bitcast<vec3<u32>>(r2.xxx);
    let v_54 = select(v4, r3.xyz, (v_53 != vec3<u32>()));
    r3 = vec4<f32>(v_54.xyz, r3.w);
    r0.z = dot(r2.zw, r2.zw);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.z = sqrt(r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
    r0.w = fma((-(r0.zzzz)).w, 2.0f, 1.0f);
    r8.z = max(r0.w, -1.0f);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r8.z < 1.0f)));
    r2.x = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r8.z)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.x)));
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.x)));
    r2.x = fma((-(r8.zzzz)).x, r8.z, 1.0f);
    r2.x = sqrt(r2.x);
    r0.z = (r2.x / r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
    let v_55 = (r0.zz * r2.zw);
    r8 = vec4<f32>(v_55.xy, r8.zw);
    let v_56 = (r1.xxx * r4.xyz);
    r2 = vec4<f32>(v_56.xyz, r2.w);
    let v_57 = ((-(r6.xyzx)).xyz + r8.xyz);
    r4 = vec4<f32>(v_57.xyz, r4.w);
    let v_58 = -(r1.yzwy);
    let v_59 = fma(r2.xyz, cb12_12.tint_symbol_2[0u].yyy, v_58.xyz);
    r1 = vec4<f32>(v_59.xyz, r1.w);
    r0.z = dot(r1.xyz, v4);
    r0.w = dot(r4.xyz, r4.xyz);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r2.x = (r0.z / r0.w);
    r2.y = 1.0f;
    let v_60 = (r4.xyz * r2.xyx);
    r1 = vec4<f32>(r1.x, v_60.xyz);
    r2.z = v1.y;
    let v_61 = (r1.yzw * r2.zxz);
    r1 = vec4<f32>(r1.x, v_61.xyz);
    let v_62 = fma(r1.yzw, r5.xyz, r3.xyz);
    r1 = vec4<f32>(r1.x, v_62.xyz);
    let v_63 = bitcast<vec3<u32>>(r1.xxx);
    let v_64 = r1.yzw;
    let v_65 = select(r3.xyz, v_64, (v_63 != vec3<u32>()));
    r1 = vec4<f32>(v_65.xyz, r1.w);
    let v_66 = (r1.xyz + vec3<f32>(0.00009999999747378752f));
    r1 = vec4<f32>(v_66.xyz, r1.w);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = inverseSqrt(r0.z);
    let v_67 = (r0.zzz * r1.xyz);
    r1 = vec4<f32>(v_67.xyz, r1.w);
  } else {
    r0.y = v0.y;
    let v_68 = v0.xz;
    let v_69 = r7;
    r7 = vec4<f32>(v_68.x, v_69.y, v_68.y, v_69.w);
    r1 = vec4<f32>(v4.xyz, r1.w);
    o2.w = 1.0f;
  }
  let v_70 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = fma(r7.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(r7.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = (r2.xyz + cb1_1.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  o4 = vec4<f32>(v_74.xyz, o4.w);
  let v_75 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_76.xy, r1.z, v_76.z);
  let v_77 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyw);
  o2 = vec4<f32>(v_77.xyz, o2.w);
  if ((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) != 0u)) {
    let v_78 = (v0 + cb12_12.tint_symbol_2[1u].xyz);
    r1 = vec4<f32>(v_78.xyz, r1.w);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.z = sqrt(r0.z);
    let v_79 = (r1.xyz / r0.zzz);
    r1 = vec4<f32>(v_79.xyz, r1.w);
    r0.w = ((-(r1.zzzz)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r1.z = dot(r1.xy, r1.xy);
    r1.z = max(r1.z, 0.00000000999999993923f);
    r1.z = sqrt(r1.z);
    let v_80 = (r1.xy / r1.zz);
    r1 = vec4<f32>(v_80.xy, r1.zw);
    let v_81 = (r0.ww * r1.xy);
    r1 = vec4<f32>(v_81.xy, r1.zw);
    let v_82 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r1 = vec4<f32>(v_82.xy, r1.zw);
    let v_83 = (r1.xy * vec2<f32>(126.73267364501953125f));
    r1 = vec4<f32>(r1.xy, v_83.xy);
    let v_84 = -(r1.zwzz);
    let v_85 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.zw >= v_84.xy)));
    r2 = vec4<f32>(v_85.xy, r2.zw);
    let v_86 = fract(abs(r1.zzzw).zw);
    r1 = vec4<f32>(r1.xy, v_86.xy);
    let v_87 = -(r1.zzzw);
    let v_88 = bitcast<vec2<u32>>(r2.xy);
    let v_89 = select(v_87.zw, r1.zw, (v_88 != vec2<u32>()));
    r1 = vec4<f32>(r1.xy, v_89.xy);
    r2 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
    let v_90 = fma((-(r1.zwzz)).xy, vec2<f32>(0.00789062492549419403f), r1.xy);
    r1 = vec4<f32>(v_90.xy, r1.zw);
    r3 = (r1.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    let v_91 = (r1.xy + vec2<f32>(0.00789062492549419403f));
    r1 = vec4<f32>(v_91.xy, r1.zw);
    r5 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
    let v_92 = ((-(r1.zwzz)).xy + vec2<f32>(1.0f));
    r1 = vec4<f32>(v_92.xy, r1.zw);
    r2 = (r1.xxxx * r2);
    r4 = (r1.zzzz * r4);
    r4 = (r1.yyyy * r4);
    r2 = fma(r2, r1.yyyy, r4);
    r3 = (r1.xxxx * r3);
    r2 = fma(r3, r1.wwww, r2);
    r3 = (r1.zzzz * r5);
    r1 = fma(r3, r1.wwww, r2);
    r0.z = (r0.z / cb12_12.tint_symbol_2[0u].x);
    r0.z = min(r0.z, 1.0f);
    r1 = (r0.zzzz * r1);
    r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r1 = v1;
  }
  r2.x = v1.y;
  r2.w = 1.0f;
  let v_93 = bitcast<vec4<u32>>(cb12_12.tint_symbol_2[4u].yyyy);
  let v_94 = r2.xxxw;
  o3 = select(r1, v_94, (v_93 != vec4<u32>()));
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r7.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r7.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  o4.w = (r0.x * cb11_11.tint_symbol_3[8u].x);
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v3.xy);
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_4(o0, o1, o2, o3, o4);
}
