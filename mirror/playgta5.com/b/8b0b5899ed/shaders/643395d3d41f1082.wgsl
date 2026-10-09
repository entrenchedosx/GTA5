enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb11_struct {
  tint_symbol_4 : array<vec4<f32>, 11u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb11_struct;

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

var<private> o10 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>) {
  r0 = vec4<f32>(((v1.wz * vec2<f32>(255.0f))).xy, r0.zw);
  let v_1 = round(r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = max(r0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r0.z = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz);
  r0.z = sqrt(r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_4 = (cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz / r0.zzz);
    r1 = vec4<f32>(v_4.xyz, r1.w);
    let v_5 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz / r0.zzz);
    r2 = vec4<f32>(v_5.xyz, r2.w);
    let v_6 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz / r0.zzz);
    r3 = vec4<f32>(v_6.xyz, r3.w);
  } else {
    let v_7 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))];
    r2 = vec4<f32>(v_7.xyz, r2.w);
    let v_8 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))];
    r3 = vec4<f32>(v_8.xyz, r3.w);
    let v_9 = cb4_4.tint_symbol[bitcast<i32>(r0.x)];
    r1 = vec4<f32>(v_9.xyz, r1.w);
  }
  r1.w = cb4_4.tint_symbol[bitcast<i32>(r0.x)].w;
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r0.w = dot(r1, r4);
  r2.w = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].w;
  r1.w = dot(r2, r4);
  r3.w = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].w;
  r0.x = dot(r3, r4);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v1.y))));
  r4.x = dot(r1.xyz, v4);
  r4.y = dot(r2.xyz, v4);
  r4.z = dot(r3.xyz, v4);
  let v_10 = bitcast<vec3<u32>>(r2.www);
  let v_11 = select(v4, r4.xyz, (v_10 != vec3<u32>()));
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = -(r0.zzzz);
  r2.w = fma(v1.x, r0.z, v_12.w);
  o8.x = fma(v1.y, r2.w, r0.z);
  o8.y = dot(cb10_10.tint_symbol_4[1u].xyz, cb12_12.tint_symbol_3[1u].xyz);
  let v_13 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r4 = (r1.wwww * cb1_1.tint_symbol_1[9u]);
  r4 = fma(r0.wwww, cb1_1.tint_symbol_1[8u], r4);
  r4 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r4);
  r4 = (r4 + cb1_1.tint_symbol_1[11u]);
  let v_17 = ((-(r3.xxyz)).xzw + cb1_1.tint_symbol_1[15u].xyz);
  r0 = vec4<f32>(v_17.x, r0.y, v_17.yz);
  let v_18 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r2 = vec4<f32>(v_19.xy, r2.z, v_19.z);
  let v_20 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_21 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r1.w = dot(r2.xyz, r0.xzw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.0f)));
  let v_22 = -(bitcast<vec4<i32>>(r2.wwww));
  r1.w = bitcast<f32>((bitcast<i32>(r1.w) + v_22.w));
  r1.w = f32(bitcast<i32>(r1.w));
  let v_23 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r1 = vec4<f32>(v_25.xy, r1.z, v_25.z);
  let v_26 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_27 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = (r2.yzx * r1.zxy);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = -(r5.xyzx);
  o5 = fma(r1.yzx, r2.zxy, v_29.xyz).xyzx;
  x0[0u].x = dot(r4, cb0_0.tint_symbol_2[0u]);
  o0 = vec4<f32>();
  o1 = cb10_10.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.y) + 7i))];
  o2 = vec4<f32>(v2.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, v3.xy);
  o9 = r4;
  let v_30 = &(x0[0u]);
  *(v_30) = vec4<f32>((*(v_30)).x, vec3<f32>());
  o3 = r2.xyz.xyzx;
  o4 = r1.xyz.xyzx;
  o6 = r0.xzw.xyzx;
  o7 = r3.xyz.xyzx;
  o10[0u] = x0[0u].x;
  o10[1u] = x0[0u].y;
  o10[2u] = x0[0u].z;
  o10[3u] = x0[0u].w;
  v = vec4<f32>(o10[0u], o10[1u], o10[2u], o10[3u]);
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
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @builtin(position)
  o9 : vec4<f32>,
  @builtin(clip_distances)
  o10 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, v);
}
