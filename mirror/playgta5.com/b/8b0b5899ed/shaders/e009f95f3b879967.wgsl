diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb4_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

struct cb4_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb4_struct_1;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v11 = v_2;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v_3 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v_4 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1 = (-(r0) + r1);
  r0 = fma(v3.xy.xxxx, r1, r0);
  r1.x = dot(v9.xyz, v9.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_5 = (r1.xxx * v9.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = dot(v10, v10);
  r1.w = inverseSqrt(r1.w);
  let v_6 = (r1.www * v10.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = (r1.yzx * r2.zxy);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = -(r3.xyzx);
  let v_9 = fma(r2.yzx, r1.zxy, v_8.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_10 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r4 = textureSample(t7, s7, v2.xyxx.xy);
  let v_11 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_11.xy, r4.zw);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  let v_12 = (r3.xyz * r4.yyy);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(r4.xxx, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r0 = (r0 * v0);
  let v_15 = (cb2_2.tint_symbol_1[15u].zy * cb8_8.tint_symbol_5[2u].zz);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r2.y = clamp(fma(v8.zzzz, cb6_6.tint_symbol_3[3u].xxxx, cb6_6.tint_symbol_3[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = fma((-(r2.yyyy)).y, cb6_6.tint_symbol_3[3u].z, 1.0f);
  r2.y = (r2.y * cb8_8.tint_symbol_5[2u].y);
  let v_16 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_17 = dot(r1.xyz, v_16.xyz);
  r2.z = clamp(vec4<f32>(v_17, v_17, v_17, v_17).z, 0.0f, 1.0f);
  r2.z = (r2.z + cb13_13.tint_symbol[0u].x);
  r2.w = (cb13_13.tint_symbol[0u].x + 1.0f);
  r2.w = (r2.w * r2.w);
  r2.z = clamp(((r2.zzzz / r2.wwww)).z, 0.0f, 1.0f);
  let v_18 = (r0.xyz * r2.zzz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = (r3.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = (r2.yyy * r3.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_21 = -(v8.xyzx);
  let v_22 = (v_21.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = (v8.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  r3.w = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r3.w = (r3.w * cb3_3.tint_symbol_2[19u].w);
  let v_24 = fma(cb3_3.tint_symbol_2[11u].xyz, r3.www, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r5.xyz + v_21.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = bitcast<vec3<u32>>(r2.zzz);
  let v_27 = r4.xyz;
  let v_28 = select(r5.xyz, v_27, (v_26 != vec3<u32>()));
  r4 = vec4<f32>(v_28.xyz, r4.w);
  r2.z = dot(r4.xyz, r4.xyz);
  let v_29 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_29.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_30 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r3.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[11u].w);
  r2.z = (r2.z / r3.w);
  let v_31 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r3.w = dot(r4.xyz, v_31.xyz);
  r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_32 = dot(r4.xyz, r1.xyz);
  r4.x = clamp(vec4<f32>(v_32, v_32, v_32, v_32).x, 0.0f, 1.0f);
  r4.x = (r4.x + cb13_13.tint_symbol[0u].x);
  r4.x = clamp(((r4.xxxx / r2.wwww)).x, 0.0f, 1.0f);
  r3.w = (r3.w * r4.x);
  r2.z = (r2.z * r3.w);
  let v_33 = (r2.zzz * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = bitcast<vec3<u32>>(r2.yyy);
  let v_36 = select(r4.xyz, vec3<f32>(), (v_35 != vec3<u32>()));
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.z) != 0u)) {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.z)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_37 = (v_21.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_37.xyz, r5.w);
    let v_38 = (v8.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_38.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[20u].w);
    let v_39 = fma(cb3_3.tint_symbol_2[12u].xyz, r3.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_39.xyz, r6.w);
    let v_40 = (r6.xyz + v_21.xyz);
    r6 = vec4<f32>(v_40.xyz, r6.w);
    let v_41 = bitcast<vec3<u32>>(r2.zzz);
    let v_42 = r5.xyz;
    let v_43 = select(r6.xyz, v_42, (v_41 != vec3<u32>()));
    r5 = vec4<f32>(v_43.xyz, r5.w);
    r2.z = dot(r5.xyz, r5.xyz);
    let v_44 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_44.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_45 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_45.xyz, r5.w);
    r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[12u].w);
    r2.z = (r2.z / r3.w);
    let v_46 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r3.w = dot(r5.xyz, v_46.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_47 = dot(r5.xyz, r1.xyz);
    r4.w = clamp(vec4<f32>(v_47, v_47, v_47, v_47).w, 0.0f, 1.0f);
    r4.w = (r4.w + cb13_13.tint_symbol[0u].x);
    r4.w = clamp(((r4.wwww / r2.wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.z = (r2.z * r3.w);
    let v_48 = (r2.zzz * cb3_3.tint_symbol_2[20u].xyz);
    r5 = vec4<f32>(v_48.xyz, r5.w);
    let v_49 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_49.xyz, r5.w);
    let v_50 = bitcast<vec3<u32>>(r2.yyy);
    let v_51 = r4.xyz;
    let v_52 = select(r5.xyz, v_51, (v_50 != vec3<u32>()));
    r4 = vec4<f32>(v_52.xyz, r4.w);
  } else {
    r2.y = bitcast<f32>(v.tint_symbol_6[0i].x);
  }
  if ((bitcast<u32>(r2.y) != 0u)) {
    r2.y = bitcast<f32>(v.tint_symbol_6[0i].x);
  } else {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.z)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_53 = (v_21.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_53.xyz, r5.w);
    let v_54 = (v8.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_54.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[21u].w);
    let v_55 = fma(cb3_3.tint_symbol_2[13u].xyz, r3.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_55.xyz, r6.w);
    let v_56 = (r6.xyz + v_21.xyz);
    r6 = vec4<f32>(v_56.xyz, r6.w);
    let v_57 = bitcast<vec3<u32>>(r2.zzz);
    let v_58 = r5.xyz;
    let v_59 = select(r6.xyz, v_58, (v_57 != vec3<u32>()));
    r5 = vec4<f32>(v_59.xyz, r5.w);
    r2.z = dot(r5.xyz, r5.xyz);
    let v_60 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_60.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_61 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_61.xyz, r5.w);
    r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[13u].w);
    r2.z = (r2.z / r3.w);
    let v_62 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r3.w = dot(r5.xyz, v_62.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_63 = dot(r5.xyz, r1.xyz);
    r4.w = clamp(vec4<f32>(v_63, v_63, v_63, v_63).w, 0.0f, 1.0f);
    r4.w = (r4.w + cb13_13.tint_symbol[0u].x);
    r4.w = clamp(((r4.wwww / r2.wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.z = (r2.z * r3.w);
    let v_64 = (r2.zzz * cb3_3.tint_symbol_2[21u].xyz);
    r5 = vec4<f32>(v_64.xyz, r5.w);
    let v_65 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_65.xyz, r5.w);
    let v_66 = bitcast<vec3<u32>>(r2.yyy);
    let v_67 = r4.xyz;
    let v_68 = select(r5.xyz, v_67, (v_66 != vec3<u32>()));
    r4 = vec4<f32>(v_68.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.y) != 0u)) {
  } else {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.z)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_69 = (v_21.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_69.xyz, r5.w);
    let v_70 = (v8.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_70.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[22u].w);
    let v_71 = fma(cb3_3.tint_symbol_2[14u].xyz, r3.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_71.xyz, r6.w);
    let v_72 = (r6.xyz + v_21.xyz);
    r6 = vec4<f32>(v_72.xyz, r6.w);
    let v_73 = bitcast<vec3<u32>>(r2.zzz);
    let v_74 = r5.xyz;
    let v_75 = select(r6.xyz, v_74, (v_73 != vec3<u32>()));
    r5 = vec4<f32>(v_75.xyz, r5.w);
    r2.z = dot(r5.xyz, r5.xyz);
    let v_76 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_76.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_77 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_77.xyz, r5.w);
    r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[14u].w);
    r2.z = (r2.z / r3.w);
    let v_78 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r3.w = dot(r5.xyz, v_78.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_79 = dot(r5.xyz, r1.xyz);
    r4.w = clamp(vec4<f32>(v_79, v_79, v_79, v_79).w, 0.0f, 1.0f);
    r4.w = (r4.w + cb13_13.tint_symbol[0u].x);
    r2.w = clamp(((r4.wwww / r2.wwww)).w, 0.0f, 1.0f);
    r2.w = (r3.w * r2.w);
    r2.z = (r2.z * r2.w);
    let v_80 = (r2.zzz * cb3_3.tint_symbol_2[22u].xyz);
    r5 = vec4<f32>(v_80.xyz, r5.w);
    let v_81 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_81.xyz, r5.w);
    let v_82 = bitcast<vec3<u32>>(r2.yyy);
    let v_83 = r4.xyz;
    let v_84 = select(r5.xyz, v_83, (v_82 != vec3<u32>()));
    r4 = vec4<f32>(v_84.xyz, r4.w);
  }
  r2.y = (r1.z + cb3_3.tint_symbol_2[43u].w);
  r2.y = (r2.y * cb3_3.tint_symbol_2[44u].w);
  r2.y = max(r2.y, 0.0f);
  let v_85 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_85.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_86 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_86.xyz, r6.w);
  let v_87 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_87.xyz, r6.w);
  let v_88 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_88.xyz, r5.w);
  let v_89 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_89.xyz, r5.w);
  let v_90 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r2 = vec4<f32>(r2.x, v_90.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_91 = dot(r6.xyz, r1.xyz);
  r1.x = clamp(vec4<f32>(v_91, v_91, v_91, v_91).x, 0.0f, 1.0f);
  let v_92 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r2.yzw);
  r1 = vec4<f32>(v_92.xyz, r1.w);
  let v_93 = fma(r1.xyz, r2.xxx, r5.xyz);
  r1 = vec4<f32>(v_93.xyz, r1.w);
  let v_94 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_94.xyz, r0.w);
  let v_95 = fma(r4.xyz, cb8_8.tint_symbol_5[3u].xxx, r0.xyz);
  r0 = vec4<f32>(v_95.xyz, r0.w);
  let v_96 = fma(r3.xyz, v7.zzz, r0.xyz);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_97 = (v11.xy * cb7_7.tint_symbol_4[1u].xy);
    r1 = vec4<f32>(v_97.xy, r1.zw);
    r1 = textureSample(t4, s4, r1.xyxx.xy);
    r1.x = (r1.x + -1.0f);
    r1.x = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r1.xxxx, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r1.x = (r1.x * v4.w);
  } else {
    r1.x = v4.w;
  }
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  let v_98 = ((-(r0.xxyz)).yzw + v4.xyz);
  r1 = vec4<f32>(r1.x, v_98.xyz);
  let v_99 = fma(r1.xxx, r1.yzw, r0.xyz);
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_100.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol_1[22u].x);
  o0.w = r0.w;
  o1 = v7.w;
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(position) v_101 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v7, v8, v9, v10, v_101);
  return tint_symbol_8(o0, o1, o2);
}
