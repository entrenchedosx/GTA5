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

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb3_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
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
  let v_14 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = -(r0.xyzx);
  let v_16 = (r0.www * v_15.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = fma(r1.xyz, vec3<f32>(0.8333333134651184082f), r0.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = (r0.w + r0.w);
  let v_20 = -(r0.wwww);
  let v_21 = fma(r1.xyz, v_20.xyz, r2.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_22 = (r1.xy * vec2<f32>(0.25f, 0.5f));
  r1 = vec4<f32>(v_22.xy, r1.zw);
  r1.z = (abs(r1.zzzz).z + 1.0f);
  let v_23 = (r1.xy / r1.zz);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  let v_24 = ((-(r1.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_25 = r1;
  r1 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  r1.w = ((-(r1.yyyy)).w + 1.0f);
  let v_26 = bitcast<u32>(r0.w);
  let v_27 = r1.w;
  r1.x = select(r1.y, v_27, (v_26 != 0u));
  r1 = textureSample(t1, s1, r1.xzxx.xy);
  r0.w = dot(r2.xyz, r0.xyz);
  r1.w = fma((-(r0.wwww)).w, r0.w, 1.0f);
  r2.w = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r1.w = fma((-(r2.wwww)).w, r1.w, 1.0f);
  r2.w = sqrt(r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r0.w, r2.w);
  let v_28 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = -(r0.xyzx);
  let v_30 = fma(cb4_4.tint_symbol_2[2u].yyy, r2.xyz, v_29.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.zxy) & bitcast<vec3<u32>>(r1.www)));
  r0 = vec4<f32>(v_31.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  let v_32 = (r0.yz * vec2<f32>(0.25f, 0.5f));
  let v_33 = r0;
  r0 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
  r1.w = (abs(r0.xxxx).w + 1.0f);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_34 = (r0.yz / r1.ww);
  let v_35 = r0;
  r0 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
  let v_36 = ((-(r0.yyzy)).yz + vec2<f32>(0.25f, 0.5f));
  let v_37 = r2;
  r2 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  r0.y = ((-(r2.yyyy)).y + 1.0f);
  let v_38 = bitcast<u32>(r0.w);
  let v_39 = r0.y;
  r2.x = select(r2.y, v_39, (v_38 != 0u));
  r2 = textureSample(t1, s1, r2.xzxx.xy);
  let v_40 = ((-(r1.xxyz)).yzw + r2.xyz);
  r0 = vec4<f32>(r0.x, v_40.xyz);
  let v_41 = fma(r0.xxx, r0.yzw, r1.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_42.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v4, v5);
  return o0;
}
