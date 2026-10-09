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

struct cb6_struct {
  tint_symbol_5 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb6_struct;

struct cb6_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb6_struct_1;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v_1 : vec4<f32>, v12 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v11 = v_2;
  x0[0u].x = v12.x;
  x0[0u].y = v12.y;
  x0[0u].z = v12.z;
  x0[0u].w = v12.w;
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v_3 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v_4 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r2.x = dot(r0.xyz, vec3<f32>(1.0f));
  r2.y = dot(r1.xyz, vec3<f32>(1.0f));
  let v_5 = -(cb8_8.tint_symbol_6[5u].yyyy);
  let v_6 = (r2.xy + v_5.zw);
  r2 = vec4<f32>(r2.xy, v_6.xy);
  let v_7 = clamp(((r2.zzzw * vec4<f32>(0.0f, 0.0f, 10000.0f, 10000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_7.xy);
  r3.x = (cb8_8.tint_symbol_6[5u].z + 0.00100000004749745131f);
  r3.x = ((-(r2.xxxx)).x + r3.x);
  r3.x = clamp(((r3.xxxx * vec4<f32>(10000.0f))).x, 0.0f, 1.0f);
  let v_8 = -(r2.xxxy);
  let v_9 = fma(r2.zw, r3.xx, v_8.zw);
  r2 = vec4<f32>(r2.xy, v_9.xy);
  let v_10 = fma(cb8_8.tint_symbol_6[5u].ww, r2.zw, r2.xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r0.w = r2.x;
  r1.w = r2.y;
  r1 = (-(r0) + r1);
  r0 = fma(v3.xy.xxxx, r1, r0);
  r1.x = dot(v9.xyz, v9.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_11 = (r1.xxx * v9.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r1.w = dot(v10, v10);
  r1.w = inverseSqrt(r1.w);
  let v_12 = (r1.www * v10.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r1.yzx * r2.zxy);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = -(r3.xyzx);
  let v_15 = fma(r2.yzx, r1.zxy, v_14.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r4 = textureSample(t7, s7, v2.xyxx.xy);
  let v_17 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_17.xy, r4.zw);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  let v_18 = (r3.xyz * r4.yyy);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r4.xxx, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r1.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r0 = (r0 * v0);
  let v_21 = (cb2_2.tint_symbol_1[15u].zy * cb8_8.tint_symbol_6[2u].zz);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r2.y = clamp(fma(v8.zzzz, cb6_6.tint_symbol_3[3u].xxxx, cb6_6.tint_symbol_3[3u].yyyy).y, 0.0f, 1.0f);
  r2.y = sqrt(r2.y);
  r2.y = fma((-(r2.yyyy)).y, cb6_6.tint_symbol_3[3u].z, 1.0f);
  r2.y = (r2.y * cb8_8.tint_symbol_6[2u].y);
  let v_22 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_23 = dot(r1.xyz, v_22.xyz);
  r2.z = clamp(vec4<f32>(v_23, v_23, v_23, v_23).z, 0.0f, 1.0f);
  r2.z = (r2.z + cb13_13.tint_symbol[0u].x);
  r2.w = (cb13_13.tint_symbol[0u].x + 1.0f);
  r2.w = (r2.w * r2.w);
  r2.z = clamp(((r2.zzzz / r2.wwww)).z, 0.0f, 1.0f);
  let v_24 = (r0.xyz * r2.zzz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  let v_25 = (r3.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = (r2.yyy * r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_27 = -(v8.xyzx);
  let v_28 = (v_27.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = (v8.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r3.w = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r3.w = (r3.w * cb3_3.tint_symbol_2[19u].w);
  let v_30 = fma(cb3_3.tint_symbol_2[11u].xyz, r3.www, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = (r5.xyz + v_27.xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  let v_32 = bitcast<vec3<u32>>(r2.zzz);
  let v_33 = r4.xyz;
  let v_34 = select(r5.xyz, v_33, (v_32 != vec3<u32>()));
  r4 = vec4<f32>(v_34.xyz, r4.w);
  r2.z = dot(r4.xyz, r4.xyz);
  let v_35 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_35.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_36 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r3.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[11u].w);
  r2.z = (r2.z / r3.w);
  let v_37 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r3.w = dot(r4.xyz, v_37.xyz);
  r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_38 = dot(r4.xyz, r1.xyz);
  r4.x = clamp(vec4<f32>(v_38, v_38, v_38, v_38).x, 0.0f, 1.0f);
  r4.x = (r4.x + cb13_13.tint_symbol[0u].x);
  r4.x = clamp(((r4.xxxx / r2.wwww)).x, 0.0f, 1.0f);
  r3.w = (r3.w * r4.x);
  r2.z = (r2.z * r3.w);
  let v_39 = (r2.zzz * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_39.xyz, r4.w);
  let v_40 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_40.xyz, r4.w);
  let v_41 = bitcast<vec3<u32>>(r2.yyy);
  let v_42 = select(r4.xyz, vec3<f32>(), (v_41 != vec3<u32>()));
  r4 = vec4<f32>(v_42.xyz, r4.w);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r2.z) != 0u)) {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.z)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_43 = (v_27.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_43.xyz, r5.w);
    let v_44 = (v8.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_44.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[20u].w);
    let v_45 = fma(cb3_3.tint_symbol_2[12u].xyz, r3.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_45.xyz, r6.w);
    let v_46 = (r6.xyz + v_27.xyz);
    r6 = vec4<f32>(v_46.xyz, r6.w);
    let v_47 = bitcast<vec3<u32>>(r2.zzz);
    let v_48 = r5.xyz;
    let v_49 = select(r6.xyz, v_48, (v_47 != vec3<u32>()));
    r5 = vec4<f32>(v_49.xyz, r5.w);
    r2.z = dot(r5.xyz, r5.xyz);
    let v_50 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_50.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_51 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_51.xyz, r5.w);
    r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[12u].w);
    r2.z = (r2.z / r3.w);
    let v_52 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r3.w = dot(r5.xyz, v_52.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_53 = dot(r5.xyz, r1.xyz);
    r4.w = clamp(vec4<f32>(v_53, v_53, v_53, v_53).w, 0.0f, 1.0f);
    r4.w = (r4.w + cb13_13.tint_symbol[0u].x);
    r4.w = clamp(((r4.wwww / r2.wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.z = (r2.z * r3.w);
    let v_54 = (r2.zzz * cb3_3.tint_symbol_2[20u].xyz);
    r5 = vec4<f32>(v_54.xyz, r5.w);
    let v_55 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_55.xyz, r5.w);
    let v_56 = bitcast<vec3<u32>>(r2.yyy);
    let v_57 = r4.xyz;
    let v_58 = select(r5.xyz, v_57, (v_56 != vec3<u32>()));
    r4 = vec4<f32>(v_58.xyz, r4.w);
  } else {
    r2.y = bitcast<f32>(v.tint_symbol_7[0i].x);
  }
  if ((bitcast<u32>(r2.y) != 0u)) {
    r2.y = bitcast<f32>(v.tint_symbol_7[0i].x);
  } else {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.z)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_59 = (v_27.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_59.xyz, r5.w);
    let v_60 = (v8.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_60.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[21u].w);
    let v_61 = fma(cb3_3.tint_symbol_2[13u].xyz, r3.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_61.xyz, r6.w);
    let v_62 = (r6.xyz + v_27.xyz);
    r6 = vec4<f32>(v_62.xyz, r6.w);
    let v_63 = bitcast<vec3<u32>>(r2.zzz);
    let v_64 = r5.xyz;
    let v_65 = select(r6.xyz, v_64, (v_63 != vec3<u32>()));
    r5 = vec4<f32>(v_65.xyz, r5.w);
    r2.z = dot(r5.xyz, r5.xyz);
    let v_66 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_66.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_67 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_67.xyz, r5.w);
    r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[13u].w);
    r2.z = (r2.z / r3.w);
    let v_68 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r3.w = dot(r5.xyz, v_68.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_69 = dot(r5.xyz, r1.xyz);
    r4.w = clamp(vec4<f32>(v_69, v_69, v_69, v_69).w, 0.0f, 1.0f);
    r4.w = (r4.w + cb13_13.tint_symbol[0u].x);
    r4.w = clamp(((r4.wwww / r2.wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * r4.w);
    r2.z = (r2.z * r3.w);
    let v_70 = (r2.zzz * cb3_3.tint_symbol_2[21u].xyz);
    r5 = vec4<f32>(v_70.xyz, r5.w);
    let v_71 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_71.xyz, r5.w);
    let v_72 = bitcast<vec3<u32>>(r2.yyy);
    let v_73 = r4.xyz;
    let v_74 = select(r5.xyz, v_73, (v_72 != vec3<u32>()));
    r4 = vec4<f32>(v_74.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.y) != 0u)) {
  } else {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.z)));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_75 = (v_27.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_75.xyz, r5.w);
    let v_76 = (v8.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_76.xyz, r6.w);
    r3.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r3.w = clamp(((r3.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r3.w = (r3.w * cb3_3.tint_symbol_2[22u].w);
    let v_77 = fma(cb3_3.tint_symbol_2[14u].xyz, r3.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_77.xyz, r6.w);
    let v_78 = (r6.xyz + v_27.xyz);
    r6 = vec4<f32>(v_78.xyz, r6.w);
    let v_79 = bitcast<vec3<u32>>(r2.zzz);
    let v_80 = r5.xyz;
    let v_81 = select(r6.xyz, v_80, (v_79 != vec3<u32>()));
    r5 = vec4<f32>(v_81.xyz, r5.w);
    r2.z = dot(r5.xyz, r5.xyz);
    let v_82 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_82.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = inverseSqrt(r3.w);
    let v_83 = (r3.www * r5.xyz);
    r5 = vec4<f32>(v_83.xyz, r5.w);
    r2.z = clamp(fma(-(r2.zzzz), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r3.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r3.w = fma(r3.w, r2.z, cb3_3.tint_symbol_2[14u].w);
    r2.z = (r2.z / r3.w);
    let v_84 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r3.w = dot(r5.xyz, v_84.xyz);
    r3.w = clamp(fma(r3.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_85 = dot(r5.xyz, r1.xyz);
    r4.w = clamp(vec4<f32>(v_85, v_85, v_85, v_85).w, 0.0f, 1.0f);
    r4.w = (r4.w + cb13_13.tint_symbol[0u].x);
    r2.w = clamp(((r4.wwww / r2.wwww)).w, 0.0f, 1.0f);
    r2.w = (r3.w * r2.w);
    r2.z = (r2.z * r2.w);
    let v_86 = (r2.zzz * cb3_3.tint_symbol_2[22u].xyz);
    r5 = vec4<f32>(v_86.xyz, r5.w);
    let v_87 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_87.xyz, r5.w);
    let v_88 = bitcast<vec3<u32>>(r2.yyy);
    let v_89 = r4.xyz;
    let v_90 = select(r5.xyz, v_89, (v_88 != vec3<u32>()));
    r4 = vec4<f32>(v_90.xyz, r4.w);
  }
  r2.y = (r1.z + cb3_3.tint_symbol_2[43u].w);
  r2.y = (r2.y * cb3_3.tint_symbol_2[44u].w);
  r2.y = max(r2.y, 0.0f);
  let v_91 = fma(cb3_3.tint_symbol_2[47u].xyz, r2.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_91.xyz, r5.w);
  r2.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_92 = fma(cb3_3.tint_symbol_2[45u].xyz, r2.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_92.xyz, r6.w);
  let v_93 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_93.xyz, r6.w);
  let v_94 = fma(r5.xyz, r2.zzz, r6.xyz);
  r5 = vec4<f32>(v_94.xyz, r5.w);
  let v_95 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_95.xyz, r5.w);
  let v_96 = fma(cb3_3.tint_symbol_2[43u].xyz, r2.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r2 = vec4<f32>(r2.x, v_96.xyz);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_97 = dot(r6.xyz, r1.xyz);
  r1.x = clamp(vec4<f32>(v_97, v_97, v_97, v_97).x, 0.0f, 1.0f);
  let v_98 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r2.yzw);
  r1 = vec4<f32>(v_98.xyz, r1.w);
  let v_99 = fma(r1.xyz, r2.xxx, r5.xyz);
  r1 = vec4<f32>(v_99.xyz, r1.w);
  let v_100 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = fma(r4.xyz, cb8_8.tint_symbol_6[3u].xxx, r0.xyz);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = fma(r3.xyz, v7.zzz, r0.xyz);
  r0 = vec4<f32>(v_102.xyz, r0.w);
  let v_103 = (v11.xy * cb7_7.tint_symbol_4[1u].xy);
  r1 = vec4<f32>(v_103.xy, r1.zw);
  r1 = textureSample(t12, s12, r1.xyxx.xy);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_104 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == cb9_9.tint_symbol_5[5u].zw))));
  let v_105 = r1;
  r1 = vec4<f32>(v_105.x, v_104.xy, v_105.w);
  r1.w = ((-(r1.xxxx)).w + 1.0f);
  let v_106 = bitcast<u32>(r1.y);
  let v_107 = r1.w;
  r1.x = select(r1.x, v_107, (v_106 != 0u));
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = fma(r1.x, cb7_7.tint_symbol_4[0u].z, cb7_7.tint_symbol_4[0u].w);
  r1.x = (1.0f / r1.x);
  r1.x = (r1.x + (-(v7.wwww)).x);
  r1.x = fma(r1.x, r1.x, (-(v7.xxxx)).x);
  r1.y = clamp(((r1.xxxx * v5.xxxx)).y, 0.0f, 1.0f);
  r0.w = (r0.w * r1.y);
  let v_108 = -(cb8_8.tint_symbol_6[4u].wwww);
  r1.x = (r1.x + v_108.x);
  r1.x = clamp(((r1.xxxx * v5.xxxx)).x, 0.0f, 1.0f);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  r1.w = ((-(cb8_8.tint_symbol_6[4u].zzzz)).w + 1.0f);
  r1.x = fma(r1.y, r1.w, r1.x);
  let v_109 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_109.xyz, r0.w);
  r1.x = clamp(((x0[0u].xxxx * vec4<f32>(20.0f))).x, 0.0f, 1.0f);
  let v_110 = bitcast<u32>(r1.z);
  r1.x = select(1.0f, r1.x, (v_110 != 0u));
  r0.w = clamp(((r0.wwww * r1.xxxx)).w, 0.0f, 1.0f);
  let v_111 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_111.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol_1[22u].x);
  o0.w = r0.w;
  o1 = v7.w;
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(position) v_112 : vec4<f32>, @location(15u) v12 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v3, v5, v7, v8, v9, v10, v_112, v12);
  return tint_symbol_9(o0, o1, o2);
}
