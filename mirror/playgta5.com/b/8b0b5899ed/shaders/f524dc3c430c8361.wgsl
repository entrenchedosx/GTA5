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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
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

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  if ((bitcast<u32>(cb7_7.tint_symbol_2[0u].x) != 0u)) {
    let v = (v0 + cb12_12.tint_symbol_3[1u].xyz);
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
    r0.w = (r0.w / cb12_12.tint_symbol_3[0u].x);
    r0.w = min(r0.w, 1.0f);
    let v_18 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    let v_19 = (r0.xyz * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    r2.w = dot(r0.xyz, r0.xyz);
    r2.w = sqrt(r2.w);
    r2.w = min(r2.w, 1.0f);
    r2.w = fma((-(r2.wwww)).w, 4.0f, 1.0f);
    r6.w = max(r2.w, 0.0f);
    let v_20 = fma(r0.xyz, v6.yyy, v0);
    r7 = vec4<f32>(v_20.xyz, r7.w);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].w)));
    let v_21 = -(cb12_12.tint_symbol_3[1u].xyzx);
    let v_22 = (v_21.xyz + cb12_12.tint_symbol_3[2u].xyz);
    r8 = vec4<f32>(v_22.xyz, r8.w);
    let v_23 = -(r8.xxyz);
    let v_24 = (r7.xyz + v_23.xzw);
    r8 = vec4<f32>(v_24.x, r8.y, v_24.yz);
    r0.y = dot(r8.xzw, r8.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_3[2u].w * 1.10000002384185791016f);
    r2.w = clamp(((r0.yyyy / r0.zzzz)).w, 0.0f, 1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
    r0.y = (r8.z / r0.y);
    r2.w = fma(r2.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.y = (r0.y * r2.w);
    r0.y = fma(r0.y, r0.z, r8.y);
    let v_25 = bitcast<u32>(r3.w);
    let v_26 = r0.y;
    r0.y = select(r7.y, v_26, (v_25 != 0u));
    let v_27 = bitcast<u32>(r0.x);
    let v_28 = r0.y;
    r7.w = select(r7.y, v_28, (v_27 != 0u));
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[3u].w)));
    let v_29 = (v_21.xyz + cb12_12.tint_symbol_3[3u].xyz);
    r8 = vec4<f32>(v_29.xyz, r8.w);
    let v_30 = -(r8.xxyz);
    let v_31 = (r7.xwz + v_30.xzw);
    r8 = vec4<f32>(v_31.x, r8.y, v_31.yz);
    r0.y = dot(r8.xzw, r8.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_3[3u].w * 1.10000002384185791016f);
    r2.w = clamp(((r0.yyyy / r0.zzzz)).w, 0.0f, 1.0f);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 1.0f)));
    r0.y = (r8.z / r0.y);
    r2.w = fma(r2.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.y = (r0.y * r2.w);
    r0.y = fma(r0.y, r0.z, r8.y);
    let v_32 = bitcast<u32>(r3.w);
    let v_33 = r0.y;
    r0.y = select(r7.w, v_33, (v_32 != 0u));
    let v_34 = bitcast<u32>(r0.x);
    let v_35 = r0.y;
    r7.y = select(r7.w, v_35, (v_34 != 0u));
    let v_36 = (r5.zw + r5.zw);
    r0 = vec4<f32>(v_36.xy, r0.zw);
    r0.z = dot(r0.xy, r0.xy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r0.z = sqrt(r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r2.w)));
    r2.w = fma((-(r0.zzzz)).w, 2.0f, 1.0f);
    r5.z = max(r2.w, -1.0f);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r5.z < 1.0f)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r5.z)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.w)));
    r3.w = fma((-(r5.zzzz)).w, r5.z, 1.0f);
    r3.w = sqrt(r3.w);
    r0.z = (r3.w / r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r2.w)));
    let v_37 = (r0.zz * r0.xy);
    r5 = vec4<f32>(v_37.xy, r5.zw);
    let v_38 = (r0.www * r2.xyz);
    r0 = vec4<f32>(v_38.xyz, r0.w);
    let v_39 = (r0.xyz * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(v_39.xyz, r0.w);
    r1 = (r1 + vec4<f32>(-0.49210938811302185059f, -0.5f, -0.5f, -0.49210938811302185059f));
    r1 = (r1 + r1);
    r2.x = dot(r1.xy, r1.xy);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r2.x = sqrt(r2.x);
    r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
    r2.y = fma((-(r2.xxxx)).y, 2.0f, 1.0f);
    r8.z = max(r2.y, -1.0f);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (r8.z < 1.0f)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r8.z)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.z) & bitcast<u32>(r2.y)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.z) & bitcast<u32>(r2.y)));
    r2.z = fma((-(r8.zzzz)).z, r8.z, 1.0f);
    r2.z = sqrt(r2.z);
    r2.x = (r2.z / r2.x);
    r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
    let v_40 = (r1.xy * r2.xx);
    r8 = vec4<f32>(v_40.xy, r8.zw);
    let v_41 = (r0.www * r4.xyz);
    r2 = vec4<f32>(v_41.xyz, r2.w);
    let v_42 = ((-(r5.xyzx)).xyz + r8.xyz);
    r4 = vec4<f32>(v_42.xyz, r4.w);
    let v_43 = -(r0.xyzx);
    let v_44 = fma(r2.xyz, cb12_12.tint_symbol_3[0u].yyy, v_43.xyz);
    r2 = vec4<f32>(v_44.xyz, r2.w);
    r1.x = dot(r2.xyz, v4);
    r1.y = dot(r4.xyz, r4.xyz);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    r8.x = (r1.x / r1.y);
    r8.y = 1.0f;
    let v_45 = (r4.xyz * r8.xyx);
    r2 = vec4<f32>(r2.x, v_45.xyz);
    r8.z = v6.y;
    let v_46 = (r2.yzw * r8.zxz);
    r2 = vec4<f32>(r2.x, v_46.xyz);
    let v_47 = r4;
    r4 = vec4<f32>(0.10000000149011611938f, v_47.y, 0.33329999446868896484f, v_47.w);
    r4.y = v6.y;
    let v_48 = fma(r2.yzw, r4.xyz, v4);
    r2 = vec4<f32>(r2.x, v_48.xyz);
    let v_49 = bitcast<vec3<u32>>(r2.xxx);
    let v_50 = select(v4, r2.yzw, (v_49 != vec3<u32>()));
    r2 = vec4<f32>(v_50.xyz, r2.w);
    r1.x = dot(r1.zw, r1.zw);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
    r1.x = sqrt(r1.x);
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
    r1.y = fma((-(r1.xxxx)).y, 2.0f, 1.0f);
    r8.z = max(r1.y, -1.0f);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r8.z < 1.0f)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r8.z)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.w)));
    r2.w = fma((-(r8.zzzz)).w, r8.z, 1.0f);
    r2.w = sqrt(r2.w);
    r1.x = (r2.w / r1.x);
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
    let v_51 = (r1.xx * r1.zw);
    r8 = vec4<f32>(v_51.xy, r8.zw);
    let v_52 = (r0.www * r3.xyz);
    r1 = vec4<f32>(v_52.xyz, r1.w);
    let v_53 = ((-(r5.xyzx)).xyz + r8.xyz);
    r3 = vec4<f32>(v_53.xyz, r3.w);
    let v_54 = -(r0.xyzx);
    let v_55 = fma(r1.xyz, cb12_12.tint_symbol_3[0u].yyy, v_54.xyz);
    r0 = vec4<f32>(v_55.xyz, r0.w);
    r0.x = dot(r0.xyz, v4);
    r0.y = dot(r3.xyz, r3.xyz);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    r1.x = (r0.x / r0.y);
    r1.y = 1.0f;
    let v_56 = (r3.xyz * r1.xyx);
    r0 = vec4<f32>(v_56.xy, r0.z, v_56.z);
    r1.z = v6.y;
    let v_57 = (r0.xyw * r1.zxz);
    r0 = vec4<f32>(v_57.xy, r0.z, v_57.z);
    let v_58 = fma(r0.xyw, r4.xyz, r2.xyz);
    r0 = vec4<f32>(v_58.xy, r0.z, v_58.z);
    let v_59 = bitcast<vec3<u32>>(r0.zzz);
    let v_60 = r0.xyw;
    let v_61 = select(r2.xyz, v_60, (v_59 != vec3<u32>()));
    r0 = vec4<f32>(v_61.xyz, r0.w);
    let v_62 = (r0.xyz + vec3<f32>(0.00009999999747378752f));
    r0 = vec4<f32>(v_62.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_63 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_63.xyz, r0.w);
  } else {
    r7 = vec4<f32>(v0.xyz, r7.w);
    r0 = vec4<f32>(v4.xyz, r0.w);
    r6.w = 1.0f;
  }
  r0.w = (v2.z * 255.001953125f);
  let v_64 = r0.w;
  let v_65 = max(v_64, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_65), 2147483647i, (v_65 >= 2147483648.0f)), 0i, !((v_64 == v_64))));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) * 3i));
  r7.w = 1.0f;
  r1.x = dot(cb4_4.tint_symbol[bitcast<i32>(r0.w)], r7);
  r1.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], r7);
  r1.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], r7);
  let v_66 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_66.xyz, r2.w);
  let v_67 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_67.xyz, r2.w);
  let v_68 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_69.xyz, r2.w);
  o4 = (((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r1.w = dot(cb4_4.tint_symbol[bitcast<i32>(r0.w)].xyz, r0.xyz);
  r2.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))].xyz, r0.xyz);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))].xyz, r0.xyz);
  let v_70 = (r2.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r6 = vec4<f32>(v_72.xyz, r6.w);
  r0.x = dot(cb4_4.tint_symbol[bitcast<i32>(r0.w)].xyz, v5.xyz);
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))].xyz, v5.xyz);
  r0.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))].xyz, v5.xyz);
  let v_73 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_74.xy, r0.z, v_74.z);
  let v_75 = fma(r0.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = (r6.yzx * r0.zxy);
  r2 = vec4<f32>(v_76.xyz, r2.w);
  let v_77 = -(r2.xyzx);
  let v_78 = fma(r0.yzx, r6.zxy, v_77.xyz);
  r2 = vec4<f32>(v_78.xyz, r2.w);
  o6 = ((r2.xyz * v5.www)).xyzx;
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r2);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  if ((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) != 0u)) {
    let v_79 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
    r1 = vec4<f32>(v_79.xyz, r1.w);
    r0.w = dot(r1.xyz, r1.xyz);
    r0.w = sqrt(r0.w);
    let v_80 = (r1.xyz / r0.www);
    r1 = vec4<f32>(v_80.xyz, r1.w);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = (r1.z * 0.5f);
    r1.w = dot(r1.xy, r1.xy);
    r1.w = max(r1.w, 0.00000000999999993923f);
    r1.w = sqrt(r1.w);
    let v_81 = (r1.xy / r1.ww);
    r1 = vec4<f32>(v_81.xy, r1.zw);
    let v_82 = (r1.zz * r1.xy);
    r1 = vec4<f32>(v_82.xy, r1.zw);
    let v_83 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r1 = vec4<f32>(v_83.xy, r1.zw);
    let v_84 = (r1.xy * vec2<f32>(126.73267364501953125f));
    r1 = vec4<f32>(r1.xy, v_84.xy);
    let v_85 = -(r1.zwzz);
    let v_86 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.zw >= v_85.xy)));
    r2 = vec4<f32>(v_86.xy, r2.zw);
    let v_87 = fract(abs(r1.zzzw).zw);
    r1 = vec4<f32>(r1.xy, v_87.xy);
    let v_88 = -(r1.zzzw);
    let v_89 = bitcast<vec2<u32>>(r2.xy);
    let v_90 = select(v_88.zw, r1.zw, (v_89 != vec2<u32>()));
    r1 = vec4<f32>(r1.xy, v_90.xy);
    r2 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
    let v_91 = fma((-(r1.zwzz)).xy, vec2<f32>(0.00789062492549419403f), r1.xy);
    r1 = vec4<f32>(v_91.xy, r1.zw);
    r3 = (r1.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    let v_92 = (r1.xy + vec2<f32>(0.00789062492549419403f));
    r1 = vec4<f32>(v_92.xy, r1.zw);
    r5 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
    let v_93 = ((-(r1.zwzz)).xy + vec2<f32>(1.0f));
    r1 = vec4<f32>(v_93.xy, r1.zw);
    r2 = (r1.xxxx * r2);
    r4 = (r1.zzzz * r4);
    r4 = (r1.yyyy * r4);
    r2 = fma(r2, r1.yyyy, r4);
    r3 = (r1.xxxx * r3);
    r2 = fma(r3, r1.wwww, r2);
    r3 = (r1.zzzz * r5);
    r1 = fma(r3, r1.wwww, r2);
    r0.w = (r0.w / cb12_12.tint_symbol_3[0u].x);
    r0.w = min(r0.w, 1.0f);
    r1 = (r0.wwww * r1);
    r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r1 = v6;
  }
  r2.x = v6.y;
  r2.w = 1.0f;
  let v_94 = bitcast<vec4<u32>>(cb12_12.tint_symbol_3[4u].yyyy);
  let v_95 = r2.xxxw;
  o3 = select(r1, v_95, (v_94 != vec4<u32>()));
  o2 = r6;
  o5 = r0.xyz.xyzx;
  o1 = v3.xyxy;
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
  @location(6u)
  o6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6);
}
