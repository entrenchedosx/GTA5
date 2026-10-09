diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb19_struct {
  tint_symbol_3 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb19_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v = (v1.xy * cb10_10.tint_symbol_4[2u].xx);
  let v_1 = r1;
  r1 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r2 = textureSample(t3, s3, r1.yzyy.xy);
  let v_2 = -(v1.wwww);
  r1.x = fma(r1.x, r2.x, v_2.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.125f)));
  v_3((bitcast<u32>(r1.y) != 0u));
  r0.w = fma(r0.w, r2.x, v_2.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.125f)));
  v_3((bitcast<u32>(r1.y) != 0u));
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_4 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r1.w = dot(r1.yz, r1.yz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb10_10.tint_symbol_4[0u].x, 0.00100000004749745131f);
  let v_6 = (r1.yz * r2.xx);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r1.zzz * v6.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r1.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r1.www, v2.xyz, r2.xyz);
  r1 = vec4<f32>(r1.x, v_10.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_11 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_11.xyz);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_12 = (r3.xy * r3.xy);
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  r3.y = (r1.z * cb10_10.tint_symbol_4[0u].z);
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_14 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = (r0.w * v3.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_15 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(v_15.xy, r4.zw);
  r1.z = fma(r2.w, 0.5f, 0.5f);
  r5.x = fma(r1.z, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r5.y = (r1.z + 0.30000001192092895508f);
  let v_16 = (r4.xy * r5.xy);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  let v_17 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r1.z = bitcast<f32>((bitcast<u32>(r3.x) & 1008981770u));
  r3.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r3.x) != 0u));
  r1.y = fma(r1.y, cb10_10.tint_symbol_4[0u].w, r3.x);
  r1.y = fma(cb13_13.tint_symbol_3[4u].z, r1.y, r1.z);
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_18 = (r1.zzz * v4.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = dot(r5.xyz, r2.yzw);
  r1.z = clamp(vec4<f32>(v_19, v_19, v_19, v_19).z, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = fma(r1.z, 0.40000000596046447754f, 0.5f);
  r1.w = fma(r1.w, r2.x, 1.0f);
  r1.w = clamp(fma(r1.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r1.w = (r1.w * 1.42857146263122558594f);
  r2.x = clamp(v7.x, 0.0f, 1.0f);
  r1.z = (r1.z * r2.x);
  r1.z = (r1.w * r1.z);
  let v_20 = (r0.xyz * r1.zzz);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = fma(r6.xyz, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_21.xyz, o0.w);
  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_22 = (r0.xxx * v5.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r1.z = dot(v6.xyz, v6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_23 = (r1.zzz * v6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  r0.x = dot(r5.xyz, r0.xyz);
  r0.y = dot(r5.xyz, r6.xyz);
  let v_24 = (r0.xy * r0.xy);
  r5 = vec4<f32>(v_24.xy, r5.zw);
  r3.z = 1.0f;
  r0.x = dot(r5.yx, r3.yz);
  r0.x = max(r0.x, 1.0f);
  r0.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r3.y = (r0.y * r4.y);
  let v_25 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_25.xyz, o1.w);
  let v_26 = (r0.xw * vec2<f32>(0.001953125f, 4.0f));
  r0 = vec4<f32>(v_26.xy, r0.zw);
  r3.x = fma(r4.x, cb10_10.tint_symbol_4[2u].w, cb3_3.tint_symbol_1[45u].w);
  let v_27 = (r3.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_27.xy);
  let v_28 = sqrt(r0.zw);
  o3 = vec4<f32>(v_28.xy, o3.zw);
  o2.x = sqrt(r1.y);
  o2.y = sqrt(r0.x);
  r0.x = (r0.y * r1.x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[18u].x == 0.0f))));
  r0.x = (r0.x * cb13_13.tint_symbol_3[18u].x);
  r0.x = (r0.x * 4.0f);
  let v_29 = bitcast<u32>(r0.z);
  let v_30 = r0.x;
  o0.w = select(r0.y, v_30, (v_29 != 0u));
  o2.z = cb10_10.tint_symbol_4[0u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_3(v_31 : bool) {
  if (v_31) {
    discard;
    return;
  }
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
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3);
}
