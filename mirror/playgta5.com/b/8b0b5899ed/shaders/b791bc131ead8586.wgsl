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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_1;

struct cb258_struct {
  tint_symbol_6 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> icb0 : array<vec4<f32>, 6u> = array<vec4<f32>, 6u>(vec4<f32>(0.40000000596046447754f, 0.0f, 1.0f, 1.0f), vec4<f32>(0.20000000298023223877f, 0.40000000596046447754f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.60000002384185791016f, -1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.69999998807907104492f, 1.0f, -1.0f), vec4<f32>(0.10000000149011611938f, 0.80000001192092895508f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.89999997615814208984f, 1.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r1.y)]);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 1i))]);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 2i))]);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.x)], v1.xxxx, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], v1.xxxx, r3);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], v1.xxxx, r4);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.z)], v1.zzzz, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 1i))], v1.zzzz, r3);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 2i))], v1.zzzz, r4);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.w)], v1.wwww, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 1i))], v1.wwww, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 2i))], v1.wwww, r4);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  r4.x = (v7.z * v7.z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r4.x == 0.0f))));
  r4.x = bitcast<f32>((bitcast<u32>(r4.x) & 1065353216u));
  r4.x = fma(cb13_13.tint_symbol_3[9u].w, r4.x, v7.z);
  r4 = vec4<f32>(r4.x, ((v7.zyy + vec3<f32>(-0.5f, 0.52941179275512695312f, -0.03921568766236305237f))).xyz);
  r4.y = clamp(r4.yyyy.y, 0.0f, 1.0f);
  r4.y = (r4.y + r4.y);
  if ((bitcast<u32>(r0.z) != 0u)) {
    r5.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r5.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r5.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r6.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r6.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r6.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r7.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r7.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r7.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_2 = -(r6.zxzy);
    let v_3 = (r5.zxy + v_2.xyw);
    r0 = vec4<f32>(v_3.xy, r0.z, v_3.z);
    let v_4 = ((-(r6.yzxy)).xyz + r7.yzx);
    r8 = vec4<f32>(v_4.xyz, r8.w);
    let v_5 = (r0.xyw * r8.xyz);
    r9 = vec4<f32>(v_5.xyz, r9.w);
    let v_6 = -(r9.xyxz);
    let v_7 = fma(r0.wxy, r8.yzx, v_6.xyw);
    r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
    r5.w = dot(r0.xyw, r0.xyw);
    r5.w = inverseSqrt(r5.w);
    let v_8 = (r0.xyw * r5.www);
    r0 = vec4<f32>(v_8.xy, r0.z, v_8.z);
    let v_9 = (r6.xyz * v1.yyy);
    r6 = vec4<f32>(v_9.xyz, r6.w);
    let v_10 = fma(v1.zzz, r5.xyz, r6.xyz);
    r5 = vec4<f32>(v_10.xyz, r5.w);
    let v_11 = fma(v1.xxx, r7.xyz, r5.xyz);
    r5 = vec4<f32>(v_11.xyz, r5.w);
    r5.w = (v1.w + -0.5f);
    r5.w = (r5.w * 0.10000000149011611938f);
    let v_12 = -(r0.xywx);
    let v_13 = fma(r5.www, v_12.xyz, r5.xyz);
    r5 = vec4<f32>(v_13.xyz, r5.w);
    let v_14 = (r5.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_14.xyz, r6.w);
    let v_15 = fma(r5.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
    r6 = vec4<f32>(v_15.xyz, r6.w);
    let v_16 = fma(r5.zzz, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
    r6 = vec4<f32>(v_16.xyz, r6.w);
    let v_17 = (r6.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r6 = vec4<f32>(v_17.xyz, r6.w);
    let v_18 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r7 = vec4<f32>(v_18.xyz, r7.w);
    let v_19 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r7.xyz);
    r7 = vec4<f32>(v_19.xyz, r7.w);
    let v_20 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r7.xyz);
    r7 = vec4<f32>(v_20.xyz, r7.w);
    let v_21 = ((-(r6.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
    o4 = vec4<f32>(v_21.xyz, o4.w);
    let v_22 = bitcast<vec3<u32>>(r0.zzz);
    let v_23 = cb4_4.tint_symbol[0u].xyz;
    let v_24 = select(r2.xyz, v_23, (v_22 != vec3<u32>()));
    r6 = vec4<f32>(v_24.xyz, r6.w);
    let v_25 = bitcast<vec3<u32>>(r0.zzz);
    let v_26 = cb4_4.tint_symbol[1u].xyz;
    let v_27 = select(r3.xyz, v_26, (v_25 != vec3<u32>()));
    r8 = vec4<f32>(v_27.xyz, r8.w);
    let v_28 = bitcast<vec3<u32>>(r0.zzz);
    let v_29 = cb4_4.tint_symbol[2u].xyz;
    let v_30 = select(r1.xyz, v_29, (v_28 != vec3<u32>()));
    r9 = vec4<f32>(v_30.xyz, r9.w);
    r5.w = dot(r6.xyz, v6.xyz);
    r6.x = dot(r8.xyz, v6.xyz);
    r6.y = dot(r9.xyz, v6.xyz);
    let v_31 = (r6.xxx * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_31.x, r6.y, v_31.yz);
    let v_32 = fma(r5.www, cb1_1.tint_symbol_1[0u].xyz, r6.xzw);
    r6 = vec4<f32>(v_32.x, r6.y, v_32.yz);
    let v_33 = fma(r6.yyy, cb1_1.tint_symbol_1[2u].xyz, r6.xzw);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = (r7.yzx * r6.zxy);
    r8 = vec4<f32>(v_34.xyz, r8.w);
    let v_35 = -(r8.xyzx);
    let v_36 = fma(r6.yzx, r7.zxy, v_35.xyz);
    r8 = vec4<f32>(v_36.xyz, r8.w);
    o6 = ((r8.xyz * v6.www)).xyzx;
    o5 = r6.xyz.xyzx;
  } else {
    let v_37 = bitcast<vec4<u32>>(r0.zzzz);
    let v_38 = cb4_4.tint_symbol[0u];
    r2 = select(r2, v_38, (v_37 != vec4<u32>()));
    let v_39 = bitcast<vec4<u32>>(r0.zzzz);
    let v_40 = cb4_4.tint_symbol[1u];
    r3 = select(r3, v_40, (v_39 != vec4<u32>()));
    let v_41 = bitcast<vec4<u32>>(r0.zzzz);
    let v_42 = cb4_4.tint_symbol[2u];
    r1 = select(r1, v_42, (v_41 != vec4<u32>()));
    r6 = vec4<f32>(v0.xyz, r6.w);
    r6.w = 1.0f;
    r5.x = dot(r2, r6);
    r5.y = dot(r3, r6);
    r5.z = dot(r1, r6);
    let v_43 = (r5.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_43.xyz, r6.w);
    let v_44 = fma(r5.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
    r6 = vec4<f32>(v_44.xyz, r6.w);
    let v_45 = fma(r5.zzz, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
    r6 = vec4<f32>(v_45.xyz, r6.w);
    let v_46 = (r6.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r6 = vec4<f32>(v_46.xyz, r6.w);
    let v_47 = ((-(r6.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
    o4 = vec4<f32>(v_47.xyz, o4.w);
    r0.x = dot(r2.xyz, v5);
    r0.y = dot(r3.xyz, v5);
    r0.w = dot(r1.xyz, v5);
    let v_48 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_48.xyz, r6.w);
    let v_49 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
    r6 = vec4<f32>(v_49.xyz, r6.w);
    let v_50 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
    r7 = vec4<f32>(v_50.xyz, r7.w);
    r0.z = dot(r2.xyz, v6.xyz);
    r1.w = dot(r3.xyz, v6.xyz);
    r1.x = dot(r1.xyz, v6.xyz);
    let v_51 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
    r1 = vec4<f32>(r1.x, v_51.xyz);
    let v_52 = fma(r0.zzz, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
    r1 = vec4<f32>(r1.x, v_52.xyz);
    let v_53 = fma(r1.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.yzw);
    r1 = vec4<f32>(v_53.xyz, r1.w);
    let v_54 = (r7.yzx * r1.zxy);
    r2 = vec4<f32>(v_54.xyz, r2.w);
    let v_55 = -(r2.xyzx);
    let v_56 = fma(r1.yzx, r7.zxy, v_55.xyz);
    r2 = vec4<f32>(v_56.xyz, r2.w);
    o6 = ((r2.xyz * v6.www)).xyzx;
    o5 = r1.xyz.xyzx;
  }
  let v_57 = (r0.xyw * cb9_9.tint_symbol_4[0u].xxx);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  let v_58 = (r4.yyy * r0.xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = fma(r0.xyz, cb13_13.tint_symbol_3[2u].yyy, r5.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = (v8.xxz * cb8_8.tint_symbol_5[0u].xxy);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = (r1.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  r0.w = (v8.y * 6.28318500518798828125f);
  let v_62 = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_5[0u].zzw);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = fma(cb2_2.tint_symbol_2[16u].xxx, r2.xyz, r0.www);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = fma(r2.xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  r0.w = (r4.w * cb2_2.tint_symbol_2[16u].w);
  o8.x = (r0.w * 0.96078431606292724609f);
  o8.y = fma((-(v7.yyyy)).y, 25.5f, 1.0f);
  r0.w = (r4.z * r4.z);
  o8.z = (r4.z * r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = ((-(v4.yyyy)).x + 0.5f);
    r0.x = (r0.x * 0.5f);
    let v_66 = r0.x;
    let v_67 = max(v_66, -2147483648.0f);
    r0.x = bitcast<f32>(select(select(i32(v_67), 2147483647i, (v_67 >= 2147483648.0f)), 0i, !((v_66 == v_66))));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 2i)));
    r1 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_68 = bitcast<vec2<u32>>(r0.yy);
    let v_69 = r1.xy;
    let v_70 = select(r1.zw, v_69, (v_68 != vec2<u32>()));
    o7 = vec4<f32>(v_70.xy, o7.zw);
    r0.y = fract(cb13_13.tint_symbol_3[16u].w);
    let v_71 = fma(r0.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r0.x)].xy);
    r0 = vec4<f32>(r0.xy, v_71.xy);
    r0.y = ((-(r0.yyyy)).y + cb13_13.tint_symbol_3[16u].w);
    r0.y = (1.0f / r0.y);
    let v_72 = fma(r0.yy, vec2<f32>(0.60000002384185791016f, -0.80000001192092895508f), icb0[bitcast<i32>(r0.x)].yx);
    r1 = vec4<f32>(v_72.xy, r1.zw);
    let v_73 = (r0.zw * icb0[bitcast<i32>(r0.x)].zw);
    o7 = vec4<f32>(o7.xy, v_73.xy);
    r7.w = r1.x;
  } else {
    o7 = vec4<f32>();
    r1.y = 0.0f;
    r7.w = 0.0f;
  }
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[0u].w < 0.0f)));
  r0.x = select(v0.z, 0.0f, (bitcast<u32>(r0.x) != 0u));
  let v_74 = -(cb13_13.tint_symbol_3[0u].xyxx);
  let v_75 = (r0.xx + v_74.xy);
  r0 = vec4<f32>(v_75.xy, r0.zw);
  let v_76 = clamp(((r0.xyxx / cb13_13.tint_symbol_3[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_76.xy, r0.zw);
  r0.z = ((-(cb13_13.tint_symbol_3[0u].zzzz)).z + cb13_13.tint_symbol_3[0u].w);
  r0.x = fma(r0.x, r0.z, cb13_13.tint_symbol_3[0u].z);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = (v8.w * cb13_13.tint_symbol_3[2u].w);
  let v_77 = abs(r0.xxxx);
  r1.x = max(r0.y, v_77.x);
  r0.x = clamp(fma(r4.xxxx, vec4<f32>(2.0f), r4.yyyy).x, 0.0f, 1.0f);
  o4.w = (r0.x * cb13_13.tint_symbol_3[2u].x);
  r1 = vec4<f32>(r1.xy, v3.xy);
  o1 = r1.zwxy;
  o2 = r7;
  o3 = vec4<f32>(v7.xyz, o3.w);
  o3.w = 1.0f;
}

struct tint_symbol_7 {
  @builtin(position)
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_7(o0, o1, o2, o3, o4, o5, o6, o7, o8);
}
