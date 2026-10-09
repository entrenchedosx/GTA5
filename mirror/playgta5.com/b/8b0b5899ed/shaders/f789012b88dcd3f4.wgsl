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

var<private> r10 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb48_struct {
  tint_symbol_2 : array<vec4<f32>, 48u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb48_struct;

struct cb21_struct {
  tint_symbol_3 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_1 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_3[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_3[17u].z / r1.x);
  let v_5 = fma(r2.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = ((-(r3.xxyz)).yzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  r2.w = dot(r1.yzw, r1.yzw);
  r4.x = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.y = ((-(cb12_12.tint_symbol_3[7u].xxxx)).y + 1.0f);
  r4.y = fma(r4.y, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.y);
  r3.w = 1.0f;
  r3.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 0.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r3.x = (r3.x * r4.x);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.x < 0.00000099999999747524f)));
  v_7((bitcast<u32>(r3.y) != 0u));
  let v_8 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(r3.x, v_8.xyz);
  let v_9 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_9.xyz);
  let v_10 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_11.xy, r4.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_12 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fract(r5.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_14.xy, r5.zw);
  let v_15 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_17 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r0.w = min(r4.x, 1.0f);
  r4.x = fma(r4.y, 512.0f, -500.0f);
  r4.x = max(r4.x, 0.0f);
  let v_18 = -(r4.xxxx);
  r4.y = fma(r4.y, 512.0f, v_18.y);
  r4.x = (r4.x * 558.0f);
  r4.x = fma(r4.y, 3.0f, r4.x);
  r2.w = inverseSqrt(r2.w);
  let v_19 = (r1.yzw * r2.www);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r4.y = dot(r2.xyz, r2.xyz);
  r4.y = inverseSqrt(r4.y);
  let v_20 = (r2.xyz * r4.yyy);
  r6 = vec4<f32>(v_20.xyz, r6.w);
  let v_21 = -(r6.xxyz);
  let v_22 = fma(r1.yzw, r2.www, v_21.yzw);
  r1 = vec4<f32>(r1.x, v_22.xyz);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = inverseSqrt(r2.w);
  let v_23 = (r1.yzw * r2.www);
  r1 = vec4<f32>(r1.x, v_23.xyz);
  let v_24 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r7.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_25 = -(r7.xyzx);
  r1.x = dot(v_25.xyz, (-(r7.xyzx)).xyz);
  r1.x = sqrt(r1.x);
  let v_26 = ((-(r7.xyzx)).xyz / r1.xxx);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  r1.x = (r1.x * cb6_6.tint_symbol_2[17u].w);
  let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r7 = vec4<f32>(v_27.xyz, r7.w);
  let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r8 = vec4<f32>(v_28.xyz, r8.w);
  let v_29 = -(bitcast<vec4<i32>>(r7.xyzx));
  let v_30 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_29.xyz));
  r7 = vec4<f32>(v_30.xyz, r7.w);
  let v_31 = vec3<f32>(bitcast<vec3<i32>>(r7.zxy));
  r7 = vec4<f32>(v_31.xyz, r7.w);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzxx) >= abs(r2.xyyz))));
  let v_32 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) & bitcast<vec2<u32>>(r8.xz)));
  let v_33 = r4;
  r4 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  let v_34 = (-(r7.yzyy)).xy;
  r8 = vec4<f32>(v_34.xy, r8.zw);
  r8.z = 0.0f;
  r8.w = abs(r2.xxxx).w;
  r9 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r9.zw);
  r9.z = abs(r2.yyyy).z;
  let v_35 = bitcast<vec3<u32>>(r4.www);
  let v_36 = r8.zxw;
  let v_37 = select(r9.xyz, v_36, (v_35 != vec3<u32>()));
  r9 = vec4<f32>(v_37.xyz, r9.w);
  r7.y = 0.0f;
  r7.z = abs(r2.zzzz).z;
  let v_38 = bitcast<vec3<u32>>(r4.yyy);
  let v_39 = r7.xyz;
  let v_40 = select(r9.xyz, v_39, (v_38 != vec3<u32>()));
  r7 = vec4<f32>(v_40.xyz, r7.w);
  let v_41 = abs(r2.yyyy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_41.w)));
  let v_42 = bitcast<vec2<u32>>(r2.ww);
  let v_43 = select(vec2<f32>(1.0f, 0.0f), r8.zy, (v_42 != vec2<u32>()));
  let v_44 = r8;
  r8 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  r2.w = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_45 = (r2.xyz / r2.www);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = (r7.xy * vec2<f32>(-0.5f));
  let v_47 = r9;
  r9 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
  r9.y = 0.0f;
  let v_48 = (r2.xyz + r9.xyz);
  r9 = vec4<f32>(v_48.xyz, r9.w);
  r8.x = 0.0f;
  let v_49 = fma(vec3<f32>(-0.5f), r8.xyz, r9.xyz);
  r10 = vec4<f32>(v_49.xyz, r10.w);
  let v_50 = r10.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r1.x);
  let v_51 = (r7.xy * vec2<f32>(0.5f));
  let v_52 = r7;
  r7 = vec4<f32>(v_51.x, v_52.y, v_51.y, v_52.w);
  r7.y = 0.0f;
  let v_53 = (r2.xyz + r7.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = fma(vec3<f32>(-0.5f), r8.xyz, r2.xyz);
  r7 = vec4<f32>(v_54.xyz, r7.w);
  let v_55 = r7.xyzx;
  r4.y = textureSampleCompareLevel(t14, s14, v_55.xyz, r1.x);
  r2.w = (r2.w + r4.y);
  let v_56 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
  r7 = vec4<f32>(v_56.xyz, r7.w);
  let v_57 = r7.xyzx;
  r4.y = textureSampleCompareLevel(t14, s14, v_57.xyz, r1.x);
  r2.w = (r2.w + r4.y);
  let v_58 = fma(vec3<f32>(0.5f), r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = r2.xyzx;
  r1.x = textureSampleCompareLevel(t14, s14, v_59.xyz, r1.x);
  r1.x = (r1.x + r2.w);
  let v_60 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_60.xyz, r2.w);
  let v_61 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_62 = -(r2.xyzx);
  let v_63 = fma(v_61.xyz, cb12_12.tint_symbol_3[2u].zxy, v_62.xyz);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = -(r5.xyzx);
  r2.x = dot(r2.xyz, v_64.xyz);
  let v_65 = -(r5.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_65.xyz);
  let v_66 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r2.z = dot(v_66.xyz, (-(r5.xyzx)).xyz);
  let v_67 = -(r5.xyzx);
  r2.w = dot(v_67.xyz, (-(r5.xyzx)).xyz);
  r2.w = sqrt(r2.w);
  r2.z = (r2.z / r2.w);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.z = (r2.z * r2.w);
  r2.z = (1.0f / r2.z);
  let v_68 = (r2.zz * r2.xy);
  r2 = vec4<f32>(v_68.xy, r2.zw);
  let v_69 = fma(r2.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r2 = vec4<f32>(v_69.xy, r2.zw);
  let v_70 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f).xyz;
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = dot(r0.xyz, r5.xyz);
  r2.w = clamp(vec4<f32>(v_75, v_75, v_75, v_75).w, 0.0f, 1.0f);
  let v_76 = dot((-(r6.xyzx)).xyz, r0.xyz);
  r6.x = clamp(vec4<f32>(v_76, v_76, v_76, v_76).x, 0.0f, 1.0f);
  let v_77 = dot(r1.yzw, r5.xyz);
  r6.y = clamp(vec4<f32>(v_77, v_77, v_77, v_77).y, 0.0f, 1.0f);
  let v_78 = ((-(r6.xxxy)).yw + vec2<f32>(1.0f));
  let v_79 = r4;
  r4 = vec4<f32>(v_79.x, v_78.x, v_79.z, v_78.y);
  let v_80 = (r4.yw * r4.yw);
  r5 = vec4<f32>(v_80.xy, r5.zw);
  let v_81 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_81.xy, r5.zw);
  let v_82 = (r4.yw * r5.xy);
  let v_83 = r4;
  r4 = vec4<f32>(v_83.x, v_82.x, v_83.z, v_82.y);
  r5.x = ((-(r4.zzzz)).x + 1.0f);
  let v_84 = fma(r4.zz, r4.yw, r5.xx);
  let v_85 = r4;
  r4 = vec4<f32>(v_85.x, v_84.xy, v_85.w);
  let v_86 = (r4.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_86.x, r4.yz, v_86.y);
  r4.x = (r4.x * 0.125f);
  r4.y = fma((-(r0.wwww)).y, r4.y, 1.0f);
  r0.x = dot(r0.xyz, r1.yzw);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r4.w);
  r0.x = exp2(r0.x);
  r0.x = (r4.z * r0.x);
  r0.x = (r4.x * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r2.w * r0.x);
  r0.y = (r2.w * r4.y);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = fma(r1.x, 0.25f, -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_87 = fma(r3.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_87.xy, r0.z, v_87.z);
  let v_88 = (r2.xyz * r0.xyw);
  r0 = vec4<f32>(v_88.xy, r0.z, v_88.z);
  let v_89 = (r3.xxx * r0.xyw);
  r0 = vec4<f32>(v_89.xy, r0.z, v_89.z);
  let v_90 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_91.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_92 : bool) {
  if (v_92) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
