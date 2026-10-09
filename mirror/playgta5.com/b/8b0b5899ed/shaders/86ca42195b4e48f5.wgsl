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

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct_1;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb59_struct {
  tint_symbol_4 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb4_struct {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb4_struct;

struct cb4_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb4_struct_1;

var<private> v11 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

var<private> o10 : vec4<f32>;

var<private> o11 : vec4<f32>;

var<private> o12 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 8u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_8;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v10 : vec4<f32>, v_2 : i32) {
  let v_3 = 0i;
  v11.x = bitcast<f32>((v_2 - v_3));
  r0 = vec4<f32>(((v0 + v7.xyz)).xyz, r0.w);
  r1.x = v6.w;
  r1.y = v7.w;
  r1.z = v8.w;
  let v_4 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = ((-(r1.xyzx)).xyz + v8.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r2 = vec4<f32>(((v6.xyz + (-(v7.xyzx)).xyz)).xyz, r2.w);
  let v_6 = (r1.xyz + r2.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r3.xyz, vec3<f32>(0.5f), r0.xyz);
  o8 = vec4<f32>(v_7.xyz, o8.w);
  r2.w = 0.0f;
  let v_8 = (r2.xyw + v0);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1.w = 0.0f;
  let v_9 = -(r1.xywx);
  let v_10 = (r0.xyz + v_9.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r4.x = 0.0f;
  r4.z = (v10.x * 0.5f);
  let v_11 = (r3.xyz + r4.xxz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = &(x0[0u]);
  let v_13 = r3;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  r0.w = v0.z;
  let v_14 = (r0.xyw + r1.xyw);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r4.xxz + r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = &(x0[1u]);
  let v_17 = r0;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = ((-(r2.xywx)).xyz + v0);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = (r1.xyw + r2.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = (r4.xxz + r5.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = &(x0[2u]);
  let v_22 = r5;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = ((-(r1.xywx)).xyz + r2.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = (r4.xxz + r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = &(x0[3u]);
  let v_26 = r1;
  *(v_25) = vec4<f32>(v_26.xyz, (*(v_25)).w);
  r2 = vec4<f32>(vec2<f32>(2.0f), r2.zw);
  r2.z = v10.x;
  let v_27 = fma(vec3<f32>(0.0f, 0.0f, -1.0f), r2.xyz, r3.xyz);
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = &(x0[4u]);
  let v_29 = r3;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(vec3<f32>(0.0f, 0.0f, -1.0f), r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = &(x0[5u]);
  let v_32 = r0;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(vec3<f32>(0.0f, 0.0f, -1.0f), r2.xyz, r5.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = &(x0[6u]);
  let v_35 = r0;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(vec3<f32>(0.0f, 0.0f, -1.0f), r2.xyz, r1.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = &(x0[7u]);
  let v_38 = r0;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  r0.x = v11.x;
  let v_39 = x0[bitcast<i32>(r0.x)];
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r1 = vec4<f32>(((v10.ww * v10.yz)).xy, r1.zw);
  let v_40 = -(r1.xyxx);
  let v_41 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.xy >= v_40.xy)));
  r1 = vec4<f32>(v_41.xy, r1.zw);
  let v_42 = select((-(v10.wwww)).xy, v10.ww, (bitcast<vec2<u32>>(r1.xy) != vec2<u32>()));
  r1 = vec4<f32>(v_42.xy, r1.zw);
  let v_43 = (vec2<f32>(1.0f) / r1.xy);
  r1 = vec4<f32>(r1.xy, v_43.xy);
  let v_44 = (r1.zw * v10.yz);
  r1 = vec4<f32>(r1.xy, v_44.xy);
  let v_45 = fract(r1.zw);
  r1 = vec4<f32>(r1.xy, v_45.xy);
  let v_46 = (r1.zw * r1.xy);
  let v_47 = o1;
  o1 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
  let v_48 = (v10.yz / v10.ww);
  let v_49 = o1;
  o1 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol_1[11u]);
  r0.w = dot(v2.xy, v2.xy);
  r0.w = sqrt(r0.w);
  r2.x = (1.0f / r0.w);
  let v_50 = (r2.xx * v2.xy);
  o2 = vec4<f32>(o2.xy, v_50.xy);
  let v_51 = r2;
  r2 = vec4<f32>(v_51.x, vec2<f32>(1.0f, -1.0f), v_51.w);
  let v_52 = (r2.yx * v2.yx);
  let v_53 = r2;
  r2 = vec4<f32>(v_53.x, v_52.x, v_53.z, v_52.y);
  let v_54 = (r2.xz * r2.yw);
  o9 = vec3<f32>(v_54.xy, o9.xyz.z).xyzx;
  let v_55 = -(cb1_1.tint_symbol_1[15u].xxyz);
  let v_56 = (r0.xyz + v_55.yzw);
  r2 = vec4<f32>(r2.x, v_56.xyz);
  r0.w = dot(v2, v2);
  r0.w = inverseSqrt(r0.w);
  let v_57 = (r0.www * v2);
  r3 = vec4<f32>(v_57.xyz, r3.w);
  r4 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r4.w);
  let v_58 = (cb2_2.tint_symbol_3[15u].zy * cb8_8.tint_symbol_6[2u].zz);
  r5 = vec4<f32>(v_58.xy, r5.zw);
  r3.w = clamp(((cb2_2.tint_symbol_3[16u].zzzz + cb3_3.tint_symbol_4[49u].wwww)).w, 0.0f, 1.0f);
  r3.w = (r3.w * r5.y);
  r4.w = clamp(fma(r0.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r4.w = sqrt(r4.w);
  r4.w = fma((-(r4.wwww)).w, cb6_6.tint_symbol_5[3u].z, 1.0f);
  r4.w = (r4.w * cb8_8.tint_symbol_6[2u].y);
  r5.y = (cb13_13.tint_symbol[0u].x + 1.0f);
  r5.y = (r5.y * r5.y);
  r5.z = clamp(((cb13_13.tint_symbol[0u].xxxx / r5.yyyy)).z, 0.0f, 1.0f);
  let v_59 = (r4.xyz * r5.zzz);
  r6 = vec4<f32>(v_59.xyz, r6.w);
  let v_60 = (r6.xyz * cb3_3.tint_symbol_4[1u].xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
  let v_61 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[3u].xyz);
  r7 = vec4<f32>(v_61.xyz, r7.w);
  let v_62 = -(cb3_3.tint_symbol_4[3u].xyzx);
  let v_63 = (r0.xyz + v_62.xyz);
  r8 = vec4<f32>(v_63.xyz, r8.w);
  r6.w = dot(r8.xyz, cb3_3.tint_symbol_4[11u].xyz);
  r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[19u].wwww)).w, 0.0f, 1.0f);
  r6.w = (r6.w * cb3_3.tint_symbol_4[19u].w);
  let v_64 = fma(cb3_3.tint_symbol_4[11u].xyz, r6.www, cb3_3.tint_symbol_4[3u].xyz);
  r8 = vec4<f32>(v_64.xyz, r8.w);
  let v_65 = ((-(r0.xyzx)).xyz + r8.xyz);
  r8 = vec4<f32>(v_65.xyz, r8.w);
  let v_66 = bitcast<vec3<u32>>(r5.www);
  let v_67 = r7.xyz;
  let v_68 = select(r8.xyz, v_67, (v_66 != vec3<u32>()));
  r7 = vec4<f32>(v_68.xyz, r7.w);
  r5.w = dot(r7.xyz, r7.xyz);
  let v_69 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
  r7 = vec4<f32>(v_69.xyz, r7.w);
  r6.w = dot(r7.xyz, r7.xyz);
  r6.w = inverseSqrt(r6.w);
  let v_70 = (r6.www * r7.xyz);
  r7 = vec4<f32>(v_70.xyz, r7.w);
  r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r6.w = ((-(cb3_3.tint_symbol_4[11u].wwww)).w + 1.0f);
  r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[11u].w);
  r5.w = (r5.w / r6.w);
  let v_71 = -(cb3_3.tint_symbol_4[11u].xyzx);
  r6.w = dot(r7.xyz, v_71.xyz);
  r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).w, 0.0f, 1.0f);
  let v_72 = dot(r7.xyz, r3.xyz);
  r7.x = clamp(vec4<f32>(v_72, v_72, v_72, v_72).x, 0.0f, 1.0f);
  r7.x = (r7.x + cb13_13.tint_symbol[0u].x);
  r7.x = clamp(((r7.xxxx / r5.yyyy)).x, 0.0f, 1.0f);
  r6.w = (r6.w * r7.x);
  r5.w = (r5.w * r6.w);
  let v_73 = (r5.www * cb3_3.tint_symbol_4[19u].xyz);
  r7 = vec4<f32>(v_73.xyz, r7.w);
  let v_74 = (r4.xyz * r7.xyz);
  r7 = vec4<f32>(v_74.xyz, r7.w);
  let v_75 = bitcast<vec3<u32>>(r5.zzz);
  let v_76 = select(r7.xyz, vec3<f32>(), (v_75 != vec3<u32>()));
  r7 = vec4<f32>(v_76.xyz, r7.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
    let v_77 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[4u].xyz);
    r8 = vec4<f32>(v_77.xyz, r8.w);
    let v_78 = -(cb3_3.tint_symbol_4[4u].xyzx);
    let v_79 = (r0.xyz + v_78.xyz);
    r9 = vec4<f32>(v_79.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_4[12u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[20u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_4[20u].w);
    let v_80 = fma(cb3_3.tint_symbol_4[12u].xyz, r6.www, cb3_3.tint_symbol_4[4u].xyz);
    r9 = vec4<f32>(v_80.xyz, r9.w);
    let v_81 = ((-(r0.xyzx)).xyz + r9.xyz);
    r9 = vec4<f32>(v_81.xyz, r9.w);
    let v_82 = bitcast<vec3<u32>>(r5.www);
    let v_83 = r8.xyz;
    let v_84 = select(r9.xyz, v_83, (v_82 != vec3<u32>()));
    r8 = vec4<f32>(v_84.xyz, r8.w);
    r5.w = dot(r8.xyz, r8.xyz);
    let v_85 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_85.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_86 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_86.xyz, r8.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_4[12u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[12u].w);
    r5.w = (r5.w / r6.w);
    let v_87 = -(cb3_3.tint_symbol_4[12u].xyzx);
    r6.w = dot(r8.xyz, v_87.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).w, 0.0f, 1.0f);
    let v_88 = dot(r8.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_88, v_88, v_88, v_88).w, 0.0f, 1.0f);
    r7.w = (r7.w + cb13_13.tint_symbol[0u].x);
    r7.w = clamp(((r7.wwww / r5.yyyy)).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r5.w = (r5.w * r6.w);
    let v_89 = (r5.www * cb3_3.tint_symbol_4[20u].xyz);
    r8 = vec4<f32>(v_89.xyz, r8.w);
    let v_90 = fma(r8.xyz, r4.xyz, r7.xyz);
    r8 = vec4<f32>(v_90.xyz, r8.w);
    let v_91 = bitcast<vec3<u32>>(r5.zzz);
    let v_92 = r7.xyz;
    let v_93 = select(r8.xyz, v_92, (v_91 != vec3<u32>()));
    r7 = vec4<f32>(v_93.xyz, r7.w);
  } else {
    r5.z = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  }
  if ((bitcast<u32>(r5.z) != 0u)) {
    r5.z = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[21u].w == 0.0f)));
    let v_94 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[5u].xyz);
    r8 = vec4<f32>(v_94.xyz, r8.w);
    let v_95 = -(cb3_3.tint_symbol_4[5u].xyzx);
    let v_96 = (r0.xyz + v_95.xyz);
    r9 = vec4<f32>(v_96.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_4[13u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[21u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_4[21u].w);
    let v_97 = fma(cb3_3.tint_symbol_4[13u].xyz, r6.www, cb3_3.tint_symbol_4[5u].xyz);
    r9 = vec4<f32>(v_97.xyz, r9.w);
    let v_98 = ((-(r0.xyzx)).xyz + r9.xyz);
    r9 = vec4<f32>(v_98.xyz, r9.w);
    let v_99 = bitcast<vec3<u32>>(r5.www);
    let v_100 = r8.xyz;
    let v_101 = select(r9.xyz, v_100, (v_99 != vec3<u32>()));
    r8 = vec4<f32>(v_101.xyz, r8.w);
    r5.w = dot(r8.xyz, r8.xyz);
    let v_102 = (r8.xyz + vec3<f32>(0.00000099999999747524f));
    r8 = vec4<f32>(v_102.xyz, r8.w);
    r6.w = dot(r8.xyz, r8.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_103 = (r6.www * r8.xyz);
    r8 = vec4<f32>(v_103.xyz, r8.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_4[13u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[13u].w);
    r5.w = (r5.w / r6.w);
    let v_104 = -(cb3_3.tint_symbol_4[13u].xyzx);
    r6.w = dot(r8.xyz, v_104.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).w, 0.0f, 1.0f);
    let v_105 = dot(r8.xyz, r3.xyz);
    r7.w = clamp(vec4<f32>(v_105, v_105, v_105, v_105).w, 0.0f, 1.0f);
    r7.w = (r7.w + cb13_13.tint_symbol[0u].x);
    r7.w = clamp(((r7.wwww / r5.yyyy)).w, 0.0f, 1.0f);
    r6.w = (r6.w * r7.w);
    r5.w = (r5.w * r6.w);
    let v_106 = (r5.www * cb3_3.tint_symbol_4[21u].xyz);
    r8 = vec4<f32>(v_106.xyz, r8.w);
    let v_107 = fma(r8.xyz, r4.xyz, r7.xyz);
    r8 = vec4<f32>(v_107.xyz, r8.w);
    let v_108 = bitcast<vec3<u32>>(r5.zzz);
    let v_109 = r7.xyz;
    let v_110 = select(r8.xyz, v_109, (v_108 != vec3<u32>()));
    r7 = vec4<f32>(v_110.xyz, r7.w);
  }
  if ((bitcast<u32>(r5.z) != 0u)) {
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
    let v_111 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    let v_112 = -(cb3_3.tint_symbol_4[6u].xyzx);
    let v_113 = (r0.xyz + v_112.xyz);
    r9 = vec4<f32>(v_113.xyz, r9.w);
    r6.w = dot(r9.xyz, cb3_3.tint_symbol_4[14u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[22u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_4[22u].w);
    let v_114 = fma(cb3_3.tint_symbol_4[14u].xyz, r6.www, cb3_3.tint_symbol_4[6u].xyz);
    r9 = vec4<f32>(v_114.xyz, r9.w);
    let v_115 = ((-(r0.xyzx)).xyz + r9.xyz);
    r0 = vec4<f32>(v_115.xyz, r0.w);
    let v_116 = bitcast<vec3<u32>>(r5.www);
    let v_117 = r8.xyz;
    let v_118 = select(r0.xyz, v_117, (v_116 != vec3<u32>()));
    r0 = vec4<f32>(v_118.xyz, r0.w);
    r5.w = dot(r0.xyz, r0.xyz);
    let v_119 = (r0.xyz + vec3<f32>(0.00000099999999747524f));
    r0 = vec4<f32>(v_119.xyz, r0.w);
    r6.w = dot(r0.xyz, r0.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_120 = (r0.xyz * r6.www);
    r0 = vec4<f32>(v_120.xyz, r0.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_4[14u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[14u].w);
    r5.w = (r5.w / r6.w);
    let v_121 = -(cb3_3.tint_symbol_4[14u].xyzx);
    r6.w = dot(r0.xyz, v_121.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).w, 0.0f, 1.0f);
    let v_122 = dot(r0.xyz, r3.xyz);
    r0.x = clamp(vec4<f32>(v_122, v_122, v_122, v_122).x, 0.0f, 1.0f);
    r0.x = (r0.x + cb13_13.tint_symbol[0u].x);
    r0.x = clamp(((r0.xxxx / r5.yyyy)).x, 0.0f, 1.0f);
    r0.x = (r6.w * r0.x);
    r0.x = (r5.w * r0.x);
    let v_123 = (r0.xxx * cb3_3.tint_symbol_4[22u].xyz);
    r0 = vec4<f32>(v_123.xyz, r0.w);
    let v_124 = fma(r0.xyz, r4.xyz, r7.xyz);
    r0 = vec4<f32>(v_124.xyz, r0.w);
    let v_125 = bitcast<vec3<u32>>(r5.zzz);
    let v_126 = r7.xyz;
    let v_127 = select(r0.xyz, v_126, (v_125 != vec3<u32>()));
    r7 = vec4<f32>(v_127.xyz, r7.w);
  }
  r0.x = fma(v2.z, r0.w, cb3_3.tint_symbol_4[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_4[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_128 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.xxx, cb3_3.tint_symbol_4[48u].xyz);
  r0 = vec4<f32>(r0.x, v_128.xyz);
  r5.y = ((-(cb2_2.tint_symbol_3[16u].zzzz)).y + 1.0f);
  let v_129 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.xxx, cb3_3.tint_symbol_4[46u].xyz);
  r8 = vec4<f32>(v_129.xyz, r8.w);
  let v_130 = (r8.xyz * cb2_2.tint_symbol_3[16u].zzz);
  r8 = vec4<f32>(v_130.xyz, r8.w);
  let v_131 = fma(r0.yzw, r5.yyy, r8.xyz);
  r0 = vec4<f32>(r0.x, v_131.xyz);
  let v_132 = (r3.www * r0.yzw);
  r0 = vec4<f32>(r0.x, v_132.xyz);
  let v_133 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.xxx, cb3_3.tint_symbol_4[44u].xyz);
  r5 = vec4<f32>(r5.x, v_133.xyz);
  r8.x = cb3_3.tint_symbol_4[46u].w;
  r8.y = cb3_3.tint_symbol_4[47u].w;
  r8.z = cb3_3.tint_symbol_4[48u].w;
  let v_134 = dot(r8.xyz, r3.xyz);
  r0.x = clamp(vec4<f32>(v_134, v_134, v_134, v_134).x, 0.0f, 1.0f);
  let v_135 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.xxx, r5.yzw);
  r3 = vec4<f32>(v_135.xyz, r3.w);
  let v_136 = fma(r3.xyz, r5.xxx, r0.yzw);
  r0 = vec4<f32>(v_136.xyz, r0.w);
  let v_137 = (r4.xyz * r0.xyz);
  r0 = vec4<f32>(v_137.xyz, r0.w);
  let v_138 = fma(r7.xyz, cb8_8.tint_symbol_6[3u].xxx, r0.xyz);
  r0 = vec4<f32>(v_138.xyz, r0.w);
  let v_139 = fma(r6.xyz, r4.www, r0.xyz);
  o0 = vec4<f32>(v_139.xyz, o0.w);
  r0.x = dot(r2.yzw, r2.yzw);
  r0.y = sqrt(r0.x);
  let v_140 = -(cb3_3.tint_symbol_4[50u].xxxx);
  r0.z = (r0.y + v_140.z);
  r0.z = max(r0.z, 0.0f);
  r0.y = (r0.z / r0.y);
  r0.y = (r0.y * r2.w);
  r0.w = (r0.y * cb3_3.tint_symbol_4[52u].z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.yyyy).y)));
  r3.x = (r0.w * -1.44269502162933349609f);
  r3.x = exp2(r3.x);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r0.w = (r3.x / r0.w);
  let v_141 = bitcast<u32>(r0.y);
  r0.y = select(1.0f, r0.w, (v_141 != 0u));
  r0.w = (r0.z * cb3_3.tint_symbol_4[51u].w);
  r0.y = (r0.y * r0.w);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.w = (r0.y * cb3_3.tint_symbol_4[52u].y);
  r0.x = inverseSqrt(r0.x);
  let v_142 = (r0.xxx * r2.yzw);
  r3 = vec4<f32>(v_142.xyz, r3.w);
  let v_143 = dot(r3.xyz, cb3_3.tint_symbol_4[54u].xyz);
  r0.x = clamp(vec4<f32>(v_143, v_143, v_143, v_143).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_4[54u].w);
  r0.x = exp2(r0.x);
  let v_144 = dot(r3.xyz, cb3_3.tint_symbol_4[53u].xyz);
  r3.x = clamp(vec4<f32>(v_144, v_144, v_144, v_144).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * cb3_3.tint_symbol_4[53u].w);
  r3.x = exp2(r3.x);
  r0.y = fma((-(r0.yyyy)).y, cb3_3.tint_symbol_4[52u].y, 1.0f);
  r0.y = (r0.y * cb3_3.tint_symbol_4[51u].y);
  let v_145 = -(cb3_3.tint_symbol_4[52u].xxxx);
  r3.y = (r0.z + v_145.y);
  r3.y = max(r3.y, 0.0f);
  r3.y = (r3.y * cb3_3.tint_symbol_4[51u].x);
  r3.y = (r3.y * 1.44269502162933349609f);
  r3.y = exp2(r3.y);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  o4.w = clamp(fma(r0.yyyy, r3.yyyy, r0.wwww).w, 0.0f, 1.0f);
  let v_146 = -(cb3_3.tint_symbol_4[51u].zzzz);
  r0.z = (r0.z * v_146.z);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_147 = ((-(cb3_3.tint_symbol_4[56u].xxyz)).yzw + cb3_3.tint_symbol_4[58u].xyz);
  r3 = vec4<f32>(r3.x, v_147.xyz);
  let v_148 = fma(r0.xxx, r3.yzw, cb3_3.tint_symbol_4[56u].xyz);
  r3 = vec4<f32>(r3.x, v_148.xyz);
  let v_149 = ((-(r3.yzwy)).xyz + cb3_3.tint_symbol_4[55u].xyz);
  r4 = vec4<f32>(v_149.xyz, r4.w);
  let v_150 = fma(r3.xxx, r4.xyz, r3.yzw);
  r3 = vec4<f32>(v_150.xyz, r3.w);
  let v_151 = -(cb3_3.tint_symbol_4[57u].xyzx);
  let v_152 = (r3.xyz + v_151.xyz);
  r3 = vec4<f32>(v_152.xyz, r3.w);
  let v_153 = fma(r0.zzz, r3.xyz, cb3_3.tint_symbol_4[57u].xyz);
  r0 = vec4<f32>(v_153.x, r0.y, v_153.yz);
  r3.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_4[55u].w);
  r3.y = ((-(r0.zzzz)).y + cb3_3.tint_symbol_4[56u].w);
  r3.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_4[57u].w);
  let v_154 = fma(r0.yyy, r3.xyz, r0.xzw);
  o4 = vec4<f32>(v_154.xyz, o4.w);
  x1[0u].x = dot(r1, cb0_0.tint_symbol_2[0u]);
  o0.w = v1.w;
  o2 = vec4<f32>(vec2<f32>(1.0f), o2.zw);
  o5 = vec4<f32>();
  o6 = vec4<f32>(vec2<f32>(), o6.zw);
  o6 = vec4<f32>(o6.xy, v5.zw);
  o7 = vec4<f32>();
  o8.w = r2.x;
  o10.w = r1.w;
  let v_155 = r2;
  o10 = vec4<f32>(v_155.yzw, o10.w);
  o11 = r1;
  let v_156 = &(x1[0u]);
  *(v_156) = vec4<f32>((*(v_156)).x, vec3<f32>());
  o9.z = 0.0f;
  o3.y = v3.y;
  o12[0u] = x1[0u].x;
  o12[1u] = x1[0u].y;
  o12[2u] = x1[0u].z;
  o12[3u] = x1[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
}

struct tint_symbol_10 {
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
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
  @location(10u)
  o10 : vec4<f32>,
  @builtin(position)
  o11 : vec4<f32>,
  @builtin(clip_distances)
  o12 : array<f32, 4u>,
  @location(15u)
  tint_symbol_9 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(vertex_index) v_157 : u32) -> tint_symbol_10 {
  main_inner(v0, v1, v2, v3, v5, v6, v7, v8, v10, i32(v_157));
  return tint_symbol_10(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
