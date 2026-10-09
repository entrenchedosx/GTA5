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

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = (r0.www * r0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy / v1.ww)).xy, r1.zw);
  let v_1 = (r1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(r1.xy, v_1.xy);
  r0.w = textureSample(t4, s4, r1.xyxx.xy).x;
  let v_2 = r1.zw;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_5 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fract(r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma((-(r3.yzyy)).xy, vec2<f32>(0.125f), r3.xy);
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = fma(r2.xyz, vec3<f32>(256.0f), r3.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = (r2.xyz + vec3<f32>(-128.0f));
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_10 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r2.x = fma(r2.z, r2.w, cb3_3.tint_symbol_1[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_1[44u].w);
  r2.x = max(r2.x, 0.0f);
  r2.y = dot(r0.xyz, r3.xyz);
  r2.y = (r2.y + r2.y);
  let v_11 = -(r2.yyyy);
  let v_12 = fma(r3.xyz, v_11.yzw, r0.xyz);
  r2 = vec4<f32>(r2.x, v_12.xyz);
  let v_13 = dot((-(r0.xyzx)).xyz, r3.xyz);
  r0.x = clamp(vec4<f32>(v_13, v_13, v_13, v_13).x, 0.0f, 1.0f);
  let v_14 = (r2.yzy * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r0.y = (abs(r2.wwww).y + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  let v_15 = (r4.xyz / r0.yyy);
  r2 = vec4<f32>(r2.x, v_15.xyz);
  let v_16 = ((-(r2.yyzw)).yzw + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(r2.x, v_16.xyz);
  let v_17 = bitcast<vec2<u32>>(r0.zz);
  let v_18 = r2.yz;
  let v_19 = select(r2.wz, v_18, (v_17 != vec2<u32>()));
  let v_20 = r0;
  r0 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r2 = vec4<f32>(r2.x, v_21.xyz);
  let v_22 = (r2.yz * r2.yz);
  let v_23 = r2;
  r2 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r3.w = fma(r2.z, 512.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_24 = -(r3.wwww);
  r2.z = fma(r2.z, 512.0f, v_24.z);
  r3.w = (r3.w * 558.0f);
  r2.z = fma(r2.z, 3.0f, r3.w);
  let v_25 = clamp(((r2.zzzz * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r2.y = min(r2.y, 1.0f);
  r2.z = ((-(r4.xxxx)).z + 1.0f);
  r3.w = (r2.z * cb5_5.tint_symbol_2[6u].z);
  r4.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r4.x)));
  r4.z = (r2.z * r2.z);
  r2.z = fma(r2.z, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r4.x = fma(r4.z, 5.0f, r4.x);
  let v_26 = bitcast<u32>(r3.w);
  let v_27 = r2.z;
  r2.z = select(r4.x, v_27, (v_26 != 0u));
  let v_28 = r2.z;
  let v_29 = textureSampleLevel(t1, s1, r0.yzyy.xy, v_28).xyz;
  r4 = vec4<f32>(v_29.x, r4.y, v_29.yz);
  r5 = textureLoad(t10, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  r0.y = (r5.w + -0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < r5.w)));
  let v_30 = bitcast<u32>(r0.z);
  let v_31 = r0.y;
  r0.y = select(r5.w, v_31, (v_30 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  r0.y = clamp(((r0.yyyy + r0.yyyy)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.y);
  let v_32 = (r0.yyy * r4.xzw);
  r4 = vec4<f32>(v_32.x, r4.y, v_32.yz);
  let v_33 = (r0.ww * r5.xy);
  let v_34 = r0;
  r0 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  r0.w = (r5.z * 16.0f);
  r0.w = (r0.x * r0.w);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_35 = (r0.yz * r0.yz);
  let v_36 = r0;
  r0 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  let v_37 = (r0.yz + r0.yz);
  let v_38 = r0;
  r0 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  let v_39 = (r0.yz * r0.yz);
  let v_40 = r0;
  r0 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  r1.z = max(r0.z, r0.y);
  let v_41 = (r1.zzz * r4.xzw);
  r4 = vec4<f32>(v_41.x, r4.y, v_41.yz);
  let v_42 = (r4.yyy * r4.xzw);
  r5 = vec4<f32>(v_42.xyz, r5.w);
  let v_43 = (r5.xyz * vec3<f32>(0.68169009685516357422f));
  r5 = vec4<f32>(v_43.xyz, r5.w);
  let v_44 = fma(r4.xzw, vec3<f32>(0.31830990314483642578f), r5.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  r1.z = (r0.x * r0.x);
  r1.z = (r1.z * r1.z);
  r0.x = (r0.x * r1.z);
  r1.z = ((-(r2.wwww)).z + 1.0f);
  r0.x = fma(r2.w, r0.x, r1.z);
  r0.x = fma((-(r2.yyyy)).x, r0.x, 1.0f);
  r1.z = ((-(r0.xxxx)).z + 1.0f);
  let v_45 = (r1.zzz * r4.xyz);
  r2 = vec4<f32>(r2.x, v_45.xyz);
  r1.z = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).y);
  let v_46 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).xyz;
  r1 = vec4<f32>(v_46.xy, r1.z, v_46.z);
  let v_47 = (r1.xyw * r1.xyw);
  r1 = vec4<f32>(v_47.xy, r1.z, v_47.z);
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 8u));
  r1.z = f32(bitcast<u32>(r1.z));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 8.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r1.z = select(1.0f, 0.0f, (bitcast<u32>(r1.z) != 0u));
  let v_48 = fma(cb3_3.tint_symbol_1[45u].xyz, r2.xxx, cb3_3.tint_symbol_1[46u].xyz);
  r4 = vec4<f32>(v_48.xyz, r4.w);
  let v_49 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  let v_50 = fma(cb3_3.tint_symbol_1[47u].xyz, r2.xxx, cb3_3.tint_symbol_1[48u].xyz);
  r5 = vec4<f32>(v_50.xyz, r5.w);
  let v_51 = fma(cb3_3.tint_symbol_1[43u].xyz, r2.xxx, cb3_3.tint_symbol_1[44u].xyz);
  r6 = vec4<f32>(v_51.xyz, r6.w);
  let v_52 = fma(r5.xyz, r1.zzz, r4.xyz);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  let v_53 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_53.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_54 = dot(r5.xyz, r3.xyz);
  r0.z = clamp(vec4<f32>(v_54, v_54, v_54, v_54).z, 0.0f, 1.0f);
  let v_55 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.zzz, r6.xyz);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = fma(r3.xyz, r0.yyy, r4.xyz);
  r3 = vec4<f32>(v_56.xyz, r3.w);
  let v_57 = (r0.xxx * r3.xyz);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  let v_58 = fma(r0.xyz, r1.xyw, r2.yzw);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = fma(r1.xyw, r0.www, r0.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_60.xyz, o0.w);
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
