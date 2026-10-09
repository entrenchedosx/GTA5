diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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
  r5 = vec4<f32>(v_5.xy, r5.zw);
  let v_6 = r5.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r5 = vec4<f32>(v_8.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r5.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  let v_10 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_10.xy, r6.zw);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_11.xyz, r8.w);
  let v_12 = fract(r8.xyz);
  r8 = vec4<f32>(v_12.xyz, r8.w);
  let v_13 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_13.xy, r8.zw);
  let v_14 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_15.xyz, r7.w);
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_16.xyz, r7.w);
  r0.x = min(r6.x, 1.0f);
  r0.y = fma(r6.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_17 = -(r0.yyyy);
  r2.w = fma(r6.y, 512.0f, v_17.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r2.w, 3.0f, r0.y);
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_18 = (r1.xyz * r2.www);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = -(r1.xyzx);
  let v_20 = fma(r3.xyz, r0.www, v_19.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_21 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.z = (r0.w * r0.z);
  let v_22 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_22.xy, r6.z, v_22.z);
  let v_23 = dot(r7.xyz, r4.xyz);
  r0.w = clamp(vec4<f32>(v_23, v_23, v_23, v_23).w, 0.0f, 1.0f);
  let v_24 = dot((-(r1.xyzx)).xyz, r7.xyz);
  r1.x = clamp(vec4<f32>(v_24, v_24, v_24, v_24).x, 0.0f, 1.0f);
  let v_25 = dot(r3.xyz, r4.xyz);
  r1.y = clamp(vec4<f32>(v_25, v_25, v_25, v_25).y, 0.0f, 1.0f);
  let v_26 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_26.xy, r1.zw);
  let v_27 = (r1.xy * r1.xy);
  r1 = vec4<f32>(r1.xy, v_27.xy);
  let v_28 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_28.xy);
  let v_29 = (r1.xy * r1.zw);
  r1 = vec4<f32>(v_29.xy, r1.zw);
  r1.z = ((-(r6.zzzz)).z + 1.0f);
  let v_30 = fma(r6.zz, r1.xy, r1.zz);
  r1 = vec4<f32>(v_30.xy, r1.zw);
  let v_31 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r1 = vec4<f32>(r1.xy, v_31.xy);
  r0.y = (r1.z * 0.125f);
  r1.x = fma((-(r0.xxxx)).x, r1.x, 1.0f);
  r1.z = dot(r7.xyz, r3.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r1.z = (r1.z * r1.w);
  r1.z = exp2(r1.z);
  r1.y = (r1.y * r1.z);
  r0.y = (r0.y * r1.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.y = (r0.w * r1.x);
  r0.w = (r2.z + cb12_12.tint_symbol_2[7u].z);
  r0.w = ((-(r0.wwww)).w / r4.z);
  r1 = fma(r4.xyyx, r0.wwww, r2.xyyx);
  r3 = (cb12_12.tint_symbol_2[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r1 = fma(r1, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r3);
  r3 = textureSample(t3, s3, r1.xyxx.xy);
  r1 = textureSample(t3, s3, r1.zwzz.xy);
  let v_32 = (r1.xyz * r3.xyz);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = (r1.xyz * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r1.w = ((-(r2.zzzz)).w + cb12_12.tint_symbol_2[7u].z);
  r1.w = clamp(((r1.wwww + r1.wwww)).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 25.0f);
  r0.w = clamp(((r0.wwww * vec4<f32>(0.03999999910593032837f))).w, 0.0f, 1.0f);
  let v_34 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = -(r0.xxxx);
  let v_36 = fma(r0.xxx, r1.xyz, v_35.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = fma(r1.www, r2.xyz, r0.xxx);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = -(r0.yyyy);
  let v_39 = fma(r0.yyy, r1.xyz, v_38.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = fma(r1.www, r1.xyz, r0.yyy);
  r0 = vec4<f32>(v_40.xy, r0.z, v_40.z);
  let v_41 = (r2.xyz * cb12_12.tint_symbol_2[8u].zzz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  let v_42 = fma(r5.xyz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_42.xy, r0.z, v_42.z);
  let v_43 = (r6.xyw * r0.xyw);
  r0 = vec4<f32>(v_43.xy, r0.z, v_43.z);
  let v_44 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_45.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_46 : bool) {
  if (v_46) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
