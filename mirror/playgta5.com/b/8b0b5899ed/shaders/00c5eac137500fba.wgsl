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

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb1_struct_2 {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_2;

struct cb5_struct {
  tint_symbol_7 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb5_struct;

struct cb4_struct {
  tint_symbol_8 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb4_struct;

@group(0u) @binding(31u) var s15 : sampler_comparison;

@group(0u) @binding(47u) var t15 : texture_depth_2d;

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

var<private> x0 : array<vec4<f32>, 3u>;

var<private> x1 : array<vec4<f32>, 3u>;

var<private> x2 : array<vec4<f32>, 3u>;

var<private> x3 : array<vec4<f32>, 3u>;

var<private> x4 : array<vec4<f32>, 4u>;

var<private> x5 : array<vec4<f32>, 1u>;

struct tint_symbol_10 {
  tint_symbol_9 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_10;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : vec4<f32>, v13 : vec3<f32>) {
  r0 = vec4<f32>(((v0.xz + v7.xz)).xy, r0.zw);
  r1.x = v6.w;
  r1.y = v8.w;
  let v_2 = (r0.xy + r1.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = ((-(r1.xxxy)).zw + v8.xz);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r1 = vec4<f32>(((v6.xz + (-(v7.xzxx)).xy)).xy, r1.zw);
  let v_4 = (r0.zw + r1.xy);
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = fma(r1.zw, vec2<f32>(0.5f), r0.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r1 = vec4<f32>(r1.xy, (((-(v10.xxxw)).zw + v10.yz)).xy);
  r3 = vec4<f32>((((-(v11.xwxx)).xy + v11.yz)).xy, r3.zw);
  x0[0u].x = v9.x;
  x0[1u].x = 0.5f;
  x0[2u].x = v9.y;
  x1[0u].x = v9.z;
  x1[1u].x = 0.5f;
  x1[2u].x = v9.w;
  x2[0u].x = v9.x;
  x2[1u].x = 0.5f;
  x2[2u].x = v9.y;
  x3[0u].x = v9.z;
  x3[1u].x = 0.5f;
  x3[2u].x = v9.w;
  let v_6 = v13.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r3 = vec4<f32>(r3.xy, v_8.xy);
  r2.w = x0[bitcast<i32>(r3.z)].x;
  r4.x = x1[bitcast<i32>(r3.w)].x;
  let v_9 = fma(r0.zw, r2.ww, r0.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = fma(r1.xy, r4.xx, r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  o1.x = fma(r2.w, r1.z, v10.x);
  o1.y = fma(r4.x, r1.w, v10.w);
  o1.z = fma(r2.w, r3.x, v11.x);
  o1.w = fma(r4.x, r3.y, v11.w);
  r0.w = x2[bitcast<i32>(r3.z)].x;
  o2.x = fma(r0.w, r1.z, v10.x);
  r0.w = x3[bitcast<i32>(r3.w)].x;
  o2.y = fma(r0.w, r1.w, v10.w);
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  r0.z = 1.0f;
  r1.x = dot(r0.xyz, cb9_9.tint_symbol_7[2u].xyz);
  r1.y = dot(r0.xyz, cb9_9.tint_symbol_7[3u].xyz);
  r1.z = dot(r0.xyz, cb9_9.tint_symbol_7[4u].xyz);
  let v_11 = (r1.xyz * cb7_7.tint_symbol_6[0u].xxx);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r1.xyz, cb7_7.tint_symbol_6[0u].xxx, cb1_1.tint_symbol_1[15u].xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r2.z = 1.0f;
  r4.x = dot(r2.xyz, cb9_9.tint_symbol_7[2u].xyz);
  r4.y = dot(r2.xyz, cb9_9.tint_symbol_7[3u].xyz);
  r4.z = dot(r2.xyz, cb9_9.tint_symbol_7[4u].xyz);
  let v_13 = fma(r4.xyz, cb7_7.tint_symbol_6[0u].xxx, cb1_1.tint_symbol_1[15u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = -(r2.xyzx);
  let v_15 = (r1.xyz + v_14.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00100000004749745131f)));
  r0.w = inverseSqrt(r0.w);
  let v_16 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = -(cb1_1.tint_symbol_1[14u].xyzx);
  let v_18 = bitcast<vec3<u32>>(r1.www);
  let v_19 = select(r4.xyz, v_17.xyz, (v_18 != vec3<u32>()));
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = (r4.xyz + cb1_1.tint_symbol_1[14u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(v5.xxx, r4.xyz, v_17.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_22.xy, r4.z, v_22.z);
  r5 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r5.w);
  let v_23 = (cb2_2.tint_symbol_3[15u].zy * cb8_8.tint_symbol_8[2u].zz);
  r6 = vec4<f32>(v_23.xy, r6.zw);
  r1.w = clamp(((cb2_2.tint_symbol_3[16u].zzzz + cb3_3.tint_symbol_4[49u].wwww)).w, 0.0f, 1.0f);
  r1.w = (r1.w * r6.y);
  r2.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = fma((-(r2.wwww)).w, cb6_6.tint_symbol_5[3u].z, 1.0f);
  r2.w = (r2.w * cb8_8.tint_symbol_8[2u].y);
  let v_24 = -(cb3_3.tint_symbol_4[0u].xyzx);
  let v_25 = dot(r4.xyw, v_24.xyz);
  r3.w = clamp(vec4<f32>(v_25, v_25, v_25, v_25).w, 0.0f, 1.0f);
  r3.w = (r3.w + cb13_13.tint_symbol[0u].x);
  r5.w = (cb13_13.tint_symbol[0u].x + 1.0f);
  r5.w = (r5.w * r5.w);
  r3.w = clamp(((r3.wwww / r5.wwww)).w, 0.0f, 1.0f);
  let v_26 = (r3.www * r5.xyz);
  r6 = vec4<f32>(r6.x, v_26.xyz);
  let v_27 = (r6.yzw * cb3_3.tint_symbol_4[1u].xyz);
  r6 = vec4<f32>(r6.x, v_27.xyz);
  o9 = ((r2.www * r6.yzw)).xyzx;
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
  let v_28 = ((-(r1.xxyz)).yzw + cb3_3.tint_symbol_4[3u].xyz);
  r6 = vec4<f32>(r6.x, v_28.xyz);
  let v_29 = -(cb3_3.tint_symbol_4[3u].xyzx);
  let v_30 = (r1.xyz + v_29.xyz);
  r7 = vec4<f32>(v_30.xyz, r7.w);
  r7.x = dot(r7.xyz, cb3_3.tint_symbol_4[11u].xyz);
  r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_4[19u].wwww)).x, 0.0f, 1.0f);
  r7.x = (r7.x * cb3_3.tint_symbol_4[19u].w);
  let v_31 = fma(cb3_3.tint_symbol_4[11u].xyz, r7.xxx, cb3_3.tint_symbol_4[3u].xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = ((-(r1.xyzx)).xyz + r7.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = bitcast<vec3<u32>>(r3.www);
  let v_34 = r6.yzw;
  let v_35 = select(r7.xyz, v_34, (v_33 != vec3<u32>()));
  r6 = vec4<f32>(r6.x, v_35.xyz);
  r3.w = dot(r6.yzw, r6.yzw);
  let v_36 = (r6.yzw + vec3<f32>(0.00000099999999747524f));
  r6 = vec4<f32>(r6.x, v_36.xyz);
  r7.x = dot(r6.yzw, r6.yzw);
  r7.x = inverseSqrt(r7.x);
  let v_37 = (r6.yzw * r7.xxx);
  r6 = vec4<f32>(r6.x, v_37.xyz);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r7.x = ((-(cb3_3.tint_symbol_4[11u].wwww)).x + 1.0f);
  r7.x = fma(r7.x, r3.w, cb3_3.tint_symbol_4[11u].w);
  r3.w = (r3.w / r7.x);
  let v_38 = -(cb3_3.tint_symbol_4[11u].xyzx);
  r7.x = dot(r6.yzw, v_38.xyz);
  r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).x, 0.0f, 1.0f);
  let v_39 = dot(r6.yzw, r4.xyw);
  r6.y = clamp(vec4<f32>(v_39, v_39, v_39, v_39).y, 0.0f, 1.0f);
  r6.y = (r6.y + cb13_13.tint_symbol[0u].x);
  r6.y = clamp(((r6.yyyy / r5.wwww)).y, 0.0f, 1.0f);
  r6.y = (r7.x * r6.y);
  r3.w = (r3.w * r6.y);
  let v_40 = (r3.www * cb3_3.tint_symbol_4[19u].xyz);
  r6 = vec4<f32>(r6.x, v_40.xyz);
  let v_41 = (r5.xyz * r6.yzw);
  r6 = vec4<f32>(r6.x, v_41.xyz);
  let v_42 = bitcast<vec3<u32>>(r2.www);
  let v_43 = select(r6.yzw, vec3<f32>(), (v_42 != vec3<u32>()));
  r6 = vec4<f32>(r6.x, v_43.xyz);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
    let v_44 = ((-(r1.xyzx)).xyz + cb3_3.tint_symbol_4[4u].xyz);
    r7 = vec4<f32>(v_44.xyz, r7.w);
    let v_45 = -(cb3_3.tint_symbol_4[4u].xyzx);
    let v_46 = (r1.xyz + v_45.xyz);
    r8 = vec4<f32>(v_46.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_4[12u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_4[20u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_4[20u].w);
    let v_47 = fma(cb3_3.tint_symbol_4[12u].xyz, r7.www, cb3_3.tint_symbol_4[4u].xyz);
    r8 = vec4<f32>(v_47.xyz, r8.w);
    let v_48 = ((-(r1.xyzx)).xyz + r8.xyz);
    r8 = vec4<f32>(v_48.xyz, r8.w);
    let v_49 = bitcast<vec3<u32>>(r3.www);
    let v_50 = r7.xyz;
    let v_51 = select(r8.xyz, v_50, (v_49 != vec3<u32>()));
    r7 = vec4<f32>(v_51.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    let v_52 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_52.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_53 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_53.xyz, r7.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_4[12u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_4[12u].w);
    r3.w = (r3.w / r7.w);
    let v_54 = -(cb3_3.tint_symbol_4[12u].xyzx);
    r7.w = dot(r7.xyz, v_54.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).w, 0.0f, 1.0f);
    let v_55 = dot(r7.xyz, r4.xyw);
    r7.x = clamp(vec4<f32>(v_55, v_55, v_55, v_55).x, 0.0f, 1.0f);
    r7.x = (r7.x + cb13_13.tint_symbol[0u].x);
    r7.x = clamp(((r7.xxxx / r5.wwww)).x, 0.0f, 1.0f);
    r7.x = (r7.w * r7.x);
    r3.w = (r3.w * r7.x);
    let v_56 = (r3.www * cb3_3.tint_symbol_4[20u].xyz);
    r7 = vec4<f32>(v_56.xyz, r7.w);
    let v_57 = fma(r7.xyz, r5.xyz, r6.yzw);
    r7 = vec4<f32>(v_57.xyz, r7.w);
    let v_58 = bitcast<vec3<u32>>(r2.www);
    let v_59 = r6.yzw;
    let v_60 = select(r7.xyz, v_59, (v_58 != vec3<u32>()));
    r6 = vec4<f32>(r6.x, v_60.xyz);
  } else {
    r2.w = bitcast<f32>(v_1.tint_symbol_9[0i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v_1.tint_symbol_9[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[21u].w == 0.0f)));
    let v_61 = ((-(r1.xyzx)).xyz + cb3_3.tint_symbol_4[5u].xyz);
    r7 = vec4<f32>(v_61.xyz, r7.w);
    let v_62 = -(cb3_3.tint_symbol_4[5u].xyzx);
    let v_63 = (r1.xyz + v_62.xyz);
    r8 = vec4<f32>(v_63.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_4[13u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_4[21u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_4[21u].w);
    let v_64 = fma(cb3_3.tint_symbol_4[13u].xyz, r7.www, cb3_3.tint_symbol_4[5u].xyz);
    r8 = vec4<f32>(v_64.xyz, r8.w);
    let v_65 = ((-(r1.xyzx)).xyz + r8.xyz);
    r8 = vec4<f32>(v_65.xyz, r8.w);
    let v_66 = bitcast<vec3<u32>>(r3.www);
    let v_67 = r7.xyz;
    let v_68 = select(r8.xyz, v_67, (v_66 != vec3<u32>()));
    r7 = vec4<f32>(v_68.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    let v_69 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_69.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_70 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_70.xyz, r7.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_4[13u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_4[13u].w);
    r3.w = (r3.w / r7.w);
    let v_71 = -(cb3_3.tint_symbol_4[13u].xyzx);
    r7.w = dot(r7.xyz, v_71.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).w, 0.0f, 1.0f);
    let v_72 = dot(r7.xyz, r4.xyw);
    r7.x = clamp(vec4<f32>(v_72, v_72, v_72, v_72).x, 0.0f, 1.0f);
    r7.x = (r7.x + cb13_13.tint_symbol[0u].x);
    r7.x = clamp(((r7.xxxx / r5.wwww)).x, 0.0f, 1.0f);
    r7.x = (r7.w * r7.x);
    r3.w = (r3.w * r7.x);
    let v_73 = (r3.www * cb3_3.tint_symbol_4[21u].xyz);
    r7 = vec4<f32>(v_73.xyz, r7.w);
    let v_74 = fma(r7.xyz, r5.xyz, r6.yzw);
    r7 = vec4<f32>(v_74.xyz, r7.w);
    let v_75 = bitcast<vec3<u32>>(r2.www);
    let v_76 = r6.yzw;
    let v_77 = select(r7.xyz, v_76, (v_75 != vec3<u32>()));
    r6 = vec4<f32>(r6.x, v_77.xyz);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
    let v_78 = ((-(r1.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
    r7 = vec4<f32>(v_78.xyz, r7.w);
    let v_79 = -(cb3_3.tint_symbol_4[6u].xyzx);
    let v_80 = (r1.xyz + v_79.xyz);
    r8 = vec4<f32>(v_80.xyz, r8.w);
    r7.w = dot(r8.xyz, cb3_3.tint_symbol_4[14u].xyz);
    r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_4[22u].wwww)).w, 0.0f, 1.0f);
    r7.w = (r7.w * cb3_3.tint_symbol_4[22u].w);
    let v_81 = fma(cb3_3.tint_symbol_4[14u].xyz, r7.www, cb3_3.tint_symbol_4[6u].xyz);
    r8 = vec4<f32>(v_81.xyz, r8.w);
    let v_82 = ((-(r1.xyzx)).xyz + r8.xyz);
    r8 = vec4<f32>(v_82.xyz, r8.w);
    let v_83 = bitcast<vec3<u32>>(r3.www);
    let v_84 = r7.xyz;
    let v_85 = select(r8.xyz, v_84, (v_83 != vec3<u32>()));
    r7 = vec4<f32>(v_85.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    let v_86 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_86.xyz, r7.w);
    r7.w = dot(r7.xyz, r7.xyz);
    r7.w = inverseSqrt(r7.w);
    let v_87 = (r7.www * r7.xyz);
    r7 = vec4<f32>(v_87.xyz, r7.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.w = ((-(cb3_3.tint_symbol_4[14u].wwww)).w + 1.0f);
    r7.w = fma(r7.w, r3.w, cb3_3.tint_symbol_4[14u].w);
    r3.w = (r3.w / r7.w);
    let v_88 = -(cb3_3.tint_symbol_4[14u].xyzx);
    r7.w = dot(r7.xyz, v_88.xyz);
    r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).w, 0.0f, 1.0f);
    let v_89 = dot(r7.xyz, r4.xyw);
    r7.x = clamp(vec4<f32>(v_89, v_89, v_89, v_89).x, 0.0f, 1.0f);
    r7.x = (r7.x + cb13_13.tint_symbol[0u].x);
    r5.w = clamp(((r7.xxxx / r5.wwww)).w, 0.0f, 1.0f);
    r5.w = (r7.w * r5.w);
    r3.w = (r3.w * r5.w);
    let v_90 = (r3.www * cb3_3.tint_symbol_4[22u].xyz);
    r7 = vec4<f32>(v_90.xyz, r7.w);
    let v_91 = fma(r7.xyz, r5.xyz, r6.yzw);
    r7 = vec4<f32>(v_91.xyz, r7.w);
    let v_92 = bitcast<vec3<u32>>(r2.www);
    let v_93 = r6.yzw;
    let v_94 = select(r7.xyz, v_93, (v_92 != vec3<u32>()));
    r6 = vec4<f32>(r6.x, v_94.xyz);
  }
  r0.w = fma(r4.z, r0.w, cb3_3.tint_symbol_4[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_4[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_95 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.www, cb3_3.tint_symbol_4[48u].xyz);
  r7 = vec4<f32>(v_95.xyz, r7.w);
  r2.w = ((-(cb2_2.tint_symbol_3[16u].zzzz)).w + 1.0f);
  let v_96 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.www, cb3_3.tint_symbol_4[46u].xyz);
  r8 = vec4<f32>(v_96.xyz, r8.w);
  let v_97 = (r8.xyz * cb2_2.tint_symbol_3[16u].zzz);
  r8 = vec4<f32>(v_97.xyz, r8.w);
  let v_98 = fma(r7.xyz, r2.www, r8.xyz);
  r7 = vec4<f32>(v_98.xyz, r7.w);
  let v_99 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_99.xyz, r7.w);
  let v_100 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.www, cb3_3.tint_symbol_4[44u].xyz);
  r8 = vec4<f32>(v_100.xyz, r8.w);
  r9.x = cb3_3.tint_symbol_4[46u].w;
  r9.y = cb3_3.tint_symbol_4[47u].w;
  r9.z = cb3_3.tint_symbol_4[48u].w;
  let v_101 = dot(r9.xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_101, v_101, v_101, v_101).w, 0.0f, 1.0f);
  let v_102 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.www, r8.xyz);
  r4 = vec4<f32>(v_102.xyz, r4.w);
  let v_103 = fma(r4.xyz, r6.xxx, r7.xyz);
  r4 = vec4<f32>(v_103.xyz, r4.w);
  let v_104 = (r5.xyz * r4.xyz);
  r4 = vec4<f32>(v_104.xyz, r4.w);
  let v_105 = fma(r6.yzw, cb8_8.tint_symbol_8[3u].xxx, r4.xyz);
  o0 = vec4<f32>(v_105.xyz, o0.w);
  r0.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r0.w = (r0.w * 0.5f);
  let v_106 = r2;
  r4 = vec4<f32>(v_106.xyz, r4.w);
  r1.w = 0.0f;
  r2.w = 0.0f;
  loop {
    r3.w = f32(bitcast<i32>(r2.w));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 4.0f)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      break;
    }
    let v_107 = -(cb1_1.tint_symbol_1[15u].xyzx);
    let v_108 = (r4.xyz + v_107.xyz);
    r5 = vec4<f32>(v_108.xyz, r5.w);
    let v_109 = (r5.yyy * cb6_6.tint_symbol_5[1u].xyz);
    r6 = vec4<f32>(v_109.xyz, r6.w);
    let v_110 = fma(r5.xxx, cb6_6.tint_symbol_5[0u].xyz, r6.xyz);
    r5 = vec4<f32>(v_110.xy, r5.z, v_110.z);
    let v_111 = fma(r5.zzz, cb6_6.tint_symbol_5[2u].xyz, r5.xyw);
    r5 = vec4<f32>(v_111.xyz, r5.w);
    let v_112 = fma(r5.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
    r6 = vec4<f32>(v_112.xyz, r6.w);
    let v_113 = &(x4[0u]);
    let v_114 = r6;
    *(v_113) = vec4<f32>(v_114.xyz, (*(v_113)).w);
    let v_115 = fma(r5.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
    r7 = vec4<f32>(v_115.xyz, r7.w);
    let v_116 = &(x4[1u]);
    let v_117 = r7;
    *(v_116) = vec4<f32>(v_117.xyz, (*(v_116)).w);
    let v_118 = fma(r5.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
    r8 = vec4<f32>(v_118.xyz, r8.w);
    let v_119 = &(x4[2u]);
    let v_120 = r8;
    *(v_119) = vec4<f32>(v_120.xyz, (*(v_119)).w);
    let v_121 = fma(r5.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
    r5 = vec4<f32>(v_121.xyz, r5.w);
    let v_122 = &(x4[3u]);
    let v_123 = r5;
    *(v_122) = vec4<f32>(v_123.xyz, (*(v_122)).w);
    let v_124 = abs(r8.yyyy);
    r3.w = max(v_124.w, abs(r8.xxxx).w);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r0.w)));
    let v_125 = (bitcast<u32>(r3.w) != 0u);
    let v_126 = bitcast<f32>(v_1.tint_symbol_9[1i].x);
    r3.w = select(bitcast<f32>(v_1.tint_symbol_9[2i].x), v_126, v_125);
    let v_127 = abs(r7.yyyy);
    r4.w = max(v_127.w, abs(r7.xxxx).w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r0.w)));
    let v_128 = bitcast<u32>(r4.w);
    r3.w = select(r3.w, bitcast<f32>(v_1.tint_symbol_9[3i].x), (v_128 != 0u));
    let v_129 = abs(r6.yyyy);
    r4.w = max(v_129.w, abs(r6.xxxx).w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r0.w)));
    let v_130 = bitcast<u32>(r4.w);
    r3.w = select(r3.w, 0.0f, (v_130 != 0u));
    let v_131 = x4[bitcast<i32>(r3.w)];
    r5 = vec4<f32>(v_131.xyz, r5.w);
    r3.w = f32(bitcast<i32>(r3.w));
    r3.w = (r3.w + 0.5f);
    r3.w = (r3.w * 0.25f);
    r5.x = (r5.x + cb6_6.tint_symbol_5[14u].z);
    r3.w = fma(r5.y, 0.25f, r3.w);
    let v_132 = (r5.xz + vec2<f32>(0.5f, 0.0f));
    let v_133 = r5;
    r5 = vec4<f32>(v_132.x, v_133.y, v_132.y, v_133.w);
    r5.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r3.w);
    let v_134 = r5.xyxx;
    r3.w = textureSampleCompareLevel(t15, s15, v_134.xy, r5.z);
    r1.w = (r1.w + r3.w);
    r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
  }
  r0.w = fma(r1.w, 0.25f, -1.0f);
  o7.z = fma(v4.z, r0.w, 1.0f);
  o0.w = (v1.w * v4.y);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  let v_135 = -(cb3_3.tint_symbol_4[50u].xxxx);
  r2.x = (r1.w + v_135.x);
  r2.x = max(r2.x, 0.0f);
  r1.w = (r2.x / r1.w);
  r1.w = (r1.w * r3.z);
  r2.y = (r1.w * cb3_3.tint_symbol_4[52u].z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
  r2.z = (r2.y * -1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.y = (r2.z / r2.y);
  let v_136 = bitcast<u32>(r1.w);
  r1.w = select(1.0f, r2.y, (v_136 != 0u));
  r2.y = (r2.x * cb3_3.tint_symbol_4[51u].w);
  r1.w = (r1.w * r2.y);
  r1.w = min(r1.w, 1.0f);
  r1.w = (r1.w * 1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = min(r1.w, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.y = (r1.w * cb3_3.tint_symbol_4[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_137 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_137.xyz, r3.w);
  let v_138 = dot(r3.xyz, cb3_3.tint_symbol_4[54u].xyz);
  r0.w = clamp(vec4<f32>(v_138, v_138, v_138, v_138).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_4[54u].w);
  r0.w = exp2(r0.w);
  let v_139 = dot(r3.xyz, cb3_3.tint_symbol_4[53u].xyz);
  r2.z = clamp(vec4<f32>(v_139, v_139, v_139, v_139).z, 0.0f, 1.0f);
  r2.z = log2(r2.z);
  r2.z = (r2.z * cb3_3.tint_symbol_4[53u].w);
  r2.z = exp2(r2.z);
  r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_4[52u].y, 1.0f);
  r1.w = (r1.w * cb3_3.tint_symbol_4[51u].y);
  let v_140 = -(cb3_3.tint_symbol_4[52u].xxxx);
  r2.w = (r2.x + v_140.w);
  r2.w = max(r2.w, 0.0f);
  r2.w = (r2.w * cb3_3.tint_symbol_4[51u].x);
  r2.w = (r2.w * 1.44269502162933349609f);
  r2.w = exp2(r2.w);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  o4.w = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).w, 0.0f, 1.0f);
  let v_141 = -(cb3_3.tint_symbol_4[51u].zzzz);
  r2.x = (r2.x * v_141.x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  let v_142 = ((-(cb3_3.tint_symbol_4[56u].xyzx)).xyz + cb3_3.tint_symbol_4[58u].xyz);
  r3 = vec4<f32>(v_142.xyz, r3.w);
  let v_143 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_4[56u].xyz);
  r3 = vec4<f32>(v_143.xyz, r3.w);
  let v_144 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_4[55u].xyz);
  r4 = vec4<f32>(v_144.xyz, r4.w);
  let v_145 = fma(r2.zzz, r4.xyz, r3.xyz);
  r2 = vec4<f32>(r2.x, v_145.xyz);
  let v_146 = -(cb3_3.tint_symbol_4[57u].xxyz);
  let v_147 = (r2.yzw + v_146.yzw);
  r2 = vec4<f32>(r2.x, v_147.xyz);
  let v_148 = fma(r2.xxx, r2.yzw, cb3_3.tint_symbol_4[57u].xyz);
  r2 = vec4<f32>(v_148.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_4[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_4[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_4[57u].w);
  let v_149 = fma(r1.www, r3.xyz, r2.xyz);
  o4 = vec4<f32>(v_149.xyz, o4.w);
  x5[0u].x = dot(r0.xyz, cb0_0.tint_symbol_2[0u].xyw);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o5.x = v4.x;
  o5 = vec4<f32>(o5.x, v1.xyz);
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7 = vec4<f32>(vec2<f32>(), o7.z, 0.0f);
  let v_150 = r1;
  o8 = vec4<f32>(v_150.xyz, o8.w);
  o8.w = 0.0f;
  o10 = vec4<f32>();
  let v_151 = r0;
  o11 = vec4<f32>(v_151.xy, o11.zw);
  o11 = vec4<f32>(o11.xy, vec2<f32>(0.0f, 1.0f));
  let v_152 = &(x5[0u]);
  *(v_152) = vec4<f32>((*(v_152)).x, vec3<f32>());
  o3.y = v3.y;
  o12[0u] = x5[0u].x;
  o12[1u] = x5[0u].y;
  o12[2u] = x5[0u].z;
  o12[3u] = x5[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
}

struct tint_symbol_12 {
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
  tint_symbol_11 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @location(13u) v13 : vec3<f32>) -> tint_symbol_12 {
  main_inner(v0, v1, v3, v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return tint_symbol_12(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
