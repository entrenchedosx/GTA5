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

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

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

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct_1;

struct cb1_struct_2 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_2;

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

struct cb1_struct_3 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct_3;

struct cb768_struct {
  tint_symbol_6 : array<vec4<f32>, 768u>,
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

var<private> o7 : vec4<f32>;

var<private> o8 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v4 : vec4<f32>, v5 : u32) {
  let v_1 = (v0 * cb9_9.tint_symbol_5[0u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1.x = bitcast<f32>((bitcast<i32>(v5) * 3i));
  o0.w = fma(cb6_6.tint_symbol_6[bitcast<i32>(r1.x)].x, v1.z, cb6_6.tint_symbol_6[bitcast<i32>(r1.x)].y);
  let v_2 = fma(v3, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r2 = fma(v4, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_3 = fma(cb6_6.tint_symbol_6[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xy, v2, cb6_6.tint_symbol_6[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].zw);
  o1 = vec3<f32>(v_3.xy, o1.xyz.z).xyzx;
  if ((bitcast<u32>(cb7_7.tint_symbol_3[0u].x) != 0u)) {
    let v_4 = fma(v0, cb9_9.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_4[1u].xyz);
    r3 = vec4<f32>(v_4.xyz, r3.w);
    r3.w = dot(r3.xyz, r3.xyz);
    r3.w = sqrt(r3.w);
    let v_5 = (r3.xyz / r3.www);
    r3 = vec4<f32>(v_5.xyz, r3.w);
    r3.z = ((-(r3.zzzz)).z + 1.0f);
    r3.z = (r3.z * 0.5f);
    r4.x = dot(r3.xy, r3.xy);
    r4.x = max(r4.x, 0.00000000999999993923f);
    r4.x = sqrt(r4.x);
    r4 = (r3.xyxy / r4.xxxx);
    r4 = (r3.zzzz * r4);
    r4 = fma(r4, vec4<f32>(0.5f), vec4<f32>(0.5f));
    let v_6 = (r4.zw * vec2<f32>(126.73267364501953125f));
    r3 = vec4<f32>(v_6.xy, r3.zw);
    let v_7 = -(r3.xyxx);
    let v_8 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xy >= v_7.xy)));
    r5 = vec4<f32>(v_8.xy, r5.zw);
    let v_9 = fract(abs(r3.xyxx).xy);
    r3 = vec4<f32>(v_9.xy, r3.zw);
    let v_10 = -(r3.xyxx);
    let v_11 = bitcast<vec2<u32>>(r5.xy);
    let v_12 = select(v_10.xy, r3.xy, (v_11 != vec2<u32>()));
    r3 = vec4<f32>(v_12.xy, r3.zw);
    r5 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
    r4 = fma(-(r3.xyxy), vec4<f32>(0.00789062492549419403f), r4);
    r6 = (r4.zwzw + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r7 = textureSampleLevel(t2, s2, r6.xyxx.xy, 0.0f);
    r6 = textureSampleLevel(t2, s2, r6.zwzz.xy, 0.0f);
    r8 = (r4.zwzw + vec4<f32>(0.00789062492549419403f, 0.00789062492549419403f, -0.5f, -0.5f));
    r9 = textureSampleLevel(t2, s2, r8.xyxx.xy, 0.0f);
    let v_13 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
    r8 = vec4<f32>(v_13.xy, r8.zw);
    let v_14 = (r5.xyz * r8.xxx);
    r10 = vec4<f32>(v_14.xyz, r10.w);
    let v_15 = (r3.xxx * r7.xyz);
    r11 = vec4<f32>(v_15.xyz, r11.w);
    let v_16 = (r8.yyy * r11.xyz);
    r11 = vec4<f32>(v_16.xyz, r11.w);
    let v_17 = fma(r10.xyz, r8.yyy, r11.xyz);
    r10 = vec4<f32>(v_17.xyz, r10.w);
    let v_18 = (r6.xyz * r8.xxx);
    r11 = vec4<f32>(v_18.xyz, r11.w);
    let v_19 = fma(r11.xyz, r3.yyy, r10.xyz);
    r10 = vec4<f32>(v_19.xyz, r10.w);
    let v_20 = (r3.xxx * r9.xyz);
    r9 = vec4<f32>(v_20.xyz, r9.w);
    let v_21 = fma(r9.xyz, r3.yyy, r10.xyz);
    r3 = vec4<f32>(v_21.xyz, r3.w);
    r3.w = (r3.w / cb11_11.tint_symbol_4[0u].x);
    r3.w = min(r3.w, 1.0f);
    let v_22 = (r3.www * r3.xyz);
    r3 = vec4<f32>(v_22.xyz, r3.w);
    let v_23 = (r3.xyz * cb11_11.tint_symbol_4[0u].yyy);
    r3 = vec4<f32>(v_23.xyz, r3.w);
    let v_24 = fma(r3.xyz, v1.www, r0.xyz);
    r0 = vec4<f32>(v_24.xyz, r0.w);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[2u].w)));
    let v_25 = -(cb11_11.tint_symbol_4[1u].xyzx);
    let v_26 = (v_25.xyz + cb11_11.tint_symbol_4[2u].xyz);
    r9 = vec4<f32>(v_26.xyz, r9.w);
    let v_27 = -(r9.xxyz);
    let v_28 = (r0.xyz + v_27.xzw);
    r9 = vec4<f32>(v_28.x, r9.y, v_28.yz);
    r3.y = dot(r9.xzw, r9.xzw);
    r3.y = sqrt(r3.y);
    r3.z = (cb11_11.tint_symbol_4[2u].w * 1.10000002384185791016f);
    r5.w = clamp(((r3.yyyy / r3.zzzz)).w, 0.0f, 1.0f);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < 1.0f)));
    r3.y = (r9.z / r3.y);
    r5.w = fma(r5.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r3.y = (r3.y * r5.w);
    r3.y = fma(r3.y, r3.z, r9.y);
    let v_29 = bitcast<u32>(r6.w);
    let v_30 = r3.y;
    r3.y = select(r0.y, v_30, (v_29 != 0u));
    let v_31 = bitcast<u32>(r3.x);
    let v_32 = r3.y;
    r0.w = select(r0.y, v_32, (v_31 != 0u));
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[3u].w)));
    let v_33 = (v_25.xyz + cb11_11.tint_symbol_4[3u].xyz);
    r9 = vec4<f32>(v_33.xyz, r9.w);
    let v_34 = -(r9.xxyz);
    let v_35 = (r0.xwz + v_34.xzw);
    r9 = vec4<f32>(v_35.x, r9.y, v_35.yz);
    r3.y = dot(r9.xzw, r9.xzw);
    r3.y = sqrt(r3.y);
    r3.z = (cb11_11.tint_symbol_4[3u].w * 1.10000002384185791016f);
    r5.w = clamp(((r3.yyyy / r3.zzzz)).w, 0.0f, 1.0f);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r5.w < 1.0f)));
    r3.y = (r9.z / r3.y);
    r5.w = fma(r5.w, 0.10000000149011611938f, 0.89999997615814208984f);
    r3.y = (r3.y * r5.w);
    r3.y = fma(r3.y, r3.z, r9.y);
    let v_36 = bitcast<u32>(r6.w);
    let v_37 = r3.y;
    r3.y = select(r0.w, v_37, (v_36 != 0u));
    let v_38 = bitcast<u32>(r3.x);
    let v_39 = r3.y;
    r0.y = select(r0.w, v_39, (v_38 != 0u));
    let v_40 = (r8.zw + r8.zw);
    r3 = vec4<f32>(v_40.xy, r3.zw);
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
    let v_41 = (r0.ww * r3.xy);
    r8 = vec4<f32>(v_41.xy, r8.zw);
    let v_42 = (r3.www * r5.xyz);
    r3 = vec4<f32>(v_42.xyz, r3.w);
    let v_43 = (r3.xyz * cb11_11.tint_symbol_4[0u].yyy);
    r3 = vec4<f32>(v_43.xyz, r3.w);
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
    let v_44 = (r0.ww * r4.xy);
    r5 = vec4<f32>(v_44.xy, r5.zw);
    let v_45 = (r3.www * r7.xyz);
    r7 = vec4<f32>(v_45.xyz, r7.w);
    let v_46 = ((-(r8.xyzx)).xyz + r5.xyz);
    r5 = vec4<f32>(v_46.xyz, r5.w);
    let v_47 = -(r3.xyzx);
    let v_48 = fma(r7.xyz, cb11_11.tint_symbol_4[0u].yyy, v_47.xyz);
    r7 = vec4<f32>(v_48.xyz, r7.w);
    r0.w = dot(r7.xyz, r1.yzw);
    r4.x = dot(r5.xyz, r5.xyz);
    r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
    r7.x = (r0.w / r4.x);
    r7.y = 1.0f;
    let v_49 = (r5.xyz * r7.xyx);
    r5 = vec4<f32>(v_49.xyz, r5.w);
    let v_50 = r7;
    r7 = vec4<f32>(v_50.x, v1.ww, v_50.w);
    let v_51 = (r5.xyz * r7.zxz);
    r5 = vec4<f32>(v_51.xyz, r5.w);
    let v_52 = r7;
    r7 = vec4<f32>(0.10000000149011611938f, v_52.y, 0.33329999446868896484f, v_52.w);
    let v_53 = fma(r5.xyz, r7.xyz, r1.yzw);
    r5 = vec4<f32>(v_53.xyz, r5.w);
    let v_54 = bitcast<vec3<u32>>(r4.yyy);
    let v_55 = r5.xyz;
    let v_56 = select(r1.yzw, v_55, (v_54 != vec3<u32>()));
    r5 = vec4<f32>(v_56.xyz, r5.w);
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
    let v_57 = (r0.ww * r4.zw);
    r9 = vec4<f32>(v_57.xy, r9.zw);
    let v_58 = (r3.www * r6.xyz);
    r4 = vec4<f32>(v_58.xyz, r4.w);
    let v_59 = ((-(r8.xyzx)).xyz + r9.xyz);
    r6 = vec4<f32>(v_59.xyz, r6.w);
    let v_60 = -(r3.xyzx);
    let v_61 = fma(r4.xyz, cb11_11.tint_symbol_4[0u].yyy, v_60.xyz);
    r3 = vec4<f32>(v_61.xyz, r3.w);
    r0.w = dot(r3.xyz, r1.yzw);
    r3.x = dot(r6.xyz, r6.xyz);
    r3.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.x)));
    r4.x = (r0.w / r3.x);
    r4.y = 1.0f;
    let v_62 = (r6.xyz * r4.xyx);
    r3 = vec4<f32>(v_62.x, r3.y, v_62.yz);
    r4.z = v1.w;
    let v_63 = (r3.xzw * r4.zxz);
    r3 = vec4<f32>(v_63.x, r3.y, v_63.yz);
    let v_64 = fma(r3.xzw, r7.xyz, r5.xyz);
    r3 = vec4<f32>(v_64.x, r3.y, v_64.yz);
    let v_65 = bitcast<vec3<u32>>(r3.yyy);
    let v_66 = r3.xzw;
    let v_67 = select(r5.xyz, v_66, (v_65 != vec3<u32>()));
    r3 = vec4<f32>(v_67.xyz, r3.w);
    let v_68 = (r3.xyz + vec3<f32>(0.00009999999747378752f));
    r3 = vec4<f32>(v_68.xyz, r3.w);
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_69 = (r0.www * r3.xyz);
    r1 = vec4<f32>(r1.x, v_69.xyz);
  }
  let v_70 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_70.xyz, r3.w);
  let v_71 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_71.xyz, r3.w);
  let v_72 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_72.xyz, r3.w);
  let v_73 = (r3.xyz + cb1_1.tint_symbol[3u].xyz);
  r3 = vec4<f32>(v_73.xyz, r3.w);
  let v_74 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_74.xyz, r4.w);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.10000000149011611938f)));
  let v_75 = bitcast<vec3<u32>>(r0.www);
  let v_76 = select(r1.yzw, vec3<f32>(0.0f, 0.0f, 1.0f), (v_75 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_76.xyz);
  let v_77 = (r1.zzz * cb1_1.tint_symbol[1u].xyz);
  r5 = vec4<f32>(v_77.xyz, r5.w);
  let v_78 = fma(r1.yyy, cb1_1.tint_symbol[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_78.xyz, r5.w);
  let v_79 = fma(r1.www, cb1_1.tint_symbol[2u].xyz, r5.xyz);
  r1 = vec4<f32>(r1.x, v_79.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = inverseSqrt(r0.w);
  let v_80 = (r0.www * r1.yzw);
  r1 = vec4<f32>(r1.x, v_80.xyz);
  let v_81 = (r2.yyy * cb1_1.tint_symbol[1u].xyz);
  r5 = vec4<f32>(v_81.xyz, r5.w);
  let v_82 = fma(r2.xxx, cb1_1.tint_symbol[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_82.xyz, r5.w);
  let v_83 = fma(r2.zzz, cb1_1.tint_symbol[2u].xyz, r5.xyz);
  r2 = vec4<f32>(v_83.xyz, r2.w);
  let v_84 = (r1.zwy * r2.zxy);
  r5 = vec4<f32>(v_84.xyz, r5.w);
  let v_85 = -(r5.xyzx);
  let v_86 = fma(r2.yzx, r1.wyz, v_85.xyz);
  r5 = vec4<f32>(v_86.xyz, r5.w);
  let v_87 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_87.xyz, r5.w);
  o6.x = dot(r2.xyz, r4.xyz);
  o6.y = dot(r5.xyz, r4.xyz);
  o6.z = dot(r1.yzw, r4.xyz);
  let v_88 = ((-(cb1_1.tint_symbol[3u].xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_88.xyz, r4.w);
  r6.x = dot(cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r6.y = dot(cb1_1.tint_symbol[1u].xyz, r4.xyz);
  r6.z = dot(cb1_1.tint_symbol[2u].xyz, r4.xyz);
  let v_89 = ((-(r0.xyzx)).xyz + r6.xyz);
  r4 = vec4<f32>(v_89.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_90 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_90.xyz, r4.w);
  let v_91 = fma(r4.xyz, cb12_12.tint_symbol_2[0u].xxx, r0.xyz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  r4 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r4 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r4);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r4);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_92 = clamp(cb6_6.tint_symbol_6[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyxx.xy, vec2<f32>(), vec2<f32>(1.0f));
  o0 = vec4<f32>(v_92.xy, o0.zw);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o0.z = cb6_6.tint_symbol_6[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].z;
  let v_93 = r3;
  o5 = vec4<f32>(v_93.xyz, o5.w);
  o5.w = 1.0f;
  o6.w = 1.0f;
  o7 = r0;
  let v_94 = &(x0[0u]);
  *(v_94) = vec4<f32>((*(v_94)).x, vec3<f32>());
  o1.z = r0.w;
  o2 = r1.yzw.xyzx;
  o3 = r2.xyz.xyzx;
  o4 = r5.xyz.xyzx;
  o8[0u] = x0[0u].x;
  o8[1u] = x0[0u].y;
  o8[2u] = x0[0u].z;
  o8[3u] = x0[0u].w;
  v = vec4<f32>(o8[0u], o8[1u], o8[2u], o8[3u]);
}

struct tint_symbol_8 {
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
  @builtin(position)
  o7 : vec4<f32>,
  @builtin(clip_distances)
  o8 : array<f32, 4u>,
  @location(15u)
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : u32) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6, o7, o8, v);
}
