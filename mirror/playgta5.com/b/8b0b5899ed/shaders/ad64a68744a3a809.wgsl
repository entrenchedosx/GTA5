diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

var<private> oMask : array<u32, 1u>;

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_8;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  let v_1 = textureSample(t4, s4, v1.xyxx.xy).xy;
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_3 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_7 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = textureSample(t5, s5, v1.xyxx.xy).xyz;
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r3.yx * r3.yx);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v1.w))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    let v_10 = textureSample(t6, s6, v1.xyxx.xy).xyz;
    r3 = vec4<f32>(v_10.xy, r3.z, v_10.z);
    let v_11 = -(r0.xyxz);
    let v_12 = fma(r3.xyw, cb13_13.tint_symbol_4[9u].xyz, v_11.xyw);
    r3 = vec4<f32>(v_12.xy, r3.z, v_12.z);
    let v_13 = fma(v1.www, r3.xyw, r0.xyz);
    r0 = vec4<f32>(v_13.xyz, r0.w);
  }
  let v_14 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r3 = vec4<f32>(v_14.xy, r3.zw);
  r3.w = fma(r2.z, 0.5f, 0.5f);
  r4.x = fma(r3.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.w = (r3.w + 0.30000001192092895508f);
  r3.y = (r3.y * r3.w);
  let v_15 = r4;
  r4 = vec4<f32>(v_15.x, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, v_15.w);
  let v_16 = clamp(((r4.yyzy * vec4<f32>(0.0f, 4.0f, 4.0f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_17 = r4;
  r4 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_18 = (r0.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = (r4.yyy * r5.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(r5.xyzx);
  let v_22 = (r0.xyz + v_21.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r4.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_24 = r4;
  r4 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  let v_25 = fma(r1.xy, cb10_10.tint_symbol_5[3u].zw, r4.yz);
  r1 = vec4<f32>(v_25.xy, r1.zw);
  let v_26 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  r3.w = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.y = (r1.y + r2.w);
  r1.y = fma(cb13_13.tint_symbol_4[4u].z, r1.y, r3.w);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_27 = (r2.www * v4.xyz);
  r4 = vec4<f32>(r4.x, v_27.xyz);
  let v_28 = dot(r4.yzw, r2.xyz);
  r2.w = clamp(vec4<f32>(v_28, v_28, v_28, v_28).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, 0.40000000596046447754f, 0.5f);
  r1.z = fma(r1.z, r1.w, 1.0f);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r1.z = (r1.z * 1.42857146263122558594f);
  r1.w = clamp(v7.x, 0.0f, 1.0f);
  r1.w = (r1.w * r2.w);
  r1.z = (r1.z * r1.w);
  let v_29 = (r0.xyz * r1.zzz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = fma(r5.xyz, cb13_13.tint_symbol_4[4u].yyy, r0.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r1.z = dot(v6.xyz, v6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_31 = (r1.zzz * v6.xyz);
  r5 = vec4<f32>(v_31.xyz, r5.w);
  r6 = (v1.xyxy * cb10_10.tint_symbol_5[2u]);
  r6 = (r6 * vec4<f32>(0.5f));
  let v_32 = textureSample(t3, s3, r6.xyxx.xy).xw;
  r1 = vec4<f32>(r1.xy, v_32.xy);
  let v_33 = textureSample(t3, s3, r6.zwzz.xy).xy;
  r6 = vec4<f32>(v_33.xy, r6.zw);
  let v_34 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r6 = vec4<f32>(v_34.xy, r6.zw);
  let v_35 = (r6.xy * vec2<f32>(0.10000000149011611938f));
  r6 = vec4<f32>(v_35.xy, r6.zw);
  let v_36 = fma(v2.xyz, r6.xxx, r5.xyz);
  r6 = vec4<f32>(v_36.x, r6.y, v_36.yz);
  r2.w = dot(r6.xzw, r6.xzw);
  r2.w = inverseSqrt(r2.w);
  let v_37 = (r2.www * r6.xzw);
  r6 = vec4<f32>(v_37.x, r6.y, v_37.yz);
  r2.w = dot(r4.yzw, r6.xzw);
  r3.w = dot(cb1_1.tint_symbol[14u].xyz, r6.xzw);
  let v_38 = fma(v2.xyz, r6.yyy, r5.xyz);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r5.w);
  let v_39 = (r5.www * r5.xyz);
  r5 = vec4<f32>(v_39.xyz, r5.w);
  r4.y = dot(r4.yzw, r5.xyz);
  r4.z = dot(cb1_1.tint_symbol[14u].xyz, r5.xyz);
  r4.w = fma((-(r2.wwww)).w, r2.w, 1.0f);
  r4.w = sqrt(r4.w);
  r5.x = fma((-(r3.wwww)).x, r3.w, 1.0f);
  r5.x = sqrt(r5.x);
  r2.w = (r2.w * r3.w);
  let v_40 = -(r2.wwww);
  r2.w = fma(r4.w, r5.x, v_40.w);
  r3.w = fma((-(r4.yyyy)).w, r4.y, 1.0f);
  r3.w = sqrt(r3.w);
  r4.w = fma((-(r4.zzzz)).w, r4.z, 1.0f);
  r4.w = sqrt(r4.w);
  r4.y = (r4.z * r4.y);
  let v_41 = -(r4.yyyy);
  r3.w = fma(r3.w, r4.w, v_41.w);
  let v_42 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_43 = r4;
  r4 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  r2.w = log2(abs(r2.wwww).w);
  r2.w = (r2.w * r4.y);
  r2.w = exp2(r2.w);
  r3.w = log2(abs(r3.wwww).w);
  r3.w = (r3.w * r4.z);
  r3.w = exp2(r3.w);
  r4.y = (r3.w * cb10_10.tint_symbol_5[0u].y);
  r2.w = fma(r2.w, cb10_10.tint_symbol_5[0u].x, r4.y);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.03125f)));
  r4.y = bitcast<f32>((bitcast<u32>(r3.z) & 1065353216u));
  r1.z = (r1.z * r2.w);
  let v_44 = bitcast<u32>(r3.z);
  r1.z = select(1.0f, r1.z, (v_44 != 0u));
  r1.y = (r1.z * r1.y);
  let v_45 = (r3.www * cb10_10.tint_symbol_5[1u].xyz);
  r5 = vec4<f32>(v_45.xyz, r5.w);
  let v_46 = (r4.yyy * r5.xyz);
  r4 = vec4<f32>(r4.x, v_46.xyz);
  let v_47 = fma(r4.yzw, vec3<f32>(0.5f), r0.xyz);
  o0 = vec4<f32>(v_47.xyz, o0.w);
  r0.x = clamp(fma(r1.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r5.y = (r0.y * r3.y);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  let v_48 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_48.xyz, o1.w);
  r0.x = (r1.x * 0.001953125f);
  r5.x = fma(r4.x, r3.x, cb3_3.tint_symbol_2[45u].w);
  let v_49 = (r5.xy * vec2<f32>(0.5f));
  let v_50 = r0;
  r0 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  let v_51 = sqrt(r0.yz);
  o3 = vec4<f32>(v_51.xy, o3.zw);
  o2.x = sqrt(r1.y);
  o2.y = sqrt(r0.x);
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
  oMask[0u] = bitcast<u32>(bitcast<f32>(v.tint_symbol_7[0i].x));
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(sample_mask)
  oMask : u32,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_9(o0, o1, o2, o3, oMask[0u]);
}
