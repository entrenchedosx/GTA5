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

struct cb24_struct {
  tint_symbol_1 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb24_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_4 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb9_struct {
  tint_symbol_6 : array<vec4<f32>, 9u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb9_struct;

struct cb1_struct_1 {
  tint_symbol_7 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_1;

@group(0u) @binding(31u) var s15 : sampler_comparison;

@group(0u) @binding(47u) var t15 : texture_depth_2d;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v4 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_9 {
  tint_symbol_8 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_9;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>, v_2 : i32) {
  let v_3 = 0i;
  v4.x = bitcast<f32>((v_2 - v_3));
  let v_4 = cb9_9.tint_symbol_6[8u].x;
  let v_5 = max(v_4, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_5), 2147483647i, (v_5 >= 2147483648.0f)), 0i, !((v_4 == v_4))));
  r0.y = f32(bitcast<u32>(v4.x));
  r0.y = (r0.y * cb9_9.tint_symbol_6[8u].y);
  let v_6 = r0.y;
  let v_7 = max(v_6, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_7), 2147483647i, (v_7 >= 2147483648.0f)), 0i, !((v_6 == v_6))));
  let v_8 = (-(bitcast<vec4<i32>>(r0.yyyy))).x;
  let v_9 = bitcast<i32>(r0.x);
  r0.x = bitcast<f32>(((v_8 * v_9) + bitcast<i32>(v4.x)));
  r0.x = dot(cb9_9.tint_symbol_6[7u], icb0[bitcast<i32>(r0.x)]);
  let v_10 = r0.x;
  let v_11 = max(v_10, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_11), 2147483647i, (v_11 >= 2147483648.0f)), 0i, !((v_10 == v_10))));
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 2u));
  r1 = (v0.yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r1 = fma(v0.xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r0.y)], r1);
  r1 = fma(v0.zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 2i))], r1);
  r1 = (r1 + cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r0.y) + 3i))]);
  r0.y = dot(v3, v3);
  r0.y = inverseSqrt(r0.y);
  let v_12 = (r0.yyy * v3.yzx);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  r2.x = fma(v2.y, 2.0f, -1.0f);
  let v_13 = -(cb1_1.tint_symbol[14u].zzxy);
  let v_14 = (r0.yzw * v_13.yzw);
  r2 = vec4<f32>(r2.x, v_14.xyz);
  let v_15 = -(cb1_1.tint_symbol[14u].yyzx);
  let v_16 = -(r2.yyzw);
  let v_17 = fma(v_15.yzw, r0.zwy, v_16.yzw);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  r2.y = ((-(abs(r2.xxxx))).y + 1.0f);
  let v_18 = (r2.yyy * cb1_1.tint_symbol[14u].xyz);
  r2 = vec4<f32>(r2.x, v_18.xyz);
  let v_19 = fma(r0.yzw, r2.xxx, r2.yzw);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_20 = (r0.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_20.xyz);
  r3 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r3.w);
  let v_21 = (cb2_2.tint_symbol_3[15u].zy * cb8_8.tint_symbol_7[0u].xx);
  let v_22 = r0;
  r0 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = (r4.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = fma(r4.xxx, cb6_6.tint_symbol_5[0u].xyz, r5.xyz);
  r4 = vec4<f32>(v_25.xy, r4.z, v_25.z);
  let v_26 = fma(r4.zzz, cb6_6.tint_symbol_5[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = fma(r4.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = &(x0[0u]);
  let v_29 = r5;
  *(v_28) = vec4<f32>(v_29.xyz, (*(v_28)).w);
  let v_30 = fma(r4.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  let v_31 = &(x0[1u]);
  let v_32 = r6;
  *(v_31) = vec4<f32>(v_32.xyz, (*(v_31)).w);
  let v_33 = fma(r4.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = &(x0[2u]);
  let v_35 = r7;
  *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
  let v_36 = fma(r4.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  let v_37 = &(x0[3u]);
  let v_38 = r4;
  *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
  r3.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r3.w = (r3.w * 0.5f);
  let v_39 = abs(r7.yyyy);
  r4.x = max(v_39.x, abs(r7.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.w)));
  let v_40 = (bitcast<u32>(r4.x) != 0u);
  let v_41 = bitcast<f32>(v_1.tint_symbol_8[0i].x);
  r4.x = select(bitcast<f32>(v_1.tint_symbol_8[1i].x), v_41, v_40);
  let v_42 = abs(r6.yyyy);
  r4.y = max(v_42.y, abs(r6.xxxx).y);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (r4.y < r3.w)));
  let v_43 = bitcast<u32>(r4.y);
  r4.x = select(r4.x, bitcast<f32>(v_1.tint_symbol_8[2i].x), (v_43 != 0u));
  let v_44 = abs(r5.yyyy);
  r4.y = max(v_44.y, abs(r5.xxxx).y);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.y < r3.w)));
  let v_45 = bitcast<u32>(r3.w);
  r3.w = select(r4.x, 0.0f, (v_45 != 0u));
  let v_46 = x0[bitcast<i32>(r3.w)];
  r4 = vec4<f32>(v_46.xyz, r4.w);
  r3.w = f32(bitcast<i32>(r3.w));
  r3.w = (r3.w + 0.5f);
  r3.w = (r3.w * 0.25f);
  r4.x = (r4.x + cb6_6.tint_symbol_5[14u].z);
  r3.w = fma(r4.y, 0.25f, r3.w);
  let v_47 = (r4.xz + vec2<f32>(0.5f, 0.0f));
  let v_48 = r4;
  r4 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
  r4.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r3.w);
  let v_49 = r4.xyxx;
  r3.w = textureSampleCompareLevel(t15, s15, v_49.xy, r4.z);
  r4.x = clamp(fma(v0.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).x, 0.0f, 1.0f);
  r4.x = sqrt(r4.x);
  r4.x = fma((-(r4.xxxx)).x, cb6_6.tint_symbol_5[3u].z, 1.0f);
  r4.x = (r4.x * cb8_8.tint_symbol_7[0u].z);
  let v_50 = -(cb3_3.tint_symbol_4[0u].xyzx);
  let v_51 = dot(r2.yzw, v_50.xyz);
  r4.y = clamp(vec4<f32>(v_51, v_51, v_51, v_51).y, 0.0f, 1.0f);
  let v_52 = (r3.xyz * r4.yyy);
  r4 = vec4<f32>(r4.x, v_52.xyz);
  let v_53 = (r4.yzw * cb3_3.tint_symbol_4[1u].xyz);
  r4 = vec4<f32>(r4.x, v_53.xyz);
  let v_54 = (r4.xxx * r4.yzw);
  r4 = vec4<f32>(v_54.xyz, r4.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  r5.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
  let v_55 = ((-(v0.xxyz)).yzw + cb3_3.tint_symbol_4[3u].xyz);
  r5 = vec4<f32>(r5.x, v_55.xyz);
  let v_56 = (v0 + (-(cb3_3.tint_symbol_4[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_56.xyz, r6.w);
  r6.x = dot(r6.xyz, cb3_3.tint_symbol_4[11u].xyz);
  r6.x = clamp(((r6.xxxx / cb3_3.tint_symbol_4[19u].wwww)).x, 0.0f, 1.0f);
  r6.x = (r6.x * cb3_3.tint_symbol_4[19u].w);
  let v_57 = fma(cb3_3.tint_symbol_4[11u].xyz, r6.xxx, cb3_3.tint_symbol_4[3u].xyz);
  r6 = vec4<f32>(v_57.xyz, r6.w);
  let v_58 = -(v0.xyzx);
  let v_59 = (r6.xyz + v_58.xyz);
  r6 = vec4<f32>(v_59.xyz, r6.w);
  let v_60 = bitcast<vec3<u32>>(r5.xxx);
  let v_61 = r5.yzw;
  let v_62 = select(r6.xyz, v_61, (v_60 != vec3<u32>()));
  r5 = vec4<f32>(v_62.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  let v_63 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_63.xyz, r5.w);
  r6.x = dot(r5.xyz, r5.xyz);
  r6.x = inverseSqrt(r6.x);
  let v_64 = (r5.xyz * r6.xxx);
  r5 = vec4<f32>(v_64.xyz, r5.w);
  r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r6.x = ((-(cb3_3.tint_symbol_4[11u].wwww)).x + 1.0f);
  r6.x = fma(r6.x, r5.w, cb3_3.tint_symbol_4[11u].w);
  r5.w = (r5.w / r6.x);
  let v_65 = -(cb3_3.tint_symbol_4[11u].xyzx);
  r6.x = dot(r5.xyz, v_65.xyz);
  r6.x = clamp(fma(r6.xxxx, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).x, 0.0f, 1.0f);
  let v_66 = dot(r5.xyz, r2.yzw);
  r5.x = clamp(vec4<f32>(v_66, v_66, v_66, v_66).x, 0.0f, 1.0f);
  r5.x = (r6.x * r5.x);
  r5.x = (r5.w * r5.x);
  let v_67 = (r5.xxx * cb3_3.tint_symbol_4[19u].xyz);
  r5 = vec4<f32>(v_67.xyz, r5.w);
  let v_68 = (r3.xyz * r5.xyz);
  r5 = vec4<f32>(v_68.xyz, r5.w);
  let v_69 = bitcast<vec3<u32>>(r4.www);
  let v_70 = select(r5.xyz, vec3<f32>(), (v_69 != vec3<u32>()));
  r5 = vec4<f32>(v_70.xyz, r5.w);
  r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  if ((bitcast<u32>(r5.w) != 0u)) {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
    let v_71 = (v_58.xyz + cb3_3.tint_symbol_4[4u].xyz);
    r6 = vec4<f32>(v_71.xyz, r6.w);
    let v_72 = (v0 + (-(cb3_3.tint_symbol_4[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_72.xyz, r7.w);
    r6.w = dot(r7.xyz, cb3_3.tint_symbol_4[12u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[20u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_4[20u].w);
    let v_73 = fma(cb3_3.tint_symbol_4[12u].xyz, r6.www, cb3_3.tint_symbol_4[4u].xyz);
    r7 = vec4<f32>(v_73.xyz, r7.w);
    let v_74 = (r7.xyz + v_58.xyz);
    r7 = vec4<f32>(v_74.xyz, r7.w);
    let v_75 = bitcast<vec3<u32>>(r5.www);
    let v_76 = r6.xyz;
    let v_77 = select(r7.xyz, v_76, (v_75 != vec3<u32>()));
    r6 = vec4<f32>(v_77.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    let v_78 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_78.xyz, r6.w);
    r6.w = dot(r6.xyz, r6.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_79 = (r6.www * r6.xyz);
    r6 = vec4<f32>(v_79.xyz, r6.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_4[12u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[12u].w);
    r5.w = (r5.w / r6.w);
    let v_80 = -(cb3_3.tint_symbol_4[12u].xyzx);
    r6.w = dot(r6.xyz, v_80.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).w, 0.0f, 1.0f);
    let v_81 = dot(r6.xyz, r2.yzw);
    r6.x = clamp(vec4<f32>(v_81, v_81, v_81, v_81).x, 0.0f, 1.0f);
    r6.x = (r6.w * r6.x);
    r5.w = (r5.w * r6.x);
    let v_82 = (r5.www * cb3_3.tint_symbol_4[20u].xyz);
    r6 = vec4<f32>(v_82.xyz, r6.w);
    let v_83 = fma(r6.xyz, r3.xyz, r5.xyz);
    r6 = vec4<f32>(v_83.xyz, r6.w);
    let v_84 = bitcast<vec3<u32>>(r4.www);
    let v_85 = r5.xyz;
    let v_86 = select(r6.xyz, v_85, (v_84 != vec3<u32>()));
    r5 = vec4<f32>(v_86.xyz, r5.w);
  } else {
    r4.w = bitcast<f32>(v_1.tint_symbol_8[3i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(v_1.tint_symbol_8[3i].x);
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[21u].w == 0.0f)));
    let v_87 = (v_58.xyz + cb3_3.tint_symbol_4[5u].xyz);
    r6 = vec4<f32>(v_87.xyz, r6.w);
    let v_88 = (v0 + (-(cb3_3.tint_symbol_4[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_88.xyz, r7.w);
    r6.w = dot(r7.xyz, cb3_3.tint_symbol_4[13u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[21u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_4[21u].w);
    let v_89 = fma(cb3_3.tint_symbol_4[13u].xyz, r6.www, cb3_3.tint_symbol_4[5u].xyz);
    r7 = vec4<f32>(v_89.xyz, r7.w);
    let v_90 = (r7.xyz + v_58.xyz);
    r7 = vec4<f32>(v_90.xyz, r7.w);
    let v_91 = bitcast<vec3<u32>>(r5.www);
    let v_92 = r6.xyz;
    let v_93 = select(r7.xyz, v_92, (v_91 != vec3<u32>()));
    r6 = vec4<f32>(v_93.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    let v_94 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_94.xyz, r6.w);
    r6.w = dot(r6.xyz, r6.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_95 = (r6.www * r6.xyz);
    r6 = vec4<f32>(v_95.xyz, r6.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_4[13u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[13u].w);
    r5.w = (r5.w / r6.w);
    let v_96 = -(cb3_3.tint_symbol_4[13u].xyzx);
    r6.w = dot(r6.xyz, v_96.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).w, 0.0f, 1.0f);
    let v_97 = dot(r6.xyz, r2.yzw);
    r6.x = clamp(vec4<f32>(v_97, v_97, v_97, v_97).x, 0.0f, 1.0f);
    r6.x = (r6.w * r6.x);
    r5.w = (r5.w * r6.x);
    let v_98 = (r5.www * cb3_3.tint_symbol_4[21u].xyz);
    r6 = vec4<f32>(v_98.xyz, r6.w);
    let v_99 = fma(r6.xyz, r3.xyz, r5.xyz);
    r6 = vec4<f32>(v_99.xyz, r6.w);
    let v_100 = bitcast<vec3<u32>>(r4.www);
    let v_101 = r5.xyz;
    let v_102 = select(r6.xyz, v_101, (v_100 != vec3<u32>()));
    r5 = vec4<f32>(v_102.xyz, r5.w);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
  } else {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
    let v_103 = (v_58.xyz + cb3_3.tint_symbol_4[6u].xyz);
    r6 = vec4<f32>(v_103.xyz, r6.w);
    let v_104 = (v0 + (-(cb3_3.tint_symbol_4[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_104.xyz, r7.w);
    r6.w = dot(r7.xyz, cb3_3.tint_symbol_4[14u].xyz);
    r6.w = clamp(((r6.wwww / cb3_3.tint_symbol_4[22u].wwww)).w, 0.0f, 1.0f);
    r6.w = (r6.w * cb3_3.tint_symbol_4[22u].w);
    let v_105 = fma(cb3_3.tint_symbol_4[14u].xyz, r6.www, cb3_3.tint_symbol_4[6u].xyz);
    r7 = vec4<f32>(v_105.xyz, r7.w);
    let v_106 = (r7.xyz + v_58.xyz);
    r7 = vec4<f32>(v_106.xyz, r7.w);
    let v_107 = bitcast<vec3<u32>>(r5.www);
    let v_108 = r6.xyz;
    let v_109 = select(r7.xyz, v_108, (v_107 != vec3<u32>()));
    r6 = vec4<f32>(v_109.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    let v_110 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_110.xyz, r6.w);
    r6.w = dot(r6.xyz, r6.xyz);
    r6.w = inverseSqrt(r6.w);
    let v_111 = (r6.www * r6.xyz);
    r6 = vec4<f32>(v_111.xyz, r6.w);
    r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.w = ((-(cb3_3.tint_symbol_4[14u].wwww)).w + 1.0f);
    r6.w = fma(r6.w, r5.w, cb3_3.tint_symbol_4[14u].w);
    r5.w = (r5.w / r6.w);
    let v_112 = -(cb3_3.tint_symbol_4[14u].xyzx);
    r6.w = dot(r6.xyz, v_112.xyz);
    r6.w = clamp(fma(r6.wwww, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).w, 0.0f, 1.0f);
    let v_113 = dot(r6.xyz, r2.yzw);
    r6.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
    r6.x = (r6.w * r6.x);
    r5.w = (r5.w * r6.x);
    let v_114 = (r5.www * cb3_3.tint_symbol_4[22u].xyz);
    r6 = vec4<f32>(v_114.xyz, r6.w);
    let v_115 = fma(r6.xyz, r3.xyz, r5.xyz);
    r6 = vec4<f32>(v_115.xyz, r6.w);
    let v_116 = bitcast<vec3<u32>>(r4.www);
    let v_117 = r5.xyz;
    let v_118 = select(r6.xyz, v_117, (v_116 != vec3<u32>()));
    r5 = vec4<f32>(v_118.xyz, r5.w);
  }
  r0.w = fma(r0.w, r2.x, cb3_3.tint_symbol_4[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_4[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_119 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.www, cb3_3.tint_symbol_4[48u].xyz);
  r6 = vec4<f32>(v_119.xyz, r6.w);
  r2.x = ((-(cb2_2.tint_symbol_3[16u].zzzz)).x + 1.0f);
  let v_120 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.www, cb3_3.tint_symbol_4[46u].xyz);
  r7 = vec4<f32>(v_120.xyz, r7.w);
  let v_121 = (r7.xyz * cb2_2.tint_symbol_3[16u].zzz);
  r7 = vec4<f32>(v_121.xyz, r7.w);
  let v_122 = fma(r6.xyz, r2.xxx, r7.xyz);
  r6 = vec4<f32>(v_122.xyz, r6.w);
  let v_123 = (r0.zzz * r6.xyz);
  r6 = vec4<f32>(v_123.xyz, r6.w);
  let v_124 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.www, cb3_3.tint_symbol_4[44u].xyz);
  r7 = vec4<f32>(v_124.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_4[46u].w;
  r8.y = cb3_3.tint_symbol_4[47u].w;
  r8.z = cb3_3.tint_symbol_4[48u].w;
  let v_125 = dot(r8.xyz, r2.yzw);
  r0.z = clamp(vec4<f32>(v_125, v_125, v_125, v_125).z, 0.0f, 1.0f);
  let v_126 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.zzz, r7.xyz);
  r2 = vec4<f32>(v_126.xyz, r2.w);
  let v_127 = fma(r2.xyz, r0.yyy, r6.xyz);
  r0 = vec4<f32>(r0.x, v_127.xyz);
  let v_128 = (r3.xyz * r0.yzw);
  r0 = vec4<f32>(r0.x, v_128.xyz);
  let v_129 = fma(r5.xyz, cb8_8.tint_symbol_7[0u].www, r0.yzw);
  r0 = vec4<f32>(r0.x, v_129.xyz);
  let v_130 = fma(r4.xyz, r3.www, r0.yzw);
  o0 = vec4<f32>(v_130.xyz, o0.w);
  r0.y = (r1.y / r1.w);
  r0.x = trunc(r0.x);
  r0.z = ((-(r0.xxxx)).z + 3.0f);
  r0.y = (r0.y + 1.0f);
  r0.z = (r0.z * 0.25f);
  r0.y = fma(r0.y, 0.125f, r0.z);
  r0.y = fma(r0.y, 2.0f, -1.0f);
  r1.y = (r1.w * r0.y);
  x1[0u].x = dot(r1, cb0_0.tint_symbol_2[0u]);
  o0.w = v1.w;
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1.z = r1.w;
  o1.w = 1.0f;
  o2.x = r0.x;
  o2 = vec4<f32>(o2.x, vec3<f32>());
  o3 = r1;
  let v_131 = &(x1[0u]);
  *(v_131) = vec4<f32>((*(v_131)).x, vec3<f32>());
  o4[0u] = x1[0u].x;
  o4[1u] = x1[0u].y;
  o4[2u] = x1[0u].z;
  o4[3u] = x1[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_11 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @builtin(position)
  o3 : vec4<f32>,
  @builtin(clip_distances)
  o4 : array<f32, 4u>,
  @location(15u)
  tint_symbol_10 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>, @builtin(instance_index) v_132 : u32) -> tint_symbol_11 {
  main_inner(v0, v1, v2, v3, i32(v_132));
  return tint_symbol_11(o0, o1, o2, o3, o4, v);
}
