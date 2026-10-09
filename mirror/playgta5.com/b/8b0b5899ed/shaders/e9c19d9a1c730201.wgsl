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

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v.xyz);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_1 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_1.xy, r2.zw);
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.x = (r2.x * v3.x);
  let v_2 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = (r0.w * v3.w);
  r2.x = (r2.x * v2.w);
  r2.x = (r2.x * 0.80000001192092895508f);
  let v_3 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).yz + vec2<f32>(1.0f, 2.0f));
  let v_4 = r2;
  r2 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r3.x = (r2.y * v3.z);
  let v_5 = (r2.zz * v1.zw);
  let v_6 = r3;
  r3 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r4 = textureSample(t3, s3, r3.yzyy.xy);
  r2.z = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[3u].z);
  r3.y = ((-(r4.xxxx)).y + r4.z);
  r4.x = fma(r2.z, r3.y, r4.x);
  let v_7 = (r4.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_8 = r3;
  r3 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r2.z = fma(v3.z, r2.y, -1.0f);
  r2.y = fma(r2.y, r2.z, 1.0f);
  r2.z = (r2.y * r3.y);
  r3.y = fma((-(cb2_2.tint_symbol[16u].yyyy)).y, 100.0f, 1.0f);
  r2.z = clamp(((r2.zzzz * r3.yyyy)).z, 0.0f, 1.0f);
  let v_9 = -(r0.xyxz);
  let v_10 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_9.xyw);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  let v_11 = fma(r2.zzz, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r2.z = (r3.x * cb11_11.tint_symbol_4[3u].x);
  let v_12 = ((-(r0.xyxz)).xyw + r4.zzz);
  r3 = vec4<f32>(v_12.xy, r3.z, v_12.z);
  let v_13 = fma(r2.zzz, r3.xyw, r0.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r2.y = fma((-(r3.zzzz)).y, r2.y, 1.0f);
  r3.x = (r2.y * r2.x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r4.w = (r0.w * cb2_2.tint_symbol[16u].y);
  r0.w = fma(v2.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].z);
  r1.x = fma((-(r3.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_14 = (r0.xyz * r1.xxx);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_15 = bitcast<vec4<u32>>(r0.xxxx);
  r4 = select(r4, v3, (v_15 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r4.w)));
  v_16((bitcast<u32>(r0.x) != 0u));
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * cb2_2.tint_symbol[15u].y);
  r0.z = (v3.x * cb11_11.tint_symbol_4[2u].x);
  let v_17 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_17.xyz, o1.w);
  r3.y = (r2.w * 0.99609375f);
  r0.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_18 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = sqrt(r0.xy);
  o3 = vec4<f32>(v_19.xy, o3.zw);
  o3.z = clamp(((r0.zzzz * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.x = clamp(fma(r2.xxxx, r2.yyyy, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_20 = -(r3.xyxx);
  let v_21 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_20.xy);
  r0 = vec4<f32>(v_21.xy, r0.zw);
  let v_22 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_22.xy, r0.zw);
  let v_23 = fma(r0.xy, r0.ww, r3.xy);
  r0 = vec4<f32>(v_23.xy, r0.zw);
  let v_24 = sqrt(r0.xy);
  o2 = vec4<f32>(v_24.xy, o2.zw);
  o0 = r4;
  o1.w = 0.0f;
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.95999997854232788086f, 1.0f));
  o3.w = 1.00188386440277099609f;
}

fn v_16(v_25 : bool) {
  if (v_25) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
