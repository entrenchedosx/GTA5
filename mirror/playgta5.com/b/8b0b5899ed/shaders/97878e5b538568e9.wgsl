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

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  r2 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v_4 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2.x = dot(r2.xyz, cb12_12.tint_symbol_4[1u].xyz);
  r2.x = clamp(((r2.xxxx * cb12_12.tint_symbol_4[0u].zzzz)).x, 0.0f, 1.0f);
  let v_5 = r2;
  r2 = vec4<f32>(v_5.x, ((v5.xy / v5.ww)).xy, v_5.w);
  let v_6 = fma(cb12_12.tint_symbol_4[3u].zw, r2.yz, cb12_12.tint_symbol_4[3u].xy);
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r3 = textureSample(t1, s1, r2.yzyy.xy);
  r0.w = (r0.w * v0.w);
  let v_8 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  let v_9 = r2;
  r2 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
  let v_11 = -(v4.xyzx);
  let v_12 = (v_11.xyz + cb3_3.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = (v4.xyz + (-(cb3_3.tint_symbol_2[3u].xyzx)).xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  r4.w = dot(r5.xyz, cb3_3.tint_symbol_2[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_2[19u].w);
  let v_14 = fma(cb3_3.tint_symbol_2[11u].xyz, r4.www, cb3_3.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = (r5.xyz + v_11.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = bitcast<vec3<u32>>(r3.www);
  let v_17 = r4.xyz;
  let v_18 = select(r5.xyz, v_17, (v_16 != vec3<u32>()));
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r3.w = dot(r4.xyz, r4.xyz);
  let v_19 = (r4.xyz + vec3<f32>(0.00000099999999747524f));
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_20 = (r4.www * r4.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[11u].w);
  r3.w = (r3.w / r4.w);
  let v_21 = -(cb3_3.tint_symbol_2[11u].xyzx);
  r4.w = dot(r4.xyz, v_21.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
  let v_22 = dot(r4.xyz, r1.yzw);
  r4.x = clamp(vec4<f32>(v_22, v_22, v_22, v_22).x, 0.0f, 1.0f);
  r4.x = (r4.w * r4.x);
  r3.w = (r3.w * r4.x);
  let v_23 = (r3.www * cb3_3.tint_symbol_2[19u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = bitcast<vec3<u32>>(r2.www);
  let v_26 = select(r4.xyz, vec3<f32>(), (v_25 != vec3<u32>()));
  r4 = vec4<f32>(v_26.xyz, r4.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
    let v_27 = (v_11.xyz + cb3_3.tint_symbol_2[4u].xyz);
    r5 = vec4<f32>(v_27.xyz, r5.w);
    let v_28 = (v4.xyz + (-(cb3_3.tint_symbol_2[4u].xyzx)).xyz);
    r6 = vec4<f32>(v_28.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[20u].w);
    let v_29 = fma(cb3_3.tint_symbol_2[12u].xyz, r4.www, cb3_3.tint_symbol_2[4u].xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = (r6.xyz + v_11.xyz);
    r6 = vec4<f32>(v_30.xyz, r6.w);
    let v_31 = bitcast<vec3<u32>>(r3.www);
    let v_32 = r5.xyz;
    let v_33 = select(r6.xyz, v_32, (v_31 != vec3<u32>()));
    r5 = vec4<f32>(v_33.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_34 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_34.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_35 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_35.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[12u].w);
    r3.w = (r3.w / r4.w);
    let v_36 = -(cb3_3.tint_symbol_2[12u].xyzx);
    r4.w = dot(r5.xyz, v_36.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
    let v_37 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_37, v_37, v_37, v_37).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_38 = (r3.www * cb3_3.tint_symbol_2[20u].xyz);
    r5 = vec4<f32>(v_38.xyz, r5.w);
    let v_39 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_39.xyz, r5.w);
    let v_40 = bitcast<vec3<u32>>(r2.www);
    let v_41 = r4.xyz;
    let v_42 = select(r5.xyz, v_41, (v_40 != vec3<u32>()));
    r4 = vec4<f32>(v_42.xyz, r4.w);
  } else {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
    let v_43 = (v_11.xyz + cb3_3.tint_symbol_2[5u].xyz);
    r5 = vec4<f32>(v_43.xyz, r5.w);
    let v_44 = (v4.xyz + (-(cb3_3.tint_symbol_2[5u].xyzx)).xyz);
    r6 = vec4<f32>(v_44.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[21u].w);
    let v_45 = fma(cb3_3.tint_symbol_2[13u].xyz, r4.www, cb3_3.tint_symbol_2[5u].xyz);
    r6 = vec4<f32>(v_45.xyz, r6.w);
    let v_46 = (r6.xyz + v_11.xyz);
    r6 = vec4<f32>(v_46.xyz, r6.w);
    let v_47 = bitcast<vec3<u32>>(r3.www);
    let v_48 = r5.xyz;
    let v_49 = select(r6.xyz, v_48, (v_47 != vec3<u32>()));
    r5 = vec4<f32>(v_49.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_50 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_50.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_51 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_51.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[13u].w);
    r3.w = (r3.w / r4.w);
    let v_52 = -(cb3_3.tint_symbol_2[13u].xyzx);
    r4.w = dot(r5.xyz, v_52.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
    let v_53 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_53, v_53, v_53, v_53).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_54 = (r3.www * cb3_3.tint_symbol_2[21u].xyz);
    r5 = vec4<f32>(v_54.xyz, r5.w);
    let v_55 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_55.xyz, r5.w);
    let v_56 = bitcast<vec3<u32>>(r2.www);
    let v_57 = r4.xyz;
    let v_58 = select(r5.xyz, v_57, (v_56 != vec3<u32>()));
    r4 = vec4<f32>(v_58.xyz, r4.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
    let v_59 = (v_11.xyz + cb3_3.tint_symbol_2[6u].xyz);
    r5 = vec4<f32>(v_59.xyz, r5.w);
    let v_60 = (v4.xyz + (-(cb3_3.tint_symbol_2[6u].xyzx)).xyz);
    r6 = vec4<f32>(v_60.xyz, r6.w);
    r4.w = dot(r6.xyz, cb3_3.tint_symbol_2[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[22u].w);
    let v_61 = fma(cb3_3.tint_symbol_2[14u].xyz, r4.www, cb3_3.tint_symbol_2[6u].xyz);
    r6 = vec4<f32>(v_61.xyz, r6.w);
    let v_62 = (r6.xyz + v_11.xyz);
    r6 = vec4<f32>(v_62.xyz, r6.w);
    let v_63 = bitcast<vec3<u32>>(r3.www);
    let v_64 = r5.xyz;
    let v_65 = select(r6.xyz, v_64, (v_63 != vec3<u32>()));
    r5 = vec4<f32>(v_65.xyz, r5.w);
    r3.w = dot(r5.xyz, r5.xyz);
    let v_66 = (r5.xyz + vec3<f32>(0.00000099999999747524f));
    r5 = vec4<f32>(v_66.xyz, r5.w);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_67 = (r4.www * r5.xyz);
    r5 = vec4<f32>(v_67.xyz, r5.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_2[14u].w);
    r3.w = (r3.w / r4.w);
    let v_68 = -(cb3_3.tint_symbol_2[14u].xyzx);
    r4.w = dot(r5.xyz, v_68.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
    let v_69 = dot(r5.xyz, r1.yzw);
    r5.x = clamp(vec4<f32>(v_69, v_69, v_69, v_69).x, 0.0f, 1.0f);
    r4.w = (r4.w * r5.x);
    r3.w = (r3.w * r4.w);
    let v_70 = (r3.www * cb3_3.tint_symbol_2[22u].xyz);
    r5 = vec4<f32>(v_70.xyz, r5.w);
    let v_71 = fma(r5.xyz, r0.xyz, r4.xyz);
    r5 = vec4<f32>(v_71.xyz, r5.w);
    let v_72 = bitcast<vec3<u32>>(r2.www);
    let v_73 = r4.xyz;
    let v_74 = select(r5.xyz, v_73, (v_72 != vec3<u32>()));
    r4 = vec4<f32>(v_74.xyz, r4.w);
  }
  let v_75 = (r2.yzx * r2.yzx);
  r2 = vec4<f32>(r2.x, v_75.xyz);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_76 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r5 = vec4<f32>(v_76.xyz, r5.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_77 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_77.xyz, r6.w);
  let v_78 = (r6.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r6 = vec4<f32>(v_78.xyz, r6.w);
  let v_79 = fma(r5.xyz, r3.www, r6.xyz);
  r5 = vec4<f32>(v_79.xyz, r5.w);
  let v_80 = (r2.zzz * r5.xyz);
  r5 = vec4<f32>(v_80.xyz, r5.w);
  let v_81 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r6 = vec4<f32>(v_81.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_82 = dot(r7.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_82, v_82, v_82, v_82).x, 0.0f, 1.0f);
  let v_83 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r6.xyz);
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = fma(r1.xyz, r2.yyy, r5.xyz);
  r1 = vec4<f32>(v_84.xyz, r1.w);
  let v_85 = (r2.xxx * r1.xyz);
  r1 = vec4<f32>(v_85.xyz, r1.w);
  let v_86 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(r2.www, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  r1.x = ((-(r2.xxxx)).x + 1.0f);
  let v_88 = fma(r3.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  if ((bitcast<u32>(cb5_5.tint_symbol_3[7u].x) != 0u)) {
    let v_89 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r1 = vec4<f32>(v_89.xyz, r1.w);
    r0.w = dot(r1.xyz, r1.xyz);
    r1.w = sqrt(r0.w);
    let v_90 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.x = (r1.w + v_90.x);
    r2.x = max(r2.x, 0.0f);
    r1.w = (r2.x / r1.w);
    r1.w = (r1.w * r1.z);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r2.z = (r2.y * -1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    r2.y = (r2.z / r2.y);
    let v_91 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.y, (v_91 != 0u));
    r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.y);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_92 = (r0.www * r1.xyz);
    r1 = vec4<f32>(v_92.xyz, r1.w);
    let v_93 = dot(r1.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_93, v_93, v_93, v_93).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_94 = dot(r1.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r1.x = clamp(vec4<f32>(v_94, v_94, v_94, v_94).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_2[53u].w);
    r1.x = exp2(r1.x);
    r1.y = fma((-(r1.wwww)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
    let v_95 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r1.z = (r2.x + v_95.z);
    r1.z = max(r1.z, 0.0f);
    let v_96 = (r1.yz * cb3_3.tint_symbol_2[51u].yx);
    let v_97 = r1;
    r1 = vec4<f32>(v_97.x, v_96.xy, v_97.w);
    r1.z = (r1.z * 1.44269502162933349609f);
    r1.z = exp2(r1.z);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = clamp(fma(r1.yyyy, r1.zzzz, r2.yyyy).z, 0.0f, 1.0f);
    let v_98 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r1.w = (r2.x * v_98.w);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_99 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r2 = vec4<f32>(v_99.xyz, r2.w);
    let v_100 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r2 = vec4<f32>(v_100.xyz, r2.w);
    let v_101 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r3 = vec4<f32>(v_101.xyz, r3.w);
    let v_102 = fma(r1.xxx, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_102.xyz, r2.w);
    let v_103 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_104 = (r2.xyz + v_103.xyz);
    r2 = vec4<f32>(v_104.xyz, r2.w);
    let v_105 = fma(r1.www, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_105.xyz, r2.w);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_106 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_106.xyz, r3.w);
    let v_107 = fma(r1.yyy, r3.xyz, r2.xyz);
    r1 = vec4<f32>(v_107.xy, r1.z, v_107.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol_1[22u].y)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_108 = (v6.xy * cb2_2.tint_symbol_1[18u].zw);
      r2 = vec4<f32>(v_108.xy, r2.zw);
      r2 = textureSample(t11, s11, r2.xyxx.xy);
      r0.w = (r2.x + -1.0f);
      r0.w = clamp(fma(cb2_2.tint_symbol_1[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    } else {
      r0.w = 1.0f;
    }
    let v_109 = -(r0.xyxz);
    let v_110 = fma(r1.xyw, r0.www, v_109.xyw);
    r1 = vec4<f32>(v_110.xy, r1.z, v_110.z);
    let v_111 = fma(r1.zzz, r1.xyw, r0.xyz);
    r1 = vec4<f32>(v_111.xyz, r1.w);
  } else {
    let v_112 = (v4.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
    r2 = vec4<f32>(v_112.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.w);
    let v_113 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.w = (r1.w + v_113.w);
    r2.w = max(r2.w, 0.0f);
    r1.w = (r2.w / r1.w);
    r1.w = (r1.w * r2.z);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r3.x * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r3.x = (r3.y / r3.x);
    let v_114 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r3.x, (v_114 != 0u));
    r3.x = (r2.w * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r3.x);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_115 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_115.xyz, r2.w);
    let v_116 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r0.w = clamp(vec4<f32>(v_116, v_116, v_116, v_116).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
    r0.w = exp2(r0.w);
    let v_117 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r2.x = clamp(vec4<f32>(v_117, v_117, v_117, v_117).x, 0.0f, 1.0f);
    r2.x = log2(r2.x);
    r2.x = (r2.x * cb3_3.tint_symbol_2[53u].w);
    r2.x = exp2(r2.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_118 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r2.y = (r2.w + v_118.y);
    r2.y = max(r2.y, 0.0f);
    r2.y = (r2.y * cb3_3.tint_symbol_2[51u].x);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = ((-(r2.yyyy)).y + 1.0f);
    r2.y = clamp(fma(r1.wwww, r2.yyyy, r3.xxxx).y, 0.0f, 1.0f);
    let v_119 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.w * v_119.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_120 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r3 = vec4<f32>(v_120.xyz, r3.w);
    let v_121 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r3 = vec4<f32>(v_121.xyz, r3.w);
    let v_122 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r4 = vec4<f32>(v_122.xyz, r4.w);
    let v_123 = fma(r2.xxx, r4.xyz, r3.xyz);
    r3 = vec4<f32>(v_123.xyz, r3.w);
    let v_124 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_125 = (r3.xyz + v_124.xyz);
    r3 = vec4<f32>(v_125.xyz, r3.w);
    let v_126 = fma(r2.zzz, r3.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r2 = vec4<f32>(v_126.x, r2.y, v_126.yz);
    r3.x = cb3_3.tint_symbol_2[55u].w;
    r3.y = cb3_3.tint_symbol_2[56u].w;
    r3.z = cb3_3.tint_symbol_2[57u].w;
    let v_127 = ((-(r2.xzwx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_127.xyz, r3.w);
    let v_128 = fma(r1.www, r3.xyz, r2.xzw);
    r2 = vec4<f32>(v_128.x, r2.y, v_128.yz);
    let v_129 = ((-(r0.xxyz)).xzw + r2.xzw);
    r2 = vec4<f32>(v_129.x, r2.y, v_129.yz);
    let v_130 = fma(r2.yyy, r2.xzw, r0.xyz);
    r1 = vec4<f32>(v_130.xyz, r1.w);
  }
  let v_131 = (r1.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_131.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(position) v_132 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v4, v5, v_132);
  return o0;
}
