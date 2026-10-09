diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

var<private> icb0 : array<vec4<f32>, 6u> = array<vec4<f32>, 6u>(vec4<f32>(0.40000000596046447754f, 0.0f, 1.0f, 1.0f), vec4<f32>(0.20000000298023223877f, 0.40000000596046447754f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.60000002384185791016f, -1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.69999998807907104492f, 1.0f, -1.0f), vec4<f32>(0.10000000149011611938f, 0.80000001192092895508f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.89999997615814208984f, 1.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
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
  r3 = vec4<f32>(v0.xyz, r3.w);
  r3.w = 1.0f;
  r4.x = dot(r1, r3);
  r4.y = dot(r2, r3);
  r4.z = dot(r0, r3);
  let v_2 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  let v_3 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  o4 = (((-(r3.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz)).xyzx;
  r1.x = dot(r1.xyz, v5);
  r1.y = dot(r2.xyz, v5);
  r1.z = dot(r0.xyz, v5);
  let v_6 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r1.xyz * cb9_9.tint_symbol_4[0u].yyy);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r1.xyz * v7.www);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r1.xyz, cb13_13.tint_symbol_3[2u].zzz, r4.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r2 = vec4<f32>(((v6.yy + vec2<f32>(0.52941179275512695312f, -0.03921568766236305237f))).xy, r2.zw);
  r1.w = (r2.y * cb2_2.tint_symbol_2[16u].w);
  o6.x = (r1.w * 0.96078431606292724609f);
  o6.y = fma((-(v6.yyyy)).y, 25.5f, 1.0f);
  r1.w = (r2.x * r2.x);
  o6.z = (r2.x * r1.w);
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r2);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol_1[11u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = ((-(v4.yyyy)).x + 0.5f);
    r1.x = (r1.x * 0.5f);
    let v_12 = r1.x;
    let v_13 = max(v_12, -2147483648.0f);
    r1.x = bitcast<f32>(select(select(i32(v_13), 2147483647i, (v_13 >= 2147483648.0f)), 0i, !((v_12 == v_12))));
    r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) >= 2i)));
    r2 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_14 = bitcast<vec2<u32>>(r1.yy);
    let v_15 = r2.xy;
    let v_16 = select(r2.zw, v_15, (v_14 != vec2<u32>()));
    o5 = vec4<f32>(v_16.xy, o5.zw);
    r1.y = fract(cb13_13.tint_symbol_3[16u].w);
    let v_17 = fma(r1.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r1.x)].xy);
    r1 = vec4<f32>(r1.xy, v_17.xy);
    r1.y = ((-(r1.yyyy)).y + cb13_13.tint_symbol_3[16u].w);
    r1.y = (1.0f / r1.y);
    let v_18 = fma(r1.yy, vec2<f32>(0.60000002384185791016f, -0.80000001192092895508f), icb0[bitcast<i32>(r1.x)].yx);
    r2 = vec4<f32>(v_18.xy, r2.zw);
    let v_19 = (r1.zw * icb0[bitcast<i32>(r1.x)].zw);
    o5 = vec4<f32>(o5.xy, v_19.xy);
    r0.w = r2.x;
  } else {
    o5 = vec4<f32>();
    r2.y = 0.0f;
    r0.w = 0.0f;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[0u].w < 0.0f)));
  r1.x = select(v0.z, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_20 = -(cb13_13.tint_symbol_3[0u].xyxx);
  let v_21 = (r1.xx + v_20.xy);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = clamp(((r1.xyxx / cb13_13.tint_symbol_3[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_22.xy, r1.zw);
  r1.z = ((-(cb13_13.tint_symbol_3[0u].zzzz)).z + cb13_13.tint_symbol_3[0u].w);
  r1.x = fma(r1.x, r1.z, cb13_13.tint_symbol_3[0u].z);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r1.y = (v7.w * cb13_13.tint_symbol_3[2u].w);
  let v_23 = abs(r1.xxxx);
  r2.x = max(r1.y, v_23.x);
  r2 = vec4<f32>(r2.xy, v3.xy);
  o1 = r2.zwxy;
  o2 = r0;
  o3 = vec4<f32>(v6.xyz, o3.w);
  o3.w = 1.0f;
}

struct tint_symbol_5 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6);
}
