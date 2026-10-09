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
  let v_5 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = r2.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = textureLoad(t8, bitcast<vec2<i32>>(r2.xy), 0i);
  let v_9 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fract(r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma((-(r4.yzyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_11.xy, r4.zw);
  let v_12 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = (r3.xyz + vec3<f32>(-128.0f));
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_14 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_14.xy, r3.z, v_14.z);
  r0.w = fma(r3.z, r0.w, cb3_3.tint_symbol_1[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_1[44u].w);
  r0.w = max(r0.w, 0.0f);
  r1.w = dot(r3.xyw, r1.xyz);
  let v_15 = dot(r1.xyz, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_15, v_15, v_15, v_15).y, 0.0f, 1.0f);
  r1.z = clamp(((r1.wwww + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r4 = textureLoad(t9, bitcast<vec2<i32>>(r2.xy), 0i);
  let v_16 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  r1.w = fma(r4.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_17 = -(r1.wwww);
  r3.z = fma(r4.y, 512.0f, v_17.z);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r3.z, 3.0f, r1.w);
  r3.z = min(r4.x, 1.0f);
  let v_18 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_18.xy, r4.zw);
  let v_19 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r5 = vec4<f32>(v_19.xy, r5.zw);
  r1.z = (r1.z * r4.y);
  r1.w = (r4.x * 0.125f);
  r1.z = exp2(r1.z);
  let v_20 = dot((-(r0.xyzx)).xyz, r3.xyw);
  r1.x = clamp(vec4<f32>(v_20, v_20, v_20, v_20).x, 0.0f, 1.0f);
  let v_21 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_21.xy, r4.zw);
  let v_22 = (r4.xy * r4.xy);
  r5 = vec4<f32>(r5.xy, v_22.xy);
  let v_23 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_23.xy);
  let v_24 = (r4.xy * r5.zw);
  r4 = vec4<f32>(v_24.xy, r4.zw);
  r1.y = ((-(r4.zzzz)).y + 1.0f);
  let v_25 = fma(r4.zz, r4.xy, r1.yy);
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r1.y = (r1.z * r4.y);
  r1.z = fma((-(r3.zzzz)).z, r4.x, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.y = (r3.z * r1.y);
  let v_26 = dot(r3.xyw, v_1.xyz);
  r1.w = clamp(vec4<f32>(v_26, v_26, v_26, v_26).w, 0.0f, 1.0f);
  r1.y = (r1.w * r1.y);
  r1.w = (r1.z * r1.w);
  let v_27 = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 0i).xyz;
  r4 = vec4<f32>(v_27.xyz, r4.w);
  let v_28 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r4.xyz, r1.www, r1.yyy);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = (r6.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  r1.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r2.xy), 0i).y);
  r2 = textureLoad(t10, bitcast<vec2<i32>>(r2.xy), 0i);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r1.y = f32(bitcast<u32>(r1.y));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  r1.y = select(1.0f, 0.0f, (bitcast<u32>(r1.y) != 0u));
  let v_31 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.www, cb3_3.tint_symbol_1[46u].xyz);
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.www, cb3_3.tint_symbol_1[48u].xyz);
  r8 = vec4<f32>(v_33.xyz, r8.w);
  let v_34 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.www, cb3_3.tint_symbol_1[44u].xyz);
  r9 = vec4<f32>(v_34.xyz, r9.w);
  let v_35 = fma(r8.xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  r0.w = textureSample(t4, s4, v1.xyxx.xy).x;
  let v_36 = (r0.ww * r2.xy);
  let v_37 = r1;
  r1 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
  let v_38 = (r1.yw * r1.yw);
  let v_39 = r1;
  r1 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
  let v_40 = (r1.yw + r1.yw);
  let v_41 = r1;
  r1 = vec4<f32>(v_41.x, v_40.x, v_41.z, v_40.y);
  let v_42 = (r1.yw * r1.yw);
  let v_43 = r1;
  r1 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  let v_44 = (r1.www * r7.xyz);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  r8.x = cb3_3.tint_symbol_1[46u].w;
  r8.y = cb3_3.tint_symbol_1[47u].w;
  r8.z = cb3_3.tint_symbol_1[48u].w;
  let v_45 = dot(r8.xyz, r3.xyw);
  r0.w = clamp(vec4<f32>(v_45, v_45, v_45, v_45).w, 0.0f, 1.0f);
  let v_46 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.www, r9.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = fma(r8.xyz, r1.yyy, r7.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  r0.w = max(r1.w, r1.y);
  let v_48 = (r1.zzz * r7.xyz);
  r7 = vec4<f32>(v_48.xyz, r7.w);
  r1.y = ((-(r1.zzzz)).y + 1.0f);
  let v_49 = (r4.xyz * r7.xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = fma(r6.xyz, r4.www, r7.xyz);
  r6 = vec4<f32>(v_50.xyz, r6.w);
  r1.z = dot(r0.xyz, r3.xyw);
  r1.z = (r1.z + r1.z);
  let v_51 = -(r1.zzzz);
  let v_52 = fma(r3.xyw, v_51.xyz, r0.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r0.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_53.xyz, r3.w);
  r0.x = (abs(r0.zzzz).x + 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_54 = (r3.xyz / r0.xxx);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  let v_55 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = bitcast<vec2<u32>>(r0.yy);
  let v_57 = r3.xy;
  let v_58 = select(r3.zy, v_57, (v_56 != vec2<u32>()));
  r0 = vec4<f32>(v_58.xy, r0.zw);
  r0.z = ((-(r5.xxxx)).z + 1.0f);
  r1.z = fma(r0.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r1.w = (r0.z * cb5_5.tint_symbol_2[6u].z);
  r0.z = (r0.z * r0.z);
  r2.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.x)));
  r0.z = fma(r0.z, 5.0f, r2.x);
  let v_59 = bitcast<u32>(r1.w);
  let v_60 = r1.z;
  r0.z = select(r0.z, v_60, (v_59 != 0u));
  let v_61 = r0.z;
  let v_62 = textureSampleLevel(t1, s1, r0.xyxx.xy, v_61).xyz;
  r0 = vec4<f32>(v_62.xyz, r0.w);
  r1.z = (r2.w + -0.5f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r2.w)));
  let v_63 = bitcast<u32>(r1.w);
  let v_64 = r1.z;
  r1.z = select(r2.w, v_64, (v_63 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r2.z * 16.0f);
  r1.x = (r1.x * r1.w);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r1.z = (r1.z * r1.z);
  let v_65 = (r0.xyz * r1.zzz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = (r5.yyy * r0.xyz);
  r2 = vec4<f32>(v_67.xyz, r2.w);
  let v_68 = (r2.xyz * vec3<f32>(0.68169009685516357422f));
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = fma(r0.xyz, vec3<f32>(0.31830990314483642578f), r2.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = fma(r0.xyz, r1.yyy, r6.xyz);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  let v_71 = fma(r4.xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  let v_72 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_72.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
