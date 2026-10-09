diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb15_struct_1 {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct_1;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec2<f32>, v6 : vec2<f32>) {
  let v = (cb1_1.tint_symbol[14u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb1_1.tint_symbol[14u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_3 = -(cb1_1.tint_symbol[12u].xyzx);
  let v_4 = fma(r0.xyz, r0.www, v_3.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v6.xxx, r0.xyz, cb1_1.tint_symbol[12u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (cb1_1.tint_symbol[13u].xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(cb1_1.tint_symbol[13u].xyzx);
  let v_8 = fma(v6.xxx, r1.xyz, v_7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r2 = vec4<f32>(((v3 + vec2<f32>(-0.5f))).xy, r2.zw);
  let v_9 = (v5 * cb12_12.tint_symbol_2[1u].xy);
  r2 = vec4<f32>(r2.xy, v_9.xy);
  let v_10 = (r2.zw * r2.xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = (r1.xyz * r2.yyy);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r2.xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r1.x = (cb1_1.tint_symbol[0u].x * cb9_9.tint_symbol_1[14u].z);
  r1.y = cb1_1.tint_symbol[1u].x;
  r1.z = cb1_1.tint_symbol[2u].x;
  r1.x = dot(v0, r1.xyz);
  r2.y = (cb1_1.tint_symbol[1u].y * cb9_9.tint_symbol_1[14u].z);
  r2.x = cb1_1.tint_symbol[0u].y;
  r2.z = cb1_1.tint_symbol[2u].y;
  r1.y = dot(v0, r2.xyz);
  r2.z = (cb1_1.tint_symbol[2u].z * cb9_9.tint_symbol_1[14u].w);
  r2.x = cb1_1.tint_symbol[0u].z;
  r2.y = cb1_1.tint_symbol[1u].z;
  r1.z = dot(v0, r2.xyz);
  let v_13 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1.x = dot(r0.xyz, cb1_1.tint_symbol[0u].xyz);
  r1.y = dot(r0.xyz, cb1_1.tint_symbol[1u].xyz);
  r0.x = dot(r0.xyz, cb1_1.tint_symbol[2u].xyz);
  r0.x = (r0.x * cb9_9.tint_symbol_1[14u].w);
  let v_14 = (r1.xy * cb9_9.tint_symbol_1[14u].zz);
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r1 = (r0.zzzz * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = vec4<f32>(v4.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v1.xy);
  r0.x = dot(v2, v2);
  r0.x = inverseSqrt(r0.x);
  let v_16 = -(cb12_12.tint_symbol_2[2u].xyzx);
  let v_17 = fma(v2, r0.xxx, v_16.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  o2 = fma(cb12_12.tint_symbol_2[2u].www, r0.xyz, cb12_12.tint_symbol_2[2u].xyz).xyzx;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec2<f32>, @location(6u) v6 : vec2<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2);
}
