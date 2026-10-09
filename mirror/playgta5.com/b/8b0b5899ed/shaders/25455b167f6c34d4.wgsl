diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb9_struct {
  tint_symbol_1 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v = (cb12_12.tint_symbol_1[8u].xy + vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r2 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f), v1);
  let v_1 = fma(r2.xy, r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(r1.xy, v_1.xy);
  let v_2 = trunc(r1.zw);
  r1 = vec4<f32>(r1.xy, v_2.xy);
  let v_3 = r1.zw;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  let v_6 = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r3 = textureSample(t9, s9, r2.zwzz.xy);
  let v_7 = (vec2<f32>(48.0f) / cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = fma(r3.xy, r1.zw, r2.xy);
  r2 = vec4<f32>(r2.xy, v_8.xy);
  r4 = textureSample(t6, s6, r2.zwzz.xy);
  r5 = textureSample(t11, s11, r2.xyxx.xy);
  r0.w = (cb12_12.tint_symbol_1[0u].w + cb12_12.tint_symbol_1[0u].z);
  let v_9 = -(cb12_12.tint_symbol_1[0u].wwww);
  r2.z = fma(v_9.z, r5.x, r0.w);
  let v_10 = -(v2.xyzx);
  let v_11 = fma(v_10.xyz, r2.zzz, r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  r5.x = dot(r4.xyz, r0.xyz);
  r2.w = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r2.w);
  let v_12 = (r1.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(r3.xy, v_12.xy);
  let v_13 = fma((-(r3.xyxx)).xy, r3.zw, r2.xy);
  r6 = vec4<f32>(v_13.xy, r6.zw);
  r6 = textureSample(t6, s6, r6.xyxx.xy);
  let v_14 = fma(v_10.xyz, r2.zzz, r6.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  r5.w = dot(r6.xyz, r0.xyz);
  r2.w = dot(r6.xyz, r6.xyz);
  r4.w = sqrt(r2.w);
  r6 = (r1.zwzw * vec4<f32>(0.75f, 0.75f, 0.5f, 0.5f));
  let v_15 = fma(r3.xy, r6.xy, r2.xy);
  r7 = vec4<f32>(v_15.xy, r7.zw);
  let v_16 = fma((-(r3.xyxx)).xy, r6.zw, r2.xy);
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r8 = textureSample(t6, s6, r2.xyxx.xy);
  let v_17 = fma((-(v2.xyxz)).xyw, r2.zzz, r8.xyz);
  r2 = vec4<f32>(v_17.xy, r2.z, v_17.z);
  r7 = textureSample(t6, s6, r7.xyxx.xy);
  let v_18 = fma(v_10.xyz, r2.zzz, r7.xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  r5.y = dot(r7.xyz, r0.xyz);
  r3.x = dot(r7.xyz, r7.xyz);
  r4.y = sqrt(r3.x);
  r5.z = dot(r2.xyw, r0.xyz);
  r0.x = dot(r2.xyw, r2.xyw);
  r4.z = sqrt(r0.x);
  let v_19 = -(r5);
  r5 = (r4 + v_19);
  r5 = (r5 / r4);
  r2 = (r4 / r2.zzzz);
  r2 = (r2 * vec4<f32>(5.0f));
  r2 = clamp(max(r5, r2), vec4<f32>(), vec4<f32>(1.0f));
  r0.x = dot(r2, vec4<f32>(0.25f));
  let v_20 = fma(v1.xy, r1.xy, vec2<f32>(0.5f));
  let v_21 = r0;
  r0 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  let v_22 = trunc(r0.yz);
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  let v_24 = r0.yz;
  let v_25 = max(v_24, vec2<f32>(-2147483648.0f));
  let v_26 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_25), vec2<i32>(2147483647i), (v_25 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_24 == v_24))));
  r2 = vec4<f32>(v_26.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  let v_27 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_27.xyz, r2.w);
  r4 = textureSample(t9, s9, v1.zwzz.xy);
  let v_28 = fma(r4.xy, r1.zw, v1.xy);
  let v_29 = r0;
  r0 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
  r5 = textureSample(t6, s6, r0.yzyy.xy);
  r7 = textureSample(t11, s11, v1.xyxx.xy);
  r0.y = fma(v_9.y, r7.x, r0.w);
  let v_30 = fma(v_10.xyz, r0.yyy, r5.xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  r7.x = dot(r5.xyz, r2.xyz);
  r0.z = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r0.z);
  let v_31 = fma((-(r4.xyxx)).xy, r3.zw, v1.xy);
  r3 = vec4<f32>(v_31.xy, r3.zw);
  r8 = textureSample(t6, s6, r3.xyxx.xy);
  let v_32 = fma(v_10.xyz, r0.yyy, r8.xyz);
  r8 = vec4<f32>(v_32.xyz, r8.w);
  r7.w = dot(r8.xyz, r2.xyz);
  r0.z = dot(r8.xyz, r8.xyz);
  r5.w = sqrt(r0.z);
  let v_33 = fma(r4.xy, r6.xy, v1.xy);
  r3 = vec4<f32>(v_33.xy, r3.zw);
  let v_34 = fma((-(r4.xyxx)).xy, r6.zw, v1.xy);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  r4 = textureSample(t6, s6, r4.xyxx.xy);
  let v_35 = fma(v_10.xyz, r0.yyy, r4.xyz);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  r8 = textureSample(t6, s6, r3.xyxx.xy);
  let v_36 = fma(v_10.xyz, r0.yyy, r8.xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  r7.y = dot(r8.xyz, r2.xyz);
  r0.z = dot(r8.xyz, r8.xyz);
  r5.y = sqrt(r0.z);
  r7.z = dot(r4.xyz, r2.xyz);
  r0.z = dot(r4.xyz, r4.xyz);
  r5.z = sqrt(r0.z);
  let v_37 = -(r7);
  r2 = (r5 + v_37);
  r2 = (r2 / r5);
  r4 = (r5 / r0.yyyy);
  r4 = (r4 * vec4<f32>(5.0f));
  r2 = clamp(max(r2, r4), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r2, vec4<f32>(0.25f));
  r0.x = (r0.x + r0.y);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r4 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f), v1);
  let v_38 = fma(r4.xy, r1.xy, vec2<f32>(0.5f));
  let v_39 = r0;
  r0 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
  let v_40 = trunc(r0.yz);
  let v_41 = r0;
  r0 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  let v_42 = r0.yz;
  let v_43 = max(v_42, vec2<f32>(-2147483648.0f));
  let v_44 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_43), vec2<i32>(2147483647i), (v_43 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_42 == v_42))));
  r2 = vec4<f32>(v_44.xy, r2.zw);
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  let v_45 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_45.xyz, r2.w);
  r5 = textureSample(t9, s9, r4.zwzz.xy);
  let v_46 = fma(r5.xy, r1.zw, r4.xy);
  let v_47 = r0;
  r0 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
  r7 = textureSample(t6, s6, r0.yzyy.xy);
  r8 = textureSample(t11, s11, r4.xyxx.xy);
  r0.y = fma(v_9.y, r8.x, r0.w);
  let v_48 = fma(v_10.xyz, r0.yyy, r7.xyz);
  r7 = vec4<f32>(v_48.xyz, r7.w);
  r8.x = dot(r7.xyz, r2.xyz);
  r0.z = dot(r7.xyz, r7.xyz);
  r7.x = sqrt(r0.z);
  let v_49 = fma((-(r5.xyxx)).xy, r3.zw, r4.xy);
  r3 = vec4<f32>(v_49.xy, r3.zw);
  r9 = textureSample(t6, s6, r3.xyxx.xy);
  let v_50 = fma(v_10.xyz, r0.yyy, r9.xyz);
  r9 = vec4<f32>(v_50.xyz, r9.w);
  r8.w = dot(r9.xyz, r2.xyz);
  r0.z = dot(r9.xyz, r9.xyz);
  r7.w = sqrt(r0.z);
  let v_51 = fma(r5.xy, r6.xy, r4.xy);
  r3 = vec4<f32>(v_51.xy, r3.zw);
  let v_52 = fma((-(r5.xyxx)).xy, r6.zw, r4.xy);
  r4 = vec4<f32>(v_52.xy, r4.zw);
  r4 = textureSample(t6, s6, r4.xyxx.xy);
  let v_53 = fma(v_10.xyz, r0.yyy, r4.xyz);
  r4 = vec4<f32>(v_53.xyz, r4.w);
  r5 = textureSample(t6, s6, r3.xyxx.xy);
  let v_54 = fma(v_10.xyz, r0.yyy, r5.xyz);
  r5 = vec4<f32>(v_54.xyz, r5.w);
  r8.y = dot(r5.xyz, r2.xyz);
  r0.z = dot(r5.xyz, r5.xyz);
  r7.y = sqrt(r0.z);
  r8.z = dot(r4.xyz, r2.xyz);
  r0.z = dot(r4.xyz, r4.xyz);
  r7.z = sqrt(r0.z);
  let v_55 = -(r8);
  r2 = (r7 + v_55);
  r2 = (r2 / r7);
  r4 = (r7 / r0.yyyy);
  r4 = (r4 * vec4<f32>(5.0f));
  r2 = clamp(max(r2, r4), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r2, vec4<f32>(0.25f));
  r0.x = (r0.y + r0.x);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r4 = (v1 + cb2_2.tint_symbol[18u].zwzw);
  let v_56 = fma(r4.xy, r1.xy, vec2<f32>(0.5f));
  let v_57 = r0;
  r0 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
  let v_58 = trunc(r0.yz);
  let v_59 = r0;
  r0 = vec4<f32>(v_59.x, v_58.xy, v_59.w);
  let v_60 = r0.yz;
  let v_61 = max(v_60, vec2<f32>(-2147483648.0f));
  let v_62 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_61), vec2<i32>(2147483647i), (v_61 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_60 == v_60))));
  r2 = vec4<f32>(v_62.xy, r2.zw);
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  let v_63 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_63.xyz, r2.w);
  r5 = textureSample(t9, s9, r4.zwzz.xy);
  let v_64 = fma(r5.xy, r1.zw, r4.xy);
  let v_65 = r0;
  r0 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  r1 = textureSample(t6, s6, r0.yzyy.xy);
  r7 = textureSample(t11, s11, r4.xyxx.xy);
  r0.y = fma(v_9.y, r7.x, r0.w);
  let v_66 = fma(v_10.xyz, r0.yyy, r1.xyz);
  r1 = vec4<f32>(v_66.xyz, r1.w);
  r7.x = dot(r1.xyz, r2.xyz);
  r0.z = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r0.z);
  let v_67 = fma((-(r5.xxxy)).zw, r3.zw, r4.xy);
  r0 = vec4<f32>(r0.xy, v_67.xy);
  r3 = textureSample(t6, s6, r0.zwzz.xy);
  let v_68 = fma(v_10.xyz, r0.yyy, r3.xyz);
  r3 = vec4<f32>(v_68.xyz, r3.w);
  r7.w = dot(r3.xyz, r2.xyz);
  r0.z = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.z);
  let v_69 = fma(r5.xy, r6.xy, r4.xy);
  r0 = vec4<f32>(r0.xy, v_69.xy);
  let v_70 = fma((-(r5.xyxx)).xy, r6.zw, r4.xy);
  r3 = vec4<f32>(v_70.xy, r3.zw);
  r3 = textureSample(t6, s6, r3.xyxx.xy);
  let v_71 = fma(v_10.xyz, r0.yyy, r3.xyz);
  r3 = vec4<f32>(v_71.xyz, r3.w);
  r4 = textureSample(t6, s6, r0.zwzz.xy);
  let v_72 = fma(v_10.xyz, r0.yyy, r4.xyz);
  r4 = vec4<f32>(v_72.xyz, r4.w);
  r7.y = dot(r4.xyz, r2.xyz);
  r0.z = dot(r4.xyz, r4.xyz);
  r1.y = sqrt(r0.z);
  r7.z = dot(r3.xyz, r2.xyz);
  r0.z = dot(r3.xyz, r3.xyz);
  r1.z = sqrt(r0.z);
  let v_73 = -(r7);
  r2 = (r1 + v_73);
  r2 = (r2 / r1);
  r1 = (r1 / r0.yyyy);
  r1 = (r1 * vec4<f32>(5.0f));
  r1 = clamp(max(r2, r1), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r1, vec4<f32>(0.25f));
  o0 = (r0.yyyy + r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
