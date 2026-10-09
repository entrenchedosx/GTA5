diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

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
  let v = (r0.www * r0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = dpdx(v1.xyw);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = dpdy(v1.xyw);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = textureNumSamples(t12);
  let v_4 = sample_pos[select(0u, ((v_3 + 0u) - 1u), ((0u < v_3) & true))];
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r3.xxx, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r1.xyz + v1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r1.xy / r1.zz);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(r1.xy, v_9.xy);
  r0.w = textureSample(t4, s4, r1.xyxx.xy).x;
  let v_10 = r1.zw;
  let v_11 = max(v_10, vec2<f32>(-2147483648.0f));
  let v_12 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_11), vec2<i32>(2147483647i), (v_11 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_10 == v_10))));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), 0i);
  let v_13 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fract(r3.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma((-(r3.yzyy)).xy, vec2<f32>(0.125f), r3.xy);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = fma(r2.xyz, vec3<f32>(256.0f), r3.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = (r2.xyz + vec3<f32>(-128.0f));
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_18 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r2.x = fma(r2.z, r2.w, cb3_3.tint_symbol_1[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_1[44u].w);
  r2.x = max(r2.x, 0.0f);
  r2.y = dot(r0.xyz, r3.xyz);
  r2.y = (r2.y + r2.y);
  let v_19 = -(r2.yyyy);
  let v_20 = fma(r3.xyz, v_19.yzw, r0.xyz);
  r2 = vec4<f32>(r2.x, v_20.xyz);
  let v_21 = dot((-(r0.xyzx)).xyz, r3.xyz);
  r0.x = clamp(vec4<f32>(v_21, v_21, v_21, v_21).x, 0.0f, 1.0f);
  let v_22 = (r2.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r0.y = (abs(r2.wwww).y + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  let v_23 = (r4.xyz / r0.yyy);
  r2 = vec4<f32>(r2.x, v_23.xyz);
  let v_24 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_24.xyz);
  let v_25 = bitcast<vec2<u32>>(r0.zz);
  let v_26 = r2.yz;
  let v_27 = select(r2.wz, v_26, (v_25 != vec2<u32>()));
  let v_28 = r0;
  r0 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  let v_29 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), 0i).xyz;
  r2 = vec4<f32>(r2.x, v_29.xyz);
  let v_30 = (r2.yz * r2.yz);
  let v_31 = r2;
  r2 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  r3.w = fma(r2.z, 512.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_32 = -(r3.wwww);
  r2.z = fma(r2.z, 512.0f, v_32.z);
  r3.w = (r3.w * 558.0f);
  r2.z = fma(r2.z, 3.0f, r3.w);
  let v_33 = clamp(((r2.zzzz * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_33.xy, r4.zw);
  r2.y = min(r2.y, 1.0f);
  r2.z = ((-(r4.xxxx)).z + 1.0f);
  r3.w = (r2.z * cb5_5.tint_symbol_2[6u].z);
  r4.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r4.x)));
  r4.z = (r2.z * r2.z);
  r2.z = fma(r2.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r4.x = fma(r4.z, 5.0f, r4.x);
  let v_34 = bitcast<u32>(r3.w);
  let v_35 = r2.z;
  r2.z = select(r4.x, v_35, (v_34 != 0u));
  let v_36 = r2.z;
  let v_37 = textureSampleLevel(t1, s1, r0.yzyy.xy, v_36).xyz;
  r4 = vec4<f32>(v_37.x, r4.y, v_37.yz);
  r5 = textureLoad(t10, bitcast<vec2<i32>>(r1.xy), 0i);
  r0.y = (r5.w + -0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < r5.w)));
  let v_38 = bitcast<u32>(r0.z);
  let v_39 = r0.y;
  r0.y = select(r5.w, v_39, (v_38 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  r0.y = clamp(((r0.yyyy + r0.yyyy)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.y);
  let v_40 = (r0.yyy * r4.xzw);
  r4 = vec4<f32>(v_40.x, r4.y, v_40.yz);
  let v_41 = (r0.ww * r5.xy);
  let v_42 = r0;
  r0 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  r0.w = (r5.z * 16.0f);
  r0.w = (r0.x * r0.w);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_43 = (r0.yz * r0.yz);
  let v_44 = r0;
  r0 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  let v_45 = (r0.yz + r0.yz);
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  let v_47 = (r0.yz * r0.yz);
  let v_48 = r0;
  r0 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  r1.z = max(r0.z, r0.y);
  let v_49 = (r1.zzz * r4.xzw);
  r4 = vec4<f32>(v_49.x, r4.y, v_49.yz);
  let v_50 = (r4.yyy * r4.xzw);
  r5 = vec4<f32>(v_50.xyz, r5.w);
  let v_51 = (r5.xyz * vec3<f32>(0.68169009685516357422f));
  r5 = vec4<f32>(v_51.xyz, r5.w);
  let v_52 = fma(r4.xzw, vec3<f32>(0.31830990314483642578f), r5.xyz);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  r1.z = (r0.x * r0.x);
  r1.z = (r1.z * r1.z);
  r0.x = (r0.x * r1.z);
  r1.z = ((-(r2.wwww)).z + 1.0f);
  r0.x = fma(r2.w, r0.x, r1.z);
  r0.x = fma((-(r2.yyyy)).x, r0.x, 1.0f);
  r1.z = ((-(r0.xxxx)).z + 1.0f);
  let v_53 = (r1.zzz * r4.xyz);
  r2 = vec4<f32>(r2.x, v_53.xyz);
  r1.z = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), 0i).y);
  let v_54 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), 0i).xyz;
  r1 = vec4<f32>(v_54.xy, r1.z, v_54.z);
  let v_55 = (r1.xyw * r1.xyw);
  r1 = vec4<f32>(v_55.xy, r1.z, v_55.z);
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 8u));
  r1.z = f32(bitcast<u32>(r1.z));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 8.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r1.z = select(1.0f, 0.0f, (bitcast<u32>(r1.z) != 0u));
  let v_56 = fma(cb3_3.tint_symbol_1[45u].xyz, r2.xxx, cb3_3.tint_symbol_1[46u].xyz);
  r4 = vec4<f32>(v_56.xyz, r4.w);
  let v_57 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_57.xyz, r4.w);
  let v_58 = fma(cb3_3.tint_symbol_1[47u].xyz, r2.xxx, cb3_3.tint_symbol_1[48u].xyz);
  r5 = vec4<f32>(v_58.xyz, r5.w);
  let v_59 = fma(cb3_3.tint_symbol_1[43u].xyz, r2.xxx, cb3_3.tint_symbol_1[44u].xyz);
  r6 = vec4<f32>(v_59.xyz, r6.w);
  let v_60 = fma(r5.xyz, r1.zzz, r4.xyz);
  r4 = vec4<f32>(v_60.xyz, r4.w);
  let v_61 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_61.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_62 = dot(r5.xyz, r3.xyz);
  r0.z = clamp(vec4<f32>(v_62, v_62, v_62, v_62).z, 0.0f, 1.0f);
  let v_63 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.zzz, r6.xyz);
  r3 = vec4<f32>(v_63.xyz, r3.w);
  let v_64 = fma(r3.xyz, r0.yyy, r4.xyz);
  r3 = vec4<f32>(v_64.xyz, r3.w);
  let v_65 = (r0.xxx * r3.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = fma(r0.xyz, r1.xyw, r2.yzw);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = fma(r1.xyw, r0.www, r0.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_68.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
