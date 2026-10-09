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

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_2[4u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_2[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_2[0u].w);
  let v_2 = (r0.yyy * cb11_11.tint_symbol_2[1u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb11_11.tint_symbol_2[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb11_11.tint_symbol_2[2u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = r1.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.x = (cb11_11.tint_symbol_2[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.x);
  r0.w = (cb11_11.tint_symbol_2[2u].w / r0.w);
  let v_10 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_2[3u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_11 = (r0.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.xxx, cb6_6.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r0.zzz, cb6_6.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(r0.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = fma(r0.xyz, vec3<f32>(1.0f, 0.25f, 1.0f), vec3<f32>(0.5f, 0.875f, 0.0f));
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r0.xy + vec2<f32>(0.5f, 3.5f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = abs(r0.yyyy);
  r0.x = max(v_17.x, abs(r0.xxxx).x);
  r0.x = (r0.x + -0.44999998807907104492f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(15.0f))).x, 0.0f, 1.0f);
  r3.x = (r2.x * cb6_6.tint_symbol_1[14u].x);
  r0.y = (r2.y * 0.25f);
  let v_18 = (cb6_6.tint_symbol_1[14u].yw * vec2<f32>(4.0f, 0.25f));
  r2 = vec4<f32>(v_18.xy, r2.zw);
  r3.y = (r0.y * r2.x);
  let v_19 = (r3.xy + vec2<f32>(0.5f));
  let v_20 = r0;
  r0 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = fract(r0.yz);
  let v_22 = r0;
  r0 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = (r0.yz * vec2<f32>(3.0f));
  let v_24 = r2;
  r2 = vec4<f32>(v_23.x, v_24.y, v_23.y, v_24.w);
  let v_25 = fma(r2.xz, r0.yz, r2.xz);
  r3 = vec4<f32>(v_25.xy, r3.zw);
  let v_26 = (r3.xy + vec2<f32>(1.0f));
  r3 = vec4<f32>(v_26.xy, r3.zw);
  let v_27 = (r0.yz * r2.xz);
  r3 = vec4<f32>(r3.xy, v_27.xy);
  let v_28 = fma((-(r3.wwzw)).xz, r0.zy, r3.yx);
  let v_29 = r4;
  r4 = vec4<f32>(v_28.x, v_29.y, v_28.y, v_29.w);
  r5.z = r4.x;
  let v_30 = fma((-(r0.yzyy)).xy, vec2<f32>(3.0f), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_30.xy, r3.zw);
  let v_31 = fma(r2.xz, r0.yz, r3.xy);
  let v_32 = r2;
  r2 = vec4<f32>(v_31.x, v_32.y, v_31.y, v_32.w);
  let v_33 = (r0.yz * r0.yz);
  r3 = vec4<f32>(v_33.xy, r3.zw);
  let v_34 = fma((-(r3.xyxx)).xy, r0.yz, r2.xz);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  r5.x = r4.y;
  let v_35 = fma((-(r3.xxyx)).xz, vec2<f32>(6.0f), vec2<f32>(4.0f));
  let v_36 = r2;
  r2 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
  let v_37 = (r0.yz * r3.xy);
  r3 = vec4<f32>(v_37.xy, r3.zw);
  let v_38 = fma(r3.zw, r0.yz, r2.xz);
  let v_39 = r2;
  r2 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
  r5.y = r2.z;
  r4.y = r2.x;
  r5.w = r3.y;
  r4.w = r3.x;
  r3 = (r4 * vec4<f32>(0.16666667163372039795f));
  r4 = (r5 * vec4<f32>(0.16666667163372039795f));
  let v_40 = (r4.yw + r4.xz);
  let v_41 = r2;
  r2 = vec4<f32>(v_40.x, v_41.y, v_40.y, v_41.w);
  let v_42 = (r4.yw / r2.xz);
  r4 = vec4<f32>(v_42.xy, r4.zw);
  let v_43 = ((-(r0.zzzz)).xy + r4.xy);
  r4 = vec4<f32>(v_43.xy, r4.zw);
  let v_44 = (r4.xy + vec2<f32>(-1.0f, 1.0f));
  r4 = vec4<f32>(v_44.xy, r4.zw);
  r5.y = (r2.y * r4.y);
  let v_45 = (r3.yw + r3.xz);
  let v_46 = r3;
  r3 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
  let v_47 = (r3.yw / r3.xz);
  let v_48 = r3;
  r3 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  let v_49 = ((-(r0.yyyy)).yz + r3.yw);
  let v_50 = r0;
  r0 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  let v_51 = (r0.yz + vec2<f32>(-1.0f, 1.0f));
  let v_52 = r0;
  r0 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  r5.x = (r0.z * cb6_6.tint_symbol_1[14u].z);
  r5.z = 0.0f;
  let v_53 = (r1.xyz + r5.xyz);
  r5 = vec4<f32>(v_53.xyz, r5.w);
  let v_54 = r5.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_54.xy, r5.z);
  r1.w = (r1.w * r3.z);
  r5.y = (r2.y * r4.y);
  r5.x = (r0.y * cb6_6.tint_symbol_1[14u].z);
  r5.z = 0.0f;
  let v_55 = (r1.xyz + r5.xyz);
  r4 = vec4<f32>(r4.x, v_55.xyz);
  let v_56 = r4.yzyy;
  r2.w = textureSampleCompareLevel(t15, s15, v_56.xy, r4.w);
  r1.w = fma(r3.x, r2.w, r1.w);
  r1.w = (r1.w * r2.z);
  r5.y = (r2.y * r4.x);
  r4.y = (r2.y * r4.x);
  r5.x = (r0.z * cb6_6.tint_symbol_1[14u].z);
  r4.x = (r0.y * cb6_6.tint_symbol_1[14u].z);
  r5.z = 0.0f;
  let v_57 = (r1.xyz + r5.xyz);
  r2 = vec4<f32>(r2.x, v_57.xyz);
  let v_58 = r2.yzyy;
  r0.y = textureSampleCompareLevel(t15, s15, v_58.xy, r2.w);
  r0.y = (r0.y * r3.z);
  r4.z = 0.0f;
  let v_59 = (r1.xyz + r4.xyz);
  r1 = vec4<f32>(v_59.xyz, r1.w);
  let v_60 = r1.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_60.xy, r1.z);
  r0.y = fma(r3.x, r0.z, r0.y);
  r0.y = fma(r2.x, r0.y, r1.w);
  r0.y = (r0.w + r0.y);
  o0 = (r0.xxxx + r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
