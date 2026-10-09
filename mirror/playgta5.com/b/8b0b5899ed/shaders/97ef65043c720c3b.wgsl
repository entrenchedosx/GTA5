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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

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
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_5 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_5.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  let v_6 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_6.xy, r6.zw);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_7 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_7.xyz, r8.w);
  let v_8 = fract(r8.xyz);
  r8 = vec4<f32>(v_8.xyz, r8.w);
  let v_9 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_9.xy, r8.zw);
  let v_10 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_10.xyz, r7.w);
  let v_11 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_11.xyz, r7.w);
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_12 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_12.xyz, r7.w);
  r0.x = min(r6.x, 1.0f);
  r0.y = fma(r6.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_13 = -(r0.yyyy);
  r1.w = fma(r6.y, 512.0f, v_13.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r1.w, 3.0f, r0.y);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_14 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = -(r1.xyzx);
  let v_16 = fma(r3.xyz, r0.www, v_15.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_17 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = ((-(cb12_12.tint_symbol_2[1u].zxzy)).xyw * cb12_12.tint_symbol_2[2u].yzx);
  r6 = vec4<f32>(v_18.xy, r6.z, v_18.z);
  let v_19 = -(cb12_12.tint_symbol_2[1u].yzyx);
  let v_20 = -(r6.xyxw);
  let v_21 = fma(v_19.xyw, cb12_12.tint_symbol_2[2u].zxy, v_20.xyw);
  r6 = vec4<f32>(v_21.xy, r6.z, v_21.z);
  let v_22 = -(r4.xyzx);
  r6.x = dot(r6.xyw, v_22.xyz);
  let v_23 = -(r4.xyzx);
  r6.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_23.xyz);
  r0.w = dot(v_3.xyz, (-(r4.xyzx)).xyz);
  r1.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (cb12_12.tint_symbol_2[5u].x / r1.w);
  r1.w = (r1.w * 0.5f);
  r0.w = (r1.w / r0.w);
  let v_24 = clamp(fma(r6.xyxx, r0.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_24.xy, r8.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r1.w = ((-(r8.yyyy)).w + 1.0f);
  let v_25 = bitcast<u32>(r0.w);
  let v_26 = r1.w;
  r8.z = select(r8.y, v_26, (v_25 != 0u));
  r8 = textureSampleLevel(t2, s2, r8.xzxx.xy, 0.0f);
  let v_27 = fma(r8.xyz, r8.xyz, vec3<f32>(-1.0f));
  r6 = vec4<f32>(v_27.xy, r6.z, v_27.z);
  let v_28 = fma(cb12_12.tint_symbol_2[11u].yyy, r6.xyw, vec3<f32>(1.0f));
  r6 = vec4<f32>(v_28.xy, r6.z, v_28.z);
  let v_29 = (r6.xyw * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_29.xy, r6.z, v_29.z);
  let v_30 = (r6.xyw * cb12_12.tint_symbol_2[3u].www);
  r6 = vec4<f32>(v_30.xy, r6.z, v_30.z);
  let v_31 = dot(r7.xyz, r4.xyz);
  r0.w = clamp(vec4<f32>(v_31, v_31, v_31, v_31).w, 0.0f, 1.0f);
  let v_32 = dot((-(r1.xyzx)).xyz, r7.xyz);
  r1.x = clamp(vec4<f32>(v_32, v_32, v_32, v_32).x, 0.0f, 1.0f);
  let v_33 = dot(r3.xyz, r4.xyz);
  r1.y = clamp(vec4<f32>(v_33, v_33, v_33, v_33).y, 0.0f, 1.0f);
  let v_34 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_34.xy, r1.zw);
  let v_35 = (r1.xy * r1.xy);
  r1 = vec4<f32>(r1.xy, v_35.xy);
  let v_36 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_36.xy);
  let v_37 = (r1.xy * r1.zw);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  r1.z = ((-(r6.zzzz)).z + 1.0f);
  let v_38 = fma(r6.zz, r1.xy, r1.zz);
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r1 = vec4<f32>(r1.xy, v_39.xy);
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
  let v_40 = (r1.xyz * r3.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = (r1.xyz * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_41.xyz, r1.w);
  r1.w = ((-(r2.zzzz)).w + cb12_12.tint_symbol_2[7u].z);
  r1.w = clamp(((r1.wwww + r1.wwww)).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 25.0f);
  r0.w = clamp(((r0.wwww * vec4<f32>(0.03999999910593032837f))).w, 0.0f, 1.0f);
  let v_42 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = -(r0.xxxx);
  let v_44 = fma(r0.xxx, r1.xyz, v_43.xyz);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = fma(r1.www, r2.xyz, r0.xxx);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = -(r0.yyyy);
  let v_47 = fma(r0.yyy, r1.xyz, v_46.xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = fma(r1.www, r1.xyz, r0.yyy);
  r0 = vec4<f32>(v_48.xy, r0.z, v_48.z);
  let v_49 = (r2.xyz * cb12_12.tint_symbol_2[8u].zzz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  let v_50 = fma(r5.xyz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_50.xy, r0.z, v_50.z);
  let v_51 = (r6.xyw * r0.xyw);
  r0 = vec4<f32>(v_51.xy, r0.z, v_51.z);
  let v_52 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_53.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_54 : bool) {
  if (v_54) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
