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
  r1 = vec4<f32>(r1.x, v_7.xyz);
  r2.w = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.x = ((-(cb12_12.tint_symbol_3[7u].xxxx)).x + 1.0f);
  r4.x = fma(r4.x, r2.w, cb12_12.tint_symbol_3[7u].x);
  r2.w = (r2.w / r4.x);
  let v_8 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r4.x = dot(r1.yzw, v_8.xyz);
  r4.x = clamp(fma(r4.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r2.w = (r2.w * r4.x);
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
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  let v_10 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(r3.x, v_10.xyz);
  let v_11 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_11.xyz);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xz;
  r4 = vec4<f32>(v_12.xy, r4.zw);
  r4.x = (r4.x * r4.x);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_13 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = fract(r5.xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_15.xy, r5.zw);
  let v_16 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = min(r4.x, 1.0f);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_19 = (r2.xyz * r4.xxx);
  r4 = vec4<f32>(v_19.x, r4.y, v_19.yz);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r5.x) != 0u)) {
    let v_20 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_20.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_21 = -(r6.xyzx);
    r5.x = dot(v_21.xyz, (-(r6.xyzx)).xyz);
    r5.x = sqrt(r5.x);
    let v_22 = ((-(r6.xxyz)).yzw / r5.xxx);
    r5 = vec4<f32>(r5.x, v_22.xyz);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r5.yzw)));
    r6 = vec4<f32>(v_23.xyz, r6.w);
    let v_24 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r5.yzw < vec3<f32>())));
    r7 = vec4<f32>(v_24.xyz, r7.w);
    let v_25 = -(bitcast<vec4<i32>>(r6.xyzx));
    let v_26 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + v_25.xyz));
    r6 = vec4<f32>(v_26.xyz, r6.w);
    let v_27 = vec3<f32>(bitcast<vec3<i32>>(r6.zxy));
    r6 = vec4<f32>(v_27.xyz, r6.w);
    r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r5.wwyy) >= abs(r5.yzzw))));
    let v_28 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r7.yw) & bitcast<vec2<u32>>(r7.xz)));
    r7 = vec4<f32>(v_28.xy, r7.zw);
    let v_29 = (-(r6.yzyy)).xy;
    r8 = vec4<f32>(v_29.xy, r8.zw);
    r8.z = 0.0f;
    r8.w = abs(r5.yyyy).w;
    r9 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r9.zw);
    r9.z = abs(r5.zzzz).z;
    let v_30 = bitcast<vec3<u32>>(r7.yyy);
    let v_31 = r8.zxw;
    let v_32 = select(r9.xyz, v_31, (v_30 != vec3<u32>()));
    r7 = vec4<f32>(r7.x, v_32.xyz);
    r6.y = 0.0f;
    r6.z = abs(r5.wwww).z;
    let v_33 = bitcast<vec3<u32>>(r7.xxx);
    let v_34 = r6.xyz;
    let v_35 = select(r7.yzw, v_34, (v_33 != vec3<u32>()));
    r6 = vec4<f32>(v_35.xyz, r6.w);
    let v_36 = abs(r5.zzzz);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r6.z == v_36.w)));
    let v_37 = bitcast<vec2<u32>>(r6.ww);
    let v_38 = select(vec2<f32>(1.0f, 0.0f), r8.zy, (v_37 != vec2<u32>()));
    let v_39 = r7;
    r7 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
    r6.z = dot(r6.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_40 = (r5.yzw / r6.zzz);
    r5 = vec4<f32>(r5.x, v_40.xyz);
    let v_41 = (r6.xy * vec2<f32>(-0.5f));
    let v_42 = r8;
    r8 = vec4<f32>(v_41.x, v_42.y, v_41.y, v_42.w);
    r8.y = 0.0f;
    let v_43 = (r5.yzw + r8.xyz);
    r8 = vec4<f32>(v_43.xyz, r8.w);
    r7.x = 0.0f;
    let v_44 = fma(vec3<f32>(-0.5f), r7.xyz, r8.xyz);
    r9 = vec4<f32>(v_44.xyz, r9.w);
    let v_45 = r9.xyzx;
    r6.z = textureSampleCompareLevel(t14, s14, v_45.xyz, r5.x);
    let v_46 = (r6.xy * vec2<f32>(0.5f));
    let v_47 = r9;
    r9 = vec4<f32>(v_46.x, v_47.y, v_46.y, v_47.w);
    r9.y = 0.0f;
    let v_48 = (r5.yzw + r9.xyz);
    r5 = vec4<f32>(r5.x, v_48.xyz);
    let v_49 = fma(vec3<f32>(-0.5f), r7.xyz, r5.yzw);
    r6 = vec4<f32>(v_49.xy, r6.z, v_49.z);
    let v_50 = r6.xywx;
    r6.x = textureSampleCompareLevel(t14, s14, v_50.xyz, r5.x);
    r6.x = (r6.x + r6.z);
    let v_51 = fma(vec3<f32>(0.5f), r7.xyz, r8.xyz);
    r6 = vec4<f32>(r6.x, v_51.xyz);
    let v_52 = r6.yzwy;
    r6.y = textureSampleCompareLevel(t14, s14, v_52.xyz, r5.x);
    r6.x = (r6.y + r6.x);
    let v_53 = fma(vec3<f32>(0.5f), r7.xyz, r5.yzw);
    r5 = vec4<f32>(r5.x, v_53.xyz);
    let v_54 = r5.yzwy;
    r5.x = textureSampleCompareLevel(t14, s14, v_54.xyz, r5.x);
    r5.x = (r5.x + r6.x);
    r5.x = (r5.x * 0.25f);
  } else {
    let v_55 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_55.xyz, r2.w);
    r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_56 = -(r1.xxxx);
    let v_57 = (r6.xy / v_56.xy);
    r6 = vec4<f32>(v_57.xy, r6.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r6.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_58 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_58.xyz, r2.w);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_59 = r6.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_59.xy, r2.z);
    let v_60 = r6.zwzz;
    r5.y = textureSampleCompareLevel(t24, s14, v_60.xy, r2.z);
    r1.x = (r1.x + r5.y);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_61 = r6.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_61.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_62 = r6.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_62.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r5.x = (r1.x * 0.25f);
  }
  r1.x = (r2.w * r3.x);
  let v_63 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_65 = -(r2.xyzx);
  let v_66 = fma(v_64.xyz, cb12_12.tint_symbol_3[2u].zxy, v_65.xyz);
  r2 = vec4<f32>(v_66.xyz, r2.w);
  let v_67 = -(r1.yzwy);
  r2.x = dot(r2.xyz, v_67.xyz);
  let v_68 = -(r1.yzwy);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_68.xyz);
  r2.z = dot(v_8.xyz, (-(r1.yzwy)).xyz);
  r2.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (cb12_12.tint_symbol_3[5u].x / r2.w);
  r2.w = (r2.w * 0.5f);
  r2.z = (r2.w / r2.z);
  let v_69 = clamp(fma(r2.xyxx, r2.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_69.xy, r2.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r3.x = ((-(r2.yyyy)).x + 1.0f);
  let v_70 = bitcast<u32>(r2.w);
  let v_71 = r3.x;
  r2.z = select(r2.y, v_71, (v_70 != 0u));
  let v_72 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f).xyz;
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_76.xyz, r2.w);
  let v_77 = dot(r0.xyz, r1.yzw);
  r1.y = clamp(vec4<f32>(v_77, v_77, v_77, v_77).y, 0.0f, 1.0f);
  let v_78 = dot((-(r4.xzwx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_78, v_78, v_78, v_78).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x * r0.x);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = ((-(r4.yyyy)).y + 1.0f);
  r0.x = fma(r4.y, r0.x, r0.y);
  r0.x = fma((-(r0.wwww)).x, r0.x, 1.0f);
  r0.x = (r0.x * r1.y);
  r0.y = (r5.x + -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_79 = (r0.xxx * r3.yzw);
  r0 = vec4<f32>(v_79.x, r0.y, v_79.yz);
  let v_80 = (r2.xyz * r0.xzw);
  r0 = vec4<f32>(v_80.x, r0.y, v_80.yz);
  let v_81 = (r1.xxx * r0.xzw);
  r0 = vec4<f32>(v_81.x, r0.y, v_81.yz);
  let v_82 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_83.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_84 : bool) {
  if (v_84) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
