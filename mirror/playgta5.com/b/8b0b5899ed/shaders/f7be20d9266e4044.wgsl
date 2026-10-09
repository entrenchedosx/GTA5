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

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  if ((bitcast<u32>(cb7_7.tint_symbol_1[0u].x) != 0u)) {
    let v = (v0 + cb12_12.tint_symbol_2[1u].xyz);
    r0 = vec4<f32>(v.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = sqrt(r0.w);
    let v_1 = (r0.xyz / r0.www);
    r0 = vec4<f32>(v_1.xyz, r0.w);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.z = (r0.z * 0.5f);
    r1.x = dot(r0.xy, r0.xy);
    r1.x = max(r1.x, 0.00000000999999993923f);
    r1.x = sqrt(r1.x);
    r1 = (r0.xyxy / r1.xxxx);
    r1 = (r0.zzzz * r1);
    r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
    let v_2 = (r1.zw * vec2<f32>(126.73267364501953125f));
    r0 = vec4<f32>(v_2.xy, r0.zw);
    let v_3 = -(r0.xyxx);
    let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xy >= v_3.xy)));
    r2 = vec4<f32>(v_4.xy, r2.zw);
    let v_5 = fract(abs(r0.xyxx).xy);
    r0 = vec4<f32>(v_5.xy, r0.zw);
    let v_6 = -(r0.xyxx);
    let v_7 = bitcast<vec2<u32>>(r2.xy);
    let v_8 = select(v_6.xy, r0.xy, (v_7 != vec2<u32>()));
    r0 = vec4<f32>(v_8.xy, r0.zw);
    r2 = textureSampleLevel(t2, s2, r1.zwzz.xy, 0.0f);
    r1 = fma(-(r0.xyxy), vec4<f32>(0.00789062492549419403f), r1);
    r3 = (r1.zwzw + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    r5 = (r1.zwzw + vec4<f32>(0.00789062492549419403f, 0.00789062492549419403f, -0.5f, -0.5f));
    r6 = textureSampleLevel(t2, s2, r5.xyxx.xy, 0.0f);
    let v_9 = ((-(r0.xyxx)).xy + vec2<f32>(1.0f));
    r5 = vec4<f32>(v_9.xy, r5.zw);
    let v_10 = (r2.xyz * r5.xxx);
    r7 = vec4<f32>(v_10.xyz, r7.w);
    let v_11 = (r0.xxx * r4.xyz);
    r8 = vec4<f32>(v_11.xyz, r8.w);
    let v_12 = (r5.yyy * r8.xyz);
    r8 = vec4<f32>(v_12.xyz, r8.w);
    let v_13 = fma(r7.xyz, r5.yyy, r8.xyz);
    r7 = vec4<f32>(v_13.xyz, r7.w);
    let v_14 = (r3.xyz * r5.xxx);
    r8 = vec4<f32>(v_14.xyz, r8.w);
    let v_15 = fma(r8.xyz, r0.yyy, r7.xyz);
    r7 = vec4<f32>(v_15.xyz, r7.w);
    let v_16 = (r0.xxx * r6.xyz);
    r6 = vec4<f32>(v_16.xyz, r6.w);
    let v_17 = fma(r6.xyz, r0.yyy, r7.xyz);
    r0 = vec4<f32>(v_17.xyz, r0.w);
    r0.w = (r0.w / cb12_12.tint_symbol_2[0u].x);
    r0.w = min(r0.w, 1.0f);
    let v_18 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    let v_19 = (r0.xyz * cb12_12.tint_symbol_2[0u].yyy);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    r2.w = dot(r0.xyz, r0.xyz);
    r2.w = sqrt(r2.w);
    r2.w = min(r2.w, 1.0f);
    r2.w = fma((-(r2.wwww)).w, 4.0f, 1.0f);
    o2.w = max(r2.w, 0.0f);
    let v_20 = fma(r0.xyz, v1.yyy, v0);
    r6 = vec4<f32>(v_20.xyz, r6.w);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_2[2u].w)));
    let v_21 = -(cb12_12.tint_symbol_2[1u].xyzx);
    let v_22 = (v_21.xyz + cb12_12.tint_symbol_2[2u].xyz);
    r7 = vec4<f32>(v_22.xyz, r7.w);
    let v_23 = -(r7.xxyz);
    let v_24 = (r6.xyz + v_23.xzw);
    r7 = vec4<f32>(v_24.x, r7.y, v_24.yz);
    r0.y = dot(r7.xzw, r7.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_2[2u].w * 1.10000002384185791016f);
    r2.w = clamp(((r0.yyyy / r0.zzzz)).w, 0.0f, 1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
    r0.y = (r7.z / r0.y);
    r2.w = fma(r2.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.y = (r0.y * r2.w);
    r0.y = fma(r0.y, r0.z, r7.y);
    let v_25 = bitcast<u32>(r3.w);
    let v_26 = r0.y;
    r0.y = select(r6.y, v_26, (v_25 != 0u));
    let v_27 = bitcast<u32>(r0.x);
    let v_28 = r0.y;
    r6.w = select(r6.y, v_28, (v_27 != 0u));
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_2[3u].w)));
    let v_29 = (v_21.xyz + cb12_12.tint_symbol_2[3u].xyz);
    r7 = vec4<f32>(v_29.xyz, r7.w);
    let v_30 = -(r7.xxyz);
    let v_31 = (r6.xwz + v_30.xzw);
    r7 = vec4<f32>(v_31.x, r7.y, v_31.yz);
    r0.y = dot(r7.xzw, r7.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_2[3u].w * 1.10000002384185791016f);
    r2.w = clamp(((r0.yyyy / r0.zzzz)).w, 0.0f, 1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
    r0.y = (r7.z / r0.y);
    r2.w = fma(r2.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.y = (r0.y * r2.w);
    r0.y = fma(r0.y, r0.z, r7.y);
    let v_32 = bitcast<u32>(r3.w);
    let v_33 = r0.y;
    r0.y = select(r6.w, v_33, (v_32 != 0u));
    let v_34 = bitcast<u32>(r0.x);
    let v_35 = r0.y;
    r0.x = select(r6.w, v_35, (v_34 != 0u));
    let v_36 = (r5.zw + r5.zw);
    let v_37 = r0;
    r0 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
    r2.w = dot(r0.yz, r0.yz);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r2.w = sqrt(r2.w);
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.w)));
    r3.w = fma((-(r2.wwww)).w, 2.0f, 1.0f);
    r5.z = max(r3.w, -1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r5.z < 1.0f)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r5.z)));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) & bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) & bitcast<u32>(r4.w)));
    r4.w = fma((-(r5.zzzz)).w, r5.z, 1.0f);
    r4.w = sqrt(r4.w);
    r2.w = (r4.w / r2.w);
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.w)));
    let v_38 = (r0.yz * r2.ww);
    r5 = vec4<f32>(v_38.xy, r5.zw);
    let v_39 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_39.xyz, r2.w);
    let v_40 = (r2.xyz * cb12_12.tint_symbol_2[0u].yyy);
    r2 = vec4<f32>(v_40.xyz, r2.w);
    r1 = (r1 + vec4<f32>(-0.49210938811302185059f, -0.5f, -0.5f, -0.49210938811302185059f));
    r1 = (r1 + r1);
    r0.y = dot(r1.xy, r1.xy);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    r0.y = sqrt(r0.y);
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
    r0.z = fma((-(r0.yyyy)).z, 2.0f, 1.0f);
    r7.z = max(r0.z, -1.0f);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < 1.0f)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r7.z)));
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r2.w)));
    r2.w = fma((-(r7.zzzz)).w, r7.z, 1.0f);
    r2.w = sqrt(r2.w);
    r0.y = (r2.w / r0.y);
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
    let v_41 = (r0.yy * r1.xy);
    r7 = vec4<f32>(v_41.xy, r7.zw);
    let v_42 = (r0.www * r4.xyz);
    r4 = vec4<f32>(v_42.xyz, r4.w);
    let v_43 = ((-(r5.xyzx)).xyz + r7.xyz);
    r7 = vec4<f32>(v_43.xyz, r7.w);
    let v_44 = -(r2.xyzx);
    let v_45 = fma(r4.xyz, cb12_12.tint_symbol_2[0u].yyy, v_44.xyz);
    r4 = vec4<f32>(v_45.xyz, r4.w);
    r0.y = dot(r4.xyz, v3);
    r0.z = dot(r7.xyz, r7.xyz);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r4.x = (r0.y / r0.z);
    r4.y = 1.0f;
    let v_46 = (r7.xyz * r4.xyx);
    r7 = vec4<f32>(v_46.xyz, r7.w);
    r4.z = v1.y;
    let v_47 = (r4.zxz * r7.xyz);
    r4 = vec4<f32>(v_47.xyz, r4.w);
    let v_48 = r7;
    r7 = vec4<f32>(0.10000000149011611938f, v_48.y, 0.33329999446868896484f, v_48.w);
    r7.y = v1.y;
    let v_49 = fma(r4.xyz, r7.xyz, v3);
    r4 = vec4<f32>(v_49.xyz, r4.w);
    let v_50 = bitcast<vec3<u32>>(r1.xxx);
    let v_51 = select(v3, r4.xyz, (v_50 != vec3<u32>()));
    r4 = vec4<f32>(v_51.xyz, r4.w);
    r0.y = dot(r1.zw, r1.zw);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    r0.y = sqrt(r0.y);
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
    r0.z = fma((-(r0.yyyy)).z, 2.0f, 1.0f);
    r8.z = max(r0.z, -1.0f);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (r8.z < 1.0f)));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r8.z)));
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r1.x)));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r1.x)));
    r1.x = fma((-(r8.zzzz)).x, r8.z, 1.0f);
    r1.x = sqrt(r1.x);
    r0.y = (r1.x / r0.y);
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
    let v_52 = (r0.yy * r1.zw);
    r8 = vec4<f32>(v_52.xy, r8.zw);
    let v_53 = (r0.www * r3.xyz);
    r0 = vec4<f32>(r0.x, v_53.xyz);
    let v_54 = ((-(r5.xyzx)).xyz + r8.xyz);
    r1 = vec4<f32>(v_54.xyz, r1.w);
    let v_55 = -(r2.xxyz);
    let v_56 = fma(r0.yzw, cb12_12.tint_symbol_2[0u].yyy, v_55.yzw);
    r0 = vec4<f32>(r0.x, v_56.xyz);
    r0.y = dot(r0.yzw, v3);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r2.x = (r0.y / r0.z);
    r2.y = 1.0f;
    let v_57 = (r1.xyz * r2.xyx);
    r1 = vec4<f32>(v_57.xyz, r1.w);
    r2.z = v1.y;
    let v_58 = (r1.xyz * r2.zxz);
    r1 = vec4<f32>(v_58.xyz, r1.w);
    let v_59 = fma(r1.xyz, r7.xyz, r4.xyz);
    r1 = vec4<f32>(v_59.xyz, r1.w);
    let v_60 = bitcast<vec3<u32>>(r0.www);
    let v_61 = r1.xyz;
    let v_62 = select(r4.xyz, v_61, (v_60 != vec3<u32>()));
    r0 = vec4<f32>(r0.x, v_62.xyz);
    let v_63 = (r0.yzw + vec3<f32>(0.00009999999747378752f));
    r0 = vec4<f32>(r0.x, v_63.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = inverseSqrt(r1.x);
    let v_64 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_64.xyz);
  } else {
    r0.x = v0.y;
    let v_65 = v0.xz;
    let v_66 = r6;
    r6 = vec4<f32>(v_65.x, v_66.y, v_65.y, v_66.w);
    r0 = vec4<f32>(r0.x, v3.xyz);
    o2.w = 1.0f;
  }
  let v_67 = (r0.xxx * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_67.xyz, r1.w);
  let v_68 = fma(r6.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_68.xyz, r1.w);
  let v_69 = fma(r6.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_70.xyz, r1.w);
  o4 = (((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_71 = (r0.zzz * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_71.xyz, r1.w);
  let v_72 = fma(r0.yyy, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  let v_73 = fma(r0.www, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  o2 = vec4<f32>(v_73.xyz, o2.w);
  if ((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) != 0u)) {
    let v_74 = (v0 + cb12_12.tint_symbol_2[1u].xyz);
    r0 = vec4<f32>(r0.x, v_74.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = sqrt(r1.x);
    let v_75 = (r0.yzw / r1.xxx);
    r0 = vec4<f32>(r0.x, v_75.xyz);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r1.y = dot(r0.yz, r0.yz);
    r1.y = max(r1.y, 0.00000000999999993923f);
    r1.y = sqrt(r1.y);
    let v_76 = (r0.yz / r1.yy);
    let v_77 = r0;
    r0 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
    let v_78 = (r0.ww * r0.yz);
    let v_79 = r0;
    r0 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
    let v_80 = fma(r0.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
    let v_81 = r0;
    r0 = vec4<f32>(v_81.x, v_80.xy, v_81.w);
    let v_82 = (r0.yz * vec2<f32>(126.73267364501953125f));
    let v_83 = r1;
    r1 = vec4<f32>(v_83.x, v_82.xy, v_83.w);
    let v_84 = -(r1.yzyy);
    let v_85 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yz >= v_84.xy)));
    r2 = vec4<f32>(v_85.xy, r2.zw);
    let v_86 = fract(abs(r1.yyzy).yz);
    let v_87 = r1;
    r1 = vec4<f32>(v_87.x, v_86.xy, v_87.w);
    let v_88 = -(r1.yyzy);
    let v_89 = bitcast<vec2<u32>>(r2.xy);
    let v_90 = select(v_88.yz, r1.yz, (v_89 != vec2<u32>()));
    let v_91 = r1;
    r1 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
    r2 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
    let v_92 = fma((-(r1.yyzy)).yz, vec2<f32>(0.00789062492549419403f), r0.yz);
    let v_93 = r0;
    r0 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
    r3 = (r0.yzyz + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    let v_94 = (r0.yz + vec2<f32>(0.00789062492549419403f));
    let v_95 = r0;
    r0 = vec4<f32>(v_95.x, v_94.xy, v_95.w);
    r5 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
    let v_96 = ((-(r1.yyzy)).yz + vec2<f32>(1.0f));
    let v_97 = r0;
    r0 = vec4<f32>(v_97.x, v_96.xy, v_97.w);
    r2 = (r0.yyyy * r2);
    r4 = (r1.yyyy * r4);
    r4 = (r0.zzzz * r4);
    r2 = fma(r2, r0.zzzz, r4);
    r3 = (r0.yyyy * r3);
    r2 = fma(r3, r1.zzzz, r2);
    r3 = (r1.yyyy * r5);
    r2 = fma(r3, r1.zzzz, r2);
    r0.y = (r1.x / cb12_12.tint_symbol_2[0u].x);
    r0.y = min(r0.y, 1.0f);
    r1 = (r0.yyyy * r2);
    r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r1 = v1;
  }
  r2.x = v1.y;
  r2.w = 1.0f;
  let v_98 = bitcast<vec4<u32>>(cb12_12.tint_symbol_2[4u].yyyy);
  let v_99 = r2.xxxw;
  o3 = select(r1, v_99, (v_98 != vec4<u32>()));
  r0 = (r0.xxxx * cb1_1.tint_symbol[9u]);
  r0 = fma(r6.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(r6.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v2.xyxy;
}

struct tint_symbol_3 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
