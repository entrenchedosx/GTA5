diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb8_struct {
  tint_symbol_2 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb8_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v4 : vec4<f32>) {
  let v = (v1.xy * cb4_4.tint_symbol_2[6u].yy);
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
  r0.z = (cb4_4.tint_symbol_2[5u].x * 0.10000000149011611938f);
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
  let v_10 = fma(r0.zw, cb4_4.tint_symbol_2[7u].ww, r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = (v1.xy * cb10_10.tint_symbol_3[0u].zz);
  r0 = vec4<f32>(r0.xy, v_11.xy);
  let v_12 = (r0.zw * vec2<f32>(2.29999995231628417969f));
  r0 = vec4<f32>(r0.xy, v_12.xy);
  r1 = textureSample(t10, s10, r0.zwzz.xy);
  let v_13 = fma(v1.xy, cb10_10.tint_symbol_3[0u].zz, vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_13.xy);
  let v_14 = (r0.zw * vec2<f32>(2.29999995231628417969f));
  r0 = vec4<f32>(r0.xy, v_14.xy);
  r2 = textureSample(t10, s10, r0.zwzz.xy);
  let v_15 = r2;
  r1 = vec4<f32>(r1.xy, v_15.xy);
  r1 = (r1 + vec4<f32>(0.5f));
  r1 = fma(r1, vec4<f32>(2.0f), vec4<f32>(-2.0f));
  r1 = (r1 * cb4_4.tint_symbol_2[1u].zzww);
  let v_16 = (r1.zw + r1.xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = -(r1.xyxx);
  let v_18 = (r0.xy + v_17.xy);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  r1.z = cb10_10.tint_symbol_3[0u].x;
  r0.z = ((-(r1.zzzz)).z + cb4_4.tint_symbol_2[6u].x);
  let v_19 = fma(v4.xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = (r0.xy * v1.ww);
  r0 = vec4<f32>(v_21.xy, r0.zw);
  r0.z = 1.0f;
  let v_22 = -(r0.xyzx);
  r0.w = dot(v_22.xyz, (-(r0.xyzx)).xyz);
  r0.w = inverseSqrt(r0.w);
  let v_23 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = -(r0.xyzx);
  let v_25 = (r0.www * v_24.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = fma(r1.xyz, vec3<f32>(0.8333333134651184082f), r0.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_28 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = (r0.w + r0.w);
  let v_29 = -(r0.wwww);
  let v_30 = fma(r1.xyz, v_29.xyz, r2.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_31 = (r1.xy * vec2<f32>(0.25f, 0.5f));
  r1 = vec4<f32>(v_31.xy, r1.zw);
  r1.z = (abs(r1.zzzz).z + 1.0f);
  let v_32 = (r1.xy / r1.zz);
  r1 = vec4<f32>(v_32.xy, r1.zw);
  let v_33 = ((-(r1.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_34 = r1;
  r1 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  r1.w = ((-(r1.yyyy)).w + 1.0f);
  let v_35 = bitcast<u32>(r0.w);
  let v_36 = r1.w;
  r1.x = select(r1.y, v_36, (v_35 != 0u));
  r1 = textureSample(t1, s1, r1.xzxx.xy);
  r0.w = dot(r2.xyz, r0.xyz);
  r1.w = fma((-(r0.wwww)).w, r0.w, 1.0f);
  r2.w = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r1.w = fma((-(r2.wwww)).w, r1.w, 1.0f);
  r2.w = sqrt(r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r0.w, r2.w);
  let v_37 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = -(r0.xyzx);
  let v_39 = fma(cb4_4.tint_symbol_2[2u].yyy, r2.xyz, v_38.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.zxy) & bitcast<vec3<u32>>(r1.www)));
  r0 = vec4<f32>(v_40.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  let v_41 = (r0.yz * vec2<f32>(0.25f, 0.5f));
  let v_42 = r0;
  r0 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  r1.w = (abs(r0.xxxx).w + 1.0f);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_43 = (r0.yz / r1.ww);
  let v_44 = r0;
  r0 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  let v_45 = ((-(r0.yyzy)).yz + vec2<f32>(0.25f, 0.5f));
  let v_46 = r2;
  r2 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  r0.y = ((-(r2.yyyy)).y + 1.0f);
  let v_47 = bitcast<u32>(r0.w);
  let v_48 = r0.y;
  r2.x = select(r2.y, v_48, (v_47 != 0u));
  r2 = textureSample(t1, s1, r2.xzxx.xy);
  let v_49 = ((-(r1.xxyz)).yzw + r2.xyz);
  r0 = vec4<f32>(r0.x, v_49.xyz);
  let v_50 = fma(r0.xxx, r0.yzw, r1.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_51.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v4);
  return o0;
}
