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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
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
  r3 = vec4<f32>(((v1.xy / v1.ww)).xy, r3.zw);
  let v_5 = (r3.xy * cb2_2.tint_symbol_1[18u].xy);
  r3 = vec4<f32>(r3.xy, v_5.xy);
  r0.w = textureSample(t4, s4, r3.xyxx.xy).x;
  let v_6 = r3.zw;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = textureLoad(t8, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  let v_9 = (r4.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = fract(r5.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_11.xy, r5.zw);
  let v_12 = fma(r4.xyz, vec3<f32>(256.0f), r5.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = (r4.xyz + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_14 = (r1.www * r4.xyz);
  r4 = vec4<f32>(v_14.xy, r4.z, v_14.z);
  r1.w = fma(r4.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  r2.w = dot(r4.xyw, r1.xyz);
  let v_15 = dot(r1.xyz, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_15, v_15, v_15, v_15).y, 0.0f, 1.0f);
  r1.z = clamp(((r2.wwww + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r5 = textureLoad(t9, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  let v_16 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_16.xy, r5.zw);
  r2.w = fma(r5.y, 512.0f, -500.0f);
  r2.w = max(r2.w, 0.0f);
  let v_17 = -(r2.wwww);
  r4.z = fma(r5.y, 512.0f, v_17.z);
  r2.w = (r2.w * 558.0f);
  r2.w = fma(r4.z, 3.0f, r2.w);
  r4.z = min(r5.x, 1.0f);
  let v_18 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_18.xy, r5.zw);
  let v_19 = clamp(((r2.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_19.xy, r6.zw);
  r1.z = (r1.z * r5.y);
  r2.w = (r5.x * 0.125f);
  r1.z = exp2(r1.z);
  let v_20 = dot((-(r2.xyzx)).xyz, r4.xyw);
  r1.x = clamp(vec4<f32>(v_20, v_20, v_20, v_20).x, 0.0f, 1.0f);
  let v_21 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_21.xy, r5.zw);
  let v_22 = (r5.xy * r5.xy);
  r6 = vec4<f32>(r6.xy, v_22.xy);
  let v_23 = (r6.zw * r6.zw);
  r6 = vec4<f32>(r6.xy, v_23.xy);
  let v_24 = (r5.xy * r6.zw);
  r5 = vec4<f32>(v_24.xy, r5.zw);
  r1.y = ((-(r5.zzzz)).y + 1.0f);
  let v_25 = fma(r5.zz, r5.xy, r1.yy);
  r5 = vec4<f32>(v_25.xy, r5.zw);
  r1.y = (r1.z * r5.y);
  r1.z = fma((-(r4.zzzz)).z, r5.x, 1.0f);
  r1.y = (r2.w * r1.y);
  r1.y = (r4.z * r1.y);
  let v_26 = dot(r4.xyw, v_1.xyz);
  r2.w = clamp(vec4<f32>(v_26, v_26, v_26, v_26).w, 0.0f, 1.0f);
  r1.y = (r1.y * r2.w);
  r2.w = (r1.z * r2.w);
  let v_27 = textureLoad(t7, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = fma(r5.xyz, r2.www, r1.yyy);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  r1.y = textureLoad(t12, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).x;
  r1.y = ((-(r1.yyyy)).y + cb11_11.tint_symbol_4[17u].w);
  r1.y = (r1.y + 1.0f);
  r1.y = (cb11_11.tint_symbol_4[17u].z / r1.y);
  let v_30 = fma(r0.xyz, r1.yyy, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r8 = fma(r0.xyyx, vec4<f32>(0.01999999955296516418f, 0.01999999955296516418f, 0.01490920037031173706f, 0.01490920037031173706f), cb11_11.tint_symbol_4[7u].wwww);
  r8 = fract(r8);
  let v_31 = textureSample(t2, s2, r8.xyxx.xy).wy;
  r9 = vec4<f32>(v_31.xy, r9.zw);
  let v_32 = textureSample(t2, s2, r8.zwzz.xy).yw;
  r9 = vec4<f32>(r9.xy, v_32.xy);
  r8 = (r9 + vec4<f32>(-0.5f));
  r8 = (r8 * vec4<f32>(0.30000001192092895508f));
  r8 = fma(r0.xyyx, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r8);
  r0.x = ((-(r0.zzzz)).x + cb11_11.tint_symbol_4[7u].z);
  r0.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
  r8 = fma(cb11_11.tint_symbol_4[7u].wwww, vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f), r8);
  let v_33 = textureSample(t3, s3, r8.xyxx.xy).xyz;
  r9 = vec4<f32>(v_33.xyz, r9.w);
  let v_34 = textureSample(t3, s3, r8.zwzz.xy).xyz;
  r8 = vec4<f32>(v_34.xyz, r8.w);
  let v_35 = (r8.xyz * r9.xyz);
  r8 = vec4<f32>(v_35.xyz, r8.w);
  let v_36 = (r0.xxx * r8.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = fma(r0.xyz, vec3<f32>(10.0f), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = (r0.xyz * cb11_11.tint_symbol_4[3u].xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r0.xyz * r7.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r1.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).y);
  r3 = textureLoad(t10, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r1.y = f32(bitcast<u32>(r1.y));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 8.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  r1.y = select(1.0f, 0.0f, (bitcast<u32>(r1.y) != 0u));
  let v_40 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = (r2.www * r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  let v_42 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = fma(r8.xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = (r0.ww * r3.xy);
  let v_46 = r1;
  r1 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  let v_47 = (r1.yw * r1.yw);
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  let v_49 = (r1.yw + r1.yw);
  let v_50 = r1;
  r1 = vec4<f32>(v_50.x, v_49.x, v_50.z, v_49.y);
  let v_51 = (r1.yw * r1.yw);
  let v_52 = r1;
  r1 = vec4<f32>(v_52.x, v_51.x, v_52.z, v_51.y);
  let v_53 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_54 = dot(r8.xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_54, v_54, v_54, v_54).w, 0.0f, 1.0f);
  let v_55 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r9.xyz);
  r8 = vec4<f32>(v_55.xyz, r8.w);
  let v_56 = fma(r8.xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  r0.w = max(r1.w, r1.y);
  let v_57 = (r1.zzz * r7.xyz);
  r7 = vec4<f32>(v_57.xyz, r7.w);
  r1.y = ((-(r1.zzzz)).y + 1.0f);
  let v_58 = (r5.xyz * r7.xyz);
  r7 = vec4<f32>(v_58.xyz, r7.w);
  let v_59 = fma(r0.xyz, r5.www, r7.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  r1.z = dot(r2.xyz, r4.xyw);
  r1.z = (r1.z + r1.z);
  let v_60 = -(r1.zzzz);
  let v_61 = fma(r4.xyw, v_60.xyz, r2.xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_62.xy, r2.z, v_62.z);
  r1.z = (abs(r2.zzzz).z + 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_63 = (r2.xyw / r1.zzz);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = bitcast<vec2<u32>>(r1.ww);
  let v_66 = r2.xy;
  let v_67 = select(r2.zy, v_66, (v_65 != vec2<u32>()));
  r1 = vec4<f32>(r1.xy, v_67.xy);
  r2.x = ((-(r6.xxxx)).x + 1.0f);
  r2.y = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r2.x = (r2.x * r2.x);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.w)));
  r2.x = fma(r2.x, 5.0f, r2.w);
  let v_68 = bitcast<u32>(r2.z);
  let v_69 = r2.y;
  r2.x = select(r2.x, v_69, (v_68 != 0u));
  let v_70 = r2.x;
  let v_71 = textureSampleLevel(t1, s1, r1.zwzz.xy, v_70).xyz;
  r2 = vec4<f32>(v_71.xyz, r2.w);
  r1.z = (r3.w + -0.5f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r3.w)));
  let v_72 = bitcast<u32>(r1.w);
  let v_73 = r1.z;
  r1.z = select(r3.w, v_73, (v_72 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r3.z * 16.0f);
  r1.x = (r1.x * r1.w);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r1.z = (r1.z * r1.z);
  let v_74 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = (r6.yyy * r2.xyz);
  r3 = vec4<f32>(v_76.xyz, r3.w);
  let v_77 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_77.xyz, r3.w);
  let v_78 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r2 = vec4<f32>(v_78.xyz, r2.w);
  let v_79 = fma(r2.xyz, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = fma(r5.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_81.xyz, o0.w);
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
