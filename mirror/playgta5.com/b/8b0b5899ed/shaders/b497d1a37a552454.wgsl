diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  r0 = textureSample(t8, s8, v1.xyxx.xy);
  let v = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = fract(r1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma((-(r1.yzyy)).xy, vec2<f32>(0.125f), r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(r0.xyz, vec3<f32>(256.0f), r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_5 = (r0.www * r0.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.x = fma(r0.z, r0.w, cb3_3.tint_symbol_1[43u].w);
  r0.x = (r0.x * cb3_3.tint_symbol_1[44u].w);
  r0.x = max(r0.x, 0.0f);
  r0 = vec4<f32>(r0.x, ((v2.xyz / v2.www)).xyz);
  r1.w = dot(r0.yzw, r0.yzw);
  r1.w = inverseSqrt(r1.w);
  let v_6 = (r0.yzw * r1.www);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r1.w = dot(r0.yzw, r1.xyz);
  r1.w = (r1.w + r1.w);
  let v_7 = -(r1.wwww);
  let v_8 = fma(r1.xyz, v_7.xyz, r0.yzw);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = dot((-(r0.yzwy)).xyz, r1.xyz);
  r0.y = clamp(vec4<f32>(v_9, v_9, v_9, v_9).y, 0.0f, 1.0f);
  let v_10 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_10.xy, r2.z, v_10.z);
  r0.z = (abs(r2.zzzz).z + 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
  let v_11 = (r2.xyw / r0.zzz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = bitcast<vec2<u32>>(r0.ww);
  let v_14 = r2.xy;
  let v_15 = select(r2.zy, v_14, (v_13 != vec2<u32>()));
  r0 = vec4<f32>(r0.xy, v_15.xy);
  r2 = textureSample(t9, s9, v1.xyxx.xy);
  let v_16 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r1.w = fma(r2.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_17 = -(r1.wwww);
  r2.y = fma(r2.y, 512.0f, v_17.y);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.y, 3.0f, r1.w);
  let v_18 = clamp(((r1.wwww * vec4<f32>(0.0f, 0.00066666665952652693f, 0.0f, 0.00177619897294789553f))).yw, vec2<f32>(), vec2<f32>(1.0f));
  let v_19 = r2;
  r2 = vec4<f32>(v_19.x, v_18.x, v_19.z, v_18.y);
  r1.w = min(r2.x, 1.0f);
  r2.x = ((-(r2.yyyy)).x + 1.0f);
  r2.y = (r2.x * cb5_5.tint_symbol_2[6u].z);
  r3.x = (cb5_5.tint_symbol_2[6u].z + -5.0f);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < r3.x)));
  r3.y = (r2.x * r2.x);
  r2.x = fma(r2.x, cb5_5.tint_symbol_2[6u].z, -5.0f);
  r3.x = fma(r3.y, 5.0f, r3.x);
  let v_20 = bitcast<u32>(r2.y);
  let v_21 = r2.x;
  r2.x = select(r3.x, v_21, (v_20 != 0u));
  let v_22 = r2.x;
  r3 = textureSampleLevel(t1, s1, r0.zwzz.xy, v_22);
  r4 = textureSample(t10, s10, v1.xyxx.xy);
  r0.z = (r4.w + -0.5f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r4.w)));
  let v_23 = bitcast<u32>(r0.w);
  let v_24 = r0.z;
  r0.z = select(r4.w, v_24, (v_23 != 0u));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  r0.z = clamp(((r0.zzzz + r0.zzzz)).z, 0.0f, 1.0f);
  r0.z = (r0.z * r0.z);
  let v_25 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r5 = textureSample(t4, s4, v1.xyxx.xy);
  let v_26 = (r4.xy * r5.xx);
  r0 = vec4<f32>(r0.xy, v_26.xy);
  r2.x = (r4.z * 16.0f);
  r2.x = (r0.y * r2.x);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_27 = (r0.zw * r0.zw);
  r0 = vec4<f32>(r0.xy, v_27.xy);
  let v_28 = (r0.zw + r0.zw);
  r0 = vec4<f32>(r0.xy, v_28.xy);
  let v_29 = (r0.zw * r0.zw);
  r0 = vec4<f32>(r0.xy, v_29.xy);
  r2.y = max(r0.w, r0.z);
  let v_30 = (r2.yyy * r3.xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = (r4.xyz * vec3<f32>(0.68169009685516357422f));
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(r3.xyz, vec3<f32>(0.31830990314483642578f), r4.xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  r2.y = (r0.y * r0.y);
  r2.y = (r2.y * r2.y);
  r0.y = (r0.y * r2.y);
  r2.y = ((-(r2.zzzz)).y + 1.0f);
  r0.y = fma(r2.z, r0.y, r2.y);
  r0.y = fma((-(r1.wwww)).y, r0.y, 1.0f);
  r1.w = ((-(r0.yyyy)).w + 1.0f);
  let v_34 = (r1.www * r3.xyz);
  r2 = vec4<f32>(r2.x, v_34.xyz);
  let v_35 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.xxx, cb3_3.tint_symbol_1[46u].xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  let v_36 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  let v_37 = r4.xy;
  let v_38 = max(v_37, vec2<f32>(-2147483648.0f));
  let v_39 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_38), vec2<i32>(2147483647i), (v_38 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_37 == v_37))));
  r4 = vec4<f32>(v_39.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r4.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r1.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  let v_40 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.xxx, cb3_3.tint_symbol_1[48u].xyz);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  let v_42 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.xxx, cb3_3.tint_symbol_1[44u].xyz);
  r5 = vec4<f32>(v_42.xyz, r5.w);
  let v_43 = fma(r4.xyz, r1.www, r3.xyz);
  r3 = vec4<f32>(v_43.xyz, r3.w);
  let v_44 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_44.xyz, r3.w);
  r4.x = cb3_3.tint_symbol_1[46u].w;
  r4.y = cb3_3.tint_symbol_1[47u].w;
  r4.z = cb3_3.tint_symbol_1[48u].w;
  let v_45 = dot(r4.xyz, r1.xyz);
  r0.x = clamp(vec4<f32>(v_45, v_45, v_45, v_45).x, 0.0f, 1.0f);
  let v_46 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.xxx, r5.xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = fma(r1.xyz, r0.zzz, r3.xyz);
  r0 = vec4<f32>(v_47.x, r0.y, v_47.yz);
  let v_48 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  r1 = textureSample(t7, s7, v1.xyxx.xy);
  let v_49 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  let v_50 = fma(r0.xyz, r1.xyz, r2.yzw);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = fma(r1.xyz, r2.xxx, r0.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_52.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
