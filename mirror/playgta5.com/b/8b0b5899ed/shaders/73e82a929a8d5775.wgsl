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

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

struct cb258_struct {
  tint_symbol_5 : array<vec4<f32>, 258u>,
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
  if ((bitcast<u32>(r0.z) != 0u)) {
    r4.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r4.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r4.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r5.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r5.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r5.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r6.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r6.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r6.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_2 = -(r5.zxzy);
    let v_3 = (r4.zxy + v_2.xyw);
    r0 = vec4<f32>(v_3.xy, r0.z, v_3.z);
    let v_4 = ((-(r5.yzxy)).xyz + r6.yzx);
    r7 = vec4<f32>(v_4.xyz, r7.w);
    let v_5 = (r0.xyw * r7.xyz);
    r8 = vec4<f32>(v_5.xyz, r8.w);
    let v_6 = -(r8.xyxz);
    let v_7 = fma(r0.wxy, r7.yzx, v_6.xyw);
    r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
    r4.w = dot(r0.xyw, r0.xyw);
    r4.w = inverseSqrt(r4.w);
    let v_8 = (r0.xyw * r4.www);
    r0 = vec4<f32>(v_8.xy, r0.z, v_8.z);
    let v_9 = (r5.xyz * v1.yyy);
    r5 = vec4<f32>(v_9.xyz, r5.w);
    let v_10 = fma(v1.zzz, r4.xyz, r5.xyz);
    r4 = vec4<f32>(v_10.xyz, r4.w);
    let v_11 = fma(v1.xxx, r6.xyz, r4.xyz);
    r4 = vec4<f32>(v_11.xyz, r4.w);
    r4.w = (v1.w + -0.5f);
    r4.w = (r4.w * 0.10000000149011611938f);
    let v_12 = -(r0.xywx);
    let v_13 = fma(r4.www, v_12.xyz, r4.xyz);
    r4 = vec4<f32>(v_13.xyz, r4.w);
    let v_14 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r5 = vec4<f32>(v_14.xyz, r5.w);
    let v_15 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
    r5 = vec4<f32>(v_15.xyz, r5.w);
    let v_16 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r5.xyz);
    r5 = vec4<f32>(v_16.xyz, r5.w);
    let v_17 = (r5.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r5 = vec4<f32>(v_17.xyz, r5.w);
    let v_18 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_18.xyz, r6.w);
    let v_19 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
    r6 = vec4<f32>(v_19.xyz, r6.w);
    let v_20 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
    r6 = vec4<f32>(v_20.xyz, r6.w);
    o4 = (((-(r5.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
    let v_21 = bitcast<vec3<u32>>(r0.zzz);
    let v_22 = cb4_4.tint_symbol[0u].xyz;
    let v_23 = select(r2.xyz, v_22, (v_21 != vec3<u32>()));
    r0 = vec4<f32>(v_23.xy, r0.z, v_23.z);
    let v_24 = bitcast<vec3<u32>>(r0.zzz);
    let v_25 = cb4_4.tint_symbol[1u].xyz;
    let v_26 = select(r3.xyz, v_25, (v_24 != vec3<u32>()));
    r5 = vec4<f32>(v_26.xyz, r5.w);
    let v_27 = bitcast<vec3<u32>>(r0.zzz);
    let v_28 = cb4_4.tint_symbol[2u].xyz;
    let v_29 = select(r1.xyz, v_28, (v_27 != vec3<u32>()));
    r7 = vec4<f32>(v_29.xyz, r7.w);
    r0.x = dot(r0.xyw, v6.xyz);
    r0.y = dot(r5.xyz, v6.xyz);
    r0.w = dot(r7.xyz, v6.xyz);
    let v_30 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r5 = vec4<f32>(v_30.xyz, r5.w);
    let v_31 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
    r5 = vec4<f32>(v_31.xyz, r5.w);
    let v_32 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r5.xyz);
    r0 = vec4<f32>(v_32.xy, r0.z, v_32.z);
    let v_33 = (r6.yzx * r0.wxy);
    r5 = vec4<f32>(v_33.xyz, r5.w);
    let v_34 = -(r5.xyzx);
    let v_35 = fma(r0.ywx, r6.zxy, v_34.xyz);
    r5 = vec4<f32>(v_35.xyz, r5.w);
    o6 = ((r5.xyz * v6.www)).xyzx;
    o5 = r0.xyw.xyzx;
  } else {
    let v_36 = bitcast<vec4<u32>>(r0.zzzz);
    let v_37 = cb4_4.tint_symbol[0u];
    r2 = select(r2, v_37, (v_36 != vec4<u32>()));
    let v_38 = bitcast<vec4<u32>>(r0.zzzz);
    let v_39 = cb4_4.tint_symbol[1u];
    r3 = select(r3, v_39, (v_38 != vec4<u32>()));
    let v_40 = bitcast<vec4<u32>>(r0.zzzz);
    let v_41 = cb4_4.tint_symbol[2u];
    r0 = select(r1, v_41, (v_40 != vec4<u32>()));
    r1 = vec4<f32>(v0.xyz, r1.w);
    r1.w = 1.0f;
    r4.x = dot(r2, r1);
    r4.y = dot(r3, r1);
    r4.z = dot(r0, r1);
    let v_42 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r1 = vec4<f32>(v_42.xyz, r1.w);
    let v_43 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_43.xyz, r1.w);
    let v_44 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
    r1 = vec4<f32>(v_44.xyz, r1.w);
    let v_45 = (r1.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r1 = vec4<f32>(v_45.xyz, r1.w);
    o4 = (((-(r1.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
    r0.w = dot(r2.xyz, v5);
    r1.x = dot(r3.xyz, v5);
    r1.y = dot(r0.xyz, v5);
    let v_46 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
    r1 = vec4<f32>(v_46.x, r1.y, v_46.yz);
    let v_47 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xzw);
    r1 = vec4<f32>(v_47.x, r1.y, v_47.yz);
    let v_48 = fma(r1.yyy, cb1_1.tint_symbol_1[2u].xyz, r1.xzw);
    r6 = vec4<f32>(v_48.xyz, r6.w);
    r0.w = dot(r2.xyz, v6.xyz);
    r1.x = dot(r3.xyz, v6.xyz);
    r0.x = dot(r0.xyz, v6.xyz);
    let v_49 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
    r1 = vec4<f32>(v_49.xyz, r1.w);
    let v_50 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
    r0 = vec4<f32>(r0.x, v_50.xyz);
    let v_51 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
    r0 = vec4<f32>(v_51.xyz, r0.w);
    let v_52 = (r6.yzx * r0.zxy);
    r1 = vec4<f32>(v_52.xyz, r1.w);
    let v_53 = -(r1.xyzx);
    let v_54 = fma(r0.yzx, r6.zxy, v_53.xyz);
    r1 = vec4<f32>(v_54.xyz, r1.w);
    o6 = ((r1.xyz * v6.www)).xyzx;
    o5 = r0.xyz.xyzx;
  }
  let v_55 = (v8.xxz * cb8_8.tint_symbol_4[0u].xxy);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = (r0.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r0 = vec4<f32>(v_56.xyz, r0.w);
  r0.w = (v8.y * 6.28318500518798828125f);
  let v_57 = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_4[0u].zzw);
  r1 = vec4<f32>(v_57.xyz, r1.w);
  let v_58 = fma(cb2_2.tint_symbol_2[16u].xxx, r1.xyz, r0.www);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = sin(r1.xyzx.xyz);
  r1 = vec4<f32>(v_59.xyz, r1.w);
  let v_60 = fma(r1.xyz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  r1 = vec4<f32>(((v7.yy + vec2<f32>(0.52941179275512695312f, -0.03921568766236305237f))).xy, r1.zw);
  r0.w = (r1.y * cb2_2.tint_symbol_2[16u].w);
  o8.x = (r0.w * 0.96078431606292724609f);
  o8.y = fma((-(v7.yyyy)).y, 25.5f, 1.0f);
  r0.w = (r1.x * r1.x);
  o8.z = (r1.x * r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = ((-(v4.yyyy)).x + 0.5f);
    r0.x = (r0.x * 0.5f);
    let v_61 = r0.x;
    let v_62 = max(v_61, -2147483648.0f);
    r0.x = bitcast<f32>(select(select(i32(v_62), 2147483647i, (v_62 >= 2147483648.0f)), 0i, !((v_61 == v_61))));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 2i)));
    r1 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_63 = bitcast<vec2<u32>>(r0.yy);
    let v_64 = r1.xy;
    let v_65 = select(r1.zw, v_64, (v_63 != vec2<u32>()));
    o7 = vec4<f32>(v_65.xy, o7.zw);
    r0.y = fract(cb13_13.tint_symbol_3[16u].w);
    let v_66 = fma(r0.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r0.x)].xy);
    r0 = vec4<f32>(r0.xy, v_66.xy);
    r0.y = ((-(r0.yyyy)).y + cb13_13.tint_symbol_3[16u].w);
    r0.y = (1.0f / r0.y);
    let v_67 = fma(r0.yy, vec2<f32>(0.60000002384185791016f, -0.80000001192092895508f), icb0[bitcast<i32>(r0.x)].yx);
    r1 = vec4<f32>(v_67.xy, r1.zw);
    let v_68 = (r0.zw * icb0[bitcast<i32>(r0.x)].zw);
    o7 = vec4<f32>(o7.xy, v_68.xy);
    r6.w = r1.x;
  } else {
    o7 = vec4<f32>();
    r1.y = 0.0f;
    r6.w = 0.0f;
  }
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[0u].w < 0.0f)));
  r0.x = select(v0.z, 0.0f, (bitcast<u32>(r0.x) != 0u));
  let v_69 = -(cb13_13.tint_symbol_3[0u].xyxx);
  let v_70 = (r0.xx + v_69.xy);
  r0 = vec4<f32>(v_70.xy, r0.zw);
  let v_71 = clamp(((r0.xyxx / cb13_13.tint_symbol_3[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_71.xy, r0.zw);
  r0.z = ((-(cb13_13.tint_symbol_3[0u].zzzz)).z + cb13_13.tint_symbol_3[0u].w);
  r0.x = fma(r0.x, r0.z, cb13_13.tint_symbol_3[0u].z);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = (v8.w * cb13_13.tint_symbol_3[2u].w);
  let v_72 = abs(r0.xxxx);
  r1.x = max(r0.y, v_72.x);
  r1 = vec4<f32>(r1.xy, v3.xy);
  o1 = r1.zwxy;
  o2 = r6;
  o3 = vec4<f32>(v7.xyz, o3.w);
  o3.w = 1.0f;
}

struct tint_symbol_6 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8);
}
