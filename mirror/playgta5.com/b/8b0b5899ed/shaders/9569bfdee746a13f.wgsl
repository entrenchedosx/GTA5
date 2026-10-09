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
  let v_6 = ((-(r3.xxyz)).yzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  r2.w = dot(r1.yzw, r1.yzw);
  r4.x = inverseSqrt(r2.w);
  let v_7 = (r1.yzw * r4.xxx);
  r4 = vec4<f32>(r4.x, v_7.xyz);
  r2.w = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.x = ((-(cb12_12.tint_symbol_3[7u].xxxx)).x + 1.0f);
  r5.x = fma(r5.x, r2.w, cb12_12.tint_symbol_3[7u].x);
  r2.w = (r2.w / r5.x);
  let v_8 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r5.x = dot(r4.yzw, v_8.xyz);
  r5.x = clamp(fma(r5.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r2.w = (r2.w * r5.x);
  r3.w = 1.0f;
  r3.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 0.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r2.w = (r2.w * r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r2.w < 0.00000099999999747524f)));
  v_9((bitcast<u32>(r3.x) != 0u));
  r3.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 8u));
  r3.x = f32(bitcast<u32>(r3.x));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 8.0f)));
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(r3.x, v_10.xyz);
  let v_11 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_11.xyz);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_13.xy, r5.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_14 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = fract(r6.xyz);
  r6 = vec4<f32>(v_15.xyz, r6.w);
  let v_16 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_16.xy, r6.zw);
  let v_17 = fma(r0.xyz, vec3<f32>(256.0f), r6.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = min(r5.x, 1.0f);
  r5.x = fma(r5.y, 512.0f, -500.0f);
  r5.x = max(r5.x, 0.0f);
  let v_20 = -(r5.xxxx);
  r5.y = fma(r5.y, 512.0f, v_20.y);
  r5.x = (r5.x * 558.0f);
  r5.x = fma(r5.y, 3.0f, r5.x);
  r5.y = dot(r2.xyz, r2.xyz);
  r5.y = inverseSqrt(r5.y);
  let v_21 = (r2.xyz * r5.yyy);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = -(r6.xxyz);
  let v_23 = fma(r1.yzw, r4.xxx, v_22.yzw);
  r1 = vec4<f32>(r1.x, v_23.xyz);
  r4.x = dot(r1.yzw, r1.yzw);
  r4.x = inverseSqrt(r4.x);
  let v_24 = (r1.yzw * r4.xxx);
  r1 = vec4<f32>(r1.x, v_24.xyz);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r4.x) != 0u)) {
    let v_25 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r7 = vec4<f32>(v_25.xyz, r7.w);
    r8.x = dot(r7.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r7.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.z = dot(r7.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_26 = -(r8.xyzx);
    r4.x = dot(v_26.xyz, (-(r8.xyzx)).xyz);
    r4.x = sqrt(r4.x);
    let v_27 = ((-(r8.xyzx)).xyz / r4.xxx);
    r7 = vec4<f32>(v_27.xyz, r7.w);
    r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r7.xyz)));
    r8 = vec4<f32>(v_28.xyz, r8.w);
    let v_29 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r7.xyz < vec3<f32>())));
    r9 = vec4<f32>(v_29.xyz, r9.w);
    let v_30 = -(bitcast<vec4<i32>>(r8.xyzx));
    let v_31 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_30.xyz));
    r8 = vec4<f32>(v_31.xyz, r8.w);
    let v_32 = vec3<f32>(bitcast<vec3<i32>>(r8.zxy));
    r8 = vec4<f32>(v_32.xyz, r8.w);
    r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r7.zzxx) >= abs(r7.xyyz))));
    let v_33 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) & bitcast<vec2<u32>>(r9.xz)));
    let v_34 = r5;
    r5 = vec4<f32>(v_34.x, v_33.x, v_34.z, v_33.y);
    let v_35 = (-(r8.yzyy)).xy;
    r9 = vec4<f32>(v_35.xy, r9.zw);
    r9.z = 0.0f;
    r9.w = abs(r7.xxxx).w;
    r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
    r10.z = abs(r7.yyyy).z;
    let v_36 = bitcast<vec3<u32>>(r5.www);
    let v_37 = r9.zxw;
    let v_38 = select(r10.xyz, v_37, (v_36 != vec3<u32>()));
    r10 = vec4<f32>(v_38.xyz, r10.w);
    r8.y = 0.0f;
    r8.z = abs(r7.zzzz).z;
    let v_39 = bitcast<vec3<u32>>(r5.yyy);
    let v_40 = r8.xyz;
    let v_41 = select(r10.xyz, v_40, (v_39 != vec3<u32>()));
    r8 = vec4<f32>(v_41.xyz, r8.w);
    let v_42 = abs(r7.yyyy);
    r5.y = bitcast<f32>(select(0u, 4294967295u, (r8.z == v_42.y)));
    let v_43 = bitcast<vec2<u32>>(r5.yy);
    let v_44 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_43 != vec2<u32>()));
    let v_45 = r9;
    r9 = vec4<f32>(v_45.x, v_44.xy, v_45.w);
    r5.y = dot(r8.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_46 = (r7.xyz / r5.yyy);
    r7 = vec4<f32>(v_46.xyz, r7.w);
    let v_47 = (r8.xy * vec2<f32>(-0.5f));
    let v_48 = r10;
    r10 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
    r10.y = 0.0f;
    let v_49 = (r7.xyz + r10.xyz);
    r10 = vec4<f32>(v_49.xyz, r10.w);
    r9.x = 0.0f;
    let v_50 = fma(vec3<f32>(-0.5f), r9.xyz, r10.xyz);
    r11 = vec4<f32>(v_50.xyz, r11.w);
    let v_51 = r11.xyzx;
    r5.y = textureSampleCompareLevel(t14, s14, v_51.xyz, r4.x);
    let v_52 = (r8.xy * vec2<f32>(0.5f));
    let v_53 = r8;
    r8 = vec4<f32>(v_52.x, v_53.y, v_52.y, v_53.w);
    r8.y = 0.0f;
    let v_54 = (r7.xyz + r8.xyz);
    r7 = vec4<f32>(v_54.xyz, r7.w);
    let v_55 = fma(vec3<f32>(-0.5f), r9.xyz, r7.xyz);
    r8 = vec4<f32>(v_55.xyz, r8.w);
    let v_56 = r8.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_56.xyz, r4.x);
    r5.y = (r5.w + r5.y);
    let v_57 = fma(vec3<f32>(0.5f), r9.xyz, r10.xyz);
    r8 = vec4<f32>(v_57.xyz, r8.w);
    let v_58 = r8.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_58.xyz, r4.x);
    r5.y = (r5.w + r5.y);
    let v_59 = fma(vec3<f32>(0.5f), r9.xyz, r7.xyz);
    r7 = vec4<f32>(v_59.xyz, r7.w);
    let v_60 = r7.xyzx;
    r4.x = textureSampleCompareLevel(t14, s14, v_60.xyz, r4.x);
    r4.x = (r4.x + r5.y);
    r4.x = (r4.x * 0.25f);
  } else {
    let v_61 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_61.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_62 = -(r1.xxxx);
    let v_63 = (r7.xy / v_62.xy);
    r7 = vec4<f32>(v_63.xy, r7.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r7.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_64 = fma(r7.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_64.xyz, r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_65 = r7.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_65.xy, r2.z);
    let v_66 = r7.zwzz;
    r5.y = textureSampleCompareLevel(t24, s14, v_66.xy, r2.z);
    r1.x = (r1.x + r5.y);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_67 = r7.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_67.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_68 = r7.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_68.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r4.x = (r1.x * 0.25f);
  }
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  r1.x = (r1.x * r2.w);
  let v_69 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_69.xyz, r2.w);
  let v_70 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_71 = -(r2.xyzx);
  let v_72 = fma(v_70.xyz, cb12_12.tint_symbol_3[2u].zxy, v_71.xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = -(r4.yzwy);
  r2.x = dot(r2.xyz, v_73.xyz);
  let v_74 = -(r4.yzwy);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_74.xyz);
  r2.z = dot(v_8.xyz, (-(r4.yzwy)).xyz);
  r2.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (cb12_12.tint_symbol_3[5u].x / r2.w);
  r2.w = (r2.w * 0.5f);
  r2.z = (r2.w / r2.z);
  let v_75 = clamp(fma(r2.xyxx, r2.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_75.xy, r2.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r3.x = ((-(r2.yyyy)).x + 1.0f);
  let v_76 = bitcast<u32>(r2.w);
  let v_77 = r3.x;
  r2.z = select(r2.y, v_77, (v_76 != 0u));
  let v_78 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f).xyz;
  r2 = vec4<f32>(v_78.xyz, r2.w);
  let v_79 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_80.xyz, r2.w);
  let v_81 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_81.xyz, r2.w);
  let v_82 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_82.xyz, r2.w);
  let v_83 = dot(r0.xyz, r4.yzw);
  r2.w = clamp(vec4<f32>(v_83, v_83, v_83, v_83).w, 0.0f, 1.0f);
  let v_84 = dot((-(r6.xyzx)).xyz, r0.xyz);
  r6.x = clamp(vec4<f32>(v_84, v_84, v_84, v_84).x, 0.0f, 1.0f);
  let v_85 = dot(r1.yzw, r4.yzw);
  r6.y = clamp(vec4<f32>(v_85, v_85, v_85, v_85).y, 0.0f, 1.0f);
  let v_86 = ((-(r6.xxyx)).yz + vec2<f32>(1.0f));
  let v_87 = r4;
  r4 = vec4<f32>(v_87.x, v_86.xy, v_87.w);
  let v_88 = (r4.yz * r4.yz);
  let v_89 = r5;
  r5 = vec4<f32>(v_89.x, v_88.x, v_89.z, v_88.y);
  let v_90 = (r5.yw * r5.yw);
  let v_91 = r5;
  r5 = vec4<f32>(v_91.x, v_90.x, v_91.z, v_90.y);
  let v_92 = (r4.yz * r5.yw);
  let v_93 = r4;
  r4 = vec4<f32>(v_93.x, v_92.xy, v_93.w);
  r3.x = ((-(r5.zzzz)).x + 1.0f);
  let v_94 = fma(r5.zz, r4.yz, r3.xx);
  let v_95 = r4;
  r4 = vec4<f32>(v_95.x, v_94.xy, v_95.w);
  let v_96 = (r5.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_96.xy, r5.zw);
  r3.x = (r5.x * 0.125f);
  r4.y = fma((-(r0.wwww)).y, r4.y, 1.0f);
  r0.x = dot(r0.xyz, r1.yzw);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r5.y);
  r0.x = exp2(r0.x);
  r0.x = (r4.z * r0.x);
  r0.x = (r3.x * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r2.w * r0.x);
  r0.y = (r2.w * r4.y);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = (r4.x + -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_97 = fma(r3.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_97.xy, r0.z, v_97.z);
  let v_98 = (r2.xyz * r0.xyw);
  r0 = vec4<f32>(v_98.xy, r0.z, v_98.z);
  let v_99 = (r1.xxx * r0.xyw);
  r0 = vec4<f32>(v_99.xy, r0.z, v_99.z);
  let v_100 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_101.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_102 : bool) {
  if (v_102) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
