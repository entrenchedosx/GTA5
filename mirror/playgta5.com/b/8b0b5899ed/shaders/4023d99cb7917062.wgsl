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

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

struct cb4_struct {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> v6 : vec4<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v6 = v_2;
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = clamp(((r2.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  let v_5 = r2;
  r2 = vec4<f32>(v_5.x, ((v5.xy / v5.ww)).xy, v_5.w);
  let v_6 = fma(cb12_12.tint_symbol_4[3u].zw, r2.yz, cb12_12.tint_symbol_4[3u].xy);
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r3 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_8 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  let v_9 = (r3.xy * cb12_12.tint_symbol_4[2u].xx);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = fma(r3.xy, vec2<f32>(0.001953125f, 0.00390625f), r2.yz);
  let v_11 = r2;
  r2 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r3 = textureSample(t1, s1, r2.yzyy.xy);
  r0.w = (r0.w * v0.w);
  let v_12 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_13 = r2;
  r2 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_15 = -(v4.xyzx);
  let v_16 = (v_15.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  r4.w = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_18 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = (r5.xyz + v_15.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = bitcast<vec3<u32>>(r3.www);
  let v_21 = r4.xyz;
  let v_22 = select(r5.xyz, v_21, (v_20 != vec3<u32>()));
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  let v_23 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_24 = (r4.www * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_25 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r4.xyz, v_25.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_26 = dot(r4.xyz, r1.yzw);
  r4.x = clamp(vec4<f32>(v_26, v_26, v_26, v_26).x, 0.0f, 1.0f);
  r4.x = (r4.w * r4.x);
  r3.w = (r3.w * r4.x);
  let v_27 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = bitcast<vec3<u32>>(r2.www);
  let v_30 = select(r4.xyz, vec3<f32>(), (v_29 != vec3<u32>()));
  r4 = vec4<f32>(v_30.xyz, r4.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_31 = (v_15.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_31.xyz, r5.w);
    let v_32 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_32.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_33 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_34.xyz, r6.w);
    let v_35 = bitcast<vec3<u32>>(r3.www);
    let v_36 = r5.xyz;
    let v_37 = select(r6.xyz, v_36, (v_35 != vec3<u32>()));
    r5 = vec4<f32>(v_37.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_38 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_38.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_39 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_39.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_40 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r5.xyz, v_40.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_41 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_41, v_41, v_41, v_41).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_42 = (r3.www * cb3_3.tint_symbol_2[20u].xyz);
    r5 = vec4<f32>(v_42.xyz, r5.w);
    let v_43 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_43.xyz, r5.w);
    let v_44 = bitcast<vec3<u32>>(r2.www);
    let v_45 = r4.xyz;
    let v_46 = select(r5.xyz, v_45, (v_44 != vec3<u32>()));
    r4 = vec4<f32>(v_46.xyz, r4.w);
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_47 = (v_15.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_47.xyz, r5.w);
    let v_48 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_48.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_49 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_49.xyz, r6.w);
    let v_50 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_50.xyz, r6.w);
    let v_51 = bitcast<vec3<u32>>(r3.www);
    let v_52 = r5.xyz;
    let v_53 = select(r6.xyz, v_52, (v_51 != vec3<u32>()));
    r5 = vec4<f32>(v_53.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_54 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_54.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_55 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_55.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_56 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r5.xyz, v_56.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_57 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_57, v_57, v_57, v_57).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_58 = (r3.www * cb3_3.tint_symbol_2[21u].xyz);
    r5 = vec4<f32>(v_58.xyz, r5.w);
    let v_59 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_59.xyz, r5.w);
    let v_60 = bitcast<vec3<u32>>(r2.www);
    let v_61 = r4.xyz;
    let v_62 = select(r5.xyz, v_61, (v_60 != vec3<u32>()));
    r4 = vec4<f32>(v_62.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_63 = (v_15.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_63.xyz, r5.w);
    let v_64 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_64.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_65 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_65.xyz, r6.w);
    let v_66 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_66.xyz, r6.w);
    let v_67 = bitcast<vec3<u32>>(r3.www);
    let v_68 = r5.xyz;
    let v_69 = select(r6.xyz, v_68, (v_67 != vec3<u32>()));
    r5 = vec4<f32>(v_69.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_70 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_70.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_71 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_71.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_72 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r5.xyz, v_72.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_73 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_73, v_73, v_73, v_73).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_74 = (r3.www * cb3_3.tint_symbol_2[22u].xyz);
    r5 = vec4<f32>(v_74.xyz, r5.w);
    let v_75 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_75.xyz, r5.w);
    let v_76 = bitcast<vec3<u32>>(r2.www);
    let v_77 = r4.xyz;
    let v_78 = select(r5.xyz, v_77, (v_76 != vec3<u32>()));
    r4 = vec4<f32>(v_78.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
    let v_79 = (v_15.xyz + cb3_3.tint_symbol_2[7u].xyz);
    r5 = vec4<f32>(v_79.xyz, r5.w);
    let v_80 = (v4.xyz + (-(cb3_3.tint_symbol_2[7u].xyzx)).xyz);
    r6 = vec4<f32>(v_80.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[15u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[23u].w);
    let v_81 = fma(cb3_3.tint_symbol_2[15u].xyz, r4.www, cb3_3.tint_symbol_2[7u].xyz);
    r6 = vec4<f32>(v_81.xyz, r6.w);
    let v_82 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_82.xyz, r6.w);
    let v_83 = bitcast<vec3<u32>>(r3.www);
    let v_84 = r5.xyz;
    let v_85 = select(r6.xyz, v_84, (v_83 != vec3<u32>()));
    r5 = vec4<f32>(v_85.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_86 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_86.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_87 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_87.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[15u].w);
    r3.w = (r3.w / r4.w);
    let v_88 = -(cb3_3.tint_symbol_2[15u].xyzx);
    r4.w = dot(r5.xyz, v_88.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
    let v_89 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_89, v_89, v_89, v_89).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_90 = (r3.www * cb3_3.tint_symbol_2[23u].xyz);
    r5 = vec4<f32>(v_90.xyz, r5.w);
    let v_91 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_91.xyz, r5.w);
    let v_92 = bitcast<vec3<u32>>(r2.www);
    let v_93 = r4.xyz;
    let v_94 = select(r5.xyz, v_93, (v_92 != vec3<u32>()));
    r4 = vec4<f32>(v_94.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
    let v_95 = (v_15.xyz + cb3_3.tint_symbol_2[8u].xyz);
    r5 = vec4<f32>(v_95.xyz, r5.w);
    let v_96 = (v4.xyz + (-(cb3_3.tint_symbol_2[8u].xyzx)).xyz);
    r6 = vec4<f32>(v_96.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[16u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[24u].w);
    let v_97 = fma(cb3_3.tint_symbol_2[16u].xyz, r4.www, cb3_3.tint_symbol_2[8u].xyz);
    r6 = vec4<f32>(v_97.xyz, r6.w);
    let v_98 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_98.xyz, r6.w);
    let v_99 = bitcast<vec3<u32>>(r3.www);
    let v_100 = r5.xyz;
    let v_101 = select(r6.xyz, v_100, (v_99 != vec3<u32>()));
    r5 = vec4<f32>(v_101.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_102 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_102.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_103 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_103.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[16u].w);
    r3.w = (r3.w / r4.w);
    let v_104 = -(cb3_3.tint_symbol_2[16u].xyzx);
    r4.w = dot(r5.xyz, v_104.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
    let v_105 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_105, v_105, v_105, v_105).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_106 = (r3.www * cb3_3.tint_symbol_2[24u].xyz);
    r5 = vec4<f32>(v_106.xyz, r5.w);
    let v_107 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_107.xyz, r5.w);
    let v_108 = bitcast<vec3<u32>>(r2.www);
    let v_109 = r4.xyz;
    let v_110 = select(r5.xyz, v_109, (v_108 != vec3<u32>()));
    r4 = vec4<f32>(v_110.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
    let v_111 = (v_15.xyz + cb3_3.tint_symbol_2[9u].xyz);
    r5 = vec4<f32>(v_111.xyz, r5.w);
    let v_112 = (v4.xyz + (-(cb3_3.tint_symbol_2[9u].xyzx)).xyz);
    r6 = vec4<f32>(v_112.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[17u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[25u].w);
    let v_113 = fma(cb3_3.tint_symbol_2[17u].xyz, r4.www, cb3_3.tint_symbol_2[9u].xyz);
    r6 = vec4<f32>(v_113.xyz, r6.w);
    let v_114 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_114.xyz, r6.w);
    let v_115 = bitcast<vec3<u32>>(r3.www);
    let v_116 = r5.xyz;
    let v_117 = select(r6.xyz, v_116, (v_115 != vec3<u32>()));
    r5 = vec4<f32>(v_117.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_118 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_118.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_119 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_119.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[17u].w);
    r3.w = (r3.w / r4.w);
    let v_120 = -(cb3_3.tint_symbol_2[17u].xyzx);
    r4.w = dot(r5.xyz, v_120.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
    let v_121 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_121, v_121, v_121, v_121).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_122 = (r3.www * cb3_3.tint_symbol_2[25u].xyz);
    r5 = vec4<f32>(v_122.xyz, r5.w);
    let v_123 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_123.xyz, r5.w);
    let v_124 = bitcast<vec3<u32>>(r2.www);
    let v_125 = r4.xyz;
    let v_126 = select(r5.xyz, v_125, (v_124 != vec3<u32>()));
    r4 = vec4<f32>(v_126.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
    let v_127 = (v_15.xyz + cb3_3.tint_symbol_2[10u].xyz);
    r5 = vec4<f32>(v_127.xyz, r5.w);
    let v_128 = (v4.xyz + (-(cb3_3.tint_symbol_2[10u].xyzx)).xyz);
    r6 = vec4<f32>(v_128.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[18u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[26u].w);
    let v_129 = fma(cb3_3.tint_symbol_2[18u].xyz, r4.www, cb3_3.tint_symbol_2[10u].xyz);
    r6 = vec4<f32>(v_129.xyz, r6.w);
    let v_130 = (r6.xyz + v_15.xyz);
    r6 = vec4<f32>(v_130.xyz, r6.w);
    let v_131 = bitcast<vec3<u32>>(r3.www);
    let v_132 = r5.xyz;
    let v_133 = select(r6.xyz, v_132, (v_131 != vec3<u32>()));
    r5 = vec4<f32>(v_133.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_134 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_134.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_135 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_135.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[18u].w);
    r3.w = (r3.w / r4.w);
    let v_136 = -(cb3_3.tint_symbol_2[18u].xyzx);
    r4.w = dot(r5.xyz, v_136.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
    let v_137 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_137, v_137, v_137, v_137).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_138 = (r3.www * cb3_3.tint_symbol_2[26u].xyz);
    r5 = vec4<f32>(v_138.xyz, r5.w);
    let v_139 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_139.xyz, r5.w);
    let v_140 = bitcast<vec3<u32>>(r2.www);
    let v_141 = r4.xyz;
    let v_142 = select(r5.xyz, v_141, (v_140 != vec3<u32>()));
    r4 = vec4<f32>(v_142.xyz, r4.w);
  }
  let v_143 = (r2.yzx * r2.yzx);
  r2 = vec4<f32>(r2.x, v_143.xyz);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_144 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_144.xyz, r5.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_145 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_145.xyz, r6.w);
  let v_146 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_146.xyz, r6.w);
  let v_147 = fma(r5.xyz, r3.www, r6.xyz);
  r5 = vec4<f32>(v_147.xyz, r5.w);
  let v_148 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_148.xyz, r5.w);
  let v_149 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_149.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_150 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
  let v_151 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_151.xyz, r1.w);
  let v_152 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_152.xyz, r1.w);
  let v_153 = (r2.xxx * r1.xyz);
  r1 = vec4<f32>(v_153.xyz, r1.w);
  let v_154 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_154.xyz, r0.w);
  let v_155 = fma(r2.www, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_155.xyz, r0.w);
  r1.x = ((-(r2.xxxx)).x + 1.0f);
  let v_156 = fma(r3.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_156.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    let v_157 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r1 = vec4<f32>(v_157.xyz, r1.w);
    r0.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r0.w);
    let v_158 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_158.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r1.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_159 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_159 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_160 = (r0.www * r1.xyz);
    r1 = vec4<f32>(v_160.xyz, r1.w);
    let v_161 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_161, v_161, v_161, v_161).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_162 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.x = clamp(vec4<f32>(v_162, v_162, v_162, v_162).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
    r1.x = exp2(r1.x);
    r1.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_163 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r1.z = (r2.x + v_163.z);
    r1.z = max(r1.z, 0.0f);
    let v_164 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_165 = r1;
    r1 = vec4<f32>(v_165.x, v_164.xy, v_165.w);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = clamp(fma(r1.yyyy, r1.zzzz, r2.yyyy).z, 0.0f, 1.0f);
    let v_166 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.w = (r2.x * v_166.w);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_167 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_167.xyz, r2.w);
    let v_168 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_168.xyz, r2.w);
    let v_169 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_169.xyz, r3.w);
    let v_170 = fma(r1.xxx, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_170.xyz, r2.w);
    let v_171 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_172 = (r2.xyz + v_171.xyz);
    r2 = vec4<f32>(v_172.xyz, r2.w);
    let v_173 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_173.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_174 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_174.xyz, r3.w);
    let v_175 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_175.xy, r1.z, v_175.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_176 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_176.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_177 = -(r0.xyxz);
    let v_178 = fma(r1.xyw, r0.www, v_177.xyw);
    r1 = vec4<f32>(v_178.xy, r1.z, v_178.z);
    let v_179 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_179.xyz, r1.w);
  } else {
    let v_180 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r2 = vec4<f32>(v_180.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.w);
    let v_181 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_181.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r2.z);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_182 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_182 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_183 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_183.xyz, r2.w);
    let v_184 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_184, v_184, v_184, v_184).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_185 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_185, v_185, v_185, v_185).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_186 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r2.w + v_186.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.yyyy, r3.xxxx).y, 0.0f, 1.0f);
    let v_187 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.w * v_187.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_188 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_188.xyz, r3.w);
    let v_189 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_189.xyz, r3.w);
    let v_190 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_190.xyz, r4.w);
    let v_191 = fma(r2.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_191.xyz, r3.w);
    let v_192 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_193 = (r3.xyz + v_192.xyz);
    r3 = vec4<f32>(v_193.xyz, r3.w);
    let v_194 = fma(r2.zzz, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_194.x, r2.y, v_194.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_195 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_195.xyz, r3.w);
    let v_196 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_196.x, r2.y, v_196.yz);
    let v_197 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_197.x, r2.y, v_197.yz);
    let v_198 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_198.xyz, r1.w);
  }
  let v_199 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_199.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_200 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_200);
  return o0;
}
