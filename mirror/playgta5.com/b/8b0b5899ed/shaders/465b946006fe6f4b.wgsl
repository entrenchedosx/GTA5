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

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

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
  r3.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r3.y = bitcast<f32>((bitcast<u32>(r3.y) & 8u));
  r3.y = f32(bitcast<u32>(r3.y));
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y >= 8.0f)));
  r3.y = bitcast<f32>((bitcast<u32>(r3.y) & 1065353216u));
  let v_8 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = (r5.xy * r5.xy);
  r3 = vec4<f32>(r3.xy, v_11.xy);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_12 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_12.xy, r5.z, v_12.z);
  let v_13 = fract(r5.xyw);
  r5 = vec4<f32>(v_13.xy, r5.z, v_13.z);
  let v_14 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_14.xy, r5.zw);
  let v_15 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyw);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_17 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r0.w = min(r3.z, 1.0f);
  r3.z = fma(r3.w, 512.0f, -500.0f);
  r3.z = max(r3.z, 0.0f);
  let v_18 = -(r3.zzzz);
  r3.w = fma(r3.w, 512.0f, v_18.w);
  r3.z = (r3.z * 558.0f);
  r3.z = fma(r3.w, 3.0f, r3.z);
  r2.w = inverseSqrt(r2.w);
  let v_19 = (r1.yzw * r2.www);
  r5 = vec4<f32>(v_19.xy, r5.z, v_19.z);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_20 = (r2.xyz * r3.www);
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
  r8 = vec4<f32>(v_32.xy, r8.zw);
  let v_33 = (-(r7.yzyy)).xy;
  r9 = vec4<f32>(v_33.xy, r9.zw);
  r9.z = 0.0f;
  r9.w = abs(r2.xxxx).w;
  r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
  r10.z = abs(r2.yyyy).z;
  let v_34 = bitcast<vec3<u32>>(r8.yyy);
  let v_35 = r9.zxw;
  let v_36 = select(r10.xyz, v_35, (v_34 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_36.xyz);
  r7.y = 0.0f;
  r7.z = abs(r2.zzzz).z;
  let v_37 = bitcast<vec3<u32>>(r8.xxx);
  let v_38 = r7.xyz;
  let v_39 = select(r8.yzw, v_38, (v_37 != vec3<u32>()));
  r7 = vec4<f32>(v_39.xyz, r7.w);
  let v_40 = abs(r2.yyyy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_40.w)));
  let v_41 = bitcast<vec2<u32>>(r2.ww);
  let v_42 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_41 != vec2<u32>()));
  let v_43 = r8;
  r8 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  r2.w = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_44 = (r2.xyz / r2.www);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = (r7.xy * vec2<f32>(-0.5f));
  let v_46 = r9;
  r9 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
  r9.y = 0.0f;
  let v_47 = (r2.xyz + r9.xyz);
  r9 = vec4<f32>(v_47.xyz, r9.w);
  r8.x = 0.0f;
  let v_48 = fma(vec3<f32>(-0.5f), r8.xyz, r9.xyz);
  r10 = vec4<f32>(v_48.xyz, r10.w);
  let v_49 = r10.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_49.xyz, r1.x);
  let v_50 = (r7.xy * vec2<f32>(0.5f));
  let v_51 = r7;
  r7 = vec4<f32>(v_50.x, v_51.y, v_50.y, v_51.w);
  r7.y = 0.0f;
  let v_52 = (r2.xyz + r7.xyz);
  r2 = vec4<f32>(v_52.xyz, r2.w);
  let v_53 = fma(vec3<f32>(-0.5f), r8.xyz, r2.xyz);
  r7 = vec4<f32>(v_53.xyz, r7.w);
  let v_54 = r7.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_54.xyz, r1.x);
  r2.w = (r2.w + r3.w);
  let v_55 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
  r7 = vec4<f32>(v_55.xyz, r7.w);
  let v_56 = r7.xyzx;
  r3.w = textureSampleCompareLevel(t14, s14, v_56.xyz, r1.x);
  r2.w = (r2.w + r3.w);
  let v_57 = fma(vec3<f32>(0.5f), r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  let v_58 = r2.xyzx;
  r1.x = textureSampleCompareLevel(t14, s14, v_58.xyz, r1.x);
  r1.x = (r1.x + r2.w);
  r2.x = (r3.y * r3.x);
  let v_59 = ((-(cb12_12.tint_symbol_3[1u].zzxy)).yzw * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(r2.x, v_59.xyz);
  let v_60 = -(cb12_12.tint_symbol_3[1u].yyzx);
  let v_61 = -(r2.yyzw);
  let v_62 = fma(v_60.yzw, cb12_12.tint_symbol_3[2u].zxy, v_61.yzw);
  r2 = vec4<f32>(r2.x, v_62.xyz);
  let v_63 = -(r5.xywx);
  r3.x = dot(r2.yzw, v_63.xyz);
  let v_64 = -(r5.xywx);
  r3.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_64.xyz);
  let v_65 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r2.y = dot(v_65.xyz, (-(r5.xywx)).xyz);
  let v_66 = -(r5.xywx);
  r2.z = dot(v_66.xyz, (-(r5.xywx)).xyz);
  r2.z = sqrt(r2.z);
  r2.y = (r2.y / r2.z);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.y = (r2.y * r2.z);
  r2.y = (1.0f / r2.y);
  let v_67 = (r2.yy * r3.xy);
  let v_68 = r2;
  r2 = vec4<f32>(v_68.x, v_67.xy, v_68.w);
  let v_69 = fma(r2.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
  let v_70 = r2;
  r2 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
  let v_71 = textureSampleLevel(t2, s2, r2.yzyy.xy, 0.0f).xyz;
  r2 = vec4<f32>(r2.x, v_71.xyz);
  let v_72 = fma(r2.yzw, r2.yzw, vec3<f32>(-1.0f));
  r2 = vec4<f32>(r2.x, v_72.xyz);
  let v_73 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.yzw, vec3<f32>(1.0f));
  r2 = vec4<f32>(r2.x, v_73.xyz);
  let v_74 = (r2.yzw * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(r2.x, v_74.xyz);
  let v_75 = (r2.yzw * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(r2.x, v_75.xyz);
  let v_76 = dot(r0.xyz, r5.xyw);
  r3.x = clamp(vec4<f32>(v_76, v_76, v_76, v_76).x, 0.0f, 1.0f);
  let v_77 = dot((-(r6.xyzx)).xyz, r0.xyz);
  r6.x = clamp(vec4<f32>(v_77, v_77, v_77, v_77).x, 0.0f, 1.0f);
  let v_78 = dot(r1.yzw, r5.xyw);
  r6.y = clamp(vec4<f32>(v_78, v_78, v_78, v_78).y, 0.0f, 1.0f);
  let v_79 = ((-(r6.xxxy)).yw + vec2<f32>(1.0f));
  let v_80 = r3;
  r3 = vec4<f32>(v_80.x, v_79.x, v_80.z, v_79.y);
  let v_81 = (r3.yw * r3.yw);
  r5 = vec4<f32>(v_81.xy, r5.zw);
  let v_82 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_82.xy, r5.zw);
  let v_83 = (r3.yw * r5.xy);
  let v_84 = r3;
  r3 = vec4<f32>(v_84.x, v_83.x, v_84.z, v_83.y);
  r4.w = ((-(r5.zzzz)).w + 1.0f);
  let v_85 = fma(r5.zz, r3.yw, r4.ww);
  let v_86 = r3;
  r3 = vec4<f32>(v_86.x, v_85.x, v_86.z, v_85.y);
  let v_87 = (r3.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_87.xy, r5.zw);
  r3.z = (r5.x * 0.125f);
  r3.y = fma((-(r0.wwww)).y, r3.y, 1.0f);
  r0.x = dot(r0.xyz, r1.yzw);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r5.y);
  r0.x = exp2(r0.x);
  r0.x = (r3.w * r0.x);
  r0.x = (r3.z * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r3.x * r0.x);
  r0.y = (r3.y * r3.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = fma(r1.x, 0.25f, -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_88 = fma(r4.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_88.xy, r0.z, v_88.z);
  let v_89 = (r2.yzw * r0.xyw);
  r0 = vec4<f32>(v_89.xy, r0.z, v_89.z);
  let v_90 = (r2.xxx * r0.xyw);
  r0 = vec4<f32>(v_90.xy, r0.z, v_90.z);
  let v_91 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_92.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_93 : bool) {
  if (v_93) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
