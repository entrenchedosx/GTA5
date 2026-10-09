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
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  let v_7 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_7.xy, r5.zw);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_8 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r7 = vec4<f32>(v_8.xyz, r7.w);
  let v_9 = fract(r7.xyz);
  r7 = vec4<f32>(v_9.xyz, r7.w);
  let v_10 = fma((-(r7.yzyy)).xy, vec2<f32>(0.125f), r7.xy);
  r7 = vec4<f32>(v_10.xy, r7.zw);
  let v_11 = fma(r6.xyz, vec3<f32>(256.0f), r7.xyz);
  r6 = vec4<f32>(v_11.xyz, r6.w);
  let v_12 = (r6.xyz + vec3<f32>(-128.0f));
  r6 = vec4<f32>(v_12.xyz, r6.w);
  r0.x = dot(r6.xyz, r6.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_13 = (r0.xxx * r6.xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  r0.x = min(r5.x, 1.0f);
  r0.y = fma(r5.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_14 = -(r0.yyyy);
  r1.w = fma(r5.y, 512.0f, v_14.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r1.w, 3.0f, r0.y);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r2.xyz);
  r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
  let v_16 = -(r5.xywx);
  let v_17 = fma(r3.xyz, r2.www, v_16.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_18 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_19 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r7 = vec4<f32>(v_19.xyz, r7.w);
    r8.x = dot(r7.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r7.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.z = dot(r7.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_20 = -(r8.xyzx);
    r1.w = dot(v_20.xyz, (-(r8.xyzx)).xyz);
    r1.w = sqrt(r1.w);
    let v_21 = ((-(r8.xyzx)).xyz / r1.www);
    r7 = vec4<f32>(v_21.xyz, r7.w);
    r1.w = (r1.w * cb6_6.tint_symbol_2[17u].w);
    let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r7.xyz)));
    r8 = vec4<f32>(v_22.xyz, r8.w);
    let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r7.xyz < vec3<f32>())));
    r9 = vec4<f32>(v_23.xyz, r9.w);
    let v_24 = -(bitcast<vec4<i32>>(r8.xyzx));
    let v_25 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_24.xyz));
    r8 = vec4<f32>(v_25.xyz, r8.w);
    let v_26 = vec3<f32>(bitcast<vec3<i32>>(r8.zxy));
    r8 = vec4<f32>(v_26.xyz, r8.w);
    r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r7.zzxx) >= abs(r7.xyyz))));
    let v_27 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) & bitcast<vec2<u32>>(r9.xz)));
    r9 = vec4<f32>(v_27.xy, r9.zw);
    let v_28 = (-(r8.yzyy)).xy;
    r10 = vec4<f32>(v_28.xy, r10.zw);
    r10.z = 0.0f;
    r10.w = abs(r7.xxxx).w;
    r11 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r11.zw);
    r11.z = abs(r7.yyyy).z;
    let v_29 = bitcast<vec3<u32>>(r9.yyy);
    let v_30 = r10.zxw;
    let v_31 = select(r11.xyz, v_30, (v_29 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_31.xyz);
    r8.y = 0.0f;
    r8.z = abs(r7.zzzz).z;
    let v_32 = bitcast<vec3<u32>>(r9.xxx);
    let v_33 = r8.xyz;
    let v_34 = select(r9.yzw, v_33, (v_32 != vec3<u32>()));
    r8 = vec4<f32>(v_34.xyz, r8.w);
    let v_35 = abs(r7.yyyy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r8.z == v_35.w)));
    let v_36 = bitcast<vec2<u32>>(r2.ww);
    let v_37 = select(vec2<f32>(1.0f, 0.0f), r10.zy, (v_36 != vec2<u32>()));
    let v_38 = r9;
    r9 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
    r2.w = dot(r8.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_39 = (r7.xyz / r2.www);
    r7 = vec4<f32>(v_39.xyz, r7.w);
    let v_40 = (r8.xy * vec2<f32>(-0.5f));
    let v_41 = r10;
    r10 = vec4<f32>(v_40.x, v_41.y, v_40.y, v_41.w);
    r10.y = 0.0f;
    let v_42 = (r7.xyz + r10.xyz);
    r10 = vec4<f32>(v_42.xyz, r10.w);
    r9.x = 0.0f;
    let v_43 = fma(vec3<f32>(-0.5f), r9.xyz, r10.xyz);
    r11 = vec4<f32>(v_43.xyz, r11.w);
    let v_44 = r11.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_44.xyz, r1.w);
    let v_45 = (r8.xy * vec2<f32>(0.5f));
    let v_46 = r8;
    r8 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
    r8.y = 0.0f;
    let v_47 = (r7.xyz + r8.xyz);
    r7 = vec4<f32>(v_47.xyz, r7.w);
    let v_48 = fma(vec3<f32>(-0.5f), r9.xyz, r7.xyz);
    r8 = vec4<f32>(v_48.xyz, r8.w);
    let v_49 = r8.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_49.xyz, r1.w);
    r2.w = (r2.w + r3.w);
    let v_50 = fma(vec3<f32>(0.5f), r9.xyz, r10.xyz);
    r8 = vec4<f32>(v_50.xyz, r8.w);
    let v_51 = r8.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_51.xyz, r1.w);
    r2.w = (r2.w + r3.w);
    let v_52 = fma(vec3<f32>(0.5f), r9.xyz, r7.xyz);
    r7 = vec4<f32>(v_52.xyz, r7.w);
    let v_53 = r7.xyzx;
    r1.w = textureSampleCompareLevel(t14, s14, v_53.xyz, r1.w);
    r1.w = (r1.w + r2.w);
    r1.w = (r1.w * 0.25f);
  } else {
    let v_54 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_54.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_55 = -(r0.zzzz);
    let v_56 = (r7.xy / v_55.xy);
    r7 = vec4<f32>(v_56.xy, r7.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r7.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_57 = fma(r7.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_57.xyz, r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_58 = r7.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_58.xy, r2.z);
    let v_59 = r7.zwzz;
    r2.w = textureSampleCompareLevel(t24, s14, v_59.xy, r2.z);
    r0.z = (r0.z + r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_60 = r7.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_60.xy, r2.z);
    r0.z = (r0.z + r2.x);
    let v_61 = r7.zwzz;
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
  let v_75 = dot(r6.xyz, r4.xyz);
  r0.z = clamp(vec4<f32>(v_75, v_75, v_75, v_75).z, 0.0f, 1.0f);
  let v_76 = dot((-(r5.xywx)).xyz, r6.xyz);
  r5.x = clamp(vec4<f32>(v_76, v_76, v_76, v_76).x, 0.0f, 1.0f);
  let v_77 = dot(r3.xyz, r4.xyz);
  r5.y = clamp(vec4<f32>(v_77, v_77, v_77, v_77).y, 0.0f, 1.0f);
  let v_78 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_78.xy, r4.zw);
  let v_79 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_79.xy);
  let v_80 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_80.xy);
  let v_81 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_81.xy, r4.zw);
  r2.w = ((-(r5.zzzz)).w + 1.0f);
  let v_82 = fma(r5.zz, r4.xy, r2.ww);
  r4 = vec4<f32>(v_82.xy, r4.zw);
  let v_83 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_83.xy);
  r0.y = (r4.z * 0.125f);
  r2.w = fma((-(r0.xxxx)).w, r4.x, 1.0f);
  r3.x = dot(r6.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r4.w);
  r3.x = exp2(r3.x);
  r3.x = (r4.y * r3.x);
  r0.y = (r0.y * r3.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.z * r0.x);
  r0.y = (r0.z * r2.w);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = (r1.w + -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_84 = fma(r1.xyz, r0.yyy, r0.xxx);
  r1 = vec4<f32>(v_84.xyz, r1.w);
  let v_85 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_85.xyz, r1.w);
  let v_86 = (r0.www * r1.xyz);
  r0 = vec4<f32>(v_86.xy, r0.z, v_86.z);
  let v_87 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_88.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_89 : bool) {
  if (v_89) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
