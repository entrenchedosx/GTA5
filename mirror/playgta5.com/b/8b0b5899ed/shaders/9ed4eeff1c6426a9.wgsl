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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

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
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_5((bitcast<u32>(r1.x) != 0u));
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = r1.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 8.0f)));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_10 = (r4.xyz * r4.xyz);
  r1 = vec4<f32>(r1.x, v_10.xyz);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r2.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_11 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_11.xy, r4.z, v_11.z);
  let v_12 = fract(r4.xyw);
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  let v_13 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  let v_14 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_14.xy, r4.z, v_14.z);
  let v_15 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_15.xy, r4.z, v_15.z);
  r0.x = dot(r4.xyw, r4.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_16 = (r0.xxx * r4.xyw);
  r4 = vec4<f32>(v_16.xy, r4.z, v_16.z);
  r0.x = min(r2.w, 1.0f);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yyy * r2.xyz);
  r5 = vec4<f32>(v_17.xyz, r5.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 2.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_18 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r6 = vec4<f32>(v_18.xyz, r6.w);
    r7.x = dot(r6.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r7.y = dot(r6.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r7.z = dot(r6.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_19 = -(r7.xyzx);
    r0.y = dot(v_19.xyz, (-(r7.xyzx)).xyz);
    r0.y = sqrt(r0.y);
    let v_20 = ((-(r7.xyzx)).xyz / r0.yyy);
    r6 = vec4<f32>(v_20.xyz, r6.w);
    r0.y = (r0.y * cb6_6.tint_symbol_2[17u].w);
    let v_21 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r6.xyz)));
    r7 = vec4<f32>(v_21.xyz, r7.w);
    let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r6.xyz < vec3<f32>())));
    r8 = vec4<f32>(v_22.xyz, r8.w);
    let v_23 = -(bitcast<vec4<i32>>(r7.xyzx));
    let v_24 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_23.xyz));
    r7 = vec4<f32>(v_24.xyz, r7.w);
    let v_25 = vec3<f32>(bitcast<vec3<i32>>(r7.zxy));
    r7 = vec4<f32>(v_25.xyz, r7.w);
    r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r6.zzxx) >= abs(r6.xyyz))));
    let v_26 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) & bitcast<vec2<u32>>(r8.xz)));
    r8 = vec4<f32>(v_26.xy, r8.zw);
    let v_27 = (-(r7.yzyy)).xy;
    r9 = vec4<f32>(v_27.xy, r9.zw);
    r9.z = 0.0f;
    r9.w = abs(r6.xxxx).w;
    r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
    r10.z = abs(r6.yyyy).z;
    let v_28 = bitcast<vec3<u32>>(r8.yyy);
    let v_29 = r9.zxw;
    let v_30 = select(r10.xyz, v_29, (v_28 != vec3<u32>()));
    r8 = vec4<f32>(r8.x, v_30.xyz);
    r7.y = 0.0f;
    r7.z = abs(r6.zzzz).z;
    let v_31 = bitcast<vec3<u32>>(r8.xxx);
    let v_32 = r7.xyz;
    let v_33 = select(r8.yzw, v_32, (v_31 != vec3<u32>()));
    r7 = vec4<f32>(v_33.xyz, r7.w);
    let v_34 = abs(r6.yyyy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_34.w)));
    let v_35 = bitcast<vec2<u32>>(r2.ww);
    let v_36 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_35 != vec2<u32>()));
    let v_37 = r8;
    r8 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
    r2.w = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
    let v_38 = (r6.xyz / r2.www);
    r6 = vec4<f32>(v_38.xyz, r6.w);
    let v_39 = (r7.xy * vec2<f32>(-0.5f));
    let v_40 = r9;
    r9 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
    r9.y = 0.0f;
    let v_41 = (r6.xyz + r9.xyz);
    r9 = vec4<f32>(v_41.xyz, r9.w);
    r8.x = 0.0f;
    let v_42 = fma(vec3<f32>(-0.5f), r8.xyz, r9.xyz);
    r10 = vec4<f32>(v_42.xyz, r10.w);
    let v_43 = r10.xyzx;
    r2.w = textureSampleCompareLevel(t14, s14, v_43.xyz, r0.y);
    let v_44 = (r7.xy * vec2<f32>(0.5f));
    let v_45 = r7;
    r7 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
    r7.y = 0.0f;
    let v_46 = (r6.xyz + r7.xyz);
    r6 = vec4<f32>(v_46.xyz, r6.w);
    let v_47 = fma(vec3<f32>(-0.5f), r8.xyz, r6.xyz);
    r7 = vec4<f32>(v_47.xyz, r7.w);
    let v_48 = r7.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_48.xyz, r0.y);
    r2.w = (r2.w + r3.w);
    let v_49 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
    r7 = vec4<f32>(v_49.xyz, r7.w);
    let v_50 = r7.xyzx;
    r3.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r0.y);
    r2.w = (r2.w + r3.w);
    let v_51 = fma(vec3<f32>(0.5f), r8.xyz, r6.xyz);
    r6 = vec4<f32>(v_51.xyz, r6.w);
    let v_52 = r6.xyzx;
    r0.y = textureSampleCompareLevel(t14, s14, v_52.xyz, r0.y);
    r0.y = (r0.y + r2.w);
    r0.y = (r0.y * 0.25f);
  } else {
    let v_53 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_53.xyz, r2.w);
    r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_54 = -(r0.zzzz);
    let v_55 = (r6.xy / v_54.xy);
    r6 = vec4<f32>(v_55.xy, r6.zw);
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = sqrt(r0.z);
    r6.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_56 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.0f));
    r2 = vec4<f32>(v_56.xyz, r2.w);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), r2.xyxy);
    let v_57 = r6.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_57.xy, r2.z);
    let v_58 = r6.zwzz;
    r2.w = textureSampleCompareLevel(t24, s14, v_58.xy, r2.z);
    r0.z = (r0.z + r2.w);
    r6 = fma(cb6_6.tint_symbol_2[47u].zwzw, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), r2.xyxy);
    let v_59 = r6.xyxx;
    r2.x = textureSampleCompareLevel(t24, s14, v_59.xy, r2.z);
    r0.z = (r0.z + r2.x);
    let v_60 = r6.zwzz;
    r2.x = textureSampleCompareLevel(t24, s14, v_60.xy, r2.z);
    r0.z = (r0.z + r2.x);
    r0.y = (r0.z * 0.25f);
  }
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r0.z = (r0.z * r0.w);
  let v_61 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = dot(r4.xyw, r3.xyz);
  r0.w = clamp(vec4<f32>(v_62, v_62, v_62, v_62).w, 0.0f, 1.0f);
  let v_63 = dot((-(r5.xyzx)).xyz, r4.xyw);
  r1.x = clamp(vec4<f32>(v_63, v_63, v_63, v_63).x, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r2.w = (r1.x * r1.x);
  r2.w = (r2.w * r2.w);
  r1.x = (r1.x * r2.w);
  r2.w = ((-(r4.zzzz)).w + 1.0f);
  r1.x = fma(r4.z, r1.x, r2.w);
  r0.x = fma((-(r0.xxxx)).x, r1.x, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.y = (r0.y + -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_64 = (r0.xxx * r1.yzw);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = (r2.xyz * r1.xyz);
  r1 = vec4<f32>(v_65.xyz, r1.w);
  let v_66 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(v_66.x, r0.y, v_66.yz);
  let v_67 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_68.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_5(v_69 : bool) {
  if (v_69) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
