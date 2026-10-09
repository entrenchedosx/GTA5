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

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb9_struct {
  tint_symbol_5 : array<vec4<f32>, 9u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

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

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
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
    r2.w = dot(r0.xyz, r0.xyz);
    r2.w = sqrt(r2.w);
    r2.w = min(r2.w, 1.0f);
    r2.w = fma((-(r2.wwww)).w, 4.0f, 1.0f);
    o1.w = max(r2.w, 0.0f);
    let v_21 = fma(r0.xyz, v6.yyy, v0);
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
    r6.y = select(r6.w, v_36, (v_35 != 0u));
    let v_37 = (r5.zw + r5.zw);
    r0 = vec4<f32>(v_37.xy, r0.zw);
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
    let v_38 = (r0.zz * r0.xy);
    r5 = vec4<f32>(v_38.xy, r5.zw);
    let v_39 = (r0.www * r2.xyz);
    r0 = vec4<f32>(v_39.xyz, r0.w);
    let v_40 = (r0.xyz * cb12_12.tint_symbol_4[0u].yyy);
    r0 = vec4<f32>(v_40.xyz, r0.w);
    r1 = (r1 + vec4<f32>(-0.49210938811302185059f, -0.5f, -0.5f, -0.49210938811302185059f));
    r1 = (r1 + r1);
    r2.x = dot(r1.xy, r1.xy);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r2.x = sqrt(r2.x);
    r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
    r2.y = fma((-(r2.xxxx)).y, 2.0f, 1.0f);
    r7.z = max(r2.y, -1.0f);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (r7.z < 1.0f)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r7.z)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.z) & bitcast<u32>(r2.y)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.z) & bitcast<u32>(r2.y)));
    r2.z = fma((-(r7.zzzz)).z, r7.z, 1.0f);
    r2.z = sqrt(r2.z);
    r2.x = (r2.z / r2.x);
    r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
    let v_41 = (r1.xy * r2.xx);
    r7 = vec4<f32>(v_41.xy, r7.zw);
    let v_42 = (r0.www * r4.xyz);
    r2 = vec4<f32>(v_42.xyz, r2.w);
    let v_43 = ((-(r5.xyzx)).xyz + r7.xyz);
    r4 = vec4<f32>(v_43.xyz, r4.w);
    let v_44 = -(r0.xyzx);
    let v_45 = fma(r2.xyz, cb12_12.tint_symbol_4[0u].yyy, v_44.xyz);
    r2 = vec4<f32>(v_45.xyz, r2.w);
    r1.x = dot(r2.xyz, v5);
    r1.y = dot(r4.xyz, r4.xyz);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.y)));
    r7.x = (r1.x / r1.y);
    r7.y = 1.0f;
    let v_46 = (r4.xyz * r7.xyx);
    r2 = vec4<f32>(r2.x, v_46.xyz);
    r7.z = v6.y;
    let v_47 = (r2.yzw * r7.zxz);
    r2 = vec4<f32>(r2.x, v_47.xyz);
    let v_48 = r4;
    r4 = vec4<f32>(0.10000000149011611938f, v_48.y, 0.33329999446868896484f, v_48.w);
    r4.y = v6.y;
    let v_49 = fma(r2.yzw, r4.xyz, v5);
    r2 = vec4<f32>(r2.x, v_49.xyz);
    let v_50 = bitcast<vec3<u32>>(r2.xxx);
    let v_51 = select(v5, r2.yzw, (v_50 != vec3<u32>()));
    r2 = vec4<f32>(v_51.xyz, r2.w);
    r1.x = dot(r1.zw, r1.zw);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
    r1.x = sqrt(r1.x);
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
    r1.y = fma((-(r1.xxxx)).y, 2.0f, 1.0f);
    r7.z = max(r1.y, -1.0f);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r7.z < 1.0f)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r7.z)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.w)));
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.w)));
    r2.w = fma((-(r7.zzzz)).w, r7.z, 1.0f);
    r2.w = sqrt(r2.w);
    r1.x = (r2.w / r1.x);
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r1.y)));
    let v_52 = (r1.xx * r1.zw);
    r7 = vec4<f32>(v_52.xy, r7.zw);
    let v_53 = (r0.www * r3.xyz);
    r1 = vec4<f32>(v_53.xyz, r1.w);
    let v_54 = ((-(r5.xyzx)).xyz + r7.xyz);
    r3 = vec4<f32>(v_54.xyz, r3.w);
    let v_55 = -(r0.xyzx);
    let v_56 = fma(r1.xyz, cb12_12.tint_symbol_4[0u].yyy, v_55.xyz);
    r0 = vec4<f32>(v_56.xyz, r0.w);
    r0.x = dot(r0.xyz, v5);
    r0.y = dot(r3.xyz, r3.xyz);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
    r1.x = (r0.x / r0.y);
    r1.y = 1.0f;
    let v_57 = (r3.xyz * r1.xyx);
    r0 = vec4<f32>(v_57.xy, r0.z, v_57.z);
    r1.z = v6.y;
    let v_58 = (r0.xyw * r1.zxz);
    r0 = vec4<f32>(v_58.xy, r0.z, v_58.z);
    let v_59 = fma(r0.xyw, r4.xyz, r2.xyz);
    r0 = vec4<f32>(v_59.xy, r0.z, v_59.z);
    let v_60 = bitcast<vec3<u32>>(r0.zzz);
    let v_61 = r0.xyw;
    let v_62 = select(r2.xyz, v_61, (v_60 != vec3<u32>()));
    r0 = vec4<f32>(v_62.xyz, r0.w);
    let v_63 = (r0.xyz + vec3<f32>(0.00009999999747378752f));
    r0 = vec4<f32>(v_63.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_64 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_64.xyz, r0.w);
  } else {
    r0 = vec4<f32>(v5.xyz, r0.w);
    r6 = vec4<f32>(v0.xyz, r6.w);
    o1.w = 1.0f;
  }
  r0.w = (v2.z * 255.001953125f);
  let v_65 = r0.w;
  let v_66 = max(v_65, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_66), 2147483647i, (v_66 >= 2147483648.0f)), 0i, !((v_65 == v_65))));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) * 3i));
  r1.x = fma(v6.w, 255.0f, 0.5f);
  let v_67 = max(r1.x, 0.0f);
  r1.x = bitcast<f32>(select(u32(v_67), 4294967295u, (v_67 >= 4294967296.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) >> 2u));
  r1.y = dot(cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r1.y) + 3i))], icb0[bitcast<i32>(r1.x)]);
  r1.x = (r1.y * v6.x);
  r6.w = 1.0f;
  r1.w = dot(cb4_4.tint_symbol[bitcast<i32>(r0.w)], r6);
  r2.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], r6);
  r2.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], r6);
  let v_68 = (r2.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_68.xyz, r3.w);
  let v_69 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_69.xyz, r3.w);
  let v_70 = fma(r2.yyy, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_70.xyz, r3.w);
  let v_71 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r3 = vec4<f32>(v_71.xyz, r3.w);
  o3 = (((-(r3.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r2.z = dot(cb4_4.tint_symbol[bitcast<i32>(r0.w)].xyz, r0.xyz);
  r2.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))].xyz, r0.xyz);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))].xyz, r0.xyz);
  let v_72 = (r2.www * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_72.xyz);
  let v_73 = fma(r2.zzz, cb1_1.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_73.xyz);
  let v_74 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  o1 = vec4<f32>(v_74.xyz, o1.w);
  r0 = (r2.xxxx * cb1_1.tint_symbol_1[9u]);
  r0 = fma(r1.wwww, cb1_1.tint_symbol_1[8u], r0);
  r0 = fma(r2.yyyy, cb1_1.tint_symbol_1[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol_1[11u]);
  if ((bitcast<u32>(cb12_12.tint_symbol_4[4u].x) != 0u)) {
    let v_75 = (v0 + cb12_12.tint_symbol_4[1u].xyz);
    r2 = vec4<f32>(v_75.xyz, r2.w);
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r1.w);
    let v_76 = (r2.xyz / r1.www);
    r2 = vec4<f32>(v_76.xyz, r2.w);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.z = (r2.z * 0.5f);
    r2.w = dot(r2.xy, r2.xy);
    r2.w = max(r2.w, 0.00000000999999993923f);
    r2.w = sqrt(r2.w);
    let v_77 = (r2.xy / r2.ww);
    r2 = vec4<f32>(v_77.xy, r2.zw);
    let v_78 = (r2.zz * r2.xy);
    r2 = vec4<f32>(v_78.xy, r2.zw);
    let v_79 = fma(r2.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r2 = vec4<f32>(v_79.xy, r2.zw);
    let v_80 = (r2.xy * vec2<f32>(126.73267364501953125f));
    r2 = vec4<f32>(r2.xy, v_80.xy);
    let v_81 = -(r2.zwzz);
    let v_82 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.zw >= v_81.xy)));
    r4 = vec4<f32>(v_82.xy, r4.zw);
    let v_83 = fract(abs(r2.zzzw).zw);
    r2 = vec4<f32>(r2.xy, v_83.xy);
    let v_84 = -(r2.zzzw);
    let v_85 = bitcast<vec2<u32>>(r4.xy);
    let v_86 = select(v_84.zw, r2.zw, (v_85 != vec2<u32>()));
    r2 = vec4<f32>(r2.xy, v_86.xy);
    r4 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
    let v_87 = fma((-(r2.zwzz)).xy, vec2<f32>(0.00789062492549419403f), r2.xy);
    r2 = vec4<f32>(v_87.xy, r2.zw);
    r5 = (r2.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r7 = textureSampleLevel(t2, s2, r5.xyxx.xy, 0.0f);
    r5 = textureSampleLevel(t2, s2, r5.zwzz.xy, 0.0f);
    let v_88 = (r2.xy + vec2<f32>(0.00789062492549419403f));
    r2 = vec4<f32>(v_88.xy, r2.zw);
    r8 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
    let v_89 = ((-(r2.zwzz)).xy + vec2<f32>(1.0f));
    r2 = vec4<f32>(v_89.xy, r2.zw);
    r4 = (r2.xxxx * r4);
    r7 = (r2.zzzz * r7);
    r7 = (r2.yyyy * r7);
    r4 = fma(r4, r2.yyyy, r7);
    r5 = (r2.xxxx * r5);
    r4 = fma(r5, r2.wwww, r4);
    r5 = (r2.zzzz * r8);
    r2 = fma(r5, r2.wwww, r4);
    r1.w = (r1.w / cb12_12.tint_symbol_4[0u].x);
    r1.w = min(r1.w, 1.0f);
    r2 = (r1.wwww * r2);
    r2 = fma(r2, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r2 = r1.xxxy;
  }
  r1.z = 1.0f;
  let v_90 = bitcast<vec4<u32>>(cb12_12.tint_symbol_4[4u].yyyy);
  let v_91 = r1.xxxz;
  o4 = select(r2, v_91, (v_90 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r6.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_92 = (v3.xx + cb11_11.tint_symbol_5[8u].xy);
  let v_93 = r1;
  r1 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
  r1.y = ((-(r1.zzzz)).y + r1.y);
  o0.x = fma(r1.x, r1.y, r1.z);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_2[0u]);
  o0.y = v3.y;
  o0 = vec4<f32>(o0.xy, v4.xy);
  let v_94 = r3;
  o2 = vec4<f32>(v_94.xyz, o2.w);
  o2.w = 1.0f;
  o5 = r0;
  let v_95 = &(x0[0u]);
  *(v_95) = vec4<f32>((*(v_95)).x, vec3<f32>());
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
}

struct tint_symbol_7 {
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
  tint_symbol_6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v2, v3, v4, v5, v6);
  return tint_symbol_7(o0, o1, o2, o3, o4, o5, o6, v);
}
