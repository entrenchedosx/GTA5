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
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
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
  r3.w = fma(r5.y, 512.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_20 = -(r3.wwww);
  r5.x = fma(r5.y, 512.0f, v_20.x);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r5.x, 3.0f, r3.w);
  r5.x = dot(r2.xyz, r2.xyz);
  r5.x = inverseSqrt(r5.x);
  let v_21 = (r2.xyz * r5.xxx);
  r5 = vec4<f32>(v_21.xy, r5.z, v_21.z);
  let v_22 = -(r5.xxyw);
  let v_23 = fma(r1.yzw, r4.xxx, v_22.yzw);
  r1 = vec4<f32>(r1.x, v_23.xyz);
  r4.x = dot(r1.yzw, r1.yzw);
  r4.x = inverseSqrt(r4.x);
  let v_24 = (r1.yzw * r4.xxx);
  r1 = vec4<f32>(r1.x, v_24.xyz);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r4.x) != 0u)) {
    let v_25 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r6 = vec4<f32>(v_25.xyz, r6.w);
    r7.x = dot(r6.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r6.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r7.z = dot(r6.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_26 = -(r7.xyzx);
    r4.x = dot(v_26.xyz, (-(r7.xyzx)).xyz);
    r4.x = sqrt(r4.x);
    let v_27 = ((-(r7.xyzx)).xyz / r4.xxx);
    r6 = vec4<f32>(v_27.xyz, r6.w);
    r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_28 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r6.xyz)));
    r7 = vec4<f32>(v_28.xyz, r7.w);
    let v_29 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r6.xyz < vec3<f32>())));
    r8 = vec4<f32>(v_29.xyz, r8.w);
    let v_30 = -(bitcast<vec4<i32>>(r7.xyzx));
    let v_31 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_30.xyz));
    r7 = vec4<f32>(v_31.xyz, r7.w);
    let v_32 = vec3<f32>(bitcast<vec3<i32>>(r7.zxy));
    r7 = vec4<f32>(v_32.xyz, r7.w);
    r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r6.zzxx) >= abs(r6.xyyz))));
    let v_33 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) & bitcast<vec2<u32>>(r8.xz)));
    r8 = vec4<f32>(v_33.xy, r8.zw);
    let v_34 = (-(r7.yzyy)).xy;
    r9 = vec4<f32>(v_34.xy, r9.zw);
    r9.z = 0.0f;
    r9.w = abs(r6.xxxx).w;
    r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
    r10.z = abs(r6.yyyy).z;
    let v_35 = bitcast<vec3<u32>>(r8.yyy);
    let v_36 = r9.zxw;
    let v_37 = select(r10.xyz, v_36, (v_35 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_37.xyz);
    r7.y = 0.0f;
    r7.z = abs(r6.zzzz).z;
    let v_38 = bitcast<vec3<u32>>(r8.xxx);
    let v_39 = r7.xyz;
    let v_40 = select(r8.yzw, v_39, (v_38 != vec3<u32>()));
    r7 = vec4<f32>(v_40.xyz, r7.w);
    let v_41 = abs(r6.yyyy);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_41.w)));
    let v_42 = bitcast<vec2<u32>>(r6.ww);
    let v_43 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_42 != vec2<u32>()));
    let v_44 = r8;
    r8 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
    r6.w = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_45 = (r6.xyz / r6.www);
    r6 = vec4<f32>(v_45.xyz, r6.w);
    let v_46 = (r7.xy * vec2<f32>(-0.5f));
    let v_47 = r9;
    r9 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
    r9.y = 0.0f;
    let v_48 = (r6.xyz + r9.xyz);
    r9 = vec4<f32>(v_48.xyz, r9.w);
    r8.x = 0.0f;
    let v_49 = fma(vec3<f32>(-0.5f), r8.xyz, r9.xyz);
    r10 = vec4<f32>(v_49.xyz, r10.w);
    let v_50 = r10.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r4.x);
    let v_51 = (r7.xy * vec2<f32>(0.5f));
    let v_52 = r7;
    r7 = vec4<f32>(v_51.x, v_52.y, v_51.y, v_52.w);
    r7.y = 0.0f;
    let v_53 = (r6.xyz + r7.xyz);
    r6 = vec4<f32>(v_53.xyz, r6.w);
    let v_54 = fma(vec3<f32>(-0.5f), r8.xyz, r6.xyz);
    r7 = vec4<f32>(v_54.xyz, r7.w);
    let v_55 = r7.xyzx;
    r7.x = textureSampleCompareLevel(t14, s14, v_55.xyz, r4.x);
    r6.w = (r6.w + r7.x);
    let v_56 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
    r7 = vec4<f32>(v_56.xyz, r7.w);
    let v_57 = r7.xyzx;
    r7.x = textureSampleCompareLevel(t14, s14, v_57.xyz, r4.x);
    r6.w = (r6.w + r7.x);
    let v_58 = fma(vec3<f32>(0.5f), r8.xyz, r6.xyz);
    r6 = vec4<f32>(v_58.xyz, r6.w);
    let v_59 = r6.xyzx;
    r4.x = textureSampleCompareLevel(t14, s14, v_59.xyz, r4.x);
    r4.x = (r4.x + r6.w);
    r4.x = (r4.x * 0.25f);
  } else {
    let v_60 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_60.xyz, r2.w);
    r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_61 = -(r1.xxxx);
    let v_62 = (r6.xy / v_61.xy);
    r6 = vec4<f32>(v_62.xy, r6.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r6.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_63 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_63.xyz, r2.w);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_64 = r6.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_64.xy, r2.z);
    let v_65 = r6.zwzz;
    r6.x = textureSampleCompareLevel(t24, s14, v_65.xy, r2.z);
    r1.x = (r1.x + r6.x);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_66 = r6.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_66.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_67 = r6.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_67.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r4.x = (r1.x * 0.25f);
  }
  let v_68 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = dot(r0.xyz, r4.yzw);
  r1.x = clamp(vec4<f32>(v_69, v_69, v_69, v_69).x, 0.0f, 1.0f);
  let v_70 = dot((-(r5.xywx)).xyz, r0.xyz);
  r5.x = clamp(vec4<f32>(v_70, v_70, v_70, v_70).x, 0.0f, 1.0f);
  let v_71 = dot(r1.yzw, r4.yzw);
  r5.y = clamp(vec4<f32>(v_71, v_71, v_71, v_71).y, 0.0f, 1.0f);
  let v_72 = ((-(r5.xxyx)).yz + vec2<f32>(1.0f));
  let v_73 = r4;
  r4 = vec4<f32>(v_73.x, v_72.xy, v_73.w);
  let v_74 = (r4.yz * r4.yz);
  r5 = vec4<f32>(v_74.xy, r5.zw);
  let v_75 = (r5.xy * r5.xy);
  r5 = vec4<f32>(v_75.xy, r5.zw);
  let v_76 = (r4.yz * r5.xy);
  let v_77 = r4;
  r4 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
  r4.w = ((-(r5.zzzz)).w + 1.0f);
  let v_78 = fma(r5.zz, r4.yz, r4.ww);
  let v_79 = r4;
  r4 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
  let v_80 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r5 = vec4<f32>(v_80.xy, r5.zw);
  r3.w = (r5.x * 0.125f);
  r4.y = fma((-(r0.wwww)).y, r4.y, 1.0f);
  r0.x = dot(r0.xyz, r1.yzw);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r5.y);
  r0.x = exp2(r0.x);
  r0.x = (r4.z * r0.x);
  r0.x = (r3.w * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r1.x * r0.x);
  r0.y = (r1.x * r4.y);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = (r4.x + -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_81 = fma(r3.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_81.xy, r0.z, v_81.z);
  let v_82 = (r2.xyz * r0.xyw);
  r0 = vec4<f32>(v_82.xy, r0.z, v_82.z);
  let v_83 = (r2.www * r0.xyw);
  r0 = vec4<f32>(v_83.xy, r0.z, v_83.z);
  let v_84 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_84.xyz, r0.w);
  let v_85 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_85.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_86 : bool) {
  if (v_86) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
