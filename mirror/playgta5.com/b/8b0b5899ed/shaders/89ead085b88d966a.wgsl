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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb59_struct {
  tint_symbol_3 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb7_struct {
  tint_symbol_5 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

struct cb1_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_1;

@group(0u) @binding(31u) var s15 : sampler_comparison;

@group(0u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_8;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_5[5u].x))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_2 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
    r1 = vec4<f32>(v_2.xyz, r1.w);
    let v_3 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_3.xyz, r1.w);
    let v_4 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
    r1 = vec4<f32>(v_4.xyz, r1.w);
    let v_5 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
    r1 = vec4<f32>(v_5.xyz, r1.w);
    r2.x = (cb9_9.tint_symbol_5[6u].x * cb9_9.tint_symbol_5[6u].x);
    let v_6 = -(cb1_1.tint_symbol[15u].xyxz);
    let v_7 = (r1.xyz + v_6.xyw);
    r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
    r2.w = dot(r1.xyw, r1.xyw);
    r2.w = sqrt(r2.w);
    let v_8 = (r1.xyw / r2.www);
    r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
    r2.w = abs(r1.wwww).w;
    r2.w = (1.0f / r2.w);
    r1.z = ((-(r1.zzzz)).z + cb9_9.tint_symbol_5[6u].y);
    let v_9 = -(cb9_9.tint_symbol_5[6u].yyyy);
    r3.x = (cb1_1.tint_symbol[15u].z + v_9.x);
    let v_10 = abs(r3.xxxx);
    r3.x = (r2.w * v_10.x);
    r1.x = dot((-(cb1_1.tint_symbol[14u].xyzx)).xyz, r1.xyw);
    let v_11 = abs(r1.xxxx);
    r1.y = (r3.x * v_11.y);
    r1.z = fma(abs(r1.zzzz).z, r2.w, r3.x);
    let v_12 = abs(r1.xxxx);
    r1.x = (r1.z * v_12.x);
    r1.z = fma(r1.y, cb9_9.tint_symbol_5[1u].z, cb9_9.tint_symbol_5[1u].w);
    let v_13 = -(r1.yyyy);
    r1.y = (r1.z / v_13.y);
    r1.z = fma(r1.x, cb9_9.tint_symbol_5[1u].z, cb9_9.tint_symbol_5[1u].w);
    let v_14 = -(r1.xxxx);
    r1.x = (r1.z / v_14.x);
    r1.x = ((-(r1.yyyy)).x + r1.x);
    r2.y = abs(r1.xxxx).y;
    r2.z = (abs(r1.yyyy).z * r2.x);
    let v_15 = (r2.xy * r2.yz);
    r1 = vec4<f32>(v_15.xy, r1.zw);
    let v_16 = (r1.xy * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
    r1 = vec4<f32>(v_16.xy, r1.zw);
    let v_17 = exp2(r1.xy);
    o2 = vec4<f32>(v_17.xy, o2.zw);
    o2 = vec4<f32>(o2.xy, vec2<f32>());
  } else {
    let v_18 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r1 = vec4<f32>(v_18.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r2.x = sqrt(r1.w);
    let v_19 = -(cb3_3.tint_symbol_3[50u].xxxx);
    r2.y = (r2.x + v_19.y);
    r2.y = max(r2.y, 0.0f);
    r2.x = (r2.y / r2.x);
    r2.x = (r1.z * r2.x);
    r2.z = (r2.x * cb3_3.tint_symbol_3[52u].z);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
    r2.w = (r2.z * -1.44269502162933349609f);
    r2.w = exp2(r2.w);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r2.z = (r2.w / r2.z);
    let v_20 = bitcast<u32>(r2.x);
    r2.x = select(1.0f, r2.z, (v_20 != 0u));
    r2.z = (r2.y * cb3_3.tint_symbol_3[51u].w);
    r2.x = (r2.x * r2.z);
    r2.x = min(r2.x, 1.0f);
    r2.x = (r2.x * 1.44269502162933349609f);
    r2.x = exp2(r2.x);
    r2.x = min(r2.x, 1.0f);
    r2.x = ((-(r2.xxxx)).x + 1.0f);
    r2.z = (r2.x * cb3_3.tint_symbol_3[52u].y);
    r1.w = inverseSqrt(r1.w);
    let v_21 = (r1.www * r1.xyz);
    r1 = vec4<f32>(v_21.xyz, r1.w);
    let v_22 = dot(r1.xyz, cb3_3.tint_symbol_3[54u].xyz);
    r1.w = clamp(vec4<f32>(v_22, v_22, v_22, v_22).w, 0.0f, 1.0f);
    r1.w = log2(r1.w);
    r1.w = (r1.w * cb3_3.tint_symbol_3[54u].w);
    r1.w = exp2(r1.w);
    let v_23 = dot(r1.xyz, cb3_3.tint_symbol_3[53u].xyz);
    r1.x = clamp(vec4<f32>(v_23, v_23, v_23, v_23).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_3[53u].w);
    r1.x = exp2(r1.x);
    r1.y = fma((-(r2.xxxx)).y, cb3_3.tint_symbol_3[52u].y, 1.0f);
    let v_24 = -(cb3_3.tint_symbol_3[52u].xxxx);
    r1.z = (r2.y + v_24.z);
    r1.z = max(r1.z, 0.0f);
    let v_25 = (r1.yz * cb3_3.tint_symbol_3[51u].yx);
    let v_26 = r1;
    r1 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    o2.w = clamp(fma(r1.yyyy, r1.zzzz, r2.zzzz).w, 0.0f, 1.0f);
    let v_27 = -(cb3_3.tint_symbol_3[51u].zzzz);
    r1.z = (r2.y * v_27.z);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    let v_28 = ((-(cb3_3.tint_symbol_3[56u].xyzx)).xyz + cb3_3.tint_symbol_3[58u].xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_3[56u].xyz);
    r2 = vec4<f32>(v_29.xyz, r2.w);
    let v_30 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_3[55u].xyz);
    r3 = vec4<f32>(v_30.xyz, r3.w);
    let v_31 = fma(r1.xxx, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = -(cb3_3.tint_symbol_3[57u].xyzx);
    let v_33 = (r2.xyz + v_32.xyz);
    r2 = vec4<f32>(v_33.xyz, r2.w);
    let v_34 = fma(r1.zzz, r2.xyz, cb3_3.tint_symbol_3[57u].xyz);
    r1 = vec4<f32>(v_34.x, r1.y, v_34.yz);
    r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_3[55u].w);
    r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_3[56u].w);
    r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_3[57u].w);
    let v_35 = fma(r1.yyy, r2.xyz, r1.xzw);
    o2 = vec4<f32>(v_35.xyz, o2.w);
  }
  r1.x = dot(v3, v3);
  r1.x = inverseSqrt(r1.x);
  let v_36 = (r1.xxx * v3.yzx);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  r1.w = fma(v2.y, 2.0f, -1.0f);
  let v_37 = -(cb1_1.tint_symbol[14u].zxyz);
  let v_38 = (r1.xyz * v_37.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = -(cb1_1.tint_symbol[14u].yzxy);
  let v_40 = -(r2.xyzx);
  let v_41 = fma(v_39.xyz, r1.yzx, v_40.xyz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  r2.x = ((-(abs(r1.wwww))).x + 1.0f);
  let v_42 = (r2.xxx * cb1_1.tint_symbol[14u].xyz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = fma(r1.xyz, r1.www, r2.xyz);
  r1 = vec4<f32>(v_43.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_44 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  r3 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r3.w);
  let v_45 = (cb2_2.tint_symbol_2[15u].zy * cb8_8.tint_symbol_6[0u].xx);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r4 = vec4<f32>(v_46.xyz, r4.w);
  let v_47 = (r4.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = fma(r4.xxx, cb6_6.tint_symbol_4[0u].xyz, r5.xyz);
  r4 = vec4<f32>(v_48.xy, r4.z, v_48.z);
  let v_49 = fma(r4.zzz, cb6_6.tint_symbol_4[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  let v_50 = fma(r4.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_50.xyz, r5.w);
  let v_51 = &(x0[0u]);
  let v_52 = r5;
  *(v_51) = vec4<f32>(v_52.xyz, (*(v_51)).w);
  let v_53 = fma(r4.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = &(x0[1u]);
  let v_55 = r6;
  *(v_54) = vec4<f32>(v_55.xyz, (*(v_54)).w);
  let v_56 = fma(r4.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  let v_57 = &(x0[2u]);
  let v_58 = r7;
  *(v_57) = vec4<f32>(v_58.xyz, (*(v_57)).w);
  let v_59 = fma(r4.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r4 = vec4<f32>(v_59.xyz, r4.w);
  let v_60 = &(x0[3u]);
  let v_61 = r4;
  *(v_60) = vec4<f32>(v_61.xyz, (*(v_60)).w);
  r2.w = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_62 = abs(r7.yyyy);
  r3.w = max(v_62.w, abs(r7.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_63 = (bitcast<u32>(r3.w) != 0u);
  let v_64 = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  r3.w = select(bitcast<f32>(v_1.tint_symbol_7[1i].x), v_64, v_63);
  let v_65 = abs(r6.yyyy);
  r4.x = max(v_65.x, abs(r6.xxxx).x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r4.x < r2.w)));
  let v_66 = bitcast<u32>(r4.x);
  r3.w = select(r3.w, bitcast<f32>(v_1.tint_symbol_7[2i].x), (v_66 != 0u));
  let v_67 = abs(r5.yyyy);
  r4.x = max(v_67.x, abs(r5.xxxx).x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.x < r2.w)));
  let v_68 = bitcast<u32>(r2.w);
  r2.w = select(r3.w, 0.0f, (v_68 != 0u));
  let v_69 = x0[bitcast<i32>(r2.w)];
  r4 = vec4<f32>(v_69.xyz, r4.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r2.w = (r2.w + 0.5f);
  r2.w = (r2.w * 0.25f);
  r4.x = (r4.x + cb6_6.tint_symbol_4[14u].z);
  r2.w = fma(r4.y, 0.25f, r2.w);
  let v_70 = (r4.xz + vec2<f32>(0.5f, 0.0f));
  let v_71 = r4;
  r4 = vec4<f32>(v_70.x, v_71.y, v_70.y, v_71.w);
  r4.y = fma(cb6_6.tint_symbol_4[14u].w, 0.25f, r2.w);
  let v_72 = r4.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_72.xy, r4.z);
  r3.w = clamp(fma(v0.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).w, 0.0f, 1.0f);
  r3.w = sqrt(r3.w);
  r3.w = fma((-(r3.wwww)).w, cb6_6.tint_symbol_4[3u].z, 1.0f);
  r3.w = (r3.w * cb8_8.tint_symbol_6[0u].z);
  let v_73 = -(cb3_3.tint_symbol_3[0u].xyzx);
  let v_74 = dot(r2.xyz, v_73.xyz);
  r4.x = clamp(vec4<f32>(v_74, v_74, v_74, v_74).x, 0.0f, 1.0f);
  let v_75 = (r3.xyz * r4.xxx);
  r4 = vec4<f32>(v_75.xyz, r4.w);
  let v_76 = (r4.xyz * cb3_3.tint_symbol_3[1u].xyz);
  r4 = vec4<f32>(v_76.xyz, r4.w);
  let v_77 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_77.xyz, r4.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
  r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[19u].w == 0.0f)));
  let v_78 = -(v0.xyzx);
  let v_79 = (v_78.xyz + cb3_3.tint_symbol_3[3u].xyz);
  r5 = vec4<f32>(v_79.xyz, r5.w);
  let v_80 = (v0 + (-(cb3_3.tint_symbol_3[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_80.xyz, r6.w);
  r5.w = dot(r6.xyz, cb3_3.tint_symbol_3[11u].xyz);
  r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_3[19u].wwww)).w, 0.0f, 1.0f);
  r5.w = (r5.w * cb3_3.tint_symbol_3[19u].w);
  let v_81 = fma(cb3_3.tint_symbol_3[11u].xyz, r5.www, cb3_3.tint_symbol_3[3u].xyz);
  r6 = vec4<f32>(v_81.xyz, r6.w);
  let v_82 = (r6.xyz + v_78.xyz);
  r6 = vec4<f32>(v_82.xyz, r6.w);
  let v_83 = bitcast<vec3<u32>>(r4.www);
  let v_84 = r5.xyz;
  let v_85 = select(r6.xyz, v_84, (v_83 != vec3<u32>()));
  r5 = vec4<f32>(v_85.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  let v_86 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_86.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_87 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_87.xyz, r5.w);
  r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_3[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.w = ((-(cb3_3.tint_symbol_3[11u].wwww)).w + 1.0f);
  r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_3[11u].w);
  r4.w = (r4.w / r5.w);
  let v_88 = -(cb3_3.tint_symbol_3[11u].xyzx);
  r5.w = dot(r5.xyz, v_88.xyz);
  r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_3[27u].xxxx, cb3_3.tint_symbol_3[35u].xxxx).w, 0.0f, 1.0f);
  let v_89 = dot(r5.xyz, r2.xyz);
  r5.x = clamp(vec4<f32>(v_89, v_89, v_89, v_89).x, 0.0f, 1.0f);
  r5.x = (r5.w * r5.x);
  r4.w = (r4.w * r5.x);
  let v_90 = (r4.www * cb3_3.tint_symbol_3[19u].xyz);
  r5 = vec4<f32>(v_90.xyz, r5.w);
  let v_91 = (r3.xyz * r5.xyz);
  r5 = vec4<f32>(v_91.xyz, r5.w);
  let v_92 = bitcast<vec3<u32>>(r3.www);
  let v_93 = select(r5.xyz, vec3<f32>(), (v_92 != vec3<u32>()));
  r5 = vec4<f32>(v_93.xyz, r5.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[20u].w == 0.0f)));
    let v_94 = (v_78.xyz + cb3_3.tint_symbol_3[4u].xyz);
    r6 = vec4<f32>(v_94.xyz, r6.w);
    let v_95 = (v0 + (-(cb3_3.tint_symbol_3[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_95.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_3[12u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_3[20u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_3[20u].w);
    let v_96 = fma(cb3_3.tint_symbol_3[12u].xyz, r5.www, cb3_3.tint_symbol_3[4u].xyz);
    r7 = vec4<f32>(v_96.xyz, r7.w);
    let v_97 = (r7.xyz + v_78.xyz);
    r7 = vec4<f32>(v_97.xyz, r7.w);
    let v_98 = bitcast<vec3<u32>>(r4.www);
    let v_99 = r6.xyz;
    let v_100 = select(r7.xyz, v_99, (v_98 != vec3<u32>()));
    r6 = vec4<f32>(v_100.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_101 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_101.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_102 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_102.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_3[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_3[12u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_3[12u].w);
    r4.w = (r4.w / r5.w);
    let v_103 = -(cb3_3.tint_symbol_3[12u].xyzx);
    r5.w = dot(r6.xyz, v_103.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_3[28u].xxxx, cb3_3.tint_symbol_3[36u].xxxx).w, 0.0f, 1.0f);
    let v_104 = dot(r6.xyz, r2.xyz);
    r6.x = clamp(vec4<f32>(v_104, v_104, v_104, v_104).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_105 = (r4.www * cb3_3.tint_symbol_3[20u].xyz);
    r6 = vec4<f32>(v_105.xyz, r6.w);
    let v_106 = fma(r6.xyz, r3.xyz, r5.xyz);
    r6 = vec4<f32>(v_106.xyz, r6.w);
    let v_107 = bitcast<vec3<u32>>(r3.www);
    let v_108 = r5.xyz;
    let v_109 = select(r6.xyz, v_108, (v_107 != vec3<u32>()));
    r5 = vec4<f32>(v_109.xyz, r5.w);
  } else {
    r3.w = bitcast<f32>(v_1.tint_symbol_7[3i].x);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(v_1.tint_symbol_7[3i].x);
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[21u].w == 0.0f)));
    let v_110 = (v_78.xyz + cb3_3.tint_symbol_3[5u].xyz);
    r6 = vec4<f32>(v_110.xyz, r6.w);
    let v_111 = (v0 + (-(cb3_3.tint_symbol_3[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_111.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_3[13u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_3[21u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_3[21u].w);
    let v_112 = fma(cb3_3.tint_symbol_3[13u].xyz, r5.www, cb3_3.tint_symbol_3[5u].xyz);
    r7 = vec4<f32>(v_112.xyz, r7.w);
    let v_113 = (r7.xyz + v_78.xyz);
    r7 = vec4<f32>(v_113.xyz, r7.w);
    let v_114 = bitcast<vec3<u32>>(r4.www);
    let v_115 = r6.xyz;
    let v_116 = select(r7.xyz, v_115, (v_114 != vec3<u32>()));
    r6 = vec4<f32>(v_116.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_117 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_117.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_118 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_118.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_3[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_3[13u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_3[13u].w);
    r4.w = (r4.w / r5.w);
    let v_119 = -(cb3_3.tint_symbol_3[13u].xyzx);
    r5.w = dot(r6.xyz, v_119.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_3[29u].xxxx, cb3_3.tint_symbol_3[37u].xxxx).w, 0.0f, 1.0f);
    let v_120 = dot(r6.xyz, r2.xyz);
    r6.x = clamp(vec4<f32>(v_120, v_120, v_120, v_120).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_121 = (r4.www * cb3_3.tint_symbol_3[21u].xyz);
    r6 = vec4<f32>(v_121.xyz, r6.w);
    let v_122 = fma(r6.xyz, r3.xyz, r5.xyz);
    r6 = vec4<f32>(v_122.xyz, r6.w);
    let v_123 = bitcast<vec3<u32>>(r3.www);
    let v_124 = r5.xyz;
    let v_125 = select(r6.xyz, v_124, (v_123 != vec3<u32>()));
    r5 = vec4<f32>(v_125.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.w) != 0u)) {
  } else {
    r4.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.w)));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[22u].w == 0.0f)));
    let v_126 = (v_78.xyz + cb3_3.tint_symbol_3[6u].xyz);
    r6 = vec4<f32>(v_126.xyz, r6.w);
    let v_127 = (v0 + (-(cb3_3.tint_symbol_3[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_127.xyz, r7.w);
    r5.w = dot(r7.xyz, cb3_3.tint_symbol_3[14u].xyz);
    r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_3[22u].wwww)).w, 0.0f, 1.0f);
    r5.w = (r5.w * cb3_3.tint_symbol_3[22u].w);
    let v_128 = fma(cb3_3.tint_symbol_3[14u].xyz, r5.www, cb3_3.tint_symbol_3[6u].xyz);
    r7 = vec4<f32>(v_128.xyz, r7.w);
    let v_129 = (r7.xyz + v_78.xyz);
    r7 = vec4<f32>(v_129.xyz, r7.w);
    let v_130 = bitcast<vec3<u32>>(r4.www);
    let v_131 = r6.xyz;
    let v_132 = select(r7.xyz, v_131, (v_130 != vec3<u32>()));
    r6 = vec4<f32>(v_132.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    let v_133 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_133.xyz, r6.w);
    r5.w = dot(r6.xyz, r6.xyz);
    r5.w = inverseSqrt(r5.w);
    let v_134 = (r5.www * r6.xyz);
    r6 = vec4<f32>(v_134.xyz, r6.w);
    r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_3[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.w = ((-(cb3_3.tint_symbol_3[14u].wwww)).w + 1.0f);
    r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_3[14u].w);
    r4.w = (r4.w / r5.w);
    let v_135 = -(cb3_3.tint_symbol_3[14u].xyzx);
    r5.w = dot(r6.xyz, v_135.xyz);
    r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_3[30u].xxxx, cb3_3.tint_symbol_3[38u].xxxx).w, 0.0f, 1.0f);
    let v_136 = dot(r6.xyz, r2.xyz);
    r6.x = clamp(vec4<f32>(v_136, v_136, v_136, v_136).x, 0.0f, 1.0f);
    r5.w = (r5.w * r6.x);
    r4.w = (r4.w * r5.w);
    let v_137 = (r4.www * cb3_3.tint_symbol_3[22u].xyz);
    r6 = vec4<f32>(v_137.xyz, r6.w);
    let v_138 = fma(r6.xyz, r3.xyz, r5.xyz);
    r6 = vec4<f32>(v_138.xyz, r6.w);
    let v_139 = bitcast<vec3<u32>>(r3.www);
    let v_140 = r5.xyz;
    let v_141 = select(r6.xyz, v_140, (v_139 != vec3<u32>()));
    r5 = vec4<f32>(v_141.xyz, r5.w);
  }
  r1.z = fma(r1.z, r1.w, cb3_3.tint_symbol_3[43u].w);
  r1.z = (r1.z * cb3_3.tint_symbol_3[44u].w);
  r1.z = max(r1.z, 0.0f);
  let v_142 = fma(cb3_3.tint_symbol_3[47u].xyz, r1.zzz, cb3_3.tint_symbol_3[48u].xyz);
  r6 = vec4<f32>(v_142.xyz, r6.w);
  r1.w = ((-(cb2_2.tint_symbol_2[16u].zzzz)).w + 1.0f);
  let v_143 = fma(cb3_3.tint_symbol_3[45u].xyz, r1.zzz, cb3_3.tint_symbol_3[46u].xyz);
  r7 = vec4<f32>(v_143.xyz, r7.w);
  let v_144 = (r7.xyz * cb2_2.tint_symbol_2[16u].zzz);
  r7 = vec4<f32>(v_144.xyz, r7.w);
  let v_145 = fma(r6.xyz, r1.www, r7.xyz);
  r6 = vec4<f32>(v_145.xyz, r6.w);
  let v_146 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_146.xyz, r6.w);
  let v_147 = fma(cb3_3.tint_symbol_3[43u].xyz, r1.zzz, cb3_3.tint_symbol_3[44u].xyz);
  r1 = vec4<f32>(r1.x, v_147.xyz);
  r7.x = cb3_3.tint_symbol_3[46u].w;
  r7.y = cb3_3.tint_symbol_3[47u].w;
  r7.z = cb3_3.tint_symbol_3[48u].w;
  let v_148 = dot(r7.xyz, r2.xyz);
  r2.x = clamp(vec4<f32>(v_148, v_148, v_148, v_148).x, 0.0f, 1.0f);
  let v_149 = fma(cb3_3.tint_symbol_3[49u].xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_149.xyz);
  let v_150 = fma(r1.yzw, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_150.xyz, r1.w);
  let v_151 = (r3.xyz * r1.xyz);
  r1 = vec4<f32>(v_151.xyz, r1.w);
  let v_152 = fma(r5.xyz, cb8_8.tint_symbol_6[0u].www, r1.xyz);
  r1 = vec4<f32>(v_152.xyz, r1.w);
  let v_153 = fma(r4.xyz, r2.www, r1.xyz);
  o0 = vec4<f32>(v_153.xyz, o0.w);
  x1[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o0.w = v1.w;
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1.z = r0.w;
  o1.w = 1.0f;
  o3 = r0;
  let v_154 = &(x1[0u]);
  *(v_154) = vec4<f32>((*(v_154)).x, vec3<f32>());
  o4[0u] = x1[0u].x;
  o4[1u] = x1[0u].y;
  o4[2u] = x1[0u].z;
  o4[3u] = x1[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_10 {
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
  tint_symbol_9 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_10 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_10(o0, o1, o2, o3, o4, v);
}
