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
  r4 = textureSample(t8, s8, r3.xyxx.xy);
  let v_5 = (r4.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_5.xyz, r5.w);
  let v_6 = fract(r5.xyz);
  r5 = vec4<f32>(v_6.xyz, r5.w);
  let v_7 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_7.xy, r5.zw);
  let v_8 = fma(r4.xyz, vec3<f32>(256.0f), r5.xyz);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = (r4.xyz + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  r0.w = fma(r4.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  r1.w = dot(r4.xyw, r1.xyz);
  let v_11 = dot(r1.xyz, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_11, v_11, v_11, v_11).y, 0.0f, 1.0f);
  r1.z = clamp(((r1.wwww + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r5 = textureSample(t9, s9, r3.xyxx.xy);
  let v_12 = (r5.xy * r5.xy);
  r3 = vec4<f32>(r3.xy, v_12.xy);
  r1.w = fma(r3.w, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_13 = -(r1.wwww);
  r2.w = fma(r3.w, 512.0f, v_13.w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.w, 3.0f, r1.w);
  r2.w = min(r3.z, 1.0f);
  let v_14 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r3 = vec4<f32>(r3.xy, v_14.xy);
  let v_15 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r5 = vec4<f32>(v_15.xy, r5.zw);
  r1.z = (r1.z * r3.w);
  r1.w = (r3.z * 0.125f);
  r1.z = exp2(r1.z);
  let v_16 = dot((-(r2.xyzx)).xyz, r4.xyw);
  r1.x = clamp(vec4<f32>(v_16, v_16, v_16, v_16).x, 0.0f, 1.0f);
  let v_17 = ((-(r1.xxxy)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_17.xy);
  let v_18 = (r3.zw * r3.zw);
  r6 = vec4<f32>(v_18.xy, r6.zw);
  let v_19 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_19.xy, r6.zw);
  let v_20 = (r3.zw * r6.xy);
  r3 = vec4<f32>(r3.xy, v_20.xy);
  r1.y = ((-(r5.zzzz)).y + 1.0f);
  let v_21 = fma(r5.zz, r3.zw, r1.yy);
  r3 = vec4<f32>(r3.xy, v_21.xy);
  r1.y = (r1.z * r3.w);
  r1.z = fma((-(r2.wwww)).z, r3.z, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = (r2.w * r1.y);
  let v_22 = dot(r4.xyw, v_1.xyz);
  r1.w = clamp(vec4<f32>(v_22, v_22, v_22, v_22).w, 0.0f, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.w = (r1.z * r1.w);
  r6 = textureSample(t7, s7, r3.xyxx.xy);
  let v_23 = (r6.xyz * r6.xyz);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = fma(r6.xyz, r1.www, r1.yyy);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  r8 = textureSample(t12, s12, r3.xyxx.xy);
  r1.y = ((-(r8.xxxx)).y + cb11_11.tint_symbol_4[17u].w);
  r1.y = (r1.y + 1.0f);
  r1.y = (cb11_11.tint_symbol_4[17u].z / r1.y);
  let v_25 = fma(r0.xyz, r1.yyy, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r8 = fma(r0.xyyx, vec4<f32>(0.01999999955296516418f, 0.01999999955296516418f, 0.01490920037031173706f, 0.01490920037031173706f), cb11_11.tint_symbol_4[7u].wwww);
  r8 = fract(r8);
  r9 = textureSample(t2, s2, r8.xyxx.xy).wyxz;
  r8 = textureSample(t2, s2, r8.zwzz.xy);
  let v_26 = r8;
  r9 = vec4<f32>(r9.xy, v_26.yw);
  r8 = (r9 + vec4<f32>(-0.5f));
  r8 = (r8 * vec4<f32>(0.30000001192092895508f));
  r8 = fma(r0.xyyx, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r8);
  r0.x = ((-(r0.zzzz)).x + cb11_11.tint_symbol_4[7u].z);
  r0.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
  r8 = fma(cb11_11.tint_symbol_4[7u].wwww, vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f), r8);
  r9 = textureSample(t3, s3, r8.xyxx.xy);
  r8 = textureSample(t3, s3, r8.zwzz.xy);
  let v_27 = (r8.xyz * r9.xyz);
  r8 = vec4<f32>(v_27.xyz, r8.w);
  let v_28 = (r0.xxx * r8.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = fma(r0.xyz, vec3<f32>(10.0f), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r0.xyz * cb11_11.tint_symbol_4[3u].xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (r0.xyz * r7.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (r3.xy * cb2_2.tint_symbol_1[18u].xy);
  let v_33 = r1;
  r1 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  let v_34 = r1.yw;
  let v_35 = max(v_34, vec2<f32>(-2147483648.0f));
  let v_36 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_35), vec2<i32>(2147483647i), (v_35 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_34 == v_34))));
  r7 = vec4<f32>(v_36.xy, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r7 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w)));
  r1.y = bitcast<f32>((bitcast<u32>(r7.y) & 8u));
  r1.y = f32(bitcast<u32>(r1.y));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  r1.y = select(1.0f, 0.0f, (bitcast<u32>(r1.y) != 0u));
  let v_37 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r7 = vec4<f32>(v_37.xyz, r7.w);
  let v_38 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r8 = vec4<f32>(v_39.xyz, r8.w);
  let v_40 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r9 = vec4<f32>(v_40.xyz, r9.w);
  let v_41 = fma(r8.xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_41.xyz, r7.w);
  r8 = textureSample(t4, s4, r3.xyxx.xy);
  r3 = textureSample(t10, s10, r3.xyxx.xy);
  let v_42 = (r8.xx * r3.xy);
  let v_43 = r1;
  r1 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  let v_44 = (r1.yw * r1.yw);
  let v_45 = r1;
  r1 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  let v_46 = (r1.yw + r1.yw);
  let v_47 = r1;
  r1 = vec4<f32>(v_47.x, v_46.x, v_47.z, v_46.y);
  let v_48 = (r1.yw * r1.yw);
  let v_49 = r1;
  r1 = vec4<f32>(v_49.x, v_48.x, v_49.z, v_48.y);
  let v_50 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_50.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_2[46u].w;
  r8.y = cb3_3.tint_symbol_2[47u].w;
  r8.z = cb3_3.tint_symbol_2[48u].w;
  let v_51 = dot(r8.xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_51, v_51, v_51, v_51).w, 0.0f, 1.0f);
  let v_52 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.www, r9.xyz);
  r8 = vec4<f32>(v_52.xyz, r8.w);
  let v_53 = fma(r8.xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  r0.w = max(r1.w, r1.y);
  let v_54 = (r1.zzz * r7.xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  r1.y = ((-(r1.zzzz)).y + 1.0f);
  let v_55 = (r6.xyz * r7.xyz);
  r7 = vec4<f32>(v_55.xyz, r7.w);
  let v_56 = fma(r0.xyz, r5.www, r7.xyz);
  r0 = vec4<f32>(v_56.xyz, r0.w);
  r1.z = dot(r2.xyz, r4.xyw);
  r1.z = (r1.z + r1.z);
  let v_57 = -(r1.zzzz);
  let v_58 = fma(r4.xyw, v_57.xyz, r2.xyz);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_59.xy, r2.z, v_59.z);
  r1.z = (abs(r2.zzzz).z + 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_60 = (r2.xyw / r1.zzz);
  r2 = vec4<f32>(v_60.xyz, r2.w);
  let v_61 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = bitcast<vec2<u32>>(r1.ww);
  let v_63 = r2.xy;
  let v_64 = select(r2.zy, v_63, (v_62 != vec2<u32>()));
  r1 = vec4<f32>(r1.xy, v_64.xy);
  r2.x = ((-(r5.xxxx)).x + 1.0f);
  r2.y = fma(r2.x, cb5_5.tint_symbol_3[6u].z, -5.0f);
  r2.z = (r2.x * cb5_5.tint_symbol_3[6u].z);
  r2.x = (r2.x * r2.x);
  r2.w = (cb5_5.tint_symbol_3[6u].z + -5.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.w)));
  r2.x = fma(r2.x, 5.0f, r2.w);
  let v_65 = bitcast<u32>(r2.z);
  let v_66 = r2.y;
  r2.x = select(r2.x, v_66, (v_65 != 0u));
  let v_67 = r2.x;
  r2 = textureSampleLevel(t1, s1, r1.zwzz.xy, v_67);
  r1.z = (r3.w + -0.5f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r3.w)));
  let v_68 = bitcast<u32>(r1.w);
  let v_69 = r1.z;
  r1.z = select(r3.w, v_69, (v_68 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r3.z * 16.0f);
  r1.x = (r1.x * r1.w);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r1.z = (r1.z * r1.z);
  let v_70 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = (r5.yyy * r2.xyz);
  r3 = vec4<f32>(v_72.xyz, r3.w);
  let v_73 = (r3.xyz * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_73.xyz, r3.w);
  let v_74 = fma(r2.xyz, vec3<f32>(0.31830990314483642578f), r3.xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = fma(r2.xyz, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = fma(r6.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  let v_77 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_77.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
