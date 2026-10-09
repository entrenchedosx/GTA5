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
  r4.x = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.y = ((-(cb12_12.tint_symbol_3[7u].xxxx)).y + 1.0f);
  r4.y = fma(r4.y, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.y);
  r3.w = 1.0f;
  r3.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 0.0f)));
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r3.x = (r3.x * r4.x);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.x < 0.00000099999999747524f)));
  v_7((bitcast<u32>(r3.y) != 0u));
  r3.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r3.y = bitcast<f32>((bitcast<u32>(r3.y) & 8u));
  r3.y = f32(bitcast<u32>(r3.y));
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y >= 8.0f)));
  let v_8 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xz;
  r3 = vec4<f32>(r3.xy, v_10.xy);
  r3.z = (r3.z * r3.z);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_11 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = fract(r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_13.xy, r5.zw);
  let v_14 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_16 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = min(r3.z, 1.0f);
  r2.w = inverseSqrt(r2.w);
  let v_17 = (r1.yzw * r2.www);
  r1 = vec4<f32>(r1.x, v_17.xyz);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_18 = (r2.www * r2.xyz);
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = fma(r2.xyz, r1.xxx, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r6.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r6.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r6.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_20 = -(r6.xyzx);
  r1.x = dot(v_20.xyz, (-(r6.xyzx)).xyz);
  r1.x = sqrt(r1.x);
  let v_21 = ((-(r6.xyzx)).xyz / r1.xxx);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r1.x = (r1.x * cb6_6.tint_symbol_2[17u].w);
  let v_22 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r6 = vec4<f32>(v_22.xyz, r6.w);
  let v_23 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = -(bitcast<vec4<i32>>(r6.xyzx));
  let v_25 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + v_24.xyz));
  r6 = vec4<f32>(v_25.xyz, r6.w);
  let v_26 = vec3<f32>(bitcast<vec3<i32>>(r6.zxy));
  r6 = vec4<f32>(v_26.xyz, r6.w);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzxx) >= abs(r2.xyyz))));
  let v_27 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r7.yw) & bitcast<vec2<u32>>(r7.xz)));
  r7 = vec4<f32>(v_27.xy, r7.zw);
  let v_28 = (-(r6.yzyy)).xy;
  r8 = vec4<f32>(v_28.xy, r8.zw);
  r8.z = 0.0f;
  r8.w = abs(r2.xxxx).w;
  r9 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r9.zw);
  r9.z = abs(r2.yyyy).z;
  let v_29 = bitcast<vec3<u32>>(r7.yyy);
  let v_30 = r8.zxw;
  let v_31 = select(r9.xyz, v_30, (v_29 != vec3<u32>()));
  r7 = vec4<f32>(r7.x, v_31.xyz);
  r6.y = 0.0f;
  r6.z = abs(r2.zzzz).z;
  let v_32 = bitcast<vec3<u32>>(r7.xxx);
  let v_33 = r6.xyz;
  let v_34 = select(r7.yzw, v_33, (v_32 != vec3<u32>()));
  r6 = vec4<f32>(v_34.xyz, r6.w);
  let v_35 = abs(r2.yyyy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r6.z == v_35.w)));
  let v_36 = bitcast<vec2<u32>>(r2.ww);
  let v_37 = select(vec2<f32>(1.0f, 0.0f), r8.zy, (v_36 != vec2<u32>()));
  let v_38 = r7;
  r7 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  r2.w = dot(r6.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_39 = (r2.xyz / r2.www);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = (r6.xy * vec2<f32>(-0.5f));
  let v_41 = r8;
  r8 = vec4<f32>(v_40.x, v_41.y, v_40.y, v_41.w);
  r8.y = 0.0f;
  let v_42 = (r2.xyz + r8.xyz);
  r8 = vec4<f32>(v_42.xyz, r8.w);
  r7.x = 0.0f;
  let v_43 = fma(vec3<f32>(-0.5f), r7.xyz, r8.xyz);
  r9 = vec4<f32>(v_43.xyz, r9.w);
  let v_44 = r9.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_44.xyz, r1.x);
  let v_45 = (r6.xy * vec2<f32>(0.5f));
  let v_46 = r6;
  r6 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
  r6.y = 0.0f;
  let v_47 = (r2.xyz + r6.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = fma(vec3<f32>(-0.5f), r7.xyz, r2.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = r6.xyzx;
  r3.z = textureSampleCompareLevel(t14, s14, v_49.xyz, r1.x);
  r2.w = (r2.w + r3.z);
  let v_50 = fma(vec3<f32>(0.5f), r7.xyz, r8.xyz);
  r6 = vec4<f32>(v_50.xyz, r6.w);
  let v_51 = r6.xyzx;
  r3.z = textureSampleCompareLevel(t14, s14, v_51.xyz, r1.x);
  r2.w = (r2.w + r3.z);
  let v_52 = fma(vec3<f32>(0.5f), r7.xyz, r2.xyz);
  r2 = vec4<f32>(v_52.xyz, r2.w);
  let v_53 = r2.xyzx;
  r1.x = textureSampleCompareLevel(t14, s14, v_53.xyz, r1.x);
  r1.x = (r1.x + r2.w);
  r2.x = select(1.0f, 0.0f, (bitcast<u32>(r3.y) != 0u));
  r2.x = (r2.x * r3.x);
  let v_54 = ((-(cb12_12.tint_symbol_3[1u].zzxy)).yzw * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(r2.x, v_54.xyz);
  let v_55 = -(cb12_12.tint_symbol_3[1u].yyzx);
  let v_56 = -(r2.yyzw);
  let v_57 = fma(v_55.yzw, cb12_12.tint_symbol_3[2u].zxy, v_56.yzw);
  r2 = vec4<f32>(r2.x, v_57.xyz);
  let v_58 = -(r1.yzwy);
  r3.x = dot(r2.yzw, v_58.xyz);
  let v_59 = -(r1.yzwy);
  r3.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_59.xyz);
  let v_60 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r2.y = dot(v_60.xyz, (-(r1.yzwy)).xyz);
  let v_61 = -(r1.yzwy);
  r2.z = dot(v_61.xyz, (-(r1.yzwy)).xyz);
  r2.z = sqrt(r2.z);
  r2.y = (r2.y / r2.z);
  r2.y = ((-(r2.yyyy)).y + 1.0f);
  r2.y = (r2.y * r2.z);
  r2.y = (1.0f / r2.y);
  let v_62 = (r2.yy * r3.xy);
  let v_63 = r2;
  r2 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  let v_64 = fma(r2.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
  let v_65 = r2;
  r2 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
  let v_66 = textureSampleLevel(t2, s2, r2.yzyy.xy, 0.0f).xyz;
  r2 = vec4<f32>(r2.x, v_66.xyz);
  let v_67 = fma(r2.yzw, r2.yzw, vec3<f32>(-1.0f));
  r2 = vec4<f32>(r2.x, v_67.xyz);
  let v_68 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.yzw, vec3<f32>(1.0f));
  r2 = vec4<f32>(r2.x, v_68.xyz);
  let v_69 = (r2.yzw * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(r2.x, v_69.xyz);
  let v_70 = (r2.yzw * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(r2.x, v_70.xyz);
  let v_71 = dot(r0.xyz, r1.yzw);
  r1.y = clamp(vec4<f32>(v_71, v_71, v_71, v_71).y, 0.0f, 1.0f);
  let v_72 = dot((-(r5.xyzx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_72, v_72, v_72, v_72).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x * r0.x);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = ((-(r3.wwww)).y + 1.0f);
  r0.x = fma(r3.w, r0.x, r0.y);
  r0.x = fma((-(r0.wwww)).x, r0.x, 1.0f);
  r0.x = (r0.x * r1.y);
  r0.y = fma(r1.x, 0.25f, -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_73 = (r0.xxx * r4.xyz);
  r0 = vec4<f32>(v_73.x, r0.y, v_73.yz);
  let v_74 = (r2.yzw * r0.xzw);
  r0 = vec4<f32>(v_74.x, r0.y, v_74.yz);
  let v_75 = (r2.xxx * r0.xzw);
  r0 = vec4<f32>(v_75.x, r0.y, v_75.yz);
  let v_76 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  let v_77 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_77.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_78 : bool) {
  if (v_78) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
