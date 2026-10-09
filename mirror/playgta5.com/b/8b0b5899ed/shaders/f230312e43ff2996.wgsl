enable clip_distances;
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

var<private> icb0 : array<vec4<f32>, 6u> = array<vec4<f32>, 6u>(vec4<f32>(0.40000000596046447754f, 0.0f, 1.0f, 1.0f), vec4<f32>(0.20000000298023223877f, 0.40000000596046447754f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.60000002384185791016f, -1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.69999998807907104492f, 1.0f, -1.0f), vec4<f32>(0.10000000149011611938f, 0.80000001192092895508f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.89999997615814208984f, 1.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
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
  r1.w = dot(r1, r3);
  r2.w = dot(r2, r3);
  r0.w = dot(r0, r3);
  let v_3 = (r2.www * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
  o2 = vec4<f32>(v_6.xyz, o2.w);
  r1.x = dot(r1.xyz, v5);
  r1.y = dot(r2.xyz, v5);
  r0.x = dot(r0.xyz, v5);
  let v_7 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2 = (r2.wwww * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r1.wwww, cb1_1.tint_symbol_1[8u], r2);
  r0 = fma(r0.wwww, cb1_1.tint_symbol_1[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = ((-(v4.yyyy)).x + 0.5f);
    r1.x = (r1.x * 0.5f);
    let v_10 = r1.x;
    let v_11 = max(v_10, -2147483648.0f);
    r1.x = bitcast<f32>(select(select(i32(v_11), 2147483647i, (v_11 >= 2147483648.0f)), 0i, !((v_10 == v_10))));
    r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) >= 2i)));
    r2 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_12 = bitcast<vec2<u32>>(r1.yy);
    let v_13 = r2.xy;
    let v_14 = select(r2.zw, v_13, (v_12 != vec2<u32>()));
    o4 = vec4<f32>(v_14.xy, o4.zw);
    let v_15 = fract(cb13_13.tint_symbol_3[16u].zw);
    let v_16 = r1;
    r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r1.y)));
    let v_17 = fma(r1.zz, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r1.x)].xy);
    r2 = vec4<f32>(v_17.xy, r2.zw);
    r1.w = select(1.0f, 0.5f, (bitcast<u32>(r1.y) != 0u));
    r2.w = bitcast<f32>((bitcast<u32>(r1.y) & 1056964608u));
    r2.z = 0.0f;
    let v_18 = fma(r2.xy, r1.ww, r2.zw);
    r2 = vec4<f32>(v_18.xy, r2.zw);
    r1.z = ((-(r1.zzzz)).z + cb13_13.tint_symbol_3[16u].w);
    r1.z = (1.0f / r1.z);
    let v_19 = fma(r1.zz, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r1.x)].xy);
    r1 = vec4<f32>(r1.xy, v_19.xy);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.z)));
    r1.y = select(1.0f, 0.5f, (bitcast<u32>(r1.y) != 0u));
    let v_20 = (r1.yy * r1.zw);
    r4 = vec4<f32>(v_20.xy, r4.zw);
    let v_21 = (r2.xy * icb0[bitcast<i32>(r1.x)].zw);
    o4 = vec4<f32>(o4.xy, v_21.xy);
    r3.w = r4.y;
  } else {
    o4 = vec4<f32>();
    r4.x = 0.0f;
    r3.w = 0.0f;
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_2[0u]);
  let v_22 = r4;
  r4 = vec4<f32>(v_22.x, v3.xy, v_22.w);
  r4.w = 0.0f;
  o0 = r4.yzwx;
  o1 = r3;
  o2.w = 1.0f;
  o3 = v6;
  o5 = r0;
  let v_23 = &(x0[0u]);
  *(v_23) = vec4<f32>((*(v_23)).x, vec3<f32>());
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
}

struct tint_symbol_5 {
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
  @builtin(position)
  o5 : vec4<f32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, v);
}
