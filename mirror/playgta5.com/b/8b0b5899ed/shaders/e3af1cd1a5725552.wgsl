diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0.x = (v3.w * v3.w);
  r0.x = (1.0f / r0.x);
  r0.y = (v5.z * (-(v5.xxxx)).y);
  r0 = vec4<f32>(r0.xy, ((v1.xy / v1.ww)).xy);
  r1 = textureSample(t12, s12, r0.zwzz.xy);
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  r1 = vec4<f32>(r1.x, ((v2.xyz / v2.www)).xyz);
  let v = fma(r1.yzw, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + v3.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  r1.x = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r1.x);
  let v_2 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  r0.x = fma((-(r1.xxxx)).x, r0.x, 1.0f);
  r0.x = max(r0.x, 0.0f);
  r1.x = ((-(v4.wwww)).x + 1.0f);
  r1.x = fma(r1.x, r0.x, v4.w);
  r0.x = (r0.x / r1.x);
  r1.x = dot(r2.xyz, (-(v4.xyzx)).xyz);
  r0.y = clamp(fma(r1.xxxx, v5.zzzz, r0.yyyy).y, 0.0f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.00000099999999747524f)));
  v_3((bitcast<u32>(r0.y) != 0u));
  let v_4 = (r0.zw * cb2_2.tint_symbol_1[18u].xy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = r3.xy;
  let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
  let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
  r3 = vec4<f32>(v_7.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w)));
  r0.y = bitcast<f32>((bitcast<u32>(r3.y) & 8u));
  r0.y = f32(bitcast<u32>(r0.y));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 8.0f)));
  r3 = textureSample(t7, s7, r0.zwzz.xy);
  let v_8 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r4 = textureSample(t9, s9, r0.zwzz.xy);
  r1.x = clamp(((r4.xxxx * r4.xxxx)).x, 0.0f, 1.0f);
  r5 = textureSample(t8, s8, r0.zwzz.xy);
  let v_9 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  let v_10 = fract(r4.xyw);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  let v_11 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_11.xy, r4.zw);
  let v_12 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  let v_13 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_13.xy, r4.z, v_13.z);
  r0.z = dot(r4.xyw, r4.xyw);
  r0.z = inverseSqrt(r0.z);
  let v_14 = (r0.zzz * r4.xyw);
  r4 = vec4<f32>(v_14.xy, r4.z, v_14.z);
  r0.z = dot(r1.yzw, r1.yzw);
  r0.z = inverseSqrt(r0.z);
  let v_15 = (r0.zzz * r1.yzw);
  r1 = vec4<f32>(r1.x, v_15.xyz);
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r0.x = (r0.y * r0.x);
  r0 = vec4<f32>(r0.x, ((v5.www * v6.xyz)).xyz);
  let v_16 = dot(r4.xyw, r2.xyz);
  r2.x = clamp(vec4<f32>(v_16, v_16, v_16, v_16).x, 0.0f, 1.0f);
  let v_17 = dot((-(r1.yzwy)).xyz, r4.xyw);
  r1.y = clamp(vec4<f32>(v_17, v_17, v_17, v_17).y, 0.0f, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.z = (r1.y * r1.y);
  r1.z = (r1.z * r1.z);
  r1.y = (r1.y * r1.z);
  r1.z = ((-(r4.zzzz)).z + 1.0f);
  r1.y = fma(r4.z, r1.y, r1.z);
  r1.x = fma((-(r1.xxxx)).x, r1.y, 1.0f);
  r1.x = (r1.x * r2.x);
  let v_18 = (r1.xxx * r3.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r0.yzw * r1.xyz);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_22 : bool) {
  if (v_22) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6);
  return o0;
}
