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
  r3.w = (cb12_12.tint_symbol_1[0u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r3.w);
  r0.w = (cb12_12.tint_symbol_1[0u].z / r0.w);
  let v_12 = -(v2.xyzx);
  let v_13 = fma(v_12.xyz, r0.www, r3.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r4.x = dot(r3.xyz, r0.xyz);
  r3.x = dot(r3.xyz, r3.xyz);
  r5.x = sqrt(r3.x);
  let v_14 = (r2.zw * vec2<f32>(0.25f));
  r3 = vec4<f32>(v_14.xy, r3.zw);
  let v_15 = fma((-(r1.zwzz)).xy, r3.xy, r2.xy);
  r6 = vec4<f32>(v_15.xy, r6.zw);
  let v_16 = textureSample(t6, s6, r6.xyxx.xy).xyz;
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = fma(v_12.xyz, r0.www, r6.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r4.w = dot(r6.xyz, r0.xyz);
  r3.z = dot(r6.xyz, r6.xyz);
  r5.w = sqrt(r3.z);
  r6 = (r2.zwzw * vec4<f32>(0.75f, 0.75f, 0.5f, 0.5f));
  let v_18 = fma(r1.zw, r6.xy, r2.xy);
  r7 = vec4<f32>(v_18.xy, r7.zw);
  let v_19 = fma((-(r1.zzzw)).zw, r6.zw, r2.xy);
  r1 = vec4<f32>(r1.xy, v_19.xy);
  let v_20 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r8 = vec4<f32>(v_20.xyz, r8.w);
  let v_21 = fma(v_12.xyz, r0.www, r8.xyz);
  r8 = vec4<f32>(v_21.xyz, r8.w);
  let v_22 = textureSample(t6, s6, r7.xyxx.xy).xyz;
  r7 = vec4<f32>(v_22.xyz, r7.w);
  let v_23 = fma(v_12.xyz, r0.www, r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
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
  let v_24 = fma(v1.xy, r1.xy, vec2<f32>(0.5f));
  let v_25 = r0;
  r0 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  let v_26 = trunc(r0.yz);
  let v_27 = r0;
  r0 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  let v_28 = r0.yz;
  let v_29 = max(v_28, vec2<f32>(-2147483648.0f));
  let v_30 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_29), vec2<i32>(2147483647i), (v_29 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_28 == v_28))));
  r4 = vec4<f32>(v_30.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  let v_31 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r0 = vec4<f32>(r0.x, v_31.xyz);
  let v_32 = fma(r0.yzw, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_32.xyz);
  let v_33 = textureSample(t9, s9, v1.zwzz.xy).xy;
  r1 = vec4<f32>(r1.xy, v_33.xy);
  let v_34 = fma(r1.zw, r2.zw, v1.xy);
  r2 = vec4<f32>(v_34.xy, r2.zw);
  let v_35 = textureSample(t6, s6, r2.xyxx.xy).xyz;
  r4 = vec4<f32>(v_35.xyz, r4.w);
  r2.x = textureSample(t11, s11, v1.xyxx.xy).x;
  r2.x = ((-(r2.xxxx)).x + r3.w);
  r2.x = (cb12_12.tint_symbol_1[0u].z / r2.x);
  let v_36 = fma(v_12.xyz, r2.xxx, r4.xyz);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r5.x = dot(r4.xyz, r0.yzw);
  r2.y = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r2.y);
  let v_37 = fma((-(r1.zwzz)).xy, r3.xy, v1.xy);
  r7 = vec4<f32>(v_37.xy, r7.zw);
  let v_38 = textureSample(t6, s6, r7.xyxx.xy).xyz;
  r7 = vec4<f32>(v_38.xyz, r7.w);
  let v_39 = fma(v_12.xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_39.xyz, r7.w);
  r5.w = dot(r7.xyz, r0.yzw);
  r2.y = dot(r7.xyz, r7.xyz);
  r4.w = sqrt(r2.y);
  let v_40 = fma(r1.zw, r6.xy, v1.xy);
  r7 = vec4<f32>(v_40.xy, r7.zw);
  let v_41 = fma((-(r1.zzzw)).zw, r6.zw, v1.xy);
  r1 = vec4<f32>(r1.xy, v_41.xy);
  let v_42 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r8 = vec4<f32>(v_42.xyz, r8.w);
  let v_43 = fma(v_12.xyz, r2.xxx, r8.xyz);
  r8 = vec4<f32>(v_43.xyz, r8.w);
  let v_44 = textureSample(t6, s6, r7.xyxx.xy).xyz;
  r7 = vec4<f32>(v_44.xyz, r7.w);
  let v_45 = fma(v_12.xyz, r2.xxx, r7.xyz);
  r7 = vec4<f32>(v_45.xyz, r7.w);
  r5.y = dot(r7.xyz, r0.yzw);
  r1.z = dot(r7.xyz, r7.xyz);
  r4.y = sqrt(r1.z);
  r5.z = dot(r8.xyz, r0.yzw);
  r0.y = dot(r8.xyz, r8.xyz);
  r4.z = sqrt(r0.y);
  let v_46 = -(r5);
  r5 = (r4 + v_46);
  r5 = (r5 / r4);
  r4 = (r4 / r2.xxxx);
  r4 = (r4 * vec4<f32>(5.0f));
  r4 = clamp(max(r5, r4), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r4, vec4<f32>(0.25f));
  r0.x = (r0.x + r0.y);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r5 = fma(cb2_2.tint_symbol[18u].zwzw, vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f), v1);
  let v_47 = fma(r5.xy, r1.xy, vec2<f32>(0.5f));
  let v_48 = r0;
  r0 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  let v_49 = trunc(r0.yz);
  let v_50 = r0;
  r0 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  let v_51 = r0.yz;
  let v_52 = max(v_51, vec2<f32>(-2147483648.0f));
  let v_53 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_52), vec2<i32>(2147483647i), (v_52 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_51 == v_51))));
  r4 = vec4<f32>(v_53.xy, r4.zw);
  let v_54 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r0 = vec4<f32>(r0.x, v_54.xyz);
  let v_55 = fma(r0.yzw, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_55.xyz);
  let v_56 = textureSample(t9, s9, r5.zwzz.xy).xy;
  r1 = vec4<f32>(r1.xy, v_56.xy);
  let v_57 = fma(r1.zw, r2.zw, r5.xy);
  r2 = vec4<f32>(v_57.xy, r2.zw);
  let v_58 = textureSample(t6, s6, r2.xyxx.xy).xyz;
  r4 = vec4<f32>(v_58.xyz, r4.w);
  r2.x = textureSample(t11, s11, r5.xyxx.xy).x;
  r2.x = ((-(r2.xxxx)).x + r3.w);
  r2.x = (cb12_12.tint_symbol_1[0u].z / r2.x);
  let v_59 = fma(v_12.xyz, r2.xxx, r4.xyz);
  r4 = vec4<f32>(v_59.xyz, r4.w);
  r7.x = dot(r4.xyz, r0.yzw);
  r2.y = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r2.y);
  let v_60 = fma((-(r1.zzzw)).zw, r3.xy, r5.xy);
  r5 = vec4<f32>(r5.xy, v_60.xy);
  let v_61 = textureSample(t6, s6, r5.zwzz.xy).xyz;
  r8 = vec4<f32>(v_61.xyz, r8.w);
  let v_62 = fma(v_12.xyz, r2.xxx, r8.xyz);
  r8 = vec4<f32>(v_62.xyz, r8.w);
  r7.w = dot(r8.xyz, r0.yzw);
  r2.y = dot(r8.xyz, r8.xyz);
  r4.w = sqrt(r2.y);
  let v_63 = fma(r1.zw, r6.xy, r5.xy);
  r5 = vec4<f32>(r5.xy, v_63.xy);
  let v_64 = fma((-(r1.zzzw)).zw, r6.zw, r5.xy);
  r1 = vec4<f32>(r1.xy, v_64.xy);
  let v_65 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r8 = vec4<f32>(v_65.xyz, r8.w);
  let v_66 = fma(v_12.xyz, r2.xxx, r8.xyz);
  r8 = vec4<f32>(v_66.xyz, r8.w);
  let v_67 = textureSample(t6, s6, r5.zwzz.xy).xyz;
  r5 = vec4<f32>(v_67.xyz, r5.w);
  let v_68 = fma(v_12.xyz, r2.xxx, r5.xyz);
  r5 = vec4<f32>(v_68.xyz, r5.w);
  r7.y = dot(r5.xyz, r0.yzw);
  r1.z = dot(r5.xyz, r5.xyz);
  r4.y = sqrt(r1.z);
  r7.z = dot(r8.xyz, r0.yzw);
  r0.y = dot(r8.xyz, r8.xyz);
  r4.z = sqrt(r0.y);
  let v_69 = -(r7);
  r5 = (r4 + v_69);
  r5 = (r5 / r4);
  r4 = (r4 / r2.xxxx);
  r4 = (r4 * vec4<f32>(5.0f));
  r4 = clamp(max(r5, r4), vec4<f32>(), vec4<f32>(1.0f));
  r0.y = dot(r4, vec4<f32>(0.25f));
  r0.x = (r0.y + r0.x);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r5 = (v1 + cb2_2.tint_symbol[18u].zwzw);
  let v_70 = fma(r5.xy, r1.xy, vec2<f32>(0.5f));
  let v_71 = r0;
  r0 = vec4<f32>(v_71.x, v_70.xy, v_71.w);
  let v_72 = trunc(r0.yz);
  let v_73 = r0;
  r0 = vec4<f32>(v_73.x, v_72.xy, v_73.w);
  let v_74 = r0.yz;
  let v_75 = max(v_74, vec2<f32>(-2147483648.0f));
  let v_76 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_75), vec2<i32>(2147483647i), (v_75 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_74 == v_74))));
  r4 = vec4<f32>(v_76.xy, r4.zw);
  let v_77 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r0 = vec4<f32>(r0.x, v_77.xyz);
  let v_78 = fma(r0.yzw, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(r0.x, v_78.xyz);
  let v_79 = textureSample(t9, s9, r5.zwzz.xy).xy;
  r1 = vec4<f32>(v_79.xy, r1.zw);
  let v_80 = fma(r1.xy, r2.zw, r5.xy);
  r1 = vec4<f32>(r1.xy, v_80.xy);
  let v_81 = textureSample(t6, s6, r1.zwzz.xy).xyz;
  r2 = vec4<f32>(v_81.xyz, r2.w);
  r1.z = textureSample(t11, s11, r5.xyxx.xy).x;
  r1.z = ((-(r1.zzzz)).z + r3.w);
  r1.z = (cb12_12.tint_symbol_1[0u].z / r1.z);
  let v_82 = fma(v_12.xyz, r1.zzz, r2.xyz);
  r2 = vec4<f32>(v_82.xyz, r2.w);
  r4.x = dot(r2.xyz, r0.yzw);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.x = sqrt(r1.w);
  let v_83 = fma((-(r1.xyxx)).xy, r3.xy, r5.xy);
  r3 = vec4<f32>(v_83.xy, r3.zw);
  let v_84 = textureSample(t6, s6, r3.xyxx.xy).xyz;
  r3 = vec4<f32>(v_84.xyz, r3.w);
  let v_85 = fma(v_12.xyz, r1.zzz, r3.xyz);
  r3 = vec4<f32>(v_85.xyz, r3.w);
  r4.w = dot(r3.xyz, r0.yzw);
  r1.w = dot(r3.xyz, r3.xyz);
  r2.w = sqrt(r1.w);
  let v_86 = fma(r1.xy, r6.xy, r5.xy);
  r3 = vec4<f32>(v_86.xy, r3.zw);
  let v_87 = fma((-(r1.xyxx)).xy, r6.zw, r5.xy);
  r1 = vec4<f32>(v_87.xy, r1.zw);
  let v_88 = textureSample(t6, s6, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_88.xy, r1.z, v_88.z);
  let v_89 = fma((-(v2.xyxz)).xyw, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_89.xy, r1.z, v_89.z);
  let v_90 = textureSample(t6, s6, r3.xyxx.xy).xyz;
  r3 = vec4<f32>(v_90.xyz, r3.w);
  let v_91 = fma(v_12.xyz, r1.zzz, r3.xyz);
  r3 = vec4<f32>(v_91.xyz, r3.w);
  r4.y = dot(r3.xyz, r0.yzw);
  r3.x = dot(r3.xyz, r3.xyz);
  r2.y = sqrt(r3.x);
  r4.z = dot(r1.xyw, r0.yzw);
  r0.y = dot(r1.xyw, r1.xyw);
  r2.z = sqrt(r0.y);
  let v_92 = -(r4);
  r3 = (r2 + v_92);
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
