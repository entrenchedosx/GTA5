diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb8_struct {
  tint_symbol_3 : array<vec4<f32>, 8u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb8_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0.x = (v0.x * cb8_8.tint_symbol_2[0u].x);
  let v = (v0.yyy * cb4_4.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(v0.xxx, cb4_4.tint_symbol_3[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = fma(v0.zzz, cb4_4.tint_symbol_3[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = (r0.yzw + cb4_4.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  r1.x = (cb8_8.tint_symbol_2[1u].y + 0.02999999932944774628f);
  r1.y = ((-(r0.wwww)).y + r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.x)));
  r1.y = (r1.y * cb8_8.tint_symbol_2[1u].z);
  r1.y = min(r1.y, 1.0f);
  let v_4 = (v0 * cb8_8.tint_symbol_2[1u].www);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r1.z = fma((-(cb8_8.tint_symbol_2[0u].wwww)).z, r1.y, r2.x);
  r3.x = fma(r0.x, r1.y, r1.z);
  r0.x = ((-(r0.wwww)).x + cb8_8.tint_symbol_2[1u].y);
  o4 = (((-(r0.yzwy)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  r0.x = max(r0.x, 0.0f);
  let v_5 = fma(cb8_8.tint_symbol_2[0u].yz, r0.xx, r2.yz);
  let v_6 = r3;
  r3 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = bitcast<vec3<u32>>(r1.xxx);
  let v_8 = r3.xyz;
  let v_9 = select(r2.xyz, v_8, (v_7 != vec3<u32>()));
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r0.w = (cb8_8.tint_symbol_2[1u].x * 1.10000002384185791016f);
  r0.w = (r0.w * r0.w);
  r1.x = dot(v0.yz, v0.yz);
  r1.y = (r1.x * cb8_8.tint_symbol_2[1u].w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.y)));
  let v_10 = bitcast<vec3<u32>>(r0.www);
  let v_11 = r0.xyz;
  let v_12 = select(r2.xyz, v_11, (v_10 != vec3<u32>()));
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = (cb8_8.tint_symbol_2[1u].x * cb8_8.tint_symbol_2[1u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.x)));
  let v_13 = bitcast<vec3<u32>>(r0.www);
  let v_14 = select(v0, r0.xyz, (v_13 != vec3<u32>()));
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = bitcast<vec3<u32>>(cb7_7.tint_symbol_1[0u].yyy);
  let v_16 = select(v0, r0.xyz, (v_15 != vec3<u32>()));
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1 = (r0.yyyy * cb4_4.tint_symbol_3[5u]);
  r1 = fma(r0.xxxx, cb4_4.tint_symbol_3[4u], r1);
  r0 = fma(r0.zzzz, cb4_4.tint_symbol_3[6u], r1);
  o0 = (r0 + cb4_4.tint_symbol_3[7u]);
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v3.xy);
  let v_17 = (v4.yyy * cb4_4.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(v4.xxx, cb4_4.tint_symbol_3[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = fma(v4.zzz, cb4_4.tint_symbol_3[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  o2 = r0.xyz.xyzx;
  o3 = v1;
  let v_20 = (v5.yyy * cb4_4.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(v5.xxx, cb4_4.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = fma(v5.zzz, cb4_4.tint_symbol_3[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  o5 = r1.xyz.xyzx;
  let v_23 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = -(r2.xyzx);
  let v_25 = fma(r1.yzx, r0.zxy, v_24.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  o6 = ((r0.xyz * v5.www)).xyzx;
}

struct tint_symbol_4 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6);
}
