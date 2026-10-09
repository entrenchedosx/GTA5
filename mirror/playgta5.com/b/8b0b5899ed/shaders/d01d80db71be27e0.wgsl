diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_1[4u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_1[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_1[0u].w);
  let v_2 = (r0.yyy * cb11_11.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb11_11.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb11_11.tint_symbol_1[2u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_1[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_1[2u].w / r0.w);
  let v_6 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol[0u].wwww, cb6_6.tint_symbol[1u].wwww).w, 0.0f, 1.0f);
  let v_7 = (r0.yyy * cb6_6.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r0.xxx, cb6_6.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.zzz, cb6_6.tint_symbol[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r0.xyz, cb6_6.tint_symbol[7u].xyz, cb6_6.tint_symbol[11u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xy + vec2<f32>(0.5f, 3.5f));
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r2.x = (r1.x * cb6_6.tint_symbol[14u].x);
  r1.x = (r1.y * 0.25f);
  let v_12 = (cb6_6.tint_symbol[14u].yw * vec2<f32>(4.0f, 0.25f));
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r2.y = (r1.y * r1.x);
  let v_14 = (r2.xy + vec2<f32>(0.5f));
  r1 = vec4<f32>(v_14.xy, r1.zw);
  let v_15 = fract(r1.xy);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = (r1.xy * vec2<f32>(3.0f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = fma(r2.xy, r1.xy, r2.xy);
  r2 = vec4<f32>(r2.xy, v_17.xy);
  let v_18 = (r2.zw + vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_18.xy);
  let v_19 = (r1.xy * r2.xy);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  let v_20 = fma((-(r3.yyxy)).xz, r1.yx, r2.wz);
  let v_21 = r4;
  r4 = vec4<f32>(v_20.x, v_21.y, v_20.y, v_21.w);
  r5.z = r4.x;
  let v_22 = fma((-(r1.xxxy)).zw, vec2<f32>(3.0f), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_22.xy);
  let v_23 = fma(r2.xy, r1.xy, r2.zw);
  r2 = vec4<f32>(v_23.xy, r2.zw);
  let v_24 = (r1.xy * r1.xy);
  r2 = vec4<f32>(r2.xy, v_24.xy);
  let v_25 = fma((-(r2.zwzz)).xy, r1.xy, r2.xy);
  r4 = vec4<f32>(v_25.xy, r4.zw);
  r5.x = r4.y;
  let v_26 = fma((-(r2.zwzz)).xy, vec2<f32>(6.0f), vec2<f32>(4.0f));
  r2 = vec4<f32>(v_26.xy, r2.zw);
  let v_27 = (r1.xy * r2.zw);
  r2 = vec4<f32>(r2.xy, v_27.xy);
  let v_28 = fma(r3.xy, r1.xy, r2.xy);
  r2 = vec4<f32>(v_28.xy, r2.zw);
  let v_29 = r2;
  let v_30 = r5;
  r5 = vec4<f32>(v_30.x, v_29.y, v_30.z, v_29.w);
  let v_31 = r2;
  let v_32 = r4;
  r4 = vec4<f32>(v_32.x, v_31.x, v_32.z, v_31.z);
  r2 = (r4 * vec4<f32>(0.16666667163372039795f));
  r3 = (r5 * vec4<f32>(0.16666667163372039795f));
  let v_33 = (r3.yw + r3.xz);
  let v_34 = r3;
  r3 = vec4<f32>(v_33.x, v_34.y, v_33.y, v_34.w);
  let v_35 = (r3.yw / r3.xz);
  let v_36 = r3;
  r3 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  let v_37 = ((-(r1.yyyy)).yw + r3.yw);
  let v_38 = r1;
  r1 = vec4<f32>(v_38.x, v_37.x, v_38.z, v_37.y);
  let v_39 = (r1.yw + vec2<f32>(-1.0f, 1.0f));
  let v_40 = r1;
  r1 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  r4.y = (r1.z * r1.w);
  let v_41 = fma(r0.xyz, vec3<f32>(1.0f, 0.25f, 1.0f), vec3<f32>(0.5f, 0.875f, 0.0f));
  r5 = vec4<f32>(v_41.xyz, r5.w);
  let v_42 = abs(r0.yyyy);
  r0.x = max(v_42.x, abs(r0.xxxx).x);
  r0.x = (r0.x + -0.44999998807907104492f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(15.0f))).x, 0.0f, 1.0f);
  let v_43 = (r2.yw + r2.xz);
  let v_44 = r0;
  r0 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  let v_45 = (r2.yw / r0.yz);
  r2 = vec4<f32>(v_45.xy, r2.zw);
  let v_46 = ((-(r1.xxxx)).xy + r2.xy);
  r2 = vec4<f32>(v_46.xy, r2.zw);
  let v_47 = (r2.xy + vec2<f32>(-1.0f, 1.0f));
  r2 = vec4<f32>(v_47.xy, r2.zw);
  r4.x = (r2.y * cb6_6.tint_symbol[14u].z);
  r4.z = 0.0f;
  let v_48 = (r4.xyz + r5.xyz);
  r4 = vec4<f32>(v_48.xyz, r4.w);
  let v_49 = r4.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_49.xy, r4.z);
  r1.x = (r0.z * r1.x);
  r4.y = (r1.z * r1.w);
  r4.x = (r2.x * cb6_6.tint_symbol[14u].z);
  r4.z = 0.0f;
  let v_50 = (r4.xyz + r5.xyz);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  let v_51 = r4.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_51.xy, r4.z);
  r1.x = fma(r0.y, r1.w, r1.x);
  r1.x = (r1.x * r3.z);
  r4.y = (r1.z * r1.y);
  r6.y = (r1.z * r1.y);
  r4.x = (r2.y * cb6_6.tint_symbol[14u].z);
  r6.x = (r2.x * cb6_6.tint_symbol[14u].z);
  r4.z = 0.0f;
  let v_52 = (r4.xyz + r5.xyz);
  r1 = vec4<f32>(r1.x, v_52.xyz);
  let v_53 = r1.yzyy;
  r1.y = textureSampleCompareLevel(t15, s15, v_53.xy, r1.w);
  r0.z = (r0.z * r1.y);
  r6.z = 0.0f;
  let v_54 = (r5.xyz + r6.xyz);
  r1 = vec4<f32>(r1.x, v_54.xyz);
  let v_55 = r1.yzyy;
  r1.y = textureSampleCompareLevel(t15, s15, v_55.xy, r1.w);
  r0.y = fma(r0.y, r1.y, r0.z);
  r0.y = fma(r3.x, r0.y, r1.x);
  r0.y = (r0.w + r0.y);
  o0 = (r0.xxxx + r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
