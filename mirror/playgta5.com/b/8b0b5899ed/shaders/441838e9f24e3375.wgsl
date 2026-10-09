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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb17_struct;

struct cb258_struct {
  tint_symbol_4 : array<vec4<f32>, 258u>,
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

var<private> o8 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
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
  let v_3 = bitcast<vec4<u32>>(r0.zzzz);
  let v_4 = cb4_4.tint_symbol[0u];
  r2 = select(r2, v_4, (v_3 != vec4<u32>()));
  let v_5 = bitcast<vec4<u32>>(r0.zzzz);
  let v_6 = cb4_4.tint_symbol[1u];
  r3 = select(r3, v_6, (v_5 != vec4<u32>()));
  let v_7 = bitcast<vec4<u32>>(r0.zzzz);
  let v_8 = cb4_4.tint_symbol[2u];
  r1 = select(r1, v_8, (v_7 != vec4<u32>()));
  r4.x = dot(r2.xyz, v6.xyz);
  r4.y = dot(r3.xyz, v6.xyz);
  r4.z = dot(r1.xyz, v6.xyz);
  let v_9 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  let v_11 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  if ((bitcast<u32>(r0.z) != 0u)) {
    r5.x = dot(cb11_11.tint_symbol_4[0u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r5.y = dot(cb11_11.tint_symbol_4[1u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r5.z = dot(cb11_11.tint_symbol_4[2u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r6.x = dot(cb11_11.tint_symbol_4[0u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r6.y = dot(cb11_11.tint_symbol_4[1u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r6.z = dot(cb11_11.tint_symbol_4[2u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r7.x = dot(cb11_11.tint_symbol_4[0u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r7.y = dot(cb11_11.tint_symbol_4[1u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r7.z = dot(cb11_11.tint_symbol_4[2u].xyz, cb11_11.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_12 = -(r6.zxyz);
    let v_13 = (r5.zxy + v_12.xyz);
    r0 = vec4<f32>(v_13.xyz, r0.w);
    let v_14 = ((-(r6.yzxy)).xyz + r7.yzx);
    r8 = vec4<f32>(v_14.xyz, r8.w);
    let v_15 = (r0.xyz * r8.xyz);
    r9 = vec4<f32>(v_15.xyz, r9.w);
    let v_16 = -(r9.xyzx);
    let v_17 = fma(r0.zxy, r8.yzx, v_16.xyz);
    r0 = vec4<f32>(v_17.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_18 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    let v_19 = (r6.xyz * v1.yyy);
    r6 = vec4<f32>(v_19.xyz, r6.w);
    let v_20 = fma(v1.zzz, r5.xyz, r6.xyz);
    r5 = vec4<f32>(v_20.xyz, r5.w);
    let v_21 = fma(v1.xxx, r7.xyz, r5.xyz);
    r5 = vec4<f32>(v_21.xyz, r5.w);
    r0.w = (v1.w + -0.5f);
    r0.w = (r0.w * 0.10000000149011611938f);
    let v_22 = -(r0.xyzx);
    let v_23 = fma(r0.www, v_22.xyz, r5.xyz);
    r5 = vec4<f32>(v_23.xyz, r5.w);
    let v_24 = (r5.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_24.xyz, r6.w);
    let v_25 = fma(r5.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
    r6 = vec4<f32>(v_25.xyz, r6.w);
    let v_26 = fma(r5.zzz, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
    r6 = vec4<f32>(v_26.xyz, r6.w);
    let v_27 = (r6.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r6 = vec4<f32>(v_27.xyz, r6.w);
    let v_28 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r7 = vec4<f32>(v_28.xyz, r7.w);
    let v_29 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r7.xyz);
    r0 = vec4<f32>(v_29.xy, r0.z, v_29.z);
    let v_30 = fma(r0.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyw);
    r0 = vec4<f32>(v_30.xyz, r0.w);
    let v_31 = (r0.yzx * r4.zxy);
    r7 = vec4<f32>(v_31.xyz, r7.w);
    let v_32 = -(r7.xyzx);
    let v_33 = fma(r4.yzx, r0.zxy, v_32.xyz);
    r7 = vec4<f32>(v_33.xyz, r7.w);
    o5 = ((r7.xyz * v6.www)).xyzx;
    o4 = r4.xyz.xyzx;
  } else {
    r7 = vec4<f32>(v0.xyz, r7.w);
    r7.w = 1.0f;
    r5.x = dot(r2, r7);
    r5.y = dot(r3, r7);
    r5.z = dot(r1, r7);
    let v_34 = (r5.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r7 = vec4<f32>(v_34.xyz, r7.w);
    let v_35 = fma(r5.xxx, cb1_1.tint_symbol_1[0u].xyz, r7.xyz);
    r7 = vec4<f32>(v_35.xyz, r7.w);
    let v_36 = fma(r5.zzz, cb1_1.tint_symbol_1[2u].xyz, r7.xyz);
    r7 = vec4<f32>(v_36.xyz, r7.w);
    let v_37 = (r7.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r6 = vec4<f32>(v_37.xyz, r6.w);
    r1.w = dot(r2.xyz, v5);
    r2.x = dot(r3.xyz, v5);
    r1.x = dot(r1.xyz, v5);
    let v_38 = (r2.xxx * cb1_1.tint_symbol_1[1u].xyz);
    r2 = vec4<f32>(v_38.xyz, r2.w);
    let v_39 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
    r1 = vec4<f32>(r1.x, v_39.xyz);
    let v_40 = fma(r1.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.yzw);
    r0 = vec4<f32>(v_40.xyz, r0.w);
    let v_41 = (r0.yzx * r4.zxy);
    r1 = vec4<f32>(v_41.xyz, r1.w);
    let v_42 = -(r1.xyzx);
    let v_43 = fma(r4.yzx, r0.zxy, v_42.xyz);
    r1 = vec4<f32>(v_43.xyz, r1.w);
    o5 = ((r1.xyz * v6.www)).xyzx;
    o4 = r4.xyz.xyzx;
  }
  r1 = (r5.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r5.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r1 = fma(r5.zzzz, cb1_1.tint_symbol_1[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol_1[11u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r2.x = ((-(v4.yyyy)).x + 0.5f);
    r2.x = (r2.x * 0.5f);
    let v_44 = r2.x;
    let v_45 = max(v_44, -2147483648.0f);
    r2.x = bitcast<f32>(select(select(i32(v_45), 2147483647i, (v_45 >= 2147483648.0f)), 0i, !((v_44 == v_44))));
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= 2i)));
    r3 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_46 = bitcast<vec2<u32>>(r2.yy);
    let v_47 = r3.xy;
    let v_48 = select(r3.zw, v_47, (v_46 != vec2<u32>()));
    o6 = vec4<f32>(v_48.xy, o6.zw);
    let v_49 = fract(cb13_13.tint_symbol_3[16u].zw);
    let v_50 = r2;
    r2 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r2.y)));
    let v_51 = fma(r2.zz, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r2.x)].xy);
    r3 = vec4<f32>(v_51.xy, r3.zw);
    r2.w = select(1.0f, 0.5f, (bitcast<u32>(r2.y) != 0u));
    r3.w = bitcast<f32>((bitcast<u32>(r2.y) & 1056964608u));
    r3.z = 0.0f;
    let v_52 = fma(r3.xy, r2.ww, r3.zw);
    r3 = vec4<f32>(v_52.xy, r3.zw);
    r2.z = ((-(r2.zzzz)).z + cb13_13.tint_symbol_3[16u].w);
    r2.z = (1.0f / r2.z);
    let v_53 = fma(r2.zz, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r2.x)].xy);
    r2 = vec4<f32>(r2.xy, v_53.xy);
    r3.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    r2.y = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r3.z)));
    r2.y = select(1.0f, 0.5f, (bitcast<u32>(r2.y) != 0u));
    let v_54 = (r2.yy * r2.zw);
    r4 = vec4<f32>(v_54.xy, r4.zw);
    let v_55 = (r3.xy * icb0[bitcast<i32>(r2.x)].zw);
    o6 = vec4<f32>(o6.xy, v_55.xy);
    r0.w = r4.y;
  } else {
    o6 = vec4<f32>();
    r4.x = 0.0f;
    r0.w = 0.0f;
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_2[0u]);
  let v_56 = r4;
  r4 = vec4<f32>(v_56.x, v3.xy, v_56.w);
  r4.w = 0.0f;
  o0 = r4.yzwx;
  o1 = r0;
  let v_57 = r6;
  o2 = vec4<f32>(v_57.xyz, o2.w);
  o2.w = 1.0f;
  o3 = vec4<f32>(v7.xyz, o3.w);
  o3.w = 1.0f;
  o7 = r1;
  let v_58 = &(x0[0u]);
  *(v_58) = vec4<f32>((*(v_58)).x, vec3<f32>());
  o8[0u] = x0[0u].x;
  o8[1u] = x0[0u].y;
  o8[2u] = x0[0u].z;
  o8[3u] = x0[0u].w;
  v = vec4<f32>(o8[0u], o8[1u], o8[2u], o8[3u]);
}

struct tint_symbol_6 {
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
  @builtin(position)
  o7 : vec4<f32>,
  @builtin(clip_distances)
  o8 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8, v);
}
