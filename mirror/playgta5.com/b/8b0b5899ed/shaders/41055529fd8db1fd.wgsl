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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

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
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xz;
  r5 = vec4<f32>(v_12.xy, r5.zw);
  r4.w = (r5.x * r5.x);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_13 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_13.x, r5.y, v_13.yz);
  let v_14 = fract(r5.xzw);
  r5 = vec4<f32>(v_14.x, r5.y, v_14.yz);
  let v_15 = fma((-(r5.zzwz)).xz, vec2<f32>(0.125f), r5.xz);
  let v_16 = r5;
  r5 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
  let v_17 = fma(r0.xyz, vec3<f32>(256.0f), r5.xzw);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_19 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = min(r4.w, 1.0f);
  r4.w = dot(r2.xyz, r2.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_20 = (r2.xyz * r4.www);
  r5 = vec4<f32>(v_20.x, r5.y, v_20.yz);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r4.w) != 0u)) {
    let v_21 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r6 = vec4<f32>(v_21.xyz, r6.w);
    r7.x = dot(r6.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r6.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r7.z = dot(r6.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_22 = -(r7.xyzx);
    r4.w = dot(v_22.xyz, (-(r7.xyzx)).xyz);
    r4.w = sqrt(r4.w);
    let v_23 = ((-(r7.xyzx)).xyz / r4.www);
    r6 = vec4<f32>(v_23.xyz, r6.w);
    r4.w = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_24 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r6.xyz)));
    r7 = vec4<f32>(v_24.xyz, r7.w);
    let v_25 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r6.xyz < vec3<f32>())));
    r8 = vec4<f32>(v_25.xyz, r8.w);
    let v_26 = -(bitcast<vec4<i32>>(r7.xyzx));
    let v_27 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_26.xyz));
    r7 = vec4<f32>(v_27.xyz, r7.w);
    let v_28 = vec3<f32>(bitcast<vec3<i32>>(r7.zxy));
    r7 = vec4<f32>(v_28.xyz, r7.w);
    r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r6.zzxx) >= abs(r6.xyyz))));
    let v_29 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) & bitcast<vec2<u32>>(r8.xz)));
    r8 = vec4<f32>(v_29.xy, r8.zw);
    let v_30 = (-(r7.yzyy)).xy;
    r9 = vec4<f32>(v_30.xy, r9.zw);
    r9.z = 0.0f;
    r9.w = abs(r6.xxxx).w;
    r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
    r10.z = abs(r6.yyyy).z;
    let v_31 = bitcast<vec3<u32>>(r8.yyy);
    let v_32 = r9.zxw;
    let v_33 = select(r10.xyz, v_32, (v_31 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_33.xyz);
    r7.y = 0.0f;
    r7.z = abs(r6.zzzz).z;
    let v_34 = bitcast<vec3<u32>>(r8.xxx);
    let v_35 = r7.xyz;
    let v_36 = select(r8.yzw, v_35, (v_34 != vec3<u32>()));
    r7 = vec4<f32>(v_36.xyz, r7.w);
    let v_37 = abs(r6.yyyy);
    r6.w = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_37.w)));
    let v_38 = bitcast<vec2<u32>>(r6.ww);
    let v_39 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_38 != vec2<u32>()));
    let v_40 = r8;
    r8 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
    r6.w = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_41 = (r6.xyz / r6.www);
    r6 = vec4<f32>(v_41.xyz, r6.w);
    let v_42 = (r7.xy * vec2<f32>(-0.5f));
    let v_43 = r9;
    r9 = vec4<f32>(v_42.x, v_43.y, v_42.y, v_43.w);
    r9.y = 0.0f;
    let v_44 = (r6.xyz + r9.xyz);
    r9 = vec4<f32>(v_44.xyz, r9.w);
    r8.x = 0.0f;
    let v_45 = fma(vec3<f32>(-0.5f), r8.xyz, r9.xyz);
    r10 = vec4<f32>(v_45.xyz, r10.w);
    let v_46 = r10.xyzx;
    r6.w = textureSampleCompareLevel(t14, s14, v_46.xyz, r4.w);
    let v_47 = (r7.xy * vec2<f32>(0.5f));
    let v_48 = r7;
    r7 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
    r7.y = 0.0f;
    let v_49 = (r6.xyz + r7.xyz);
    r6 = vec4<f32>(v_49.xyz, r6.w);
    let v_50 = fma(vec3<f32>(-0.5f), r8.xyz, r6.xyz);
    r7 = vec4<f32>(v_50.xyz, r7.w);
    let v_51 = r7.xyzx;
    r7.x = textureSampleCompareLevel(t14, s14, v_51.xyz, r4.w);
    r6.w = (r6.w + r7.x);
    let v_52 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
    r7 = vec4<f32>(v_52.xyz, r7.w);
    let v_53 = r7.xyzx;
    r7.x = textureSampleCompareLevel(t14, s14, v_53.xyz, r4.w);
    r6.w = (r6.w + r7.x);
    let v_54 = fma(vec3<f32>(0.5f), r8.xyz, r6.xyz);
    r6 = vec4<f32>(v_54.xyz, r6.w);
    let v_55 = r6.xyzx;
    r4.w = textureSampleCompareLevel(t14, s14, v_55.xyz, r4.w);
    r4.w = (r4.w + r6.w);
    r4.w = (r4.w * 0.25f);
  } else {
    let v_56 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_56.xyz, r2.w);
    r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_57 = -(r1.xxxx);
    let v_58 = (r6.xy / v_57.xy);
    r6 = vec4<f32>(v_58.xy, r6.zw);
    r1.x = dot(r2.xyz, r2.xyz);
    r1.x = sqrt(r1.x);
    r6.z = (r1.x * cb6_6.tint_symbol_2[17u].w);
    let v_59 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_59.xyz, r2.w);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_60 = r6.xyxx;
    r1.x = textureSampleCompareLevel(t24, s14, v_60.xy, r2.z);
    let v_61 = r6.zwzz;
    r6.x = textureSampleCompareLevel(t24, s14, v_61.xy, r2.z);
    r1.x = (r1.x + r6.x);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_62 = r6.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_62.xy, r2.z);
    r1.x = (r1.x + r2.x);
    let v_63 = r6.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_63.xy, r2.z);
    r1.x = (r1.x + r2.x);
    r4.w = (r1.x * 0.25f);
  }
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r3.w) != 0u));
  r1.x = (r1.x * r2.w);
  let v_64 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = dot(r0.xyz, r1.yzw);
  r2.w = clamp(vec4<f32>(v_65, v_65, v_65, v_65).w, 0.0f, 1.0f);
  let v_66 = dot((-(r5.xzwx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_66, v_66, v_66, v_66).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x * r0.x);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = ((-(r5.yyyy)).y + 1.0f);
  r0.x = fma(r5.y, r0.x, r0.y);
  r0.x = fma((-(r0.wwww)).x, r0.x, 1.0f);
  r0.x = (r0.x * r2.w);
  r0.y = (r3.z + cb12_12.tint_symbol_3[7u].z);
  r0.y = ((-(r0.yyyy)).y / r1.w);
  r5 = fma(r1.yzzy, r0.yyyy, r3.xyyx);
  r6 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r5 = fma(r5, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r6);
  let v_67 = textureSample(t3, s3, r5.xyxx.xy).xyz;
  r1 = vec4<f32>(r1.x, v_67.xyz);
  let v_68 = textureSample(t3, s3, r5.zwzz.xy).xyz;
  r3 = vec4<f32>(v_68.xy, r3.z, v_68.z);
  let v_69 = (r1.yzw * r3.xyw);
  r1 = vec4<f32>(r1.x, v_69.xyz);
  let v_70 = (r1.yzw * vec3<f32>(10.0f));
  r1 = vec4<f32>(r1.x, v_70.xyz);
  r0.z = ((-(r3.zzzz)).z + cb12_12.tint_symbol_3[7u].z);
  r0.z = clamp(((r0.zzzz + r0.zzzz)).z, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 25.0f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(0.03999999910593032837f))).y, 0.0f, 1.0f);
  let v_71 = (r0.yyy * r1.yzw);
  r1 = vec4<f32>(r1.x, v_71.xyz);
  let v_72 = -(r0.xxxx);
  let v_73 = fma(r0.xxx, r1.yzw, v_72.yzw);
  r1 = vec4<f32>(r1.x, v_73.xyz);
  let v_74 = fma(r0.zzz, r1.yzw, r0.xxx);
  r0 = vec4<f32>(v_74.xyz, r0.w);
  r0.w = (r4.w + -1.0f);
  r0.w = fma(cb12_12.tint_symbol_3[8u].y, r0.w, 1.0f);
  let v_75 = (r0.xyz * r4.xyz);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = (r2.xyz * r0.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  let v_77 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  let v_78 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_79.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_80 : bool) {
  if (v_80) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
