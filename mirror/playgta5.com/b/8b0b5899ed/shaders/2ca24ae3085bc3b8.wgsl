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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  let v = (v3.xy * cb4_4.tint_symbol_2[6u].yy);
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
  let v_10 = fma(r0.zw, cb4_4.tint_symbol_2[7u].ww, r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = fma(r0.xy, cb4_4.tint_symbol_2[6u].xx, v2.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.z = v2.z;
  let v_12 = -(r0.xyzx);
  r0.w = dot(v_12.xyz, (-(r0.xyzx)).xyz);
  r0.w = inverseSqrt(r0.w);
  let v_13 = -(r0.xyzx);
  let v_14 = (r0.www * v_13.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = fma(r0.xyz, vec3<f32>(0.8333333134651184082f), r1.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r1.w = 0.0f;
  let v_17 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = fma(r2.xyz, r0.www, r1.xyw);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.w = dot(r2.xyz, r1.xyz);
  r1.x = fma((-(r0.wwww)).x, r0.w, 1.0f);
  r1.y = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r1.x = fma((-(r1.yyyy)).x, r1.x, 1.0f);
  r1.y = sqrt(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r0.w, r1.y);
  r0.w = (r1.z * r0.w);
  let v_20 = -(r0.wwww);
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r2.z, v_20.w);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.w = clamp(r0.wwww.w, 0.0f, 1.0f);
  r1 = vec4<f32>(((v1.xy / v3.ww)).xy, r1.zw);
  r4 = textureSample(t11, s11, r1.xyxx.xy);
  r1.z = (r4.x + (-(v3.wwww)).z);
  r1.z = (r0.w * r1.z);
  r1.z = min(r1.z, 5.0f);
  let v_21 = fma(r3.xyz, r1.zzz, v3.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = (r3.yyy * cb4_4.tint_symbol_2[14u].xwy);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = fma(r3.xxx, cb4_4.tint_symbol_2[13u].xwy, r4.xyz);
  r3 = vec4<f32>(v_23.xy, r3.z, v_23.z);
  let v_24 = fma(r3.zzz, cb4_4.tint_symbol_2[15u].xwy, r3.xyw);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  let v_25 = (r3.xyz + cb4_4.tint_symbol_2[16u].xwy);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = (r3.xyz * vec3<f32>(0.5f));
  r3 = vec4<f32>(v_26.x, r3.y, v_26.yz);
  let v_27 = -(r3.wwww);
  r4.y = fma(r3.y, 0.5f, v_27.y);
  r4.x = (r3.z + r3.x);
  let v_28 = (r4.xy / r3.yy);
  r1 = vec4<f32>(r1.xy, v_28.xy);
  let v_29 = ((-(r1.xxxy)).zw + r1.zw);
  r1 = vec4<f32>(r1.xy, v_29.xy);
  let v_30 = fma(r0.ww, r1.zw, r1.xy);
  r1 = vec4<f32>(r1.xy, v_30.xy);
  let v_31 = ((-(r1.zwzz)).xy + r1.xy);
  r3 = vec4<f32>(v_31.xy, r3.zw);
  let v_32 = (r1.xy * vec2<f32>(0.10000000149011611938f));
  r1 = vec4<f32>(v_32.xy, r1.zw);
  r4 = textureSample(t11, s11, r1.zwzz.xy);
  r2.w = max(r4.x, 0.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (v3.w >= r2.w)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_33 = fma(r2.ww, r3.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, v_33.xy);
  let v_34 = fma(r1.zw, vec2<f32>(0.89999997615814208984f), r1.xy);
  r1 = vec4<f32>(v_34.xy, r1.zw);
  r3 = textureSample(t12, s12, r1.zwzz.xy);
  let v_35 = (r3.xyz * vec3<f32>(1.0f, 0.5f, 0.0f));
  r3 = vec4<f32>(v_35.xyz, r3.w);
  r1 = textureSample(t12, s12, r1.xyxx.xy);
  let v_36 = fma(r1.xyz, vec3<f32>(0.0f, 0.5f, 1.0f), r3.xyz);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  r1.w = dot(r2.xyz, r0.xyz);
  r1.w = (r1.w + r1.w);
  let v_37 = -(r1.wwww);
  let v_38 = fma(r0.xyz, v_37.xyz, r2.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r0.yyy * cb4_4.tint_symbol_2[9u].xwy);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = fma(r0.xxx, cb4_4.tint_symbol_2[8u].xwy, r2.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = fma(r0.zzz, cb4_4.tint_symbol_2[10u].xwy, r2.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = (r0.xyz * vec3<f32>(0.5f));
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = -(r2.zzzz);
  r3.y = fma(r0.y, 0.5f, v_43.y);
  r3.x = (r2.y + r2.x);
  let v_44 = (r3.xy / r0.yy);
  r0 = vec4<f32>(v_44.xy, r0.zw);
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_45 = -(r2.xyzx);
  let v_46 = (r1.xyz + v_45.xyz);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  let v_47 = fma(r0.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  let v_48 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_48.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
