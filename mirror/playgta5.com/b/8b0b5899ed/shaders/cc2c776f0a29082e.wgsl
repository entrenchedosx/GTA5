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

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb2_struct;

struct cb768_struct {
  tint_symbol_5 : array<vec4<f32>, 768u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb768_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v4 : vec4<f32>, v5 : u32) {
  let v = (v0 * cb9_9.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1.x = bitcast<f32>((bitcast<i32>(v5) * 3i));
  o1.w = fma(cb6_6.tint_symbol_5[bitcast<i32>(r1.x)].x, v1.z, cb6_6.tint_symbol_5[bitcast<i32>(r1.x)].y);
  let v_1 = fma(v3, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(r1.x, v_1.xyz);
  r2 = fma(v4, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_2 = (cb1_1.tint_symbol[5u].yzx * cb9_9.tint_symbol_4[1u].yyy);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  let v_3 = fma(cb9_9.tint_symbol_4[1u].xxx, cb1_1.tint_symbol[4u].yzx, r3.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = fma(cb9_9.tint_symbol_4[1u].zzz, cb1_1.tint_symbol[6u].yzx, r3.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz + cb1_1.tint_symbol[7u].yzx);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = -(r3.xyzx);
  r3.w = dot(v_6.xyz, (-(r3.xyzx)).xyz);
  r3.w = inverseSqrt(r3.w);
  let v_7 = -(r3.xyzx);
  let v_8 = (r3.www * v_7.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r3.w = dot(r3.zxy, cb1_1.tint_symbol[6u].xyz);
  let v_9 = fma((-(cb1_1.tint_symbol[6u].yzxy)).xyz, r3.www, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_10 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r2.yyy * cb1_1.tint_symbol[5u].zxy);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r2.xxx, cb1_1.tint_symbol[4u].zxy, r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r2.zzz, cb1_1.tint_symbol[6u].zxy, r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r3.w = dot(r4.zxy, r3.xyz);
  let v_14 = (r3.xyz * r4.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = -(r5.xyzx);
  let v_16 = fma(r4.zxy, r3.yzx, v_15.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r3.x = dot(r3.xyz, cb1_1.tint_symbol[6u].xyz);
  let v_17 = r3;
  r3 = vec4<f32>(v_17.x, ((v2.yx + vec2<f32>(-0.5f))).xy, v_17.w);
  let v_18 = (r3.xx * r3.yz);
  r4 = vec4<f32>(v_18.xy, r4.zw);
  let v_19 = -(r4.xxxx);
  r3.x = fma(r3.z, r3.w, v_19.x);
  r5.y = (r3.x + 0.5f);
  r3.x = fma(r3.y, r3.w, r4.y);
  r3.x = (r3.x + 0.5f);
  r5.x = ((-(r3.xxxx)).x + 1.0f);
  o2 = fma(cb6_6.tint_symbol_5[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xy, r5.xy, cb6_6.tint_symbol_5[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].zw).xyxy;
  if ((bitcast<u32>(cb7_7.tint_symbol_2[0u].x) != 0u)) {
    let v_20 = fma(v0, cb9_9.tint_symbol_4[0u].xyz, cb11_11.tint_symbol_3[1u].xyz);
    r3 = vec4<f32>(v_20.xyz, r3.w);
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = sqrt(r3.w);
    let v_21 = (r3.xyz / r3.www);
    r3 = vec4<f32>(v_21.xyz, r3.w);
    r3.z = ((-(r3.zzzz)).z + 1.0f);
    r3.z = (r3.z * 0.5f);
    r4.x = dot(r3.xy, r3.xy);
    r4.x = max(r4.x, 0.00000000999999993923f);
    r4.x = sqrt(r4.x);
    r4 = (r3.xyxy / r4.xxxx);
    r4 = (r3.zzzz * r4);
    r4 = fma(r4, vec4<f32>(0.5f), vec4<f32>(0.5f));
    let v_22 = (r4.zw * vec2<f32>(126.73267364501953125f));
    r3 = vec4<f32>(v_22.xy, r3.zw);
    let v_23 = -(r3.xyxx);
    let v_24 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xy >= v_23.xy)));
    r5 = vec4<f32>(v_24.xy, r5.zw);
    let v_25 = fract(abs(r3.xyxx).xy);
    r3 = vec4<f32>(v_25.xy, r3.zw);
    let v_26 = -(r3.xyxx);
    let v_27 = bitcast<vec2<u32>>(r5.xy);
    let v_28 = select(v_26.xy, r3.xy, (v_27 != vec2<u32>()));
    r3 = vec4<f32>(v_28.xy, r3.zw);
    r5 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
    r4 = fma(-(r3.xyxy), vec4<f32>(0.00789062492549419403f), r4);
    r6 = (r4.zwzw + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r7 = textureSampleLevel(t2, s2, r6.xyxx.xy, 0.0f);
    r6 = textureSampleLevel(t2, s2, r6.zwzz.xy, 0.0f);
    r8 = (r4.zwzw + vec4<f32>(0.00789062492549419403f, 0.00789062492549419403f, -0.5f, -0.5f));
    r9 = textureSampleLevel(t2, s2, r8.xyxx.xy, 0.0f);
    let v_29 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
    r8 = vec4<f32>(v_29.xy, r8.zw);
    let v_30 = (r5.xyz * r8.xxx);
    r10 = vec4<f32>(v_30.xyz, r10.w);
    let v_31 = (r3.xxx * r7.xyz);
    r11 = vec4<f32>(v_31.xyz, r11.w);
    let v_32 = (r8.yyy * r11.xyz);
    r11 = vec4<f32>(v_32.xyz, r11.w);
    let v_33 = fma(r10.xyz, r8.yyy, r11.xyz);
    r10 = vec4<f32>(v_33.xyz, r10.w);
    let v_34 = (r6.xyz * r8.xxx);
    r11 = vec4<f32>(v_34.xyz, r11.w);
    let v_35 = fma(r11.xyz, r3.yyy, r10.xyz);
    r10 = vec4<f32>(v_35.xyz, r10.w);
    let v_36 = (r3.xxx * r9.xyz);
    r9 = vec4<f32>(v_36.xyz, r9.w);
    let v_37 = fma(r9.xyz, r3.yyy, r10.xyz);
    r3 = vec4<f32>(v_37.xyz, r3.w);
    r3.w = (r3.w / cb11_11.tint_symbol_3[0u].x);
    r3.w = min(r3.w, 1.0f);
    let v_38 = (r3.www * r3.xyz);
    r3 = vec4<f32>(v_38.xyz, r3.w);
    let v_39 = (r3.xyz * cb11_11.tint_symbol_3[0u].yyy);
    r3 = vec4<f32>(v_39.xyz, r3.w);
    let v_40 = fma(r3.xyz, v1.www, r0.xyz);
    r0 = vec4<f32>(v_40.xyz, r0.w);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_3[2u].w)));
    let v_41 = -(cb11_11.tint_symbol_3[1u].xyzx);
    let v_42 = (v_41.xyz + cb11_11.tint_symbol_3[2u].xyz);
    r9 = vec4<f32>(v_42.xyz, r9.w);
    let v_43 = -(r9.xxyz);
    let v_44 = (r0.xyz + v_43.xzw);
    r9 = vec4<f32>(v_44.x, r9.y, v_44.yz);
    r3.y = dot(r9.xzw, r9.xzw);
    r3.y = sqrt(r3.y);
    r3.z = (cb11_11.tint_symbol_3[2u].w * 1.10000002384185791016f);
    r5.w = clamp(((r3.yyyy / r3.zzzz)).w, 0.0f, 1.0f);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < 1.0f)));
    r3.y = (r9.z / r3.y);
    r5.w = fma(r5.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r3.y = (r3.y * r5.w);
    r3.y = fma(r3.y, r3.z, r9.y);
    let v_45 = bitcast<u32>(r6.w);
    let v_46 = r3.y;
    r3.y = select(r0.y, v_46, (v_45 != 0u));
    let v_47 = bitcast<u32>(r3.x);
    let v_48 = r3.y;
    r0.w = select(r0.y, v_48, (v_47 != 0u));
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_3[3u].w)));
    let v_49 = (v_41.xyz + cb11_11.tint_symbol_3[3u].xyz);
    r9 = vec4<f32>(v_49.xyz, r9.w);
    let v_50 = -(r9.xxyz);
    let v_51 = (r0.xwz + v_50.xzw);
    r9 = vec4<f32>(v_51.x, r9.y, v_51.yz);
    r3.y = dot(r9.xzw, r9.xzw);
    r3.y = sqrt(r3.y);
    r3.z = (cb11_11.tint_symbol_3[3u].w * 1.10000002384185791016f);
    r5.w = clamp(((r3.yyyy / r3.zzzz)).w, 0.0f, 1.0f);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < 1.0f)));
    r3.y = (r9.z / r3.y);
    r5.w = fma(r5.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r3.y = (r3.y * r5.w);
    r3.y = fma(r3.y, r3.z, r9.y);
    let v_52 = bitcast<u32>(r6.w);
    let v_53 = r3.y;
    r3.y = select(r0.w, v_53, (v_52 != 0u));
    let v_54 = bitcast<u32>(r3.x);
    let v_55 = r3.y;
    r0.y = select(r0.w, v_55, (v_54 != 0u));
    let v_56 = (r8.zw + r8.zw);
    r3 = vec4<f32>(v_56.xy, r3.zw);
    r0.w = dot(r3.xy, r3.xy);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r0.w = sqrt(r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r3.z)));
    r3.z = fma((-(r0.wwww)).z, 2.0f, 1.0f);
    r8.z = max(r3.z, -1.0f);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (r8.z < 1.0f)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r8.z)));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r3.z = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r5.w)));
    r5.w = fma((-(r8.zzzz)).w, r8.z, 1.0f);
    r5.w = sqrt(r5.w);
    r0.w = (r5.w / r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r3.z)));
    let v_57 = (r0.ww * r3.xy);
    r8 = vec4<f32>(v_57.xy, r8.zw);
    let v_58 = (r3.www * r5.xyz);
    r3 = vec4<f32>(v_58.xyz, r3.w);
    let v_59 = (r3.xyz * cb11_11.tint_symbol_3[0u].yyy);
    r3 = vec4<f32>(v_59.xyz, r3.w);
    r4 = (r4 + vec4<f32>(-0.49210938811302185059f, -0.5f, -0.5f, -0.49210938811302185059f));
    r4 = (r4 + r4);
    r0.w = dot(r4.xy, r4.xy);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r0.w = sqrt(r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r5.x)));
    r5.x = fma((-(r0.wwww)).x, 2.0f, 1.0f);
    r5.z = max(r5.x, -1.0f);
    r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.z < 1.0f)));
    r6.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r5.z)));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) & bitcast<u32>(r6.w)));
    r6.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r5.w = bitcast<f32>((bitcast<u32>(r5.w) & bitcast<u32>(r6.w)));
    r6.w = fma((-(r5.zzzz)).w, r5.z, 1.0f);
    r6.w = sqrt(r6.w);
    r0.w = (r6.w / r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r5.w)));
    let v_60 = (r0.ww * r4.xy);
    r5 = vec4<f32>(v_60.xy, r5.zw);
    let v_61 = (r3.www * r7.xyz);
    r7 = vec4<f32>(v_61.xyz, r7.w);
    let v_62 = ((-(r8.xyzx)).xyz + r5.xyz);
    r5 = vec4<f32>(v_62.xyz, r5.w);
    let v_63 = -(r3.xyzx);
    let v_64 = fma(r7.xyz, cb11_11.tint_symbol_3[0u].yyy, v_63.xyz);
    r7 = vec4<f32>(v_64.xyz, r7.w);
    r0.w = dot(r7.xyz, r1.yzw);
    r4.x = dot(r5.xyz, r5.xyz);
    r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
    r7.x = (r0.w / r4.x);
    r7.y = 1.0f;
    let v_65 = (r5.xyz * r7.xyx);
    r5 = vec4<f32>(v_65.xyz, r5.w);
    let v_66 = r7;
    r7 = vec4<f32>(v_66.x, v1.ww, v_66.w);
    let v_67 = (r5.xyz * r7.zxz);
    r5 = vec4<f32>(v_67.xyz, r5.w);
    let v_68 = r7;
    r7 = vec4<f32>(0.10000000149011611938f, v_68.y, 0.33329999446868896484f, v_68.w);
    let v_69 = fma(r5.xyz, r7.xyz, r1.yzw);
    r5 = vec4<f32>(v_69.xyz, r5.w);
    let v_70 = bitcast<vec3<u32>>(r4.yyy);
    let v_71 = r5.xyz;
    let v_72 = select(r1.yzw, v_71, (v_70 != vec3<u32>()));
    r5 = vec4<f32>(v_72.xyz, r5.w);
    r0.w = dot(r4.zw, r4.zw);
    r4.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r0.w = sqrt(r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r4.x)));
    r4.x = fma((-(r0.wwww)).x, 2.0f, 1.0f);
    r9.z = max(r4.x, -1.0f);
    r4.x = bitcast<f32>(select(0u, 4294967295u, (r9.z < 1.0f)));
    r4.y = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r9.z)));
    r4.x = bitcast<f32>((bitcast<u32>(r4.y) & bitcast<u32>(r4.x)));
    r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    r4.x = bitcast<f32>((bitcast<u32>(r4.y) & bitcast<u32>(r4.x)));
    r4.y = fma((-(r9.zzzz)).y, r9.z, 1.0f);
    r4.y = sqrt(r4.y);
    r0.w = (r4.y / r0.w);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r4.x)));
    let v_73 = (r0.ww * r4.zw);
    r9 = vec4<f32>(v_73.xy, r9.zw);
    let v_74 = (r3.www * r6.xyz);
    r4 = vec4<f32>(v_74.xyz, r4.w);
    let v_75 = ((-(r8.xyzx)).xyz + r9.xyz);
    r6 = vec4<f32>(v_75.xyz, r6.w);
    let v_76 = -(r3.xyzx);
    let v_77 = fma(r4.xyz, cb11_11.tint_symbol_3[0u].yyy, v_76.xyz);
    r3 = vec4<f32>(v_77.xyz, r3.w);
    r0.w = dot(r3.xyz, r1.yzw);
    r3.x = dot(r6.xyz, r6.xyz);
    r3.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.x)));
    r4.x = (r0.w / r3.x);
    r4.y = 1.0f;
    let v_78 = (r6.xyz * r4.xyx);
    r3 = vec4<f32>(v_78.x, r3.y, v_78.yz);
    r4.z = v1.w;
    let v_79 = (r3.xzw * r4.zxz);
    r3 = vec4<f32>(v_79.x, r3.y, v_79.yz);
    let v_80 = fma(r3.xzw, r7.xyz, r5.xyz);
    r3 = vec4<f32>(v_80.x, r3.y, v_80.yz);
    let v_81 = bitcast<vec3<u32>>(r3.yyy);
    let v_82 = r3.xzw;
    let v_83 = select(r5.xyz, v_82, (v_81 != vec3<u32>()));
    r3 = vec4<f32>(v_83.xyz, r3.w);
    let v_84 = (r3.xyz + vec3<f32>(0.00009999999747378752f));
    r3 = vec4<f32>(v_84.xyz, r3.w);
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_85 = (r0.www * r3.xyz);
    r1 = vec4<f32>(r1.x, v_85.xyz);
  }
  let v_86 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_86.xyz, r3.w);
  let v_87 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_87.xyz, r3.w);
  let v_88 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_88.xyz, r3.w);
  let v_89 = (r3.xyz + cb1_1.tint_symbol[3u].xyz);
  r3 = vec4<f32>(v_89.xyz, r3.w);
  let v_90 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_90.xyz, r3.w);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.10000000149011611938f)));
  let v_91 = bitcast<vec3<u32>>(r0.www);
  let v_92 = select(r1.yzw, vec3<f32>(0.0f, 0.0f, 1.0f), (v_91 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_92.xyz);
  let v_93 = (r1.zzz * cb1_1.tint_symbol[1u].xyz);
  r4 = vec4<f32>(v_93.xyz, r4.w);
  let v_94 = fma(r1.yyy, cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_94.xyz, r4.w);
  let v_95 = fma(r1.www, cb1_1.tint_symbol[2u].xyz, r4.xyz);
  r1 = vec4<f32>(r1.x, v_95.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = inverseSqrt(r0.w);
  let v_96 = (r0.www * r1.yzw);
  r1 = vec4<f32>(r1.x, v_96.xyz);
  let v_97 = (r2.yyy * cb1_1.tint_symbol[1u].xyz);
  r4 = vec4<f32>(v_97.xyz, r4.w);
  let v_98 = fma(r2.xxx, cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_98.xyz, r4.w);
  let v_99 = fma(r2.zzz, cb1_1.tint_symbol[2u].xyz, r4.xyz);
  r2 = vec4<f32>(v_99.xyz, r2.w);
  let v_100 = (r1.zwy * r2.zxy);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  let v_101 = -(r4.xyzx);
  let v_102 = fma(r2.yzx, r1.wyz, v_101.xyz);
  r4 = vec4<f32>(v_102.xyz, r4.w);
  let v_103 = (r2.www * r4.xyz);
  r4 = vec4<f32>(v_103.xyz, r4.w);
  o6.x = dot(r2.xyz, r3.xyz);
  o6.y = dot(r4.xyz, r3.xyz);
  o6.z = dot(r1.yzw, r3.xyz);
  let v_104 = ((-(cb1_1.tint_symbol[3u].xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_104.xyz, r3.w);
  r5.x = dot(cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r5.y = dot(cb1_1.tint_symbol[1u].xyz, r3.xyz);
  r5.z = dot(cb1_1.tint_symbol[2u].xyz, r3.xyz);
  let v_105 = ((-(r0.xyzx)).xyz + r5.xyz);
  r3 = vec4<f32>(v_105.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_106 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_106.xyz, r3.w);
  let v_107 = fma(r3.xyz, cb12_12.tint_symbol_1[0u].xxx, r0.xyz);
  r0 = vec4<f32>(v_107.xyz, r0.w);
  r3 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r3);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r3);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_108 = clamp(cb6_6.tint_symbol_5[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyxx.xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_108.xy, o1.zw);
  o1.z = cb6_6.tint_symbol_5[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].z;
  o6.w = 1.0f;
  o3 = r1.yzw.xyzx;
  o4 = r2.xyz.xyzx;
  o5 = r4.xyz.xyzx;
}

struct tint_symbol_6 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : u32) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6);
}
