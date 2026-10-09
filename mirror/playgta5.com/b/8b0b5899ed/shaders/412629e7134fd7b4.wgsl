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

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

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

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec3<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0.x = clamp(v8.w, 0.0f, 1.0f);
  if ((bitcast<u32>(cb7_7.tint_symbol_2[0u].x) != 0u)) {
    let v = (v0 + cb12_12.tint_symbol_3[1u].xyz);
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
    r1.x = (r1.x / cb12_12.tint_symbol_3[0u].x);
    r1.x = min(r1.x, 1.0f);
    let v_23 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_23.xyz);
    let v_24 = (r0.yzw * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(r0.x, v_24.xyz);
    r1.y = dot(r0.yzw, r0.yzw);
    r1.y = sqrt(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = fma((-(r1.yyyy)).y, 4.0f, 1.0f);
    r7.w = max(r1.y, 0.0f);
    let v_25 = fma(r0.yzw, v8.yyy, v0);
    r8 = vec4<f32>(v_25.xyz, r8.w);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].w)));
    let v_26 = -(cb12_12.tint_symbol_3[1u].xxyz);
    let v_27 = (v_26.yzw + cb12_12.tint_symbol_3[2u].xyz);
    r1 = vec4<f32>(r1.x, v_27.xyz);
    let v_28 = ((-(r1.yzwy)).xyz + r8.xyz);
    r9 = vec4<f32>(v_28.xyz, r9.w);
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_3[2u].w * 1.10000002384185791016f);
    r1.y = clamp(((r0.zzzz / r0.wwww)).y, 0.0f, 1.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < 1.0f)));
    r0.z = (r9.y / r0.z);
    r1.y = fma(r1.y, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.z = (r0.z * r1.y);
    r0.z = fma(r0.z, r0.w, r1.z);
    let v_29 = bitcast<u32>(r1.w);
    let v_30 = r0.z;
    r0.z = select(r8.y, v_30, (v_29 != 0u));
    let v_31 = bitcast<u32>(r0.y);
    let v_32 = r0.z;
    r8.w = select(r8.y, v_32, (v_31 != 0u));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[3u].w)));
    let v_33 = (v_26.yzw + cb12_12.tint_symbol_3[3u].xyz);
    r1 = vec4<f32>(r1.x, v_33.xyz);
    let v_34 = ((-(r1.yzwy)).xyz + r8.xwz);
    r9 = vec4<f32>(v_34.xyz, r9.w);
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_3[3u].w * 1.10000002384185791016f);
    r1.y = clamp(((r0.zzzz / r0.wwww)).y, 0.0f, 1.0f);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < 1.0f)));
    r0.z = (r9.y / r0.z);
    r1.y = fma(r1.y, 0.10000000149011611938f, 0.89999997615814208984f);
    r0.z = (r0.z * r1.y);
    r0.z = fma(r0.z, r0.w, r1.z);
    let v_35 = bitcast<u32>(r1.w);
    let v_36 = r0.z;
    r0.z = select(r8.w, v_36, (v_35 != 0u));
    let v_37 = bitcast<u32>(r0.y);
    let v_38 = r0.z;
    r8.y = select(r8.w, v_38, (v_37 != 0u));
    let v_39 = (r6.zw + r6.zw);
    let v_40 = r0;
    r0 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
    r0.w = dot(r0.yz, r0.yz);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r0.w = sqrt(r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.y)));
    r1.y = fma((-(r0.wwww)).y, 2.0f, 1.0f);
    r6.z = max(r1.y, -1.0f);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r6.z < 1.0f)));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r6.z)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
    r1.z = fma((-(r6.zzzz)).z, r6.z, 1.0f);
    r1.z = sqrt(r1.z);
    r0.w = (r1.z / r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.y)));
    let v_41 = (r0.ww * r0.yz);
    r6 = vec4<f32>(v_41.xy, r6.zw);
    let v_42 = (r1.xxx * r3.xyz);
    r0 = vec4<f32>(r0.x, v_42.xyz);
    let v_43 = (r0.yzw * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(r0.x, v_43.xyz);
    r2 = (r2 + vec4<f32>(-0.49210938811302185059f, -0.5f, -0.5f, -0.49210938811302185059f));
    r2 = (r2 + r2);
    r1.y = dot(r2.xy, r2.xy);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    r1.y = sqrt(r1.y);
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
    r1.z = fma((-(r1.yyyy)).z, 2.0f, 1.0f);
    r3.z = max(r1.z, -1.0f);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < 1.0f)));
    r1.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r3.z)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
    r1.w = fma((-(r3.zzzz)).w, r3.z, 1.0f);
    r1.w = sqrt(r1.w);
    r1.y = (r1.w / r1.y);
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
    let v_44 = (r1.yy * r2.xy);
    r3 = vec4<f32>(v_44.xy, r3.zw);
    let v_45 = (r1.xxx * r5.xyz);
    r1 = vec4<f32>(r1.x, v_45.xyz);
    let v_46 = ((-(r6.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_46.xyz, r3.w);
    let v_47 = -(r0.yyzw);
    let v_48 = fma(r1.yzw, cb12_12.tint_symbol_3[0u].yyy, v_47.yzw);
    r1 = vec4<f32>(r1.x, v_48.xyz);
    r1.y = dot(r1.yzw, v6);
    r1.z = dot(r3.xyz, r3.xyz);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
    r5.x = (r1.y / r1.z);
    r5.y = 1.0f;
    let v_49 = (r3.xyz * r5.xyx);
    r3 = vec4<f32>(v_49.xyz, r3.w);
    let v_50 = r5;
    r5 = vec4<f32>(v_50.x, v8.yy, v_50.w);
    let v_51 = (r3.xyz * r5.zxz);
    r3 = vec4<f32>(v_51.xyz, r3.w);
    let v_52 = r5;
    r5 = vec4<f32>(0.10000000149011611938f, v_52.y, 0.33329999446868896484f, v_52.w);
    let v_53 = fma(r3.xyz, r5.xyz, v6);
    r3 = vec4<f32>(v_53.xyz, r3.w);
    let v_54 = bitcast<vec3<u32>>(r1.www);
    let v_55 = select(v6, r3.xyz, (v_54 != vec3<u32>()));
    r1 = vec4<f32>(r1.x, v_55.xyz);
    r2.x = dot(r2.zw, r2.zw);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r2.x = sqrt(r2.x);
    r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
    r2.y = fma((-(r2.xxxx)).y, 2.0f, 1.0f);
    r3.z = max(r2.y, -1.0f);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (r3.z < 1.0f)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r3.z)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r3.w)));
    r3.w = fma((-(r3.zzzz)).w, r3.z, 1.0f);
    r3.w = sqrt(r3.w);
    r2.x = (r3.w / r2.x);
    r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
    let v_56 = (r2.xx * r2.zw);
    r3 = vec4<f32>(v_56.xy, r3.zw);
    let v_57 = (r1.xxx * r4.xyz);
    r2 = vec4<f32>(v_57.xyz, r2.w);
    let v_58 = ((-(r6.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_58.xyz, r3.w);
    let v_59 = -(r0.yyzw);
    let v_60 = fma(r2.xyz, cb12_12.tint_symbol_3[0u].yyy, v_59.yzw);
    r0 = vec4<f32>(r0.x, v_60.xyz);
    r0.y = dot(r0.yzw, v6);
    r0.z = dot(r3.xyz, r3.xyz);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r2.x = (r0.y / r0.z);
    r2.y = 1.0f;
    let v_61 = (r3.xyz * r2.xyx);
    r3 = vec4<f32>(v_61.xyz, r3.w);
    r2.z = v8.y;
    let v_62 = (r2.zxz * r3.xyz);
    r2 = vec4<f32>(v_62.xyz, r2.w);
    let v_63 = fma(r2.xyz, r5.xyz, r1.yzw);
    r2 = vec4<f32>(v_63.xyz, r2.w);
    let v_64 = bitcast<vec3<u32>>(r0.www);
    let v_65 = r2.xyz;
    let v_66 = select(r1.yzw, v_65, (v_64 != vec3<u32>()));
    r0 = vec4<f32>(r0.x, v_66.xyz);
    let v_67 = (r0.yzw + vec3<f32>(0.00009999999747378752f));
    r0 = vec4<f32>(r0.x, v_67.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = inverseSqrt(r1.x);
    let v_68 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_68.xyz);
  } else {
    r8 = vec4<f32>(v0.xyz, r8.w);
    r0 = vec4<f32>(r0.x, v6.xyz);
    r7.w = 1.0f;
  }
  r1.x = (v2.z * 255.001953125f);
  let v_69 = r1.x;
  let v_70 = max(v_69, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_70), 2147483647i, (v_70 >= 2147483648.0f)), 0i, !((v_69 == v_69))));
  r1.x = bitcast<f32>((bitcast<i32>(r1.x) * 3i));
  r8.w = 1.0f;
  r1.y = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)], r8);
  r1.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], r8);
  r1.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r8);
  let v_71 = (r1.zzz * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(r1.yyy, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  o4 = (((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r2.x = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)].xyz, r0.yzw);
  r2.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz, r0.yzw);
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, r0.yzw);
  let v_75 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(r2.x, v_75.xyz);
  let v_76 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.yzw);
  r2 = vec4<f32>(v_76.xyz, r2.w);
  let v_77 = fma(r0.yyy, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r7 = vec4<f32>(v_77.xyz, r7.w);
  r0.y = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)].xyz, v7.xyz);
  r0.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz, v7.xyz);
  r0.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, v7.xyz);
  let v_78 = (r0.zzz * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_78.xyz, r2.w);
  let v_79 = fma(r0.yyy, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_80.xyz);
  let v_81 = (r7.yzx * r0.wyz);
  r2 = vec4<f32>(v_81.xyz, r2.w);
  let v_82 = -(r2.xyzx);
  let v_83 = fma(r0.zwy, r7.zxy, v_82.xyz);
  r2 = vec4<f32>(v_83.xyz, r2.w);
  o6 = ((r2.xyz * v7.www)).xyzx;
  r2 = (r1.zzzz * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.yyyy, cb1_1.tint_symbol_1[8u], r2);
  r1 = fma(r1.wwww, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  if ((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) != 0u)) {
    let v_84 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
    r1 = vec4<f32>(v_84.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r1.w);
    let v_85 = (r1.xyz / r1.www);
    r1 = vec4<f32>(v_85.xyz, r1.w);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = (r1.z * 0.5f);
    r2.x = dot(r1.xy, r1.xy);
    r2.x = max(r2.x, 0.00000000999999993923f);
    r2.x = sqrt(r2.x);
    let v_86 = (r1.xy / r2.xx);
    r1 = vec4<f32>(v_86.xy, r1.zw);
    let v_87 = (r1.zz * r1.xy);
    r1 = vec4<f32>(v_87.xy, r1.zw);
    let v_88 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r1 = vec4<f32>(v_88.xy, r1.zw);
    let v_89 = (r1.xy * vec2<f32>(126.73267364501953125f));
    r2 = vec4<f32>(v_89.xy, r2.zw);
    let v_90 = -(r2.xxxy);
    let v_91 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.xy >= v_90.zw)));
    r2 = vec4<f32>(r2.xy, v_91.xy);
    let v_92 = fract(abs(r2.xyxx).xy);
    r2 = vec4<f32>(v_92.xy, r2.zw);
    let v_93 = -(r2.xyxx);
    let v_94 = bitcast<vec2<u32>>(r2.zw);
    let v_95 = select(v_93.xy, r2.xy, (v_94 != vec2<u32>()));
    r2 = vec4<f32>(v_95.xy, r2.zw);
    r3 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
    let v_96 = fma((-(r2.xyxx)).xy, vec2<f32>(0.00789062492549419403f), r1.xy);
    r1 = vec4<f32>(v_96.xy, r1.zw);
    r4 = (r1.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
    r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
    let v_97 = (r1.xy + vec2<f32>(0.00789062492549419403f));
    r1 = vec4<f32>(v_97.xy, r1.zw);
    r6 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
    let v_98 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
    r1 = vec4<f32>(v_98.xy, r1.zw);
    r3 = (r1.xxxx * r3);
    r5 = (r2.xxxx * r5);
    r5 = (r1.yyyy * r5);
    r3 = fma(r3, r1.yyyy, r5);
    r4 = (r1.xxxx * r4);
    r3 = fma(r4, r2.yyyy, r3);
    r4 = (r2.xxxx * r6);
    r2 = fma(r4, r2.yyyy, r3);
    r1.x = (r1.w / cb12_12.tint_symbol_3[0u].x);
    r1.x = min(r1.x, 1.0f);
    r1 = (r1.xxxx * r2);
    r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r1 = v8;
  }
  r2.x = v8.y;
  r2.w = 1.0f;
  let v_99 = bitcast<vec4<u32>>(cb12_12.tint_symbol_3[4u].yyyy);
  let v_100 = r2.xxxw;
  o3 = select(r1, v_100, (v_99 != vec4<u32>()));
  o7.z = (r0.x * cb11_11.tint_symbol_4[9u].x);
  o1 = vec4<f32>(v3.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v4.xy);
  o2 = r7;
  o5 = r0.yzw.xyzx;
  o7 = vec3<f32>(v5.xy, o7.xyz.z).xyzx;
}

struct tint_symbol_5 {
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
  @location(7u)
  o7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec3<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7);
}
