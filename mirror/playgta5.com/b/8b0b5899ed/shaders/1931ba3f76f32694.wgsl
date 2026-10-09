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
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_6 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_6.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  r1.w = (r5.x * r5.x);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_7 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_7.xy, r5.z, v_7.z);
  let v_8 = fract(r5.xyw);
  r5 = vec4<f32>(v_8.xy, r5.z, v_8.z);
  let v_9 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_9.xy, r5.zw);
  let v_10 = fma(r6.xyz, vec3<f32>(256.0f), r5.xyw);
  r5 = vec4<f32>(v_10.xy, r5.z, v_10.z);
  let v_11 = (r5.xyw + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_11.xy, r5.z, v_11.z);
  r0.x = dot(r5.xyw, r5.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_12 = (r0.xxx * r5.xyw);
  r5 = vec4<f32>(v_12.xy, r5.z, v_12.z);
  r0.x = min(r1.w, 1.0f);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_13 = (r0.yyy * r2.xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_14 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r7 = vec4<f32>(v_14.xyz, r7.w);
    r8.x = dot(r7.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r8.y = dot(r7.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r8.z = dot(r7.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_15 = -(r8.xyzx);
    r0.y = dot(v_15.xyz, (-(r8.xyzx)).xyz);
    r0.y = sqrt(r0.y);
    let v_16 = ((-(r8.xyzx)).xyz / r0.yyy);
    r7 = vec4<f32>(v_16.xyz, r7.w);
    r0.y = (r0.y * cb6_6.tint_symbol_2[17u].w);
    let v_17 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r7.xyz)));
    r8 = vec4<f32>(v_17.xyz, r8.w);
    let v_18 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r7.xyz < vec3<f32>())));
    r9 = vec4<f32>(v_18.xyz, r9.w);
    let v_19 = -(bitcast<vec4<i32>>(r8.xyzx));
    let v_20 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_19.xyz));
    r8 = vec4<f32>(v_20.xyz, r8.w);
    let v_21 = vec3<f32>(bitcast<vec3<i32>>(r8.zxy));
    r8 = vec4<f32>(v_21.xyz, r8.w);
    r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r7.zzxx) >= abs(r7.xyyz))));
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) & bitcast<vec2<u32>>(r9.xz)));
    r9 = vec4<f32>(v_22.xy, r9.zw);
    let v_23 = (-(r8.yzyy)).xy;
    r10 = vec4<f32>(v_23.xy, r10.zw);
    r10.z = 0.0f;
    r10.w = abs(r7.xxxx).w;
    r11 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r11.zw);
    r11.z = abs(r7.yyyy).z;
    let v_24 = bitcast<vec3<u32>>(r9.yyy);
    let v_25 = r10.zxw;
    let v_26 = select(r11.xyz, v_25, (v_24 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_26.xyz);
    r8.y = 0.0f;
    r8.z = abs(r7.zzzz).z;
    let v_27 = bitcast<vec3<u32>>(r9.xxx);
    let v_28 = r8.xyz;
    let v_29 = select(r9.yzw, v_28, (v_27 != vec3<u32>()));
    r8 = vec4<f32>(v_29.xyz, r8.w);
    let v_30 = abs(r7.yyyy);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r8.z == v_30.w)));
    let v_31 = bitcast<vec2<u32>>(r1.ww);
    let v_32 = select(vec2<f32>(1.0f, 0.0f), r10.zy, (v_31 != vec2<u32>()));
    let v_33 = r9;
    r9 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
    r1.w = dot(r8.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_34 = (r7.xyz / r1.www);
    r7 = vec4<f32>(v_34.xyz, r7.w);
    let v_35 = (r8.xy * vec2<f32>(-0.5f));
    let v_36 = r10;
    r10 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
    r10.y = 0.0f;
    let v_37 = (r7.xyz + r10.xyz);
    r10 = vec4<f32>(v_37.xyz, r10.w);
    r9.x = 0.0f;
    let v_38 = fma(vec3<f32>(-0.5f), r9.xyz, r10.xyz);
    r11 = vec4<f32>(v_38.xyz, r11.w);
    let v_39 = r11.xyzx;
    r1.w = textureSampleCompareLevel(t14, s14, v_39.xyz, r0.y);
    let v_40 = (r8.xy * vec2<f32>(0.5f));
    let v_41 = r8;
    r8 = vec4<f32>(v_40.x, v_41.y, v_40.y, v_41.w);
    r8.y = 0.0f;
    let v_42 = (r7.xyz + r8.xyz);
    r7 = vec4<f32>(v_42.xyz, r7.w);
    let v_43 = fma(vec3<f32>(-0.5f), r9.xyz, r7.xyz);
    r8 = vec4<f32>(v_43.xyz, r8.w);
    let v_44 = r8.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_44.xyz, r0.y);
    r1.w = (r1.w + r2.w);
    let v_45 = fma(vec3<f32>(0.5f), r9.xyz, r10.xyz);
    r8 = vec4<f32>(v_45.xyz, r8.w);
    let v_46 = r8.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_46.xyz, r0.y);
    r1.w = (r1.w + r2.w);
    let v_47 = fma(vec3<f32>(0.5f), r9.xyz, r7.xyz);
    r7 = vec4<f32>(v_47.xyz, r7.w);
    let v_48 = r7.xyzx;
    r0.y = textureSampleCompareLevel(t14, s14, v_48.xyz, r0.y);
    r0.y = (r0.y + r1.w);
    r0.y = (r0.y * 0.25f);
  } else {
    let v_49 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_49.xyz, r2.w);
    r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_50 = -(r0.zzzz);
    let v_51 = (r7.xy / v_50.xy);
    r7 = vec4<f32>(v_51.xy, r7.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r7.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_52 = fma(r7.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_52.xyz, r2.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_53 = r7.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_53.xy, r2.z);
    let v_54 = r7.zwzz;
    r1.w = textureSampleCompareLevel(t24, s14, v_54.xy, r2.z);
    r0.z = (r0.z + r1.w);
    r7 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_55 = r7.xyxx;
    r1.w = textureSampleCompareLevel(t24, s14, v_55.xy, r2.z);
    r0.z = (r0.z + r1.w);
    let v_56 = r7.zwzz;
    r1.w = textureSampleCompareLevel(t24, s14, v_56.xy, r2.z);
    r0.z = (r0.z + r1.w);
    r0.y = (r0.z * 0.25f);
  }
  let v_57 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  let v_58 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_59 = -(r2.xyzx);
  let v_60 = fma(v_58.xyz, cb12_12.tint_symbol_3[2u].zxy, v_59.xyz);
  r2 = vec4<f32>(v_60.xyz, r2.w);
  let v_61 = -(r3.xyzx);
  r2.x = dot(r2.xyz, v_61.xyz);
  let v_62 = -(r3.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_62.xyz);
  r0.z = dot(v_4.xyz, (-(r3.xyzx)).xyz);
  r1.w = fma((-(cb12_12.tint_symbol_3[5u].xxxx)).w, cb12_12.tint_symbol_3[5u].x, 1.0f);
  r1.w = sqrt(r1.w);
  r1.w = (cb12_12.tint_symbol_3[5u].x / r1.w);
  r1.w = (r1.w * 0.5f);
  r0.z = (r1.w / r0.z);
  let v_63 = clamp(fma(r2.xyxx, r0.zzzz, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_63.xy, r2.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[11u].x == 1.0f)));
  r1.w = ((-(r2.yyyy)).w + 1.0f);
  let v_64 = bitcast<u32>(r0.z);
  let v_65 = r1.w;
  r2.z = select(r2.y, v_65, (v_64 != 0u));
  r2 = textureSampleLevel(t2, s2, r2.xzxx.xy, 0.0f);
  let v_66 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_66.xyz, r2.w);
  let v_67 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_67.xyz, r2.w);
  let v_68 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_69.xyz, r2.w);
  let v_70 = dot(r5.xyw, r3.xyz);
  r0.z = clamp(vec4<f32>(v_70, v_70, v_70, v_70).z, 0.0f, 1.0f);
  let v_71 = dot((-(r6.xyzx)).xyz, r5.xyw);
  r1.w = clamp(vec4<f32>(v_71, v_71, v_71, v_71).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.w = (r1.w * r1.w);
  r2.w = (r2.w * r2.w);
  r1.w = (r1.w * r2.w);
  r2.w = ((-(r5.zzzz)).w + 1.0f);
  r1.w = fma(r5.z, r1.w, r2.w);
  r0.x = fma((-(r0.xxxx)).x, r1.w, 1.0f);
  r0.x = (r0.x * r0.z);
  r0.z = (r1.z + cb12_12.tint_symbol_3[7u].z);
  r0.z = ((-(r0.zzzz)).z / r3.z);
  r3 = fma(r3.xyyx, r0.zzzz, r1.xyyx);
  r5 = (cb12_12.tint_symbol_3[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r3 = fma(r3, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r5);
  r5 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_72 = (r3.xyz * r5.xyz);
  r1 = vec4<f32>(v_72.xy, r1.z, v_72.z);
  let v_73 = (r1.xyw * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_73.xy, r1.z, v_73.z);
  r1.z = ((-(r1.zzzz)).z + cb12_12.tint_symbol_3[7u].z);
  r1.z = clamp(((r1.zzzz + r1.zzzz)).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 25.0f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(0.03999999910593032837f))).z, 0.0f, 1.0f);
  let v_74 = (r0.zzz * r1.xyw);
  r1 = vec4<f32>(v_74.xy, r1.z, v_74.z);
  let v_75 = -(r0.xxxx);
  let v_76 = fma(r0.xxx, r1.xyw, v_75.xyw);
  r1 = vec4<f32>(v_76.xy, r1.z, v_76.z);
  let v_77 = fma(r1.zzz, r1.xyw, r0.xxx);
  r1 = vec4<f32>(v_77.xyz, r1.w);
  r0.x = (r0.y + -1.0f);
  r0.x = fma(cb12_12.tint_symbol_3[8u].y, r0.x, 1.0f);
  let v_78 = (r1.xyz * r4.xyz);
  r1 = vec4<f32>(v_78.xyz, r1.w);
  let v_79 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_79.xyz, r1.w);
  let v_80 = (r0.www * r1.xyz);
  r0 = vec4<f32>(r0.x, v_80.xyz);
  let v_81 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_81.xyz, r0.w);
  let v_82 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_82.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_83 : bool) {
  if (v_83) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
