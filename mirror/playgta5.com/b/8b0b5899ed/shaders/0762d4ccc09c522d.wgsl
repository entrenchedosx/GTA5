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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb15_struct {
  tint_symbol_3 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb7_struct;

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

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_6;

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
  let v_16 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(r2.xyz, cb8_8.tint_symbol_4[3u].yyy, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(r2.xyz, cb8_8.tint_symbol_4[3u].yyy, r3.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r3 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r3);
  r3 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r3);
  r3 = (r3 + cb1_1.tint_symbol[11u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f >= v1.w)));
  r2.w = (v1.w * v4.w);
  o7.x = (r0.w * cb8_8.tint_symbol_4[4u].y);
  let v_22 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_23 = (r0.xyz + v_22.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r4.w = sqrt(r0.w);
  let v_24 = -(cb8_8.tint_symbol_4[6u].yyyy);
  r5.x = (r4.w + v_24.x);
  o7.y = clamp(((r5.xxxx / cb8_8.tint_symbol_4[6u].xxxx)).y, 0.0f, 1.0f);
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
  r5 = vec4<f32>(v_32.xyz, r5.w);
  let v_33 = (r5.yzx * vec3<f32>(1.0f, 0.0f, 0.0f));
  r6 = vec4<f32>(v_33.xyz, r6.w);
  let v_34 = -(r6.xyzx);
  let v_35 = fma(r5.zxy, vec3<f32>(0.0f, 1.0f, 0.0f), v_34.xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  r5.w = dot(r6.xy, r6.xy);
  r5.w = inverseSqrt(r5.w);
  let v_36 = (r5.www * r6.xyz);
  o10 = vec4<f32>(v_36.xyz, o10.w);
  r5.w = fma((-(cb6_6.tint_symbol_3[14u].zzzz)).w, 1.5f, 1.0f);
  r5.w = (r5.w * 0.5f);
  let v_37 = r2;
  r6 = vec4<f32>(v_37.xyz, r6.w);
  r6.w = 0.0f;
  r7.x = 0.0f;
  loop {
    r7.y = f32(bitcast<i32>(r7.x));
    r7.y = bitcast<f32>(select(0u, 4294967295u, (r7.y >= 4.0f)));
    if ((bitcast<u32>(r7.y) != 0u)) {
      break;
    }
    let v_38 = -(cb1_1.tint_symbol[15u].xxyz);
    let v_39 = (r6.xyz + v_38.yzw);
    r7 = vec4<f32>(r7.x, v_39.xyz);
    let v_40 = (r7.zzz * cb6_6.tint_symbol_3[1u].xyz);
    r8 = vec4<f32>(v_40.xyz, r8.w);
    let v_41 = fma(r7.yyy, cb6_6.tint_symbol_3[0u].xyz, r8.xyz);
    r8 = vec4<f32>(v_41.xyz, r8.w);
    let v_42 = fma(r7.www, cb6_6.tint_symbol_3[2u].xyz, r8.xyz);
    r7 = vec4<f32>(r7.x, v_42.xyz);
    let v_43 = fma(r7.yzw, cb6_6.tint_symbol_3[4u].xyz, cb6_6.tint_symbol_3[8u].xyz);
    r8 = vec4<f32>(v_43.xyz, r8.w);
    let v_44 = &(x4[0u]);
    let v_45 = r8;
    *(v_44) = vec4<f32>(v_45.xyz, (*(v_44)).w);
    let v_46 = fma(r7.yzw, cb6_6.tint_symbol_3[5u].xyz, cb6_6.tint_symbol_3[9u].xyz);
    r9 = vec4<f32>(v_46.xyz, r9.w);
    let v_47 = &(x4[1u]);
    let v_48 = r9;
    *(v_47) = vec4<f32>(v_48.xyz, (*(v_47)).w);
    let v_49 = fma(r7.yzw, cb6_6.tint_symbol_3[6u].xyz, cb6_6.tint_symbol_3[10u].xyz);
    r10 = vec4<f32>(v_49.xyz, r10.w);
    let v_50 = &(x4[2u]);
    let v_51 = r10;
    *(v_50) = vec4<f32>(v_51.xyz, (*(v_50)).w);
    let v_52 = fma(r7.yzw, cb6_6.tint_symbol_3[7u].xyz, cb6_6.tint_symbol_3[11u].xyz);
    r7 = vec4<f32>(r7.x, v_52.xyz);
    let v_53 = &(x4[3u]);
    let v_54 = r7;
    *(v_53) = vec4<f32>(v_54.yzw, (*(v_53)).w);
    let v_55 = abs(r10.yyyy);
    r7.y = max(v_55.y, abs(r10.xxxx).y);
    r7.y = bitcast<f32>(select(0u, 4294967295u, (r7.y < r5.w)));
    let v_56 = (bitcast<u32>(r7.y) != 0u);
    let v_57 = bitcast<f32>(v_1.tint_symbol_5[0i].x);
    r7.y = select(bitcast<f32>(v_1.tint_symbol_5[1i].x), v_57, v_56);
    let v_58 = abs(r9.yyyy);
    r7.z = max(v_58.z, abs(r9.xxxx).z);
    r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
    let v_59 = bitcast<u32>(r7.z);
    r7.y = select(r7.y, bitcast<f32>(v_1.tint_symbol_5[2i].x), (v_59 != 0u));
    let v_60 = abs(r8.yyyy);
    r7.z = max(v_60.z, abs(r8.xxxx).z);
    r7.z = bitcast<f32>(select(0u, 4294967295u, (r7.z < r5.w)));
    let v_61 = bitcast<u32>(r7.z);
    r7.y = select(r7.y, 0.0f, (v_61 != 0u));
    let v_62 = x4[bitcast<i32>(r7.y)];
    r8 = vec4<f32>(v_62.xyz, r8.w);
    r7.y = f32(bitcast<i32>(r7.y));
    r7.y = (r7.y + 0.5f);
    r7.y = (r7.y * 0.25f);
    r8.x = (r8.x + cb6_6.tint_symbol_3[14u].z);
    r7.y = fma(r8.y, 0.25f, r7.y);
    let v_63 = (r8.xz + vec2<f32>(0.5f, 0.0f));
    let v_64 = r8;
    r8 = vec4<f32>(v_63.x, v_64.y, v_63.y, v_64.w);
    r8.y = fma(cb6_6.tint_symbol_3[14u].w, 0.25f, r7.y);
    let v_65 = r8.xyxx;
    r7.y = textureSampleCompareLevel(t15, s15, v_65.xy, r8.z);
    r6.w = (r6.w + r7.y);
    let v_66 = fma(r1.xyz, vec3<f32>(0.25f), r6.xyz);
    r6 = vec4<f32>(v_66.xyz, r6.w);
    r7.x = bitcast<f32>((bitcast<i32>(r7.x) + 1i));
  }
  r1.x = fma(r6.w, 0.25f, -1.0f);
  o7.z = fma(v4.z, r1.x, 1.0f);
  r1.x = (r2.w * v4.y);
  let v_67 = bitcast<u32>(r1.w);
  o0.w = select(r1.x, 0.0f, (v_67 != 0u));
  let v_68 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.x = (r4.w + v_68.x);
  r1.x = max(r1.x, 0.0f);
  r1.y = (r1.x / r4.w);
  r1.y = (r1.y * r4.z);
  r1.z = (r1.y * cb3_3.tint_symbol_2[52u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.yyyy).y)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_69 = bitcast<u32>(r1.y);
  r1.y = select(1.0f, r1.z, (v_69 != 0u));
  r1.z = (r1.x * cb3_3.tint_symbol_2[51u].w);
  r1.y = (r1.y * r1.z);
  r1.y = min(r1.y, 1.0f);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = min(r1.y, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.z = (r1.y * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_70 = (r0.www * r4.xyz);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = dot(r2.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_71, v_71, v_71, v_71).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_72 = dot(r2.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r1.w = clamp(vec4<f32>(v_72, v_72, v_72, v_72).w, 0.0f, 1.0f);
  r1.w = log2(r1.w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[53u].w);
  r1.w = exp2(r1.w);
  r1.y = fma((-(r1.yyyy)).y, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.y = (r1.y * cb3_3.tint_symbol_2[51u].y);
  let v_73 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.x = (r1.x + v_73.x);
  r2.x = max(r2.x, 0.0f);
  r2.x = (r2.x * cb3_3.tint_symbol_2[51u].x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  o4.w = clamp(fma(r1.yyyy, r2.xxxx, r1.zzzz).w, 0.0f, 1.0f);
  let v_74 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.x = (r1.x * v_74.x);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_75 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = fma(r0.www, r2.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r2 = vec4<f32>(v_76.xyz, r2.w);
  let v_77 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r4 = vec4<f32>(v_77.xyz, r4.w);
  let v_78 = fma(r1.www, r4.xyz, r2.xyz);
  r2 = vec4<f32>(v_78.xyz, r2.w);
  let v_79 = -(cb3_3.tint_symbol_2[57u].xyzx);
  let v_80 = (r2.xyz + v_79.xyz);
  r2 = vec4<f32>(v_80.xyz, r2.w);
  let v_81 = fma(r1.xxx, r2.xyz, cb3_3.tint_symbol_2[57u].xyz);
  r1 = vec4<f32>(v_81.x, r1.y, v_81.yz);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r2.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_2[56u].w);
  r2.z = ((-(r1.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_82 = fma(r1.yyy, r2.xyz, r1.xzw);
  o4 = vec4<f32>(v_82.xyz, o4.w);
  x5[0u].x = dot(r3, cb0_0.tint_symbol_1[0u]);
  o0 = vec4<f32>(v1.xyz, o0.w);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o5 = v4;
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7.w = r3.w;
  let v_83 = r0;
  o8 = vec4<f32>(v_83.xyz, o8.w);
  o8.w = 0.0f;
  o10.w = 0.0f;
  o11 = r3;
  let v_84 = &(x5[0u]);
  *(v_84) = vec4<f32>((*(v_84)).x, vec3<f32>());
  o9 = r5.xyz.xyzx;
  o3.y = v3.y;
  o12[0u] = x5[0u].x;
  o12[1u] = x5[0u].y;
  o12[2u] = x5[0u].z;
  o12[3u] = x5[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
}

struct tint_symbol_8 {
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
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @location(13u) v13 : vec3<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
