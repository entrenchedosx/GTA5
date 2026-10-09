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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v = (v1.xy * cb4_4.tint_symbol_3[6u].yy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy * vec2<f32>(3.70000004768371582031f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t14, s14, r0.xyxx.xy);
  r0 = textureSample(t10, s10, r0.zwzz.xy);
  let v_2 = r0;
  r1 = vec4<f32>(r1.xy, v_2.xy);
  r0 = fma(r1, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_3 = (r0.zw + r0.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = (cb4_4.tint_symbol_3[5u].x * 0.10000000149011611938f);
  let v_4 = fma(v1.yx, vec2<f32>(0.00223214295692741871f), r0.zz);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(v1.xy, vec2<f32>(0.001953125f), (-(r0.zzzz)).zw);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  r2 = textureSample(t2, s2, r0.zwzz.xy);
  let v_6 = fma(r2.wy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r1 = textureSample(t2, s2, r1.xyxx.xy);
  let v_7 = fma(r1.yw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = -(r0.zzzw);
  let v_9 = (v_8.zw + (-(r1.xxxy)).zw);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = fma(r0.zw, cb4_4.tint_symbol_3[7u].ww, r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = (v1.xy * cb10_10.tint_symbol_4[0u].zz);
  r0 = vec4<f32>(r0.xy, v_11.xy);
  let v_12 = (r0.zw * vec2<f32>(2.29999995231628417969f));
  r0 = vec4<f32>(r0.xy, v_12.xy);
  r1 = textureSample(t10, s10, r0.zwzz.xy);
  let v_13 = fma(v1.xy, cb10_10.tint_symbol_4[0u].zz, vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_13.xy);
  let v_14 = (r0.zw * vec2<f32>(2.29999995231628417969f));
  r0 = vec4<f32>(r0.xy, v_14.xy);
  r2 = textureSample(t10, s10, r0.zwzz.xy);
  let v_15 = r2;
  r1 = vec4<f32>(r1.xy, v_15.xy);
  r1 = (r1 + vec4<f32>(0.5f));
  r1 = fma(r1, vec4<f32>(2.0f), vec4<f32>(-2.0f));
  r1 = (r1 * cb4_4.tint_symbol_3[1u].zzww);
  let v_16 = (r1.zw + r1.xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = -(r1.xyxx);
  let v_18 = (r0.xy + v_17.xy);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  r0.w = clamp(v4.x, 0.0f, 1.0f);
  r1.w = fma(r0.w, -2.0f, 3.0f);
  r0.w = (r0.w * r0.w);
  r0.w = (r0.w * r1.w);
  r1.z = cb10_10.tint_symbol_4[0u].x;
  r0.z = ((-(r1.zzzz)).z + cb4_4.tint_symbol_3[6u].x);
  let v_19 = fma(r0.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r0.zz * r0.xy);
  r1 = vec4<f32>(v_20.xy, r1.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = fma(r0.x, 0.27000001072883605957f, 0.43999999761581420898f);
  let v_21 = (r1.xy * v1.ww);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  r1.z = 1.0f;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_22 = fma((-(r1.xyzx)).xyz, r0.yyy, vec3<f32>(0.0f, 0.0f, 1.0f));
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = fma(r2.xyz, vec3<f32>(0.8333333134651184082f), r1.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_26 = (r0.yyy * r3.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  r0.z = dot(r4.xyz, r2.xyz);
  r0.z = (r0.z + r0.z);
  let v_27 = -(r0.zzzz);
  let v_28 = fma(r2.xyz, v_27.xyz, r4.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r0.z = dot((-(r4.xyzx)).xyz, r1.xyz);
  let v_29 = -(r3.zzzz);
  let v_30 = -(r2.zzzz);
  r1.w = fma(v_29.w, r0.y, v_30.w);
  let v_31 = -(r3.zzzz);
  let v_32 = abs(r1.wwww);
  r1.w = fma(v_31.w, r0.y, v_32.w);
  let v_33 = (r2.yyy * cb4_4.tint_symbol_3[9u].xwy);
  r2 = vec4<f32>(r2.x, v_33.xyz);
  let v_34 = fma(r2.xxx, cb4_4.tint_symbol_3[8u].xwy, r2.yzw);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma(r1.www, cb4_4.tint_symbol_3[10u].xwy, r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = (r2.xyz * vec3<f32>(0.5f));
  r2 = vec4<f32>(v_36.x, r2.y, v_36.yz);
  let v_37 = -(r2.wwww);
  r4.y = fma(r2.y, 0.5f, v_37.y);
  r4.x = (r2.z + r2.x);
  let v_38 = (r4.xy / r2.yy);
  r2 = vec4<f32>(v_38.xy, r2.zw);
  r2 = textureSample(t7, s7, r2.xyxx.xy);
  r4 = textureSample(t9, s9, v5.zwzz.xy);
  r1.w = (r4.x * 0.64999997615814208984f);
  r2.w = ((-(v2.zzzz)).w + 512.0f);
  r2.w = clamp(((r2.wwww * vec4<f32>(0.001953125f))).w, 0.0f, 1.0f);
  r1.w = (r1.w * r2.w);
  r4 = textureSample(t4, s4, v5.xyxx.xy);
  r2.w = (r4.y * 0.34999999403953552246f);
  r4.x = fma(r2.w, r0.x, r1.w);
  let v_39 = r4;
  r4 = vec4<f32>(v_39.x, 0.5f, v_39.z, 0.5f);
  r5 = textureSample(t6, s6, r4.xyxx.xy);
  let v_40 = (-(r1.xyxx)).xy;
  r6 = vec4<f32>(v_40.xy, r6.zw);
  r6.z = 0.0f;
  let v_41 = fma(r3.xyz, r0.yyy, r6.xyz);
  r5 = vec4<f32>(v_41.x, r5.y, v_41.yz);
  let v_42 = fma(r3.xyz, r0.yyy, cb3_3.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  r6 = vec4<f32>(((v2.xy / v2.zz)).xy, r6.zw);
  r7 = textureSample(t15, s15, r6.xyxx.xy);
  let v_43 = fma(r5.xzw, r7.yyy, v1.xyz);
  r5 = vec4<f32>(v_43.x, r5.y, v_43.yz);
  r6.z = r7.y;
  let v_44 = (r5.zzz * cb4_4.tint_symbol_3[14u].xwy);
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = fma(r5.xxx, cb4_4.tint_symbol_3[13u].xwy, r7.xyz);
  r7 = vec4<f32>(v_45.xyz, r7.w);
  let v_46 = fma(r5.www, cb4_4.tint_symbol_3[15u].xwy, r7.xyz);
  r5 = vec4<f32>(v_46.x, r5.y, v_46.yz);
  let v_47 = (r5.xzw + cb4_4.tint_symbol_3[16u].xwy);
  r5 = vec4<f32>(v_47.x, r5.y, v_47.yz);
  let v_48 = (r5.xzw * vec3<f32>(0.5f));
  r7 = vec4<f32>(v_48.xyz, r7.w);
  let v_49 = -(r7.zzzz);
  r0.y = fma(r5.z, 0.5f, v_49.y);
  r0.x = (r7.y + r7.x);
  let v_50 = (r0.xy / r5.zz);
  r7 = vec4<f32>(v_50.xy, r7.zw);
  r8 = textureSample(t15, s15, r7.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r8.z))));
  r7.z = r8.y;
  let v_51 = bitcast<vec3<u32>>(r0.xxx);
  let v_52 = r6.xyz;
  let v_53 = select(r7.xyz, v_52, (v_51 != vec3<u32>()));
  r5 = vec4<f32>(v_53.x, r5.y, v_53.yz);
  r0.x = (r5.w * r5.y);
  r6 = textureSample(t12, s12, r5.xzxx.xy);
  let v_54 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r0.y = dot(r1.xyz, v_54.xyz);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(0.69999998807907104492f), vec4<f32>(0.30000001192092895508f)).y, 0.0f, 1.0f);
  let v_55 = (r0.yyy * cb4_4.tint_symbol_3[4u].xyz);
  r5 = vec4<f32>(v_55.xyz, r5.w);
  let v_56 = fma(r5.xyz, r8.www, cb4_4.tint_symbol_3[3u].xyz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  let v_57 = fma(r5.xyz, r0.xxx, r6.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = -(r5.xyzx);
  let v_59 = (r2.xyz + v_58.xyz);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  r0.x = ((-(r0.zzzz)).x + 1.0f);
  r4.z = fma(r0.x, 0.30000001192092895508f, r0.z);
  r4 = textureSample(t6, s6, r4.zwzz.xy);
  let v_60 = fma(r4.xxx, r2.xyz, r5.xyz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_61 = (r1.www * r3.xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = dot((-(r2.xyzx)).xyz, r1.xyz);
  r1.x = clamp(vec4<f32>(v_62, v_62, v_62, v_62).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  let v_63 = -(cb10_10.tint_symbol_4[1u].xxxx);
  r1.y = (cb4_4.tint_symbol_3[6u].w + v_63.y);
  r1.y = fma(r0.w, r1.y, cb10_10.tint_symbol_4[1u].x);
  r1.x = (r1.x * r1.y);
  r1.x = exp2(r1.x);
  let v_64 = -(cb10_10.tint_symbol_4[0u].wwww);
  r1.y = (cb4_4.tint_symbol_3[6u].z + v_64.y);
  r0.w = fma(r0.w, r1.y, cb10_10.tint_symbol_4[0u].w);
  r0.w = (r1.x * r0.w);
  r0.w = (r8.w * r0.w);
  let v_65 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = ((-(r5.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = fma(r5.www, r0.xyz, r5.xyz);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4, v5);
  return o0;
}
