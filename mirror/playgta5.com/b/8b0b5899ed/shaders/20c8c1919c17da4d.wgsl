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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.z);
  let v_2 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r0.w = fma(r0.w, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  let v_3 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r0.w = dot(r3.xyz, v_3.xyz);
  r0.w = clamp(fma(r0.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.z);
  r2.w = 1.0f;
  r0.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.z = (r0.w * r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.00000099999999747524f)));
  v_4((bitcast<u32>(r0.w) != 0u));
  let v_5 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = r2.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r2.y) & 8u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 8.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r1.w = clamp(((r4.xxxx * r4.xxxx)).w, 0.0f, 1.0f);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_10 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  let v_11 = fract(r4.xyw);
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  let v_12 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_12.xy, r4.zw);
  let v_13 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_13.xy, r4.z, v_13.z);
  let v_14 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_14.xy, r4.z, v_14.z);
  r0.x = dot(r4.xyw, r4.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_15 = (r0.xxx * r4.xyw);
  r4 = vec4<f32>(v_15.xy, r4.z, v_15.z);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.x = (r0.w * r0.z);
  let v_17 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = dot(r4.xyw, r3.xyz);
  r2.w = clamp(vec4<f32>(v_18, v_18, v_18, v_18).w, 0.0f, 1.0f);
  let v_19 = dot((-(r1.xyzx)).xyz, r4.xyw);
  r1.x = clamp(vec4<f32>(v_19, v_19, v_19, v_19).x, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = (r1.x * r1.x);
  r1.y = (r1.y * r1.y);
  r1.x = (r1.x * r1.y);
  r1.y = ((-(r4.zzzz)).y + 1.0f);
  r1.x = fma(r4.z, r1.x, r1.y);
  r1.x = fma((-(r1.wwww)).x, r1.x, 1.0f);
  r1.x = (r1.x * r2.w);
  let v_20 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r0.yzw * r1.xyz);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  let v_22 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_23.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_24 : bool) {
  if (v_24) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
