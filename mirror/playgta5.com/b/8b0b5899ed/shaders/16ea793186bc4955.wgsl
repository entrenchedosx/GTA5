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
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r2.w = fma(r2.w, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r2.w);
  let v_4 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r2.w = dot(r3.xyz, v_4.xyz);
  r2.w = clamp(fma(r2.wwww, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).w, 0.0f, 1.0f);
  r0.w = (r0.w * r2.w);
  r1.w = 1.0f;
  r1.w = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r0.w = (r0.w * r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.w) != 0u));
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r4 = vec4<f32>(v_6.xy, r4.zw);
  let v_7 = r4.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r4 = vec4<f32>(v_9.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
  r1.w = bitcast<f32>((bitcast<u32>(r4.y) & 8u));
  r1.w = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_10 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  r2.w = (r5.x * r5.x);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_11.xy, r5.z, v_11.z);
  let v_12 = fract(r5.xyw);
  r5 = vec4<f32>(v_12.xy, r5.z, v_12.z);
  let v_13 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_13.xy, r5.zw);
  let v_14 = fma(r6.xyz, vec3<f32>(256.0f), r5.xyw);
  r5 = vec4<f32>(v_14.xy, r5.z, v_14.z);
  let v_15 = (r5.xyw + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
  r0.x = dot(r5.xyw, r5.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r5.xyw);
  r5 = vec4<f32>(v_16.xy, r5.z, v_16.z);
  r0.x = min(r2.w, 1.0f);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yyy * r2.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_18 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r7 = vec4<f32>(v_18.xyz, r7.w);
    r8.x = dot(r7.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r7.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.z = dot(r7.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_19 = -(r8.xyzx);
    r0.y = dot(v_19.xyz, (-(r8.xyzx)).xyz);
    r0.y = sqrt(r0.y);
    let v_20 = ((-(r8.xyzx)).xyz / r0.yyy);
    r7 = vec4<f32>(v_20.xyz, r7.w);
    r0.y = (r0.y * cb6_6.tint_symbol_2[17u].w);
    let v_21 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r7.xyz)));
    r8 = vec4<f32>(v_21.xyz, r8.w);
    let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r7.xyz < vec3<f32>())));
    r9 = vec4<f32>(v_22.xyz, r9.w);
    let v_23 = -(bitcast<vec4<i32>>(r8.xyzx));
    let v_24 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_23.xyz));
    r8 = vec4<f32>(v_24.xyz, r8.w);
    let v_25 = vec3<f32>(bitcast<vec3<i32>>(r8.zxy));
    r8 = vec4<f32>(v_25.xyz, r8.w);
    r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r7.zzxx) >= abs(r7.xyyz))));
    let v_26 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) & bitcast<vec2<u32>>(r9.xz)));
    r9 = vec4<f32>(v_26.xy, r9.zw);
    let v_27 = (-(r8.yzyy)).xy;
    r10 = vec4<f32>(v_27.xy, r10.zw);
    r10.z = 0.0f;
    r10.w = abs(r7.xxxx).w;
    r11 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r11.zw);
    r11.z = abs(r7.yyyy).z;
    let v_28 = bitcast<vec3<u32>>(r9.yyy);
    let v_29 = r10.zxw;
    let v_30 = select(r11.xyz, v_29, (v_28 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_30.xyz);
    r8.y = 0.0f;
    r8.z = abs(r7.zzzz).z;
    let v_31 = bitcast<vec3<u32>>(r9.xxx);
    let v_32 = r8.xyz;
    let v_33 = select(r9.yzw, v_32, (v_31 != vec3<u32>()));
    r8 = vec4<f32>(v_33.xyz, r8.w);
    let v_34 = abs(r7.yyyy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r8.z == v_34.w)));
    let v_35 = bitcast<vec2<u32>>(r2.ww);
    let v_36 = select(vec2<f32>(1.0f, 0.0f), r10.zy, (v_35 != vec2<u32>()));
    let v_37 = r9;
    r9 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
    r2.w = dot(r8.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_38 = (r7.xyz / r2.www);
    r7 = vec4<f32>(v_38.xyz, r7.w);
    let v_39 = (r8.xy * vec2<f32>(-0.5f));
    let v_40 = r10;
    r10 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
    r10.y = 0.0f;
    let v_41 = (r7.xyz + r10.xyz);
    r10 = vec4<f32>(v_41.xyz, r10.w);
    r9.x = 0.0f;
    let v_42 = fma(vec3<f32>(-0.5f), r9.xyz, r10.xyz);
    r11 = vec4<f32>(v_42.xyz, r11.w);
    let v_43 = r11.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_43.xyz, r0.y);
    let v_44 = (r8.xy * vec2<f32>(0.5f));
    let v_45 = r8;
    r8 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
    r8.y = 0.0f;
    let v_46 = (r7.xyz + r8.xyz);
    r7 = vec4<f32>(v_46.xyz, r7.w);
    let v_47 = fma(vec3<f32>(-0.5f), r9.xyz, r7.xyz);
    r8 = vec4<f32>(v_47.xyz, r8.w);
    let v_48 = r8.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_48.xyz, r0.y);
    r2.w = (r2.w + r3.w);
    let v_49 = fma(vec3<f32>(0.5f), r9.xyz, r10.xyz);
    r8 = vec4<f32>(v_49.xyz, r8.w);
    let v_50 = r8.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r0.y);
    r2.w = (r2.w + r3.w);
    let v_51 = fma(vec3<f32>(0.5f), r9.xyz, r7.xyz);
    r7 = vec4<f32>(v_51.xyz, r7.w);
    let v_52 = r7.xyzx;
    r0.y = textureSampleCompareLevel(t14, s14, v_52.xyz, r0.y);
    r0.y = (r0.y + r2.w);
    r0.y = (r0.y * 0.25f);
  } else {
    let v_53 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_53.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_54 = -(r0.zzzz);
    let v_55 = (r7.xy / v_54.xy);
    r7 = vec4<f32>(v_55.xy, r7.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r7.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_56 = fma(r7.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_56.xyz, r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_57 = r7.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_57.xy, r2.z);
    let v_58 = r7.zwzz;
    r2.w = textureSampleCompareLevel(t24, s14, v_58.xy, r2.z);
    r0.z = (r0.z + r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_59 = r7.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_59.xy, r2.z);
    r0.z = (r0.z + r2.x);
    let v_60 = r7.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_60.xy, r2.z);
    r0.z = (r0.z + r2.x);
    r0.y = (r0.z * 0.25f);
  }
  r0.z = (r0.w * r1.w);
  let v_61 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_63 = -(r2.xyzx);
  let v_64 = fma(v_62.xyz, cb12_12.tint_symbol_3[2u].zxy, v_63.xyz);
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = -(r3.xyzx);
  r2.x = dot(r2.xyz, v_65.xyz);
  let v_66 = -(r3.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_66.xyz);
  r0.w = dot(v_4.xyz, (-(r3.xyzx)).xyz);
  r1.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (cb12_12.tint_symbol_3[5u].x / r1.w);
  r1.w = (r1.w * 0.5f);
  r0.w = (r1.w / r0.w);
  let v_67 = clamp(fma(r2.xyxx, r0.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_67.xy, r2.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r1.w = ((-(r2.yyyy)).w + 1.0f);
  let v_68 = bitcast<u32>(r0.w);
  let v_69 = r1.w;
  r2.z = select(r2.y, v_69, (v_68 != 0u));
  r2 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f);
  let v_70 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  let v_74 = dot(r5.xyw, r3.xyz);
  r0.w = clamp(vec4<f32>(v_74, v_74, v_74, v_74).w, 0.0f, 1.0f);
  let v_75 = dot((-(r6.xyzx)).xyz, r5.xyw);
  r1.w = clamp(vec4<f32>(v_75, v_75, v_75, v_75).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.w = (r1.w * r1.w);
  r2.w = (r2.w * r2.w);
  r1.w = (r1.w * r2.w);
  r2.w = ((-(r5.zzzz)).w + 1.0f);
  r1.w = fma(r5.z, r1.w, r2.w);
  r0.x = fma((-(r0.xxxx)).x, r1.w, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.w = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r0.w = ((-(r0.wwww)).w / r3.z);
  r3 = fma(r3.xyyx, r0.wwww, r1.xyyx);
  r5 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r5);
  r5 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_76 = (r3.xyz * r5.xyz);
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
  let v_80 = fma(r0.xxx, r1.xyw, v_79.xyw);
  r1 = vec4<f32>(v_80.xy, r1.z, v_80.z);
  let v_81 = fma(r1.zzz, r1.xyw, r0.xxx);
  r1 = vec4<f32>(v_81.xyz, r1.w);
  r0.x = (r0.y + -1.0f);
  r0.x = fma(cb12_12.tint_symbol_3[8u].y, r0.x, 1.0f);
  let v_82 = (r1.xyz * r4.xyz);
  r1 = vec4<f32>(v_82.xyz, r1.w);
  let v_83 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(r0.x, v_84.xyz);
  let v_85 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_86.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_87 : bool) {
  if (v_87) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
