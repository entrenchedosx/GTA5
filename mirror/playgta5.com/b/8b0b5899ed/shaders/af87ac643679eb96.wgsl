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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb11_11.tint_symbol_4[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb11_11.tint_symbol_4[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  r3 = fma(r2.xyyx, vec4<f32>(0.01999999955296516418f, 0.01999999955296516418f, 0.01490920037031173706f, 0.01490920037031173706f), cb11_11.tint_symbol_4[7u].wwww);
  r3 = fract(r3);
  r4 = textureSample(t2, s2, r3.xyxx.xy).wyxz;
  r3 = textureSample(t2, s2, r3.zwzz.xy);
  let v_1 = r3;
  r4 = vec4<f32>(r4.xy, v_1.yw);
  r3 = (r4 + vec4<f32>(-0.5f));
  r3 = (r3 * vec4<f32>(0.30000001192092895508f));
  r3 = fma(r2.xyyx, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r3);
  r3 = fma(cb11_11.tint_symbol_4[7u].wwww, vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f), r3);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_2 = (r3.xyz * r4.xyz);
  r2 = vec4<f32>(v_2.xy, r2.z, v_2.z);
  r0.z = ((-(r2.zzzz)).z + cb1_1.tint_symbol[15u].z);
  r0.w = ((-(r2.zzzz)).w + v1.z);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 40.0f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(0.125f))).z, 0.0f, 1.0f);
  r0.z = (r0.z * r0.w);
  let v_3 = (r0.zzz * r2.xyw);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = fma(r2.xyz, vec3<f32>(10.0f), vec3<f32>(1.0f));
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r2.xyz * cb11_11.tint_symbol_4[3u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_6 = -(r1.xyzx);
  let v_7 = -(cb11_11.tint_symbol_4[1u].xyzx);
  let v_8 = fma(v_6.xyz, r0.zzz, v_7.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_10 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = dot(r3.xyz, v_7.xyz);
  r4.y = clamp(vec4<f32>(v_11, v_11, v_11, v_11).y, 0.0f, 1.0f);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_12 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_12.xyz, r6.w);
  let v_13 = fract(r6.xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_14.xy, r6.zw);
  let v_15 = fma(r5.xyz, vec3<f32>(256.0f), r6.xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = (r5.xyz + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_16.xyz, r5.w);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_17 = (r0.zzz * r5.xyz);
  r5 = vec4<f32>(v_17.xy, r5.z, v_17.z);
  r0.z = fma(r5.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_18 = dot((-(r1.xyzx)).xyz, r5.xyw);
  r4.x = clamp(vec4<f32>(v_18, v_18, v_18, v_18).x, 0.0f, 1.0f);
  let v_19 = ((-(r4.xxyx)).yz + vec2<f32>(1.0f));
  let v_20 = r4;
  r4 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = (r4.yz * r4.yz);
  r6 = vec4<f32>(v_21.xy, r6.zw);
  let v_22 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_22.xy, r6.zw);
  let v_23 = (r4.yz * r6.xy);
  let v_24 = r4;
  r4 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  r0.w = ((-(r6.zzzz)).w + 1.0f);
  let v_25 = fma(r6.zz, r4.yz, r0.ww);
  let v_26 = r4;
  r4 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r0.w = dot(r5.xyw, r3.xyz);
  r0.w = clamp(((r0.wwww + vec4<f32>(0.00000000999999993923f))).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  let v_27 = (r6.xy * r6.xy);
  r3 = vec4<f32>(v_27.xy, r3.zw);
  r1.w = fma(r3.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_28 = -(r1.wwww);
  r2.w = fma(r3.y, 512.0f, v_28.w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.w, 3.0f, r1.w);
  r2.w = min(r3.x, 1.0f);
  let v_29 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r3 = vec4<f32>(v_29.xy, r3.zw);
  let v_30 = clamp(((r1.wwww * vec4<f32>(0.0f, 0.0f, 0.00066666665952652693f, 0.00177619897294789553f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_30.xy);
  r0.w = (r0.w * r3.y);
  r1.w = (r3.x * 0.125f);
  r0.w = exp2(r0.w);
  r0.w = (r4.z * r0.w);
  r3.x = fma((-(r2.wwww)).x, r4.y, 1.0f);
  r0.w = (r1.w * r0.w);
  r0.w = (r2.w * r0.w);
  let v_31 = dot(r5.xyw, v_7.xyz);
  r1.w = clamp(vec4<f32>(v_31, v_31, v_31, v_31).w, 0.0f, 1.0f);
  r0.w = (r0.w * r1.w);
  r1.w = (r3.x * r1.w);
  r7 = textureSample(t7, s7, r0.xyxx.xy);
  let v_32 = (r7.xyz * r7.xyz);
  r4 = vec4<f32>(r4.x, v_32.xyz);
  let v_33 = fma(r4.yzw, r1.www, r0.www);
  r6 = vec4<f32>(v_33.xyz, r6.w);
  let v_34 = (r2.xyz * r6.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r6 = vec4<f32>(v_35.xy, r6.zw);
  let v_36 = r6.xy;
  let v_37 = max(v_36, vec2<f32>(-2147483648.0f));
  let v_38 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_37), vec2<i32>(2147483647i), (v_37 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_36 == v_36))));
  r7 = vec4<f32>(v_38.xy, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r7 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r7.y) & 8u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_39 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r6 = vec4<f32>(v_39.xyz, r6.w);
  let v_40 = (r1.www * r6.xyz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  let v_41 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = fma(r7.xyz, r0.www, r6.xyz);
  r6 = vec4<f32>(v_43.xyz, r6.w);
  r7 = textureSample(t4, s4, r0.xyxx.xy);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  let v_44 = (r7.xx * r0.xy);
  r0 = vec4<f32>(v_44.xy, r0.zw);
  let v_45 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_45.xy, r0.zw);
  let v_46 = (r0.xy + r0.xy);
  r0 = vec4<f32>(v_46.xy, r0.zw);
  let v_47 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_47.xy, r0.zw);
  let v_48 = (r0.yyy * r6.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_2[46u].w;
  r7.y = cb3_3.tint_symbol_2[47u].w;
  r7.z = cb3_3.tint_symbol_2[48u].w;
  let v_49 = dot(r7.xyz, r5.xyw);
  r1.w = clamp(vec4<f32>(v_49, v_49, v_49, v_49).w, 0.0f, 1.0f);
  let v_50 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r8.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  let v_51 = fma(r7.xyz, r0.xxx, r6.xyz);
  r6 = vec4<f32>(v_51.xyz, r6.w);
  r0.x = max(r0.y, r0.x);
  let v_52 = (r3.xxx * r6.xyz);
  r6 = vec4<f32>(v_52.xyz, r6.w);
  r0.y = ((-(r3.xxxx)).y + 1.0f);
  let v_53 = (r4.yzw * r6.xyz);
  r6 = vec4<f32>(v_53.xyz, r6.w);
  let v_54 = fma(r2.xyz, r6.www, r6.xyz);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  r1.w = dot(r1.xyz, r5.xyw);
  r1.w = (r1.w + r1.w);
  let v_55 = -(r1.wwww);
  let v_56 = fma(r5.xyw, v_55.xyz, r1.xyz);
  r1 = vec4<f32>(v_56.xyz, r1.w);
  let v_57 = (r1.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r1 = vec4<f32>(v_57.xy, r1.z, v_57.z);
  r2.w = (abs(r1.zzzz).w + 1.0f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_58 = (r1.xyw / r2.www);
  r1 = vec4<f32>(v_58.xy, r1.z, v_58.z);
  let v_59 = ((-(r1.xyxw)).xyw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r1 = vec4<f32>(v_59.xy, r1.z, v_59.z);
  let v_60 = bitcast<vec2<u32>>(r1.zz);
  let v_61 = r1.xy;
  let v_62 = select(r1.wy, v_61, (v_60 != vec2<u32>()));
  r1 = vec4<f32>(v_62.xy, r1.zw);
  r1.z = ((-(r3.zzzz)).z + 1.0f);
  r1.w = fma(r1.z, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.w = (r1.z * cb5_5.tint_symbol_3[6u].z);
  r1.z = (r1.z * r1.z);
  r3.x = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r3.x)));
  r1.z = fma(r1.z, 5.0f, r3.x);
  let v_63 = bitcast<u32>(r2.w);
  let v_64 = r1.w;
  r1.z = select(r1.z, v_64, (v_63 != 0u));
  let v_65 = r1.z;
  r1 = textureSampleLevel(t1, s1, r1.xyxx.xy, v_65);
  r1.w = (r0.w + -0.5f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r0.w)));
  let v_66 = bitcast<u32>(r2.w);
  let v_67 = r1.w;
  r0.w = select(r0.w, v_67, (v_66 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  r0.z = (r0.z * 16.0f);
  r0.z = (r4.x * r0.z);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  r0.w = (r0.w * r0.w);
  let v_68 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_68.xyz, r1.w);
  let v_69 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = (r3.www * r1.xyz);
  r3 = vec4<f32>(v_70.xyz, r3.w);
  let v_71 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_71.xyz, r3.w);
  let v_72 = fma(r1.xyz, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  let v_73 = fma(r1.xyz, r0.yyy, r2.xyz);
  r0 = vec4<f32>(v_73.xy, r0.z, v_73.z);
  let v_74 = fma(r4.yzw, r0.zzz, r0.xyw);
  r0 = vec4<f32>(v_74.xyz, r0.w);
  let v_75 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_75.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
