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

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
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
  let v_6 = (r2.zw * cb2_2.tint_symbol[18u].xy);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r0.w = textureSample(t4, s4, r2.zwzz.xy).x;
  let v_7 = r3.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = textureLoad(t8, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  let v_10 = (r4.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = fract(r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  let v_13 = fma(r4.xyz, vec3<f32>(256.0f), r5.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = (r4.xyz + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_15.xy, r4.z, v_15.z);
  r1.w = fma(r4.z, r1.w, cb3_3.tint_symbol_1[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_1[44u].w);
  r1.w = max(r1.w, 0.0f);
  r2.z = dot(r4.xyw, v_1.xyz);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < 0.0f)));
  r2.w = select(1.0f, -1.0f, (bitcast<u32>(r2.z) != 0u));
  let v_16 = (r2.www * r4.xyw);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = (r2.www * r5.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = bitcast<vec3<u32>>(r2.zzz);
  let v_19 = r6.xyz;
  let v_20 = select(r5.xyz, v_19, (v_18 != vec3<u32>()));
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = (r2.www * r5.xyz);
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = dot(r5.xyz, v_1.xyz);
  r2.w = clamp(vec4<f32>(v_23, v_23, v_23, v_23).w, 0.0f, 1.0f);
  let v_24 = dot((-(r0.xyzx)).xyz, r6.xyz);
  r2.x = clamp(vec4<f32>(v_24, v_24, v_24, v_24).x, 0.0f, 1.0f);
  r1.x = dot(r6.xyz, r1.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_25 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
  let v_26 = r1;
  r1 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  let v_27 = (r1.yz * r1.yz);
  r5 = vec4<f32>(v_27.xy, r5.zw);
  let v_28 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_28.xy, r5.zw);
  let v_29 = (r1.yz * r5.xy);
  let v_30 = r1;
  r1 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  r5 = textureLoad(t9, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  r2.y = ((-(r5.zzzz)).y + 1.0f);
  let v_31 = fma(r5.zz, r1.yz, r2.yy);
  let v_32 = r1;
  r1 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  let v_33 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_33.xy, r5.zw);
  r2.y = fma(r5.y, 512.0f, -500.0f);
  r2.y = max(r2.y, 0.0f);
  let v_34 = -(r2.yyyy);
  r4.z = fma(r5.y, 512.0f, v_34.z);
  r2.y = (r2.y * 558.0f);
  r2.y = fma(r4.z, 3.0f, r2.y);
  r4.z = min(r5.x, 1.0f);
  let v_35 = (r2.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_35.xy, r5.zw);
  let v_36 = clamp(((r2.yyyy * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_36.xy, r6.zw);
  r1.x = (r1.x * r5.y);
  r2.y = (r5.x * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r1.z * r1.x);
  r1.y = fma((-(r4.zzzz)).y, r1.y, 1.0f);
  r1.x = (r2.y * r1.x);
  r1.x = (r4.z * r1.x);
  r1.x = (r2.w * r1.x);
  r1.z = (r1.y * r2.w);
  let v_37 = textureLoad(t7, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_37.xyz, r5.w);
  let v_38 = (r5.xyz * r5.xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = fma((-(r5.xyzx)).xyz, r5.xyz, vec3<f32>(1.0f));
  r5 = vec4<f32>(v_39.xyz, r5.w);
  let v_40 = fma(r7.xyz, r1.zzz, r1.xxx);
  r8 = vec4<f32>(v_40.xyz, r8.w);
  r9 = textureLoad(t10, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  r1.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).y);
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 8u));
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 8.0f)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < r9.w)));
  r1.z = select(0.25f, 0.5f, (bitcast<u32>(r1.z) != 0u));
  let v_41 = fma(r1.zzz, r5.xyz, r7.xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  let v_42 = (r3.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = bitcast<vec3<u32>>(r2.zzz);
  let v_44 = r3.xyz;
  let v_45 = select(cb11_11.tint_symbol_3[3u].xyz, v_44, (v_43 != vec3<u32>()));
  r2 = vec4<f32>(r2.x, v_45.xyz);
  let v_46 = (r2.yzw * r8.xyz);
  r2 = vec4<f32>(r2.x, v_46.xyz);
  r1.z = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_47 = fma(cb3_3.tint_symbol_1[45u].xyz, r1.www, cb3_3.tint_symbol_1[46u].xyz);
  r3 = vec4<f32>(v_47.xyz, r3.w);
  let v_48 = (r1.zzz * r3.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = fma(cb3_3.tint_symbol_1[47u].xyz, r1.www, cb3_3.tint_symbol_1[48u].xyz);
  r5 = vec4<f32>(v_49.xyz, r5.w);
  let v_50 = fma(cb3_3.tint_symbol_1[43u].xyz, r1.www, cb3_3.tint_symbol_1[44u].xyz);
  r8 = vec4<f32>(v_50.xyz, r8.w);
  let v_51 = fma(r5.xyz, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_51.x, r1.y, v_51.yz);
  let v_52 = (r0.ww * r9.xy);
  r3 = vec4<f32>(v_52.xy, r3.zw);
  r0.w = (r9.z * 16.0f);
  r0.w = (r2.x * r0.w);
  let v_53 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_53.xy, r3.zw);
  let v_54 = (r3.xy + r3.xy);
  r3 = vec4<f32>(v_54.xy, r3.zw);
  let v_55 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_55.xy, r3.zw);
  let v_56 = (r1.xzw * r3.yyy);
  r1 = vec4<f32>(v_56.x, r1.y, v_56.yz);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_57 = dot(r5.xyz, r4.xyw);
  r2.x = clamp(vec4<f32>(v_57, v_57, v_57, v_57).x, 0.0f, 1.0f);
  let v_58 = fma(cb3_3.tint_symbol_1[49u].xyz, r2.xxx, r8.xyz);
  r5 = vec4<f32>(v_58.xyz, r5.w);
  let v_59 = fma(r5.xyz, r3.xxx, r1.xzw);
  r1 = vec4<f32>(v_59.x, r1.y, v_59.yz);
  r2.x = max(r3.y, r3.x);
  let v_60 = (r1.yyy * r1.xzw);
  r1 = vec4<f32>(v_60.x, r1.y, v_60.yz);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  let v_61 = (r7.xyz * r1.xzw);
  r1 = vec4<f32>(v_61.x, r1.y, v_61.yz);
  let v_62 = fma(r2.yzw, r5.www, r1.xzw);
  r1 = vec4<f32>(v_62.x, r1.y, v_62.yz);
  r2.y = dot(r0.xyz, r4.xyw);
  r2.y = (r2.y + r2.y);
  let v_63 = -(r2.yyyy);
  let v_64 = fma(r4.xyw, v_63.xyz, r0.xyz);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  let v_65 = (r0.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_65.xyz);
  r0.x = (abs(r0.zzzz).x + 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_66 = (r2.yzw / r0.xxx);
  r2 = vec4<f32>(r2.x, v_66.xyz);
  let v_67 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_67.xyz);
  let v_68 = bitcast<vec2<u32>>(r0.yy);
  let v_69 = r2.yz;
  let v_70 = select(r2.wz, v_69, (v_68 != vec2<u32>()));
  r0 = vec4<f32>(v_70.xy, r0.zw);
  r0.z = ((-(r6.xxxx)).z + 1.0f);
  r2.y = fma(r0.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r2.z = (r0.z * cb5_5.tint_symbol_2[6u].z);
  r0.z = (r0.z * r0.z);
  r2.w = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.w)));
  r0.z = fma(r0.z, 5.0f, r2.w);
  let v_71 = bitcast<u32>(r2.z);
  let v_72 = r2.y;
  r0.z = select(r0.z, v_72, (v_71 != 0u));
  let v_73 = r0.z;
  let v_74 = textureSampleLevel(t1, s1, r0.xyxx.xy, v_73).xyz;
  r0 = vec4<f32>(v_74.xyz, r0.w);
  let v_75 = (r2.xxx * r0.xyz);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = (r6.yyy * r0.xyz);
  r2 = vec4<f32>(v_76.xyz, r2.w);
  let v_77 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_77.xyz, r2.w);
  let v_78 = fma(r0.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = fma(r0.xyz, r1.yyy, r1.xzw);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = fma(r7.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_81.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
