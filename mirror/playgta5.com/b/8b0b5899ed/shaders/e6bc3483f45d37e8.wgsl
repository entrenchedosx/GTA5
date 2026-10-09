diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = -(r0.xyzx);
  let v_1 = -(cb11_11.tint_symbol_3[1u].xyzx);
  let v_2 = fma(v.xyz, r0.www, v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = dot(r1.xyz, v_1.xyz);
  r2.y = clamp(vec4<f32>(v_5, v_5, v_5, v_5).y, 0.0f, 1.0f);
  r2 = vec4<f32>(r2.xy, ((v1.xy / v1.ww)).xy);
  r3 = textureSample(t8, s8, r2.zwzz.xy);
  let v_6 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = fract(r4.xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = fma((-(r4.yzyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  let v_9 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.xyz + vec3<f32>(-128.0f));
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_11.xy, r3.z, v_11.z);
  r0.w = fma(r3.z, r0.w, cb3_3.tint_symbol_1[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_1[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_12 = dot((-(r0.xyzx)).xyz, r3.xyw);
  r2.x = clamp(vec4<f32>(v_12, v_12, v_12, v_12).x, 0.0f, 1.0f);
  let v_13 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_13.xy, r4.zw);
  let v_14 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_14.xy);
  let v_15 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_15.xy);
  let v_16 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  r5 = textureSample(t9, s9, r2.zwzz.xy);
  r1.w = ((-(r5.zzzz)).w + 1.0f);
  let v_17 = fma(r5.zz, r4.xy, r1.ww);
  r4 = vec4<f32>(v_17.xy, r4.zw);
  r1.x = dot(r3.xyw, r1.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_18 = (r5.xy * r5.xy);
  let v_19 = r1;
  r1 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  r1.w = fma(r1.z, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_20 = -(r1.wwww);
  r1.z = fma(r1.z, 512.0f, v_20.z);
  r1.w = (r1.w * 558.0f);
  r1.z = fma(r1.z, 3.0f, r1.w);
  r1.y = min(r1.y, 1.0f);
  let v_21 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_21.xy);
  let v_22 = clamp(((r1.zzzz * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_22.xy);
  r1.x = (r1.x * r4.w);
  r2.y = (r4.z * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r4.y * r1.x);
  r3.z = fma((-(r1.yyyy)).z, r4.x, 1.0f);
  r1.x = (r2.y * r1.x);
  r1.x = (r1.y * r1.x);
  let v_23 = dot(r3.xyw, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_23, v_23, v_23, v_23).y, 0.0f, 1.0f);
  r1.x = (r1.y * r1.x);
  r1.y = (r3.z * r1.y);
  r4 = textureSample(t7, s7, r2.zwzz.xy);
  let v_24 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  let v_25 = fma(r4.xyz, r1.yyy, r1.xxx);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = (r5.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = (r2.zw * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_27.xy, r1.zw);
  let v_28 = r1.xy;
  let v_29 = max(v_28, vec2<f32>(-2147483648.0f));
  let v_30 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_29), vec2<i32>(2147483647i), (v_29 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_28 == v_28))));
  r6 = vec4<f32>(v_30.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r6 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r6.y) & 8u));
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 8.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_31 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.www, cb3_3.tint_symbol_1[46u].xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.www, cb3_3.tint_symbol_1[48u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.www, cb3_3.tint_symbol_1[44u].xyz);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = fma(r7.xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  r7 = textureSample(t4, s4, r2.zwzz.xy);
  r9 = textureSample(t10, s10, r2.zwzz.xy);
  let v_36 = (r7.xx * r9.xy);
  r1 = vec4<f32>(v_36.xy, r1.zw);
  let v_37 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  let v_38 = (r1.xy + r1.xy);
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_39.xy, r1.zw);
  let v_40 = (r1.yyy * r6.xyz);
  r2 = vec4<f32>(r2.x, v_40.xyz);
  r6.x = cb3_3.tint_symbol_1[46u].w;
  r6.y = cb3_3.tint_symbol_1[47u].w;
  r6.z = cb3_3.tint_symbol_1[48u].w;
  let v_41 = dot(r6.xyz, r3.xyw);
  r0.w = clamp(vec4<f32>(v_41, v_41, v_41, v_41).w, 0.0f, 1.0f);
  let v_42 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.www, r8.xyz);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  let v_43 = fma(r6.xyz, r1.xxx, r2.yzw);
  r2 = vec4<f32>(r2.x, v_43.xyz);
  r0.w = max(r1.y, r1.x);
  let v_44 = (r3.zzz * r2.yzw);
  r2 = vec4<f32>(r2.x, v_44.xyz);
  r1.x = ((-(r3.zzzz)).x + 1.0f);
  let v_45 = (r4.xyz * r2.yzw);
  r2 = vec4<f32>(r2.x, v_45.xyz);
  let v_46 = fma(r5.xyz, r5.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_46.xyz);
  r1.y = dot(r0.xyz, r3.xyw);
  r1.y = (r1.y + r1.y);
  let v_47 = -(r1.yyyy);
  let v_48 = fma(r3.xyw, v_47.xyz, r0.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = (r0.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_49.xyz, r3.w);
  r0.x = (abs(r0.zzzz).x + 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_50 = (r3.xyz / r0.xxx);
  r3 = vec4<f32>(v_50.xyz, r3.w);
  let v_51 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_51.xyz, r3.w);
  let v_52 = bitcast<vec2<u32>>(r0.yy);
  let v_53 = r3.xy;
  let v_54 = select(r3.zy, v_53, (v_52 != vec2<u32>()));
  r0 = vec4<f32>(v_54.xy, r0.zw);
  r0.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = fma(r0.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r1.z = (r0.z * cb5_5.tint_symbol_2[6u].z);
  r0.z = (r0.z * r0.z);
  r3.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r3.x)));
  r0.z = fma(r0.z, 5.0f, r3.x);
  let v_55 = bitcast<u32>(r1.z);
  let v_56 = r1.y;
  r0.z = select(r0.z, v_56, (v_55 != 0u));
  let v_57 = r0.z;
  r3 = textureSampleLevel(t1, s1, r0.xyxx.xy, v_57);
  r0.x = (r9.w + -0.5f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r9.w)));
  let v_58 = bitcast<u32>(r0.y);
  let v_59 = r0.x;
  r0.x = select(r9.w, v_59, (v_58 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r0.y = (r9.z * 16.0f);
  r0.y = (r2.x * r0.y);
  r0.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.x);
  let v_60 = (r0.xxx * r3.xyz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  let v_61 = (r0.www * r3.xyz);
  r0 = vec4<f32>(v_61.x, r0.y, v_61.yz);
  let v_62 = (r1.www * r0.xzw);
  r1 = vec4<f32>(r1.x, v_62.xyz);
  let v_63 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_63.xyz);
  let v_64 = fma(r0.xzw, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r0 = vec4<f32>(v_64.x, r0.y, v_64.yz);
  let v_65 = fma(r0.xzw, r1.xxx, r2.yzw);
  r0 = vec4<f32>(v_65.x, r0.y, v_65.yz);
  let v_66 = fma(r4.xyz, r0.yyy, r0.xzw);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_67.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
