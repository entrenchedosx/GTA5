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

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

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
  r0.z = clamp(fma(r1.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).z, 0.0f, 1.0f);
  r0.z = (r0.z * r0.w);
  r0.z = (r0.z * cb2_2.tint_symbol_1[15u].x);
  r0.w = dot(v0.xy, vec2<f32>(0.5f));
  r0.w = fract(r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.zz)));
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.y)));
  r0.w = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r0.w)));
  v_6((bitcast<u32>(r0.w) != 0u));
  r2 = textureSample(t4, s4, v1.xyz.xyxx.xy);
  let v_7 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r0.w = dot(r1.yz, r1.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.w = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_9 = (r1.ww * r1.yz);
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = (r1.zzz * v6.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r1.yyy, v5.xyz, r2.xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = fma(r0.www, v2.xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = inverseSqrt(r0.w);
  let v_14 = (r0.www * r1.yzw);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r3 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  let v_15 = (r3.yx * r3.yx);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.y = cb13_13.tint_symbol_4[3u].x;
  r4 = textureSample(t13, s13, r0.xyxx.xy);
  let v_17 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r0 = vec4<f32>(v_17.xy, r0.zw);
  r3.x = fma(r2.z, 0.5f, 0.5f);
  r3.y = fma(r3.x, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r3.x = (r3.x + 0.30000001192092895508f);
  r0.y = (r0.y * r3.x);
  let v_18 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  r3 = vec4<f32>(v_18.x, r3.yz, v_18.y);
  let v_19 = clamp(((r3.xxxw * vec4<f32>(4.0f, 0.0f, 0.0f, 4.0f))).xw, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_19.x, r3.yz, v_19.y);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_20 = (r4.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = (r3.xxx * r5.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = -(r5.xyzx);
  let v_24 = (r4.xyz + v_23.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = (r3.ww * cb13_13.tint_symbol_4[17u].yz);
  r3 = vec4<f32>(v_25.x, r3.yz, v_25.y);
  let v_26 = fma(r1.yz, cb10_10.tint_symbol_5[3u].zw, r3.xw);
  let v_27 = r1;
  r1 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  let v_28 = (r4.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  r3.x = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.z = (r1.z + r2.w);
  r1.z = fma(cb13_13.tint_symbol_4[4u].z, r1.z, r3.x);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_29 = (r2.www * v4.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = dot(r5.xyz, r2.xyz);
  r2.w = clamp(vec4<f32>(v_30, v_30, v_30, v_30).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, 0.40000000596046447754f, 0.5f);
  r0.w = fma(r1.w, r0.w, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r1.w = clamp(v7.x, 0.0f, 1.0f);
  r1.w = (r1.w * r2.w);
  r0.w = (r0.w * r1.w);
  let v_31 = (r4.xyz * r0.www);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = fma(r6.xyz, cb13_13.tint_symbol_4[4u].yyy, r4.xyz);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_33 = (r0.www * v6.xyz);
  r6 = vec4<f32>(v_33.xyz, r6.w);
  let v_34 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].zw);
  r3 = vec4<f32>(v_34.x, r3.yz, v_34.y);
  let v_35 = (r3.xw * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_35.x, r3.yz, v_35.y);
  r7 = textureSample(t3, s3, r3.xwxx.xy);
  let v_36 = fma(r7.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_36.x, r3.yz, v_36.y);
  let v_37 = (r3.xw * vec2<f32>(0.10000000149011611938f));
  r3 = vec4<f32>(v_37.x, r3.yz, v_37.y);
  let v_38 = fma(v2.xyz, r3.xxx, r6.xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_39 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  r0.w = dot(r5.xyz, r7.xyz);
  r1.w = dot(cb1_1.tint_symbol[14u].xyz, r7.xyz);
  let v_40 = fma(v2.xyz, r3.www, r6.xyz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  r2.w = dot(r6.xyz, r6.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_41 = (r2.www * r6.xyz);
  r6 = vec4<f32>(v_41.xyz, r6.w);
  r2.w = dot(r5.xyz, r6.xyz);
  r3.x = dot(cb1_1.tint_symbol[14u].xyz, r6.xyz);
  r3.w = fma((-(r0.wwww)).w, r0.w, 1.0f);
  r3.w = sqrt(r3.w);
  r4.w = fma((-(r1.wwww)).w, r1.w, 1.0f);
  r4.w = sqrt(r4.w);
  r0.w = (r0.w * r1.w);
  let v_42 = -(r0.wwww);
  r0.w = fma(r3.w, r4.w, v_42.w);
  r1.w = fma((-(r2.wwww)).w, r2.w, 1.0f);
  r1.w = sqrt(r1.w);
  r3.w = fma((-(r3.xxxx)).w, r3.x, 1.0f);
  r3.w = sqrt(r3.w);
  r2.w = (r2.w * r3.x);
  let v_43 = -(r2.wwww);
  r1.w = fma(r1.w, r3.w, v_43.w);
  let v_44 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  r3 = vec4<f32>(v_44.x, r3.yz, v_44.y);
  r0.w = log2(abs(r0.wwww).w);
  r0.w = (r0.w * r3.x);
  r0.w = exp2(r0.w);
  r1.w = log2(abs(r1.wwww).w);
  r1.w = (r1.w * r3.w);
  r1.w = exp2(r1.w);
  r2.w = (r1.w * cb10_10.tint_symbol_5[0u].y);
  r0.w = fma(r0.w, cb10_10.tint_symbol_5[0u].x, r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.03125f)));
  r3.x = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r0.w = (r1.x * r0.w);
  let v_45 = bitcast<u32>(r2.w);
  r0.w = select(1.0f, r0.w, (v_45 != 0u));
  r0.w = (r0.w * r1.z);
  let v_46 = (r1.www * cb10_10.tint_symbol_5[1u].xyz);
  r1 = vec4<f32>(v_46.x, r1.y, v_46.yz);
  let v_47 = (r3.xxx * r1.xzw);
  r1 = vec4<f32>(v_47.x, r1.y, v_47.yz);
  let v_48 = fma(r1.xzw, vec3<f32>(0.5f), r4.xyz);
  o0 = vec4<f32>(v_48.xyz, o0.w);
  r1.x = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).x, 0.0f, 1.0f);
  r4.y = (r0.y * r1.x);
  let v_49 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_49.xyz, o1.w);
  r0.y = (r1.y * 0.001953125f);
  r4.x = fma(r3.y, r0.x, cb3_3.tint_symbol_2[45u].w);
  let v_50 = (r4.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_50.xy, r1.zw);
  let v_51 = sqrt(r1.xy);
  o3 = vec4<f32>(v_51.xy, o3.zw);
  let v_52 = sqrt(r0.wy);
  o2 = vec4<f32>(v_52.xy, o2.zw);
  r0.x = fma(r0.z, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_6(v_53 : bool) {
  if (v_53) {
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
fn main(@builtin(position) v_54 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v_54, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_7(o0, o1, o2, o3);
}
