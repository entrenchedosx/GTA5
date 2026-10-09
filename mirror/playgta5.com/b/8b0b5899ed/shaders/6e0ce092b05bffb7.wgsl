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

struct cb1_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 19u> = array<vec4<f32>, 19u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  if ((bitcast<u32>(cb7_7.tint_symbol_2[0u].x) != 0u)) {
    let v_1 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
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
    r0.w = (r0.w / cb12_12.tint_symbol_3[0u].x);
    r0.w = min(r0.w, 1.0f);
    let v_19 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    let v_20 = (r0.xyz * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(v_20.xyz, r0.w);
    let v_21 = fma(r0.xyz, v1.yyy, v0);
    r6 = vec4<f32>(v_21.xyz, r6.w);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].w)));
    let v_22 = -(cb12_12.tint_symbol_3[1u].xyzx);
    let v_23 = (v_22.xyz + cb12_12.tint_symbol_3[2u].xyz);
    r7 = vec4<f32>(v_23.xyz, r7.w);
    let v_24 = -(r7.xxyz);
    let v_25 = (r6.xyz + v_24.xzw);
    r7 = vec4<f32>(v_25.x, r7.y, v_25.yz);
    r0.y = dot(r7.xzw, r7.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_3[2u].w * 1.10000002384185791016f);
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
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[3u].w)));
    let v_30 = (v_22.xyz + cb12_12.tint_symbol_3[3u].xyz);
    r7 = vec4<f32>(v_30.xyz, r7.w);
    let v_31 = -(r7.xxyz);
    let v_32 = (r6.xwz + v_31.xzw);
    r7 = vec4<f32>(v_32.x, r7.y, v_32.yz);
    r0.y = dot(r7.xzw, r7.xzw);
    r0.y = sqrt(r0.y);
    r0.z = (cb12_12.tint_symbol_3[3u].w * 1.10000002384185791016f);
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
    let v_41 = (r2.xyz * cb12_12.tint_symbol_3[0u].yyy);
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
    let v_46 = fma(r4.xyz, cb12_12.tint_symbol_3[0u].yyy, v_45.xyz);
    r4 = vec4<f32>(v_46.xyz, r4.w);
    r0.y = dot(r4.xyz, v3);
    r0.z = dot(r7.xyz, r7.xyz);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r4.x = (r0.y / r0.z);
    r4.y = 1.0f;
    let v_47 = (r7.xyz * r4.xyx);
    r7 = vec4<f32>(v_47.xyz, r7.w);
    r4.z = v1.y;
    let v_48 = (r4.zxz * r7.xyz);
    r4 = vec4<f32>(v_48.xyz, r4.w);
    let v_49 = r7;
    r7 = vec4<f32>(0.10000000149011611938f, v_49.y, 0.33329999446868896484f, v_49.w);
    r7.y = v1.y;
    let v_50 = fma(r4.xyz, r7.xyz, v3);
    r4 = vec4<f32>(v_50.xyz, r4.w);
    let v_51 = bitcast<vec3<u32>>(r1.xxx);
    let v_52 = select(v3, r4.xyz, (v_51 != vec3<u32>()));
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
    let v_57 = fma(r0.yzw, cb12_12.tint_symbol_3[0u].yyy, v_56.yzw);
    r0 = vec4<f32>(r0.x, v_57.xyz);
    r0.y = dot(r0.yzw, v3);
    r0.z = dot(r1.xyz, r1.xyz);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r2.x = (r0.y / r0.z);
    r2.y = 1.0f;
    let v_58 = (r1.xyz * r2.xyx);
    r1 = vec4<f32>(v_58.xyz, r1.w);
    r2.z = v1.y;
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
    r0 = vec4<f32>(r0.x, v3.xyz);
  }
  r1.x = fma(v1.w, 255.0f, 0.5f);
  let v_68 = max(r1.x, 0.0f);
  r1.x = bitcast<f32>(select(u32(v_68), 4294967295u, (v_68 >= 4294967296.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) >> 2u));
  r1.y = dot(cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r1.y) + 2i))], icb0[bitcast<i32>(r1.x)]);
  r1.x = (r1.y * v1.x);
  let v_69 = (r0.xxx * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_69.xyz, r2.w);
  let v_70 = fma(r6.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = fma(r6.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = (r2.xyz + cb1_1.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  o3 = (((-(r2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_73 = (r0.zzz * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_73.xyz, r3.w);
  let v_74 = fma(r0.yyy, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_74.xyz, r3.w);
  o1 = fma(r0.www, cb1_1.tint_symbol[2u].xyz, r3.xyz).xyzx;
  if ((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) != 0u)) {
    let v_75 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
    r0 = vec4<f32>(r0.x, v_75.xyz);
    r1.w = dot(r0.yzw, r0.yzw);
    r1.w = sqrt(r1.w);
    let v_76 = (r0.yzw / r1.www);
    r0 = vec4<f32>(r0.x, v_76.xyz);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    r0.w = (r0.w * 0.5f);
    r2.w = dot(r0.yz, r0.yz);
    r2.w = max(r2.w, 0.00000000999999993923f);
    r2.w = sqrt(r2.w);
    let v_77 = (r0.yz / r2.ww);
    let v_78 = r0;
    r0 = vec4<f32>(v_78.x, v_77.xy, v_78.w);
    let v_79 = (r0.ww * r0.yz);
    let v_80 = r0;
    r0 = vec4<f32>(v_80.x, v_79.xy, v_80.w);
    let v_81 = fma(r0.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
    let v_82 = r0;
    r0 = vec4<f32>(v_82.x, v_81.xy, v_82.w);
    let v_83 = (r0.yz * vec2<f32>(126.73267364501953125f));
    r3 = vec4<f32>(v_83.xy, r3.zw);
    let v_84 = -(r3.xxxy);
    let v_85 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xy >= v_84.zw)));
    r3 = vec4<f32>(r3.xy, v_85.xy);
    let v_86 = fract(abs(r3.xyxx).xy);
    r3 = vec4<f32>(v_86.xy, r3.zw);
    let v_87 = -(r3.xyxx);
    let v_88 = bitcast<vec2<u32>>(r3.zw);
    let v_89 = select(v_87.xy, r3.xy, (v_88 != vec2<u32>()));
    r3 = vec4<f32>(v_89.xy, r3.zw);
    r4 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
    let v_90 = fma((-(r3.xxyx)).yz, vec2<f32>(0.00789062492549419403f), r0.yz);
    let v_91 = r0;
    r0 = vec4<f32>(v_91.x, v_90.xy, v_91.w);
    r5 = (r0.yzyz + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r7 = textureSampleLevel(t2, s2, r5.xyxx.xy, 0.0f);
    r5 = textureSampleLevel(t2, s2, r5.zwzz.xy, 0.0f);
    let v_92 = (r0.yz + vec2<f32>(0.00789062492549419403f));
    let v_93 = r0;
    r0 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
    r8 = textureSampleLevel(t2, s2, r0.yzyy.xy, 0.0f);
    let v_94 = ((-(r3.xxyx)).yz + vec2<f32>(1.0f));
    let v_95 = r0;
    r0 = vec4<f32>(v_95.x, v_94.xy, v_95.w);
    r4 = (r0.yyyy * r4);
    r7 = (r3.xxxx * r7);
    r7 = (r0.zzzz * r7);
    r4 = fma(r4, r0.zzzz, r7);
    r5 = (r0.yyyy * r5);
    r4 = fma(r5, r3.yyyy, r4);
    r5 = (r3.xxxx * r8);
    r3 = fma(r5, r3.yyyy, r4);
    r0.y = (r1.w / cb12_12.tint_symbol_3[0u].x);
    r0.y = min(r0.y, 1.0f);
    r3 = (r0.yyyy * r3);
    r3 = fma(r3, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r3 = r1.xxxy;
  }
  r1.z = 1.0f;
  let v_96 = bitcast<vec4<u32>>(cb12_12.tint_symbol_3[4u].yyyy);
  let v_97 = r1.xxxz;
  o4 = select(r3, v_97, (v_96 != vec4<u32>()));
  r0 = (r0.xxxx * cb1_1.tint_symbol[9u]);
  r0 = fma(r6.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(r6.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_98 = r2;
  o2 = vec4<f32>(v_98.xyz, o2.w);
  o2.w = 1.0f;
  o5 = r0;
  let v_99 = &(x0[0u]);
  *(v_99) = vec4<f32>((*(v_99)).x, vec3<f32>());
  o0 = vec3<f32>(v2.xy, o0.xyz.z).xyzx;
  o0.z = r0.w;
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
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
  @builtin(position)
  o5 : vec4<f32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, v);
}
