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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb11_struct {
  tint_symbol_3 : array<vec4<f32>, 11u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb11_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = (v3.xy * cb4_4.tint_symbol_3[6u].yy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = floor(r0.xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = (r0.zw * vec2<f32>(0.00390625f));
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t5, s5, r0.zwzz.xy);
  let v_3 = fma(r1.wy, vec2<f32>(100.0f), r0.xy);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r1 = textureSample(t14, s14, r0.zwzz.xy);
  r2 = textureSample(t14, s14, r0.xyxx.xy);
  let v_4 = fract(r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = ((-(r0.xyxx)).xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = abs(r0.xyxx);
  let v_7 = (v_6.xy + abs(r0.xyxx).xy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  r0.x = log2(r0.x);
  r0.x = (r0.x * 32.0f);
  r0.x = exp2(r0.x);
  let v_8 = r2;
  r1 = vec4<f32>(r1.xy, v_8.xy);
  r1 = fma(r1, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_9 = ((-(r1.xxyx)).yz + r1.zw);
  let v_10 = r0;
  r0 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = fma(r0.xx, r0.yz, r1.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.z = (cb4_4.tint_symbol_3[5u].x * 0.10000000149011611938f);
  let v_12 = fma(v3.yx, vec2<f32>(0.00223214295692741871f), r0.zz);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = fma(v3.xy, vec2<f32>(0.001953125f), (-(r0.zzzz)).zw);
  r0 = vec4<f32>(r0.xy, v_13.xy);
  r2 = textureSample(t2, s2, r0.zwzz.xy);
  let v_14 = fma(r2.wy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_14.xy);
  r1 = textureSample(t2, s2, r1.xyxx.xy);
  let v_15 = fma(r1.yw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = -(r0.zzzw);
  let v_17 = (v_16.zw + (-(r1.xxxy)).zw);
  r0 = vec4<f32>(r0.xy, v_17.xy);
  let v_18 = fma(r0.zw, cb4_4.tint_symbol_3[7u].ww, r0.xy);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = fma(r0.xy, cb4_4.tint_symbol_3[6u].xx, v2.xy);
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = fma(r0.x, 0.27000001072883605957f, 0.43999999761581420898f);
  r1.z = v2.z;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_20 = fma((-(r1.xyzx)).xyz, r0.yyy, vec3<f32>(0.0f, 0.0f, 1.0f));
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  let v_22 = fma(r2.xyz, vec3<f32>(0.8333333134651184082f), r0.yzw);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_24 = (r1.www * r2.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  r2.w = dot(r3.xyz, r1.xyz);
  r2.w = (r2.w + r2.w);
  let v_25 = -(r2.wwww);
  let v_26 = fma(r1.xyz, v_25.xyz, r3.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r2.w = dot((-(r3.xyzx)).xyz, r0.yzw);
  let v_27 = -(r2.zzzz);
  let v_28 = -(r1.zzzz);
  r1.z = fma(v_27.z, r1.w, v_28.z);
  let v_29 = -(r2.zzzz);
  let v_30 = abs(r1.zzzz);
  r1.z = fma(v_29.z, r1.w, v_30.z);
  let v_31 = fma(r2.xyz, r1.www, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = (r1.yyy * cb4_4.tint_symbol_3[9u].xwy);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r1.xxx, cb4_4.tint_symbol_3[8u].xwy, r3.xyz);
  r1 = vec4<f32>(v_33.xy, r1.z, v_33.z);
  let v_34 = fma(r1.zzz, cb4_4.tint_symbol_3[10u].xwy, r1.xyw);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = (r1.xyz * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_35.x, r1.y, v_35.yz);
  let v_36 = -(r1.wwww);
  r3.y = fma(r1.y, 0.5f, v_36.y);
  r3.x = (r1.z + r1.x);
  let v_37 = (r3.xy / r1.yy);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  r3 = textureSample(t9, s9, v1.zwzz.xy);
  r1.w = (r3.x * 0.64999997615814208984f);
  r3.x = ((-(v3.wwww)).x + 512.0f);
  r3.x = clamp(((r3.xxxx * vec4<f32>(0.001953125f))).x, 0.0f, 1.0f);
  r1.w = (r1.w * r3.x);
  r3 = textureSample(t4, s4, v4.zwzz.xy);
  r3.x = (r3.y * 0.34999999403953552246f);
  r3.x = fma(r3.x, r0.x, r1.w);
  let v_38 = r3;
  r3 = vec4<f32>(v_38.x, 0.5f, v_38.z, 0.5f);
  r4 = textureSample(t6, s6, r3.xyxx.xy);
  r3 = vec4<f32>(((v1.xy / v3.ww)).xy, r3.zw);
  r5 = textureSample(t15, s15, r3.xyxx.xy);
  r6 = textureSample(t12, s12, r3.xyxx.xy);
  r0.x = (r4.y * r5.y);
  let v_39 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r1.w = dot(r0.yzw, v_39.xyz);
  r1.w = clamp(fma(r1.wwww, vec4<f32>(0.69999998807907104492f), vec4<f32>(0.30000001192092895508f)).w, 0.0f, 1.0f);
  let v_40 = (r1.www * cb4_4.tint_symbol_3[4u].xyz);
  r4 = vec4<f32>(v_40.xyz, r4.w);
  let v_41 = fma(r4.xyz, r5.www, cb4_4.tint_symbol_3[3u].xyz);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  let v_42 = fma(r4.xyz, r0.xxx, r6.xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = -(r4.xyzx);
  let v_44 = (r1.xyz + v_43.xyz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  r0.x = ((-(r2.wwww)).x + 1.0f);
  r3.z = fma(r0.x, 0.30000001192092895508f, r2.w);
  r3 = textureSample(t6, s6, r3.zwzz.xy);
  let v_45 = fma(r3.xxx, r1.xyz, r4.xyz);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_46 = (r0.xxx * r2.xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = dot((-(r2.xyzx)).xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_47, v_47, v_47, v_47).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb4_4.tint_symbol_3[6u].w);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb4_4.tint_symbol_3[6u].z);
  r0.x = (r5.w * r0.x);
  let v_48 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = ((-(r4.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = fma(r5.yyy, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_51.xyz, r1.w);
  let v_52 = fma(cb4_4.tint_symbol_3[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_53.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
