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

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

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

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

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
  let v_6 = ((-(r3.xxyz)).yzw + cb12_12.tint_symbol_3[9u].xyz);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  r2.w = dot(r1.yzw, r1.yzw);
  r4.x = inverseSqrt(r2.w);
  let v_7 = (r1.yzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_7.xyz);
  let v_8 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_3[10u].xyz);
  r5 = vec4<f32>(v_8.xyz, r5.w);
  r5.w = dot(r5.xyz, r5.xyz);
  r6.x = inverseSqrt(r5.w);
  let v_9 = (r5.xyz * r6.xxx);
  r6 = vec4<f32>(r6.x, v_9.xyz);
  r2.w = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r7.x = ((-(cb12_12.tint_symbol_3[7u].xxxx)).x + 1.0f);
  r7.y = fma(r7.x, r2.w, cb12_12.tint_symbol_3[7u].x);
  r2.w = (r2.w / r7.y);
  let v_10 = -(cb12_12.tint_symbol_3[12u].xyzx);
  r7.y = dot(r4.yzw, v_10.xyz);
  r7.y = clamp(fma(r7.yyyy, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).y, 0.0f, 1.0f);
  r2.w = (r2.w * r7.y);
  r3.w = 1.0f;
  r3.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 0.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r2.w = (r2.w * r3.x);
  r3.y = clamp(fma(-(r5.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r3.z = fma(r7.x, r3.y, cb12_12.tint_symbol_3[7u].x);
  r3.y = (r3.y / r3.z);
  let v_11 = -(cb12_12.tint_symbol_3[13u].xyzx);
  r3.z = dot(r6.yzw, v_11.xyz);
  r3.z = clamp(fma(r3.zzzz, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).z, 0.0f, 1.0f);
  r3.y = (r3.z * r3.y);
  r3.x = (r3.x * r3.y);
  r3.y = max(r2.w, r3.x);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < 0.00000099999999747524f)));
  v_12((bitcast<u32>(r3.y) != 0u));
  let v_13 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(r3.x, v_13.xyz);
  let v_14 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_14.xyz);
  let v_15 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_16.xy, r7.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_17 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_17.xyz, r8.w);
  let v_18 = fract(r8.xyz);
  r8 = vec4<f32>(v_18.xyz, r8.w);
  let v_19 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_19.xy, r8.zw);
  let v_20 = fma(r0.xyz, vec3<f32>(256.0f), r8.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r0.w = min(r7.x, 1.0f);
  r5.w = fma(r7.y, 512.0f, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_23 = -(r5.wwww);
  r7.x = fma(r7.y, 512.0f, v_23.x);
  r5.w = (r5.w * 558.0f);
  r5.w = fma(r7.x, 3.0f, r5.w);
  r7.x = dot(r2.xyz, r2.xyz);
  r7.x = inverseSqrt(r7.x);
  let v_24 = (r2.xyz * r7.xxx);
  r7 = vec4<f32>(v_24.xy, r7.z, v_24.z);
  let v_25 = -(r7.xxyw);
  let v_26 = fma(r1.yzw, r4.xxx, v_25.yzw);
  r1 = vec4<f32>(r1.x, v_26.xyz);
  r4.x = dot(r1.yzw, r1.yzw);
  r4.x = inverseSqrt(r4.x);
  let v_27 = (r1.yzw * r4.xxx);
  r1 = vec4<f32>(r1.x, v_27.xyz);
  let v_28 = -(r7.xywx);
  let v_29 = fma(r5.xyz, r6.xxx, v_28.xyz);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r4.x = dot(r5.xyz, r5.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_30 = (r4.xxx * r5.xyz);
  r5 = vec4<f32>(v_30.xyz, r5.w);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r4.x) != 0u)) {
    let v_31 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_31.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_32 = -(r9.xyzx);
    r6.x = dot(v_32.xyz, (-(r9.xyzx)).xyz);
    r6.x = sqrt(r6.x);
    let v_33 = ((-(r9.xyzx)).xyz / r6.xxx);
    r8 = vec4<f32>(v_33.xyz, r8.w);
    r6.x = (r6.x * cb6_6.tint_symbol_2[17u].w);
    let v_34 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_34.xyz, r9.w);
    let v_35 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_35.xyz, r10.w);
    let v_36 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_37 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_36.xyz));
    r9 = vec4<f32>(v_37.xyz, r9.w);
    let v_38 = vec3<f32>(bitcast<vec3<i32>>(r9.zxy));
    r9 = vec4<f32>(v_38.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzxx) >= abs(r8.xyyz))));
    let v_39 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) & bitcast<vec2<u32>>(r10.xz)));
    r10 = vec4<f32>(v_39.xy, r10.zw);
    let v_40 = (-(r9.yzyy)).xy;
    r11 = vec4<f32>(v_40.xy, r11.zw);
    r11.z = 0.0f;
    r11.w = abs(r8.xxxx).w;
    r12 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r12.zw);
    r12.z = abs(r8.yyyy).z;
    let v_41 = bitcast<vec3<u32>>(r10.yyy);
    let v_42 = r11.zxw;
    let v_43 = select(r12.xyz, v_42, (v_41 != vec3<u32>()));
    r10 = vec4<f32>(r10.x, v_43.xyz);
    r9.y = 0.0f;
    r9.z = abs(r8.zzzz).z;
    let v_44 = bitcast<vec3<u32>>(r10.xxx);
    let v_45 = r9.xyz;
    let v_46 = select(r10.yzw, v_45, (v_44 != vec3<u32>()));
    r9 = vec4<f32>(v_46.xyz, r9.w);
    let v_47 = abs(r8.yyyy);
    r8.w = bitcast<f32>(select(0u, 4294967295u, (r9.z == v_47.w)));
    let v_48 = bitcast<vec2<u32>>(r8.ww);
    let v_49 = select(vec2<f32>(1.0f, 0.0f), r11.zy, (v_48 != vec2<u32>()));
    let v_50 = r10;
    r10 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
    r8.w = dot(r9.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_51 = (r8.xyz / r8.www);
    r8 = vec4<f32>(v_51.xyz, r8.w);
    let v_52 = (r9.xy * vec2<f32>(-0.5f));
    let v_53 = r11;
    r11 = vec4<f32>(v_52.x, v_53.y, v_52.y, v_53.w);
    r11.y = 0.0f;
    let v_54 = (r8.xyz + r11.xyz);
    r11 = vec4<f32>(v_54.xyz, r11.w);
    r10.x = 0.0f;
    let v_55 = fma(vec3<f32>(-0.5f), r10.xyz, r11.xyz);
    r12 = vec4<f32>(v_55.xyz, r12.w);
    let v_56 = r12.xyzx;
    r8.w = textureSampleCompareLevel(t14, s14, v_56.xyz, r6.x);
    let v_57 = (r9.xy * vec2<f32>(0.5f));
    let v_58 = r9;
    r9 = vec4<f32>(v_57.x, v_58.y, v_57.y, v_58.w);
    r9.y = 0.0f;
    let v_59 = (r8.xyz + r9.xyz);
    r8 = vec4<f32>(v_59.xyz, r8.w);
    let v_60 = fma(vec3<f32>(-0.5f), r10.xyz, r8.xyz);
    r9 = vec4<f32>(v_60.xyz, r9.w);
    let v_61 = r9.xyzx;
    r9.x = textureSampleCompareLevel(t14, s14, v_61.xyz, r6.x);
    r8.w = (r8.w + r9.x);
    let v_62 = fma(vec3<f32>(0.5f), r10.xyz, r11.xyz);
    r9 = vec4<f32>(v_62.xyz, r9.w);
    let v_63 = r9.xyzx;
    r9.x = textureSampleCompareLevel(t14, s14, v_63.xyz, r6.x);
    r8.w = (r8.w + r9.x);
    let v_64 = fma(vec3<f32>(0.5f), r10.xyz, r8.xyz);
    r8 = vec4<f32>(v_64.xyz, r8.w);
    let v_65 = r8.xyzx;
    r6.x = textureSampleCompareLevel(t14, s14, v_65.xyz, r6.x);
    r6.x = (r6.x + r8.w);
    r6.x = (r6.x * 0.25f);
  } else {
    let v_66 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_66.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.w = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_67 = -(r8.wwww);
    let v_68 = (r9.xy / v_67.xy);
    r9 = vec4<f32>(v_68.xy, r9.zw);
    r8.x = dot(r8.xyz, r8.xyz);
    r8.x = sqrt(r8.x);
    r9.z = (r8.x * cb6_6.tint_symbol_2[17u].w);
    let v_69 = fma(r9.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r8 = vec4<f32>(v_69.xyz, r8.w);
    r9 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r8.xyxy);
    let v_70 = r9.xyxx;
    r8.w = textureSampleCompareLevel(t24, s14, v_70.xy, r8.z);
    let v_71 = r9.zwzz;
    r9.x = textureSampleCompareLevel(t24, s14, v_71.xy, r8.z);
    r8.w = (r8.w + r9.x);
    r9 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r8.xyxy);
    let v_72 = r9.xyxx;
    r8.x = textureSampleCompareLevel(t24, s14, v_72.xy, r8.z);
    r8.x = (r8.x + r8.w);
    let v_73 = r9.zwzz;
    r8.y = textureSampleCompareLevel(t24, s14, v_73.xy, r8.z);
    r8.x = (r8.y + r8.x);
    r6.x = (r8.x * 0.25f);
  }
  let v_74 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r8 = vec4<f32>(v_74.xyz, r8.w);
  if ((bitcast<u32>(r4.x) != 0u)) {
    let v_75 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r9 = vec4<f32>(v_75.xyz, r9.w);
    r10.x = dot(r9.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r9.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r10.z = dot(r9.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_76 = -(r10.xyzx);
    r4.x = dot(v_76.xyz, (-(r10.xyzx)).xyz);
    r4.x = sqrt(r4.x);
    let v_77 = ((-(r10.xyzx)).xyz / r4.xxx);
    r9 = vec4<f32>(v_77.xyz, r9.w);
    r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_78 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r9.xyz)));
    r10 = vec4<f32>(v_78.xyz, r10.w);
    let v_79 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r9.xyz < vec3<f32>())));
    r11 = vec4<f32>(v_79.xyz, r11.w);
    let v_80 = -(bitcast<vec4<i32>>(r10.xyzx));
    let v_81 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r11.xyz) + v_80.xyz));
    r10 = vec4<f32>(v_81.xyz, r10.w);
    let v_82 = vec3<f32>(bitcast<vec3<i32>>(r10.zxy));
    r10 = vec4<f32>(v_82.xyz, r10.w);
    r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r9.zzxx) >= abs(r9.xyyz))));
    let v_83 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r11.yw) & bitcast<vec2<u32>>(r11.xz)));
    r11 = vec4<f32>(v_83.xy, r11.zw);
    let v_84 = (-(r10.yzyy)).xy;
    r12 = vec4<f32>(v_84.xy, r12.zw);
    r12.z = 0.0f;
    r12.w = abs(r9.xxxx).w;
    r13 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r13.zw);
    r13.z = abs(r9.yyyy).z;
    let v_85 = bitcast<vec3<u32>>(r11.yyy);
    let v_86 = r12.zxw;
    let v_87 = select(r13.xyz, v_86, (v_85 != vec3<u32>()));
    r11 = vec4<f32>(r11.x, v_87.xyz);
    r10.y = 0.0f;
    r10.z = abs(r9.zzzz).z;
    let v_88 = bitcast<vec3<u32>>(r11.xxx);
    let v_89 = r10.xyz;
    let v_90 = select(r11.yzw, v_89, (v_88 != vec3<u32>()));
    r10 = vec4<f32>(v_90.xyz, r10.w);
    let v_91 = abs(r9.yyyy);
    r8.w = bitcast<f32>(select(0u, 4294967295u, (r10.z == v_91.w)));
    let v_92 = bitcast<vec2<u32>>(r8.ww);
    let v_93 = select(vec2<f32>(1.0f, 0.0f), r12.zy, (v_92 != vec2<u32>()));
    let v_94 = r11;
    r11 = vec4<f32>(v_94.x, v_93.xy, v_94.w);
    r8.w = dot(r10.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_95 = (r9.xyz / r8.www);
    r9 = vec4<f32>(v_95.xyz, r9.w);
    let v_96 = (r10.xy * vec2<f32>(-0.5f));
    let v_97 = r12;
    r12 = vec4<f32>(v_96.x, v_97.y, v_96.y, v_97.w);
    r12.y = 0.0f;
    let v_98 = (r9.xyz + r12.xyz);
    r12 = vec4<f32>(v_98.xyz, r12.w);
    r11.x = 0.0f;
    let v_99 = fma(vec3<f32>(-0.5f), r11.xyz, r12.xyz);
    r13 = vec4<f32>(v_99.xyz, r13.w);
    let v_100 = r13.xyzx;
    r8.w = textureSampleCompareLevel(t14, s14, v_100.xyz, r4.x);
    let v_101 = (r10.xy * vec2<f32>(0.5f));
    let v_102 = r10;
    r10 = vec4<f32>(v_101.x, v_102.y, v_101.y, v_102.w);
    r10.y = 0.0f;
    let v_103 = (r9.xyz + r10.xyz);
    r9 = vec4<f32>(v_103.xyz, r9.w);
    let v_104 = fma(vec3<f32>(-0.5f), r11.xyz, r9.xyz);
    r10 = vec4<f32>(v_104.xyz, r10.w);
    let v_105 = r10.xyzx;
    r9.w = textureSampleCompareLevel(t14, s14, v_105.xyz, r4.x);
    r8.w = (r8.w + r9.w);
    let v_106 = fma(vec3<f32>(0.5f), r11.xyz, r12.xyz);
    r10 = vec4<f32>(v_106.xyz, r10.w);
    let v_107 = r10.xyzx;
    r9.w = textureSampleCompareLevel(t14, s14, v_107.xyz, r4.x);
    r8.w = (r8.w + r9.w);
    let v_108 = fma(vec3<f32>(0.5f), r11.xyz, r9.xyz);
    r9 = vec4<f32>(v_108.xyz, r9.w);
    let v_109 = r9.xyzx;
    r4.x = textureSampleCompareLevel(t14, s14, v_109.xyz, r4.x);
    r4.x = (r4.x + r8.w);
    r4.x = (r4.x * 0.25f);
  } else {
    let v_110 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_110.xyz, r2.w);
    r9.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_111 = -(r1.xxxx);
    let v_112 = (r9.xy / v_111.xy);
    r9 = vec4<f32>(v_112.xy, r9.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r9.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_113 = fma(r9.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_113.xyz, r2.w);
    r9 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_114 = r9.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_114.xy, r2.z);
    let v_115 = r9.zwzz;
    r8.w = textureSampleCompareLevel(t24, s14, v_115.xy, r2.z);
    r1.x = (r1.x + r8.w);
    r9 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_116 = r9.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_116.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_117 = r9.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_117.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r4.x = (r1.x * 0.25f);
  }
  let v_118 = dot(r0.xyz, r4.yzw);
  r1.x = clamp(vec4<f32>(v_118, v_118, v_118, v_118).x, 0.0f, 1.0f);
  let v_119 = dot((-(r7.xywx)).xyz, r0.xyz);
  r2.x = clamp(vec4<f32>(v_119, v_119, v_119, v_119).x, 0.0f, 1.0f);
  let v_120 = dot(r1.yzw, r4.yzw);
  r2.y = clamp(vec4<f32>(v_120, v_120, v_120, v_120).y, 0.0f, 1.0f);
  let v_121 = ((-(r2.xxyx)).yz + vec2<f32>(1.0f));
  let v_122 = r4;
  r4 = vec4<f32>(v_122.x, v_121.xy, v_122.w);
  let v_123 = (r4.yz * r4.yz);
  r7 = vec4<f32>(v_123.xy, r7.zw);
  let v_124 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_124.xy, r7.zw);
  let v_125 = (r4.yz * r7.xy);
  let v_126 = r4;
  r4 = vec4<f32>(v_126.x, v_125.xy, v_126.w);
  r2.y = ((-(r7.zzzz)).y + 1.0f);
  let v_127 = fma(r7.zz, r4.yz, r2.yy);
  let v_128 = r4;
  r4 = vec4<f32>(v_128.x, v_127.xy, v_128.w);
  let v_129 = (r5.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_129.xy, r7.zw);
  r4.w = (r7.x * 0.125f);
  r4.y = fma((-(r0.wwww)).y, r4.y, 1.0f);
  r1.y = dot(r0.xyz, r1.yzw);
  r1.y = clamp(((r1.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r1.y = log2(r1.y);
  r1.y = (r1.y * r7.y);
  r1.y = exp2(r1.y);
  r1.y = (r4.z * r1.y);
  r1.y = (r4.w * r1.y);
  r1.y = (r0.w * r1.y);
  r1.y = (r1.x * r1.y);
  r1.x = (r1.x * r4.y);
  let v_130 = dot(r0.xyz, r6.yzw);
  r1.z = clamp(vec4<f32>(v_130, v_130, v_130, v_130).z, 0.0f, 1.0f);
  let v_131 = dot(r5.xyz, r6.yzw);
  r2.z = clamp(vec4<f32>(v_131, v_131, v_131, v_131).z, 0.0f, 1.0f);
  let v_132 = ((-(r2.xxzx)).xz + vec2<f32>(1.0f));
  let v_133 = r2;
  r2 = vec4<f32>(v_132.x, v_133.y, v_132.y, v_133.w);
  let v_134 = (r2.xz * r2.xz);
  let v_135 = r4;
  r4 = vec4<f32>(v_135.x, v_134.xy, v_135.w);
  let v_136 = (r4.yz * r4.yz);
  let v_137 = r4;
  r4 = vec4<f32>(v_137.x, v_136.xy, v_137.w);
  let v_138 = (r2.xz * r4.yz);
  let v_139 = r2;
  r2 = vec4<f32>(v_138.x, v_139.y, v_138.y, v_139.w);
  let v_140 = fma(r7.zz, r2.xz, r2.yy);
  r2 = vec4<f32>(v_140.xy, r2.zw);
  r1.w = fma((-(r0.wwww)).w, r2.x, 1.0f);
  r0.x = dot(r0.xyz, r5.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r7.y);
  r0.x = exp2(r0.x);
  r0.x = (r2.y * r0.x);
  r0.x = (r4.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r1.z * r0.x);
  r0.y = (r1.w * r1.z);
  r0.z = (r1.y * cb12_12.tint_symbol_3[8u].z);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.w = (r6.x + -1.0f);
  r0.w = fma(cb12_12.tint_symbol_3[8u].y, r0.w, 1.0f);
  r1.y = (r4.x + -1.0f);
  r1.y = fma(cb12_12.tint_symbol_3[8u].y, r1.y, 1.0f);
  let v_141 = fma(r3.yzw, r1.xxx, r0.zzz);
  r1 = vec4<f32>(v_141.x, r1.y, v_141.yz);
  let v_142 = (r8.xyz * r1.xzw);
  r1 = vec4<f32>(v_142.x, r1.y, v_142.yz);
  let v_143 = (r2.www * r1.xzw);
  r1 = vec4<f32>(v_143.x, r1.y, v_143.yz);
  let v_144 = fma(r3.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_144.xyz, r0.w);
  let v_145 = (r8.xyz * r0.xyz);
  r0 = vec4<f32>(v_145.xyz, r0.w);
  let v_146 = (r3.xxx * r0.xyz);
  r0 = vec4<f32>(v_146.xyz, r0.w);
  let v_147 = (r1.yyy * r0.xyz);
  r0 = vec4<f32>(v_147.xyz, r0.w);
  let v_148 = fma(r1.xzw, r0.www, r0.xyz);
  r0 = vec4<f32>(v_148.xyz, r0.w);
  let v_149 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_149.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_12(v_150 : bool) {
  if (v_150) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
