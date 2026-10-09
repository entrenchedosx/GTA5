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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_1 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_3.xy, r1.z, v_3.z);
  let v_4 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_5 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  let v_6 = (r3.yx * r3.yx);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v1.w))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r4 = textureSample(t6, s6, v1.xyxx.xy);
    let v_7 = -(r0.xyxz);
    let v_8 = fma(r4.xyz, cb13_13.tint_symbol_4[9u].xyz, v_7.xyw);
    r3 = vec4<f32>(v_8.xy, r3.z, v_8.z);
    let v_9 = fma(v1.www, r3.xyw, r0.xyz);
    r0 = vec4<f32>(v_9.xyz, r0.w);
  }
  let v_10 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  r3.w = fma(r2.z, 0.5f, 0.5f);
  r4.x = fma(r3.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.w = (r3.w + 0.30000001192092895508f);
  r3.y = (r3.y * r3.w);
  let v_11 = r4;
  r4 = vec4<f32>(v_11.x, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, v_11.w);
  let v_12 = clamp(((r4.yyzy * vec4<f32>(0.0f, 4.0f, 4.0f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_13 = r4;
  r4 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_14 = (r0.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = (r4.yyy * r5.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = -(r5.xyzx);
  let v_18 = (r0.xyz + v_17.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r4.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_20 = r4;
  r4 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = fma(r1.xy, cb10_10.tint_symbol_5[3u].zw, r4.yz);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r3.w = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.y = (r1.y + r2.w);
  r1.y = fma(cb13_13.tint_symbol_4[4u].z, r1.y, r3.w);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_23 = (r2.www * v4.xyz);
  r4 = vec4<f32>(r4.x, v_23.xyz);
  let v_24 = dot(r4.yzw, r2.xyz);
  r2.w = clamp(vec4<f32>(v_24, v_24, v_24, v_24).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, 0.40000000596046447754f, 0.5f);
  r1.z = fma(r1.z, r1.w, 1.0f);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r1.z = (r1.z * 1.42857146263122558594f);
  r1.w = clamp(v7.x, 0.0f, 1.0f);
  r1.w = (r1.w * r2.w);
  r1.z = (r1.z * r1.w);
  let v_25 = (r0.xyz * r1.zzz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = fma(r5.xyz, cb13_13.tint_symbol_4[4u].yyy, r0.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  r1.z = dot(v6.xyz, v6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_27 = (r1.zzz * v6.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r6 = (v1.xyxy * cb10_10.tint_symbol_5[2u]);
  r6 = (r6 * vec4<f32>(0.5f));
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  let v_28 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_28.xy);
  let v_29 = (r1.zw * vec2<f32>(0.10000000149011611938f));
  r1 = vec4<f32>(r1.xy, v_29.xy);
  let v_30 = fma(v2.xyz, r1.zzz, r5.xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_31 = (r1.zzz * r6.xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  r1.z = dot(r4.yzw, r6.xyz);
  r2.w = dot(cb1_1.tint_symbol[14u].xyz, r6.xyz);
  let v_32 = fma(v2.xyz, r1.www, r5.xyz);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_33 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r1.w = dot(r4.yzw, r5.xyz);
  r3.w = dot(cb1_1.tint_symbol[14u].xyz, r5.xyz);
  r4.y = fma((-(r1.zzzz)).y, r1.z, 1.0f);
  r4.z = fma((-(r2.wwww)).z, r2.w, 1.0f);
  let v_34 = sqrt(r4.yz);
  let v_35 = r4;
  r4 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
  r1.z = (r1.z * r2.w);
  let v_36 = -(r1.zzzz);
  r1.z = fma(r4.y, r4.z, v_36.z);
  r2.w = fma((-(r1.wwww)).w, r1.w, 1.0f);
  r2.w = sqrt(r2.w);
  r4.y = fma((-(r3.wwww)).y, r3.w, 1.0f);
  r4.y = sqrt(r4.y);
  r1.w = (r1.w * r3.w);
  let v_37 = -(r1.wwww);
  r1.w = fma(r2.w, r4.y, v_37.w);
  let v_38 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_39 = r4;
  r4 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
  r1.z = log2(abs(r1.zzzz).z);
  r1.z = (r1.z * r4.y);
  r1.z = exp2(r1.z);
  r1.w = log2(abs(r1.wwww).w);
  r1.w = (r1.w * r4.z);
  r1.w = exp2(r1.w);
  r2.w = (r1.w * cb10_10.tint_symbol_5[0u].y);
  r1.z = fma(r1.z, cb10_10.tint_symbol_5[0u].x, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.03125f)));
  r3.z = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r1.z = (r7.x * r1.z);
  let v_40 = bitcast<u32>(r2.w);
  r1.z = select(1.0f, r1.z, (v_40 != 0u));
  r1.y = (r1.z * r1.y);
  let v_41 = (r1.www * cb10_10.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(r4.x, v_41.xyz);
  let v_42 = (r3.zzz * r4.yzw);
  r4 = vec4<f32>(r4.x, v_42.xyz);
  let v_43 = fma(r4.yzw, vec3<f32>(0.5f), r0.xyz);
  o0 = vec4<f32>(v_43.xyz, o0.w);
  r0.x = clamp(fma(r7.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r5.y = (r0.y * r3.y);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  let v_44 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_44.xyz, o1.w);
  r0.x = (r1.x * 0.001953125f);
  r5.x = fma(r4.x, r3.x, cb3_3.tint_symbol_2[45u].w);
  let v_45 = (r5.xy * vec2<f32>(0.5f));
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  let v_47 = sqrt(r0.yz);
  o3 = vec4<f32>(v_47.xy, o3.zw);
  o2.x = sqrt(r1.y);
  o2.y = sqrt(r0.x);
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
