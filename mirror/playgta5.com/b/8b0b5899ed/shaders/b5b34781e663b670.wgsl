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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (v1.xy * cb11_11.tint_symbol_4[6u].ww);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t3, s3, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_2 = (r0.xxx * v2.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r4 = textureSample(t5, s5, r0.zwzz.xy);
  let v_3 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_3.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[6u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[5u].y);
  let v_4 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_5 = -(r2.xyzx);
  let v_6 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = (r2.w * v3.w);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_8 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r1.w = (r2.x * v3.z);
  let v_9 = (r2.yy * v1.xy);
  let v_10 = r2;
  r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r5 = textureSample(t4, s4, r2.yzyy.xy);
  r2.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[3u].z);
  r2.z = ((-(r5.xxxx)).z + r5.z);
  r5.x = fma(r2.y, r2.z, r5.x);
  let v_11 = (r5.xy * cb11_11.tint_symbol_4[3u].xx);
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r2.w = fma(v3.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r2.w, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_13 = -(r1.xyzx);
  let v_14 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_13.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[3u].x);
  let v_16 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = fma(r1.www, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r1.w = fma((-(r2.zzzz)).w, r2.x, 1.0f);
  r2.x = (r0.z * r1.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[7u].y)));
  r3.w = (cb11_11.tint_symbol_4[3u].w * cb11_11.tint_symbol_4[7u].y);
  r3.w = (r3.w * v3.x);
  r0.y = (r0.y * r3.w);
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = fma(cb11_11.tint_symbol_4[8u].www, r4.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = (r0.yyy * cb11_11.tint_symbol_4[8u].xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(r4.xyzx);
  let v_22 = fma(v4.xyz, r3.www, v_21.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_23 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r0.y = dot(r3.xyz, r4.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r3.w = fma(cb11_11.tint_symbol_4[7u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r3.w);
  r0.y = exp2(r0.y);
  let v_24 = fma(r5.xyz, r0.yyy, r1.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = bitcast<vec3<u32>>(r2.www);
  let v_26 = r4.xyz;
  let v_27 = select(r1.xyz, v_26, (v_25 != vec3<u32>()));
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r5.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(v2.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].z);
  r0.y = fma((-(r2.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_29 = (r0.yyy * r1.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_30 = bitcast<vec4<u32>>(r0.yyyy);
  r5 = select(r5, v3, (v_30 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r5.w)));
  v_31((bitcast<u32>(r0.y) != 0u));
  r0.y = (r4.w * cb11_11.tint_symbol_4[5u].x);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r1.y = (r0.w * cb2_2.tint_symbol[15u].y);
  r0.w = (v3.x * cb11_11.tint_symbol_4[2u].x);
  r0.w = (r0.w * cb11_11.tint_symbol_4[3u].z);
  let v_32 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = (r3.xyz * vec3<f32>(256.0f));
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = floor(r4.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = -(r4.xyzx);
  let v_36 = fma(r3.xyz, vec3<f32>(256.0f), v_35.xyz);
  r3 = vec4<f32>(v_36.xyz, r3.w);
  let v_37 = (r3.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r3 = vec4<f32>(v_37.xyz, r3.w);
  let v_38 = floor(r3.xyz);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  r1.z = dot(r3.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r1.z * 0.0039215688593685627f);
  let v_39 = (r4.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_39.xyz, o1.w);
  r2.y = (r0.y * 0.001953125f);
  r1.x = (cb2_2.tint_symbol[15u].z + cb3_3.tint_symbol_1[45u].w);
  let v_40 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_40.xy, r1.zw);
  let v_41 = sqrt(r1.xy);
  o3 = vec4<f32>(v_41.xy, o3.zw);
  o3.z = clamp(((r0.wwww * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.y = clamp(fma(r0.zzzz, r1.wwww, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  r2.z = cb11_11.tint_symbol_4[4u].w;
  let v_42 = -(r2.xyxx);
  let v_43 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_42.xy);
  r1 = vec4<f32>(v_43.xy, r1.zw);
  r1.z = 0.0f;
  let v_44 = max(r1.xyz, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_44.xyz);
  let v_45 = fma(r0.yzw, r0.xxx, r2.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = sqrt(r0.xy);
  o2 = vec4<f32>(v_46.xy, o2.zw);
  o0 = r5;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3.w = 1.00188386440277099609f;
}

fn v_31(v_47 : bool) {
  if (v_47) {
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
