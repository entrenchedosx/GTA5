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

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : u32) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = (r0.www * r0.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r2 = vec4<f32>(((v1.xy / v1.ww)).xy, r2.zw);
  let v_1 = (r2.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(r2.xy, v_1.xy);
  r0.w = textureSample(t4, s4, r2.xyxx.xy).x;
  let v_2 = r2.zw;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v7));
  let v_5 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_5.xyz, r4.w);
  let v_6 = fract(r4.xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = fma((-(r4.yzyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_7.xy, r4.zw);
  let v_8 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r3.xyz + vec3<f32>(-128.0f));
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_10 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_10.xy, r3.z, v_10.z);
  r1.w = fma(r3.z, r1.w, cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_11 = dot((-(r1.xyzx)).xyz, r3.xyw);
  r1.x = clamp(vec4<f32>(v_11, v_11, v_11, v_11).x, 0.0f, 1.0f);
  r1.y = dot(v3.xyz, r3.xyw);
  r1.y = clamp((-(r1.yyyy)).y, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * r1.x);
  r1.z = (r1.z * r1.z);
  r1.x = (r1.x * r1.z);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v7)).xz;
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r1.z = ((-(r3.yyyy)).z + 1.0f);
  r1.x = fma(r3.y, r1.x, r1.z);
  r1.z = (r3.x * r3.x);
  r1.z = min(r1.z, 1.0f);
  r1.x = fma((-(r1.zzzz)).x, r1.x, 1.0f);
  let v_13 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = ((-(r3.xyzx)).xyz + r4.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_16.x, r1.y, v_16.yz);
  let v_17 = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v7)).xyz;
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = (r1.xzw * r3.xyz);
  r1 = vec4<f32>(v_19.x, r1.y, v_19.yz);
  r2.z = textureLoad(t10, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v7)).y;
  r0.w = (r0.w * r2.z);
  r0.w = dot(r0.ww, r0.ww);
  r0.w = (r0.w * r0.w);
  let v_20 = (r0.www * r1.xzw);
  r1 = vec4<f32>(v_20.x, r1.y, v_20.yz);
  r0.w = textureLoad(t12, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v7)).x;
  r2.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v7)).y);
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 8u));
  r2.x = f32(bitcast<u32>(r2.x));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 8.0f)));
  o0.w = select(1.0f, 0.0f, (bitcast<u32>(r2.x) != 0u));
  r0.w = ((-(r0.wwww)).w + cb12_12.tint_symbol_3[17u].w);
  r0.w = (r0.w + 1.0f);
  r0.w = (cb12_12.tint_symbol_3[17u].z / r0.w);
  let v_21 = fma(r0.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = (r0.xyz + (-(v4.xyzx)).xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r0.w = dot(v3.xyz, r0.xyz);
  r0.w = clamp(((r0.wwww + -(v4.wwww))).w, 0.0f, 1.0f);
  let v_23 = ((-(r0.wwww)).xy + vec2<f32>(1.0f, 0.25f));
  r2 = vec4<f32>(v_23.xy, r2.zw);
  r0.w = (r2.y * 4.0f);
  r2.x = (r2.x * r2.x);
  r0.w = max(r0.w, 0.0f);
  r2.y = ((-(r1.yyyy)).y + 1.0f);
  r0.w = fma(r0.w, r2.y, r1.y);
  r1.y = dot(v5.xyz, r0.xyz);
  r0.x = dot(v6.xyz, r0.xyz);
  r0.x = fma((-(v6.wwww)).x, 0.75f, abs(r0.xxxx).x);
  r0.y = fma((-(v5.wwww)).y, 0.75f, abs(r1.yyyy).y);
  r0.z = (v5.w * 0.25f);
  r0.y = clamp(((r0.yyyy / r0.zzzz)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = (r0.y * r2.x);
  r0.z = (v6.w * 0.25f);
  r0.x = clamp(((r0.xxxx / r0.zzzz)).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.x = (r0.x * v3.w);
  let v_24 = (r0.xxx * r1.xzw);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_25.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(sample_index) v7 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return o0;
}
