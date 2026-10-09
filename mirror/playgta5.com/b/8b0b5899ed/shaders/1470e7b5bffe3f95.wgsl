diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb24_struct {
  tint_symbol_1 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb24_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb3_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

struct cb258_struct {
  tint_symbol_5 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> v7 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<i32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec3<f32>, v6 : vec4<f32>, v : i32) {
  let v_1 = 0i;
  v7.x = bitcast<f32>((v - v_1));
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_2 = r0;
  let v_3 = max(v_2, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_3), vec4<i32>(2147483647i), (v_3 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_2 == v_2))));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r3.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r4.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_4 = -(r3.zzxy);
    let v_5 = (r2.zxy + v_4.yzw);
    r1 = vec4<f32>(r1.x, v_5.xyz);
    let v_6 = ((-(r3.yzxy)).xyz + r4.yzx);
    r5 = vec4<f32>(v_6.xyz, r5.w);
    let v_7 = (r1.yzw * r5.xyz);
    r6 = vec4<f32>(v_7.xyz, r6.w);
    let v_8 = -(r6.xxyz);
    let v_9 = fma(r1.wyz, r5.yzx, v_8.yzw);
    r1 = vec4<f32>(r1.x, v_9.xyz);
    r2.w = dot(r1.yzw, r1.yzw);
    r2.w = inverseSqrt(r2.w);
    let v_10 = (r1.yzw * r2.www);
    r1 = vec4<f32>(r1.x, v_10.xyz);
    let v_11 = (r3.xyz * v1.yyy);
    r3 = vec4<f32>(v_11.xyz, r3.w);
    let v_12 = fma(v1.zzz, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_12.xyz, r2.w);
    let v_13 = fma(v1.xxx, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_13.xyz, r2.w);
    r2.w = (v1.w + -0.5f);
    r2.w = (r2.w * 0.10000000149011611938f);
    let v_14 = -(r1.yzwy);
    let v_15 = fma(r2.www, v_14.xyz, r2.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
  } else {
    r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
    r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
    r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
    r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
    r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r5);
    r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r5);
    r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r4);
    r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r5);
    let v_16 = bitcast<vec3<u32>>(r1.xxx);
    let v_17 = cb4_4.tint_symbol[0u].xyz;
    let v_18 = select(r3.xyz, v_17, (v_16 != vec3<u32>()));
    r5 = vec4<f32>(v_18.xyz, r5.w);
    let v_19 = bitcast<vec3<u32>>(r1.xxx);
    let v_20 = cb4_4.tint_symbol[1u].xyz;
    let v_21 = select(r4.xyz, v_20, (v_19 != vec3<u32>()));
    r6 = vec4<f32>(v_21.xyz, r6.w);
    let v_22 = bitcast<vec3<u32>>(r1.xxx);
    let v_23 = cb4_4.tint_symbol[2u].xyz;
    let v_24 = select(r0.xyz, v_23, (v_22 != vec3<u32>()));
    r7 = vec4<f32>(v_24.xyz, r7.w);
    r1.y = dot(r5.xyz, v4);
    r1.z = dot(r6.xyz, v4);
    r1.w = dot(r7.xyz, v4);
    let v_25 = bitcast<vec4<u32>>(r1.xxxx);
    let v_26 = cb4_4.tint_symbol[0u];
    r3 = select(r3, v_26, (v_25 != vec4<u32>()));
    let v_27 = bitcast<vec4<u32>>(r1.xxxx);
    let v_28 = cb4_4.tint_symbol[1u];
    r4 = select(r4, v_28, (v_27 != vec4<u32>()));
    let v_29 = bitcast<vec4<u32>>(r1.xxxx);
    let v_30 = cb4_4.tint_symbol[2u];
    r0 = select(r0, v_30, (v_29 != vec4<u32>()));
    r5 = vec4<f32>(v0.xyz, r5.w);
    r5.w = 1.0f;
    r2.x = dot(r3, r5);
    r2.y = dot(r4, r5);
    r2.z = dot(r0, r5);
  }
  let v_31 = (r1.yzw * cb9_9.tint_symbol_4[0u].yyy);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (r0.xyz * v6.www);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = fma(r0.xyz, cb13_13.tint_symbol_3[2u].zzz, r2.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  r0.w = bitcast<f32>((bitcast<u32>(v7.x) & 3u));
  r1.x = bitcast<f32>((bitcast<u32>(v7.x) >> 2u));
  r1.y = bitcast<f32>(-(bitcast<i32>(r0.w)));
  let v_34 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<u32>>(r0.www) < vec3<u32>(1u, 2u, 3u))));
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r3.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.y)));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) + -3i));
  let v_35 = bitcast<u32>(r2.y);
  r3.z = select(r0.w, 0.0f, (v_35 != 0u));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
  r3.x = r2.x;
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & bitcast<vec4<u32>>(cb6_6.tint_symbol_2[bitcast<u32>((bitcast<i32>(r1.x) + 4i))])));
  let v_36 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.yw) | bitcast<vec2<u32>>(r1.xz)));
  r1 = vec4<f32>(v_36.xy, r1.zw);
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<i32>(r0.w) << 2u));
  r2 = (cb6_6.tint_symbol_2[0u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r2 = fma(cb6_6.tint_symbol_2[0u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r2);
  r2 = fma(cb6_6.tint_symbol_2[0u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r2);
  r2 = fma(cb6_6.tint_symbol_2[0u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r2);
  r3 = (cb6_6.tint_symbol_2[1u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r3 = fma(cb6_6.tint_symbol_2[1u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r3);
  r3 = fma(cb6_6.tint_symbol_2[1u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r3);
  r3 = fma(cb6_6.tint_symbol_2[1u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r3);
  r4 = (cb6_6.tint_symbol_2[2u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r4 = fma(cb6_6.tint_symbol_2[2u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r4);
  r4 = fma(cb6_6.tint_symbol_2[2u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r4);
  r4 = fma(cb6_6.tint_symbol_2[2u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r4);
  r5 = (cb6_6.tint_symbol_2[3u].yyyy * cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 1i))]);
  r5 = fma(cb6_6.tint_symbol_2[3u].xxxx, cb5_5.tint_symbol_1[bitcast<i32>(r1.x)], r5);
  r5 = fma(cb6_6.tint_symbol_2[3u].zzzz, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r5);
  r1 = fma(cb6_6.tint_symbol_2[3u].wwww, cb5_5.tint_symbol_1[bitcast<u32>((bitcast<i32>(r1.x) + 3i))], r5);
  r3 = (r0.yyyy * r3);
  r2 = fma(r0.xxxx, r2, r3);
  r2 = fma(r0.zzzz, r4, r2);
  o0 = (r1 + r2);
  let v_37 = bitcast<i32>(r0.w);
  o1 = vec4<i32>(v_37, v_37, v_37, v_37);
}

struct tint_symbol_6 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u) @interpolate(flat)
  o1 : vec4<i32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(6u) v6 : vec4<f32>, @builtin(instance_index) v_38 : u32) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v4, v6, i32(v_38));
  return tint_symbol_6(o0, o1);
}
