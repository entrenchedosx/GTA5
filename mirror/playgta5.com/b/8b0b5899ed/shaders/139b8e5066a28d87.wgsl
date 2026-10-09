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
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v.xyz);
  r2 = textureSample(t4, s4, v1.xy.xyxx.xy);
  let v_1 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_1.xy, r2.zw);
  r2.x = dot(r2.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r2.y = (r2.x * cb11_11.tint_symbol_4[4u].y);
  let v_2 = (r0.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r2.z = (v3.x * cb2_2.tint_symbol[15u].z);
  r2.y = (r2.y * v3.x);
  r2.y = (r2.y * v2.w);
  let v_3 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_3.xy, r3.zw);
  r3.z = (r3.x * v3.z);
  let v_4 = (r3.yy * v1.xy);
  let v_5 = r3;
  r3 = vec4<f32>(v_5.x, v_4.x, v_5.z, v_4.y);
  r4 = textureSample(t3, s3, r3.ywyy.xy);
  r3.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.w = ((-(r4.xxxx)).w + r4.z);
  r4.x = fma(r3.y, r3.w, r4.x);
  let v_6 = (r4.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_7 = r3;
  r3 = vec4<f32>(v_7.x, v_6.x, v_7.z, v_6.y);
  r4.x = fma(v3.z, r3.x, -1.0f);
  r3.x = fma(r3.x, r4.x, 1.0f);
  r3.y = (r3.x * r3.y);
  let v_8 = -(r0.xyxz);
  let v_9 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_8.xyw);
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  let v_10 = fma(r3.yyy, r4.xyw, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r3.y = (r3.z * cb11_11.tint_symbol_4[2u].x);
  let v_11 = ((-(r0.xyzx)).xyz + r4.zzz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(r3.yyy, r4.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r3.x = fma((-(r3.wwww)).x, r3.x, 1.0f);
  r4.x = (r2.y * r3.x);
  r3.y = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r2.x = (r2.x * r3.y);
  r2.x = (r2.x * 0.75f);
  r3.y = dot(v4.xyz, v4.xyz);
  r3.y = inverseSqrt(r3.y);
  let v_13 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = fma(cb11_11.tint_symbol_4[6u].www, r5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = (r2.xxx * cb11_11.tint_symbol_4[6u].xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = -(r5.xxyz);
  let v_17 = fma(v4.xyz, r3.yyy, v_16.yzw);
  r3 = vec4<f32>(r3.x, v_17.xyz);
  r2.x = dot(r3.yzw, r3.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_18 = (r2.xxx * r3.yzw);
  r3 = vec4<f32>(r3.x, v_18.xyz);
  r2.x = dot(r1.yzw, r3.yzw);
  r2.x = clamp(((r2.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.y = fma(r2.w, 15.0f, 0.00000000999999993923f);
  r2.x = log2(r2.x);
  r2.x = (r2.x * r3.y);
  r2.x = exp2(r2.x);
  let v_19 = fma(r6.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = min(r0.xyz, vec3<f32>(240.0f));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r5.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = fma(v2.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r2.z * r0.w);
  r1.x = fma((-(r4.xxxx)).x, 0.5f, 1.0f);
  r1.x = (r0.w * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_21 = (r0.xyz * r1.xxx);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_22 = bitcast<vec4<u32>>(r0.xxxx);
  r5 = select(r5, v3, (v_22 != vec4<u32>()));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r5.w)));
  v_23((bitcast<u32>(r0.x) != 0u));
  r0.x = (r2.w * cb11_11.tint_symbol_4[4u].x);
  r0.y = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.z = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).z, 0.0f, 1.0f);
  r6.y = (r0.z * r0.y);
  let v_24 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = (r1.xyz * vec3<f32>(256.0f));
  r2 = vec4<f32>(v_25.x, r2.y, v_25.yz);
  let v_26 = floor(r2.xzw);
  r2 = vec4<f32>(v_26.x, r2.y, v_26.yz);
  let v_27 = -(r2.xzwx);
  let v_28 = fma(r1.xyz, vec3<f32>(256.0f), v_27.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = floor(r1.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r0.y = dot(r1.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.y * 0.0039215688593685627f);
  let v_31 = (r2.xzw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_31.xyz, o1.w);
  r4.y = (r0.x * 0.001953125f);
  r6.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_32 = (r6.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_32.xy, r0.zw);
  let v_33 = sqrt(r0.xy);
  o3 = vec4<f32>(v_33.xy, o3.zw);
  r0.x = clamp(fma(r2.yyyy, r3.xxxx, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  r4.z = cb11_11.tint_symbol_4[3u].w;
  let v_34 = -(r4.xyxx);
  let v_35 = fma(r0.xx, vec2<f32>(0.5f, 0.48828125f), v_34.xy);
  r0 = vec4<f32>(v_35.xy, r0.zw);
  r0.z = 0.0f;
  let v_36 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = fma(r0.xyz, r0.www, r4.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = sqrt(r0.xy);
  o2 = vec4<f32>(v_38.xy, o2.zw);
  o0 = r5;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_23(v_39 : bool) {
  if (v_39) {
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
