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

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = sqrt(abs(r0.zzzz).z);
  r1.z = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_1 = (r1.zz * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = (r1.yyy * v6.xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  let v_3 = fma(r1.xxx, v5.xyz, r1.yzw);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, v2.xyz, r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_5 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  let v_6 = (r2.yx * r2.yx);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v1.w))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r3 = textureSample(t6, s6, v1.xyxx.xy);
    let v_7 = -(r0.xxxx);
    r3.x = fma(r3.x, cb13_13.tint_symbol_4[9u].x, v_7.x);
    r0.x = fma(v1.w, r3.x, r0.x);
  }
  r0.y = cb13_13.tint_symbol_4[3u].x;
  r3 = textureSample(t13, s13, r0.xyxx.xy);
  let v_8 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r3.w = fma(r1.w, 0.5f, 0.5f);
  r4.x = fma(r3.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.w = (r3.w + 0.30000001192092895508f);
  r0.y = (r0.y * r3.w);
  let v_9 = r4;
  r4 = vec4<f32>(v_9.x, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, v_9.w);
  let v_10 = clamp(((r4.yyzy * vec4<f32>(0.0f, 4.0f, 4.0f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_11 = r4;
  r4 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_12 = (r3.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r4.yyy * r5.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = -(r5.xyzx);
  let v_16 = (r3.xyz + v_15.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (r4.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_18 = r4;
  r4 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = fma(r2.xy, cb10_10.tint_symbol_5[3u].zw, r4.yz);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  let v_20 = (r3.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r3.w = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r2.y = (r2.w + r2.y);
  r2.y = fma(cb13_13.tint_symbol_4[4u].z, r2.y, r3.w);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_21 = (r2.www * v4.xyz);
  r4 = vec4<f32>(r4.x, v_21.xyz);
  let v_22 = dot(r4.yzw, r1.xyw);
  r2.w = clamp(vec4<f32>(v_22, v_22, v_22, v_22).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, 0.40000000596046447754f, 0.5f);
  r0.z = fma(r1.z, r0.z, 1.0f);
  r0.z = clamp(fma(r0.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r0.z = (r0.z * 1.42857146263122558594f);
  r1.z = clamp(v7.x, 0.0f, 1.0f);
  r1.z = (r1.z * r2.w);
  r0.z = (r0.z * r1.z);
  let v_23 = (r3.xyz * r0.zzz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = fma(r5.xyz, cb13_13.tint_symbol_4[4u].yyy, r3.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_25 = (r0.zzz * v6.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  r6 = (v1.xyxy * cb10_10.tint_symbol_5[2u]);
  r6 = (r6 * vec4<f32>(0.5f));
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  let v_26 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r6 = vec4<f32>(v_26.xy, r6.zw);
  let v_27 = (r6.xy * vec2<f32>(0.10000000149011611938f));
  r6 = vec4<f32>(v_27.xy, r6.zw);
  let v_28 = fma(v2.xyz, r6.xxx, r5.xyz);
  r6 = vec4<f32>(v_28.x, r6.y, v_28.yz);
  r0.z = dot(r6.xzw, r6.xzw);
  r0.z = inverseSqrt(r0.z);
  let v_29 = (r0.zzz * r6.xzw);
  r6 = vec4<f32>(v_29.x, r6.y, v_29.yz);
  r0.z = dot(r4.yzw, r6.xzw);
  r1.z = dot(cb1_1.tint_symbol[14u].xyz, r6.xzw);
  let v_30 = fma(v2.xyz, r6.yyy, r5.xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_31 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r2.w = dot(r4.yzw, r5.xyz);
  r3.w = dot(cb1_1.tint_symbol[14u].xyz, r5.xyz);
  r4.y = fma((-(r0.zzzz)).y, r0.z, 1.0f);
  r4.z = fma((-(r1.zzzz)).z, r1.z, 1.0f);
  let v_32 = sqrt(r4.yz);
  let v_33 = r4;
  r4 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  r0.z = (r0.z * r1.z);
  let v_34 = -(r0.zzzz);
  r0.z = fma(r4.y, r4.z, v_34.z);
  r1.z = fma((-(r2.wwww)).z, r2.w, 1.0f);
  r1.z = sqrt(r1.z);
  r4.y = fma((-(r3.wwww)).y, r3.w, 1.0f);
  r4.y = sqrt(r4.y);
  r2.w = (r2.w * r3.w);
  let v_35 = -(r2.wwww);
  r1.z = fma(r1.z, r4.y, v_35.z);
  let v_36 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_37 = r4;
  r4 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  r0.z = log2(abs(r0.zzzz).z);
  r0.z = (r0.z * r4.y);
  r0.z = exp2(r0.z);
  r1.z = log2(abs(r1.zzzz).z);
  r1.z = (r1.z * r4.z);
  r1.z = exp2(r1.z);
  r2.w = (r1.z * cb10_10.tint_symbol_5[0u].y);
  r0.z = fma(r0.z, cb10_10.tint_symbol_5[0u].x, r2.w);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < 0.03125f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
  r0.z = (r7.x * r0.z);
  let v_38 = bitcast<u32>(r2.z);
  r0.z = select(1.0f, r0.z, (v_38 != 0u));
  r0.z = (r0.z * r2.y);
  let v_39 = (r1.zzz * cb10_10.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(r4.x, v_39.xyz);
  let v_40 = (r2.www * r4.yzw);
  r2 = vec4<f32>(r2.x, v_40.xyz);
  let v_41 = fma(r2.yzw, vec3<f32>(0.5f), r3.xyz);
  o0 = vec4<f32>(v_41.xyz, o0.w);
  r1.z = clamp(fma(r7.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).z, 0.0f, 1.0f);
  r0.w = (r0.w * r1.z);
  r1.z = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).z, 0.0f, 1.0f);
  r3.y = (r0.y * r1.z);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_42 = fma(r1.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_42.xyz, o1.w);
  r0.y = (r2.x * 0.001953125f);
  r3.x = fma(r4.x, r0.x, cb3_3.tint_symbol_2[45u].w);
  let v_43 = (r3.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_43.x, r0.yz, v_43.y);
  let v_44 = sqrt(r0.xw);
  o3 = vec4<f32>(v_44.xy, o3.zw);
  let v_45 = sqrt(r0.zy);
  o2 = vec4<f32>(v_45.xy, o2.zw);
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
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
