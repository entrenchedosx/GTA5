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
  r3 = textureSample(t8, s8, v1.xyxx.xy);
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
  let v_13 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
  let v_14 = r2;
  r2 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = (r2.yz * r2.yz);
  r4 = vec4<f32>(v_15.xy, r4.zw);
  let v_16 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  let v_17 = (r2.yz * r4.xy);
  let v_18 = r2;
  r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r4 = textureSample(t9, s9, v1.xyxx.xy);
  r1.w = ((-(r4.zzzz)).w + 1.0f);
  let v_19 = fma(r4.zz, r2.yz, r1.ww);
  let v_20 = r2;
  r2 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r1.x = dot(r3.xyw, r1.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_21 = (r4.xy * r4.xy);
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r1.w = fma(r1.z, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_23 = -(r1.wwww);
  r1.z = fma(r1.z, 512.0f, v_23.z);
  r1.w = (r1.w * 558.0f);
  r1.z = fma(r1.z, 3.0f, r1.w);
  r1.y = min(r1.y, 1.0f);
  let v_24 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_24.xy, r4.zw);
  let v_25 = clamp(((r1.zzzz * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_25.xy);
  r1.x = (r1.x * r4.y);
  r2.w = (r4.x * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r2.z * r1.x);
  r2.y = fma((-(r1.yyyy)).y, r2.y, 1.0f);
  r1.x = (r2.w * r1.x);
  r1.x = (r1.y * r1.x);
  let v_26 = dot(r3.xyw, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_26, v_26, v_26, v_26).y, 0.0f, 1.0f);
  r1.x = (r1.y * r1.x);
  r1.y = (r2.y * r1.y);
  r5 = textureSample(t7, s7, v1.xyxx.xy);
  let v_27 = (r5.xyz * r5.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = fma(r4.xyz, r1.yyy, r1.xxx);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = (r5.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_1[46u].w;
  r6.y = cb3_3.tint_symbol_1[47u].w;
  r6.z = cb3_3.tint_symbol_1[48u].w;
  let v_30 = dot(r6.xyz, r3.xyw);
  r1.x = clamp(vec4<f32>(v_30, v_30, v_30, v_30).x, 0.0f, 1.0f);
  let v_31 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.www, cb3_3.tint_symbol_1[44u].xyz);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = fma(cb3_3.tint_symbol_1[49u].xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_32.xyz, r6.w);
  let v_33 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.www, cb3_3.tint_symbol_1[48u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.www, cb3_3.tint_symbol_1[46u].xyz);
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_35.xy, r1.zw);
  let v_36 = r1.xy;
  let v_37 = max(v_36, vec2<f32>(-2147483648.0f));
  let v_38 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_37), vec2<i32>(2147483647i), (v_37 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_36 == v_36))));
  r9 = vec4<f32>(v_38.xy, r9.zw);
  r9 = vec4<f32>(r9.xy, vec2<f32>());
  r9 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r9.y) & 8u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 8.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_39 = (r1.xxx * r8.xyz);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  let v_40 = fma(r7.xyz, r0.www, r8.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  r8 = textureSample(t4, s4, v1.xyxx.xy);
  r9 = textureSample(t10, s10, v1.xyxx.xy);
  let v_41 = (r8.xx * r9.xy);
  r1 = vec4<f32>(v_41.xy, r1.zw);
  let v_42 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  let v_43 = (r1.xy + r1.xy);
  r1 = vec4<f32>(v_43.xy, r1.zw);
  let v_44 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_44.xy, r1.zw);
  let v_45 = (r1.yyy * r7.xyz);
  r7 = vec4<f32>(v_45.xyz, r7.w);
  let v_46 = fma(r6.xyz, r1.xxx, r7.xyz);
  r6 = vec4<f32>(v_46.xyz, r6.w);
  r0.w = max(r1.y, r1.x);
  let v_47 = (r2.yyy * r6.xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  r1.x = ((-(r2.yyyy)).x + 1.0f);
  let v_48 = (r4.xyz * r6.xyz);
  r2 = vec4<f32>(r2.x, v_48.xyz);
  let v_49 = fma(r5.xyz, r4.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_49.xyz);
  r1.y = dot(r0.xyz, r3.xyw);
  r1.y = (r1.y + r1.y);
  let v_50 = -(r1.yyyy);
  let v_51 = fma(r3.xyw, v_50.xyz, r0.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = (r0.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_52.xyz, r3.w);
  r0.x = (abs(r0.zzzz).x + 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_53 = (r3.xyz / r0.xxx);
  r3 = vec4<f32>(v_53.xyz, r3.w);
  let v_54 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_54.xyz, r3.w);
  let v_55 = bitcast<vec2<u32>>(r0.yy);
  let v_56 = r3.xy;
  let v_57 = select(r3.zy, v_56, (v_55 != vec2<u32>()));
  r0 = vec4<f32>(v_57.xy, r0.zw);
  r0.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = fma(r0.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r1.z = (r0.z * cb5_5.tint_symbol_2[6u].z);
  r0.z = (r0.z * r0.z);
  r3.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r3.x)));
  r0.z = fma(r0.z, 5.0f, r3.x);
  let v_58 = bitcast<u32>(r1.z);
  let v_59 = r1.y;
  r0.z = select(r0.z, v_59, (v_58 != 0u));
  let v_60 = r0.z;
  r3 = textureSampleLevel(t1, s1, r0.xyxx.xy, v_60);
  r0.x = (r9.w + -0.5f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r9.w)));
  let v_61 = bitcast<u32>(r0.y);
  let v_62 = r0.x;
  r0.x = select(r9.w, v_62, (v_61 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r0.y = (r9.z * 16.0f);
  r0.y = (r2.x * r0.y);
  r0.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.x);
  let v_63 = (r0.xxx * r3.xyz);
  r3 = vec4<f32>(v_63.xyz, r3.w);
  let v_64 = (r0.www * r3.xyz);
  r0 = vec4<f32>(v_64.x, r0.y, v_64.yz);
  let v_65 = (r1.www * r0.xzw);
  r1 = vec4<f32>(r1.x, v_65.xyz);
  let v_66 = (r1.yzw * vec3<f32>(0.68169009685516357422f));
  r1 = vec4<f32>(r1.x, v_66.xyz);
  let v_67 = fma(r0.xzw, vec3<f32>(0.31830990314483642578f), r1.yzw);
  r0 = vec4<f32>(v_67.x, r0.y, v_67.yz);
  let v_68 = fma(r0.xzw, r1.xxx, r2.yzw);
  r0 = vec4<f32>(v_68.x, r0.y, v_68.yz);
  let v_69 = fma(r4.xyz, r0.yyy, r0.xzw);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_70.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
