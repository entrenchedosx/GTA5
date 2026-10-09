enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb17_struct;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  o2 = vec4<f32>(v_4.xyz, o2.w);
  let v_5 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = -(r2.xyzx);
  let v_13 = fma(r1.yzx, r0.zxy, v_12.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  o5 = ((r2.xyz * v5.www)).xyzx;
  r2 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r2 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r2);
  r2 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r2);
  r2 = (r2 + cb1_1.tint_symbol[11u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((v3.x == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = ((-(v3.yyyy)).w + 0.5f);
    r1.w = (r1.w * 0.5f);
    let v_14 = r1.w;
    let v_15 = max(v_14, -2147483648.0f);
    r1.w = bitcast<f32>(select(select(i32(v_15), 2147483647i, (v_15 >= 2147483648.0f)), 0i, !((v_14 == v_14))));
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) >= 2i)));
    r4 = fma(v3.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_16 = bitcast<vec2<u32>>(r3.xx);
    let v_17 = r4.xy;
    let v_18 = select(r4.zw, v_17, (v_16 != vec2<u32>()));
    o6 = vec4<f32>(v_18.xy, o6.zw);
    let v_19 = fract(cb13_13.tint_symbol_2[16u].zw);
    r3 = vec4<f32>(v_19.xy, r3.zw);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.60000002384185791016f < r3.x)));
    let v_20 = fma(r3.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r1.w)].xy);
    r3 = vec4<f32>(r3.xy, v_20.xy);
    r4.x = select(1.0f, 0.5f, (bitcast<u32>(r3.x) != 0u));
    r4.w = bitcast<f32>((bitcast<u32>(r3.x) & 1056964608u));
    r4.z = 0.0f;
    let v_21 = fma(r3.zw, r4.xx, r4.zw);
    r3 = vec4<f32>(r3.xy, v_21.xy);
    r3.y = ((-(r3.yyyy)).y + cb13_13.tint_symbol_2[16u].w);
    r3.y = (1.0f / r3.y);
    let v_22 = fma(r3.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r1.w)].xy);
    r4 = vec4<f32>(v_22.xy, r4.zw);
    r3.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_2[16u].z >= 1.0f)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.y) & bitcast<u32>(r3.x)));
    r3.x = select(1.0f, 0.5f, (bitcast<u32>(r3.x) != 0u));
    let v_23 = (r3.xx * r4.xy);
    r4 = vec4<f32>(v_23.xy, r4.zw);
    let v_24 = (r3.zw * icb0[bitcast<i32>(r1.w)].zw);
    o6 = vec4<f32>(o6.xy, v_24.xy);
    r0.w = r4.y;
  } else {
    o6 = vec4<f32>();
    r4.x = 0.0f;
    r0.w = 0.0f;
  }
  x0[0u].x = dot(r2, cb0_0.tint_symbol_1[0u]);
  let v_25 = r4;
  r4 = vec4<f32>(v_25.x, v2.xy, v_25.w);
  r4.w = 0.0f;
  o0 = r4.yzwx;
  o1 = r0;
  o2.w = 1.0f;
  o3 = vec4<f32>(v1.xyz, o3.w);
  o3.w = 1.0f;
  o7 = r2;
  let v_26 = &(x0[0u]);
  *(v_26) = vec4<f32>((*(v_26)).x, vec3<f32>());
  o4 = r1.xyz.xyzx;
  o8[0u] = x0[0u].x;
  o8[1u] = x0[0u].y;
  o8[2u] = x0[0u].z;
  o8[3u] = x0[0u].w;
  v = vec4<f32>(o8[0u], o8[1u], o8[2u], o8[3u]);
}

struct tint_symbol_4 {
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
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, o7, o8, v);
}
