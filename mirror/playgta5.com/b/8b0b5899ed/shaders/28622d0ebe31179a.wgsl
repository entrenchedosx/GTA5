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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb17_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v = (v5.zw * cb10_10.tint_symbol_4[0u].yy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = fma(-(r0.xyxy), cb4_4.tint_symbol_3[1u].xxyy, v2.xyxy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = min(r0.x, 1.0f);
  let v_1 = (r1.xy * cb10_10.tint_symbol_4[0u].zz);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = fma(r1.zw, cb10_10.tint_symbol_4[0u].zz, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.xy * vec2<f32>(2.29999995231628417969f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r0.yz * vec2<f32>(2.29999995231628417969f));
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r2 = textureSample(t14, s14, r0.yzyy.xy);
  r3 = textureSample(t10, s10, r0.yzyy.xy);
  r4 = textureSample(t14, s14, r1.xyxx.xy);
  r1 = textureSample(t10, s10, r1.xyxx.xy);
  let v_7 = r1;
  r3 = vec4<f32>(r3.xy, v_7.xy);
  let v_8 = r4;
  r2 = vec4<f32>(r2.xy, v_8.xy);
  r1 = (r2 + r3);
  r2 = (r3 + vec4<f32>(0.5f));
  let v_9 = -(r2);
  r1 = (r1 + v_9);
  r0 = fma(r0.xxxx, r1, r2);
  r0 = fma(r0, vec4<f32>(2.0f), vec4<f32>(-2.0f));
  r0 = (r0 * cb4_4.tint_symbol_3[1u].zzww);
  let v_10 = (r0.zw + r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = (r0.xy * cb10_10.tint_symbol_4[0u].xx);
  r0 = vec4<f32>(r0.xy, v_11.xy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = fma(r0.x, 0.27000001072883605957f, 0.43999999761581420898f);
  let v_12 = fma(r0.zw, v2.ww, v4.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1.z = v4.z;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_13 = fma((-(r1.xyzx)).xyz, r0.yyy, vec3<f32>(0.0f, 0.0f, 1.0f));
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_14.xyz);
  let v_15 = fma(r2.xyz, vec3<f32>(0.8333333134651184082f), r0.yzw);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r2.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r2.w = dot(r3.xyz, r1.xyz);
  r2.w = (r2.w + r2.w);
  let v_18 = -(r2.wwww);
  let v_19 = fma(r1.xyz, v_18.xyz, r3.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r2.w = dot((-(r3.xyzx)).xyz, r0.yzw);
  let v_20 = -(r2.zzzz);
  let v_21 = -(r1.zzzz);
  r3.x = fma(v_20.x, r1.w, v_21.x);
  let v_22 = -(r2.zzzz);
  let v_23 = abs(r3.xxxx);
  r3.x = fma(v_22.x, r1.w, v_23.x);
  let v_24 = -(r3.xxxx);
  r1.z = (r1.z + v_24.z);
  r1.z = fma(v5.y, r1.z, r3.x);
  r3.x = (abs(r1.zzzz).x + 1.0f);
  let v_25 = (r1.xy * vec2<f32>(0.25f, 0.5f));
  let v_26 = r3;
  r3 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  let v_27 = (r3.yz / r3.xx);
  r3 = vec4<f32>(v_27.xy, r3.zw);
  let v_28 = ((-(r3.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_29 = r3;
  r3 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r3.w = ((-(r3.yyyy)).w + 1.0f);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_30 = bitcast<u32>(r4.x);
  let v_31 = r3.w;
  r3.x = select(r3.y, v_31, (v_30 != 0u));
  r3 = textureSample(t1, s1, r3.xzxx.xy);
  let v_32 = (r1.yyy * cb4_4.tint_symbol_3[9u].xwy);
  r4 = vec4<f32>(v_32.xyz, r4.w);
  let v_33 = fma(r1.xxx, cb4_4.tint_symbol_3[8u].xwy, r4.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = fma(r1.zzz, cb4_4.tint_symbol_3[10u].xwy, r4.xyz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = (r1.xyz * vec3<f32>(0.5f));
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = -(r4.zzzz);
  r5.y = fma(r1.y, 0.5f, v_36.y);
  r5.x = (r4.y + r4.x);
  let v_37 = (r5.xy / r1.yy);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  r4 = textureSample(t7, s7, r1.xyxx.xy);
  let v_38 = -(r4.xyzx);
  let v_39 = (r3.xyz + v_38.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = fma(v5.yyy, r1.xyz, r4.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r3 = textureSample(t9, s9, v1.zwzz.xy);
  r3.x = (r3.x * 0.64999997615814208984f);
  r3.y = ((-(v4.wwww)).y + 512.0f);
  r3.y = clamp(((r3.yyyy * vec4<f32>(0.001953125f))).y, 0.0f, 1.0f);
  r3.x = (r3.y * r3.x);
  r4 = textureSample(t4, s4, v3.zwzz.xy);
  r3.y = (r4.y * 0.34999999403953552246f);
  r3.x = fma(r3.y, r0.x, r3.x);
  let v_41 = r3;
  r3 = vec4<f32>(v_41.x, 0.5f, v_41.z, 0.5f);
  r4 = textureSample(t6, s6, r3.xyxx.xy);
  let v_42 = (-(r0.yzyy)).xy;
  r5 = vec4<f32>(v_42.xy, r5.zw);
  r5.z = 0.0f;
  let v_43 = fma(r2.xyz, r1.www, r5.xyz);
  r4 = vec4<f32>(v_43.x, r4.y, v_43.yz);
  let v_44 = fma(r2.xyz, r1.www, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  r5 = vec4<f32>(((v1.xy / v4.ww)).xy, r5.zw);
  r6 = textureSample(t15, s15, r5.xyxx.xy);
  let v_45 = fma(r4.xzw, r6.yyy, v2.xyz);
  r4 = vec4<f32>(v_45.x, r4.y, v_45.yz);
  r5.z = r6.y;
  let v_46 = (r4.zzz * cb4_4.tint_symbol_3[14u].xwy);
  r6 = vec4<f32>(v_46.xyz, r6.w);
  let v_47 = fma(r4.xxx, cb4_4.tint_symbol_3[13u].xwy, r6.xyz);
  r6 = vec4<f32>(v_47.xyz, r6.w);
  let v_48 = fma(r4.www, cb4_4.tint_symbol_3[15u].xwy, r6.xyz);
  r4 = vec4<f32>(v_48.x, r4.y, v_48.yz);
  let v_49 = (r4.xzw + cb4_4.tint_symbol_3[16u].xwy);
  r4 = vec4<f32>(v_49.x, r4.y, v_49.yz);
  let v_50 = (r4.xzw * vec3<f32>(0.5f));
  r6 = vec4<f32>(v_50.xyz, r6.w);
  let v_51 = -(r6.zzzz);
  r3.y = fma(r4.z, 0.5f, v_51.y);
  r3.x = (r6.y + r6.x);
  let v_52 = (r3.xy / r4.zz);
  r6 = vec4<f32>(v_52.xy, r6.zw);
  r7 = textureSample(t15, s15, r6.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r7.z))));
  r6.z = r7.y;
  let v_53 = bitcast<vec3<u32>>(r0.xxx);
  let v_54 = r5.xyz;
  let v_55 = select(r6.xyz, v_54, (v_53 != vec3<u32>()));
  r4 = vec4<f32>(v_55.x, r4.y, v_55.yz);
  r0.x = (r4.w * r4.y);
  r5 = textureSample(t12, s12, r4.xzxx.xy);
  let v_56 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r1.w = dot(r0.yzw, v_56.xyz);
  r1.w = clamp(fma(r1.wwww, vec4<f32>(0.69999998807907104492f), vec4<f32>(0.30000001192092895508f)).w, 0.0f, 1.0f);
  let v_57 = (r1.www * cb4_4.tint_symbol_3[4u].xyz);
  r4 = vec4<f32>(v_57.xyz, r4.w);
  let v_58 = fma(r4.xyz, r7.www, cb4_4.tint_symbol_3[3u].xyz);
  r4 = vec4<f32>(v_58.xyz, r4.w);
  let v_59 = fma(r4.xyz, r0.xxx, r5.xyz);
  r4 = vec4<f32>(v_59.xyz, r4.w);
  let v_60 = -(r4.xyzx);
  let v_61 = (r1.xyz + v_60.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  r0.x = ((-(r2.wwww)).x + 1.0f);
  r3.z = fma(r0.x, 0.30000001192092895508f, r2.w);
  r3 = textureSample(t6, s6, r3.zwzz.xy);
  let v_62 = fma(r3.xxx, r1.xyz, r4.xyz);
  r1 = vec4<f32>(v_62.xyz, r1.w);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_63 = (r0.xxx * r2.xyz);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = dot((-(r2.xyzx)).xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_64, v_64, v_64, v_64).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[1u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_4[0u].w);
  r0.x = (r7.w * r0.x);
  let v_65 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.xxx, r1.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = ((-(r4.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = fma(r4.www, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_68.xyz, r1.w);
  let v_69 = fma(cb4_4.tint_symbol_3[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_70.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
