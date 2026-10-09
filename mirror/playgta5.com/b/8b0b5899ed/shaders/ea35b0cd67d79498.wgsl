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

struct cb9_struct {
  tint_symbol_4 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v = (v1.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.z = dot(v2.xyz, v2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_1 = (r0.zzz * v2.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  r3 = textureSample(t6, s6, r0.xyxx.xy);
  let v_2 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_2.xy, r3.zw);
  r0.x = dot(r3.xyz, cb11_11.tint_symbol_4[5u].xyz);
  let v_3 = (r1.xyz * cb11_11.tint_symbol_4[0u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r4 = (r1 * v3.xxxw);
  r0.y = (v3.x * cb2_2.tint_symbol[15u].z);
  let v_4 = (v1.xy * cb11_11.tint_symbol_4[8u].xx);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  r5 = textureSample(t3, s3, r3.xyxx.xy);
  r6 = textureSample(t4, s4, r3.xyxx.xy);
  r0.w = clamp(((v5.xyz.zzzz + v5.xyz.zzzz)).w, 0.0f, 1.0f);
  r1.w = (v5.z + -0.5f);
  r1.w = clamp(((r1.wwww + r1.wwww)).w, 0.0f, 1.0f);
  r0.w = (r5.w * r0.w);
  let v_5 = fma((-(r1.xyzx)).xyz, v3.xxx, r5.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.www, r1.xyz, r4.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = ((-(r1.xyzx)).xyz + r6.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(r1.www, r3.xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = -(cb11_11.tint_symbol_4[4u].yyyy);
  r0.w = fma(r0.x, cb11_11.tint_symbol_4[4u].y, v_9.w);
  r0.w = fma(v5.z, r0.w, cb11_11.tint_symbol_4[4u].y);
  r0.w = (r0.w * v3.x);
  r0.w = (r0.w * v2.w);
  let v_10 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r1.w = (r3.x * v3.z);
  let v_11 = (r3.yy * v5.xyz.xy);
  let v_12 = r3;
  r3 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r5 = textureSample(t5, s5, r3.yzyy.xy);
  r2.w = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r3.y = ((-(r5.xxxx)).y + r5.z);
  r5.x = fma(r2.w, r3.y, r5.x);
  let v_13 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_14 = r3;
  r3 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r2.w = fma(v3.z, r3.x, -1.0f);
  r2.w = fma(r3.x, r2.w, 1.0f);
  r3.x = (r2.w * r3.y);
  let v_15 = -(r1.xyzx);
  let v_16 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_15.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = fma(r3.xxx, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r1.w = (r1.w * cb11_11.tint_symbol_4[2u].x);
  let v_18 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = fma(r1.www, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.w = fma((-(r3.zzzz)).w, r2.w, 1.0f);
  r3.x = (r0.w * r1.w);
  r2.w = (v3.x * cb11_11.tint_symbol_4[2u].w);
  r0.x = (r0.x * r2.w);
  r0.x = (r0.x * 0.75f);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_20 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(cb11_11.tint_symbol_4[6u].www, r4.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = (r0.xxx * cb11_11.tint_symbol_4[6u].xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = -(r4.xyzx);
  let v_24 = fma(v4.xyz, r2.www, v_23.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_25 = (r0.xxx * r4.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r0.x = dot(r2.xyz, r4.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r2.w = fma(r3.w, 15.0f, 0.00000000999999993923f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r2.w);
  r0.x = exp2(r0.x);
  let v_26 = fma(r5.xyz, r0.xxx, r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r4.w = (r4.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(v2.z, r0.z, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.x = (r0.z * r0.x);
  r0.x = (r0.y * r0.x);
  r0.y = fma((-(r3.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_28 = (r0.yyy * r1.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_29 = bitcast<vec4<u32>>(r0.yyyy);
  r4 = select(r4, v3, (v_29 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r4.w)));
  v_30((bitcast<u32>(r0.y) != 0u));
  r0.y = (v3.x * cb2_2.tint_symbol[15u].y);
  r0.z = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).z, 0.0f, 1.0f);
  r1.y = (r0.z * r0.y);
  let v_31 = -(cb11_11.tint_symbol_4[4u].xxxx);
  r0.y = fma(r3.w, cb11_11.tint_symbol_4[4u].x, v_31.y);
  r0.y = fma(v5.z, r0.y, cb11_11.tint_symbol_4[4u].x);
  let v_32 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = (r2.xyz * vec3<f32>(256.0f));
  r5 = vec4<f32>(v_33.xyz, r5.w);
  let v_34 = floor(r5.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  let v_35 = -(r5.xyzx);
  let v_36 = fma(r2.xyz, vec3<f32>(256.0f), v_35.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = (r2.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = floor(r2.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  r0.z = dot(r2.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.z * 0.0039215688593685627f);
  let v_39 = (r5.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_39.xyz, o1.w);
  r3.y = (r0.y * 0.001953125f);
  r1.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_40 = (r1.xy * vec2<f32>(0.5f));
  let v_41 = r0;
  r0 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  let v_42 = sqrt(r0.yz);
  o3 = vec4<f32>(v_42.xy, o3.zw);
  r0.y = clamp(fma(r0.wwww, r1.wwww, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  r3.z = cb11_11.tint_symbol_4[3u].w;
  let v_43 = -(r3.xyxx);
  let v_44 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_43.xy);
  r1 = vec4<f32>(v_44.xy, r1.zw);
  r1.z = 0.0f;
  let v_45 = max(r1.xyz, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_45.xyz);
  let v_46 = fma(r0.yzw, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  let v_47 = sqrt(r0.xy);
  o2 = vec4<f32>(v_47.xy, o2.zw);
  o0 = r4;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_30(v_48 : bool) {
  if (v_48) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3);
}
