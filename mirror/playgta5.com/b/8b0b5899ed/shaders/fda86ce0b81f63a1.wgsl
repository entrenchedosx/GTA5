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

struct cb5_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 5u>,
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

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec3<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0.x = clamp(v8.w, 0.0f, 1.0f);
  if ((bitcast<u32>(cb7_7.tint_symbol_3[0u].x) != 0u)) {
    let v_1 = (v0 + cb12_12.tint_symbol_4[1u].xyz);
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
    r1.x = (r1.x / cb12_12.tint_symbol_4[0u].x);
    r1.x = min(r1.x, 1.0f);
    let v_24 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_24.xyz);
    let v_25 = (r0.yzw * cb12_12.tint_symbol_4[0u].yyy);
    r0 = vec4<f32>(r0.x, v_25.xyz);
    r1.y = dot(r0.yzw, r0.yzw);
    r1.y = sqrt(r1.y);
    r1.y = min(r1.y, 1.0f);
    r1.y = fma((-(r1.yyyy)).y, 4.0f, 1.0f);
    r7.w = max(r1.y, 0.0f);
    let v_26 = fma(r0.yzw, v8.yyy, v0);
    r8 = vec4<f32>(v_26.xyz, r8.w);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_4[2u].w)));
    let v_27 = -(cb12_12.tint_symbol_4[1u].xxyz);
    let v_28 = (v_27.yzw + cb12_12.tint_symbol_4[2u].xyz);
    r1 = vec4<f32>(r1.x, v_28.xyz);
    let v_29 = ((-(r1.yzwy)).xyz + r8.xyz);
    r9 = vec4<f32>(v_29.xyz, r9.w);
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_4[2u].w * 1.10000002384185791016f);
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
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_4[3u].w)));
    let v_34 = (v_27.yzw + cb12_12.tint_symbol_4[3u].xyz);
    r1 = vec4<f32>(r1.x, v_34.xyz);
    let v_35 = ((-(r1.yzwy)).xyz + r8.xwz);
    r9 = vec4<f32>(v_35.xyz, r9.w);
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = sqrt(r0.z);
    r0.w = (cb12_12.tint_symbol_4[3u].w * 1.10000002384185791016f);
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
    r8.y = select(r8.w, v_39, (v_38 != 0u));
    let v_40 = (r6.zw + r6.zw);
    let v_41 = r0;
    r0 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
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
    let v_42 = (r0.ww * r0.yz);
    r6 = vec4<f32>(v_42.xy, r6.zw);
    let v_43 = (r1.xxx * r3.xyz);
    r0 = vec4<f32>(r0.x, v_43.xyz);
    let v_44 = (r0.yzw * cb12_12.tint_symbol_4[0u].yyy);
    r0 = vec4<f32>(r0.x, v_44.xyz);
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
    let v_45 = (r1.yy * r2.xy);
    r3 = vec4<f32>(v_45.xy, r3.zw);
    let v_46 = (r1.xxx * r5.xyz);
    r1 = vec4<f32>(r1.x, v_46.xyz);
    let v_47 = ((-(r6.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_47.xyz, r3.w);
    let v_48 = -(r0.yyzw);
    let v_49 = fma(r1.yzw, cb12_12.tint_symbol_4[0u].yyy, v_48.yzw);
    r1 = vec4<f32>(r1.x, v_49.xyz);
    r1.y = dot(r1.yzw, v6);
    r1.z = dot(r3.xyz, r3.xyz);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
    r5.x = (r1.y / r1.z);
    r5.y = 1.0f;
    let v_50 = (r3.xyz * r5.xyx);
    r3 = vec4<f32>(v_50.xyz, r3.w);
    let v_51 = r5;
    r5 = vec4<f32>(v_51.x, v8.yy, v_51.w);
    let v_52 = (r3.xyz * r5.zxz);
    r3 = vec4<f32>(v_52.xyz, r3.w);
    let v_53 = r5;
    r5 = vec4<f32>(0.10000000149011611938f, v_53.y, 0.33329999446868896484f, v_53.w);
    let v_54 = fma(r3.xyz, r5.xyz, v6);
    r3 = vec4<f32>(v_54.xyz, r3.w);
    let v_55 = bitcast<vec3<u32>>(r1.www);
    let v_56 = select(v6, r3.xyz, (v_55 != vec3<u32>()));
    r1 = vec4<f32>(r1.x, v_56.xyz);
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
    let v_57 = (r2.xx * r2.zw);
    r3 = vec4<f32>(v_57.xy, r3.zw);
    let v_58 = (r1.xxx * r4.xyz);
    r2 = vec4<f32>(v_58.xyz, r2.w);
    let v_59 = ((-(r6.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_59.xyz, r3.w);
    let v_60 = -(r0.yyzw);
    let v_61 = fma(r2.xyz, cb12_12.tint_symbol_4[0u].yyy, v_60.yzw);
    r0 = vec4<f32>(r0.x, v_61.xyz);
    r0.y = dot(r0.yzw, v6);
    r0.z = dot(r3.xyz, r3.xyz);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    r2.x = (r0.y / r0.z);
    r2.y = 1.0f;
    let v_62 = (r3.xyz * r2.xyx);
    r3 = vec4<f32>(v_62.xyz, r3.w);
    r2.z = v8.y;
    let v_63 = (r2.zxz * r3.xyz);
    r2 = vec4<f32>(v_63.xyz, r2.w);
    let v_64 = fma(r2.xyz, r5.xyz, r1.yzw);
    r2 = vec4<f32>(v_64.xyz, r2.w);
    let v_65 = bitcast<vec3<u32>>(r0.www);
    let v_66 = r2.xyz;
    let v_67 = select(r1.yzw, v_66, (v_65 != vec3<u32>()));
    r0 = vec4<f32>(r0.x, v_67.xyz);
    let v_68 = (r0.yzw + vec3<f32>(0.00009999999747378752f));
    r0 = vec4<f32>(r0.x, v_68.xyz);
    r1.x = dot(r0.yzw, r0.yzw);
    r1.x = inverseSqrt(r1.x);
    let v_69 = (r0.yzw * r1.xxx);
    r0 = vec4<f32>(r0.x, v_69.xyz);
  } else {
    r8 = vec4<f32>(v0.xyz, r8.w);
    r0 = vec4<f32>(r0.x, v6.xyz);
    r7.w = 1.0f;
  }
  r1.x = (v2.z * 255.001953125f);
  let v_70 = r1.x;
  let v_71 = max(v_70, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_71), 2147483647i, (v_71 >= 2147483648.0f)), 0i, !((v_70 == v_70))));
  r1.x = bitcast<f32>((bitcast<i32>(r1.x) * 3i));
  r8.w = 1.0f;
  r1.y = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)], r8);
  r1.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], r8);
  r1.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r8);
  let v_72 = (r1.zzz * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = fma(r1.yyy, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  o3 = (((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r2.w = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)].xyz, r0.yzw);
  r3.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz, r0.yzw);
  r0.y = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, r0.yzw);
  let v_76 = (r3.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_76.xyz, r3.w);
  let v_77 = fma(r2.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_77.xyz, r3.w);
  let v_78 = fma(r0.yyy, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r7 = vec4<f32>(v_78.xyz, r7.w);
  r0.y = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)].xyz, v7.xyz);
  r0.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))].xyz, v7.xyz);
  r0.w = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))].xyz, v7.xyz);
  let v_79 = (r0.zzz * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_79.xyz, r3.w);
  let v_80 = fma(r0.yyy, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_80.xyz, r3.w);
  let v_81 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r0 = vec4<f32>(r0.x, v_81.xyz);
  let v_82 = (r7.yzx * r0.wyz);
  r3 = vec4<f32>(v_82.xyz, r3.w);
  let v_83 = -(r3.xyzx);
  let v_84 = fma(r0.zwy, r7.zxy, v_83.xyz);
  r3 = vec4<f32>(v_84.xyz, r3.w);
  o5 = ((r3.xyz * v7.www)).xyzx;
  r3 = (r1.zzzz * cb1_1.tint_symbol_1[9u]);
  r3 = fma(r1.yyyy, cb1_1.tint_symbol_1[8u], r3);
  r1 = fma(r1.wwww, cb1_1.tint_symbol_1[10u], r3);
  r1 = (r1 + cb1_1.tint_symbol_1[11u]);
  if ((bitcast<u32>(cb12_12.tint_symbol_4[4u].x) != 0u)) {
    let v_85 = (v0 + cb12_12.tint_symbol_4[1u].xyz);
    r3 = vec4<f32>(v_85.xyz, r3.w);
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = sqrt(r2.w);
    let v_86 = (r3.xyz / r2.www);
    r3 = vec4<f32>(v_86.xyz, r3.w);
    r3.z = ((-(r3.zzzz)).z + 1.0f);
    r3.z = (r3.z * 0.5f);
    r3.w = dot(r3.xy, r3.xy);
    r3.w = max(r3.w, 0.00000000999999993923f);
    r3.w = sqrt(r3.w);
    let v_87 = (r3.xy / r3.ww);
    r3 = vec4<f32>(v_87.xy, r3.zw);
    let v_88 = (r3.zz * r3.xy);
    r3 = vec4<f32>(v_88.xy, r3.zw);
    let v_89 = fma(r3.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r3 = vec4<f32>(v_89.xy, r3.zw);
    let v_90 = (r3.xy * vec2<f32>(126.73267364501953125f));
    r3 = vec4<f32>(r3.xy, v_90.xy);
    let v_91 = -(r3.zwzz);
    let v_92 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.zw >= v_91.xy)));
    r4 = vec4<f32>(v_92.xy, r4.zw);
    let v_93 = fract(abs(r3.zzzw).zw);
    r3 = vec4<f32>(r3.xy, v_93.xy);
    let v_94 = -(r3.zzzw);
    let v_95 = bitcast<vec2<u32>>(r4.xy);
    let v_96 = select(v_94.zw, r3.zw, (v_95 != vec2<u32>()));
    r3 = vec4<f32>(r3.xy, v_96.xy);
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    let v_97 = fma((-(r3.zwzz)).xy, vec2<f32>(0.00789062492549419403f), r3.xy);
    r3 = vec4<f32>(v_97.xy, r3.zw);
    r5 = (r3.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r6 = textureSampleLevel(t2, s2, r5.xyxx.xy, 0.0f);
    r5 = textureSampleLevel(t2, s2, r5.zwzz.xy, 0.0f);
    let v_98 = (r3.xy + vec2<f32>(0.00789062492549419403f));
    r3 = vec4<f32>(v_98.xy, r3.zw);
    r8 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    let v_99 = ((-(r3.zwzz)).xy + vec2<f32>(1.0f));
    r3 = vec4<f32>(v_99.xy, r3.zw);
    r4 = (r3.xxxx * r4);
    r6 = (r3.zzzz * r6);
    r6 = (r3.yyyy * r6);
    r4 = fma(r4, r3.yyyy, r6);
    r5 = (r3.xxxx * r5);
    r4 = fma(r5, r3.wwww, r4);
    r5 = (r3.zzzz * r8);
    r3 = fma(r5, r3.wwww, r4);
    r2.w = (r2.w / cb12_12.tint_symbol_4[0u].x);
    r2.w = min(r2.w, 1.0f);
    r3 = (r2.wwww * r3);
    r3 = fma(r3, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r3 = v8;
  }
  r4.x = v8.y;
  r4.w = 1.0f;
  let v_100 = bitcast<vec4<u32>>(cb12_12.tint_symbol_4[4u].yyyy);
  let v_101 = r4.xxxw;
  o6 = select(r3, v_101, (v_100 != vec4<u32>()));
  o7.z = (r0.x * cb11_11.tint_symbol_5[4u].z);
  x0[0u].x = dot(r1, cb0_0.tint_symbol_2[0u]);
  o0 = vec4<f32>(v3.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, v4.xy);
  o1 = r7;
  let v_102 = r2;
  o2 = vec4<f32>(v_102.xyz, o2.w);
  o2.w = 1.0f;
  o8 = r1;
  let v_103 = &(x0[0u]);
  *(v_103) = vec4<f32>((*(v_103)).x, vec3<f32>());
  o4 = r0.yzw.xyzx;
  o7 = vec3<f32>(v5.xy, o7.xyz.z).xyzx;
  o9[0u] = x0[0u].x;
  o9[1u] = x0[0u].y;
  o9[2u] = x0[0u].z;
  o9[3u] = x0[0u].w;
  v = vec4<f32>(o9[0u], o9[1u], o9[2u], o9[3u]);
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
  tint_symbol_6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec3<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_7(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, v);
}
