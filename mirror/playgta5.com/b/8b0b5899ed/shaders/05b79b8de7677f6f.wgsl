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

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
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

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_7;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_2 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = sqrt(r1.w);
  let v_3 = -(cb3_3.tint_symbol_3[50u].xxxx);
  r2.y = (r2.x + v_3.y);
  r2.y = max(r2.y, 0.0f);
  r2.x = (r2.y / r2.x);
  r2.x = (r1.z * r2.x);
  r2.z = (r2.x * cb3_3.tint_symbol_3[52u].z);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r2.xxxx).x)));
  r2.w = (r2.z * -1.44269502162933349609f);
  r2.w = exp2(r2.w);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.z = (r2.w / r2.z);
  let v_4 = bitcast<u32>(r2.x);
  r2.x = select(1.0f, r2.z, (v_4 != 0u));
  r2.z = (r2.y * cb3_3.tint_symbol_3[51u].w);
  r2.x = (r2.x * r2.z);
  r2.x = min(r2.x, 1.0f);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = min(r2.x, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.z = (r2.x * cb3_3.tint_symbol_3[52u].y);
  r1.w = inverseSqrt(r1.w);
  let v_5 = (r1.www * r1.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = dot(r3.xyz, cb3_3.tint_symbol_3[54u].xyz);
  r1.w = clamp(vec4<f32>(v_6, v_6, v_6, v_6).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_3[54u].w);
  r1.w = exp2(r1.w);
  let v_7 = dot(r3.xyz, cb3_3.tint_symbol_3[53u].xyz);
  r2.w = clamp(vec4<f32>(v_7, v_7, v_7, v_7).w, 0.0f, 1.0f);
  r2.w = log2(r2.w);
  r2.w = (r2.w * cb3_3.tint_symbol_3[53u].w);
  r2.w = exp2(r2.w);
  r2.x = fma((-(r2.xxxx)).x, cb3_3.tint_symbol_3[52u].y, 1.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_3[51u].y);
  let v_8 = -(cb3_3.tint_symbol_3[52u].xxxx);
  r3.x = (r2.y + v_8.x);
  r3.x = max(r3.x, 0.0f);
  r3.x = (r3.x * cb3_3.tint_symbol_3[51u].x);
  r3.x = (r3.x * 1.44269502162933349609f);
  r3.x = exp2(r3.x);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  o2.w = clamp(fma(r2.xxxx, r3.xxxx, r2.zzzz).w, 0.0f, 1.0f);
  let v_9 = -(cb3_3.tint_symbol_3[51u].zzzz);
  r2.y = (r2.y * v_9.y);
  r2.y = (r2.y * 1.44269502162933349609f);
  r2.y = exp2(r2.y);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  let v_10 = ((-(cb3_3.tint_symbol_3[56u].xyzx)).xyz + cb3_3.tint_symbol_3[58u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r1.www, r3.xyz, cb3_3.tint_symbol_3[56u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_3[55u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r2.www, r4.xyz, r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = -(cb3_3.tint_symbol_3[57u].xyzx);
  let v_15 = (r3.xyz + v_14.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.yyy, r3.xyz, cb3_3.tint_symbol_3[57u].xyz);
  r2 = vec4<f32>(r2.x, v_16.xyz);
  r3.x = ((-(r2.yyyy)).x + cb3_3.tint_symbol_3[55u].w);
  r3.y = ((-(r2.zzzz)).y + cb3_3.tint_symbol_3[56u].w);
  r3.z = ((-(r2.wwww)).z + cb3_3.tint_symbol_3[57u].w);
  let v_17 = fma(r2.xxx, r3.xyz, r2.yzw);
  o2 = vec4<f32>(v_17.xyz, o2.w);
  r1.w = dot(v3, v3);
  r1.w = inverseSqrt(r1.w);
  let v_18 = (r1.www * v3.yzx);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r1.w = fma(v2.y, 2.0f, -1.0f);
  let v_19 = -(cb1_1.tint_symbol[14u].zxyz);
  let v_20 = (r2.xyz * v_19.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = -(cb1_1.tint_symbol[14u].yzxy);
  let v_22 = -(r3.xyzx);
  let v_23 = fma(v_21.xyz, r2.yzx, v_22.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r2.w = ((-(abs(r1.wwww))).w + 1.0f);
  let v_24 = (r2.www * cb1_1.tint_symbol[14u].xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  let v_25 = fma(r2.xyz, r1.www, r3.xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_26 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_26.xy, r2.z, v_26.z);
  r3 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r3.w);
  let v_27 = (cb2_2.tint_symbol_2[15u].zy * cb8_8.tint_symbol_5[0u].xx);
  r4 = vec4<f32>(v_27.xy, r4.zw);
  let v_28 = (r1.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = fma(r1.xxx, cb6_6.tint_symbol_4[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = fma(r1.zzz, cb6_6.tint_symbol_4[2u].xyz, r5.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = fma(r1.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = &(x0[0u]);
  let v_33 = r5;
  *(v_32) = vec4<f32>(v_33.xyz, (*(v_32)).w);
  let v_34 = fma(r1.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  let v_35 = &(x0[1u]);
  let v_36 = r6;
  *(v_35) = vec4<f32>(v_36.xyz, (*(v_35)).w);
  let v_37 = fma(r1.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = &(x0[2u]);
  let v_39 = r7;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = fma(r1.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = &(x0[3u]);
  let v_42 = r1;
  *(v_41) = vec4<f32>(v_42.xyz, (*(v_41)).w);
  r1.x = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).x, 1.5f, 1.0f);
  r1.x = (r1.x * 0.5f);
  let v_43 = abs(r7.yyyy);
  r1.y = max(v_43.y, abs(r7.xxxx).y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_44 = (bitcast<u32>(r1.y) != 0u);
  let v_45 = bitcast<f32>(v_1.tint_symbol_6[0i].x);
  r1.y = select(bitcast<f32>(v_1.tint_symbol_6[1i].x), v_45, v_44);
  let v_46 = abs(r6.yyyy);
  r1.z = max(v_46.z, abs(r6.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r1.x)));
  let v_47 = bitcast<u32>(r1.z);
  r1.y = select(r1.y, bitcast<f32>(v_1.tint_symbol_6[2i].x), (v_47 != 0u));
  let v_48 = abs(r5.yyyy);
  r1.z = max(v_48.z, abs(r5.xxxx).z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r1.x)));
  let v_49 = bitcast<u32>(r1.x);
  r1.x = select(r1.y, 0.0f, (v_49 != 0u));
  let v_50 = x0[bitcast<i32>(r1.x)];
  r5 = vec4<f32>(v_50.xyz, r5.w);
  r1.x = f32(bitcast<i32>(r1.x));
  r1.x = (r1.x + 0.5f);
  r1.x = (r1.x * 0.25f);
  r5.x = (r5.x + cb6_6.tint_symbol_4[14u].z);
  r1.x = fma(r5.y, 0.25f, r1.x);
  let v_51 = (r5.xz + vec2<f32>(0.5f, 0.0f));
  let v_52 = r5;
  r5 = vec4<f32>(v_51.x, v_52.y, v_51.y, v_52.w);
  r5.y = fma(cb6_6.tint_symbol_4[14u].w, 0.25f, r1.x);
  let v_53 = r5.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_53.xy, r5.z);
  r1.y = clamp(fma(v0.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).y, 0.0f, 1.0f);
  r1.y = sqrt(r1.y);
  r1.y = fma((-(r1.yyyy)).y, cb6_6.tint_symbol_4[3u].z, 1.0f);
  r1.y = (r1.y * cb8_8.tint_symbol_5[0u].z);
  let v_54 = -(cb3_3.tint_symbol_3[0u].xyzx);
  let v_55 = dot(r2.xyw, v_54.xyz);
  r1.z = clamp(vec4<f32>(v_55, v_55, v_55, v_55).z, 0.0f, 1.0f);
  let v_56 = (r1.zzz * r3.xyz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  let v_57 = (r5.xyz * cb3_3.tint_symbol_3[1u].xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_58.xyz, r5.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[19u].w == 0.0f)));
  let v_59 = -(v0.xyzx);
  let v_60 = (v_59.xyz + cb3_3.tint_symbol_3[3u].xyz);
  r6 = vec4<f32>(v_60.xyz, r6.w);
  let v_61 = (v0 + (-(cb3_3.tint_symbol_3[3u].xyzx)).xyz);
  r7 = vec4<f32>(v_61.xyz, r7.w);
  r3.w = dot(r7.xyz, cb3_3.tint_symbol_3[11u].xyz);
  r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_3[19u].wwww)).w, 0.0f, 1.0f);
  r3.w = (r3.w * cb3_3.tint_symbol_3[19u].w);
  let v_62 = fma(cb3_3.tint_symbol_3[11u].xyz, r3.www, cb3_3.tint_symbol_3[3u].xyz);
  r7 = vec4<f32>(v_62.xyz, r7.w);
  let v_63 = (r7.xyz + v_59.xyz);
  r7 = vec4<f32>(v_63.xyz, r7.w);
  let v_64 = bitcast<vec3<u32>>(r1.zzz);
  let v_65 = r6.xyz;
  let v_66 = select(r7.xyz, v_65, (v_64 != vec3<u32>()));
  r6 = vec4<f32>(v_66.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  let v_67 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
  r6 = vec4<f32>(v_67.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_68 = (r3.www * r6.xyz);
  r6 = vec4<f32>(v_68.xyz, r6.w);
  r1.z = clamp(fma(-(r1.zzzz), cb3_3.tint_symbol_3[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r3.w = ((-(cb3_3.tint_symbol_3[11u].wwww)).w + 1.0f);
  r3.w = fma(r3.w, r1.z, cb3_3.tint_symbol_3[11u].w);
  r1.z = (r1.z / r3.w);
  let v_69 = -(cb3_3.tint_symbol_3[11u].xyzx);
  r3.w = dot(r6.xyz, v_69.xyz);
  r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_3[27u].xxxx, cb3_3.tint_symbol_3[35u].xxxx).w, 0.0f, 1.0f);
  let v_70 = dot(r6.xyz, r2.xyw);
  r4.z = clamp(vec4<f32>(v_70, v_70, v_70, v_70).z, 0.0f, 1.0f);
  r3.w = (r3.w * r4.z);
  r1.z = (r1.z * r3.w);
  let v_71 = (r1.zzz * cb3_3.tint_symbol_3[19u].xyz);
  r6 = vec4<f32>(v_71.xyz, r6.w);
  let v_72 = (r3.xyz * r6.xyz);
  r6 = vec4<f32>(v_72.xyz, r6.w);
  let v_73 = bitcast<vec3<u32>>(r1.yyy);
  let v_74 = select(r6.xyz, vec3<f32>(), (v_73 != vec3<u32>()));
  r6 = vec4<f32>(v_74.xyz, r6.w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[20u].w == 0.0f)));
    let v_75 = (v_59.xyz + cb3_3.tint_symbol_3[4u].xyz);
    r7 = vec4<f32>(v_75.xyz, r7.w);
    let v_76 = (v0 + (-(cb3_3.tint_symbol_3[4u].xyzx)).xyz);
    r8 = vec4<f32>(v_76.xyz, r8.w);
    r3.w = dot(r8.xyz, cb3_3.tint_symbol_3[12u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_3[20u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_3[20u].w);
    let v_77 = fma(cb3_3.tint_symbol_3[12u].xyz, r3.www, cb3_3.tint_symbol_3[4u].xyz);
    r8 = vec4<f32>(v_77.xyz, r8.w);
    let v_78 = (r8.xyz + v_59.xyz);
    r8 = vec4<f32>(v_78.xyz, r8.w);
    let v_79 = bitcast<vec3<u32>>(r1.zzz);
    let v_80 = r7.xyz;
    let v_81 = select(r8.xyz, v_80, (v_79 != vec3<u32>()));
    r7 = vec4<f32>(v_81.xyz, r7.w);
    r1.z = dot(r7.xyz, r7.xyz);
    let v_82 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_82.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_83 = (r3.www * r7.xyz);
    r7 = vec4<f32>(v_83.xyz, r7.w);
    r1.z = clamp(fma(-(r1.zzzz), cb3_3.tint_symbol_3[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_3[12u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r1.z, cb3_3.tint_symbol_3[12u].w);
    r1.z = (r1.z / r3.w);
    let v_84 = -(cb3_3.tint_symbol_3[12u].xyzx);
    r3.w = dot(r7.xyz, v_84.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_3[28u].xxxx, cb3_3.tint_symbol_3[36u].xxxx).w, 0.0f, 1.0f);
    let v_85 = dot(r7.xyz, r2.xyw);
    r4.z = clamp(vec4<f32>(v_85, v_85, v_85, v_85).z, 0.0f, 1.0f);
    r3.w = (r3.w * r4.z);
    r1.z = (r1.z * r3.w);
    let v_86 = (r1.zzz * cb3_3.tint_symbol_3[20u].xyz);
    r7 = vec4<f32>(v_86.xyz, r7.w);
    let v_87 = fma(r7.xyz, r3.xyz, r6.xyz);
    r7 = vec4<f32>(v_87.xyz, r7.w);
    let v_88 = bitcast<vec3<u32>>(r1.yyy);
    let v_89 = r6.xyz;
    let v_90 = select(r7.xyz, v_89, (v_88 != vec3<u32>()));
    r6 = vec4<f32>(v_90.xyz, r6.w);
  } else {
    r1.y = bitcast<f32>(v_1.tint_symbol_6[3i].x);
  }
  if ((bitcast<u32>(r1.y) != 0u)) {
    r1.y = bitcast<f32>(v_1.tint_symbol_6[3i].x);
  } else {
    r1.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[21u].w == 0.0f)));
    let v_91 = (v_59.xyz + cb3_3.tint_symbol_3[5u].xyz);
    r7 = vec4<f32>(v_91.xyz, r7.w);
    let v_92 = (v0 + (-(cb3_3.tint_symbol_3[5u].xyzx)).xyz);
    r8 = vec4<f32>(v_92.xyz, r8.w);
    r3.w = dot(r8.xyz, cb3_3.tint_symbol_3[13u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_3[21u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_3[21u].w);
    let v_93 = fma(cb3_3.tint_symbol_3[13u].xyz, r3.www, cb3_3.tint_symbol_3[5u].xyz);
    r8 = vec4<f32>(v_93.xyz, r8.w);
    let v_94 = (r8.xyz + v_59.xyz);
    r8 = vec4<f32>(v_94.xyz, r8.w);
    let v_95 = bitcast<vec3<u32>>(r1.zzz);
    let v_96 = r7.xyz;
    let v_97 = select(r8.xyz, v_96, (v_95 != vec3<u32>()));
    r7 = vec4<f32>(v_97.xyz, r7.w);
    r1.z = dot(r7.xyz, r7.xyz);
    let v_98 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_98.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_99 = (r3.www * r7.xyz);
    r7 = vec4<f32>(v_99.xyz, r7.w);
    r1.z = clamp(fma(-(r1.zzzz), cb3_3.tint_symbol_3[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_3[13u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r1.z, cb3_3.tint_symbol_3[13u].w);
    r1.z = (r1.z / r3.w);
    let v_100 = -(cb3_3.tint_symbol_3[13u].xyzx);
    r3.w = dot(r7.xyz, v_100.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_3[29u].xxxx, cb3_3.tint_symbol_3[37u].xxxx).w, 0.0f, 1.0f);
    let v_101 = dot(r7.xyz, r2.xyw);
    r4.z = clamp(vec4<f32>(v_101, v_101, v_101, v_101).z, 0.0f, 1.0f);
    r3.w = (r3.w * r4.z);
    r1.z = (r1.z * r3.w);
    let v_102 = (r1.zzz * cb3_3.tint_symbol_3[21u].xyz);
    r7 = vec4<f32>(v_102.xyz, r7.w);
    let v_103 = fma(r7.xyz, r3.xyz, r6.xyz);
    r7 = vec4<f32>(v_103.xyz, r7.w);
    let v_104 = bitcast<vec3<u32>>(r1.yyy);
    let v_105 = r6.xyz;
    let v_106 = select(r7.xyz, v_105, (v_104 != vec3<u32>()));
    r6 = vec4<f32>(v_106.xyz, r6.w);
  }
  if ((bitcast<u32>(r1.y) != 0u)) {
  } else {
    r1.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[22u].w == 0.0f)));
    let v_107 = (v_59.xyz + cb3_3.tint_symbol_3[6u].xyz);
    r7 = vec4<f32>(v_107.xyz, r7.w);
    let v_108 = (v0 + (-(cb3_3.tint_symbol_3[6u].xyzx)).xyz);
    r8 = vec4<f32>(v_108.xyz, r8.w);
    r3.w = dot(r8.xyz, cb3_3.tint_symbol_3[14u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_3[22u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_3[22u].w);
    let v_109 = fma(cb3_3.tint_symbol_3[14u].xyz, r3.www, cb3_3.tint_symbol_3[6u].xyz);
    r8 = vec4<f32>(v_109.xyz, r8.w);
    let v_110 = (r8.xyz + v_59.xyz);
    r8 = vec4<f32>(v_110.xyz, r8.w);
    let v_111 = bitcast<vec3<u32>>(r1.zzz);
    let v_112 = r7.xyz;
    let v_113 = select(r8.xyz, v_112, (v_111 != vec3<u32>()));
    r7 = vec4<f32>(v_113.xyz, r7.w);
    r1.z = dot(r7.xyz, r7.xyz);
    let v_114 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_114.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_115 = (r3.www * r7.xyz);
    r7 = vec4<f32>(v_115.xyz, r7.w);
    r1.z = clamp(fma(-(r1.zzzz), cb3_3.tint_symbol_3[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_3[14u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r1.z, cb3_3.tint_symbol_3[14u].w);
    r1.z = (r1.z / r3.w);
    let v_116 = -(cb3_3.tint_symbol_3[14u].xyzx);
    r3.w = dot(r7.xyz, v_116.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_3[30u].xxxx, cb3_3.tint_symbol_3[38u].xxxx).w, 0.0f, 1.0f);
    let v_117 = dot(r7.xyz, r2.xyw);
    r4.z = clamp(vec4<f32>(v_117, v_117, v_117, v_117).z, 0.0f, 1.0f);
    r3.w = (r3.w * r4.z);
    r1.z = (r1.z * r3.w);
    let v_118 = (r1.zzz * cb3_3.tint_symbol_3[22u].xyz);
    r7 = vec4<f32>(v_118.xyz, r7.w);
    let v_119 = fma(r7.xyz, r3.xyz, r6.xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = bitcast<vec3<u32>>(r1.yyy);
    let v_121 = r6.xyz;
    let v_122 = select(r7.xyz, v_121, (v_120 != vec3<u32>()));
    r6 = vec4<f32>(v_122.xyz, r6.w);
  }
  r1.y = fma(r2.z, r1.w, cb3_3.tint_symbol_3[43u].w);
  r1.y = (r1.y * cb3_3.tint_symbol_3[44u].w);
  r1.y = max(r1.y, 0.0f);
  let v_123 = fma(cb3_3.tint_symbol_3[47u].xyz, r1.yyy, cb3_3.tint_symbol_3[48u].xyz);
  r7 = vec4<f32>(v_123.xyz, r7.w);
  r1.z = ((-(cb2_2.tint_symbol_2[16u].zzzz)).z + 1.0f);
  let v_124 = fma(cb3_3.tint_symbol_3[45u].xyz, r1.yyy, cb3_3.tint_symbol_3[46u].xyz);
  r8 = vec4<f32>(v_124.xyz, r8.w);
  let v_125 = (r8.xyz * cb2_2.tint_symbol_2[16u].zzz);
  r8 = vec4<f32>(v_125.xyz, r8.w);
  let v_126 = fma(r7.xyz, r1.zzz, r8.xyz);
  r7 = vec4<f32>(v_126.xyz, r7.w);
  let v_127 = (r4.yyy * r7.xyz);
  r4 = vec4<f32>(r4.x, v_127.xyz);
  let v_128 = fma(cb3_3.tint_symbol_3[43u].xyz, r1.yyy, cb3_3.tint_symbol_3[44u].xyz);
  r1 = vec4<f32>(r1.x, v_128.xyz);
  r7.x = cb3_3.tint_symbol_3[46u].w;
  r7.y = cb3_3.tint_symbol_3[47u].w;
  r7.z = cb3_3.tint_symbol_3[48u].w;
  let v_129 = dot(r7.xyz, r2.xyw);
  r2.x = clamp(vec4<f32>(v_129, v_129, v_129, v_129).x, 0.0f, 1.0f);
  let v_130 = fma(cb3_3.tint_symbol_3[49u].xyz, r2.xxx, r1.yzw);
  r1 = vec4<f32>(r1.x, v_130.xyz);
  let v_131 = fma(r1.yzw, r4.xxx, r4.yzw);
  r1 = vec4<f32>(r1.x, v_131.xyz);
  let v_132 = (r3.xyz * r1.yzw);
  r1 = vec4<f32>(r1.x, v_132.xyz);
  let v_133 = fma(r6.xyz, cb8_8.tint_symbol_5[0u].www, r1.yzw);
  r1 = vec4<f32>(r1.x, v_133.xyz);
  let v_134 = fma(r5.xyz, r1.xxx, r1.yzw);
  o0 = vec4<f32>(v_134.xyz, o0.w);
  x1[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o0.w = v1.w;
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1.z = r0.w;
  o1.w = 0.0f;
  o3 = r0;
  let v_135 = &(x1[0u]);
  *(v_135) = vec4<f32>((*(v_135)).x, vec3<f32>());
  o4[0u] = x1[0u].x;
  o4[1u] = x1[0u].y;
  o4[2u] = x1[0u].z;
  o4[3u] = x1[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_9 {
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
  tint_symbol_8 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_9(o0, o1, o2, o3, o4, v);
}
