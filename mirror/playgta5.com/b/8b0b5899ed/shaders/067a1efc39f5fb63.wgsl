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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  r1.w = (r4.x * r4.x);
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
  r0.x = min(r1.w, 1.0f);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_16 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.y = (r0.w * r0.z);
  let v_17 = ((-(cb12_12.tint_symbol_2[1u].zxyz)).xyz * cb12_12.tint_symbol_2[2u].yzx);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = -(cb12_12.tint_symbol_2[1u].yzxy);
  let v_19 = -(r5.xyzx);
  let v_20 = fma(v_18.xyz, cb12_12.tint_symbol_2[2u].zxy, v_19.xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = -(r3.xyzx);
  r5.x = dot(r5.xyz, v_21.xyz);
  let v_22 = -(r3.xyzx);
  r5.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_22.xyz);
  r0.z = dot(v_3.xyz, (-(r3.xyzx)).xyz);
  r0.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = (cb12_12.tint_symbol_2[5u].x / r0.w);
  r0.w = (r0.w * 0.5f);
  r0.z = (r0.w / r0.z);
  let v_23 = clamp(fma(r5.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r5 = vec4<f32>(v_23.xy, r5.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r0.w = ((-(r5.yyyy)).w + 1.0f);
  let v_24 = bitcast<u32>(r0.z);
  let v_25 = r0.w;
  r5.z = select(r5.y, v_25, (v_24 != 0u));
  r5 = textureSampleLevel(t2, s2, r5.xzxx.xy, 0.0f);
  let v_26 = fma(r5.xyz, r5.xyz, vec3<f32>(-1.0f));
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = fma(cb12_12.tint_symbol_2[11u].yyy, r5.xyz, vec3<f32>(1.0f));
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = (r5.xyz * cb12_12.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  let v_29 = (r5.xyz * cb12_12.tint_symbol_2[3u].www);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = dot(r4.xyw, r3.xyz);
  r0.z = clamp(vec4<f32>(v_30, v_30, v_30, v_30).z, 0.0f, 1.0f);
  let v_31 = dot((-(r1.xyzx)).xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_31, v_31, v_31, v_31).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = (r0.w * r0.w);
  r1.x = (r1.x * r1.x);
  r0.w = (r0.w * r1.x);
  r1.x = ((-(r4.zzzz)).x + 1.0f);
  r0.w = fma(r4.z, r0.w, r1.x);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  r0.x = (r0.x * r0.z);
  let v_32 = (r0.xxx * r2.xyz);
  r0 = vec4<f32>(v_32.x, r0.y, v_32.yz);
  let v_33 = (r5.xyz * r0.xzw);
  r0 = vec4<f32>(v_33.x, r0.y, v_33.yz);
  let v_34 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_35.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_36 : bool) {
  if (v_36) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
