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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  r1 = vec4<f32>(r1.x, ((v2.xyz / v2.www)).xyz);
  let v_4 = fma(r1.yzw, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[9u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r1.x);
  let v_6 = (r3.www * r3.xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  let v_7 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[10u].xyz);
  r5 = vec4<f32>(v_7.xyz, r5.w);
  r4.w = dot(r5.xyz, r5.xyz);
  r5.w = inverseSqrt(r4.w);
  let v_8 = (r5.www * r5.xyz);
  r6 = vec4<f32>(v_8.xyz, r6.w);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r6.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r7.x = fma(r6.w, r1.x, cb12_12.tint_symbol_2[7u].x);
  r1.x = (r1.x / r7.x);
  let v_9 = -(cb12_12.tint_symbol_2[12u].xyzx);
  r7.x = dot(r4.xyz, v_9.xyz);
  r7.x = clamp(fma(r7.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r1.x = (r1.x * r7.x);
  r2.w = 1.0f;
  r2.x = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  r1.x = (r1.x * r2.x);
  r2.y = clamp(fma(-(r4.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = fma(r6.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.z);
  let v_10 = -(cb12_12.tint_symbol_2[13u].xyzx);
  r2.z = dot(r6.xyz, v_10.xyz);
  r2.z = clamp(fma(r2.zzzz, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).z, 0.0f, 1.0f);
  r2.y = (r2.z * r2.y);
  r2.x = (r2.x * r2.y);
  r2.y = max(r1.x, r2.x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y < 0.00000099999999747524f)));
  v_11((bitcast<u32>(r2.y) != 0u));
  let v_12 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r2 = vec4<f32>(r2.x, v_12.xyz);
  let v_13 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_13.xyz);
  let v_14 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_15.xy, r7.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_16 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_16.xyz, r8.w);
  let v_17 = fract(r8.xyz);
  r8 = vec4<f32>(v_17.xyz, r8.w);
  let v_18 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_18.xy, r8.zw);
  let v_19 = fma(r0.xyz, vec3<f32>(256.0f), r8.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_21 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = min(r7.x, 1.0f);
  r4.w = fma(r7.y, 512.0f, -500.0f);
  r4.w = max(r4.w, 0.0f);
  let v_22 = -(r4.wwww);
  r6.w = fma(r7.y, 512.0f, v_22.w);
  r4.w = (r4.w * 558.0f);
  r4.w = fma(r6.w, 3.0f, r4.w);
  r6.w = dot(r1.yzw, r1.yzw);
  r6.w = inverseSqrt(r6.w);
  let v_23 = (r1.yzw * r6.www);
  r1 = vec4<f32>(r1.x, v_23.xyz);
  let v_24 = -(r1.yzwy);
  let v_25 = fma(r3.xyz, r3.www, v_24.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_26 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = -(r1.yzwy);
  let v_28 = fma(r5.xyz, r5.www, v_27.xyz);
  r5 = vec4<f32>(v_28.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_29 = (r3.www * r5.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = -(cb12_12.tint_symbol_2[12u].zxzy);
  let v_31 = (cb12_12.tint_symbol_2[2u].yzx * v_30.xyw);
  r7 = vec4<f32>(v_31.xy, r7.z, v_31.z);
  let v_32 = -(cb12_12.tint_symbol_2[12u].yzyx);
  let v_33 = -(r7.xyxw);
  let v_34 = fma(v_32.xyw, cb12_12.tint_symbol_2[2u].zxy, v_33.xyw);
  r7 = vec4<f32>(v_34.xy, r7.z, v_34.z);
  let v_35 = -(r4.xyzx);
  r7.x = dot(r7.xyw, v_35.xyz);
  let v_36 = -(r4.xyzx);
  r7.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_36.xyz);
  r3.w = dot(v_9.xyz, (-(r4.xyzx)).xyz);
  r5.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (cb12_12.tint_symbol_2[5u].x / r5.w);
  r5.w = (r5.w * 0.5f);
  r3.w = (r5.w / r3.w);
  let v_37 = clamp(fma(r7.xyxx, r3.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_37.xy, r8.zw);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r6.w = ((-(r8.yyyy)).w + 1.0f);
  let v_38 = bitcast<u32>(r3.w);
  let v_39 = r6.w;
  r8.z = select(r8.y, v_39, (v_38 != 0u));
  let v_40 = textureSampleLevel(t2, s2, r8.xzxx.xy, 0.0f).xyz;
  r7 = vec4<f32>(v_40.xy, r7.z, v_40.z);
  let v_41 = fma(r7.xyw, r7.xyw, vec3<f32>(-1.0f));
  r7 = vec4<f32>(v_41.xy, r7.z, v_41.z);
  let v_42 = fma(cb12_12.tint_symbol_2[11u].yyy, r7.xyw, vec3<f32>(1.0f));
  r7 = vec4<f32>(v_42.xy, r7.z, v_42.z);
  let v_43 = (r7.xyw * cb12_12.tint_symbol_2[3u].xyz);
  r7 = vec4<f32>(v_43.xy, r7.z, v_43.z);
  let v_44 = (r7.xyw * cb12_12.tint_symbol_2[3u].www);
  r7 = vec4<f32>(v_44.xy, r7.z, v_44.z);
  let v_45 = -(cb12_12.tint_symbol_2[13u].zxyz);
  let v_46 = (cb12_12.tint_symbol_2[2u].yzx * v_45.xyz);
  r8 = vec4<f32>(v_46.xyz, r8.w);
  let v_47 = -(cb12_12.tint_symbol_2[13u].yzxy);
  let v_48 = -(r8.xyzx);
  let v_49 = fma(v_47.xyz, cb12_12.tint_symbol_2[2u].zxy, v_48.xyz);
  r8 = vec4<f32>(v_49.xyz, r8.w);
  let v_50 = -(r6.xyzx);
  r8.x = dot(r8.xyz, v_50.xyz);
  let v_51 = -(r6.xyzx);
  r8.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_51.xyz);
  r6.w = dot(v_10.xyz, (-(r6.xyzx)).xyz);
  r5.w = (r5.w / r6.w);
  let v_52 = clamp(fma(r8.xyxx, r5.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_52.xy, r8.zw);
  r5.w = ((-(r8.yyyy)).w + 1.0f);
  let v_53 = bitcast<u32>(r3.w);
  let v_54 = r5.w;
  r8.z = select(r8.y, v_54, (v_53 != 0u));
  let v_55 = textureSampleLevel(t2, s2, r8.xzxx.xy, 0.0f).xyz;
  r8 = vec4<f32>(v_55.xyz, r8.w);
  let v_56 = fma(r8.xyz, r8.xyz, vec3<f32>(-1.0f));
  r8 = vec4<f32>(v_56.xyz, r8.w);
  let v_57 = fma(cb12_12.tint_symbol_2[11u].yyy, r8.xyz, vec3<f32>(1.0f));
  r8 = vec4<f32>(v_57.xyz, r8.w);
  let v_58 = (r8.xyz * cb12_12.tint_symbol_2[3u].xyz);
  r8 = vec4<f32>(v_58.xyz, r8.w);
  let v_59 = (r8.xyz * cb12_12.tint_symbol_2[3u].www);
  r8 = vec4<f32>(v_59.xyz, r8.w);
  let v_60 = dot(r0.xyz, r4.xyz);
  r3.w = clamp(vec4<f32>(v_60, v_60, v_60, v_60).w, 0.0f, 1.0f);
  let v_61 = dot((-(r1.yzwy)).xyz, r0.xyz);
  r9.x = clamp(vec4<f32>(v_61, v_61, v_61, v_61).x, 0.0f, 1.0f);
  let v_62 = dot(r3.xyz, r4.xyz);
  r9.y = clamp(vec4<f32>(v_62, v_62, v_62, v_62).y, 0.0f, 1.0f);
  let v_63 = ((-(r9.xxyx)).yz + vec2<f32>(1.0f));
  let v_64 = r1;
  r1 = vec4<f32>(v_64.x, v_63.xy, v_64.w);
  let v_65 = (r1.yz * r1.yz);
  r4 = vec4<f32>(v_65.xy, r4.zw);
  let v_66 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_66.xy, r4.zw);
  let v_67 = (r1.yz * r4.xy);
  let v_68 = r1;
  r1 = vec4<f32>(v_68.x, v_67.xy, v_68.w);
  r1.w = ((-(r7.zzzz)).w + 1.0f);
  let v_69 = fma(r7.zz, r1.yz, r1.ww);
  let v_70 = r1;
  r1 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
  let v_71 = (r4.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_71.xy, r4.zw);
  r4.x = (r4.x * 0.125f);
  r1.y = fma((-(r0.wwww)).y, r1.y, 1.0f);
  r3.x = dot(r0.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r4.y);
  r3.x = exp2(r3.x);
  r1.z = (r1.z * r3.x);
  r1.z = (r4.x * r1.z);
  r1.z = (r0.w * r1.z);
  r1.z = (r3.w * r1.z);
  r1.y = (r1.y * r3.w);
  let v_72 = dot(r0.xyz, r6.xyz);
  r3.x = clamp(vec4<f32>(v_72, v_72, v_72, v_72).x, 0.0f, 1.0f);
  let v_73 = dot(r5.xyz, r6.xyz);
  r9.z = clamp(vec4<f32>(v_73, v_73, v_73, v_73).z, 0.0f, 1.0f);
  let v_74 = ((-(r9.xxzx)).yz + vec2<f32>(1.0f));
  let v_75 = r3;
  r3 = vec4<f32>(v_75.x, v_74.xy, v_75.w);
  let v_76 = (r3.yz * r3.yz);
  r4 = vec4<f32>(r4.xy, v_76.xy);
  let v_77 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_77.xy);
  let v_78 = (r3.yz * r4.zw);
  let v_79 = r3;
  r3 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
  let v_80 = fma(r7.zz, r3.yz, r1.ww);
  let v_81 = r3;
  r3 = vec4<f32>(v_81.x, v_80.xy, v_81.w);
  r1.w = fma((-(r0.wwww)).w, r3.y, 1.0f);
  r0.x = dot(r0.xyz, r5.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r4.y);
  r0.x = exp2(r0.x);
  r0.x = (r3.z * r0.x);
  r0.x = (r4.x * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r3.x * r0.x);
  r0.y = (r1.w * r3.x);
  r0.z = (r1.z * cb12_12.tint_symbol_2[8u].z);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_82 = fma(r2.yzw, r1.yyy, r0.zzz);
  r1 = vec4<f32>(r1.x, v_82.xyz);
  let v_83 = (r7.xyw * r1.yzw);
  r1 = vec4<f32>(r1.x, v_83.xyz);
  let v_84 = fma(r2.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_84.xyz, r0.w);
  let v_85 = (r8.xyz * r0.xyz);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = (r2.xxx * r0.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(r1.yzw, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_88.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_11(v_89 : bool) {
  if (v_89) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
