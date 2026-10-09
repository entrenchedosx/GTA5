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

struct cb29_struct {
  tint_symbol_2 : array<vec4<f32>, 29u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb29_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  let v = -(cb12_12.tint_symbol_2[13u].xyzx);
  let v_1 = (cb1_1.tint_symbol[15u].xyz + v.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.yzx * vec3<f32>(1.0f, 0.0f, 0.0f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = -(r1.xyzx);
  let v_5 = fma(r0.zxy, vec3<f32>(0.0f, 1.0f, 0.0f), v_4.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r0.zxy * r1.yzx);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = -(r2.xyzx);
  let v_9 = fma(r0.yzx, r1.zxy, v_8.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = (r0.xyz * v0.yyy);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(v0.xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(v0.zzz, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r0.xyz + cb12_12.tint_symbol_2[13u].xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = fma(v0.wwww, cb1_1.tint_symbol[11u], r1);
  let v_14 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_15.xy, r0.z, v_15.z);
  let v_16 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_19 = (r0.xyz + v_18.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r0.xyz * vec3<f32>(25000.0f));
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  let v_22 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r0.y = (r0.x + v_22.y);
  r0.y = max(r0.y, 0.0f);
  r0.x = (r0.y / r0.x);
  r0.y = (r0.y * cb3_3.tint_symbol_1[51u].w);
  r0.x = (r0.x * r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.xxxx).z)));
  r0.x = (r0.x * cb3_3.tint_symbol_1[52u].z);
  r0.w = (r0.x * -1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.x = (r0.w / r0.x);
  let v_23 = bitcast<u32>(r0.z);
  r0.x = select(1.0f, r0.x, (v_23 != 0u));
  r0.x = (r0.x * r0.y);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * 1.44269502162933349609f);
  r0.x = exp2(r0.x);
  r0.x = min(r0.x, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = clamp(((r0.xxxx * cb3_3.tint_symbol_1[52u].yyyy)).x, 0.0f, 1.0f);
  let v_24 = fma((-(r0.xxxx)).x, cb12_12.tint_symbol_2[28u].z, 1.0f);
  o1 = vec4<f32>(v_24, v_24, v_24, v_24);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1);
}
