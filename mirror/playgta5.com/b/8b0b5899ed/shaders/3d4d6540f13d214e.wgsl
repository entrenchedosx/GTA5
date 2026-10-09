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

var<private> r14 : vec4<f32>;

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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

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
  let v_2 = ((-(r1.xyzx)).xyz + cb12_12.tint_symbol_3[9u].xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r0.w);
  let v_3 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  let v_4 = ((-(r1.xyzx)).xyz + cb12_12.tint_symbol_3[10u].xyz);
  r5 = vec4<f32>(v_4.xyz, r5.w);
  r3.w = dot(r5.xyz, r5.xyz);
  r4.w = inverseSqrt(r3.w);
  let v_5 = (r4.www * r5.xyz);
  r6 = vec4<f32>(v_5.xyz, r6.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r6.w = fma(r5.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r6.w);
  let v_6 = -(cb12_12.tint_symbol_3[12u].xyzx);
  r6.w = dot(r4.xyz, v_6.xyz);
  r6.w = clamp(fma(r6.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r6.w);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.y = clamp(fma(-(r3.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r1.z = fma(r5.w, r1.y, cb12_12.tint_symbol_3[7u].x);
  r1.y = (r1.y / r1.z);
  let v_7 = -(cb12_12.tint_symbol_3[13u].xyzx);
  r1.z = dot(r6.xyz, v_7.xyz);
  r1.z = clamp(fma(r1.zzzz, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).z, 0.0f, 1.0f);
  r1.y = (r1.z * r1.y);
  r1.x = (r1.x * r1.y);
  r1.y = max(r0.w, r1.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.00000099999999747524f)));
  v_8((bitcast<u32>(r1.y) != 0u));
  r7 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r7.xyz * r7.xyz);
  r1 = vec4<f32>(r1.x, v_9.xyz);
  r7 = textureSample(t9, s9, r0.xyxx.xy);
  let v_10 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_10.xy, r7.zw);
  r8 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r8.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r9 = vec4<f32>(v_11.xyz, r9.w);
  let v_12 = fract(r9.xyz);
  r9 = vec4<f32>(v_12.xyz, r9.w);
  let v_13 = fma((-(r9.yzyy)).xy, vec2<f32>(0.125f), r9.xy);
  r9 = vec4<f32>(v_13.xy, r9.zw);
  let v_14 = fma(r8.xyz, vec3<f32>(256.0f), r9.xyz);
  r8 = vec4<f32>(v_14.xyz, r8.w);
  let v_15 = (r8.xyz + vec3<f32>(-128.0f));
  r8 = vec4<f32>(v_15.xyz, r8.w);
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r8.xyz);
  r8 = vec4<f32>(v_16.xyz, r8.w);
  r0.x = min(r7.x, 1.0f);
  r0.y = fma(r7.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_17 = -(r0.yyyy);
  r3.w = fma(r7.y, 512.0f, v_17.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r3.w, 3.0f, r0.y);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_18 = (r2.xyz * r3.www);
  r7 = vec4<f32>(v_18.xy, r7.z, v_18.z);
  let v_19 = -(r7.xywx);
  let v_20 = fma(r3.xyz, r2.www, v_19.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_21 = (r2.www * r3.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = -(r7.xywx);
  let v_23 = fma(r5.xyz, r4.www, v_22.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  r2.w = dot(r5.xyz, r5.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_24 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_25 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r9 = vec4<f32>(v_25.xyz, r9.w);
    r10.x = dot(r9.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r9.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r10.z = dot(r9.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_26 = -(r10.xyzx);
    r3.w = dot(v_26.xyz, (-(r10.xyzx)).xyz);
    r3.w = sqrt(r3.w);
    let v_27 = ((-(r10.xyzx)).xyz / r3.www);
    r9 = vec4<f32>(v_27.xyz, r9.w);
    r3.w = (r3.w * cb6_6.tint_symbol_2[17u].w);
    let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r9.xyz)));
    r10 = vec4<f32>(v_28.xyz, r10.w);
    let v_29 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r9.xyz < vec3<f32>())));
    r11 = vec4<f32>(v_29.xyz, r11.w);
    let v_30 = -(bitcast<vec4<i32>>(r10.xyzx));
    let v_31 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r11.xyz) + v_30.xyz));
    r10 = vec4<f32>(v_31.xyz, r10.w);
    let v_32 = vec3<f32>(bitcast<vec3<i32>>(r10.zxy));
    r10 = vec4<f32>(v_32.xyz, r10.w);
    r11 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r9.zzxx) >= abs(r9.xyyz))));
    let v_33 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r11.yw) & bitcast<vec2<u32>>(r11.xz)));
    r11 = vec4<f32>(v_33.xy, r11.zw);
    let v_34 = (-(r10.yzyy)).xy;
    r12 = vec4<f32>(v_34.xy, r12.zw);
    r12.z = 0.0f;
    r12.w = abs(r9.xxxx).w;
    r13 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r13.zw);
    r13.z = abs(r9.yyyy).z;
    let v_35 = bitcast<vec3<u32>>(r11.yyy);
    let v_36 = r12.zxw;
    let v_37 = select(r13.xyz, v_36, (v_35 != vec3<u32>()));
    r11 = vec4<f32>(r11.x, v_37.xyz);
    r10.y = 0.0f;
    r10.z = abs(r9.zzzz).z;
    let v_38 = bitcast<vec3<u32>>(r11.xxx);
    let v_39 = r10.xyz;
    let v_40 = select(r11.yzw, v_39, (v_38 != vec3<u32>()));
    r10 = vec4<f32>(v_40.xyz, r10.w);
    let v_41 = abs(r9.yyyy);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r10.z == v_41.w)));
    let v_42 = bitcast<vec2<u32>>(r4.ww);
    let v_43 = select(vec2<f32>(1.0f, 0.0f), r12.zy, (v_42 != vec2<u32>()));
    let v_44 = r11;
    r11 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
    r4.w = dot(r10.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_45 = (r9.xyz / r4.www);
    r9 = vec4<f32>(v_45.xyz, r9.w);
    let v_46 = (r10.xy * vec2<f32>(-0.5f));
    let v_47 = r12;
    r12 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
    r12.y = 0.0f;
    let v_48 = (r9.xyz + r12.xyz);
    r12 = vec4<f32>(v_48.xyz, r12.w);
    r11.x = 0.0f;
    let v_49 = fma(vec3<f32>(-0.5f), r11.xyz, r12.xyz);
    r13 = vec4<f32>(v_49.xyz, r13.w);
    let v_50 = r13.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r3.w);
    let v_51 = (r10.xy * vec2<f32>(0.5f));
    let v_52 = r10;
    r10 = vec4<f32>(v_51.x, v_52.y, v_51.y, v_52.w);
    r10.y = 0.0f;
    let v_53 = (r9.xyz + r10.xyz);
    r9 = vec4<f32>(v_53.xyz, r9.w);
    let v_54 = fma(vec3<f32>(-0.5f), r11.xyz, r9.xyz);
    r10 = vec4<f32>(v_54.xyz, r10.w);
    let v_55 = r10.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_55.xyz, r3.w);
    r4.w = (r4.w + r5.w);
    let v_56 = fma(vec3<f32>(0.5f), r11.xyz, r12.xyz);
    r10 = vec4<f32>(v_56.xyz, r10.w);
    let v_57 = r10.xyzx;
    r5.w = textureSampleCompareLevel(t14, s14, v_57.xyz, r3.w);
    r4.w = (r4.w + r5.w);
    let v_58 = fma(vec3<f32>(0.5f), r11.xyz, r9.xyz);
    r9 = vec4<f32>(v_58.xyz, r9.w);
    let v_59 = r9.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_59.xyz, r3.w);
    r3.w = (r3.w + r4.w);
    r3.w = (r3.w * 0.25f);
  } else {
    let v_60 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r9 = vec4<f32>(v_60.xyz, r9.w);
    r10.x = dot(r9.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r9.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r9.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_61 = -(r4.wwww);
    let v_62 = (r10.xy / v_61.xy);
    r10 = vec4<f32>(v_62.xy, r10.zw);
    r4.w = dot(r9.xyz, r9.xyz);
    r4.w = sqrt(r4.w);
    r10.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_63 = fma(r10.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r9 = vec4<f32>(v_63.xyz, r9.w);
    r10 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r9.xyxy);
    let v_64 = r10.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_64.xy, r9.z);
    let v_65 = r10.zwzz;
    r5.w = textureSampleCompareLevel(t24, s14, v_65.xy, r9.z);
    r4.w = (r4.w + r5.w);
    r10 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r9.xyxy);
    let v_66 = r10.xyxx;
    r5.w = textureSampleCompareLevel(t24, s14, v_66.xy, r9.z);
    r4.w = (r4.w + r5.w);
    let v_67 = r10.zwzz;
    r5.w = textureSampleCompareLevel(t24, s14, v_67.xy, r9.z);
    r4.w = (r4.w + r5.w);
    r3.w = (r4.w * 0.25f);
  }
  let v_68 = -(cb12_12.tint_symbol_3[12u].zxyz);
  let v_69 = (cb12_12.tint_symbol_3[2u].yzx * v_68.xyz);
  r9 = vec4<f32>(v_69.xyz, r9.w);
  let v_70 = -(cb12_12.tint_symbol_3[12u].yzxy);
  let v_71 = -(r9.xyzx);
  let v_72 = fma(v_70.xyz, cb12_12.tint_symbol_3[2u].zxy, v_71.xyz);
  r9 = vec4<f32>(v_72.xyz, r9.w);
  let v_73 = -(r4.xyzx);
  r9.x = dot(r9.xyz, v_73.xyz);
  let v_74 = -(r4.xyzx);
  r9.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_74.xyz);
  r4.w = dot(v_6.xyz, (-(r4.xyzx)).xyz);
  r5.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r5.w = sqrt(r5.w);
  r5.w = (cb12_12.tint_symbol_3[5u].x / r5.w);
  r5.w = (r5.w * 0.5f);
  r4.w = (r5.w / r4.w);
  let v_75 = clamp(fma(r9.xyxx, r4.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r9 = vec4<f32>(v_75.xy, r9.zw);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r6.w = ((-(r9.yyyy)).w + 1.0f);
  let v_76 = bitcast<u32>(r4.w);
  let v_77 = r6.w;
  r9.z = select(r9.y, v_77, (v_76 != 0u));
  r9 = textureSampleLevel(t2, s2, r9.xzxx.xy, 0.0f);
  let v_78 = fma(r9.xyz, r9.xyz, vec3<f32>(-1.0f));
  r9 = vec4<f32>(v_78.xyz, r9.w);
  let v_79 = fma(cb12_12.tint_symbol_3[11u].yyy, r9.xyz, vec3<f32>(1.0f));
  r9 = vec4<f32>(v_79.xyz, r9.w);
  let v_80 = (r9.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r9 = vec4<f32>(v_80.xyz, r9.w);
  let v_81 = (r9.xyz * cb12_12.tint_symbol_3[3u].www);
  r9 = vec4<f32>(v_81.xyz, r9.w);
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_82 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r10 = vec4<f32>(v_82.xyz, r10.w);
    r11.x = dot(r10.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r11.y = dot(r10.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r11.z = dot(r10.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_83 = -(r11.xyzx);
    r2.w = dot(v_83.xyz, (-(r11.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_84 = ((-(r11.xyzx)).xyz / r2.www);
    r10 = vec4<f32>(v_84.xyz, r10.w);
    r2.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_85 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r10.xyz)));
    r11 = vec4<f32>(v_85.xyz, r11.w);
    let v_86 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r10.xyz < vec3<f32>())));
    r12 = vec4<f32>(v_86.xyz, r12.w);
    let v_87 = -(bitcast<vec4<i32>>(r11.xyzx));
    let v_88 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r12.xyz) + v_87.xyz));
    r11 = vec4<f32>(v_88.xyz, r11.w);
    let v_89 = vec3<f32>(bitcast<vec3<i32>>(r11.zxy));
    r11 = vec4<f32>(v_89.xyz, r11.w);
    r12 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r10.zzxx) >= abs(r10.xyyz))));
    let v_90 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r12.yw) & bitcast<vec2<u32>>(r12.xz)));
    r12 = vec4<f32>(v_90.xy, r12.zw);
    let v_91 = (-(r11.yzyy)).xy;
    r13 = vec4<f32>(v_91.xy, r13.zw);
    r13.z = 0.0f;
    r13.w = abs(r10.xxxx).w;
    r14 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r14.zw);
    r14.z = abs(r10.yyyy).z;
    let v_92 = bitcast<vec3<u32>>(r12.yyy);
    let v_93 = r13.zxw;
    let v_94 = select(r14.xyz, v_93, (v_92 != vec3<u32>()));
    r12 = vec4<f32>(r12.x, v_94.xyz);
    r11.y = 0.0f;
    r11.z = abs(r10.zzzz).z;
    let v_95 = bitcast<vec3<u32>>(r12.xxx);
    let v_96 = r11.xyz;
    let v_97 = select(r12.yzw, v_96, (v_95 != vec3<u32>()));
    r11 = vec4<f32>(v_97.xyz, r11.w);
    let v_98 = abs(r10.yyyy);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r11.z == v_98.w)));
    let v_99 = bitcast<vec2<u32>>(r6.ww);
    let v_100 = select(vec2<f32>(1.0f, 0.0f), r13.zy, (v_99 != vec2<u32>()));
    let v_101 = r12;
    r12 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
    r6.w = dot(r11.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_102 = (r10.xyz / r6.www);
    r10 = vec4<f32>(v_102.xyz, r10.w);
    let v_103 = (r11.xy * vec2<f32>(-0.5f));
    let v_104 = r13;
    r13 = vec4<f32>(v_103.x, v_104.y, v_103.y, v_104.w);
    r13.y = 0.0f;
    let v_105 = (r10.xyz + r13.xyz);
    r13 = vec4<f32>(v_105.xyz, r13.w);
    r12.x = 0.0f;
    let v_106 = fma(vec3<f32>(-0.5f), r12.xyz, r13.xyz);
    r14 = vec4<f32>(v_106.xyz, r14.w);
    let v_107 = r14.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_107.xyz, r2.w);
    let v_108 = (r11.xy * vec2<f32>(0.5f));
    let v_109 = r11;
    r11 = vec4<f32>(v_108.x, v_109.y, v_108.y, v_109.w);
    r11.y = 0.0f;
    let v_110 = (r10.xyz + r11.xyz);
    r10 = vec4<f32>(v_110.xyz, r10.w);
    let v_111 = fma(vec3<f32>(-0.5f), r12.xyz, r10.xyz);
    r11 = vec4<f32>(v_111.xyz, r11.w);
    let v_112 = r11.xyzx;
    r8.w = textureSampleCompareLevel(t14, s14, v_112.xyz, r2.w);
    r6.w = (r6.w + r8.w);
    let v_113 = fma(vec3<f32>(0.5f), r12.xyz, r13.xyz);
    r11 = vec4<f32>(v_113.xyz, r11.w);
    let v_114 = r11.xyzx;
    r8.w = textureSampleCompareLevel(t14, s14, v_114.xyz, r2.w);
    r6.w = (r6.w + r8.w);
    let v_115 = fma(vec3<f32>(0.5f), r12.xyz, r10.xyz);
    r10 = vec4<f32>(v_115.xyz, r10.w);
    let v_116 = r10.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_116.xyz, r2.w);
    r2.w = (r2.w + r6.w);
    r2.w = (r2.w * 0.25f);
  } else {
    let v_117 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_117.xyz, r2.w);
    r10.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r10.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_118 = -(r0.zzzz);
    let v_119 = (r10.xy / v_118.xy);
    r10 = vec4<f32>(v_119.xy, r10.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r10.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_120 = fma(r10.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_120.xyz, r2.w);
    r10 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_121 = r10.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_121.xy, r2.z);
    let v_122 = r10.zwzz;
    r6.w = textureSampleCompareLevel(t24, s14, v_122.xy, r2.z);
    r0.z = (r0.z + r6.w);
    r10 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_123 = r10.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_123.xy, r2.z);
    r0.z = (r0.z + r2.x);
    let v_124 = r10.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_124.xy, r2.z);
    r0.z = (r0.z + r2.x);
    r2.w = (r0.z * 0.25f);
  }
  let v_125 = -(cb12_12.tint_symbol_3[13u].zxyz);
  let v_126 = (cb12_12.tint_symbol_3[2u].yzx * v_125.xyz);
  r2 = vec4<f32>(v_126.xyz, r2.w);
  let v_127 = -(cb12_12.tint_symbol_3[13u].yzxy);
  let v_128 = -(r2.xyzx);
  let v_129 = fma(v_127.xyz, cb12_12.tint_symbol_3[2u].zxy, v_128.xyz);
  r2 = vec4<f32>(v_129.xyz, r2.w);
  let v_130 = -(r6.xyzx);
  r2.x = dot(r2.xyz, v_130.xyz);
  let v_131 = -(r6.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_131.xyz);
  r0.z = dot(v_7.xyz, (-(r6.xyzx)).xyz);
  r0.z = (r5.w / r0.z);
  let v_132 = clamp(fma(r2.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_132.xy, r2.zw);
  r0.z = ((-(r2.yyyy)).z + 1.0f);
  let v_133 = bitcast<u32>(r4.w);
  let v_134 = r0.z;
  r2.z = select(r2.y, v_134, (v_133 != 0u));
  r10 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f);
  let v_135 = fma(r10.xyz, r10.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_135.xyz, r2.w);
  let v_136 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_136.xyz, r2.w);
  let v_137 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_137.xyz, r2.w);
  let v_138 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_138.xyz, r2.w);
  let v_139 = dot(r8.xyz, r4.xyz);
  r0.z = clamp(vec4<f32>(v_139, v_139, v_139, v_139).z, 0.0f, 1.0f);
  let v_140 = dot((-(r7.xywx)).xyz, r8.xyz);
  r10.x = clamp(vec4<f32>(v_140, v_140, v_140, v_140).x, 0.0f, 1.0f);
  let v_141 = dot(r3.xyz, r4.xyz);
  r10.y = clamp(vec4<f32>(v_141, v_141, v_141, v_141).y, 0.0f, 1.0f);
  let v_142 = ((-(r10.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_142.xy, r4.zw);
  let v_143 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_143.xy);
  let v_144 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_144.xy);
  let v_145 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_145.xy, r4.zw);
  r4.z = ((-(r7.zzzz)).z + 1.0f);
  let v_146 = fma(r7.zz, r4.xy, r4.zz);
  r4 = vec4<f32>(v_146.xy, r4.zw);
  let v_147 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r7 = vec4<f32>(v_147.xy, r7.zw);
  r0.y = (r7.x * 0.125f);
  r4.x = fma((-(r0.xxxx)).x, r4.x, 1.0f);
  r3.x = dot(r8.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r7.y);
  r3.x = exp2(r3.x);
  r3.x = (r4.y * r3.x);
  r3.x = (r0.y * r3.x);
  r3.x = (r0.x * r3.x);
  r3.x = (r0.z * r3.x);
  r0.z = (r0.z * r4.x);
  let v_148 = dot(r8.xyz, r6.xyz);
  r3.y = clamp(vec4<f32>(v_148, v_148, v_148, v_148).y, 0.0f, 1.0f);
  let v_149 = dot(r5.xyz, r6.xyz);
  r10.z = clamp(vec4<f32>(v_149, v_149, v_149, v_149).z, 0.0f, 1.0f);
  let v_150 = ((-(r10.xzxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_150.xy, r4.zw);
  let v_151 = (r4.xy * r4.xy);
  r6 = vec4<f32>(v_151.xy, r6.zw);
  let v_152 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_152.xy, r6.zw);
  let v_153 = (r4.xy * r6.xy);
  r4 = vec4<f32>(v_153.xy, r4.zw);
  let v_154 = fma(r7.zz, r4.xy, r4.zz);
  r4 = vec4<f32>(v_154.xy, r4.zw);
  r3.z = fma((-(r0.xxxx)).z, r4.x, 1.0f);
  r4.x = dot(r8.xyz, r5.xyz);
  r4.x = clamp(((r4.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r4.x = log2(r4.x);
  r4.x = (r4.x * r7.y);
  r4.x = exp2(r4.x);
  r4.x = (r4.y * r4.x);
  r0.y = (r0.y * r4.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r3.y * r0.x);
  r0.y = (r3.z * r3.y);
  r3.x = (r3.x * cb12_12.tint_symbol_3[8u].z);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r3.y = (r3.w + -1.0f);
  r3.y = fma(cb12_12.tint_symbol_3[8u].y, r3.y, 1.0f);
  r2.w = (r2.w + -1.0f);
  r2.w = fma(cb12_12.tint_symbol_3[8u].y, r2.w, 1.0f);
  let v_155 = fma(r1.yzw, r0.zzz, r3.xxx);
  r3 = vec4<f32>(v_155.x, r3.y, v_155.yz);
  let v_156 = (r9.xyz * r3.xzw);
  r3 = vec4<f32>(v_156.x, r3.y, v_156.yz);
  let v_157 = (r0.www * r3.xzw);
  r3 = vec4<f32>(v_157.x, r3.y, v_157.yz);
  let v_158 = fma(r1.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_158.xyz, r0.w);
  let v_159 = (r2.xyz * r0.xyz);
  r0 = vec4<f32>(v_159.xyz, r0.w);
  let v_160 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_160.xyz, r0.w);
  let v_161 = (r2.www * r0.xyz);
  r0 = vec4<f32>(v_161.xyz, r0.w);
  let v_162 = fma(r3.xzw, r3.yyy, r0.xyz);
  r0 = vec4<f32>(v_162.xyz, r0.w);
  let v_163 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_163.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_8(v_164 : bool) {
  if (v_164) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
