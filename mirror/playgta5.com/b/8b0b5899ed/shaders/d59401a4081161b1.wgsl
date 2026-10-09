diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, -0.25f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.z = 0.0f;
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_2[4u].xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r0.w = (r1.y * cb11_11.tint_symbol_2[1u].w);
  r1.x = (r1.x * cb11_11.tint_symbol_2[0u].w);
  let v_3 = (r0.www * cb11_11.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = fma(r1.xxx, cb11_11.tint_symbol_2[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = -(cb11_11.tint_symbol_2[2u].xyzx);
  let v_6 = (r1.xyz + v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = r2.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.w = (cb11_11.tint_symbol_2[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.w);
  r0.w = (cb11_11.tint_symbol_2[2u].w / r0.w);
  let v_11 = fma(r1.xyz, r0.www, cb11_11.tint_symbol_2[3u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_12 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r2.zxy, cb6_6.tint_symbol_1[7u].zxy, cb6_6.tint_symbol_1[11u].zxy);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(r2.yzx, vec3<f32>(1.0f, 0.25f, 1.0f), vec3<f32>(0.5f, 0.875f, 0.0f));
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (r0.xyz + r3.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_18.xy, r0.z);
  let v_19 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, -0.25f));
  r4 = vec4<f32>(v_19.xy, r4.zw);
  r4.z = 0.0f;
  let v_20 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = r4.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_21.xy, r4.z);
  let v_22 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, -0.25f));
  r4 = vec4<f32>(v_22.xy, r4.zw);
  r4.z = 0.0f;
  let v_23 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = r4.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_24.xy, r4.z);
  let v_25 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r4.z = 0.0f;
  let v_26 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  let v_27 = r4.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_27.xy, r4.z);
  let v_28 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.0f));
  r5 = vec4<f32>(v_28.xy, r5.zw);
  r5.z = 0.0f;
  let v_29 = (r3.xyz + r5.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = r5.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_30.xy, r5.z);
  let v_31 = abs(r2.zzzz);
  r1.w = max(v_31.w, abs(r2.yyyy).w);
  r1.w = (r1.w + -0.44999998807907104492f);
  r1.w = clamp(((r1.wwww * vec4<f32>(15.0f))).w, 0.0f, 1.0f);
  let v_32 = r3.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_32.xy, r2.x);
  let v_33 = (r0.xyz + r4.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r2 = vec4<f32>(v_34.xy, r2.zw);
  r2.z = 0.0f;
  let v_35 = (r2.xyz + r3.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_36.xy, r2.z);
  let v_37 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, 0.25f));
  r4 = vec4<f32>(v_37.xy, r4.zw);
  r4.z = 0.0f;
  let v_38 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_38.xyz, r4.w);
  let v_39 = r4.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_39.xy, r4.z);
  let v_40 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.25f));
  r4 = vec4<f32>(v_40.xy, r4.zw);
  r4.z = 0.0f;
  let v_41 = (r3.xyz + r4.xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  let v_42 = r3.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_42.xy, r3.z);
  let v_43 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.0f));
  r0.x = fma(r0.x, 0.11111111193895339966f, r0.w);
  r0.x = (r1.w + r0.x);
  r2.x = (-(cb11_11.tint_symbol_2[5u].wwww)).x;
  let v_44 = r2;
  r2 = vec4<f32>(v_44.x, 0.0f, v_44.z, 0.5f);
  let v_45 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r2.z = textureSample(t5, s5, r0.yzyy.xy).y;
  r0.y = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = (r0.w * r0.y);
  r0.x = (r0.y * r0.x);
  o0 = min(r0.xxxx, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
