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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

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
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r5 = vec4<f32>(v_6.xy, r5.zw);
  let v_7 = r5.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r5 = vec4<f32>(v_9.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r5.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r5 = textureSample(t7, s7, r0.xyxx.xy);
  let v_10 = (r5.xyz * r5.xyz);
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r6 = textureSample(t9, s9, r0.xyxx.xy);
  let v_11 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  r7 = textureSample(t8, s8, r0.xyxx.xy);
  let v_12 = (r7.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r8 = vec4<f32>(v_12.xyz, r8.w);
  let v_13 = fract(r8.xyz);
  r8 = vec4<f32>(v_13.xyz, r8.w);
  let v_14 = fma((-(r8.yzyy)).xy, vec2<f32>(0.125f), r8.xy);
  r8 = vec4<f32>(v_14.xy, r8.zw);
  let v_15 = fma(r7.xyz, vec3<f32>(256.0f), r8.xyz);
  r7 = vec4<f32>(v_15.xyz, r7.w);
  let v_16 = (r7.xyz + vec3<f32>(-128.0f));
  r7 = vec4<f32>(v_16.xyz, r7.w);
  r0.x = dot(r7.xyz, r7.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_17 = (r0.xxx * r7.xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  r0.x = min(r6.x, 1.0f);
  r0.y = fma(r6.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_18 = -(r0.yyyy);
  r3.w = fma(r6.y, 512.0f, v_18.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r3.w, 3.0f, r0.y);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_19 = (r2.xyz * r3.www);
  r6 = vec4<f32>(v_19.xy, r6.z, v_19.z);
  let v_20 = -(r6.xywx);
  let v_21 = fma(r3.xyz, r2.www, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_22 = (r2.www * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_23 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r8 = vec4<f32>(v_23.xyz, r8.w);
    r9.x = dot(r8.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r9.y = dot(r8.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r9.z = dot(r8.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_24 = -(r9.xyzx);
    r2.w = dot(v_24.xyz, (-(r9.xyzx)).xyz);
    r2.w = sqrt(r2.w);
    let v_25 = ((-(r9.xyzx)).xyz / r2.www);
    r8 = vec4<f32>(v_25.xyz, r8.w);
    r2.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_26 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r8.xyz)));
    r9 = vec4<f32>(v_26.xyz, r9.w);
    let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r8.xyz < vec3<f32>())));
    r10 = vec4<f32>(v_27.xyz, r10.w);
    let v_28 = -(bitcast<vec4<i32>>(r9.xyzx));
    let v_29 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + v_28.xyz));
    r9 = vec4<f32>(v_29.xyz, r9.w);
    let v_30 = vec3<f32>(bitcast<vec3<i32>>(r9.zxy));
    r9 = vec4<f32>(v_30.xyz, r9.w);
    r10 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r8.zzxx) >= abs(r8.xyyz))));
    let v_31 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r10.yw) & bitcast<vec2<u32>>(r10.xz)));
    r10 = vec4<f32>(v_31.xy, r10.zw);
    let v_32 = (-(r9.yzyy)).xy;
    r11 = vec4<f32>(v_32.xy, r11.zw);
    r11.z = 0.0f;
    r11.w = abs(r8.xxxx).w;
    r12 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r12.zw);
    r12.z = abs(r8.yyyy).z;
    let v_33 = bitcast<vec3<u32>>(r10.yyy);
    let v_34 = r11.zxw;
    let v_35 = select(r12.xyz, v_34, (v_33 != vec3<u32>()));
    r10 = vec4<f32>(r10.x, v_35.xyz);
    r9.y = 0.0f;
    r9.z = abs(r8.zzzz).z;
    let v_36 = bitcast<vec3<u32>>(r10.xxx);
    let v_37 = r9.xyz;
    let v_38 = select(r10.yzw, v_37, (v_36 != vec3<u32>()));
    r9 = vec4<f32>(v_38.xyz, r9.w);
    let v_39 = abs(r8.yyyy);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r9.z == v_39.w)));
    let v_40 = bitcast<vec2<u32>>(r3.ww);
    let v_41 = select(vec2<f32>(1.0f, 0.0f), r11.zy, (v_40 != vec2<u32>()));
    let v_42 = r10;
    r10 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
    r3.w = dot(r9.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_43 = (r8.xyz / r3.www);
    r8 = vec4<f32>(v_43.xyz, r8.w);
    let v_44 = (r9.xy * vec2<f32>(-0.5f));
    let v_45 = r11;
    r11 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
    r11.y = 0.0f;
    let v_46 = (r8.xyz + r11.xyz);
    r11 = vec4<f32>(v_46.xyz, r11.w);
    r10.x = 0.0f;
    let v_47 = fma(vec3<f32>(-0.5f), r10.xyz, r11.xyz);
    r12 = vec4<f32>(v_47.xyz, r12.w);
    let v_48 = r12.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_48.xyz, r2.w);
    let v_49 = (r9.xy * vec2<f32>(0.5f));
    let v_50 = r9;
    r9 = vec4<f32>(v_49.x, v_50.y, v_49.y, v_50.w);
    r9.y = 0.0f;
    let v_51 = (r8.xyz + r9.xyz);
    r8 = vec4<f32>(v_51.xyz, r8.w);
    let v_52 = fma(vec3<f32>(-0.5f), r10.xyz, r8.xyz);
    r9 = vec4<f32>(v_52.xyz, r9.w);
    let v_53 = r9.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_53.xyz, r2.w);
    r3.w = (r3.w + r4.w);
    let v_54 = fma(vec3<f32>(0.5f), r10.xyz, r11.xyz);
    r9 = vec4<f32>(v_54.xyz, r9.w);
    let v_55 = r9.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_55.xyz, r2.w);
    r3.w = (r3.w + r4.w);
    let v_56 = fma(vec3<f32>(0.5f), r10.xyz, r8.xyz);
    r8 = vec4<f32>(v_56.xyz, r8.w);
    let v_57 = r8.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_57.xyz, r2.w);
    r2.w = (r2.w + r3.w);
    r2.w = (r2.w * 0.25f);
  } else {
    let v_58 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_58.xyz, r2.w);
    r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_59 = -(r0.zzzz);
    let v_60 = (r8.xy / v_59.xy);
    r8 = vec4<f32>(v_60.xy, r8.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r8.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_61 = fma(r8.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_61.xyz, r2.w);
    r8 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_62 = r8.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_62.xy, r2.z);
    let v_63 = r8.zwzz;
    r3.w = textureSampleCompareLevel(t24, s14, v_63.xy, r2.z);
    r0.z = (r0.z + r3.w);
    r8 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_64 = r8.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_64.xy, r2.z);
    r0.z = (r0.z + r2.x);
    let v_65 = r8.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_65.xy, r2.z);
    r0.z = (r0.z + r2.x);
    r2.w = (r0.z * 0.25f);
  }
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  r0.z = (r0.z * r0.w);
  let v_66 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_66.xyz, r2.w);
  let v_67 = dot(r7.xyz, r4.xyz);
  r0.w = clamp(vec4<f32>(v_67, v_67, v_67, v_67).w, 0.0f, 1.0f);
  let v_68 = dot((-(r6.xywx)).xyz, r7.xyz);
  r6.x = clamp(vec4<f32>(v_68, v_68, v_68, v_68).x, 0.0f, 1.0f);
  let v_69 = dot(r3.xyz, r4.xyz);
  r6.y = clamp(vec4<f32>(v_69, v_69, v_69, v_69).y, 0.0f, 1.0f);
  let v_70 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r6 = vec4<f32>(v_70.xy, r6.zw);
  let v_71 = (r6.xy * r6.xy);
  r8 = vec4<f32>(v_71.xy, r8.zw);
  let v_72 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = (r6.xy * r8.xy);
  r6 = vec4<f32>(v_73.xy, r6.zw);
  r1.w = ((-(r6.zzzz)).w + 1.0f);
  let v_74 = fma(r6.zz, r6.xy, r1.ww);
  r6 = vec4<f32>(v_74.xy, r6.zw);
  let v_75 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r6 = vec4<f32>(r6.xy, v_75.xy);
  r0.y = (r6.z * 0.125f);
  r1.w = fma((-(r0.xxxx)).w, r6.x, 1.0f);
  r3.x = dot(r7.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r6.w);
  r3.x = exp2(r3.x);
  r3.x = (r6.y * r3.x);
  r0.y = (r0.y * r3.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.y = (r0.w * r1.w);
  r0.w = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r0.w = ((-(r0.wwww)).w / r4.z);
  r3 = fma(r4.xyyx, r0.wwww, r1.xyyx);
  r4 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r4);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_76 = (r3.xyz * r4.xyz);
  r1 = vec4<f32>(v_76.xy, r1.z, v_76.z);
  let v_77 = (r1.xyw * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_77.xy, r1.z, v_77.z);
  r1.z = ((-(r1.zzzz)).z + cb12_12.tint_symbol_3[7u].z);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 25.0f);
  r0.w = clamp(((r0.wwww * vec4<f32>(0.03999999910593032837f))).w, 0.0f, 1.0f);
  let v_78 = (r0.www * r1.xyw);
  r1 = vec4<f32>(v_78.xy, r1.z, v_78.z);
  let v_79 = -(r0.xxxx);
  let v_80 = fma(r0.xxx, r1.xyw, v_79.xyz);
  r3 = vec4<f32>(v_80.xyz, r3.w);
  let v_81 = fma(r1.zzz, r3.xyz, r0.xxx);
  r3 = vec4<f32>(v_81.xyz, r3.w);
  let v_82 = -(r0.yyyy);
  let v_83 = fma(r0.yyy, r1.xyw, v_82.xyw);
  r1 = vec4<f32>(v_83.xy, r1.z, v_83.z);
  let v_84 = fma(r1.zzz, r1.xyw, r0.yyy);
  r0 = vec4<f32>(v_84.xy, r0.z, v_84.z);
  let v_85 = (r3.xyz * cb12_12.tint_symbol_3[8u].zzz);
  r1 = vec4<f32>(v_85.xyz, r1.w);
  r1.w = (r2.w + -1.0f);
  r1.w = fma(cb12_12.tint_symbol_3[8u].y, r1.w, 1.0f);
  let v_86 = fma(r5.xyz, r0.xyw, r1.xyz);
  r0 = vec4<f32>(v_86.xy, r0.z, v_86.z);
  let v_87 = (r2.xyz * r0.xyw);
  r0 = vec4<f32>(v_87.xy, r0.z, v_87.z);
  let v_88 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = (r1.www * r0.xyz);
  r0 = vec4<f32>(v_89.xyz, r0.w);
  let v_90 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_90.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_91 : bool) {
  if (v_91) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
