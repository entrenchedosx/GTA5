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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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
  r3.w = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 0.0f)));
  r3.w = bitcast<f32>((bitcast<u32>(r3.w) & 1065353216u));
  r2.w = (r2.w * r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < 0.00000099999999747524f)));
  v_9((bitcast<u32>(r3.w) != 0u));
  r3.w = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r3.w = bitcast<f32>((bitcast<u32>(r3.w) & 8u));
  r3.w = f32(bitcast<u32>(r3.w));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 8.0f)));
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r6 = vec4<f32>(v_12.xyz, r6.w);
  let v_13 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_13.xy, r6.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_14 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_14.xyz, r7.w);
  let v_15 = fract(r7.xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_16.xy, r7.zw);
  let v_17 = fma(r0.xyz, vec3<f32>(256.0f), r7.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = min(r6.x, 1.0f);
  r5.w = fma(r6.y, 512.0f, -500.0f);
  r5.w = max(r5.w, 0.0f);
  let v_20 = -(r5.wwww);
  r6.x = fma(r6.y, 512.0f, v_20.x);
  r5.w = (r5.w * 558.0f);
  r5.w = fma(r6.x, 3.0f, r5.w);
  r6.x = dot(r2.xyz, r2.xyz);
  r6.x = inverseSqrt(r6.x);
  let v_21 = (r2.xyz * r6.xxx);
  r6 = vec4<f32>(v_21.xy, r6.z, v_21.z);
  let v_22 = -(r6.xxyw);
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
    r9 = vec4<f32>(v_33.xy, r9.zw);
    let v_34 = (-(r8.yzyy)).xy;
    r10 = vec4<f32>(v_34.xy, r10.zw);
    r10.z = 0.0f;
    r10.w = abs(r7.xxxx).w;
    r11 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r11.zw);
    r11.z = abs(r7.yyyy).z;
    let v_35 = bitcast<vec3<u32>>(r9.yyy);
    let v_36 = r10.zxw;
    let v_37 = select(r11.xyz, v_36, (v_35 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_37.xyz);
    r8.y = 0.0f;
    r8.z = abs(r7.zzzz).z;
    let v_38 = bitcast<vec3<u32>>(r9.xxx);
    let v_39 = r8.xyz;
    let v_40 = select(r9.yzw, v_39, (v_38 != vec3<u32>()));
    r8 = vec4<f32>(v_40.xyz, r8.w);
    let v_41 = abs(r7.yyyy);
    r7.w = bitcast<f32>(select(0u, 4294967295u, (r8.z == v_41.w)));
    let v_42 = bitcast<vec2<u32>>(r7.ww);
    let v_43 = select(vec2<f32>(1.0f, 0.0f), r10.zy, (v_42 != vec2<u32>()));
    let v_44 = r9;
    r9 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
    r7.w = dot(r8.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_45 = (r7.xyz / r7.www);
    r7 = vec4<f32>(v_45.xyz, r7.w);
    let v_46 = (r8.xy * vec2<f32>(-0.5f));
    let v_47 = r10;
    r10 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
    r10.y = 0.0f;
    let v_48 = (r7.xyz + r10.xyz);
    r10 = vec4<f32>(v_48.xyz, r10.w);
    r9.x = 0.0f;
    let v_49 = fma(vec3<f32>(-0.5f), r9.xyz, r10.xyz);
    r11 = vec4<f32>(v_49.xyz, r11.w);
    let v_50 = r11.xyzx;
    r7.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r4.x);
    let v_51 = (r8.xy * vec2<f32>(0.5f));
    let v_52 = r8;
    r8 = vec4<f32>(v_51.x, v_52.y, v_51.y, v_52.w);
    r8.y = 0.0f;
    let v_53 = (r7.xyz + r8.xyz);
    r7 = vec4<f32>(v_53.xyz, r7.w);
    let v_54 = fma(vec3<f32>(-0.5f), r9.xyz, r7.xyz);
    r8 = vec4<f32>(v_54.xyz, r8.w);
    let v_55 = r8.xyzx;
    r8.x = textureSampleCompareLevel(t14, s14, v_55.xyz, r4.x);
    r7.w = (r7.w + r8.x);
    let v_56 = fma(vec3<f32>(0.5f), r9.xyz, r10.xyz);
    r8 = vec4<f32>(v_56.xyz, r8.w);
    let v_57 = r8.xyzx;
    r8.x = textureSampleCompareLevel(t14, s14, v_57.xyz, r4.x);
    r7.w = (r7.w + r8.x);
    let v_58 = fma(vec3<f32>(0.5f), r9.xyz, r7.xyz);
    r7 = vec4<f32>(v_58.xyz, r7.w);
    let v_59 = r7.xyzx;
    r4.x = textureSampleCompareLevel(t14, s14, v_59.xyz, r4.x);
    r4.x = (r4.x + r7.w);
    r4.x = (r4.x * 0.25f);
  } else {
    let v_60 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_60.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_61 = -(r1.xxxx);
    let v_62 = (r7.xy / v_61.xy);
    r7 = vec4<f32>(v_62.xy, r7.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r7.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_63 = fma(r7.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_63.xyz, r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_64 = r7.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_64.xy, r2.z);
    let v_65 = r7.zwzz;
    r7.x = textureSampleCompareLevel(t24, s14, v_65.xy, r2.z);
    r1.x = (r1.x + r7.x);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_66 = r7.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_66.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_67 = r7.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_67.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r4.x = (r1.x * 0.25f);
  }
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r3.w) != 0u));
  r1.x = (r1.x * r2.w);
  let v_68 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_70 = -(r2.xyzx);
  let v_71 = fma(v_69.xyz, cb12_12.tint_symbol_3[2u].zxy, v_70.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = -(r4.yzwy);
  r2.x = dot(r2.xyz, v_72.xyz);
  let v_73 = -(r4.yzwy);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_73.xyz);
  r2.z = dot(v_8.xyz, (-(r4.yzwy)).xyz);
  r2.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (cb12_12.tint_symbol_3[5u].x / r2.w);
  r2.w = (r2.w * 0.5f);
  r2.z = (r2.w / r2.z);
  let v_74 = clamp(fma(r2.xyxx, r2.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_74.xy, r2.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r3.w = ((-(r2.yyyy)).w + 1.0f);
  let v_75 = bitcast<u32>(r2.w);
  let v_76 = r3.w;
  r2.z = select(r2.y, v_76, (v_75 != 0u));
  let v_77 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f).xyz;
  r2 = vec4<f32>(v_77.xyz, r2.w);
  let v_78 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_78.xyz, r2.w);
  let v_79 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_80.xyz, r2.w);
  let v_81 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_81.xyz, r2.w);
  let v_82 = dot(r0.xyz, r4.yzw);
  r2.w = clamp(vec4<f32>(v_82, v_82, v_82, v_82).w, 0.0f, 1.0f);
  let v_83 = dot((-(r6.xywx)).xyz, r0.xyz);
  r6.x = clamp(vec4<f32>(v_83, v_83, v_83, v_83).x, 0.0f, 1.0f);
  let v_84 = dot(r1.yzw, r4.yzw);
  r6.y = clamp(vec4<f32>(v_84, v_84, v_84, v_84).y, 0.0f, 1.0f);
  let v_85 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_85.xy, r6.zw);
  let v_86 = (r6.xy * r6.xy);
  r7 = vec4<f32>(v_86.xy, r7.zw);
  let v_87 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_87.xy, r7.zw);
  let v_88 = (r6.xy * r7.xy);
  r6 = vec4<f32>(v_88.xy, r6.zw);
  r3.w = ((-(r6.zzzz)).w + 1.0f);
  let v_89 = fma(r6.zz, r6.xy, r3.ww);
  r6 = vec4<f32>(v_89.xy, r6.zw);
  let v_90 = (r5.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_90.xy);
  r3.w = (r6.z * 0.125f);
  r5.w = fma((-(r0.wwww)).w, r6.x, 1.0f);
  r0.x = dot(r0.xyz, r1.yzw);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r6.w);
  r0.x = exp2(r0.x);
  r0.x = (r6.y * r0.x);
  r0.x = (r3.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r2.w * r0.x);
  r0.y = (r2.w * r5.w);
  r0.z = (r3.z + cb12_12.tint_symbol_3[7u].z);
  r0.z = ((-(r0.zzzz)).z / r4.w);
  r6 = fma(r4.yzzy, r0.zzzz, r3.xyyx);
  r7 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r6 = fma(r6, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r7);
  let v_91 = textureSample(t3, s3, r6.xyxx.xy).xyz;
  r1 = vec4<f32>(r1.x, v_91.xyz);
  let v_92 = textureSample(t3, s3, r6.zwzz.xy).xyz;
  r3 = vec4<f32>(v_92.xy, r3.z, v_92.z);
  let v_93 = (r1.yzw * r3.xyw);
  r1 = vec4<f32>(r1.x, v_93.xyz);
  let v_94 = (r1.yzw * vec3<f32>(10.0f));
  r1 = vec4<f32>(r1.x, v_94.xyz);
  r0.w = ((-(r3.zzzz)).w + cb12_12.tint_symbol_3[7u].z);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 25.0f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(0.03999999910593032837f))).z, 0.0f, 1.0f);
  let v_95 = (r0.zzz * r1.yzw);
  r1 = vec4<f32>(r1.x, v_95.xyz);
  let v_96 = -(r0.xxxx);
  let v_97 = fma(r0.xxx, r1.yzw, v_96.xyz);
  r3 = vec4<f32>(v_97.xyz, r3.w);
  let v_98 = fma(r0.www, r3.xyz, r0.xxx);
  r3 = vec4<f32>(v_98.xyz, r3.w);
  let v_99 = -(r0.yyyy);
  let v_100 = fma(r0.yyy, r1.yzw, v_99.yzw);
  r1 = vec4<f32>(r1.x, v_100.xyz);
  let v_101 = fma(r0.www, r1.yzw, r0.yyy);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = (r3.xyz * cb12_12.tint_symbol_3[8u].zzz);
  r1 = vec4<f32>(r1.x, v_102.xyz);
  r0.w = (r4.x + -1.0f);
  r0.w = fma(cb12_12.tint_symbol_3[8u].y, r0.w, 1.0f);
  let v_103 = fma(r5.xyz, r0.xyz, r1.yzw);
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = (r2.xyz * r0.xyz);
  r0 = vec4<f32>(v_104.xyz, r0.w);
  let v_105 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_105.xyz, r0.w);
  let v_106 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_106.xyz, r0.w);
  let v_107 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_107.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_108 : bool) {
  if (v_108) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
