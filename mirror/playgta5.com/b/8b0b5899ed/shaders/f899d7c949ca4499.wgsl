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
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = (r0.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(r0.xy, v.xy);
  r0.x = textureSample(t4, s4, r0.xyxx.xy).x;
  let v_1 = r0.zw;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_4 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = fract(r0.yzw);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma((-(r0.zzwz)).yz, vec2<f32>(0.125f), r0.yz);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r2.xyz, vec3<f32>(256.0f), r0.yzw);
  r0 = vec4<f32>(r0.x, v_8.xyz);
  let v_9 = (r0.yzw + vec3<f32>(-128.0f));
  r0 = vec4<f32>(r0.x, v_9.xyz);
  r2.x = dot(r0.yzw, r0.yzw);
  r2.x = inverseSqrt(r2.x);
  r2.y = fma(r0.w, r2.x, cb3_3.tint_symbol_1[43u].w);
  let v_10 = (r0.yzw * r2.xxx);
  r0 = vec4<f32>(r0.x, v_10.xyz);
  r2.x = (r2.y * cb3_3.tint_symbol_1[44u].w);
  r2.x = max(r2.x, 0.0f);
  let v_11 = fma(cb3_3.tint_symbol_1[45u].xyz, r2.xxx, cb3_3.tint_symbol_1[46u].xyz);
  r2 = vec4<f32>(r2.x, v_11.xyz);
  r3.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).y);
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 8u));
  r3.x = f32(bitcast<u32>(r3.x));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 8.0f)));
  r3.y = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r3.x = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  let v_12 = (r2.yzw * r3.yyy);
  r2 = vec4<f32>(r2.x, v_12.xyz);
  let v_13 = fma(cb3_3.tint_symbol_1[47u].xyz, r2.xxx, cb3_3.tint_symbol_1[48u].xyz);
  r3 = vec4<f32>(r3.x, v_13.xyz);
  let v_14 = fma(cb3_3.tint_symbol_1[43u].xyz, r2.xxx, cb3_3.tint_symbol_1[44u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = fma(r3.yzw, r3.xxx, r2.yzw);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r3 = textureLoad(t10, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_16 = (r0.xx * r3.xy);
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_17.xy, r3.zw);
  let v_18 = (r3.xy + r3.xy);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  let v_19 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  let v_20 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_21 = dot(r5.xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_21, v_21, v_21, v_21).x, 0.0f, 1.0f);
  let v_22 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.xxx, r4.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r4.xyz, r3.xxx, r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r0.x = max(r3.y, r3.x);
  r4 = vec4<f32>(((v2.xyz / v2.www)).xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_24 = -(r4.xyzx);
  let v_25 = -(cb11_11.tint_symbol_3[1u].xyzx);
  let v_26 = fma(v_24.xyz, r1.zzz, v_25.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = (r1.zzz * r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_28 = (r1.zzz * r5.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = dot(r5.xyz, v_25.xyz);
  r3.y = clamp(vec4<f32>(v_29, v_29, v_29, v_29).y, 0.0f, 1.0f);
  r1.z = dot(r0.yzw, r5.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  let v_30 = dot((-(r4.xyzx)).xyz, r0.yzw);
  r3.x = clamp(vec4<f32>(v_30, v_30, v_30, v_30).x, 0.0f, 1.0f);
  let v_31 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_31.xy, r5.zw);
  let v_32 = (r5.xy * r5.xy);
  r5 = vec4<f32>(r5.xy, v_32.xy);
  let v_33 = (r5.zw * r5.zw);
  r5 = vec4<f32>(r5.xy, v_33.xy);
  let v_34 = (r5.xy * r5.zw);
  r5 = vec4<f32>(v_34.xy, r5.zw);
  r6 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_35 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r1 = vec4<f32>(v_35.xy, r1.z, v_35.z);
  let v_36 = (r1.xyw * r1.xyw);
  r1 = vec4<f32>(v_36.xy, r1.z, v_36.z);
  r2.w = ((-(r6.zzzz)).w + 1.0f);
  let v_37 = fma(r6.zz, r5.xy, r2.ww);
  r5 = vec4<f32>(v_37.xy, r5.zw);
  let v_38 = (r6.xy * r6.xy);
  r5 = vec4<f32>(r5.xy, v_38.xy);
  r2.w = min(r5.z, 1.0f);
  r3.y = fma((-(r2.wwww)).y, r5.x, 1.0f);
  let v_39 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = (r1.xyw * r2.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  r4.w = fma(r5.w, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_41 = -(r4.wwww);
  r5.x = fma(r5.w, 512.0f, v_41.x);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r5.x, 3.0f, r4.w);
  let v_42 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_43 = r5;
  r5 = vec4<f32>(v_42.x, v_43.y, v_42.y, v_43.w);
  let v_44 = clamp(((r4.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_44.xy, r6.zw);
  r1.z = (r1.z * r5.z);
  r4.w = (r5.x * 0.125f);
  r1.z = exp2(r1.z);
  r1.z = (r5.y * r1.z);
  r1.z = (r4.w * r1.z);
  r1.z = (r2.w * r1.z);
  let v_45 = dot(r0.yzw, v_25.xyz);
  r2.w = clamp(vec4<f32>(v_45, v_45, v_45, v_45).w, 0.0f, 1.0f);
  r1.z = (r1.z * r2.w);
  r2.w = (r3.y * r2.w);
  r3.y = ((-(r3.yyyy)).y + 1.0f);
  let v_46 = fma(r1.xyw, r2.www, r1.zzz);
  r5 = vec4<f32>(v_46.xyz, r5.w);
  let v_47 = (r5.xyz * cb11_11.tint_symbol_3[3u].xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  let v_48 = fma(r5.xyz, r6.www, r2.xyz);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  r1.z = dot(r4.xyz, r0.yzw);
  r1.z = (r1.z + r1.z);
  let v_49 = -(r1.zzzz);
  let v_50 = fma(r0.yzw, v_49.yzw, r4.xyz);
  r0 = vec4<f32>(r0.x, v_50.xyz);
  let v_51 = (r0.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_51.xyz, r4.w);
  r0.y = (abs(r0.wwww).y + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  let v_52 = (r4.xyz / r0.yyy);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  let v_53 = ((-(r4.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_53.xyz, r4.w);
  let v_54 = bitcast<vec2<u32>>(r0.zz);
  let v_55 = r4.xy;
  let v_56 = select(r4.zy, v_55, (v_54 != vec2<u32>()));
  let v_57 = r0;
  r0 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  r0.w = ((-(r6.xxxx)).w + 1.0f);
  r1.z = fma(r0.w, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r2.w = (r0.w * cb5_5.tint_symbol_2[6u].z);
  r0.w = (r0.w * r0.w);
  r4.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r4.x)));
  r0.w = fma(r0.w, 5.0f, r4.x);
  let v_58 = bitcast<u32>(r2.w);
  let v_59 = r1.z;
  r0.w = select(r0.w, v_59, (v_58 != 0u));
  let v_60 = r0.w;
  let v_61 = textureSampleLevel(t1, s1, r0.yzyy.xy, v_60).xyz;
  r0 = vec4<f32>(r0.x, v_61.xyz);
  r1.z = (r3.w + -0.5f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r3.w)));
  let v_62 = bitcast<u32>(r2.w);
  let v_63 = r1.z;
  r1.z = select(r3.w, v_63, (v_62 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  r2.w = (r3.z * 16.0f);
  r2.w = (r3.x * r2.w);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r1.z = (r1.z * r1.z);
  let v_64 = (r0.yzw * r1.zzz);
  r0 = vec4<f32>(r0.x, v_64.xyz);
  let v_65 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = (r6.yyy * r0.xyz);
  r3 = vec4<f32>(v_66.x, r3.y, v_66.yz);
  let v_67 = (r3.xzw * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_67.x, r3.y, v_67.yz);
  let v_68 = fma(r0.xyz, vec3<f32>(0.31830990314483642578f), r3.xzw);
  r0 = vec4<f32>(v_68.xyz, r0.w);
  let v_69 = fma(r0.xyz, r3.yyy, r2.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = fma(r1.xyw, r2.www, r0.xyz);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  let v_71 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_71.xyz, o0.w);
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
