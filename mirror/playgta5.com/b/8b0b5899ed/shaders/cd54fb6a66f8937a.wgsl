diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r2);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r3);
  r3.x = (v7.z * v7.z);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((r3.x == 0.0f))));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r3.x = fma(cb13_13.tint_symbol_3[9u].w, r3.x, v7.z);
  r3 = vec4<f32>(r3.x, ((v7.zyy + vec3<f32>(-0.5f, 0.52941179275512695312f, -0.03921568766236305237f))).xyz);
  r3.y = clamp(r3.yyyy.y, 0.0f, 1.0f);
  r3.y = (r3.y + r3.y);
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = dot(r1, r4);
  r5.y = dot(r2, r4);
  r5.z = dot(r0, r4);
  let v_2 = (r5.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = fma(r5.xxx, cb1_1.tint_symbol_1[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  let v_4 = fma(r5.zzz, cb1_1.tint_symbol_1[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_4.xyz, r4.w);
  let v_5 = (r4.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r4 = vec4<f32>(v_5.xyz, r4.w);
  let v_6 = ((-(r4.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  o4 = vec4<f32>(v_6.xyz, o4.w);
  r4.x = dot(r1.xyz, v5);
  r4.y = dot(r2.xyz, v5);
  r4.z = dot(r0.xyz, v5);
  let v_7 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r6 = vec4<f32>(v_7.xyz, r6.w);
  let v_8 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_8.xyz, r6.w);
  let v_9 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_9.xyz, r6.w);
  r0.w = dot(r1.xyz, v6.xyz);
  r1.x = dot(r2.xyz, v6.xyz);
  r0.x = dot(r0.xyz, v6.xyz);
  let v_10 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_11.xyz);
  let v_12 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r6.yzx * r0.zxy);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = -(r1.xyzx);
  let v_15 = fma(r0.yzx, r6.zxy, v_14.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  o6 = ((r1.xyz * v6.www)).xyzx;
  let v_16 = (r4.xyz * cb9_9.tint_symbol_4[0u].xxx);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r3.yyy * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r1.xyz, cb13_13.tint_symbol_3[2u].yyy, r5.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r4.xyz * cb9_9.tint_symbol_4[0u].yyy);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = (r2.xyz * v8.www);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(r2.xyz, cb13_13.tint_symbol_3[2u].zzz, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = (v8.xxz * cb8_8.tint_symbol_5[0u].xxy);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = (r2.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r0.w = (v8.y * 6.28318500518798828125f);
  let v_24 = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_5[0u].zzw);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = fma(cb2_2.tint_symbol_2[16u].xxx, r4.xyz, r0.www);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = sin(r4.xyzx.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = fma(r4.xyz, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r0.w = (r3.w * cb2_2.tint_symbol_2[16u].w);
  o8.x = (r0.w * 0.96078431606292724609f);
  o8.y = fma((-(v7.yyyy)).y, 25.5f, 1.0f);
  r0.w = (r3.z * r3.z);
  o8.z = (r3.z * r0.w);
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r2);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = ((-(v4.yyyy)).w + 0.5f);
    r0.w = (r0.w * 0.5f);
    let v_28 = r0.w;
    let v_29 = max(v_28, -2147483648.0f);
    r0.w = bitcast<f32>(select(select(i32(v_29), 2147483647i, (v_29 >= 2147483648.0f)), 0i, !((v_28 == v_28))));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) >= 2i)));
    r2 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_30 = bitcast<vec2<u32>>(r1.xx);
    let v_31 = r2.xy;
    let v_32 = select(r2.zw, v_31, (v_30 != vec2<u32>()));
    o7 = vec4<f32>(v_32.xy, o7.zw);
    r1.x = fract(cb13_13.tint_symbol_3[16u].w);
    let v_33 = fma(r1.xx, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r0.w)].xy);
    let v_34 = r1;
    r1 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
    r1.x = ((-(r1.xxxx)).x + cb13_13.tint_symbol_3[16u].w);
    r1.x = (1.0f / r1.x);
    let v_35 = fma(r1.xx, vec2<f32>(0.60000002384185791016f, -0.80000001192092895508f), icb0[bitcast<i32>(r0.w)].yx);
    r2 = vec4<f32>(v_35.xy, r2.zw);
    let v_36 = (r1.yz * icb0[bitcast<i32>(r0.w)].zw);
    o7 = vec4<f32>(o7.xy, v_36.xy);
    r6.w = r2.x;
  } else {
    o7 = vec4<f32>();
    r2.y = 0.0f;
    r6.w = 0.0f;
  }
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[0u].w < 0.0f)));
  r0.w = select(v0.z, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_37 = -(cb13_13.tint_symbol_3[0u].xyxx);
  let v_38 = (r0.ww + v_37.xy);
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = clamp(((r1.xyxx / cb13_13.tint_symbol_3[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_39.xy, r1.zw);
  r0.w = ((-(cb13_13.tint_symbol_3[0u].zzzz)).w + cb13_13.tint_symbol_3[0u].w);
  r0.w = fma(r1.x, r0.w, cb13_13.tint_symbol_3[0u].z);
  r1.x = ((-(r1.yyyy)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r1.x = (v8.w * cb13_13.tint_symbol_3[2u].w);
  r2.x = max(abs(r0.wwww).x, r1.x);
  r0.w = clamp(fma(r3.xxxx, vec4<f32>(2.0f), r3.yyyy).w, 0.0f, 1.0f);
  o4.w = (r0.w * cb13_13.tint_symbol_3[2u].x);
  r2 = vec4<f32>(r2.xy, v3.xy);
  o1 = r2.zwxy;
  o2 = r6;
  o3 = vec4<f32>(v7.xyz, o3.w);
  o3.w = 1.0f;
  o5 = r0.xyz.xyzx;
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
