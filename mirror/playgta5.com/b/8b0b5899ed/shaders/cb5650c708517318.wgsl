diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb53_struct {
  tint_symbol_1 : array<vec4<f32>, 53u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb14_struct {
  tint_symbol_2 : array<vec4<f32>, 14u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb14_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>) {
  r0 = vec4<f32>(((v0.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  let v = fma(cb10_10.tint_symbol_2[2u].xyz, r0.xxx, cb10_10.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  let v_1 = fma(cb10_10.tint_symbol_2[3u].xyz, r0.yyy, r0.xzw);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (cb10_10.tint_symbol_2[1u].xyz * cb10_10.tint_symbol_2[3u].www);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r1.xyz, v0.zzz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = (r0.yyyy * cb10_10.tint_symbol_2[11u]);
  r1 = fma(r0.xxxx, cb10_10.tint_symbol_2[10u], r1);
  r1 = fma(r0.zzzz, cb10_10.tint_symbol_2[12u], r1);
  o0 = (r1 + cb10_10.tint_symbol_2[13u]);
  o1 = r0.xyz.xyzx;
  let v_4 = (r0.yyy * cb1_1.tint_symbol[9u].xyw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r0.xxx, cb1_1.tint_symbol[8u].xyw, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.zzz, cb1_1.tint_symbol[10u].xyw, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_8 = (r0.xyz + v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r1.xyz + cb1_1.tint_symbol[11u].xyw);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r2.x = (r1.z + r1.x);
  r2.y = ((-(r1.yyyy)).y + r1.z);
  o2.w = r1.z;
  let v_10 = (r2.xy * vec2<f32>(0.5f));
  o2 = vec4<f32>(v_10.xy, o2.zw);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  let v_11 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r1.x = (r0.w + v_11.x);
  r1.x = max(r1.x, 0.0f);
  r0.w = (r1.x / r0.w);
  r0.w = (r0.w * r0.z);
  r1.y = (r0.w * cb3_3.tint_symbol_1[52u].z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.wwww).w)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_12 = bitcast<u32>(r0.w);
  r0.w = select(1.0f, r1.y, (v_12 != 0u));
  r1.y = (r1.x * cb3_3.tint_symbol_1[51u].w);
  let v_13 = -(cb3_3.tint_symbol_1[52u].xxxx);
  r1.x = (r1.x + v_13.x);
  r1.x = max(r1.x, 0.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_1[51u].x);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = min(r0.w, 1.0f);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = min(r0.w, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.y = fma((-(r0.wwww)).y, cb3_3.tint_symbol_1[52u].y, 1.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_1[52u].y);
  r1.y = (r1.y * cb3_3.tint_symbol_1[51u].y);
  r0.w = clamp(fma(r1.yyyy, r1.xxxx, r0.wwww).w, 0.0f, 1.0f);
  o2.z = ((-(r0.wwww)).z + 1.0f);
  let v_14 = cb1_1.tint_symbol[15u];
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = 1.0f;
  r0.w = dot(r1, cb10_10.tint_symbol_2[5u]);
  o3.x = -(r0.w);
  r0.w = dot(r1, cb10_10.tint_symbol_2[6u]);
  r1.x = dot(r1, cb10_10.tint_symbol_2[7u]);
  o3.z = -(r1.x);
  o3.y = -(r0.w);
  o4.x = dot(r0.xyz, cb10_10.tint_symbol_2[5u].xyz);
  o4.y = dot(r0.xyz, cb10_10.tint_symbol_2[6u].xyz);
  o4.z = dot(r0.xyz, cb10_10.tint_symbol_2[7u].xyz);
}

struct tint_symbol_3 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
