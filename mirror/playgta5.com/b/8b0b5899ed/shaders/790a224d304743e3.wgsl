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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb18_struct {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = -(r0.xyzx);
  let v_1 = -(cb11_11.tint_symbol_4[1u].xyzx);
  let v_2 = fma(v.xyz, r0.www, v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = dot(r1.xyz, v_1.xyz);
  r3.y = clamp(vec4<f32>(v_5, v_5, v_5, v_5).y, 0.0f, 1.0f);
  let v_6 = dpdx(v1.xyw);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = dpdy(v1.xyw);
  r5 = vec4<f32>(v_7.xyz, r5.w);
  let v_8 = textureNumSamples(t12);
  let v_9 = sample_pos[select(0u, ((v_8 + 0u) - 1u), ((0u < v_8) & true))];
  r3 = vec4<f32>(r3.xy, v_9.xy);
  let v_10 = (r5.xyz * r3.www);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = fma(r3.zzz, r4.xyz, r5.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = (r4.xyz + v1.xyw);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = (r4.xy / r4.zz);
  r3 = vec4<f32>(r3.xy, v_13.xy);
  let v_14 = (r3.zw * cb2_2.tint_symbol_1[18u].xy);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r0.w = textureSample(t4, s4, r3.zwzz.xy).x;
  let v_15 = r4.xy;
  let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
  let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
  r4 = vec4<f32>(v_17.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r5 = textureLoad(t8, bitcast<vec2<i32>>(r4.xy), 0i);
  let v_18 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = fract(r6.xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_20.xy, r6.zw);
  let v_21 = fma(r5.xyz, vec3<f32>(256.0f), r6.xyz);
  r5 = vec4<f32>(v_21.xyz, r5.w);
  let v_22 = (r5.xyz + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_23 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_23.xy, r5.z, v_23.z);
  r1.w = fma(r5.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_24 = dot((-(r2.xyzx)).xyz, r5.xyw);
  r3.x = clamp(vec4<f32>(v_24, v_24, v_24, v_24).x, 0.0f, 1.0f);
  let v_25 = ((-(r3.xxyx)).yz + vec2<f32>(1.0f));
  let v_26 = r3;
  r3 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  let v_27 = (r3.yz * r3.yz);
  r6 = vec4<f32>(v_27.xy, r6.zw);
  let v_28 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_28.xy, r6.zw);
  let v_29 = (r3.yz * r6.xy);
  let v_30 = r3;
  r3 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  r6 = textureLoad(t9, bitcast<vec2<i32>>(r4.xy), 0i);
  r2.w = ((-(r6.zzzz)).w + 1.0f);
  let v_31 = fma(r6.zz, r3.yz, r2.ww);
  let v_32 = r3;
  r3 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  r1.x = dot(r5.xyw, r1.xyz);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_33 = (r6.xy * r6.xy);
  let v_34 = r1;
  r1 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  r2.w = fma(r1.z, 512.0f, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_35 = -(r2.wwww);
  r1.z = fma(r1.z, 512.0f, v_35.z);
  r2.w = (r2.w * 558.0f);
  r1.z = fma(r1.z, 3.0f, r2.w);
  r1.y = min(r1.y, 1.0f);
  let v_36 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(v_36.xy, r6.zw);
  let v_37 = clamp(((r1.zzzz * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r7 = vec4<f32>(v_37.xy, r7.zw);
  r1.x = (r1.x * r6.y);
  r1.z = (r6.x * 0.125f);
  r1.x = exp2(r1.x);
  r1.x = (r3.z * r1.x);
  r2.w = fma((-(r1.yyyy)).w, r3.y, 1.0f);
  r1.x = (r1.z * r1.x);
  r1.x = (r1.y * r1.x);
  let v_38 = dot(r5.xyw, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_38, v_38, v_38, v_38).y, 0.0f, 1.0f);
  r1.x = (r1.y * r1.x);
  r1.y = (r2.w * r1.y);
  let v_39 = textureLoad(t7, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r3 = vec4<f32>(r3.x, v_39.xyz);
  let v_40 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_40.xyz);
  let v_41 = fma(r3.yzw, r1.yyy, r1.xxx);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  r5.z = textureLoad(t12, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r5.z = ((-(r5.zzzz)).z + cb11_11.tint_symbol_4[17u].w);
  r5.z = (r5.z + 1.0f);
  r5.z = (cb11_11.tint_symbol_4[17u].z / r5.z);
  let v_42 = fma(r0.xyz, r5.zzz, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r8 = fma(r0.xyyx, vec4<f32>(0.01999999955296516418f, 0.01999999955296516418f, 0.01490920037031173706f, 0.01490920037031173706f), cb11_11.tint_symbol_4[7u].wwww);
  r8 = fract(r8);
  let v_43 = textureSample(t2, s2, r8.xyxx.xy).wy;
  r9 = vec4<f32>(v_43.xy, r9.zw);
  let v_44 = textureSample(t2, s2, r8.zwzz.xy).yw;
  r9 = vec4<f32>(r9.xy, v_44.xy);
  r8 = (r9 + vec4<f32>(-0.5f));
  r8 = (r8 * vec4<f32>(0.30000001192092895508f));
  r8 = fma(r0.xyyx, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r8);
  r0.x = ((-(r0.zzzz)).x + cb11_11.tint_symbol_4[7u].z);
  r0.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
  r8 = fma(cb11_11.tint_symbol_4[7u].wwww, vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f), r8);
  let v_45 = textureSample(t3, s3, r8.xyxx.xy).xyz;
  r6 = vec4<f32>(v_45.xyz, r6.w);
  let v_46 = textureSample(t3, s3, r8.zwzz.xy).xyz;
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = (r6.xyz * r8.xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = (r0.xxx * r6.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = fma(r0.xyz, vec3<f32>(10.0f), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = (r0.xyz * cb11_11.tint_symbol_4[3u].xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  r1.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), 0i).y);
  r4 = textureLoad(t10, bitcast<vec2<i32>>(r4.xy), 0i);
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 8u));
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 8.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_52 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  let v_53 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r8 = vec4<f32>(v_54.xyz, r8.w);
  let v_55 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(r1.x, v_55.xyz);
  let v_56 = fma(r8.xyz, r1.xxx, r6.xyz);
  r6 = vec4<f32>(v_56.xyz, r6.w);
  let v_57 = (r0.ww * r4.xy);
  r4 = vec4<f32>(v_57.xy, r4.zw);
  let v_58 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_58.xy, r4.zw);
  let v_59 = (r4.xy + r4.xy);
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_60.xy, r4.zw);
  let v_61 = (r4.yyy * r6.xyz);
  r6 = vec4<f32>(v_61.xyz, r6.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_62 = dot(r8.xyz, r5.xyw);
  r0.w = clamp(vec4<f32>(v_62, v_62, v_62, v_62).w, 0.0f, 1.0f);
  let v_63 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r1.yzw);
  r1 = vec4<f32>(v_63.xyz, r1.w);
  let v_64 = fma(r1.xyz, r4.xxx, r6.xyz);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  r0.w = max(r4.y, r4.x);
  let v_65 = (r2.www * r1.xyz);
  r1 = vec4<f32>(v_65.xyz, r1.w);
  r1.w = ((-(r2.wwww)).w + 1.0f);
  let v_66 = (r3.yzw * r1.xyz);
  r1 = vec4<f32>(v_66.xyz, r1.w);
  let v_67 = fma(r0.xyz, r6.www, r1.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  r1.x = dot(r2.xyz, r5.xyw);
  r1.x = (r1.x + r1.x);
  let v_68 = -(r1.xxxx);
  let v_69 = fma(r5.xyw, v_68.xyz, r2.xyz);
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_70.xyz, r2.w);
  r1.x = (abs(r1.zzzz).x + 1.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_71 = (r2.xyz / r1.xxx);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = bitcast<vec2<u32>>(r1.yy);
  let v_74 = r2.xy;
  let v_75 = select(r2.zy, v_74, (v_73 != vec2<u32>()));
  r1 = vec4<f32>(v_75.xy, r1.zw);
  r1.z = ((-(r7.xxxx)).z + 1.0f);
  r2.x = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.y = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r1.z = (r1.z * r1.z);
  r2.z = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r2.z)));
  r1.z = fma(r1.z, 5.0f, r2.z);
  let v_76 = bitcast<u32>(r2.y);
  let v_77 = r2.x;
  r1.z = select(r1.z, v_77, (v_76 != 0u));
  let v_78 = r1.z;
  let v_79 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_78).xyz;
  r1 = vec4<f32>(v_79.xyz, r1.w);
  r2.x = (r4.w + -0.5f);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r4.w)));
  let v_80 = bitcast<u32>(r2.y);
  let v_81 = r2.x;
  r2.x = select(r4.w, v_81, (v_80 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r2.y) != 0u));
  r2.y = (r4.z * 16.0f);
  r2.y = (r3.x * r2.y);
  r2.x = clamp(((r2.xxxx + r2.xxxx)).x, 0.0f, 1.0f);
  r2.x = (r2.x * r2.x);
  let v_82 = (r1.xyz * r2.xxx);
  r1 = vec4<f32>(v_82.xyz, r1.w);
  let v_83 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = (r7.yyy * r1.xyz);
  r2 = vec4<f32>(v_84.x, r2.y, v_84.yz);
  let v_85 = (r2.xzw * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_85.x, r2.y, v_85.yz);
  let v_86 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r2.xzw);
  r1 = vec4<f32>(v_86.xyz, r1.w);
  let v_87 = fma(r1.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = fma(r3.yzw, r2.yyy, r0.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_89.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
