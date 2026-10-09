diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb17_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v = (v5.zw * cb10_10.tint_symbol_3[0u].yy);
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = fma(-(r0.xyxy), cb4_4.tint_symbol_2[1u].xxyy, v2.xyxy);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = min(r0.x, 1.0f);
  let v_1 = (r1.xy * cb10_10.tint_symbol_3[0u].zz);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = fma(r1.zw, cb10_10.tint_symbol_3[0u].zz, vec2<f32>(0.5f));
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
  r0 = (r0 * cb4_4.tint_symbol_2[1u].zzww);
  let v_10 = (r0.zw + r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = (r0.xy * cb10_10.tint_symbol_3[0u].xx);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = fma(r0.xy, v2.ww, v4.xy);
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0.z = v4.z;
  let v_13 = -(r0.xyzx);
  r0.w = dot(v_13.xyz, (-(r0.xyzx)).xyz);
  r0.w = inverseSqrt(r0.w);
  let v_14 = -(r0.xyzx);
  let v_15 = (r0.www * v_14.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = fma(r0.xyz, vec3<f32>(0.8333333134651184082f), r1.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r1.w = 0.0f;
  let v_18 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = fma(r2.xyz, r0.www, r1.xyw);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.w = dot(r2.xyz, r1.xyz);
  r1.x = fma((-(r0.wwww)).x, r0.w, 1.0f);
  r1.y = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r1.x = fma((-(r1.yyyy)).x, r1.x, 1.0f);
  r1.y = sqrt(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r0.w, r1.y);
  r0.w = (r1.z * r0.w);
  let v_21 = -(r0.wwww);
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r2.z, v_21.w);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  r1 = vec4<f32>(((v1.xy / v4.ww)).xy, r1.zw);
  r4 = textureSample(t11, s11, r1.xyxx.xy);
  r1.z = (r4.x + (-(v4.wwww)).z);
  r1.z = (r0.w * r1.z);
  r1.z = min(r1.z, 5.0f);
  let v_22 = fma(r3.xyz, r1.zzz, v2.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = (r3.yyy * cb4_4.tint_symbol_2[14u].xwy);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r3.xxx, cb4_4.tint_symbol_2[13u].xwy, r4.xyz);
  r3 = vec4<f32>(v_24.xy, r3.z, v_24.z);
  let v_25 = fma(r3.zzz, cb4_4.tint_symbol_2[15u].xwy, r3.xyw);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = (r3.xyz + cb4_4.tint_symbol_2[16u].xwy);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = (r3.xyz * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_27.x, r3.y, v_27.yz);
  let v_28 = -(r3.wwww);
  r4.y = fma(r3.y, 0.5f, v_28.y);
  r4.x = (r3.z + r3.x);
  let v_29 = (r4.xy / r3.yy);
  r1 = vec4<f32>(r1.xy, v_29.xy);
  let v_30 = ((-(r1.xxxy)).zw + r1.zw);
  r1 = vec4<f32>(r1.xy, v_30.xy);
  let v_31 = fma(r0.ww, r1.zw, r1.xy);
  r1 = vec4<f32>(r1.xy, v_31.xy);
  let v_32 = ((-(r1.zwzz)).xy + r1.xy);
  r3 = vec4<f32>(v_32.xy, r3.zw);
  let v_33 = (r1.xy * vec2<f32>(0.10000000149011611938f));
  r1 = vec4<f32>(v_33.xy, r1.zw);
  r4 = textureSample(t11, s11, r1.zwzz.xy);
  r2.w = max(r4.x, 0.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (v4.w >= r2.w)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_34 = fma(r2.ww, r3.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, v_34.xy);
  let v_35 = fma(r1.zw, vec2<f32>(0.89999997615814208984f), r1.xy);
  r1 = vec4<f32>(v_35.xy, r1.zw);
  r3 = textureSample(t12, s12, r1.zwzz.xy);
  let v_36 = (r3.xyz * vec3<f32>(1.0f, 0.5f, 0.0f));
  r3 = vec4<f32>(v_36.xyz, r3.w);
  r1 = textureSample(t12, s12, r1.xyxx.xy);
  let v_37 = fma(r1.xyz, vec3<f32>(0.0f, 0.5f, 1.0f), r3.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  r1.w = dot(r2.xyz, r0.xyz);
  r1.w = (r1.w + r1.w);
  let v_38 = -(r1.wwww);
  let v_39 = fma(r0.xyz, v_38.xyz, r2.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  let v_40 = (r0.xy * vec2<f32>(0.25f, 0.5f));
  r2 = vec4<f32>(v_40.xy, r2.zw);
  r2.z = (abs(r0.zzzz).z + 1.0f);
  let v_41 = (r2.xy / r2.zz);
  r2 = vec4<f32>(v_41.xy, r2.zw);
  let v_42 = ((-(r2.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_43 = r2;
  r2 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  r2.w = ((-(r2.yyyy)).w + 1.0f);
  let v_44 = bitcast<u32>(r1.w);
  let v_45 = r2.w;
  r2.x = select(r2.y, v_45, (v_44 != 0u));
  r2 = textureSample(t1, s1, r2.xzxx.xy);
  let v_46 = (r0.yyy * cb4_4.tint_symbol_2[9u].xwy);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = fma(r0.xxx, cb4_4.tint_symbol_2[8u].xwy, r3.xyz);
  r3 = vec4<f32>(v_47.xyz, r3.w);
  let v_48 = fma(r0.zzz, cb4_4.tint_symbol_2[10u].xwy, r3.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = (r0.xyz * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_49.xyz, r3.w);
  let v_50 = -(r3.zzzz);
  r4.y = fma(r0.y, 0.5f, v_50.y);
  r4.x = (r3.y + r3.x);
  let v_51 = (r4.xy / r0.yy);
  r0 = vec4<f32>(v_51.xy, r0.zw);
  r3 = textureSample(t7, s7, r0.xyxx.xy);
  let v_52 = -(r3.xyzx);
  let v_53 = (r2.xyz + v_52.xyz);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = fma(v5.yyy, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_55.xyz, r1.w);
  let v_56 = fma(r0.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_56.xyz, r0.w);
  let v_57 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_57.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4, v5);
  return o0;
}
