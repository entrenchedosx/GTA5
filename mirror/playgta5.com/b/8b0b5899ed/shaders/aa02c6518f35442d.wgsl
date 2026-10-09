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
  let v = r0;
  r0 = vec4<f32>(v.x, ((v1.xy / v1.ww)).xy, v.w);
  r1 = textureSample(t12, s12, r0.yzyy.xy);
  r0.w = ((-(r1.xxxx)).w + cb12_12.tint_symbol_2[17u].w);
  r0.w = (r0.w + 1.0f);
  r0.w = (cb12_12.tint_symbol_2[17u].z / r0.w);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v_1 = fma(r1.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  let v_2 = (r2.xyz + (-(v3.xyzx)).xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.w = dot(r3.xyz, v4.xyz);
  r0.w = clamp(((r0.wwww / v5.xy.xxxx)).w, 0.0f, 1.0f);
  r0.w = (r0.w * v5.x);
  let v_3 = fma(v4.xyz, r0.www, v3.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = ((-(r2.xyzx)).xyz + r3.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.x = fma((-(r0.wwww)).x, r0.x, 1.0f);
  r0.x = max(r0.x, 0.0f);
  r1.w = ((-(v4.wwww)).w + 1.0f);
  r1.w = fma(r1.w, r0.x, v4.w);
  r0.x = (r0.x / r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  let v_6 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  let v_7 = r3.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r3.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r3 = textureSample(t7, s7, r0.yzyy.xy);
  let v_10 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r4 = textureSample(t9, s9, r0.yzyy.xy);
  r2.w = clamp(((r4.xxxx * r4.xxxx)).w, 0.0f, 1.0f);
  r5 = textureSample(t8, s8, r0.yzyy.xy);
  let v_11 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  let v_12 = fract(r4.xyw);
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  let v_13 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  let v_14 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_14.xy, r4.z, v_14.z);
  let v_15 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_15.xy, r4.z, v_15.z);
  r0.y = dot(r4.xyw, r4.xyw);
  r0.y = inverseSqrt(r0.y);
  let v_16 = (r0.yyy * r4.xyw);
  r4 = vec4<f32>(v_16.xy, r4.z, v_16.z);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r0.y = inverseSqrt(r0.w);
  let v_18 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  r1.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.x = (r0.x * r1.w);
  r2 = vec4<f32>(((v5.xy.yyy * v6.xyz)).xyz, r2.w);
  let v_19 = dot(r4.xyw, r0.yzw);
  r0.y = clamp(vec4<f32>(v_19, v_19, v_19, v_19).y, 0.0f, 1.0f);
  let v_20 = dot((-(r1.xyzx)).xyz, r4.xyw);
  r0.z = clamp(vec4<f32>(v_20, v_20, v_20, v_20).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.w = (r0.z * r0.z);
  r0.w = (r0.w * r0.w);
  r0.z = (r0.z * r0.w);
  r0.w = ((-(r4.zzzz)).w + 1.0f);
  r0.z = fma(r4.z, r0.z, r0.w);
  r0.z = fma((-(r2.wwww)).z, r0.z, 1.0f);
  r0.y = (r0.z * r0.y);
  let v_21 = (r0.yyy * r3.xyz);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  let v_22 = (r2.xyz * r0.yzw);
  r0 = vec4<f32>(r0.x, v_22.xyz);
  let v_23 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_24.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_25 : bool) {
  if (v_25) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6);
  return o0;
}
