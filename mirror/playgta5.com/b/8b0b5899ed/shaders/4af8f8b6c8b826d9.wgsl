diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

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

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  let v_2 = (v1.xy * cb10_10.tint_symbol_4[2u].xx);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1 = textureSample(t3, s3, r1.xyxx.xy);
  r0.w = fma(r0.w, r1.x, (-(v1.wwww)).w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.125f)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r0.w = (r0.w * v3.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.23749999701976776123f, 0.0f) >= r0.ww)));
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_4[0u].x, 0.00100000004749745131f);
  let v_7 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  let v_10 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_11 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_12 = (r3.xy * r3.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  r3.y = (r1.y * cb10_10.tint_symbol_4[0u].z);
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_13 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r3 = vec4<f32>(v_14.x, r3.yz, v_14.y);
  r1.y = fma(r2.z, 0.5f, 0.5f);
  r4.x = fma(r1.y, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r4.y = (r1.y + 0.30000001192092895508f);
  let v_15 = (r3.xw * r4.xy);
  r3 = vec4<f32>(v_15.x, r3.yz, v_15.y);
  let v_16 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1.y = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.x = fma(r1.x, cb10_10.tint_symbol_4[0u].w, r2.w);
  r1.x = fma(cb13_13.tint_symbol_3[4u].z, r1.x, r1.y);
  r1.y = dot(v4.xyz, v4.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_17 = (r1.yyy * v4.xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = dot(r4.xyz, r2.xyz);
  r1.y = clamp(vec4<f32>(v_18, v_18, v_18, v_18).y, 0.0f, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = fma(r1.y, 0.40000000596046447754f, 0.5f);
  r1.z = fma(r1.z, r1.w, 1.0f);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r1.z = (r1.z * 1.42857146263122558594f);
  r1.w = clamp(v7.x, 0.0f, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = (r1.z * r1.y);
  let v_19 = (r0.xyz * r1.yyy);
  r1 = vec4<f32>(r1.x, v_19.xyz);
  let v_20 = fma(r1.yzw, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_20.xyz, o0.w);
  r0.x = dot(v5.xyz, v5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_21 = (r0.xxx * v5.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r1.y = dot(v6.xyz, v6.xyz);
  r1.y = inverseSqrt(r1.y);
  let v_22 = (r1.yyy * v6.xyz);
  r1 = vec4<f32>(r1.x, v_22.xyz);
  r0.x = dot(r4.xyz, r0.xyz);
  r0.y = dot(r4.xyz, r1.yzw);
  let v_23 = (r0.xy * r0.xy);
  r4 = vec4<f32>(v_23.xy, r4.zw);
  r3.z = 1.0f;
  r0.x = dot(r4.yx, r3.yz);
  r0.x = max(r0.x, 1.0f);
  r0.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r4.y = (r0.y * r3.w);
  let v_24 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_24.xyz, o1.w);
  r0.x = (r0.x * 0.001953125f);
  r4.x = fma(r3.x, cb10_10.tint_symbol_4[2u].w, cb3_3.tint_symbol_1[45u].w);
  let v_25 = (r4.xy * vec2<f32>(0.5f));
  let v_26 = r0;
  r0 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  let v_27 = sqrt(r0.yz);
  o3 = vec4<f32>(v_27.xy, o3.zw);
  o2.x = sqrt(r1.x);
  o2.y = sqrt(r0.x);
  o0.w = clamp(fma(r0.wwww, vec4<f32>(5.59999990463256835938f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2.z = cb10_10.tint_symbol_4[0u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_3(v_28 : bool) {
  if (v_28) {
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
fn main(@builtin(position) v_29 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_29, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_5(o0, o1, o2, o3);
}
