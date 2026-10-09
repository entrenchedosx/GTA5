diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

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
  r4 = vec4<f32>(v_2.xyz, r4.w);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r1.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r1.w = fma(r1.w, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r1.w);
  let v_3 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r1.w = dot(r4.xyz, v_3.xyz);
  r1.w = clamp(fma(r1.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r0.z = (r0.z * r1.w);
  r2.w = 1.0f;
  r1.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.z = (r0.z * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.00000099999999747524f)));
  v_4((bitcast<u32>(r1.w) != 0u));
  let v_5 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = r2.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r2.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  let v_10 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_10.xy, r5.zw);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_11.xyz, r7.w);
  let v_12 = fract(r7.xyz);
  r7 = vec4<f32>(v_12.xyz, r7.w);
  let v_13 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_13.xy, r7.zw);
  let v_14 = fma(r6.xyz, vec3<f32>(256.0f), r7.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = (r6.xyz + vec3<f32>(-128.0f));
  r6 = vec4<f32>(v_15.xyz, r6.w);
  r0.x = dot(r6.xyz, r6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r6.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
  r0.x = fma(r5.y, 512.0f, -500.0f);
  r0.x = max(r0.x, 0.0f);
  let v_17 = -(r0.xxxx);
  r0.y = fma(r5.y, 512.0f, v_17.y);
  r0.x = (r0.x * 558.0f);
  r0.x = fma(r0.y, 3.0f, r0.x);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_18 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = -(r1.xyzx);
  let v_20 = fma(r3.xyz, r0.www, v_19.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_21 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.y = (r0.y * r0.z);
  let v_22 = ((-(cb12_12.tint_symbol_2[1u].zxyz)).xyz * cb12_12.tint_symbol_2[2u].yzx);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = -(cb12_12.tint_symbol_2[1u].yzxy);
  let v_24 = -(r7.xyzx);
  let v_25 = fma(v_23.xyz, cb12_12.tint_symbol_2[2u].zxy, v_24.xyz);
  r7 = vec4<f32>(v_25.xyz, r7.w);
  let v_26 = -(r4.xyzx);
  r7.x = dot(r7.xyz, v_26.xyz);
  let v_27 = -(r4.xyzx);
  r7.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_27.xyz);
  r0.z = dot(v_3.xyz, (-(r4.xyzx)).xyz);
  r0.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = (cb12_12.tint_symbol_2[5u].x / r0.w);
  r0.w = (r0.w * 0.5f);
  r0.z = (r0.w / r0.z);
  let v_28 = clamp(fma(r7.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r7 = vec4<f32>(v_28.xy, r7.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r0.w = ((-(r7.yyyy)).w + 1.0f);
  let v_29 = bitcast<u32>(r0.z);
  let v_30 = r0.w;
  r7.z = select(r7.y, v_30, (v_29 != 0u));
  r7 = textureSampleLevel(t2, s2, r7.xzxx.xy, 0.0f);
  let v_31 = fma(r7.xyz, r7.xyz, vec3<f32>(-1.0f));
  r7 = vec4<f32>(v_31.xyz, r7.w);
  let v_32 = fma(cb12_12.tint_symbol_2[11u].yyy, r7.xyz, vec3<f32>(1.0f));
  r7 = vec4<f32>(v_32.xyz, r7.w);
  let v_33 = (r7.xyz * cb12_12.tint_symbol_2[3u].xyz);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = (r7.xyz * cb12_12.tint_symbol_2[3u].www);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  let v_35 = dot(r6.xyz, r4.xyz);
  r0.z = clamp(vec4<f32>(v_35, v_35, v_35, v_35).z, 0.0f, 1.0f);
  let v_36 = dot((-(r1.xyzx)).xyz, r6.xyz);
  r1.x = clamp(vec4<f32>(v_36, v_36, v_36, v_36).x, 0.0f, 1.0f);
  let v_37 = dot(r3.xyz, r4.xyz);
  r1.y = clamp(vec4<f32>(v_37, v_37, v_37, v_37).y, 0.0f, 1.0f);
  let v_38 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = (r1.xy * r1.xy);
  r1 = vec4<f32>(r1.xy, v_39.xy);
  let v_40 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_40.xy);
  let v_41 = (r1.xy * r1.zw);
  r1 = vec4<f32>(v_41.xy, r1.zw);
  r0.w = ((-(r5.zzzz)).w + 1.0f);
  let v_42 = fma(r5.zz, r1.xy, r0.ww);
  r1 = vec4<f32>(v_42.xy, r1.zw);
  let v_43 = (r0.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r0 = vec4<f32>(v_43.x, r0.yz, v_43.y);
  r0.x = (r0.x * 0.125f);
  r1.x = fma((-(r5.xxxx)).x, r1.x, 1.0f);
  r1.z = dot(r6.xyz, r3.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r0.w = (r0.w * r1.z);
  r0.w = exp2(r0.w);
  r0.w = (r1.y * r0.w);
  r0.x = (r0.x * r0.w);
  r0.x = (r5.x * r0.x);
  r0.x = (r0.z * r0.x);
  r0.z = (r0.z * r1.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_44 = fma(r2.xyz, r0.zzz, r0.xxx);
  r0 = vec4<f32>(v_44.x, r0.y, v_44.yz);
  let v_45 = (r7.xyz * r0.xzw);
  r0 = vec4<f32>(v_45.x, r0.y, v_45.yz);
  let v_46 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  let v_47 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_47.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_48 : bool) {
  if (v_48) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
