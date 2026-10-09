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

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>) {
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
  let v_13 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = -(r0.xyzx);
  let v_15 = (r0.www * v_14.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = fma(r1.xyz, vec3<f32>(0.8333333134651184082f), r0.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = (r0.w + r0.w);
  let v_19 = -(r0.wwww);
  let v_20 = fma(r1.xyz, v_19.xyz, r2.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_21 = (r1.xy * vec2<f32>(0.25f, 0.5f));
  r1 = vec4<f32>(v_21.xy, r1.zw);
  r1.z = (abs(r1.zzzz).z + 1.0f);
  let v_22 = (r1.xy / r1.zz);
  r1 = vec4<f32>(v_22.xy, r1.zw);
  let v_23 = ((-(r1.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_24 = r1;
  r1 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r1.w = ((-(r1.yyyy)).w + 1.0f);
  let v_25 = bitcast<u32>(r0.w);
  let v_26 = r1.w;
  r1.x = select(r1.y, v_26, (v_25 != 0u));
  r1 = textureSample(t1, s1, r1.xzxx.xy);
  r0.w = dot(r2.xyz, r0.xyz);
  r1.w = fma((-(r0.wwww)).w, r0.w, 1.0f);
  r2.w = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r1.w = fma((-(r2.wwww)).w, r1.w, 1.0f);
  r2.w = sqrt(r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r0.w, r2.w);
  let v_27 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = -(r0.xyzx);
  let v_29 = fma(cb4_4.tint_symbol_2[2u].yyy, r2.xyz, v_28.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.zxy) & bitcast<vec3<u32>>(r1.www)));
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  let v_31 = (r0.yz * vec2<f32>(0.25f, 0.5f));
  let v_32 = r0;
  r0 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  r1.w = (abs(r0.xxxx).w + 1.0f);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_33 = (r0.yz / r1.ww);
  let v_34 = r0;
  r0 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  let v_35 = ((-(r0.yyzy)).yz + vec2<f32>(0.25f, 0.5f));
  let v_36 = r2;
  r2 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  r0.y = ((-(r2.yyyy)).y + 1.0f);
  let v_37 = bitcast<u32>(r0.w);
  let v_38 = r0.y;
  r2.x = select(r2.y, v_38, (v_37 != 0u));
  r2 = textureSample(t1, s1, r2.xzxx.xy);
  let v_39 = ((-(r1.xxyz)).yzw + r2.xyz);
  r0 = vec4<f32>(r0.x, v_39.xyz);
  let v_40 = fma(r0.xxx, r0.yzw, r1.xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  let v_41 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_41.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v3);
  return o0;
}
