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

struct cb19_struct {
  tint_symbol_4 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb19_struct;

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
  let v = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r0.y = (r1.w * cb2_2.tint_symbol_1[15u].x);
  r0.z = clamp(fma(r0.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).z, 0.0f, 1.0f);
  r0.y = (r0.z * r0.y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_4[18u].x == 0.0f))));
  r2.x = bitcast<f32>(~(bitcast<u32>(r0.w)));
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r0.y)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r2.x)));
  v_2((bitcast<u32>(r2.x) != 0u));
  r2 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_3 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r2.z = dot(r2.xy, r2.xy);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = sqrt(abs(r2.zzzz).z);
  r2.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_4 = (r2.ww * r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = (r2.yyy * v6.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fma(r2.xxx, v5.xyz, r3.xyz);
  r2 = vec4<f32>(v_6.xy, r2.z, v_6.z);
  let v_7 = fma(r2.zzz, v2.xyz, r2.xyw);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_8 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r4 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  let v_9 = (r4.yx * r4.yx);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_10 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_10.xy, r4.zw);
  r4.w = fma(r3.z, 0.5f, 0.5f);
  r5.x = fma(r4.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.w = (r4.w + 0.30000001192092895508f);
  r4.y = (r4.y * r4.w);
  let v_11 = r5;
  r5 = vec4<f32>(v_11.x, ((v1.xyz.zz + vec2<f32>(0.0f, -0.75f))).xy, v_11.w);
  let v_12 = clamp(((r5.yyzy * vec4<f32>(0.0f, 4.0f, 4.0f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_13 = r5;
  r5 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) == 0i)));
  let v_14 = (r1.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = (r5.yyy * r6.xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.www) & bitcast<vec3<u32>>(r6.xyz)));
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = -(r6.xyzx);
  let v_18 = (r1.xyz + v_17.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r5.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_20 = r5;
  r5 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = fma(r2.xy, cb10_10.tint_symbol_5[3u].zw, r5.yz);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = (r1.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  r4.w = bitcast<f32>((bitcast<u32>(r3.w) & 1008981770u));
  r3.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r3.w) != 0u));
  r2.y = (r2.y + r3.w);
  r2.y = fma(cb13_13.tint_symbol_4[4u].z, r2.y, r4.w);
  r3.w = dot(v4.xyz, v4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_23 = (r3.www * v4.xyz);
  r5 = vec4<f32>(r5.x, v_23.xyz);
  let v_24 = dot(r5.yzw, r3.xyz);
  r3.w = clamp(vec4<f32>(v_24, v_24, v_24, v_24).w, 0.0f, 1.0f);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = fma(r3.w, 0.40000000596046447754f, 0.5f);
  r2.z = fma(r2.z, r2.w, 1.0f);
  r2.z = clamp(fma(r2.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r2.z = (r2.z * 1.42857146263122558594f);
  r2.w = clamp(v7.x, 0.0f, 1.0f);
  r2.w = (r2.w * r3.w);
  r2.z = (r2.z * r2.w);
  let v_25 = (r1.xyz * r2.zzz);
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = fma(r6.xyz, cb13_13.tint_symbol_4[4u].yyy, r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r2.z = dot(v6.xyz, v6.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_27 = (r2.zzz * v6.xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  let v_28 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].zw);
  r2 = vec4<f32>(r2.xy, v_28.xy);
  let v_29 = (r2.zw * vec2<f32>(0.5f));
  r2 = vec4<f32>(r2.xy, v_29.xy);
  r7 = textureSample(t3, s3, r2.zwzz.xy);
  let v_30 = fma(r7.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_30.xy);
  let v_31 = (r2.zw * vec2<f32>(0.10000000149011611938f));
  r2 = vec4<f32>(r2.xy, v_31.xy);
  let v_32 = fma(v2.xyz, r2.zzz, r6.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_33 = (r2.zzz * r7.xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  r2.z = dot(r5.yzw, r7.xyz);
  r3.w = dot(cb1_1.tint_symbol[14u].xyz, r7.xyz);
  let v_34 = fma(v2.xyz, r2.www, r6.xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_35 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  r2.w = dot(r5.yzw, r6.xyz);
  r4.w = dot(cb1_1.tint_symbol[14u].xyz, r6.xyz);
  r5.y = fma((-(r2.zzzz)).y, r2.z, 1.0f);
  r5.z = fma((-(r3.wwww)).z, r3.w, 1.0f);
  let v_36 = sqrt(r5.yz);
  let v_37 = r5;
  r5 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  r2.z = (r2.z * r3.w);
  let v_38 = -(r2.zzzz);
  r2.z = fma(r5.y, r5.z, v_38.z);
  r3.w = fma((-(r2.wwww)).w, r2.w, 1.0f);
  r3.w = sqrt(r3.w);
  r5.y = fma((-(r4.wwww)).y, r4.w, 1.0f);
  r5.y = sqrt(r5.y);
  r2.w = (r2.w * r4.w);
  let v_39 = -(r2.wwww);
  r2.w = fma(r3.w, r5.y, v_39.w);
  let v_40 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_41 = r5;
  r5 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  r2.z = log2(abs(r2.zzzz).z);
  r2.z = (r2.z * r5.y);
  r2.z = exp2(r2.z);
  r2.w = log2(abs(r2.wwww).w);
  r2.w = (r2.w * r5.z);
  r2.w = exp2(r2.w);
  r3.w = (r2.w * cb10_10.tint_symbol_5[0u].y);
  r2.z = fma(r2.z, cb10_10.tint_symbol_5[0u].x, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.z < 0.03125f)));
  r4.z = bitcast<f32>((bitcast<u32>(r3.w) & 1065353216u));
  r0.x = (r0.x * r2.z);
  let v_42 = bitcast<u32>(r3.w);
  r0.x = select(1.0f, r0.x, (v_42 != 0u));
  r0.x = (r0.x * r2.y);
  let v_43 = (r2.www * cb10_10.tint_symbol_5[1u].xyz);
  r2 = vec4<f32>(r2.x, v_43.xyz);
  let v_44 = (r4.zzz * r2.yzw);
  r2 = vec4<f32>(r2.x, v_44.xyz);
  let v_45 = fma(r2.yzw, vec3<f32>(0.5f), r1.xyz);
  o0 = vec4<f32>(v_45.xyz, o0.w);
  r0.z = (r0.z * r1.w);
  r1.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r1.y = (r1.x * r4.y);
  r0.z = (r0.z * cb2_2.tint_symbol_1[15u].x);
  let v_46 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_46.xyz, o1.w);
  r1.z = (r2.x * 0.001953125f);
  r1.x = fma(r5.x, r4.x, cb3_3.tint_symbol_2[45u].w);
  let v_47 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_47.xy, r1.zw);
  let v_48 = sqrt(r1.xy);
  o3 = vec4<f32>(v_48.xy, o3.zw);
  o2.x = sqrt(r0.x);
  o2.y = sqrt(r1.z);
  r0.x = (r0.z * r0.y);
  r0.x = (r0.x * cb13_13.tint_symbol_4[18u].x);
  let v_49 = bitcast<u32>(r0.w);
  let v_50 = r0.x;
  o0.w = select(r0.z, v_50, (v_49 != 0u));
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_2(v_51 : bool) {
  if (v_51) {
    discard;
    return;
  }
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
