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

struct cb10_struct {
  tint_symbol_4 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = (v1.xy * cb11_11.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (v1.xy * cb11_11.tint_symbol_4[5u].ww);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_2 = (r0.xxx * v2.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r4 = textureSample(t7, s7, r0.zwzz.xy);
  let v_3 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_3.xy, r4.zw);
  r0.y = dot(r4.xyz, cb11_11.tint_symbol_4[5u].xyz);
  r0.z = (r0.y * cb11_11.tint_symbol_4[4u].y);
  let v_4 = (r2.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r4 = vec4<f32>(v_4.xyz, r4.w);
  r0.w = (r1.w * cb11_11.tint_symbol_4[1u].w);
  let v_5 = -(r4.xyzx);
  let v_6 = fma(r1.xyz, cb11_11.tint_symbol_4[1u].xyz, v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.www, r1.xyz, r4.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r1 = (r2 * v3.xxxw);
  r0.w = (v3.x * cb2_2.tint_symbol[15u].z);
  let v_8 = (v1.xy * cb11_11.tint_symbol_4[9u].zz);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r5 = textureSample(t3, s3, r4.xyxx.xy);
  r6 = textureSample(t4, s4, r4.xyxx.xy);
  r2.w = clamp(((v4.wwww + v4.wwww)).w, 0.0f, 1.0f);
  r3.w = (v4.w + -0.5f);
  r3.w = clamp(((r3.wwww + r3.wwww)).w, 0.0f, 1.0f);
  r2.w = (r5.w * r2.w);
  let v_9 = fma((-(r2.xyzx)).xyz, v3.xxx, r5.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r2.www, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = ((-(r1.xyzx)).xyz + r6.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r3.www, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r0.z = (r0.z * v3.x);
  r0.z = (r0.z * v2.w);
  let v_13 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_13.xy, r2.zw);
  r2.z = (r2.x * v3.z);
  let v_14 = (r2.yy * v1.xy);
  let v_15 = r2;
  r2 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r5 = textureSample(t6, s6, r2.ywyy.xy);
  r2.y = (cb5_5.tint_symbol_2[3u].z * cb11_11.tint_symbol_4[2u].z);
  r2.w = ((-(r5.xxxx)).w + r5.z);
  r5.x = fma(r2.y, r2.w, r5.x);
  let v_16 = (r5.xy * cb11_11.tint_symbol_4[2u].xx);
  let v_17 = r2;
  r2 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
  r3.w = fma(v3.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r3.w, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_18 = -(r1.xyzx);
  let v_19 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_18.xyz);
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r2.y = (r2.z * cb11_11.tint_symbol_4[2u].x);
  let v_21 = ((-(r1.xyzx)).xyz + r5.zzz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = fma(r2.yyy, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  r2.x = fma((-(r2.wwww)).x, r2.x, 1.0f);
  r4.x = (r0.z * r2.x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].y)));
  r2.z = (cb11_11.tint_symbol_4[2u].w * cb11_11.tint_symbol_4[6u].y);
  r2.z = (r2.z * v3.x);
  r0.y = (r0.y * r2.z);
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_23 = ((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz + vec3<f32>(0.0f, 0.0f, -1.0f));
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = fma(cb11_11.tint_symbol_4[7u].www, r5.xyz, cb3_3.tint_symbol_1[0u].xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r0.yyy * cb11_11.tint_symbol_4[7u].xyz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = -(r5.xyzx);
  let v_27 = fma(v4.xyz, r2.zzz, v_26.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_28 = (r0.yyy * r5.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  r0.y = dot(r3.xyz, r5.xyz);
  r0.y = clamp(((r0.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r2.z = fma(cb11_11.tint_symbol_4[6u].x, r4.w, 0.00000000999999993923f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * r2.z);
  r0.y = exp2(r0.y);
  let v_29 = fma(r6.xyz, r0.yyy, r1.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = bitcast<vec3<u32>>(r2.yyy);
  let v_31 = r5.xyz;
  let v_32 = select(r1.xyz, v_31, (v_30 != vec3<u32>()));
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = min(r1.xyz, vec3<f32>(240.0f));
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r5.w = (r1.w * cb2_2.tint_symbol[15u].x);
  r0.x = fma(v2.z, r0.x, -0.34999999403953552246f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.w * r0.x);
  r0.y = fma((-(r4.xxxx)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_34 = (r0.yyy * r1.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  r0.y = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) | bitcast<u32>(cb12_12.tint_symbol_3[4u].y)));
  let v_35 = bitcast<vec4<u32>>(r0.yyyy);
  r1 = select(r5, v3, (v_35 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r1.w)));
  v_36((bitcast<u32>(r0.y) != 0u));
  r0.y = (r4.w * cb11_11.tint_symbol_4[4u].x);
  r0.w = (v3.x * cb2_2.tint_symbol[15u].y);
  r2.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r5.y = (r0.w * r2.y);
  let v_37 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r2 = vec4<f32>(r2.x, v_37.xyz);
  let v_38 = (r2.yzw * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = floor(r3.xyz);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = -(r3.xxyz);
  let v_41 = fma(r2.yzw, vec3<f32>(256.0f), v_40.yzw);
  r2 = vec4<f32>(r2.x, v_41.xyz);
  let v_42 = (r2.yzw * vec3<f32>(8.0f, 8.0f, 4.0f));
  r2 = vec4<f32>(r2.x, v_42.xyz);
  let v_43 = floor(r2.yzw);
  r2 = vec4<f32>(r2.x, v_43.xyz);
  r0.w = dot(r2.zyw, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.w * 0.0039215688593685627f);
  let v_44 = (r3.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_44.xyz, o1.w);
  r4.y = (r0.y * 0.001953125f);
  r5.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_45 = (r5.xy * vec2<f32>(0.5f));
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  let v_47 = sqrt(r0.yw);
  o3 = vec4<f32>(v_47.xy, o3.zw);
  r0.y = clamp(fma(r0.zzzz, r2.xxxx, vec4<f32>(0.40000000596046447754f)).y, 0.0f, 1.0f);
  r4.z = cb11_11.tint_symbol_4[3u].w;
  let v_48 = -(r4.xyxx);
  let v_49 = fma(r0.yy, vec2<f32>(0.5f, 0.48828125f), v_48.xy);
  r2 = vec4<f32>(v_49.xy, r2.zw);
  r2.z = 0.0f;
  let v_50 = max(r2.xyz, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_50.xyz);
  let v_51 = fma(r0.yzw, r0.xxx, r4.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = sqrt(r0.xy);
  o2 = vec4<f32>(v_52.xy, o2.zw);
  o0 = r1;
  o2.z = r0.z;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_36(v_53 : bool) {
  if (v_53) {
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
