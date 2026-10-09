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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  let v_2 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = textureSample(t3, s3, r1.xyxx.xy);
  r1.y = clamp(fma(r1.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).y, 0.0f, 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.ww)));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  r2 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.w = dot(r1.yz, r1.yz);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_8 = (r1.yz * r2.xx);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.zzz * v6.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r1.yyy, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r1.www, v2.xyz, r2.xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_13 = (r1.yzw * r2.xxx);
  r2 = vec4<f32>(r2.x, v_13.xyz);
  r3 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  let v_14 = (r3.yx * r3.yx);
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_16 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  let v_17 = r3;
  r3 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
  r4.x = fma(r2.w, 0.5f, 0.5f);
  r4.y = fma(r4.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r4.x = (r4.x + 0.30000001192092895508f);
  r3.w = (r3.w * r4.x);
  let v_18 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  let v_19 = r4;
  r4 = vec4<f32>(v_18.x, v_19.y, v_18.y, v_19.w);
  let v_20 = clamp(((r4.xxzx * vec4<f32>(4.0f, 0.0f, 4.0f, 0.0f))).xz, vec2<f32>(), vec2<f32>(1.0f));
  let v_21 = r4;
  r4 = vec4<f32>(v_20.x, v_21.y, v_20.y, v_21.w);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) == 0i)));
  let v_22 = (r0.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = (r4.xxx * r5.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = -(r5.xyzx);
  let v_26 = (r0.xyz + v_25.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = (r4.zz * cb13_13.tint_symbol_4[17u].yz);
  let v_28 = r4;
  r4 = vec4<f32>(v_27.x, v_28.y, v_27.y, v_28.w);
  let v_29 = fma(r1.yz, cb10_10.tint_symbol_5[3u].zw, r4.xz);
  let v_30 = r1;
  r1 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  let v_31 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  r4.x = bitcast<f32>((bitcast<u32>(r3.x) & 1008981770u));
  r3.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r3.x) != 0u));
  r1.z = (r1.z + r3.x);
  r1.z = fma(cb13_13.tint_symbol_4[4u].z, r1.z, r4.x);
  r3.x = dot(v4.xyz, v4.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_32 = (r3.xxx * v4.xyz);
  r4 = vec4<f32>(v_32.x, r4.y, v_32.yz);
  let v_33 = dot(r4.xzw, r2.yzw);
  r3.x = clamp(vec4<f32>(v_33, v_33, v_33, v_33).x, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = fma(r3.x, 0.40000000596046447754f, 0.5f);
  r1.w = fma(r1.w, r2.x, 1.0f);
  r1.w = clamp(fma(r1.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r1.w = (r1.w * 1.42857146263122558594f);
  r2.x = clamp(v7.x, 0.0f, 1.0f);
  r2.x = (r2.x * r3.x);
  r1.w = (r1.w * r2.x);
  let v_34 = (r0.xyz * r1.www);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  let v_35 = fma(r5.xyz, cb13_13.tint_symbol_4[4u].yyy, r0.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  r1.w = dot(v6.xyz, v6.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_36 = (r1.www * v6.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  let v_37 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].zw);
  r6 = vec4<f32>(v_37.xy, r6.zw);
  let v_38 = (r6.xy * vec2<f32>(0.5f));
  r6 = vec4<f32>(v_38.xy, r6.zw);
  r6 = textureSample(t3, s3, r6.xyxx.xy);
  let v_39 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r6 = vec4<f32>(v_39.xy, r6.zw);
  let v_40 = (r6.xy * vec2<f32>(0.10000000149011611938f));
  r6 = vec4<f32>(v_40.xy, r6.zw);
  let v_41 = fma(v2.xyz, r6.xxx, r5.xyz);
  r6 = vec4<f32>(v_41.x, r6.y, v_41.yz);
  r1.w = dot(r6.xzw, r6.xzw);
  r1.w = inverseSqrt(r1.w);
  let v_42 = (r1.www * r6.xzw);
  r6 = vec4<f32>(v_42.x, r6.y, v_42.yz);
  r1.w = dot(r4.xzw, r6.xzw);
  r2.x = dot(cb1_1.tint_symbol[14u].xyz, r6.xzw);
  let v_43 = fma(v2.xyz, r6.yyy, r5.xyz);
  r5 = vec4<f32>(v_43.xyz, r5.w);
  r3.x = dot(r5.xyz, r5.xyz);
  r3.x = inverseSqrt(r3.x);
  let v_44 = (r3.xxx * r5.xyz);
  r5 = vec4<f32>(v_44.xyz, r5.w);
  r3.x = dot(r4.xzw, r5.xyz);
  r4.x = dot(cb1_1.tint_symbol[14u].xyz, r5.xyz);
  r4.z = fma((-(r1.wwww)).z, r1.w, 1.0f);
  r4.w = fma((-(r2.xxxx)).w, r2.x, 1.0f);
  let v_45 = sqrt(r4.zw);
  r4 = vec4<f32>(r4.xy, v_45.xy);
  r1.w = (r1.w * r2.x);
  let v_46 = -(r1.wwww);
  r1.w = fma(r4.z, r4.w, v_46.w);
  r2.x = fma((-(r3.xxxx)).x, r3.x, 1.0f);
  r2.x = sqrt(r2.x);
  r4.z = fma((-(r4.xxxx)).z, r4.x, 1.0f);
  r4.z = sqrt(r4.z);
  r3.x = (r3.x * r4.x);
  let v_47 = -(r3.xxxx);
  r2.x = fma(r2.x, r4.z, v_47.x);
  let v_48 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_49 = r4;
  r4 = vec4<f32>(v_48.x, v_49.y, v_48.y, v_49.w);
  r1.w = log2(abs(r1.wwww).w);
  r1.w = (r1.w * r4.x);
  r1.w = exp2(r1.w);
  r2.x = log2(abs(r2.xxxx).x);
  r2.x = (r2.x * r4.z);
  r2.x = exp2(r2.x);
  r3.x = (r2.x * cb10_10.tint_symbol_5[0u].y);
  r1.w = fma(r1.w, cb10_10.tint_symbol_5[0u].x, r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.03125f)));
  r3.z = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r1.x = (r1.x * r1.w);
  let v_50 = bitcast<u32>(r3.x);
  r1.x = select(1.0f, r1.x, (v_50 != 0u));
  r1.x = (r1.x * r1.z);
  let v_51 = (r2.xxx * cb10_10.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_51.x, r4.y, v_51.yz);
  let v_52 = (r3.zzz * r4.xzw);
  r4 = vec4<f32>(v_52.x, r4.y, v_52.yz);
  let v_53 = fma(r4.xzw, vec3<f32>(0.5f), r0.xyz);
  o0 = vec4<f32>(v_53.xyz, o0.w);
  r0.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r3.w);
  let v_54 = fma(r2.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_54.xyz, o1.w);
  r0.z = (r1.y * 0.001953125f);
  r0.x = fma(r4.y, r3.y, cb3_3.tint_symbol_2[45u].w);
  let v_55 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_55.xy, r0.zw);
  let v_56 = sqrt(r0.xy);
  o3 = vec4<f32>(v_56.xy, o3.zw);
  o2.x = sqrt(r1.x);
  o2.y = sqrt(r0.z);
  r0.x = fma(r0.w, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_5(v_57 : bool) {
  if (v_57) {
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
fn main(@builtin(position) v_58 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v_58, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_7(o0, o1, o2, o3);
}
