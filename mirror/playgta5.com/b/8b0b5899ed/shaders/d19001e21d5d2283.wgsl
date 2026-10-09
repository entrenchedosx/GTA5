diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb7_struct;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v.xyz);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_1 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_1.xy, r2.zw);
  let v_2 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r3.x = (v3.x * cb2_2.tint_symbol[15u].z);
  r3.y = (v3.x * cb11_11.tint_symbol_4[4u].y);
  r3.y = (r3.y * v2.w);
  let v_3 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(r3.xy, v_3.xy);
  r4.x = (r3.z * v3.z);
  let v_4 = (r3.ww * v1.zw);
  let v_5 = r4;
  r4 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r5 = textureSample(t3, s3, r4.yzyy.xy);
  r3.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r4.y = ((-(r5.xxxx)).y + r5.z);
  r5.x = fma(r3.w, r4.y, r5.x);
  let v_6 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_7 = r4;
  r4 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r3.w = fma(v3.z, r3.z, -1.0f);
  r3.z = fma(r3.z, r3.w, 1.0f);
  r3.w = (r3.z * r4.y);
  let v_8 = -(r0.xyxz);
  let v_9 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_8.xyw);
  r5 = vec4<f32>(v_9.xy, r5.z, v_9.z);
  let v_10 = fma(r3.www, r5.xyw, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r3.w = (r4.x * cb11_11.tint_symbol_4[2u].x);
  let v_11 = ((-(r0.xyxz)).xyw + r5.zzz);
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  let v_12 = fma(r3.www, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r3.z = fma((-(r4.zzzz)).z, r3.z, 1.0f);
  r3.w = (r3.z * r3.y);
  r4.x = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r4.x = (r4.x * 0.75f);
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.x = (r2.x * r4.x);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_13 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(cb11_11.tint_symbol_4[6u].www, r4.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = (r2.xxx * cb11_11.tint_symbol_4[6u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = -(r4.xyzx);
  let v_17 = fma(v4.xyz, r2.yyy, v_16.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_18 = (r2.xyz * r4.xxx);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r2.x = dot(r1.yzw, r2.xyz);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r2.y = fma(r2.w, 15.0f, 0.00000000999999993923f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * r2.y);
  r2.x = exp2(r2.x);
  let v_19 = fma(r5.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r2.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(v2.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r3.x * r0.w);
  r1.x = fma((-(r3.wwww)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_21 = (r0.xyz * r1.xxx);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_22 = bitcast<vec4<u32>>(r0.xxxx);
  r2 = select(r2, v3, (v_22 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r2.w)));
  v_23((bitcast<u32>(r0.x) != 0u));
  r0.x = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.x);
  let v_24 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = (r1.xyz * vec3<f32>(256.0f));
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = floor(r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = -(r4.xyzx);
  let v_28 = fma(r1.xyz, vec3<f32>(256.0f), v_27.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = floor(r1.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r0.z = dot(r1.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.z * 0.0039215688593685627f);
  let v_31 = (r4.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_31.xyz, o1.w);
  r0.z = (cb11_11.tint_symbol_4[4u].x * 0.001953125f);
  r0.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_32 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_32.xy, r0.zw);
  let v_33 = sqrt(r0.xy);
  o3 = vec4<f32>(v_33.xy, o3.zw);
  r0.x = clamp(fma(r3.yyyy, r3.zzzz, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r1.x = (-(r3.wwww)).x;
  r1.y = (-(r0.zzzz)).y;
  let v_34 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), r1.xy);
  r0 = vec4<f32>(v_34.xy, r0.zw);
  let v_35 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_35.xy, r0.zw);
  r1.x = fma(r0.x, r0.w, r3.w);
  r1.y = fma(r0.y, r0.w, r0.z);
  let v_36 = sqrt(r1.xy);
  o2 = vec4<f32>(v_36.xy, o2.zw);
  o0 = r2;
  o2.z = cb11_11.tint_symbol_4[3u].w;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_23(v_37 : bool) {
  if (v_37) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3);
}
