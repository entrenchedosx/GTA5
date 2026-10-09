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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_3[20u].xyz);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_3[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_3[17u].z / r0.z);
  let v_1 = fma(r2.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = ((-(r1.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r0.w);
  let v_3 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r3.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r3.w = fma(r3.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r3.w);
  let v_4 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r3.w = dot(r4.xyz, v_4.xyz);
  r3.w = clamp(fma(r3.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r3.w);
  r1.w = 1.0f;
  r1.w = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_6.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  let v_7 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_7.xy, r6.zw);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_8 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_8.xyz, r8.w);
  let v_9 = fract(r8.xyz);
  r8 = vec4<f32>(v_9.xyz, r8.w);
  let v_10 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_10.xy, r8.zw);
  let v_11 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_11.xyz, r7.w);
  let v_12 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_12.xyz, r7.w);
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_13 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_13.xyz, r7.w);
  r0.x = min(r6.x, 1.0f);
  r0.y = fma(r6.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_14 = -(r0.yyyy);
  r1.w = fma(r6.y, 512.0f, v_14.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r1.w, 3.0f, r0.y);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r2.xyz);
  r6 = vec4<f32>(v_15.xy, r6.z, v_15.z);
  let v_16 = -(r6.xywx);
  let v_17 = fma(r3.xyz, r2.www, v_16.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_18 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_19 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_19.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_20 = -(r9.xyzx);
    r1.w = dot(v_20.xyz, (-(r9.xyzx)).xyz);
    r1.w = sqrt(r1.w);
    let v_21 = ((-(r9.xyzx)).xyz / r1.www);
    r8 = vec4<f32>(v_21.xyz, r8.w);
    r1.w = (r1.w * cb6_6.tint_symbol_2[17u].w);
    let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_22.xyz, r9.w);
    let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_23.xyz, r10.w);
    let v_24 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_25 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_24.xyz));
    r9 = vec4<f32>(v_25.xyz, r9.w);
    let v_26 = vec3<f32>(bitcast<vec3<i32>>(r9.zxy));
    r9 = vec4<f32>(v_26.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzxx) >= abs(r8.xyyz))));
    let v_27 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) & bitcast<vec2<u32>>(r10.xz)));
    r10 = vec4<f32>(v_27.xy, r10.zw);
    let v_28 = (-(r9.yzyy)).xy;
    r11 = vec4<f32>(v_28.xy, r11.zw);
    r11.z = 0.0f;
    r11.w = abs(r8.xxxx).w;
    r12 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r12.zw);
    r12.z = abs(r8.yyyy).z;
    let v_29 = bitcast<vec3<u32>>(r10.yyy);
    let v_30 = r11.zxw;
    let v_31 = select(r12.xyz, v_30, (v_29 != vec3<u32>()));
    r10 = vec4<f32>(r10.x, v_31.xyz);
    r9.y = 0.0f;
    r9.z = abs(r8.zzzz).z;
    let v_32 = bitcast<vec3<u32>>(r10.xxx);
    let v_33 = r9.xyz;
    let v_34 = select(r10.yzw, v_33, (v_32 != vec3<u32>()));
    r9 = vec4<f32>(v_34.xyz, r9.w);
    let v_35 = abs(r8.yyyy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r9.z == v_35.w)));
    let v_36 = bitcast<vec2<u32>>(r2.ww);
    let v_37 = select(vec2<f32>(1.0f, 0.0f), r11.zy, (v_36 != vec2<u32>()));
    let v_38 = r10;
    r10 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
    r2.w = dot(r9.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_39 = (r8.xyz / r2.www);
    r8 = vec4<f32>(v_39.xyz, r8.w);
    let v_40 = (r9.xy * vec2<f32>(-0.5f));
    let v_41 = r11;
    r11 = vec4<f32>(v_40.x, v_41.y, v_40.y, v_41.w);
    r11.y = 0.0f;
    let v_42 = (r8.xyz + r11.xyz);
    r11 = vec4<f32>(v_42.xyz, r11.w);
    r10.x = 0.0f;
    let v_43 = fma(vec3<f32>(-0.5f), r10.xyz, r11.xyz);
    r12 = vec4<f32>(v_43.xyz, r12.w);
    let v_44 = r12.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_44.xyz, r1.w);
    let v_45 = (r9.xy * vec2<f32>(0.5f));
    let v_46 = r9;
    r9 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
    r9.y = 0.0f;
    let v_47 = (r8.xyz + r9.xyz);
    r8 = vec4<f32>(v_47.xyz, r8.w);
    let v_48 = fma(vec3<f32>(-0.5f), r10.xyz, r8.xyz);
    r9 = vec4<f32>(v_48.xyz, r9.w);
    let v_49 = r9.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_49.xyz, r1.w);
    r2.w = (r2.w + r3.w);
    let v_50 = fma(vec3<f32>(0.5f), r10.xyz, r11.xyz);
    r9 = vec4<f32>(v_50.xyz, r9.w);
    let v_51 = r9.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_51.xyz, r1.w);
    r2.w = (r2.w + r3.w);
    let v_52 = fma(vec3<f32>(0.5f), r10.xyz, r8.xyz);
    r8 = vec4<f32>(v_52.xyz, r8.w);
    let v_53 = r8.xyzx;
    r1.w = textureSampleCompareLevel(t14, s14, v_53.xyz, r1.w);
    r1.w = (r1.w + r2.w);
    r1.w = (r1.w * 0.25f);
  } else {
    let v_54 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_54.xyz, r2.w);
    r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_55 = -(r0.zzzz);
    let v_56 = (r8.xy / v_55.xy);
    r8 = vec4<f32>(v_56.xy, r8.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r8.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_57 = fma(r8.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_57.xyz, r2.w);
    r8 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_58 = r8.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_58.xy, r2.z);
    let v_59 = r8.zwzz;
    r2.w = textureSampleCompareLevel(t24, s14, v_59.xy, r2.z);
    r0.z = (r0.z + r2.w);
    r8 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_60 = r8.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_60.xy, r2.z);
    r0.z = (r0.z + r2.x);
    let v_61 = r8.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_61.xy, r2.z);
    r0.z = (r0.z + r2.x);
    r1.w = (r0.z * 0.25f);
  }
  let v_62 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_64 = -(r2.xyzx);
  let v_65 = fma(v_63.xyz, cb12_12.tint_symbol_3[2u].zxy, v_64.xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = -(r4.xyzx);
  r2.x = dot(r2.xyz, v_66.xyz);
  let v_67 = -(r4.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_67.xyz);
  r0.z = dot(v_4.xyz, (-(r4.xyzx)).xyz);
  r2.z = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).z, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.z = sqrt(r2.z);
  r2.z = (cb12_12.tint_symbol_3[5u].x / r2.z);
  r2.z = (r2.z * 0.5f);
  r0.z = (r2.z / r0.z);
  let v_68 = clamp(fma(r2.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_68.xy, r2.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r2.w = ((-(r2.yyyy)).w + 1.0f);
  let v_69 = bitcast<u32>(r0.z);
  let v_70 = r2.w;
  r2.z = select(r2.y, v_70, (v_69 != 0u));
  r2 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f);
  let v_71 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = dot(r7.xyz, r4.xyz);
  r0.z = clamp(vec4<f32>(v_75, v_75, v_75, v_75).z, 0.0f, 1.0f);
  let v_76 = dot((-(r6.xywx)).xyz, r7.xyz);
  r6.x = clamp(vec4<f32>(v_76, v_76, v_76, v_76).x, 0.0f, 1.0f);
  let v_77 = dot(r3.xyz, r4.xyz);
  r6.y = clamp(vec4<f32>(v_77, v_77, v_77, v_77).y, 0.0f, 1.0f);
  let v_78 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_78.xy, r6.zw);
  let v_79 = (r6.xy * r6.xy);
  r8 = vec4<f32>(v_79.xy, r8.zw);
  let v_80 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_80.xy, r8.zw);
  let v_81 = (r6.xy * r8.xy);
  r6 = vec4<f32>(v_81.xy, r6.zw);
  r2.w = ((-(r6.zzzz)).w + 1.0f);
  let v_82 = fma(r6.zz, r6.xy, r2.ww);
  r6 = vec4<f32>(v_82.xy, r6.zw);
  let v_83 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_83.xy);
  r0.y = (r6.z * 0.125f);
  r2.w = fma((-(r0.xxxx)).w, r6.x, 1.0f);
  r3.x = dot(r7.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r6.w);
  r3.x = exp2(r3.x);
  r3.x = (r6.y * r3.x);
  r0.y = (r0.y * r3.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.z * r0.x);
  r0.y = (r0.z * r2.w);
  r0.z = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r0.z = ((-(r0.zzzz)).z / r4.z);
  r3 = fma(r4.xyyx, r0.zzzz, r1.xyyx);
  r4 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r4);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_84 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_84.xyz, r3.w);
  let v_85 = (r3.xyz * vec3<f32>(10.0f));
  r3 = vec4<f32>(v_85.xyz, r3.w);
  r1.x = ((-(r1.zzzz)).x + cb12_12.tint_symbol_3[7u].z);
  r1.x = clamp(((r1.xxxx + r1.xxxx)).x, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 25.0f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(0.03999999910593032837f))).z, 0.0f, 1.0f);
  let v_86 = (r0.zzz * r3.xyz);
  r3 = vec4<f32>(v_86.xyz, r3.w);
  let v_87 = -(r0.xxxx);
  let v_88 = fma(r0.xxx, r3.xyz, v_87.xyz);
  r4 = vec4<f32>(v_88.xyz, r4.w);
  let v_89 = fma(r1.xxx, r4.xyz, r0.xxx);
  r4 = vec4<f32>(v_89.xyz, r4.w);
  let v_90 = -(r0.yyyy);
  let v_91 = fma(r0.yyy, r3.xyz, v_90.xyz);
  r3 = vec4<f32>(v_91.xyz, r3.w);
  let v_92 = fma(r1.xxx, r3.xyz, r0.yyy);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = (r4.xyz * cb12_12.tint_symbol_3[8u].zzz);
  r1 = vec4<f32>(v_93.xyz, r1.w);
  r1.w = (r1.w + -1.0f);
  r1.w = fma(cb12_12.tint_symbol_3[8u].y, r1.w, 1.0f);
  let v_94 = fma(r5.xyz, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_94.xyz, r0.w);
  let v_95 = (r2.xyz * r0.xyz);
  r0 = vec4<f32>(v_95.xyz, r0.w);
  let v_96 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  let v_97 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  let v_98 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_98.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_99 : bool) {
  if (v_99) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
