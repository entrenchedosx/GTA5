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

var<private> r10 : vec4<f32>;

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

struct cb7_struct {
  tint_symbol_6 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

struct cb7_struct_1 {
  tint_symbol_7 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb7_struct_1;

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

struct tint_symbol_9 {
  tint_symbol_8 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_9;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : vec4<f32>, v13 : vec3<f32>) {
  r0 = vec4<f32>(((v0 + v7.xyz)).xyz, r0.w);
  r1.x = v6.w;
  r1.y = v7.w;
  r1.z = v8.w;
  let v_2 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = ((-(r1.xyzx)).xyz + v8.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r2 = vec4<f32>(((v6.xyz + (-(v7.xyzx)).xyz)).xyz, r2.w);
  let v_4 = (r1.xyz + r2.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz * vec3<f32>(0.5f));
  r4 = vec4<f32>(v_5.xyz, r4.w);
  let v_6 = fma(r3.xyz, vec3<f32>(0.5f), r0.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r5 = vec4<f32>((((-(v10.xwxx)).xy + v10.yz)).xy, r5.zw);
  r5 = vec4<f32>(r5.xy, (((-(v11.xxxw)).zw + v11.yz)).xy);
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
  let v_7 = v13.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r6 = vec4<f32>(v_9.xy, r6.zw);
  r0.w = x0[bitcast<i32>(r6.x)].x;
  r1.w = x1[bitcast<i32>(r6.y)].x;
  let v_10 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(r2.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r1.x);
  r1.x = (1.0f / r1.x);
  o1.x = fma(r0.w, r5.x, v10.x);
  o1.y = fma(r1.w, r5.y, v10.w);
  o1.z = fma(r0.w, r5.z, v11.x);
  o1.w = fma(r1.w, r5.w, v11.w);
  r0.w = x2[bitcast<i32>(r6.x)].x;
  o2.x = fma(r0.w, r5.x, v10.x);
  r0.w = x3[bitcast<i32>(r6.y)].x;
  o2.y = fma(r0.w, r5.y, v10.w);
  let v_12 = ((-(r0.xxyz)).yzw + r3.xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = sqrt(r0.w);
  r0.w = (r1.x * r0.w);
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  let v_13 = ((-(r3.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (r0.xyz * v4.www);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xyz, v4.www, r3.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(r2.xyz, cb8_8.tint_symbol_7[3u].yyy, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(r2.xyz, cb8_8.tint_symbol_7[3u].yyy, r3.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r3 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r3 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r3);
  r3 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r3);
  r3 = (r3 + cb1_1.tint_symbol_1[11u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f >= v1.w)));
  r2.w = (v1.w * v4.w);
  o7.x = (r0.w * cb8_8.tint_symbol_7[4u].y);
  let v_22 = -(cb1_1.tint_symbol_1[15u].xyzx);
  let v_23 = (r0.xyz + v_22.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r4.w = sqrt(r0.w);
  let v_24 = -(cb8_8.tint_symbol_7[6u].yyyy);
  r5.x = (r4.w + v_24.x);
  o7.y = clamp(((r5.xxxx / cb8_8.tint_symbol_7[6u].xxxx)).y, 0.0f, 1.0f);
  let v_25 = -(r2.xyzx);
  let v_26 = (r0.xyz + v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (r5.w < 0.00100000004749745131f)));
  r5.w = inverseSqrt(r5.w);
  let v_27 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = bitcast<vec3<u32>>(r6.xxx);
  let v_29 = select(r5.xyz, v2, (v_28 != vec3<u32>()));
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = (r5.xyz + (-(v2.xyzx)).xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  let v_31 = fma(v5.xxx, r5.xyz, v2);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_32 = (r5.www * r5.xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  r7 = vec4<f32>(((v1.xyz * v1.xyz)).xyz, r7.w);
  let v_33 = (cb2_2.tint_symbol_3[15u].zy * cb8_8.tint_symbol_7[2u].zz);
  r5 = vec4<f32>(v_33.xy, r5.zw);
  r6.w = clamp(((cb2_2.tint_symbol_3[16u].zzzz + cb3_3.tint_symbol_4[49u].wwww)).w, 0.0f, 1.0f);
  r5.y = (r5.y * r6.w);
  r6.w = clamp(fma(r0.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r6.w = sqrt(r6.w);
  r6.w = fma((-(r6.wwww)).w, cb6_6.tint_symbol_5[3u].z, 1.0f);
  r6.w = (r6.w * cb8_8.tint_symbol_7[2u].y);
  let v_34 = -(cb3_3.tint_symbol_4[0u].xyzx);
  let v_35 = dot(r6.xyz, v_34.xyz);
  r7.w = clamp(vec4<f32>(v_35, v_35, v_35, v_35).w, 0.0f, 1.0f);
  r7.w = (r7.w + cb13_13.tint_symbol[0u].x);
  r8.x = (cb13_13.tint_symbol[0u].x + 1.0f);
  r8.x = (r8.x * r8.x);
  r7.w = clamp(((r7.wwww / r8.xxxx)).w, 0.0f, 1.0f);
  let v_36 = (r7.www * r7.xyz);
  r8 = vec4<f32>(r8.x, v_36.xyz);
  let v_37 = (r8.yzw * cb3_3.tint_symbol_4[1u].xyz);
  r8 = vec4<f32>(r8.x, v_37.xyz);
  o9 = ((r6.www * r8.yzw)).xyzx;
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
  let v_38 = ((-(r0.xxyz)).yzw + cb3_3.tint_symbol_4[3u].xyz);
  r8 = vec4<f32>(r8.x, v_38.xyz);
  let v_39 = -(cb3_3.tint_symbol_4[3u].xyzx);
  let v_40 = (r0.xyz + v_39.xyz);
  r9 = vec4<f32>(v_40.xyz, r9.w);
  r9.x = dot(r9.xyz, cb3_3.tint_symbol_4[11u].xyz);
  r9.x = clamp(((r9.xxxx / cb3_3.tint_symbol_4[19u].wwww)).x, 0.0f, 1.0f);
  r9.x = (r9.x * cb3_3.tint_symbol_4[19u].w);
  let v_41 = fma(cb3_3.tint_symbol_4[11u].xyz, r9.xxx, cb3_3.tint_symbol_4[3u].xyz);
  r9 = vec4<f32>(v_41.xyz, r9.w);
  let v_42 = ((-(r0.xyzx)).xyz + r9.xyz);
  r9 = vec4<f32>(v_42.xyz, r9.w);
  let v_43 = bitcast<vec3<u32>>(r7.www);
  let v_44 = r8.yzw;
  let v_45 = select(r9.xyz, v_44, (v_43 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_45.xyz);
  r7.w = dot(r8.yzw, r8.yzw);
  let v_46 = (r8.yzw + vec3<f32>(0.00000099999999747524f));
  r8 = vec4<f32>(r8.x, v_46.xyz);
  r9.x = dot(r8.yzw, r8.yzw);
  r9.x = inverseSqrt(r9.x);
  let v_47 = (r8.yzw * r9.xxx);
  r8 = vec4<f32>(r8.x, v_47.xyz);
  r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r9.x = ((-(cb3_3.tint_symbol_4[11u].wwww)).x + 1.0f);
  r9.x = fma(r9.x, r7.w, cb3_3.tint_symbol_4[11u].w);
  r7.w = (r7.w / r9.x);
  let v_48 = -(cb3_3.tint_symbol_4[11u].xyzx);
  r9.x = dot(r8.yzw, v_48.xyz);
  r9.x = clamp(fma(r9.xxxx, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).x, 0.0f, 1.0f);
  let v_49 = dot(r8.yzw, r6.xyz);
  r8.y = clamp(vec4<f32>(v_49, v_49, v_49, v_49).y, 0.0f, 1.0f);
  r8.y = (r8.y + cb13_13.tint_symbol[0u].x);
  r8.y = clamp(((r8.yyyy / r8.xxxx)).y, 0.0f, 1.0f);
  r8.y = (r9.x * r8.y);
  r7.w = (r7.w * r8.y);
  let v_50 = (r7.www * cb3_3.tint_symbol_4[19u].xyz);
  r8 = vec4<f32>(r8.x, v_50.xyz);
  let v_51 = (r7.xyz * r8.yzw);
  r8 = vec4<f32>(r8.x, v_51.xyz);
  let v_52 = bitcast<vec3<u32>>(r6.www);
  let v_53 = select(r8.yzw, vec3<f32>(), (v_52 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_53.xyz);
  r7.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  if ((bitcast<u32>(r7.w) != 0u)) {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.w)));
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
    let v_54 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[4u].xyz);
    r9 = vec4<f32>(v_54.xyz, r9.w);
    let v_55 = -(cb3_3.tint_symbol_4[4u].xyzx);
    let v_56 = (r0.xyz + v_55.xyz);
    r10 = vec4<f32>(v_56.xyz, r10.w);
    r9.w = dot(r10.xyz, cb3_3.tint_symbol_4[12u].xyz);
    r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[20u].wwww)).w, 0.0f, 1.0f);
    r9.w = (r9.w * cb3_3.tint_symbol_4[20u].w);
    let v_57 = fma(cb3_3.tint_symbol_4[12u].xyz, r9.www, cb3_3.tint_symbol_4[4u].xyz);
    r10 = vec4<f32>(v_57.xyz, r10.w);
    let v_58 = ((-(r0.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_58.xyz, r10.w);
    let v_59 = bitcast<vec3<u32>>(r7.www);
    let v_60 = r9.xyz;
    let v_61 = select(r10.xyz, v_60, (v_59 != vec3<u32>()));
    r9 = vec4<f32>(v_61.xyz, r9.w);
    r7.w = dot(r9.xyz, r9.xyz);
    let v_62 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_62.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_63 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_63.xyz, r9.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.w = ((-(cb3_3.tint_symbol_4[12u].wwww)).w + 1.0f);
    r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_4[12u].w);
    r7.w = (r7.w / r9.w);
    let v_64 = -(cb3_3.tint_symbol_4[12u].xyzx);
    r9.w = dot(r9.xyz, v_64.xyz);
    r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).w, 0.0f, 1.0f);
    let v_65 = dot(r9.xyz, r6.xyz);
    r9.x = clamp(vec4<f32>(v_65, v_65, v_65, v_65).x, 0.0f, 1.0f);
    r9.x = (r9.x + cb13_13.tint_symbol[0u].x);
    r9.x = clamp(((r9.xxxx / r8.xxxx)).x, 0.0f, 1.0f);
    r9.x = (r9.w * r9.x);
    r7.w = (r7.w * r9.x);
    let v_66 = (r7.www * cb3_3.tint_symbol_4[20u].xyz);
    r9 = vec4<f32>(v_66.xyz, r9.w);
    let v_67 = fma(r9.xyz, r7.xyz, r8.yzw);
    r9 = vec4<f32>(v_67.xyz, r9.w);
    let v_68 = bitcast<vec3<u32>>(r6.www);
    let v_69 = r8.yzw;
    let v_70 = select(r9.xyz, v_69, (v_68 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_70.xyz);
  } else {
    r6.w = bitcast<f32>(v_1.tint_symbol_8[0i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v_1.tint_symbol_8[0i].x);
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.w)));
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[21u].w == 0.0f)));
    let v_71 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[5u].xyz);
    r9 = vec4<f32>(v_71.xyz, r9.w);
    let v_72 = -(cb3_3.tint_symbol_4[5u].xyzx);
    let v_73 = (r0.xyz + v_72.xyz);
    r10 = vec4<f32>(v_73.xyz, r10.w);
    r9.w = dot(r10.xyz, cb3_3.tint_symbol_4[13u].xyz);
    r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[21u].wwww)).w, 0.0f, 1.0f);
    r9.w = (r9.w * cb3_3.tint_symbol_4[21u].w);
    let v_74 = fma(cb3_3.tint_symbol_4[13u].xyz, r9.www, cb3_3.tint_symbol_4[5u].xyz);
    r10 = vec4<f32>(v_74.xyz, r10.w);
    let v_75 = ((-(r0.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_75.xyz, r10.w);
    let v_76 = bitcast<vec3<u32>>(r7.www);
    let v_77 = r9.xyz;
    let v_78 = select(r10.xyz, v_77, (v_76 != vec3<u32>()));
    r9 = vec4<f32>(v_78.xyz, r9.w);
    r7.w = dot(r9.xyz, r9.xyz);
    let v_79 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_79.xyz, r9.w);
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_80 = (r9.www * r9.xyz);
    r9 = vec4<f32>(v_80.xyz, r9.w);
    r7.w = clamp(fma(-(r7.wwww), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r9.w = ((-(cb3_3.tint_symbol_4[13u].wwww)).w + 1.0f);
    r9.w = fma(r9.w, r7.w, cb3_3.tint_symbol_4[13u].w);
    r7.w = (r7.w / r9.w);
    let v_81 = -(cb3_3.tint_symbol_4[13u].xyzx);
    r9.w = dot(r9.xyz, v_81.xyz);
    r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).w, 0.0f, 1.0f);
    let v_82 = dot(r9.xyz, r6.xyz);
    r9.x = clamp(vec4<f32>(v_82, v_82, v_82, v_82).x, 0.0f, 1.0f);
    r9.x = (r9.x + cb13_13.tint_symbol[0u].x);
    r9.x = clamp(((r9.xxxx / r8.xxxx)).x, 0.0f, 1.0f);
    r9.x = (r9.w * r9.x);
    r7.w = (r7.w * r9.x);
    let v_83 = (r7.www * cb3_3.tint_symbol_4[21u].xyz);
    r9 = vec4<f32>(v_83.xyz, r9.w);
    let v_84 = fma(r9.xyz, r7.xyz, r8.yzw);
    r9 = vec4<f32>(v_84.xyz, r9.w);
    let v_85 = bitcast<vec3<u32>>(r6.www);
    let v_86 = r8.yzw;
    let v_87 = select(r9.xyz, v_86, (v_85 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_87.xyz);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r7.w)));
    r7.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
    let v_88 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
    r9 = vec4<f32>(v_88.xyz, r9.w);
    let v_89 = -(cb3_3.tint_symbol_4[6u].xyzx);
    let v_90 = (r0.xyz + v_89.xyz);
    r10 = vec4<f32>(v_90.xyz, r10.w);
    r9.w = dot(r10.xyz, cb3_3.tint_symbol_4[14u].xyz);
    r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[22u].wwww)).w, 0.0f, 1.0f);
    r9.w = (r9.w * cb3_3.tint_symbol_4[22u].w);
    let v_91 = fma(cb3_3.tint_symbol_4[14u].xyz, r9.www, cb3_3.tint_symbol_4[6u].xyz);
    r10 = vec4<f32>(v_91.xyz, r10.w);
    let v_92 = ((-(r0.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_92.xyz, r10.w);
    let v_93 = bitcast<vec3<u32>>(r7.www);
    let v_94 = r9.xyz;
    let v_95 = select(r10.xyz, v_94, (v_93 != vec3<u32>()));
    r9 = vec4<f32>(v_95.xyz, r9.w);
    r0.x = dot(r9.xyz, r9.xyz);
    let v_96 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_96.xyz, r9.w);
    r0.y = dot(r9.xyz, r9.xyz);
    r0.y = inverseSqrt(r0.y);
    let v_97 = (r0.yyy * r9.xyz);
    r9 = vec4<f32>(v_97.xyz, r9.w);
    r0.x = clamp(fma(-(r0.xxxx), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r0.y = ((-(cb3_3.tint_symbol_4[14u].wwww)).y + 1.0f);
    r0.y = fma(r0.y, r0.x, cb3_3.tint_symbol_4[14u].w);
    r0.x = (r0.x / r0.y);
    let v_98 = -(cb3_3.tint_symbol_4[14u].xyzx);
    r0.y = dot(r9.xyz, v_98.xyz);
    r0.y = clamp(fma(r0.yyyy, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).y, 0.0f, 1.0f);
    let v_99 = dot(r9.xyz, r6.xyz);
    r7.w = clamp(vec4<f32>(v_99, v_99, v_99, v_99).w, 0.0f, 1.0f);
    r7.w = (r7.w + cb13_13.tint_symbol[0u].x);
    r7.w = clamp(((r7.wwww / r8.xxxx)).w, 0.0f, 1.0f);
    r0.y = (r0.y * r7.w);
    r0.x = (r0.x * r0.y);
    let v_100 = (r0.xxx * cb3_3.tint_symbol_4[22u].xyz);
    r9 = vec4<f32>(v_100.xyz, r9.w);
    let v_101 = fma(r9.xyz, r7.xyz, r8.yzw);
    r9 = vec4<f32>(v_101.xyz, r9.w);
    let v_102 = bitcast<vec3<u32>>(r6.www);
    let v_103 = r8.yzw;
    let v_104 = select(r9.xyz, v_103, (v_102 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_104.xyz);
  }
  r0.x = fma(r5.z, r5.w, cb3_3.tint_symbol_4[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_4[44u].w);
  r0.x = max(r0.x, 0.0f);
  let v_105 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.xxx, cb3_3.tint_symbol_4[48u].xyz);
  r9 = vec4<f32>(v_105.xyz, r9.w);
  r0.y = ((-(cb2_2.tint_symbol_3[16u].zzzz)).y + 1.0f);
  let v_106 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.xxx, cb3_3.tint_symbol_4[46u].xyz);
  r10 = vec4<f32>(v_106.xyz, r10.w);
  let v_107 = (r10.xyz * cb2_2.tint_symbol_3[16u].zzz);
  r10 = vec4<f32>(v_107.xyz, r10.w);
  let v_108 = fma(r9.xyz, r0.yyy, r10.xyz);
  r9 = vec4<f32>(v_108.xyz, r9.w);
  let v_109 = (r5.yyy * r9.xyz);
  r5 = vec4<f32>(r5.x, v_109.xyz);
  let v_110 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.xxx, cb3_3.tint_symbol_4[44u].xyz);
  r9 = vec4<f32>(v_110.xyz, r9.w);
  r10.x = cb3_3.tint_symbol_4[46u].w;
  r10.y = cb3_3.tint_symbol_4[47u].w;
  r10.z = cb3_3.tint_symbol_4[48u].w;
  let v_111 = dot(r10.xyz, r6.xyz);
  r0.x = clamp(vec4<f32>(v_111, v_111, v_111, v_111).x, 0.0f, 1.0f);
  let v_112 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.xxx, r9.xyz);
  r6 = vec4<f32>(v_112.xyz, r6.w);
  let v_113 = fma(r6.xyz, r5.xxx, r5.yzw);
  r5 = vec4<f32>(v_113.xyz, r5.w);
  let v_114 = (r7.xyz * r5.xyz);
  r5 = vec4<f32>(v_114.xyz, r5.w);
  let v_115 = fma(r8.yzw, cb8_8.tint_symbol_7[3u].xxx, r5.xyz);
  o0 = vec4<f32>(v_115.xyz, o0.w);
  r0.x = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).x, 1.5f, 1.0f);
  r0.x = (r0.x * 0.5f);
  let v_116 = r2;
  r5 = vec4<f32>(v_116.xyz, r5.w);
  r0.y = 0.0f;
  r5.w = 0.0f;
  loop {
    r6.x = f32(bitcast<i32>(r5.w));
    r6.x = bitcast<f32>(select(0u, 4294967295u, (r6.x >= 4.0f)));
    if ((bitcast<u32>(r6.x) != 0u)) {
      break;
    }
    let v_117 = (r5.xyz + v_22.xyz);
    r6 = vec4<f32>(v_117.xyz, r6.w);
    let v_118 = (r6.yyy * cb6_6.tint_symbol_5[1u].xyz);
    r7 = vec4<f32>(v_118.xyz, r7.w);
    let v_119 = fma(r6.xxx, cb6_6.tint_symbol_5[0u].xyz, r7.xyz);
    r6 = vec4<f32>(v_119.xy, r6.z, v_119.z);
    let v_120 = fma(r6.zzz, cb6_6.tint_symbol_5[2u].xyz, r6.xyw);
    r6 = vec4<f32>(v_120.xyz, r6.w);
    let v_121 = fma(r6.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
    r7 = vec4<f32>(v_121.xyz, r7.w);
    let v_122 = &(x4[0u]);
    let v_123 = r7;
    *(v_122) = vec4<f32>(v_123.xyz, (*(v_122)).w);
    let v_124 = fma(r6.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
    r8 = vec4<f32>(v_124.xyz, r8.w);
    let v_125 = &(x4[1u]);
    let v_126 = r8;
    *(v_125) = vec4<f32>(v_126.xyz, (*(v_125)).w);
    let v_127 = fma(r6.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
    let v_128 = &(x4[2u]);
    let v_129 = r9;
    *(v_128) = vec4<f32>(v_129.xyz, (*(v_128)).w);
    let v_130 = fma(r6.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
    r6 = vec4<f32>(v_130.xyz, r6.w);
    let v_131 = &(x4[3u]);
    let v_132 = r6;
    *(v_131) = vec4<f32>(v_132.xyz, (*(v_131)).w);
    let v_133 = abs(r9.yyyy);
    r6.x = max(v_133.x, abs(r9.xxxx).x);
    r6.x = bitcast<f32>(select(0u, 4294967295u, (r6.x < r0.x)));
    let v_134 = (bitcast<u32>(r6.x) != 0u);
    let v_135 = bitcast<f32>(v_1.tint_symbol_8[1i].x);
    r6.x = select(bitcast<f32>(v_1.tint_symbol_8[2i].x), v_135, v_134);
    let v_136 = abs(r8.yyyy);
    r6.y = max(v_136.y, abs(r8.xxxx).y);
    r6.y = bitcast<f32>(select(0u, 4294967295u, (r6.y < r0.x)));
    let v_137 = bitcast<u32>(r6.y);
    r6.x = select(r6.x, bitcast<f32>(v_1.tint_symbol_8[3i].x), (v_137 != 0u));
    let v_138 = abs(r7.yyyy);
    r6.y = max(v_138.y, abs(r7.xxxx).y);
    r6.y = bitcast<f32>(select(0u, 4294967295u, (r6.y < r0.x)));
    let v_139 = bitcast<u32>(r6.y);
    r6.x = select(r6.x, 0.0f, (v_139 != 0u));
    let v_140 = x4[bitcast<i32>(r6.x)];
    r6 = vec4<f32>(r6.x, v_140.xyz);
    r6.x = f32(bitcast<i32>(r6.x));
    r6.x = (r6.x + 0.5f);
    r6.x = (r6.x * 0.25f);
    r6.y = (r6.y + cb6_6.tint_symbol_5[14u].z);
    r6.x = fma(r6.z, 0.25f, r6.x);
    let v_141 = (r6.yw + vec2<f32>(0.5f, 0.0f));
    let v_142 = r7;
    r7 = vec4<f32>(v_141.x, v_142.y, v_141.y, v_142.w);
    r7.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r6.x);
    let v_143 = r7.xyxx;
    r6.x = textureSampleCompareLevel(t15, s15, v_143.xy, r7.z);
    r0.y = (r0.y + r6.x);
    let v_144 = fma(r1.xyz, vec3<f32>(0.25f), r5.xyz);
    r5 = vec4<f32>(v_144.xyz, r5.w);
    r5.w = bitcast<f32>((bitcast<i32>(r5.w) + 1i));
  }
  r0.x = fma(r0.y, 0.25f, -1.0f);
  o7.z = fma(v4.z, r0.x, 1.0f);
  r0.x = (r2.w * v4.y);
  let v_145 = bitcast<u32>(r1.w);
  o0.w = select(r0.x, 0.0f, (v_145 != 0u));
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_6[5u].x))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r1.x = (cb9_9.tint_symbol_6[6u].x * cb9_9.tint_symbol_6[6u].x);
    let v_146 = (r4.xyz / r4.www);
    r2 = vec4<f32>(v_146.xyz, r2.w);
    r0.x = abs(r2.zzzz).x;
    r0.x = (1.0f / r0.x);
    r0.y = ((-(r0.zzzz)).y + cb9_9.tint_symbol_6[6u].y);
    let v_147 = -(cb9_9.tint_symbol_6[6u].yyyy);
    r0.z = (cb1_1.tint_symbol_1[15u].z + v_147.z);
    let v_148 = abs(r0.zzzz);
    r0.z = (r0.x * v_148.z);
    r1.w = dot((-(cb1_1.tint_symbol_1[14u].xyzx)).xyz, r2.xyz);
    let v_149 = abs(r1.wwww);
    r2.x = (r0.z * v_149.x);
    r0.x = fma(abs(r0.yyyy).x, r0.x, r0.z);
    let v_150 = abs(r1.wwww);
    r0.x = (r0.x * v_150.x);
    r0.y = fma(r2.x, cb9_9.tint_symbol_6[1u].z, cb9_9.tint_symbol_6[1u].w);
    let v_151 = -(r2.xxxx);
    r0.y = (r0.y / v_151.y);
    r0.z = fma(r0.x, cb9_9.tint_symbol_6[1u].z, cb9_9.tint_symbol_6[1u].w);
    let v_152 = -(r0.xxxx);
    r0.x = (r0.z / v_152.x);
    r0.x = ((-(r0.yyyy)).x + r0.x);
    r1.y = abs(r0.xxxx).y;
    r1.z = (abs(r0.yyyy).z * r1.x);
    let v_153 = (r1.xy * r1.yz);
    r0 = vec4<f32>(v_153.xy, r0.zw);
    let v_154 = (r0.xy * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
    r0 = vec4<f32>(v_154.xy, r0.zw);
    let v_155 = exp2(r0.xy);
    o4 = vec4<f32>(v_155.xy, o4.zw);
    o4 = vec4<f32>(o4.xy, vec2<f32>());
  } else {
    let v_156 = -(cb3_3.tint_symbol_4[50u].xxxx);
    r0.x = (r4.w + v_156.x);
    r0.x = max(r0.x, 0.0f);
    r0.y = (r0.x / r4.w);
    r0.y = (r0.y * r4.z);
    r0.z = (r0.y * cb3_3.tint_symbol_4[52u].z);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.yyyy).y)));
    r1.x = (r0.z * -1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r0.z = (r1.x / r0.z);
    let v_157 = bitcast<u32>(r0.y);
    r0.y = select(1.0f, r0.z, (v_157 != 0u));
    r0.z = (r0.x * cb3_3.tint_symbol_4[51u].w);
    r0.y = (r0.y * r0.z);
    r0.y = min(r0.y, 1.0f);
    r0.y = (r0.y * 1.44269502162933349609f);
    r0.y = exp2(r0.y);
    r0.y = min(r0.y, 1.0f);
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    r0.z = (r0.y * cb3_3.tint_symbol_4[52u].y);
    r0.w = inverseSqrt(r0.w);
    let v_158 = (r0.www * r4.xyz);
    r1 = vec4<f32>(v_158.xyz, r1.w);
    let v_159 = dot(r1.xyz, cb3_3.tint_symbol_4[54u].xyz);
    r0.w = clamp(vec4<f32>(v_159, v_159, v_159, v_159).w, 0.0f, 1.0f);
    r0.w = log2(r0.w);
    r0.w = (r0.w * cb3_3.tint_symbol_4[54u].w);
    r0.w = exp2(r0.w);
    let v_160 = dot(r1.xyz, cb3_3.tint_symbol_4[53u].xyz);
    r1.x = clamp(vec4<f32>(v_160, v_160, v_160, v_160).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb3_3.tint_symbol_4[53u].w);
    r1.x = exp2(r1.x);
    r0.y = fma((-(r0.yyyy)).y, cb3_3.tint_symbol_4[52u].y, 1.0f);
    r0.y = (r0.y * cb3_3.tint_symbol_4[51u].y);
    let v_161 = -(cb3_3.tint_symbol_4[52u].xxxx);
    r1.y = (r0.x + v_161.y);
    r1.y = max(r1.y, 0.0f);
    r1.y = (r1.y * cb3_3.tint_symbol_4[51u].x);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    o4.w = clamp(fma(r0.yyyy, r1.yyyy, r0.zzzz).w, 0.0f, 1.0f);
    let v_162 = -(cb3_3.tint_symbol_4[51u].zzzz);
    r0.x = (r0.x * v_162.x);
    r0.x = (r0.x * 1.44269502162933349609f);
    r0.x = exp2(r0.x);
    r0.x = ((-(r0.xxxx)).x + 1.0f);
    let v_163 = ((-(cb3_3.tint_symbol_4[56u].xxyz)).yzw + cb3_3.tint_symbol_4[58u].xyz);
    r1 = vec4<f32>(r1.x, v_163.xyz);
    let v_164 = fma(r0.www, r1.yzw, cb3_3.tint_symbol_4[56u].xyz);
    r1 = vec4<f32>(r1.x, v_164.xyz);
    let v_165 = ((-(r1.yzwy)).xyz + cb3_3.tint_symbol_4[55u].xyz);
    r2 = vec4<f32>(v_165.xyz, r2.w);
    let v_166 = fma(r1.xxx, r2.xyz, r1.yzw);
    r1 = vec4<f32>(v_166.xyz, r1.w);
    let v_167 = -(cb3_3.tint_symbol_4[57u].xyzx);
    let v_168 = (r1.xyz + v_167.xyz);
    r1 = vec4<f32>(v_168.xyz, r1.w);
    let v_169 = fma(r0.xxx, r1.xyz, cb3_3.tint_symbol_4[57u].xyz);
    r0 = vec4<f32>(v_169.x, r0.y, v_169.yz);
    r1.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_4[55u].w);
    r1.y = ((-(r0.zzzz)).y + cb3_3.tint_symbol_4[56u].w);
    r1.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_4[57u].w);
    let v_170 = fma(r0.yyy, r1.xyz, r0.xzw);
    o4 = vec4<f32>(v_170.xyz, o4.w);
  }
  x5[0u].x = dot(r3, cb0_0.tint_symbol_2[0u]);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o5.x = v4.x;
  o5 = vec4<f32>(o5.x, v1.xyz);
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7.w = r3.w;
  o8 = vec4<f32>();
  o10 = vec4<f32>();
  o11 = r3;
  let v_171 = &(x5[0u]);
  *(v_171) = vec4<f32>((*(v_171)).x, vec3<f32>());
  o3.y = v3.y;
  o12[0u] = x5[0u].x;
  o12[1u] = x5[0u].y;
  o12[2u] = x5[0u].z;
  o12[3u] = x5[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
}

struct tint_symbol_11 {
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
  tint_symbol_10 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @location(13u) v13 : vec3<f32>) -> tint_symbol_11 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return tint_symbol_11(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
