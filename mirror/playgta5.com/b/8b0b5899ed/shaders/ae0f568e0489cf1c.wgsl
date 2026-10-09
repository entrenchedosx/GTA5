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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = (v3.xy * cb4_4.tint_symbol_3[6u].yy);
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
  let v_4 = fma(v3.yx, vec2<f32>(0.00223214295692741871f), r0.zz);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(v3.xy, vec2<f32>(0.001953125f), (-(r0.zzzz)).zw);
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
  let v_11 = fma(r0.xy, cb4_4.tint_symbol_3[6u].xx, v2.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = fma(r0.x, 0.27000001072883605957f, 0.43999999761581420898f);
  r1.z = v2.z;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_12 = fma((-(r1.xyzx)).xyz, r0.yyy, vec3<f32>(0.0f, 0.0f, 1.0f));
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  let v_14 = fma(r2.xyz, vec3<f32>(0.8333333134651184082f), r0.yzw);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * r2.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r2.w = dot(r3.xyz, r1.xyz);
  r2.w = (r2.w + r2.w);
  let v_17 = -(r2.wwww);
  let v_18 = fma(r1.xyz, v_17.xyz, r3.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  r2.w = dot((-(r3.xyzx)).xyz, r0.yzw);
  let v_19 = -(r2.zzzz);
  let v_20 = -(r1.zzzz);
  r1.z = fma(v_19.z, r1.w, v_20.z);
  let v_21 = -(r2.zzzz);
  let v_22 = abs(r1.zzzz);
  r1.z = fma(v_21.z, r1.w, v_22.z);
  let v_23 = (r1.yyy * cb4_4.tint_symbol_3[9u].xwy);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma(r1.xxx, cb4_4.tint_symbol_3[8u].xwy, r3.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  let v_25 = fma(r1.zzz, cb4_4.tint_symbol_3[10u].xwy, r3.xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  let v_26 = (r1.xyz * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = -(r3.zzzz);
  r4.y = fma(r1.y, 0.5f, v_27.y);
  r4.x = (r3.y + r3.x);
  let v_28 = (r4.xy / r1.yy);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  r3 = textureSample(t7, s7, r1.xyxx.xy);
  r4 = textureSample(t9, s9, v1.zwzz.xy);
  r1.x = (r4.x * 0.64999997615814208984f);
  r1.y = ((-(v3.wwww)).y + 512.0f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(0.001953125f))).y, 0.0f, 1.0f);
  r1.x = (r1.y * r1.x);
  r4 = textureSample(t4, s4, v4.zwzz.xy);
  r1.y = (r4.y * 0.34999999403953552246f);
  r4.x = fma(r1.y, r0.x, r1.x);
  let v_29 = r4;
  r4 = vec4<f32>(v_29.x, 0.5f, v_29.z, 0.5f);
  r5 = textureSample(t6, s6, r4.xyxx.xy);
  let v_30 = (-(r0.yzyy)).xy;
  r1 = vec4<f32>(v_30.xy, r1.zw);
  r1.z = 0.0f;
  let v_31 = fma(r2.xyz, r1.www, r1.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = fma(r2.xyz, r1.www, cb3_3.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r6 = vec4<f32>(((v1.xy / v3.ww)).xy, r6.zw);
  r7 = textureSample(t15, s15, r6.xyxx.xy);
  let v_33 = fma(r1.xyz, r7.yyy, v3.xyz);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r6.z = r7.y;
  let v_34 = (r1.yyy * cb4_4.tint_symbol_3[14u].xwy);
  r5 = vec4<f32>(v_34.x, r5.y, v_34.yz);
  let v_35 = fma(r1.xxx, cb4_4.tint_symbol_3[13u].xwy, r5.xzw);
  r1 = vec4<f32>(v_35.xy, r1.z, v_35.z);
  let v_36 = fma(r1.zzz, cb4_4.tint_symbol_3[15u].xwy, r1.xyw);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = (r1.xyz + cb4_4.tint_symbol_3[16u].xwy);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = (r1.xyz * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_38.x, r1.y, v_38.yz);
  let v_39 = -(r1.wwww);
  r4.y = fma(r1.y, 0.5f, v_39.y);
  r4.x = (r1.z + r1.x);
  let v_40 = (r4.xy / r1.yy);
  r1 = vec4<f32>(v_40.xy, r1.zw);
  r7 = textureSample(t15, s15, r1.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r7.z))));
  r1.z = r7.y;
  let v_41 = bitcast<vec3<u32>>(r0.xxx);
  let v_42 = r6.xyz;
  let v_43 = select(r1.xyz, v_42, (v_41 != vec3<u32>()));
  r1 = vec4<f32>(v_43.xyz, r1.w);
  r0.x = (r1.z * r5.y);
  r5 = textureSample(t12, s12, r1.xyxx.xy);
  let v_44 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r1.x = dot(r0.yzw, v_44.xyz);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(0.69999998807907104492f), vec4<f32>(0.30000001192092895508f)).x, 0.0f, 1.0f);
  let v_45 = (r1.xxx * cb4_4.tint_symbol_3[4u].xyz);
  r1 = vec4<f32>(v_45.xy, r1.z, v_45.z);
  let v_46 = fma(r1.xyw, r7.www, cb4_4.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_46.xy, r1.z, v_46.z);
  let v_47 = fma(r1.xyw, r0.xxx, r5.xyz);
  r1 = vec4<f32>(v_47.xy, r1.z, v_47.z);
  let v_48 = ((-(r1.xywx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  r0.x = ((-(r2.wwww)).x + 1.0f);
  r4.z = fma(r0.x, 0.30000001192092895508f, r2.w);
  r4 = textureSample(t6, s6, r4.zwzz.xy);
  let v_49 = fma(r4.xxx, r3.xyz, r1.xyw);
  r3 = vec4<f32>(v_49.xyz, r3.w);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_50 = (r0.xxx * r2.xyz);
  r2 = vec4<f32>(v_50.xyz, r2.w);
  let v_51 = dot((-(r2.xyzx)).xyz, r0.yzw);
  r0.x = clamp(vec4<f32>(v_51, v_51, v_51, v_51).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb4_4.tint_symbol_3[6u].w);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb4_4.tint_symbol_3[6u].z);
  r0.x = (r7.w * r0.x);
  let v_52 = fma(cb4_4.tint_symbol_3[4u].xyz, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = ((-(r1.xywx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = fma(r1.zzz, r0.xyz, r1.xyw);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_55.xyz, r1.w);
  let v_56 = fma(cb4_4.tint_symbol_3[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_56.xyz, r0.w);
  let v_57 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_57.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
