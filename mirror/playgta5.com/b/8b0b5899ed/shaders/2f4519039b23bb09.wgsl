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
  let v = (r0.www * r0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy / v1.ww)).xy, r1.zw);
  r2 = textureSample(t8, s8, r1.xyxx.xy);
  let v_1 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r3 = vec4<f32>(v_1.xyz, r3.w);
  let v_2 = fract(r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  let v_3 = fma((-(r3.yzyy)).xy, vec2<f32>(0.125f), r3.xy);
  r3 = vec4<f32>(v_3.xy, r3.zw);
  let v_4 = fma(r2.xyz, vec3<f32>(256.0f), r3.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r2.xyz + vec3<f32>(-128.0f));
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_6.xy, r2.z, v_6.z);
  r0.w = fma(r2.z, r0.w, cb3_3.tint_symbol_1[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_1[44u].w);
  r0.w = max(r0.w, 0.0f);
  r1.z = dot(r0.xyz, r2.xyw);
  r1.z = (r1.z + r1.z);
  let v_7 = -(r1.zzzz);
  let v_8 = fma(r2.xyw, v_7.xyz, r0.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = dot((-(r0.xyzx)).xyz, r2.xyw);
  r0.x = clamp(vec4<f32>(v_9, v_9, v_9, v_9).x, 0.0f, 1.0f);
  let v_10 = (r3.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_10.xy, r3.z, v_10.z);
  r0.y = (abs(r3.zzzz).y + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_11 = (r3.xyw / r0.yyy);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = ((-(r3.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = bitcast<vec2<u32>>(r0.zz);
  let v_14 = r3.xy;
  let v_15 = select(r3.zy, v_14, (v_13 != vec2<u32>()));
  let v_16 = r0;
  r0 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  r3 = textureSample(t9, s9, r1.xyxx.xy);
  let v_17 = (r3.xy * r3.xy);
  r1 = vec4<f32>(r1.xy, v_17.xy);
  r2.z = fma(r1.w, 512.0f, -500.0f);
  r2.z = max(r2.z, 0.0f);
  let v_18 = -(r2.zzzz);
  r1.w = fma(r1.w, 512.0f, v_18.w);
  r2.z = (r2.z * 558.0f);
  r1.w = fma(r1.w, 3.0f, r2.z);
  let v_19 = clamp(((r1.wwww * vec4<f32>(0.00066666665952652693f, 0.00177619897294789553f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_19.xy, r3.zw);
  r1.z = min(r1.z, 1.0f);
  r1.w = ((-(r3.xxxx)).w + 1.0f);
  r2.z = (r1.w * cb5_5.tint_symbol_2[6u].z);
  r3.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r3.x)));
  r3.w = (r1.w * r1.w);
  r1.w = fma(r1.w, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r3.x = fma(r3.w, 5.0f, r3.x);
  let v_20 = bitcast<u32>(r2.z);
  let v_21 = r1.w;
  r1.w = select(r3.x, v_21, (v_20 != 0u));
  let v_22 = r1.w;
  r4 = textureSampleLevel(t1, s1, r0.yzyy.xy, v_22);
  r5 = textureSample(t10, s10, r1.xyxx.xy);
  r0.y = (r5.w + -0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < r5.w)));
  let v_23 = bitcast<u32>(r0.z);
  let v_24 = r0.y;
  r0.y = select(r5.w, v_24, (v_23 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  r0.y = clamp(((r0.yyyy + r0.yyyy)).y, 0.0f, 1.0f);
  r0.y = (r0.y * r0.y);
  let v_25 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r6 = textureSample(t4, s4, r1.xyxx.xy);
  let v_26 = (r5.xy * r6.xx);
  let v_27 = r0;
  r0 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  r1.w = (r5.z * 16.0f);
  r1.w = (r0.x * r1.w);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_28 = (r0.yz * r0.yz);
  let v_29 = r0;
  r0 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  let v_30 = (r0.yz + r0.yz);
  let v_31 = r0;
  r0 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  let v_32 = (r0.yz * r0.yz);
  let v_33 = r0;
  r0 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  r2.z = max(r0.z, r0.y);
  let v_34 = (r2.zzz * r4.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = (r3.yyy * r4.xyz);
  r3 = vec4<f32>(v_35.xy, r3.z, v_35.z);
  let v_36 = (r3.xyw * vec3<f32>(0.68169009685516357422f));
  r3 = vec4<f32>(v_36.xy, r3.z, v_36.z);
  let v_37 = fma(r4.xyz, vec3<f32>(0.31830990314483642578f), r3.xyw);
  r3 = vec4<f32>(v_37.xy, r3.z, v_37.z);
  r2.z = (r0.x * r0.x);
  r2.z = (r2.z * r2.z);
  r0.x = (r0.x * r2.z);
  r2.z = ((-(r3.zzzz)).z + 1.0f);
  r0.x = fma(r3.z, r0.x, r2.z);
  r0.x = fma((-(r1.zzzz)).x, r0.x, 1.0f);
  r1.z = ((-(r0.xxxx)).z + 1.0f);
  let v_38 = (r1.zzz * r3.xyw);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = (r1.xy * cb2_2.tint_symbol[18u].xy);
  r4 = vec4<f32>(v_39.xy, r4.zw);
  r5 = textureSample(t7, s7, r1.xyxx.xy);
  let v_40 = (r5.xyz * r5.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = r4.xy;
  let v_42 = max(v_41, vec2<f32>(-2147483648.0f));
  let v_43 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_42), vec2<i32>(2147483647i), (v_42 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_41 == v_41))));
  r4 = vec4<f32>(v_43.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
  r2.z = bitcast<f32>((bitcast<u32>(r4.y) & 8u));
  r2.z = f32(bitcast<u32>(r2.z));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 8.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
  r2.z = select(1.0f, 0.0f, (bitcast<u32>(r2.z) != 0u));
  let v_44 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.www, cb3_3.tint_symbol_1[46u].xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = (r3.www * r4.xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.www, cb3_3.tint_symbol_1[48u].xyz);
  r5 = vec4<f32>(v_46.xyz, r5.w);
  let v_47 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.www, cb3_3.tint_symbol_1[44u].xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = fma(r5.xyz, r2.zzz, r4.xyz);
  r4 = vec4<f32>(v_48.xyz, r4.w);
  let v_49 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_50 = dot(r5.xyz, r2.xyw);
  r0.z = clamp(vec4<f32>(v_50, v_50, v_50, v_50).z, 0.0f, 1.0f);
  let v_51 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.zzz, r6.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = fma(r2.xyz, r0.yyy, r4.xyz);
  r0 = vec4<f32>(r0.x, v_52.xyz);
  let v_53 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = fma(r0.xyz, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = fma(r1.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_56.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
