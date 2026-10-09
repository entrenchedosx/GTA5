diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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
  r0.w = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r1.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r1.w = fma(r1.w, r0.w, cb12_12.tint_symbol_2[7u].x);
  r0.w = (r0.w / r1.w);
  r2.w = 1.0f;
  r1.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_2((bitcast<u32>(r1.w) != 0u));
  let v_3 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = r2.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r2.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_7 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  let v_8 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_9 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_9.xyz, r6.w);
  let v_10 = fract(r6.xyz);
  r6 = vec4<f32>(v_10.xyz, r6.w);
  let v_11 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  let v_12 = fma(r5.xyz, vec3<f32>(256.0f), r6.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r5.xyz + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_13.xyz, r5.w);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_14 = (r0.xxx * r5.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  r0.x = min(r4.x, 1.0f);
  r0.y = fma(r4.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_15 = -(r0.yyyy);
  r2.w = fma(r4.y, 512.0f, v_15.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r2.w, 3.0f, r0.y);
  r0.z = inverseSqrt(r0.z);
  let v_16 = (r0.zzz * r3.xyz);
  r4 = vec4<f32>(v_16.xy, r4.z, v_16.z);
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_17 = (r1.xyz * r2.www);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = -(r1.xyzx);
  let v_19 = fma(r3.xyz, r0.zzz, v_18.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_20 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r0.z = (r0.w * r1.w);
  let v_21 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = dot(r5.xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_22, v_22, v_22, v_22).w, 0.0f, 1.0f);
  let v_23 = dot((-(r1.xyzx)).xyz, r5.xyz);
  r1.x = clamp(vec4<f32>(v_23, v_23, v_23, v_23).x, 0.0f, 1.0f);
  let v_24 = dot(r3.xyz, r4.xyw);
  r1.y = clamp(vec4<f32>(v_24, v_24, v_24, v_24).y, 0.0f, 1.0f);
  let v_25 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_25.xy, r1.zw);
  let v_26 = (r1.xy * r1.xy);
  r1 = vec4<f32>(r1.xy, v_26.xy);
  let v_27 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_27.xy);
  let v_28 = (r1.xy * r1.zw);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  r1.z = ((-(r4.zzzz)).z + 1.0f);
  let v_29 = fma(r4.zz, r1.xy, r1.zz);
  r1 = vec4<f32>(v_29.xy, r1.zw);
  let v_30 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r1 = vec4<f32>(r1.xy, v_30.xy);
  r0.y = (r1.z * 0.125f);
  r1.x = fma((-(r0.xxxx)).x, r1.x, 1.0f);
  r1.z = dot(r5.xyz, r3.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r1.z = (r1.z * r1.w);
  r1.z = exp2(r1.z);
  r1.y = (r1.y * r1.z);
  r0.y = (r0.y * r1.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.y = (r0.w * r1.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_31 = fma(r2.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_31.xy, r0.z, v_31.z);
  let v_32 = (r6.xyz * r0.xyw);
  r0 = vec4<f32>(v_32.xy, r0.z, v_32.z);
  let v_33 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_34.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_2(v_35 : bool) {
  if (v_35) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
