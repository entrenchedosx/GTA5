diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

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
  r2.x = cb3_3.tint_symbol_1[46u].w;
  r2.y = cb3_3.tint_symbol_1[47u].w;
  r2.z = cb3_3.tint_symbol_1[48u].w;
  let v_6 = dot(r2.xyz, r1.xyz);
  r0.y = clamp(vec4<f32>(v_6, v_6, v_6, v_6).y, 0.0f, 1.0f);
  let v_7 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.xxx, cb3_3.tint_symbol_1[44u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(cb3_3.tint_symbol_1[49u].xyz, r0.yyy, r2.xyz);
  r0 = vec4<f32>(r0.x, v_8.xyz);
  let v_9 = fma(cb3_3.tint_symbol_1[47u].xyz, r0.xxx, cb3_3.tint_symbol_1[48u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(cb3_3.tint_symbol_1[45u].xyz, r0.xxx, cb3_3.tint_symbol_1[46u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r4 = vec4<f32>(v_11.xy, r4.zw);
  let v_12 = r4.xy;
  let v_13 = max(v_12, vec2<f32>(-2147483648.0f));
  let v_14 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_13), vec2<i32>(2147483647i), (v_13 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_12 == v_12))));
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r4.y) & 8u));
  r0.x = f32(bitcast<u32>(r0.x));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  let v_15 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.xyz, r0.xxx, r3.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  r4 = textureSample(t10, s10, v1.xyxx.xy);
  let v_17 = (r3.xx * r4.xy);
  r3 = vec4<f32>(v_17.xy, r3.zw);
  let v_18 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  let v_19 = (r3.xy + r3.xy);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  let v_20 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_20.xy, r3.zw);
  let v_21 = (r2.xyz * r3.yyy);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = fma(r0.yzw, r3.xxx, r2.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r2 = vec4<f32>(((v2.xyz / v2.www)).xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_23 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = dot((-(r2.xyzx)).xyz, r1.xyz);
  r0.w = clamp(vec4<f32>(v_24, v_24, v_24, v_24).w, 0.0f, 1.0f);
  r1.x = ((-(r0.wwww)).x + 1.0f);
  r1.y = (r1.x * r1.x);
  r1.y = (r1.y * r1.y);
  r1.x = (r1.x * r1.y);
  r2 = textureSample(t9, s9, v1.xyxx.xy);
  r1.y = ((-(r2.zzzz)).y + 1.0f);
  r1.x = fma(r2.z, r1.x, r1.y);
  r1.y = (r2.x * r2.x);
  r1.y = min(r1.y, 1.0f);
  r1.x = fma((-(r1.yyyy)).x, r1.x, 1.0f);
  let v_25 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r1.x = (r4.z * 16.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.5f < r4.w)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.y) != 0u));
  r0.w = (r0.w * r1.x);
  r1 = textureSample(t7, s7, v1.xyxx.xy);
  let v_26 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = (r0.www * r1.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = fma(r0.xyz, r1.xyz, r2.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_29.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
