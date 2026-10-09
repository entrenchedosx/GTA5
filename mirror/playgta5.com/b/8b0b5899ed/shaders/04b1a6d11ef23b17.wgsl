diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb49_struct {
  tint_symbol_2 : array<vec4<f32>, 49u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb49_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = (r0.www * r0.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r2 = vec4<f32>(((v1.xy / v1.ww)).xy, r2.zw);
  r3 = textureSample(t8, s8, r2.xyxx.xy);
  let v_1 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_1.xyz, r4.w);
  let v_2 = fract(r4.xyz);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = fma((-(r4.yzyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_3.xy, r4.zw);
  let v_4 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz + vec3<f32>(-128.0f));
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_6.xy, r3.z, v_6.z);
  r0.w = fma(r3.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_7 = dot((-(r1.xyzx)).xyz, r3.xyw);
  r1.x = clamp(vec4<f32>(v_7, v_7, v_7, v_7).x, 0.0f, 1.0f);
  r1.y = dot(v3.xyz, r3.xyw);
  r1.y = clamp((-(r1.yyyy)).y, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * r1.x);
  r1.z = (r1.z * r1.z);
  r1.x = (r1.x * r1.z);
  r3 = textureSample(t9, s9, r2.xyxx.xy);
  r1.z = ((-(r3.zzzz)).z + 1.0f);
  r1.x = fma(r3.z, r1.x, r1.z);
  r1.z = (r3.x * r3.x);
  r1.z = min(r1.z, 1.0f);
  r1.x = fma((-(r1.zzzz)).x, r1.x, 1.0f);
  let v_8 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = ((-(r3.xyzx)).xyz + r4.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_11.x, r1.y, v_11.yz);
  r3 = textureSample(t7, s7, r2.xyxx.xy);
  let v_12 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = (r1.xzw * r3.xyz);
  r1 = vec4<f32>(v_13.x, r1.y, v_13.yz);
  r3 = textureSample(t10, s10, r2.xyxx.xy);
  r4 = textureSample(t4, s4, r2.xyxx.xy);
  r0.w = (r3.y * r4.x);
  r0.w = dot(r0.ww, r0.ww);
  r0.w = (r0.w * r0.w);
  let v_14 = (r0.www * r1.xzw);
  r1 = vec4<f32>(v_14.x, r1.y, v_14.yz);
  r0.w = ((-(r1.yyyy)).w + 1.0f);
  r3 = textureSample(t12, s12, r2.xyxx.xy);
  let v_15 = (r2.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = r2.xy;
  let v_17 = max(v_16, vec2<f32>(-2147483648.0f));
  let v_18 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_17), vec2<i32>(2147483647i), (v_17 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_16 == v_16))));
  r2 = vec4<f32>(v_18.xy, r2.zw);
  r3.x = ((-(r3.xxxx)).x + cb12_12.tint_symbol_3[17u].w);
  r3.x = (r3.x + 1.0f);
  r3.x = (cb12_12.tint_symbol_3[17u].z / r3.x);
  let v_19 = fma(r0.xyz, r3.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r0.xyz + (-(v4.xyzx)).xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r3.x = dot(v3.xyz, r0.xyz);
  r3.x = clamp(((r3.xxxx + -(v4.wwww))).x, 0.0f, 1.0f);
  let v_21 = ((-(r3.xxxx)).xy + vec2<f32>(1.0f, 0.25f));
  r3 = vec4<f32>(v_21.xy, r3.zw);
  r3.y = (r3.y * 4.0f);
  r3.x = (r3.x * r3.x);
  r3.y = max(r3.y, 0.0f);
  r0.w = fma(r3.y, r0.w, r1.y);
  r1.y = dot(v5.xyz, r0.xyz);
  r0.x = dot(v6.xyz, r0.xyz);
  r0.x = fma((-(v6.wwww)).x, 0.75f, abs(r0.xxxx).x);
  r0.y = fma((-(v5.wwww)).y, 0.75f, abs(r1.yyyy).y);
  r0.z = (v5.w * 0.25f);
  r0.y = clamp(((r0.yyyy / r0.zzzz)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = (r0.y * r3.x);
  r0.z = (v6.w * 0.25f);
  r0.x = clamp(((r0.xxxx / r0.zzzz)).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.x = (r0.x * v3.w);
  let v_22 = (r0.xxx * r1.xzw);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_23.xyz, o0.w);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & 8u));
  r0.x = f32(bitcast<u32>(r0.x));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 8.0f)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6);
  return o0;
}
