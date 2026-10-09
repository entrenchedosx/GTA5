diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = dpdx(v1.xyw);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = dpdy(v1.xyw);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = textureNumSamples(t12);
  let v_3 = sample_pos[select(0u, ((v_2 + 0u) - 1u), ((0u < v_2) & true))];
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = (r1.xyz * r2.yyy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r2.xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz + v1.xyw);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r0.xy / r0.zz);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = (r0.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = r0.xy;
  let v_10 = max(v_9, vec2<f32>(-2147483648.0f));
  let v_11 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_10), vec2<i32>(2147483647i), (v_10 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_9 == v_9))));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i);
  let v_12 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fract(r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma((-(r2.yzyy)).xy, vec2<f32>(0.125f), r2.xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = fma(r1.xyz, vec3<f32>(256.0f), r2.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_17 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r2 = vec4<f32>(((v2.xyz / v2.www)).xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_18 = (r0.zzz * r2.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = -(r2.xyzx);
  let v_20 = -(cb11_11.tint_symbol_1[1u].xyzx);
  let v_21 = fma(v_19.xyz, r0.zzz, v_20.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = dot((-(r3.xyzx)).xyz, r1.xyz);
  r3.x = clamp(vec4<f32>(v_22, v_22, v_22, v_22).x, 0.0f, 1.0f);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_23 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = dot(r2.xyz, v_20.xyz);
  r3.y = clamp(vec4<f32>(v_24, v_24, v_24, v_24).y, 0.0f, 1.0f);
  r0.z = dot(r1.xyz, r2.xyz);
  let v_25 = dot(r1.xyz, v_20.xyz);
  r1.x = clamp(vec4<f32>(v_25, v_25, v_25, v_25).x, 0.0f, 1.0f);
  r0.z = clamp(((r0.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r0.z = log2(r0.z);
  let v_26 = ((-(r3.xxyx)).yz + vec2<f32>(1.0f));
  let v_27 = r1;
  r1 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  let v_28 = (r1.yz * r1.yz);
  r2 = vec4<f32>(v_28.xy, r2.zw);
  let v_29 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = (r1.yz * r2.xy);
  let v_31 = r1;
  r1 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  let v_32 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
  r0 = vec4<f32>(v_33.xy, r0.z, v_33.z);
  let v_34 = (r0.xyw * r0.xyw);
  r0 = vec4<f32>(v_34.xy, r0.z, v_34.z);
  r1.w = ((-(r2.zzzz)).w + 1.0f);
  let v_35 = fma(r2.zz, r1.yz, r1.ww);
  let v_36 = r1;
  r1 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  let v_37 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_37.xy, r2.zw);
  r1.w = fma(r2.y, 512.0f, -500.0f);
  r1.w = max(r1.w, 0.0f);
  let v_38 = -(r1.wwww);
  r2.y = fma(r2.y, 512.0f, v_38.y);
  r1.w = (r1.w * 558.0f);
  r1.w = fma(r2.y, 3.0f, r1.w);
  let v_39 = (r1.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  let v_40 = r2;
  r2 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  r2.x = clamp(r2.xxxx.x, 0.0f, 1.0f);
  r0.z = (r0.z * r2.z);
  r1.w = (r2.y * 0.125f);
  r0.z = exp2(r0.z);
  r0.z = (r1.z * r0.z);
  r1.y = fma((-(r2.xxxx)).y, r1.y, 1.0f);
  r1.y = (r1.y * r1.x);
  r0.z = (r1.w * r0.z);
  r0.z = (r2.x * r0.z);
  r0.z = (r1.x * r0.z);
  let v_41 = fma(r0.xyw, r1.yyy, r0.zzz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = (r0.xyz * cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_43.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
