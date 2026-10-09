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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>) {
  if ((bitcast<u32>(cb7_7.tint_symbol_3[0u].x) != 0u)) {
    let v_1 = (v0 + cb12_12.tint_symbol_4[1u].xyz);
    r0 = vec4<f32>(v_1.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = sqrt(r0.w);
    let v_2 = (r0.xyz / r0.www);
    r0 = vec4<f32>(v_2.xyz, r0.w);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.z = (r0.z * 0.5f);
    r1.x = dot(r0.xy, r0.xy);
    r1.x = max(r1.x, 0.00000000999999993923f);
    r1.x = sqrt(r1.x);
    r1 = (r0.xyxy / r1.xxxx);
    r1 = (r0.zzzz * r1);
    r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
    let v_3 = (r1.zw * vec2<f32>(126.73267364501953125f));
    r0 = vec4<f32>(v_3.xy, r0.zw);
    let v_4 = -(r0.xyxx);
    let v_5 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xy >= v_4.xy)));
    r2 = vec4<f32>(v_5.xy, r2.zw);
    let v_6 = fract(abs(r0.xyxx).xy);
    r0 = vec4<f32>(v_6.xy, r0.zw);
    let v_7 = -(r0.xyxx);
    let v_8 = bitcast<vec2<u32>>(r2.xy);
    let v_9 = select(v_7.xy, r0.xy, (v_8 != vec2<u32>()));
    r0 = vec4<f32>(v_9.xy, r0.zw);
    r2 = textureSampleLevel(t2, s2, r1.zwzz.xy, 0.0f);
    r1 = fma(-(r0.xyxy), vec4<f32>(0.00789062492549419403f), r1);
    r3 = (r1.zwzw + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    r5 = (r1.zwzw + vec4<f32>(0.00789062492549419403f, 0.00789062492549419403f, -0.5f, -0.5f));
    r6 = textureSampleLevel(t2, s2, r5.xyxx.xy, 0.0f);
    let v_10 = ((-(r0.xyxx)).xy + vec2<f32>(1.0f));
    r5 = vec4<f32>(v_10.xy, r5.zw);
    let v_11 = (r2.xyz * r5.xxx);
    r7 = vec4<f32>(v_11.xyz, r7.w);
    let v_12 = (r0.xxx * r4.xyz);
    r8 = vec4<f32>(v_12.xyz, r8.w);
    let v_13 = (r5.yyy * r8.xyz);
    r8 = vec4<f32>(v_13.xyz, r8.w);
    let v_14 = fma(r7.xyz, r5.yyy, r8.xyz);
    r7 = vec4<f32>(v_14.xyz, r7.w);
    let v_15 = (r3.xyz * r5.xxx);
    r8 = vec4<f32>(v_15.xyz, r8.w);
    let v_16 = fma(r8.xyz, r0.yyy, r7.xyz);
    r7 = vec4<f32>(v_16.xyz, r7.w);
    let v_17 = (r0.xxx * r6.xyz);
    r6 = vec4<f32>(v_17.xyz, r6.w);
    let v_18 = fma(r6.xyz, r0.yyy, r7.xyz);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    r0.w = (r0.w / cb12_12.tint_symbol_4[0u].x);
    r0.w = min(r0.w, 1.0f);
    let v_19 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    let v_20 = (r0.xyz * cb12_12.tint_symbol_4[0u].yyy);
    r0 = vec4<f32>(v_20.xyz, r0.w);
    let v_21 = fma(r0.xyz, v4.xxx, v0);
    r6 = vec4<f32>(v_21.xyz, r6.w);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_4[2u].w)));
    let v_22 = -(cb12_12.tint_symbol_4[1u].xyzx);
    let v_23 = (v_22.xyz + cb12_12.tint_symbol_4[2u].xyz);
    r7 = vec4<f32>(v_23.xyz, r7.w);
    let v_24 = -(r7.xxyz);
    let v_25 = (r6.xyz + v_24.xzw);
    r7 = vec4<f32>(v_25.x, r7.y, v_25.yz);
    r0.y = dot(r7.xzw, r7.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_4[2u].w * 1.10000002384185791016f);
    r2.w = clamp(((r0.yyyy / r0.zzzz)).w, 0.0f, 1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
    r0.y = (r7.z / r0.y);
    r2.w = fma(r2.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.y = (r0.y * r2.w);
    r0.y = fma(r0.y, r0.z, r7.y);
    let v_26 = bitcast<u32>(r3.w);
    let v_27 = r0.y;
    r0.y = select(r6.y, v_27, (v_26 != 0u));
    let v_28 = bitcast<u32>(r0.x);
    let v_29 = r0.y;
    r6.w = select(r6.y, v_29, (v_28 != 0u));
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_4[3u].w)));
    let v_30 = (v_22.xyz + cb12_12.tint_symbol_4[3u].xyz);
    r7 = vec4<f32>(v_30.xyz, r7.w);
    let v_31 = -(r7.xxyz);
    let v_32 = (r6.xwz + v_31.xzw);
    r7 = vec4<f32>(v_32.x, r7.y, v_32.yz);
    r0.y = dot(r7.xzw, r7.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_4[3u].w * 1.10000002384185791016f);
    r2.w = clamp(((r0.yyyy / r0.zzzz)).w, 0.0f, 1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
    r0.y = (r7.z / r0.y);
    r2.w = fma(r2.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.y = (r0.y * r2.w);
    r0.y = fma(r0.y, r0.z, r7.y);
    let v_33 = bitcast<u32>(r3.w);
    let v_34 = r0.y;
    r0.y = select(r6.w, v_34, (v_33 != 0u));
    let v_35 = bitcast<u32>(r0.x);
    let v_36 = r0.y;
    r0.x = select(r6.w, v_36, (v_35 != 0u));
    let v_37 = (r5.zw + r5.zw);
    let v_38 = r0;
    r0 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
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
    let v_39 = (r0.yz * r2.ww);
    r5 = vec4<f32>(v_39.xy, r5.zw);
    let v_40 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_40.xyz, r2.w);
    let v_41 = (r2.xyz * cb12_12.tint_symbol_4[0u].yyy);
    r2 = vec4<f32>(v_41.xyz, r2.w);
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
    let v_42 = (r0.yy * r1.xy);
    r7 = vec4<f32>(v_42.xy, r7.zw);
    let v_43 = (r0.www * r4.xyz);
    r4 = vec4<f32>(v_43.xyz, r4.w);
    let v_44 = ((-(r5.xyzx)).xyz + r7.xyz);
    r7 = vec4<f32>(v_44.xyz, r7.w);
    let v_45 = -(r2.xyzx);
    let v_46 = fma(r4.xyz, cb12_12.tint_symbol_4[0u].yyy, v_45.xyz);
    r4 = vec4<f32>(v_46.xyz, r4.w);
    r0.y = dot(r4.xyz, v5);
    r0.z = dot(r7.xyz, r7.xyz);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r4.x = (r0.y / r0.z);
    r4.y = 1.0f;
    let v_47 = (r7.xyz * r4.xyx);
    r7 = vec4<f32>(v_47.xyz, r7.w);
    r4.z = v4.x;
    let v_48 = (r4.zxz * r7.xyz);
    r4 = vec4<f32>(v_48.xyz, r4.w);
    let v_49 = r7;
    r7 = vec4<f32>(0.10000000149011611938f, v_49.y, 0.33329999446868896484f, v_49.w);
    r7.y = v4.x;
    let v_50 = fma(r4.xyz, r7.xyz, v5);
    r4 = vec4<f32>(v_50.xyz, r4.w);
    let v_51 = bitcast<vec3<u32>>(r1.xxx);
    let v_52 = select(v5, r4.xyz, (v_51 != vec3<u32>()));
    r4 = vec4<f32>(v_52.xyz, r4.w);
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
    let v_53 = (r0.yy * r1.zw);
    r8 = vec4<f32>(v_53.xy, r8.zw);
    let v_54 = (r0.www * r3.xyz);
    r0 = vec4<f32>(r0.x, v_54.xyz);
    let v_55 = ((-(r5.xyzx)).xyz + r8.xyz);
    r1 = vec4<f32>(v_55.xyz, r1.w);
    let v_56 = -(r2.xxyz);
    let v_57 = fma(r0.yzw, cb12_12.tint_symbol_4[0u].yyy, v_56.yzw);
    r0 = vec4<f32>(r0.x, v_57.xyz);
    r0.y = dot(r0.yzw, v5);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r2.x = (r0.y / r0.z);
    r2.y = 1.0f;
    let v_58 = (r1.xyz * r2.xyx);
    r1 = vec4<f32>(v_58.xyz, r1.w);
    r2.z = v4.x;
    let v_59 = (r1.xyz * r2.zxz);
    r1 = vec4<f32>(v_59.xyz, r1.w);
    let v_60 = fma(r1.xyz, r7.xyz, r4.xyz);
    r1 = vec4<f32>(v_60.xyz, r1.w);
    let v_61 = bitcast<vec3<u32>>(r0.www);
    let v_62 = r1.xyz;
    let v_63 = select(r4.xyz, v_62, (v_61 != vec3<u32>()));
    r0 = vec4<f32>(r0.x, v_63.xyz);
    let v_64 = (r0.yzw + vec3<f32>(0.00009999999747378752f));
    r0 = vec4<f32>(r0.x, v_64.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = inverseSqrt(r1.x);
    let v_65 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_65.xyz);
  } else {
    r0.x = v0.y;
    let v_66 = v0.xz;
    let v_67 = r6;
    r6 = vec4<f32>(v_66.x, v_67.y, v_66.y, v_67.w);
    r0 = vec4<f32>(r0.x, v5.xyz);
  }
  let v_68 = (r0.xxx * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_68.xyz, r1.w);
  let v_69 = fma(r6.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = fma(r6.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_70.xyz, r1.w);
  let v_71 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_71.xyz, r1.w);
  o3 = (((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_72 = (r0.zzz * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = fma(r0.yyy, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  o1 = fma(r0.www, cb1_1.tint_symbol[2u].xyz, r2.xyz).xyzx;
  if ((bitcast<u32>(cb12_12.tint_symbol_4[4u].x) != 0u)) {
    let v_74 = (v0 + cb12_12.tint_symbol_4[1u].xyz);
    r0 = vec4<f32>(r0.x, v_74.xyz);
    r1.w = dot(r0.yzw, r0.yzw);
    r1.w = sqrt(r1.w);
    let v_75 = (r0.yzw / r1.www);
    r0 = vec4<f32>(r0.x, v_75.xyz);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r2.x = dot(r0.yz, r0.yz);
    r2.x = max(r2.x, 0.00000000999999993923f);
    r2.x = sqrt(r2.x);
    let v_76 = (r0.yz / r2.xx);
    let v_77 = r0;
    r0 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
    let v_78 = (r0.ww * r0.yz);
    let v_79 = r0;
    r0 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
    let v_80 = fma(r0.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
    let v_81 = r0;
    r0 = vec4<f32>(v_81.x, v_80.xy, v_81.w);
    let v_82 = (r0.yz * vec2<f32>(126.73267364501953125f));
    r2 = vec4<f32>(v_82.xy, r2.zw);
    let v_83 = -(r2.xxxy);
    let v_84 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.xy >= v_83.zw)));
    r2 = vec4<f32>(r2.xy, v_84.xy);
    let v_85 = fract(abs(r2.xyxx).xy);
    r2 = vec4<f32>(v_85.xy, r2.zw);
    let v_86 = -(r2.xyxx);
    let v_87 = bitcast<vec2<u32>>(r2.zw);
    let v_88 = select(v_86.xy, r2.xy, (v_87 != vec2<u32>()));
    r2 = vec4<f32>(v_88.xy, r2.zw);
    r3 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
    let v_89 = fma((-(r2.xxyx)).yz, vec2<f32>(0.00789062492549419403f), r0.yz);
    let v_90 = r0;
    r0 = vec4<f32>(v_90.x, v_89.xy, v_90.w);
    r4 = (r0.yzyz + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
    r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
    let v_91 = (r0.yz + vec2<f32>(0.00789062492549419403f));
    let v_92 = r0;
    r0 = vec4<f32>(v_92.x, v_91.xy, v_92.w);
    r7 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
    let v_93 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
    let v_94 = r0;
    r0 = vec4<f32>(v_94.x, v_93.xy, v_94.w);
    r3 = (r0.yyyy * r3);
    r5 = (r2.xxxx * r5);
    r5 = (r0.zzzz * r5);
    r3 = fma(r3, r0.zzzz, r5);
    r4 = (r0.yyyy * r4);
    r3 = fma(r4, r2.yyyy, r3);
    r4 = (r2.xxxx * r7);
    r2 = fma(r4, r2.yyyy, r3);
    r0.y = (r1.w / cb12_12.tint_symbol_4[0u].x);
    r0.y = min(r0.y, 1.0f);
    r2 = (r0.yyyy * r2);
    r2 = fma(r2, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r2 = v1;
  }
  r3.x = v4.x;
  r3.w = 1.0f;
  let v_95 = bitcast<vec4<u32>>(cb12_12.tint_symbol_4[4u].yyyy);
  let v_96 = r3.xxxw;
  o4 = select(r2, v_96, (v_95 != vec4<u32>()));
  r0 = (r0.xxxx * cb1_1.tint_symbol[9u]);
  r0 = fma(r6.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(r6.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_97 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_98 = (r1.xyz + v_97.xyz);
  r2 = vec4<f32>(v_98.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r1.w);
  let v_99 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r3.x = (r2.w + v_99.x);
  r3.x = max(r3.x, 0.0f);
  r2.w = (r3.x / r2.w);
  r2.w = (r2.w * r2.z);
  r3.y = (r2.w * cb3_3.tint_symbol_2[52u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.wwww).w)));
  r3.z = (r3.y * -1.44269502162933349609f);
  r3.z = exp2(r3.z);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.y = (r3.z / r3.y);
  let v_100 = bitcast<u32>(r2.w);
  r2.w = select(1.0f, r3.y, (v_100 != 0u));
  r3.y = (r3.x * cb3_3.tint_symbol_2[51u].w);
  r2.w = (r2.w * r3.y);
  r2.w = min(r2.w, 1.0f);
  r2.w = (r2.w * 1.44269502162933349609f);
  r2.w = exp2(r2.w);
  r2.w = min(r2.w, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r3.y = (r2.w * cb3_3.tint_symbol_2[52u].y);
  r1.w = inverseSqrt(r1.w);
  let v_101 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_101.xyz, r2.w);
  let v_102 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r1.w = clamp(vec4<f32>(v_102, v_102, v_102, v_102).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[54u].w);
  r1.w = exp2(r1.w);
  let v_103 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r2.x = clamp(vec4<f32>(v_103, v_103, v_103, v_103).x, 0.0f, 1.0f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
  r2.x = exp2(r2.x);
  r2.y = fma((-(r2.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  let v_104 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.z = (r3.x + v_104.z);
  r2.z = max(r2.z, 0.0f);
  let v_105 = (r2.yz * cb3_3.tint_symbol_2[51u].yx);
  let v_106 = r2;
  r2 = vec4<f32>(v_106.x, v_105.xy, v_106.w);
  r2.z = (r2.z * 1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  o5.w = clamp(fma(r2.yyyy, r2.zzzz, r3.yyyy).w, 0.0f, 1.0f);
  let v_107 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.z = (r3.x * v_107.z);
  r2.z = (r2.z * 1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  let v_108 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r3 = vec4<f32>(v_108.xyz, r3.w);
  let v_109 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r3 = vec4<f32>(v_109.xyz, r3.w);
  let v_110 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_110.xyz, r4.w);
  let v_111 = fma(r2.xxx, r4.xyz, r3.xyz);
  r3 = vec4<f32>(v_111.xyz, r3.w);
  let v_112 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_113 = (r3.xyz + v_112.xyz);
  r3 = vec4<f32>(v_113.xyz, r3.w);
  let v_114 = fma(r2.zzz, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_114.x, r2.y, v_114.yz);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_115 = fma(r2.yyy, r3.xyz, r2.xzw);
  o5 = vec4<f32>(v_115.xyz, o5.w);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o0 = vec4<f32>(v2.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v3.xy);
  let v_116 = r1;
  o2 = vec4<f32>(v_116.xyz, o2.w);
  o2.w = 1.0f;
  o6 = r0;
  let v_117 = &(x0[0u]);
  *(v_117) = vec4<f32>((*(v_117)).x, vec3<f32>());
  o7[0u] = x0[0u].x;
  o7[1u] = x0[0u].y;
  o7[2u] = x0[0u].z;
  o7[3u] = x0[0u].w;
  v = vec4<f32>(o7[0u], o7[1u], o7[2u], o7[3u]);
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
  @builtin(position)
  o6 : vec4<f32>,
  @builtin(clip_distances)
  o7 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, v);
}
