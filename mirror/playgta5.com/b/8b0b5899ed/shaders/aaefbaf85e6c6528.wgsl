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

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

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
  let v_6 = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = textureSample(t9, s9, r2.zwzz.xy).xy;
  r1 = vec4<f32>(r1.xy, v_8.xy);
  let v_9 = (vec2<f32>(48.0f) / cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(r2.xy, v_9.xy);
  let v_10 = fma(r1.zw, r2.zw, r2.xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = textureSample(t6, s6, r3.xyxx.xy).xyz;
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0.w = textureSample(t11, s11, r2.xyxx.xy).x;
  r3.w = (cb12_12.tint_symbol_1[0u].w + cb12_12.tint_symbol_1[0u].z);
  let v_12 = -(cb12_12.tint_symbol_1[0u].wwww);
  r0.w = fma(v_12.w, r0.w, r3.w);
  let v_13 = -(v2.xyzx);
  let v_14 = fma(v_13.xyz, r0.www, r3.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r4.x = dot(r3.xyz, r0.xyz);
  r3.x = dot(r3.xyz, r3.xyz);
  r5.x = sqrt(r3.x);
  let v_15 = (r2.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = fma((-(r1.zwzz)).xy, r3.xy, r2.xy);
  r6 = vec4<f32>(v_16.xy, r6.zw);
  let v_17 = textureSample(t6, s6, r6.xyxx.xy).xyz;
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = fma(v_13.xyz, r0.www, r6.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r4.w = dot(r6.xyz, r0.xyz);
  r3.z = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r3.z);
  r6 = (r2.zwzw * vec4<f32>(0.75f, 0.75f, 0.5f, 0.5f));
  let v_19 = fma(r1.zw, r6.xy, r2.xy);
  r7 = vec4<f32>(v_19.xy, r7.zw);
  let v_20 = fma((-(r1.zzzw)).zw, r6.zw, r2.xy);
  r1 = vec4<f32>(r1.xy, v_20.xy);
  let v_21 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = fma(v_13.xyz, r0.www, r8.xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = textureSample(t6, s6, r7.xyxx.xy).xyz;
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = fma(v_13.xyz, r0.www, r7.xyz);
  r7 = vec4<f32>(v_24.xyz, r7.w);
  r4.y = dot(r7.xyz, r0.xyz);
  r1.z = dot(r7.xyz, r7.xyz);
  r5.y = sqrt(r1.z);
  r4.z = dot(r8.xyz, r0.xyz);
  r0.x = dot(r8.xyz, r8.xyz);
  r5.z = sqrt(r0.x);
  r4 = (-(r4) + r5);
  r4 = (r4 / r5);
  r0 = (r5 / r0.wwww);
  r0 = (r0 * vec4<f32>(5.0f));
  r0 = clamp(max(r4, r0), vec4<f32>(), vec4<f32>(1.0f));
  r0.x = dot(r0, vec4<f32>(0.25f));
  let v_25 = fma(v1.xy, r1.xy, vec2<f32>(0.5f));
  let v_26 = r0;
  r0 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  let v_27 = trunc(r0.yz);
  let v_28 = r0;
  r0 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  let v_29 = r0.yz;
  let v_30 = max(v_29, vec2<f32>(-2147483648.0f));
  let v_31 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_30), vec2<i32>(2147483647i), (v_30 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_29 == v_29))));
  r4 = vec4<f32>(v_31.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  let v_32 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r0 = vec4<f32>(r0.x, v_32.xyz);
  let v_33 = fma(r0.yzw, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_33.xyz);
  let v_34 = textureSample(t9, s9, v1.zwzz.xy).xy;
  r1 = vec4<f32>(r1.xy, v_34.xy);
  let v_35 = fma(r1.zw, r2.zw, v1.xy);
  r2 = vec4<f32>(v_35.xy, r2.zw);
  let v_36 = textureSample(t6, s6, r2.xyxx.xy).xyz;
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r2.x = textureSample(t11, s11, v1.xyxx.xy).x;
  r2.x = fma(v_12.x, r2.x, r3.w);
  let v_37 = fma(v_13.xyz, r2.xxx, r4.xyz);
  r4 = vec4<f32>(v_37.xyz, r4.w);
  r5.x = dot(r4.xyz, r0.yzw);
  r2.y = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r2.y);
  let v_38 = fma((-(r1.zwzz)).xy, r3.xy, v1.xy);
  r7 = vec4<f32>(v_38.xy, r7.zw);
  let v_39 = textureSample(t6, s6, r7.xyxx.xy).xyz;
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = fma(v_13.xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_40.xyz, r7.w);
  r5.w = dot(r7.xyz, r0.yzw);
  r2.y = dot(r7.xyz, r7.xyz);
  r4.w = sqrt(r2.y);
  let v_41 = fma(r1.zw, r6.xy, v1.xy);
  r7 = vec4<f32>(v_41.xy, r7.zw);
  let v_42 = fma((-(r1.zzzw)).zw, r6.zw, v1.xy);
  r1 = vec4<f32>(r1.xy, v_42.xy);
  let v_43 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = fma(v_13.xyz, r2.xxx, r8.xyz);
  r8 = vec4<f32>(v_44.xyz, r8.w);
  let v_45 = textureSample(t6, s6, r7.xyxx.xy).xyz;
  r7 = vec4<f32>(v_45.xyz, r7.w);
  let v_46 = fma(v_13.xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_46.xyz, r7.w);
  r5.y = dot(r7.xyz, r0.yzw);
  r1.z = dot(r7.xyz, r7.xyz);
  r4.y = sqrt(r1.z);
  r5.z = dot(r8.xyz, r0.yzw);
  r0.y = dot(r8.xyz, r8.xyz);
  r4.z = sqrt(r0.y);
  let v_47 = -(r5);
  r5 = (r4 + v_47);
  r5 = (r5 / r4);
  r4 = (r4 / r2.xxxx);
  r4 = (r4 * vec4<f32>(5.0f));
  r4 = clamp(max(r5, r4), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r4, vec4<f32>(0.25f));
  r0.x = (r0.x + r0.y);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r5 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f), v1);
  let v_48 = fma(r5.xy, r1.xy, vec2<f32>(0.5f));
  let v_49 = r0;
  r0 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  let v_50 = trunc(r0.yz);
  let v_51 = r0;
  r0 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  let v_52 = r0.yz;
  let v_53 = max(v_52, vec2<f32>(-2147483648.0f));
  let v_54 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_53), vec2<i32>(2147483647i), (v_53 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_52 == v_52))));
  r4 = vec4<f32>(v_54.xy, r4.zw);
  let v_55 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r0 = vec4<f32>(r0.x, v_55.xyz);
  let v_56 = fma(r0.yzw, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_56.xyz);
  let v_57 = textureSample(t9, s9, r5.zwzz.xy).xy;
  r1 = vec4<f32>(r1.xy, v_57.xy);
  let v_58 = fma(r1.zw, r2.zw, r5.xy);
  r2 = vec4<f32>(v_58.xy, r2.zw);
  let v_59 = textureSample(t6, s6, r2.xyxx.xy).xyz;
  r4 = vec4<f32>(v_59.xyz, r4.w);
  r2.x = textureSample(t11, s11, r5.xyxx.xy).x;
  r2.x = fma(v_12.x, r2.x, r3.w);
  let v_60 = fma(v_13.xyz, r2.xxx, r4.xyz);
  r4 = vec4<f32>(v_60.xyz, r4.w);
  r7.x = dot(r4.xyz, r0.yzw);
  r2.y = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r2.y);
  let v_61 = fma((-(r1.zzzw)).zw, r3.xy, r5.xy);
  r5 = vec4<f32>(r5.xy, v_61.xy);
  let v_62 = textureSample(t6, s6, r5.zwzz.xy).xyz;
  r8 = vec4<f32>(v_62.xyz, r8.w);
  let v_63 = fma(v_13.xyz, r2.xxx, r8.xyz);
  r8 = vec4<f32>(v_63.xyz, r8.w);
  r7.w = dot(r8.xyz, r0.yzw);
  r2.y = dot(r8.xyz, r8.xyz);
  r4.w = sqrt(r2.y);
  let v_64 = fma(r1.zw, r6.xy, r5.xy);
  r5 = vec4<f32>(r5.xy, v_64.xy);
  let v_65 = fma((-(r1.zzzw)).zw, r6.zw, r5.xy);
  r1 = vec4<f32>(r1.xy, v_65.xy);
  let v_66 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r8 = vec4<f32>(v_66.xyz, r8.w);
  let v_67 = fma(v_13.xyz, r2.xxx, r8.xyz);
  r8 = vec4<f32>(v_67.xyz, r8.w);
  let v_68 = textureSample(t6, s6, r5.zwzz.xy).xyz;
  r5 = vec4<f32>(v_68.xyz, r5.w);
  let v_69 = fma(v_13.xyz, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_69.xyz, r5.w);
  r7.y = dot(r5.xyz, r0.yzw);
  r1.z = dot(r5.xyz, r5.xyz);
  r4.y = sqrt(r1.z);
  r7.z = dot(r8.xyz, r0.yzw);
  r0.y = dot(r8.xyz, r8.xyz);
  r4.z = sqrt(r0.y);
  let v_70 = -(r7);
  r5 = (r4 + v_70);
  r5 = (r5 / r4);
  r4 = (r4 / r2.xxxx);
  r4 = (r4 * vec4<f32>(5.0f));
  r4 = clamp(max(r5, r4), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r4, vec4<f32>(0.25f));
  r0.x = (r0.y + r0.x);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r5 = (v1 + cb2_2.tint_symbol[18u].zwzw);
  let v_71 = fma(r5.xy, r1.xy, vec2<f32>(0.5f));
  let v_72 = r0;
  r0 = vec4<f32>(v_72.x, v_71.xy, v_72.w);
  let v_73 = trunc(r0.yz);
  let v_74 = r0;
  r0 = vec4<f32>(v_74.x, v_73.xy, v_74.w);
  let v_75 = r0.yz;
  let v_76 = max(v_75, vec2<f32>(-2147483648.0f));
  let v_77 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_76), vec2<i32>(2147483647i), (v_76 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_75 == v_75))));
  r4 = vec4<f32>(v_77.xy, r4.zw);
  let v_78 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r0 = vec4<f32>(r0.x, v_78.xyz);
  let v_79 = fma(r0.yzw, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_79.xyz);
  let v_80 = textureSample(t9, s9, r5.zwzz.xy).xy;
  r1 = vec4<f32>(v_80.xy, r1.zw);
  let v_81 = fma(r1.xy, r2.zw, r5.xy);
  r1 = vec4<f32>(r1.xy, v_81.xy);
  let v_82 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r2 = vec4<f32>(v_82.xyz, r2.w);
  r1.z = textureSample(t11, s11, r5.xyxx.xy).x;
  r1.z = fma(v_12.z, r1.z, r3.w);
  let v_83 = fma(v_13.xyz, r1.zzz, r2.xyz);
  r2 = vec4<f32>(v_83.xyz, r2.w);
  r4.x = dot(r2.xyz, r0.yzw);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.x = sqrt(r1.w);
  let v_84 = fma((-(r1.xyxx)).xy, r3.xy, r5.xy);
  r3 = vec4<f32>(v_84.xy, r3.zw);
  let v_85 = textureSample(t6, s6, r3.xyxx.xy).xyz;
  r3 = vec4<f32>(v_85.xyz, r3.w);
  let v_86 = fma(v_13.xyz, r1.zzz, r3.xyz);
  r3 = vec4<f32>(v_86.xyz, r3.w);
  r4.w = dot(r3.xyz, r0.yzw);
  r1.w = dot(r3.xyz, r3.xyz);
  r2.w = sqrt(r1.w);
  let v_87 = fma(r1.xy, r6.xy, r5.xy);
  r3 = vec4<f32>(v_87.xy, r3.zw);
  let v_88 = fma((-(r1.xyxx)).xy, r6.zw, r5.xy);
  r1 = vec4<f32>(v_88.xy, r1.zw);
  let v_89 = textureSample(t6, s6, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_89.xy, r1.z, v_89.z);
  let v_90 = fma((-(v2.xyxz)).xyw, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_90.xy, r1.z, v_90.z);
  let v_91 = textureSample(t6, s6, r3.xyxx.xy).xyz;
  r3 = vec4<f32>(v_91.xyz, r3.w);
  let v_92 = fma(v_13.xyz, r1.zzz, r3.xyz);
  r3 = vec4<f32>(v_92.xyz, r3.w);
  r4.y = dot(r3.xyz, r0.yzw);
  r3.x = dot(r3.xyz, r3.xyz);
  r2.y = sqrt(r3.x);
  r4.z = dot(r1.xyw, r0.yzw);
  r0.y = dot(r1.xyw, r1.xyw);
  r2.z = sqrt(r0.y);
  let v_93 = -(r4);
  r3 = (r2 + v_93);
  r3 = (r3 / r2);
  r1 = (r2 / r1.zzzz);
  r1 = (r1 * vec4<f32>(5.0f));
  r1 = clamp(max(r3, r1), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r1, vec4<f32>(0.25f));
  o0 = (r0.yyyy + r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
