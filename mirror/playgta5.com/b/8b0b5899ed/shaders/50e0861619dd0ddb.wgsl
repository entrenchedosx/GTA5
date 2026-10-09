diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb18_struct {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb4_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct_1;

struct cb1_struct {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

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
  r0.x = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  r1 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = (r0.xx * r0.yz);
  r0 = vec4<f32>(v_2.x, r0.yz, v_2.y);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = sqrt(abs(r0.yyyy).y);
  let v_3 = (r0.www * v6.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.xxx, v5.xyz, r1.xyz);
  r0 = vec4<f32>(v_4.x, r0.y, v_4.yz);
  let v_5 = fma(r0.yyy, v2.xyz, r0.xzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(r0.z, r0.w, 1.0f);
  let v_6 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = clamp(fma(r1.xxxx, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_7 = (r1.xxx * v4.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = dot(r1.xyz, r0.xyz);
  r1.w = clamp(vec4<f32>(v_8, v_8, v_8, v_8).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = fma(r1.w, 0.40000000596046447754f, 0.5f);
  r2.x = clamp(v7.x, 0.0f, 1.0f);
  r1.w = (r1.w * r2.x);
  r0.w = (r0.w * r1.w);
  r2 = vec4<f32>(((v1.xyz.zz + vec2<f32>(0.0f, -0.75f))).xy, r2.zw);
  let v_9 = clamp(((r2.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r3 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  let v_10 = (r3.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = (r2.xxx * r4.xyz);
  r2 = vec4<f32>(v_11.x, r2.y, v_11.yz);
  let v_12 = (r2.yy * cb13_13.tint_symbol_4[17u].yz);
  r4 = vec4<f32>(v_12.xy, r4.zw);
  r5 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r5.z >= 0.8125f)));
  r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_13 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.xzw) & bitcast<vec3<u32>>(r2.yyy)));
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = ((-(r2.xyzx)).xyz + r3.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = (r2.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r0.www * r2.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r3.xyz, cb13_13.tint_symbol_4[4u].yyy, r2.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * v6.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r6 = (v1.xyz.xyxy * cb10_10.tint_symbol_5[2u]);
  r6 = (r6 * vec4<f32>(0.5f));
  r7 = textureSample(t3, s3, r6.zwzz.xy);
  r6 = textureSample(t3, s3, r6.xyxx.xy);
  let v_19 = fma(r7.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(r4.xy, v_19.xy);
  let v_20 = (r4.zw * vec2<f32>(0.10000000149011611938f));
  r4 = vec4<f32>(r4.xy, v_20.xy);
  let v_21 = fma(v2.xyz, r4.www, r3.xyz);
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = fma(v2.xyz, r4.zzz, r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_23 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  r0.w = dot(r1.xyz, r7.xyz);
  r2.w = dot(cb1_1.tint_symbol[14u].xyz, r7.xyz);
  r4.z = fma((-(r0.wwww)).z, r0.w, 1.0f);
  r0.w = (r0.w * r2.w);
  r2.w = fma((-(r2.wwww)).w, r2.w, 1.0f);
  r2.w = sqrt(r2.w);
  r4.z = sqrt(r4.z);
  let v_24 = -(r0.wwww);
  r0.w = fma(r4.z, r2.w, v_24.w);
  r0.w = log2(abs(r0.wwww).w);
  let v_25 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  r4 = vec4<f32>(r4.xy, v_25.xy);
  r0.w = (r0.w * r4.w);
  r0.w = exp2(r0.w);
  let v_26 = (r0.www * cb10_10.tint_symbol_5[1u].xyz);
  r7 = vec4<f32>(v_26.xyz, r7.w);
  r0.w = (r0.w * cb10_10.tint_symbol_5[0u].y);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r5.z < 0.03125f)));
  let v_27 = (r5.yx * r5.yx);
  r5 = vec4<f32>(v_27.xy, r5.zw);
  let v_28 = fma(r5.xy, cb10_10.tint_symbol_5[3u].zw, r4.xy);
  r4 = vec4<f32>(v_28.xy, r4.zw);
  r4.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_29 = (r4.www * r7.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = fma(r5.xyz, vec3<f32>(0.5f), r2.xyz);
  o0 = vec4<f32>(v_30.xyz, o0.w);
  r2.x = clamp(fma(r6.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).x, 0.0f, 1.0f);
  r2.x = (r2.x * r3.w);
  o0.w = (r2.x * cb2_2.tint_symbol_1[15u].x);
  let v_31 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_31.xyz, o1.w);
  r0.x = fma(r0.z, 0.5f, 0.5f);
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_32 = (r0.yyy * r3.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r0.y = dot(r1.xyz, r2.xyz);
  r0.z = dot(cb1_1.tint_symbol[14u].xyz, r2.xyz);
  r1.x = fma((-(r0.yyyy)).x, r0.y, 1.0f);
  r0.y = (r0.z * r0.y);
  r0.z = fma((-(r0.zzzz)).z, r0.z, 1.0f);
  r0.z = sqrt(r0.z);
  r1.x = sqrt(r1.x);
  let v_33 = -(r0.yyyy);
  r0.y = fma(r1.x, r0.z, v_33.y);
  r0.y = log2(abs(r0.yyyy).y);
  r0.y = (r0.y * r4.z);
  r0.y = exp2(r0.y);
  r0.y = fma(r0.y, cb10_10.tint_symbol_5[0u].x, r0.w);
  r0.y = (r6.x * r0.y);
  let v_34 = bitcast<u32>(r2.w);
  r0.y = select(1.0f, r0.y, (v_34 != 0u));
  r0.z = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r0.w = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r0.z = (r0.z + r4.y);
  r1.x = (r4.x * 0.001953125f);
  o2.y = sqrt(r1.x);
  r0.z = fma(cb13_13.tint_symbol_4[4u].z, r0.z, r0.w);
  r0.y = (r0.y * r0.z);
  o2.x = sqrt(r0.y);
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  r0.y = fma(r0.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r0.x = (r0.x + 0.30000001192092895508f);
  let v_35 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r0 = vec4<f32>(r0.xy, v_35.xy);
  r0.x = (r0.w * r0.x);
  r1.x = fma(r0.y, r0.z, cb3_3.tint_symbol_2[45u].w);
  r0.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r1.y = (r0.y * r0.x);
  let v_36 = (r1.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_36.xy, r0.zw);
  let v_37 = sqrt(r0.xy);
  o3 = vec4<f32>(v_37.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_7 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_7(o0, o1, o2, o3);
}
