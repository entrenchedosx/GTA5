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

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

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
  let v = -(r0.xyzx);
  let v_1 = -(cb11_11.tint_symbol_2[1u].xyzx);
  let v_2 = fma(v.xyz, r0.www, v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = dot(r1.xyz, v_1.xyz);
  r2.y = clamp(vec4<f32>(v_5, v_5, v_5, v_5).y, 0.0f, 1.0f);
  r3 = textureSample(t8, s8, v1.xyxx.xy);
  let v_6 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = fract(r4.xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = fma((-(r4.yzyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  let v_9 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.xyz + vec3<f32>(-128.0f));
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_11.xy, r3.z, v_11.z);
  r0.w = fma(r3.z, r0.w, cb3_3.tint_symbol_1[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_1[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_12 = dot((-(r0.xyzx)).xyz, r3.xyw);
  r2.x = clamp(vec4<f32>(v_12, v_12, v_12, v_12).x, 0.0f, 1.0f);
  let v_13 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = (r0.xy * r0.xy);
  let v_15 = r2;
  r2 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = (r2.yz * r2.yz);
  let v_17 = r2;
  r2 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  let v_18 = (r0.xy * r2.yz);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  r4 = textureSample(t9, s9, v1.xyxx.xy);
  r0.z = ((-(r4.zzzz)).z + 1.0f);
  let v_19 = fma(r4.zz, r0.xy, r0.zz);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  r0.z = dot(r3.xyw, r1.xyz);
  r0.z = clamp(((r0.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r0.z = log2(r0.z);
  let v_20 = (r4.xy * r4.xy);
  r1 = vec4<f32>(v_20.xy, r1.zw);
  r1.z = fma(r1.y, 512.0f, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_21 = -(r1.zzzz);
  r1.y = fma(r1.y, 512.0f, v_21.y);
  r1.z = (r1.z * 558.0f);
  r1.y = fma(r1.y, 3.0f, r1.z);
  let v_22 = (r1.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_23 = r1;
  r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r1.x = min(r1.x, 1.0f);
  r0.z = (r0.z * r1.z);
  r1.y = (r1.y * 0.125f);
  r0.z = exp2(r0.z);
  r0.y = (r0.y * r0.z);
  r0.x = fma((-(r1.xxxx)).x, r0.x, 1.0f);
  r0.y = (r1.y * r0.y);
  r0.y = (r1.x * r0.y);
  let v_24 = dot(r3.xyw, v_1.xyz);
  r0.z = clamp(vec4<f32>(v_24, v_24, v_24, v_24).z, 0.0f, 1.0f);
  r0.y = (r0.z * r0.y);
  r0.z = (r0.x * r0.z);
  r1 = textureSample(t7, s7, v1.xyxx.xy);
  let v_25 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  let v_26 = fma(r1.xyz, r0.zzz, r0.yyy);
  r2 = vec4<f32>(r2.x, v_26.xyz);
  let v_27 = (r2.yzw * cb11_11.tint_symbol_2[3u].xyz);
  r2 = vec4<f32>(r2.x, v_27.xyz);
  r4.x = cb3_3.tint_symbol_1[46u].w;
  r4.y = cb3_3.tint_symbol_1[47u].w;
  r4.z = cb3_3.tint_symbol_1[48u].w;
  let v_28 = dot(r4.xyz, r3.xyw);
  r0.y = clamp(vec4<f32>(v_28, v_28, v_28, v_28).y, 0.0f, 1.0f);
  let v_29 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.www, cb3_3.tint_symbol_1[44u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  let v_30 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.yyy, r3.xyz);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.www, cb3_3.tint_symbol_1[48u].xyz);
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.www, cb3_3.tint_symbol_1[46u].xyz);
  r0 = vec4<f32>(r0.x, v_32.xyz);
  let v_33 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r5 = vec4<f32>(v_33.xy, r5.zw);
  let v_34 = r5.xy;
  let v_35 = max(v_34, vec2<f32>(-2147483648.0f));
  let v_36 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_35), vec2<i32>(2147483647i), (v_35 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_34 == v_34))));
  r5 = vec4<f32>(v_36.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r5.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r1.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  let v_37 = (r0.yzw * r3.www);
  r0 = vec4<f32>(r0.x, v_37.xyz);
  let v_38 = fma(r4.xyz, r1.www, r0.yzw);
  r0 = vec4<f32>(r0.x, v_38.xyz);
  r5 = textureSample(t4, s4, v1.xyxx.xy);
  r6 = textureSample(t10, s10, v1.xyxx.xy);
  let v_39 = (r5.xx * r6.xy);
  r4 = vec4<f32>(v_39.xy, r4.zw);
  let v_40 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = (r4.xy + r4.xy);
  r4 = vec4<f32>(v_41.xy, r4.zw);
  let v_42 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_42.xy, r4.zw);
  let v_43 = (r0.yzw * r4.yyy);
  r0 = vec4<f32>(r0.x, v_43.xyz);
  let v_44 = fma(r3.xyz, r4.xxx, r0.yzw);
  r0 = vec4<f32>(r0.x, v_44.xyz);
  let v_45 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = (r1.xyz * r0.xyz);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  let v_47 = fma(r2.yzw, r4.www, r0.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  r0.w = (r6.z * 16.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.5f < r6.w)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.w = (r2.x * r0.w);
  let v_48 = fma(r1.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_49.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
