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

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

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
  r2.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r3.w = ((-(cb12_12.tint_symbol_3[7u].xxxx)).w + 1.0f);
  r3.w = fma(r3.w, r2.w, cb12_12.tint_symbol_3[7u].x);
  r2.w = (r2.w / r3.w);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = (r1.x * r2.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.00000099999999747524f)));
  v_3((bitcast<u32>(r1.y) != 0u));
  let v_4 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = r1.yz;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
  r1.y = bitcast<f32>((bitcast<u32>(r4.y) & 8u));
  r1.y = f32(bitcast<u32>(r1.y));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 8.0f)));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  r1.z = (r5.x * r5.x);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_10 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_10.xy, r5.z, v_10.z);
  let v_11 = fract(r5.xyw);
  r5 = vec4<f32>(v_11.xy, r5.z, v_11.z);
  let v_12 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  let v_13 = fma(r6.xyz, vec3<f32>(256.0f), r5.xyw);
  r5 = vec4<f32>(v_13.xy, r5.z, v_13.z);
  let v_14 = (r5.xyw + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_14.xy, r5.z, v_14.z);
  r0.x = dot(r5.xyw, r5.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_15 = (r0.xxx * r5.xyw);
  r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
  r0.x = min(r1.z, 1.0f);
  r0.y = inverseSqrt(r0.w);
  let v_16 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yyy * r2.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  let v_18 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  r2.x = dot(r0.yzw, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r0.yzw, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r0.yzw, cb6_6.tint_symbol_2[17u].xyz);
  let v_19 = -(r2.xyzx);
  r0.y = dot(v_19.xyz, (-(r2.xyzx)).xyz);
  r0.y = sqrt(r0.y);
  let v_20 = ((-(r2.xyzx)).xyz / r0.yyy);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.y = (r0.y * cb6_6.tint_symbol_2[17u].w);
  let v_21 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r7 = vec4<f32>(v_21.xyz, r7.w);
  let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = -(bitcast<vec4<i32>>(r7.xyzx));
  let v_24 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + v_23.xyz));
  r7 = vec4<f32>(v_24.xyz, r7.w);
  let v_25 = vec3<f32>(bitcast<vec3<i32>>(r7.zxy));
  r7 = vec4<f32>(v_25.xyz, r7.w);
  r8 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzxx) >= abs(r2.xyyz))));
  let v_26 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r8.yw) & bitcast<vec2<u32>>(r8.xz)));
  r0 = vec4<f32>(r0.xy, v_26.xy);
  let v_27 = (-(r7.yzyy)).xy;
  r8 = vec4<f32>(v_27.xy, r8.zw);
  r8.z = 0.0f;
  r8.w = abs(r2.xxxx).w;
  r9 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r9.zw);
  r9.z = abs(r2.yyyy).z;
  let v_28 = bitcast<vec3<u32>>(r0.www);
  let v_29 = r8.zxw;
  let v_30 = select(r9.xyz, v_29, (v_28 != vec3<u32>()));
  r9 = vec4<f32>(v_30.xyz, r9.w);
  r7.y = 0.0f;
  r7.z = abs(r2.zzzz).z;
  let v_31 = bitcast<vec3<u32>>(r0.zzz);
  let v_32 = r7.xyz;
  let v_33 = select(r9.xyz, v_32, (v_31 != vec3<u32>()));
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = abs(r2.yyyy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_34.z)));
  let v_35 = bitcast<vec2<u32>>(r0.zz);
  let v_36 = select(vec2<f32>(1.0f, 0.0f), r8.zy, (v_35 != vec2<u32>()));
  let v_37 = r8;
  r8 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  r0.z = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_38 = (r2.xyz / r0.zzz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = (r7.xy * vec2<f32>(-0.5f));
  let v_40 = r9;
  r9 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  r9.y = 0.0f;
  let v_41 = (r2.xyz + r9.xyz);
  r9 = vec4<f32>(v_41.xyz, r9.w);
  r8.x = 0.0f;
  let v_42 = fma(vec3<f32>(-0.5f), r8.xyz, r9.xyz);
  r10 = vec4<f32>(v_42.xyz, r10.w);
  let v_43 = r10.xyzx;
  r0.z = textureSampleCompareLevel(t14, s14, v_43.xyz, r0.y);
  let v_44 = (r7.xy * vec2<f32>(0.5f));
  let v_45 = r7;
  r7 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
  r7.y = 0.0f;
  let v_46 = (r2.xyz + r7.xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = fma(vec3<f32>(-0.5f), r8.xyz, r2.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = r7.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_48.xyz, r0.y);
  r0.z = (r0.w + r0.z);
  let v_49 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = r7.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r0.y);
  r0.z = (r0.w + r0.z);
  let v_51 = fma(vec3<f32>(0.5f), r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = r2.xyzx;
  r0.y = textureSampleCompareLevel(t14, s14, v_52.xyz, r0.y);
  r0.y = (r0.y + r0.z);
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r1.y) != 0u));
  r0.z = (r0.z * r1.x);
  let v_53 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r1 = vec4<f32>(v_53.xyz, r1.w);
  let v_54 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_55 = -(r1.xyzx);
  let v_56 = fma(v_54.xyz, cb12_12.tint_symbol_3[2u].zxy, v_55.xyz);
  r1 = vec4<f32>(v_56.xyz, r1.w);
  let v_57 = -(r3.xyzx);
  r1.x = dot(r1.xyz, v_57.xyz);
  let v_58 = -(r3.xyzx);
  r1.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_58.xyz);
  let v_59 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r0.w = dot(v_59.xyz, (-(r3.xyzx)).xyz);
  let v_60 = -(r3.xyzx);
  r1.z = dot(v_60.xyz, (-(r3.xyzx)).xyz);
  r1.z = sqrt(r1.z);
  r0.w = (r0.w / r1.z);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = (r0.w * r1.z);
  r0.w = (1.0f / r0.w);
  let v_61 = (r0.ww * r1.xy);
  r1 = vec4<f32>(v_61.xy, r1.zw);
  let v_62 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r1 = vec4<f32>(v_62.xy, r1.zw);
  r1 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
  let v_63 = fma(r1.xyz, r1.xyz, vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_63.xyz, r1.w);
  let v_64 = fma(cb12_12.tint_symbol_3[11u].yyy, r1.xyz, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = (r1.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_65.xyz, r1.w);
  let v_66 = (r1.xyz * cb12_12.tint_symbol_3[3u].www);
  r1 = vec4<f32>(v_66.xyz, r1.w);
  let v_67 = dot(r5.xyw, r3.xyz);
  r0.w = clamp(vec4<f32>(v_67, v_67, v_67, v_67).w, 0.0f, 1.0f);
  let v_68 = dot((-(r6.xyzx)).xyz, r5.xyw);
  r1.w = clamp(vec4<f32>(v_68, v_68, v_68, v_68).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.x = (r1.w * r1.w);
  r2.x = (r2.x * r2.x);
  r1.w = (r1.w * r2.x);
  r2.x = ((-(r5.zzzz)).x + 1.0f);
  r1.w = fma(r5.z, r1.w, r2.x);
  r0.x = fma((-(r0.xxxx)).x, r1.w, 1.0f);
  r0.x = (r0.x * r0.w);
  r0.y = fma(r0.y, 0.25f, -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_69 = (r0.xxx * r4.xyz);
  r2 = vec4<f32>(v_69.xyz, r2.w);
  let v_70 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_70.xyz, r1.w);
  let v_71 = (r0.zzz * r1.xyz);
  r0 = vec4<f32>(v_71.x, r0.y, v_71.yz);
  let v_72 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_72.xyz, r0.w);
  let v_73 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_73.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_74 : bool) {
  if (v_74) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
