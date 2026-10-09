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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  let v_74 = -(cb12_12.tint_symbol_3[12u].zxyz);
  let v_75 = (cb12_12.tint_symbol_3[2u].yzx * v_74.xyz);
  r8 = vec4<f32>(v_75.xyz, r8.w);
  let v_76 = -(cb12_12.tint_symbol_3[12u].yzxy);
  let v_77 = -(r8.xyzx);
  let v_78 = fma(v_76.xyz, cb12_12.tint_symbol_3[2u].zxy, v_77.xyz);
  r8 = vec4<f32>(v_78.xyz, r8.w);
  let v_79 = -(r4.yzwy);
  r8.x = dot(r8.xyz, v_79.xyz);
  let v_80 = -(r4.yzwy);
  r8.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_80.xyz);
  r8.z = dot(v_10.xyz, (-(r4.yzwy)).xyz);
  r8.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r8.w = sqrt(r8.w);
  r8.w = (cb12_12.tint_symbol_3[5u].x / r8.w);
  r8.w = (r8.w * 0.5f);
  r8.z = (r8.w / r8.z);
  let v_81 = clamp(fma(r8.xyxx, r8.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_81.xy, r8.zw);
  r9.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r9.y = ((-(r8.yyyy)).y + 1.0f);
  let v_82 = bitcast<u32>(r9.x);
  let v_83 = r9.y;
  r8.z = select(r8.y, v_83, (v_82 != 0u));
  let v_84 = textureSampleLevel(t2, s2, r8.xzxx.xy, 0.0f).xyz;
  r8 = vec4<f32>(v_84.xyz, r8.w);
  let v_85 = fma(r8.xyz, r8.xyz, vec3<f32>(-1.0f));
  r8 = vec4<f32>(v_85.xyz, r8.w);
  let v_86 = fma(cb12_12.tint_symbol_3[11u].yyy, r8.xyz, vec3<f32>(1.0f));
  r8 = vec4<f32>(v_86.xyz, r8.w);
  let v_87 = (r8.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r8 = vec4<f32>(v_87.xyz, r8.w);
  let v_88 = (r8.xyz * cb12_12.tint_symbol_3[3u].www);
  r8 = vec4<f32>(v_88.xyz, r8.w);
  if ((bitcast<u32>(r4.x) != 0u)) {
    let v_89 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r9 = vec4<f32>(r9.x, v_89.xyz);
    r10.x = dot(r9.yzw, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r9.yzw, cb6_6.tint_symbol_2[16u].xyz);
    r10.z = dot(r9.yzw, cb6_6.tint_symbol_2[17u].xyz);
    let v_90 = -(r10.xyzx);
    r4.x = dot(v_90.xyz, (-(r10.xyzx)).xyz);
    r4.x = sqrt(r4.x);
    let v_91 = ((-(r10.xxyz)).yzw / r4.xxx);
    r9 = vec4<f32>(r9.x, v_91.xyz);
    r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_92 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r9.yzw)));
    r10 = vec4<f32>(v_92.xyz, r10.w);
    let v_93 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r9.yzw < vec3<f32>())));
    r11 = vec4<f32>(v_93.xyz, r11.w);
    let v_94 = -(bitcast<vec4<i32>>(r10.xyzx));
    let v_95 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r11.xyz) + v_94.xyz));
    r10 = vec4<f32>(v_95.xyz, r10.w);
    let v_96 = vec3<f32>(bitcast<vec3<i32>>(r10.zxy));
    r10 = vec4<f32>(v_96.xyz, r10.w);
    r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r9.wwyy) >= abs(r9.yzzw))));
    let v_97 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r11.yw) & bitcast<vec2<u32>>(r11.xz)));
    r11 = vec4<f32>(v_97.xy, r11.zw);
    let v_98 = (-(r10.yzyy)).xy;
    r12 = vec4<f32>(v_98.xy, r12.zw);
    r12.z = 0.0f;
    r12.w = abs(r9.yyyy).w;
    r13 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r13.zw);
    r13.z = abs(r9.zzzz).z;
    let v_99 = bitcast<vec3<u32>>(r11.yyy);
    let v_100 = r12.zxw;
    let v_101 = select(r13.xyz, v_100, (v_99 != vec3<u32>()));
    r11 = vec4<f32>(r11.x, v_101.xyz);
    r10.y = 0.0f;
    r10.z = abs(r9.wwww).z;
    let v_102 = bitcast<vec3<u32>>(r11.xxx);
    let v_103 = r10.xyz;
    let v_104 = select(r11.yzw, v_103, (v_102 != vec3<u32>()));
    r10 = vec4<f32>(v_104.xyz, r10.w);
    let v_105 = abs(r9.zzzz);
    r10.w = bitcast<f32>(select(0u, 4294967295u, (r10.z == v_105.w)));
    let v_106 = bitcast<vec2<u32>>(r10.ww);
    let v_107 = select(vec2<f32>(1.0f, 0.0f), r12.zy, (v_106 != vec2<u32>()));
    let v_108 = r11;
    r11 = vec4<f32>(v_108.x, v_107.xy, v_108.w);
    r10.z = dot(r10.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_109 = (r9.yzw / r10.zzz);
    r9 = vec4<f32>(r9.x, v_109.xyz);
    let v_110 = (r10.xy * vec2<f32>(-0.5f));
    let v_111 = r12;
    r12 = vec4<f32>(v_110.x, v_111.y, v_110.y, v_111.w);
    r12.y = 0.0f;
    let v_112 = (r9.yzw + r12.xyz);
    r12 = vec4<f32>(v_112.xyz, r12.w);
    r11.x = 0.0f;
    let v_113 = fma(vec3<f32>(-0.5f), r11.xyz, r12.xyz);
    r13 = vec4<f32>(v_113.xyz, r13.w);
    let v_114 = r13.xyzx;
    r10.z = textureSampleCompareLevel(t14, s14, v_114.xyz, r4.x);
    let v_115 = (r10.xy * vec2<f32>(0.5f));
    let v_116 = r13;
    r13 = vec4<f32>(v_115.x, v_116.y, v_115.y, v_116.w);
    r13.y = 0.0f;
    let v_117 = (r9.yzw + r13.xyz);
    r9 = vec4<f32>(r9.x, v_117.xyz);
    let v_118 = fma(vec3<f32>(-0.5f), r11.xyz, r9.yzw);
    r10 = vec4<f32>(v_118.xy, r10.z, v_118.z);
    let v_119 = r10.xywx;
    r10.x = textureSampleCompareLevel(t14, s14, v_119.xyz, r4.x);
    r10.x = (r10.x + r10.z);
    let v_120 = fma(vec3<f32>(0.5f), r11.xyz, r12.xyz);
    r10 = vec4<f32>(r10.x, v_120.xyz);
    let v_121 = r10.yzwy;
    r10.y = textureSampleCompareLevel(t14, s14, v_121.xyz, r4.x);
    r10.x = (r10.y + r10.x);
    let v_122 = fma(vec3<f32>(0.5f), r11.xyz, r9.yzw);
    r9 = vec4<f32>(r9.x, v_122.xyz);
    let v_123 = r9.yzwy;
    r4.x = textureSampleCompareLevel(t14, s14, v_123.xyz, r4.x);
    r4.x = (r4.x + r10.x);
    r4.x = (r4.x * 0.25f);
  } else {
    let v_124 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_124.xyz, r2.w);
    r10.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_125 = -(r1.xxxx);
    let v_126 = (r10.xy / v_125.xy);
    r10 = vec4<f32>(v_126.xy, r10.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r10.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_127 = fma(r10.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_127.xyz, r2.w);
    r10 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_128 = r10.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_128.xy, r2.z);
    let v_129 = r10.zwzz;
    r9.y = textureSampleCompareLevel(t24, s14, v_129.xy, r2.z);
    r1.x = (r1.x + r9.y);
    r10 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_130 = r10.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_130.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_131 = r10.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_131.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r4.x = (r1.x * 0.25f);
  }
  let v_132 = -(cb12_12.tint_symbol_3[13u].zxyz);
  let v_133 = (cb12_12.tint_symbol_3[2u].yzx * v_132.xyz);
  r2 = vec4<f32>(v_133.xyz, r2.w);
  let v_134 = -(cb12_12.tint_symbol_3[13u].yzxy);
  let v_135 = -(r2.xyzx);
  let v_136 = fma(v_134.xyz, cb12_12.tint_symbol_3[2u].zxy, v_135.xyz);
  r2 = vec4<f32>(v_136.xyz, r2.w);
  let v_137 = -(r6.yzwy);
  r2.x = dot(r2.xyz, v_137.xyz);
  let v_138 = -(r6.yzwy);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_138.xyz);
  r1.x = dot(v_11.xyz, (-(r6.yzwy)).xyz);
  r1.x = (r8.w / r1.x);
  let v_139 = clamp(fma(r2.xyxx, r1.xxxx, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_139.xy, r2.zw);
  r1.x = ((-(r2.yyyy)).x + 1.0f);
  let v_140 = bitcast<u32>(r9.x);
  let v_141 = r1.x;
  r2.z = select(r2.y, v_141, (v_140 != 0u));
  let v_142 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f).xyz;
  r2 = vec4<f32>(v_142.xyz, r2.w);
  let v_143 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_143.xyz, r2.w);
  let v_144 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_144.xyz, r2.w);
  let v_145 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_145.xyz, r2.w);
  let v_146 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_146.xyz, r2.w);
  let v_147 = dot(r0.xyz, r4.yzw);
  r1.x = clamp(vec4<f32>(v_147, v_147, v_147, v_147).x, 0.0f, 1.0f);
  let v_148 = dot((-(r7.xywx)).xyz, r0.xyz);
  r9.x = clamp(vec4<f32>(v_148, v_148, v_148, v_148).x, 0.0f, 1.0f);
  let v_149 = dot(r1.yzw, r4.yzw);
  r9.y = clamp(vec4<f32>(v_149, v_149, v_149, v_149).y, 0.0f, 1.0f);
  let v_150 = ((-(r9.xxyx)).yz + vec2<f32>(1.0f));
  let v_151 = r4;
  r4 = vec4<f32>(v_151.x, v_150.xy, v_151.w);
  let v_152 = (r4.yz * r4.yz);
  r7 = vec4<f32>(v_152.xy, r7.zw);
  let v_153 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_153.xy, r7.zw);
  let v_154 = (r4.yz * r7.xy);
  let v_155 = r4;
  r4 = vec4<f32>(v_155.x, v_154.xy, v_155.w);
  r4.w = ((-(r7.zzzz)).w + 1.0f);
  let v_156 = fma(r7.zz, r4.yz, r4.ww);
  let v_157 = r4;
  r4 = vec4<f32>(v_157.x, v_156.xy, v_157.w);
  let v_158 = (r5.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_158.xy, r7.zw);
  r5.w = (r7.x * 0.125f);
  r4.y = fma((-(r0.wwww)).y, r4.y, 1.0f);
  r1.y = dot(r0.xyz, r1.yzw);
  r1.y = clamp(((r1.yyyy + vec4<f32>(0.00000000999999993923f))).y, 0.0f, 1.0f);
  r1.y = log2(r1.y);
  r1.y = (r1.y * r7.y);
  r1.y = exp2(r1.y);
  r1.y = (r4.z * r1.y);
  r1.y = (r5.w * r1.y);
  r1.y = (r0.w * r1.y);
  r1.y = (r1.x * r1.y);
  r1.x = (r1.x * r4.y);
  let v_159 = dot(r0.xyz, r6.yzw);
  r1.z = clamp(vec4<f32>(v_159, v_159, v_159, v_159).z, 0.0f, 1.0f);
  let v_160 = dot(r5.xyz, r6.yzw);
  r9.z = clamp(vec4<f32>(v_160, v_160, v_160, v_160).z, 0.0f, 1.0f);
  let v_161 = ((-(r9.xxzx)).yz + vec2<f32>(1.0f));
  let v_162 = r4;
  r4 = vec4<f32>(v_162.x, v_161.xy, v_162.w);
  let v_163 = (r4.yz * r4.yz);
  let v_164 = r6;
  r6 = vec4<f32>(v_164.x, v_163.xy, v_164.w);
  let v_165 = (r6.yz * r6.yz);
  let v_166 = r6;
  r6 = vec4<f32>(v_166.x, v_165.xy, v_166.w);
  let v_167 = (r4.yz * r6.yz);
  let v_168 = r4;
  r4 = vec4<f32>(v_168.x, v_167.xy, v_168.w);
  let v_169 = fma(r7.zz, r4.yz, r4.ww);
  let v_170 = r4;
  r4 = vec4<f32>(v_170.x, v_169.xy, v_170.w);
  r1.w = fma((-(r0.wwww)).w, r4.y, 1.0f);
  r0.x = dot(r0.xyz, r5.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r7.y);
  r0.x = exp2(r0.x);
  r0.x = (r4.z * r0.x);
  r0.x = (r5.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r1.z * r0.x);
  r0.y = (r1.w * r1.z);
  r0.z = (r1.y * cb12_12.tint_symbol_3[8u].z);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.w = (r6.x + -1.0f);
  r0.w = fma(cb12_12.tint_symbol_3[8u].y, r0.w, 1.0f);
  r1.y = (r4.x + -1.0f);
  r1.y = fma(cb12_12.tint_symbol_3[8u].y, r1.y, 1.0f);
  let v_171 = fma(r3.yzw, r1.xxx, r0.zzz);
  r1 = vec4<f32>(v_171.x, r1.y, v_171.yz);
  let v_172 = (r8.xyz * r1.xzw);
  r1 = vec4<f32>(v_172.x, r1.y, v_172.yz);
  let v_173 = (r2.www * r1.xzw);
  r1 = vec4<f32>(v_173.x, r1.y, v_173.yz);
  let v_174 = fma(r3.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_174.xyz, r0.w);
  let v_175 = (r2.xyz * r0.xyz);
  r0 = vec4<f32>(v_175.xyz, r0.w);
  let v_176 = (r3.xxx * r0.xyz);
  r0 = vec4<f32>(v_176.xyz, r0.w);
  let v_177 = (r1.yyy * r0.xyz);
  r0 = vec4<f32>(v_177.xyz, r0.w);
  let v_178 = fma(r1.xzw, r0.www, r0.xyz);
  r0 = vec4<f32>(v_178.xyz, r0.w);
  let v_179 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_179.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_12(v_180 : bool) {
  if (v_180) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
