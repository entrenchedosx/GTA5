diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v11 = v_2;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  r0 = textureSample(t8, s8, v2.xyxx.xy);
  let v_3 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = (r0.z * v0.w);
  r0.w = (r0.z * cb8_8.tint_symbol_6[5u].x);
  r0.w = (r0.w * 100.0f);
  let v_4 = fma(r0.xy, r0.ww, v11.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy * cb7_7.tint_symbol_4[1u].xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_6 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r2 = textureSample(t5, s5, v1.zwzz.xy);
  let v_7 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2 = (-(r1) + r2);
  r1 = fma(v3.xy.xxxx, r2, r1);
  r0.w = dot(v9.xyz, v9.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_8 = (r0.www * v9.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = dot(v10, v10);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * v10.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r2.yzx * r3.zxy);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = -(r4.xyzx);
  let v_12 = fma(r3.yzx, r2.zxy, v_11.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_13 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r5 = textureSample(t7, s7, v2.xyxx.xy);
  let v_14 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r5 = vec4<f32>(v_14.xy, r5.zw);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_15 = (r4.xyz * r5.yyy);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = fma(r5.xxx, r3.xyz, r4.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r0.www, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r1 = (r1 * v0);
  let v_18 = (cb2_2.tint_symbol_1[15u].zy * cb8_8.tint_symbol_6[2u].zz);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r3.y);
  r2.w = clamp(fma(v8.zzzz, cb6_6.tint_symbol_3[3u].xxxx, cb6_6.tint_symbol_3[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = fma((-(r2.wwww)).w, cb6_6.tint_symbol_3[3u].z, 1.0f);
  r2.w = (r2.w * cb8_8.tint_symbol_6[2u].y);
  let v_19 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_20 = dot(r2.xyz, v_19.xyz);
  r3.y = clamp(vec4<f32>(v_20, v_20, v_20, v_20).y, 0.0f, 1.0f);
  r3.y = (r3.y + cb13_13.tint_symbol[0u].x);
  r3.z = (cb13_13.tint_symbol[0u].x + 1.0f);
  r3.z = (r3.z * r3.z);
  r3.y = clamp(((r3.yyyy / r3.zzzz)).y, 0.0f, 1.0f);
  let v_21 = (r1.xyz * r3.yyy);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = (r4.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_23 = -(v8.xyzx);
  let v_24 = (v_23.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (v8.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_26 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  let v_27 = (r6.xyz + v_23.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  let v_28 = bitcast<vec3<u32>>(r3.www);
  let v_29 = r5.xyz;
  let v_30 = select(r6.xyz, v_29, (v_28 != vec3<u32>()));
  r5 = vec4<f32>(v_30.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  let v_31 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_32 = (r4.www * r5.xyz);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_33 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r5.xyz, v_33.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_34 = dot(r5.xyz, r2.xyz);
  r5.x = clamp(vec4<f32>(v_34, v_34, v_34, v_34).x, 0.0f, 1.0f);
  r5.x = (r5.x + cb13_13.tint_symbol[0u].x);
  r5.x = clamp(((r5.xxxx / r3.zzzz)).x, 0.0f, 1.0f);
  r4.w = (r4.w * r5.x);
  r3.w = (r3.w * r4.w);
  let v_35 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r5 = vec4<f32>(v_35.xyz, r5.w);
  let v_36 = (r1.xyz * r5.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  let v_37 = bitcast<vec3<u32>>(r3.yyy);
  let v_38 = select(r5.xyz, vec3<f32>(), (v_37 != vec3<u32>()));
  r5 = vec4<f32>(v_38.xyz, r5.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.y = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_39 = (v_23.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_39.xyz, r6.w);
    let v_40 = (v8.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r7 = vec4<f32>(v_40.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_41 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r7 = vec4<f32>(v_41.xyz, r7.w);
    let v_42 = (r7.xyz + v_23.xyz);
    r7 = vec4<f32>(v_42.xyz, r7.w);
    let v_43 = bitcast<vec3<u32>>(r3.www);
    let v_44 = r6.xyz;
    let v_45 = select(r7.xyz, v_44, (v_43 != vec3<u32>()));
    r6 = vec4<f32>(v_45.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_46 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_46.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_47 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_47.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_48 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r6.xyz, v_48.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_49 = dot(r6.xyz, r2.xyz);
    r5.w = clamp(vec4<f32>(v_49, v_49, v_49, v_49).w, 0.0f, 1.0f);
    r5.w = (r5.w + cb13_13.tint_symbol[0u].x);
    r5.w = clamp(((r5.wwww / r3.zzzz)).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_50 = (r3.www * cb3_3.tint_symbol_2[20u].xyz);
    r6 = vec4<f32>(v_50.xyz, r6.w);
    let v_51 = fma(r6.xyz, r1.xyz, r5.xyz);
    r6 = vec4<f32>(v_51.xyz, r6.w);
    let v_52 = bitcast<vec3<u32>>(r3.yyy);
    let v_53 = r5.xyz;
    let v_54 = select(r6.xyz, v_53, (v_52 != vec3<u32>()));
    r5 = vec4<f32>(v_54.xyz, r5.w);
  } else {
    r3.y = bitcast<f32>(v.tint_symbol_7[0i].x);
  }
  if ((bitcast<u32>(r3.y) != 0u)) {
    r3.y = bitcast<f32>(v.tint_symbol_7[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.y = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_55 = (v_23.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_55.xyz, r6.w);
    let v_56 = (v8.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r7 = vec4<f32>(v_56.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_57 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r7 = vec4<f32>(v_57.xyz, r7.w);
    let v_58 = (r7.xyz + v_23.xyz);
    r7 = vec4<f32>(v_58.xyz, r7.w);
    let v_59 = bitcast<vec3<u32>>(r3.www);
    let v_60 = r6.xyz;
    let v_61 = select(r7.xyz, v_60, (v_59 != vec3<u32>()));
    r6 = vec4<f32>(v_61.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_62 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_62.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_63 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_63.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_64 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r6.xyz, v_64.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_65 = dot(r6.xyz, r2.xyz);
    r5.w = clamp(vec4<f32>(v_65, v_65, v_65, v_65).w, 0.0f, 1.0f);
    r5.w = (r5.w + cb13_13.tint_symbol[0u].x);
    r5.w = clamp(((r5.wwww / r3.zzzz)).w, 0.0f, 1.0f);
    r4.w = (r4.w * r5.w);
    r3.w = (r3.w * r4.w);
    let v_66 = (r3.www * cb3_3.tint_symbol_2[21u].xyz);
    r6 = vec4<f32>(v_66.xyz, r6.w);
    let v_67 = fma(r6.xyz, r1.xyz, r5.xyz);
    r6 = vec4<f32>(v_67.xyz, r6.w);
    let v_68 = bitcast<vec3<u32>>(r3.yyy);
    let v_69 = r5.xyz;
    let v_70 = select(r6.xyz, v_69, (v_68 != vec3<u32>()));
    r5 = vec4<f32>(v_70.xyz, r5.w);
  }
  if ((bitcast<u32>(r3.y) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r3.y = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_71 = (v_23.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_71.xyz, r6.w);
    let v_72 = (v8.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r7 = vec4<f32>(v_72.xyz, r7.w);
    r4.w = dot(r7.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_73 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r7 = vec4<f32>(v_73.xyz, r7.w);
    let v_74 = (r7.xyz + v_23.xyz);
    r7 = vec4<f32>(v_74.xyz, r7.w);
    let v_75 = bitcast<vec3<u32>>(r3.www);
    let v_76 = r6.xyz;
    let v_77 = select(r7.xyz, v_76, (v_75 != vec3<u32>()));
    r6 = vec4<f32>(v_77.xyz, r6.w);
    r3.w = dot(r6.xyz, r6.xyz);
    let v_78 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
    r6 = vec4<f32>(v_78.xyz, r6.w);
    r4.w = dot(r6.xyz, r6.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_79 = (r4.www * r6.xyz);
    r6 = vec4<f32>(v_79.xyz, r6.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_80 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r6.xyz, v_80.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_81 = dot(r6.xyz, r2.xyz);
    r5.w = clamp(vec4<f32>(v_81, v_81, v_81, v_81).w, 0.0f, 1.0f);
    r5.w = (r5.w + cb13_13.tint_symbol[0u].x);
    r3.z = clamp(((r5.wwww / r3.zzzz)).z, 0.0f, 1.0f);
    r3.z = (r4.w * r3.z);
    r3.z = (r3.w * r3.z);
    let v_82 = (r3.zzz * cb3_3.tint_symbol_2[22u].xyz);
    r6 = vec4<f32>(v_82.xyz, r6.w);
    let v_83 = fma(r6.xyz, r1.xyz, r5.xyz);
    r6 = vec4<f32>(v_83.xyz, r6.w);
    let v_84 = bitcast<vec3<u32>>(r3.yyy);
    let v_85 = r5.xyz;
    let v_86 = select(r6.xyz, v_85, (v_84 != vec3<u32>()));
    r5 = vec4<f32>(v_86.xyz, r5.w);
  }
  r3.y = (r2.z + cb3_3.tint_symbol_2[43u].w);
  r3.y = (r3.y * cb3_3.tint_symbol_2[44u].w);
  r3.y = max(r3.y, 0.0f);
  let v_87 = fma(cb3_3.tint_symbol_2[47u].xyz, r3.yyy, cb3_3.tint_symbol_2[48u].xyz);
  r6 = vec4<f32>(v_87.xyz, r6.w);
  r3.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  let v_88 = fma(cb3_3.tint_symbol_2[45u].xyz, r3.yyy, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_88.xyz, r7.w);
  let v_89 = (r7.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r7 = vec4<f32>(v_89.xyz, r7.w);
  let v_90 = fma(r6.xyz, r3.zzz, r7.xyz);
  r6 = vec4<f32>(v_90.xyz, r6.w);
  let v_91 = (r0.www * r6.xyz);
  r6 = vec4<f32>(v_91.xyz, r6.w);
  let v_92 = fma(cb3_3.tint_symbol_2[43u].xyz, r3.yyy, cb3_3.tint_symbol_2[44u].xyz);
  r3 = vec4<f32>(r3.x, v_92.xyz);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_93 = dot(r7.xyz, r2.xyz);
  r0.w = clamp(vec4<f32>(v_93, v_93, v_93, v_93).w, 0.0f, 1.0f);
  let v_94 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r3.yzw);
  r2 = vec4<f32>(v_94.xyz, r2.w);
  let v_95 = fma(r2.xyz, r3.xxx, r6.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  let v_96 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_96.xyz, r1.w);
  let v_97 = fma(r5.xyz, cb8_8.tint_symbol_6[3u].xxx, r1.xyz);
  r1 = vec4<f32>(v_97.xyz, r1.w);
  let v_98 = fma(r4.xyz, r2.www, r1.xyz);
  r1 = vec4<f32>(v_98.xyz, r1.w);
  r2 = textureSample(t12, s12, r0.xyxx.xy);
  r0.w = ((-(r2.xxxx)).w + 1.0f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_5[5u].z))));
  r2.y = ((-(r0.wwww)).y + 1.0f);
  let v_99 = bitcast<u32>(r2.x);
  let v_100 = r2.y;
  r0.w = select(r0.w, v_100, (v_99 != 0u));
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, cb7_7.tint_symbol_4[0u].z, cb7_7.tint_symbol_4[0u].w);
  r0.w = (1.0f / r0.w);
  r0.w = (r0.w + (-(v7.wwww)).w);
  r0.w = clamp(((r0.wwww * vec4<f32>(1000.0f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00009999999747378752f < r0.z)));
  r2 = fma(cb7_7.tint_symbol_4[1u].xyxy, vec4<f32>(0.5f, -1.5f, -1.5f, -0.5f), r0.xyxy);
  r3 = fma(cb7_7.tint_symbol_4[1u].xyxy, vec4<f32>(-0.5f, 1.5f, 1.5f, 0.5f), r0.xyxy);
  r4 = textureSample(t6, s6, r0.xyxx.xy);
  r5 = textureSample(t6, s6, r2.xyxx.xy);
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r6 = textureSample(t6, s6, r3.xyxx.xy);
  r3 = textureSample(t6, s6, r3.zwzz.xy);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_101 = (r4.xyz + r5.xyz);
    r5 = vec4<f32>(v_101.xyz, r5.w);
    let v_102 = (r2.xyz + r5.xyz);
    r2 = vec4<f32>(v_102.xyz, r2.w);
    let v_103 = (r6.xyz + r2.xyz);
    r2 = vec4<f32>(v_103.xyz, r2.w);
    let v_104 = (r3.xyz + r2.xyz);
    r2 = vec4<f32>(v_104.xyz, r2.w);
    let v_105 = (r2.xyz * vec3<f32>(0.20000000298023223877f));
    r4 = vec4<f32>(v_105.xyz, r4.w);
  }
  let v_106 = (r4.xyz * cb2_2.tint_symbol_1[17u].www);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  let v_107 = fma((-(r4.xyzx)).xyz, cb2_2.tint_symbol_1[17u].www, r1.xyz);
  r1 = vec4<f32>(v_107.xyz, r1.w);
  let v_108 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_108.xyz, r1.w);
  let v_109 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_109.xyz, o0.w);
  o2 = (r0.w * cb2_2.tint_symbol_1[22u].x);
  o0.w = r0.z;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(position) v_110 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v3, v7, v8, v9, v10, v_110);
  return tint_symbol_9(o0, o1, o2);
}
