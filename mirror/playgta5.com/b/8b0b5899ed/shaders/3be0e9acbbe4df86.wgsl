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

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i);
  let v_4 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fract(r2.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma((-(r2.yzyy)).xy, vec2<f32>(0.125f), r2.xy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = fma(r1.xyz, vec3<f32>(256.0f), r2.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  r2.x = fma(r1.z, r1.w, cb3_3.tint_symbol_1[43u].w);
  let v_9 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1.w = (r2.x * cb3_3.tint_symbol_1[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_10 = fma(cb3_3.tint_symbol_1[45u].xyz, r1.www, cb3_3.tint_symbol_1[46u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r2.w = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), 0i).y);
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 8u));
  r2.w = f32(bitcast<u32>(r2.w));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 8.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  let v_11 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(cb3_3.tint_symbol_1[47u].xyz, r1.www, cb3_3.tint_symbol_1[48u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(cb3_3.tint_symbol_1[43u].xyz, r1.www, cb3_3.tint_symbol_1[44u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = fma(r3.xyz, r2.www, r2.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r1.w = textureSample(t4, s4, v1.xyxx.xy).x;
  r3 = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), 0i);
  let v_15 = (r1.ww * r3.xy);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_16.xy, r3.zw);
  let v_17 = (r3.xy + r3.xy);
  r3 = vec4<f32>(v_17.xy, r3.zw);
  let v_18 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  let v_19 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r5.x = cb3_3.tint_symbol_1[46u].w;
  r5.y = cb3_3.tint_symbol_1[47u].w;
  r5.z = cb3_3.tint_symbol_1[48u].w;
  let v_20 = dot(r5.xyz, r1.xyz);
  r0.z = clamp(vec4<f32>(v_20, v_20, v_20, v_20).z, 0.0f, 1.0f);
  let v_21 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.zzz, r4.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = fma(r4.xyz, r3.xxx, r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r4 = vec4<f32>(((v2.xyz / v2.www)).xyz, r4.w);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_23 = -(r4.xyzx);
  let v_24 = -(cb11_11.tint_symbol_2[1u].xyzx);
  let v_25 = fma(v_23.xyz, r0.zzz, v_24.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = (r0.zzz * r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = dot((-(r4.xyzx)).xyz, r1.xyz);
  r3.x = clamp(vec4<f32>(v_27, v_27, v_27, v_27).x, 0.0f, 1.0f);
  r0.z = dot(r5.xyz, r5.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_28 = (r0.zzz * r5.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = dot(r4.xyz, v_24.xyz);
  r3.y = clamp(vec4<f32>(v_29, v_29, v_29, v_29).y, 0.0f, 1.0f);
  r0.z = dot(r1.xyz, r4.xyz);
  let v_30 = dot(r1.xyz, v_24.xyz);
  r1.x = clamp(vec4<f32>(v_30, v_30, v_30, v_30).x, 0.0f, 1.0f);
  r0.z = clamp(((r0.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r0.z = log2(r0.z);
  let v_31 = ((-(r3.xxyx)).yz + vec2<f32>(1.0f));
  let v_32 = r1;
  r1 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  let v_33 = (r1.yz * r1.yz);
  r4 = vec4<f32>(v_33.xy, r4.zw);
  let v_34 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  let v_35 = (r1.yz * r4.xy);
  let v_36 = r1;
  r1 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  r4 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), 0i);
  let v_37 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
  r0 = vec4<f32>(v_37.xy, r0.z, v_37.z);
  let v_38 = (r0.xyw * r0.xyw);
  r0 = vec4<f32>(v_38.xy, r0.z, v_38.z);
  r1.w = ((-(r4.zzzz)).w + 1.0f);
  let v_39 = fma(r4.zz, r1.yz, r1.ww);
  let v_40 = r1;
  r1 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_41.xy, r4.zw);
  r4.x = clamp(r4.xxxx.x, 0.0f, 1.0f);
  r1.y = fma((-(r4.xxxx)).y, r1.y, 1.0f);
  let v_42 = (r1.yyy * r2.xyz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  r1.y = (r1.y * r1.x);
  let v_43 = (r0.xyw * r2.xyz);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  r1.w = fma(r4.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_44 = -(r1.wwww);
  r2.w = fma(r4.y, 512.0f, v_44.w);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.w, 3.0f, r1.w);
  let v_45 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_46 = r4;
  r4 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  r0.z = (r0.z * r4.z);
  r1.w = (r4.y * 0.125f);
  r0.z = exp2(r0.z);
  r0.z = (r1.z * r0.z);
  r0.z = (r1.w * r0.z);
  r0.z = (r4.x * r0.z);
  r0.z = (r1.x * r0.z);
  let v_47 = fma(r0.xyw, r1.yyy, r0.zzz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = (r1.xyz * cb11_11.tint_symbol_2[3u].xyz);
  r1 = vec4<f32>(v_48.xyz, r1.w);
  let v_49 = fma(r1.xyz, r4.www, r2.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  r0.z = (r3.z * 16.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r3.w)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.z = (r3.x * r0.z);
  let v_50 = fma(r0.xyw, r0.zzz, r1.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_51.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
