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
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  let v_10 = (r5.xy * r5.xy);
  r1 = vec4<f32>(r1.xy, v_10.xy);
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
  r0.x = min(r1.z, 1.0f);
  r0.y = fma(r1.w, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_17 = -(r0.yyyy);
  r1.z = fma(r1.w, 512.0f, v_17.z);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r1.z, 3.0f, r0.y);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r3.xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_19 = (r1.zzz * r2.xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  let v_20 = -(r7.xyzx);
  let v_21 = fma(r3.xyz, r0.www, v_20.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  r8.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r8.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r8.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_24 = -(r8.xyzx);
  r0.z = dot(v_24.xyz, (-(r8.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  let v_25 = ((-(r8.xyzx)).xyz / r0.zzz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
  let v_26 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r8 = vec4<f32>(v_26.xyz, r8.w);
  let v_27 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r9 = vec4<f32>(v_27.xyz, r9.w);
  let v_28 = -(bitcast<vec4<i32>>(r8.xyzx));
  let v_29 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + v_28.xyz));
  r8 = vec4<f32>(v_29.xyz, r8.w);
  let v_30 = vec3<f32>(bitcast<vec3<i32>>(r8.zxy));
  r8 = vec4<f32>(v_30.xyz, r8.w);
  r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzxx) >= abs(r2.xyyz))));
  let v_31 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r9.yw) & bitcast<vec2<u32>>(r9.xz)));
  r1 = vec4<f32>(r1.xy, v_31.xy);
  let v_32 = (-(r8.yzyy)).xy;
  r9 = vec4<f32>(v_32.xy, r9.zw);
  r9.z = 0.0f;
  r9.w = abs(r2.xxxx).w;
  r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
  r10.z = abs(r2.yyyy).z;
  let v_33 = bitcast<vec3<u32>>(r1.www);
  let v_34 = r9.zxw;
  let v_35 = select(r10.xyz, v_34, (v_33 != vec3<u32>()));
  r10 = vec4<f32>(v_35.xyz, r10.w);
  r8.y = 0.0f;
  r8.z = abs(r2.zzzz).z;
  let v_36 = bitcast<vec3<u32>>(r1.zzz);
  let v_37 = r8.xyz;
  let v_38 = select(r10.xyz, v_37, (v_36 != vec3<u32>()));
  r8 = vec4<f32>(v_38.xyz, r8.w);
  let v_39 = abs(r2.yyyy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r8.z == v_39.w)));
  let v_40 = bitcast<vec2<u32>>(r0.ww);
  let v_41 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_40 != vec2<u32>()));
  let v_42 = r9;
  r9 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  r0.w = dot(r8.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_43 = (r2.xyz / r0.www);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  let v_44 = (r8.xy * vec2<f32>(-0.5f));
  let v_45 = r10;
  r10 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
  r10.y = 0.0f;
  let v_46 = (r2.xyz + r10.xyz);
  r10 = vec4<f32>(v_46.xyz, r10.w);
  r9.x = 0.0f;
  let v_47 = fma(vec3<f32>(-0.5f), r9.xyz, r10.xyz);
  r11 = vec4<f32>(v_47.xyz, r11.w);
  let v_48 = r11.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_48.xyz, r0.z);
  let v_49 = (r8.xy * vec2<f32>(0.5f));
  let v_50 = r8;
  r8 = vec4<f32>(v_49.x, v_50.y, v_49.y, v_50.w);
  r8.y = 0.0f;
  let v_51 = (r2.xyz + r8.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = fma(vec3<f32>(-0.5f), r9.xyz, r2.xyz);
  r8 = vec4<f32>(v_52.xyz, r8.w);
  let v_53 = r8.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_53.xyz, r0.z);
  r0.w = (r0.w + r1.z);
  let v_54 = fma(vec3<f32>(0.5f), r9.xyz, r10.xyz);
  r8 = vec4<f32>(v_54.xyz, r8.w);
  let v_55 = r8.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_55.xyz, r0.z);
  r0.w = (r0.w + r1.z);
  let v_56 = fma(vec3<f32>(0.5f), r9.xyz, r2.xyz);
  r2 = vec4<f32>(v_56.xyz, r2.w);
  let v_57 = r2.xyzx;
  r0.z = textureSampleCompareLevel(t14, s14, v_57.xyz, r0.z);
  r0.z = (r0.z + r0.w);
  r0.w = (r1.y * r1.x);
  let v_58 = (cb12_12.tint_symbol_3[3u].www * cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = dot(r5.xyw, r6.xyz);
  r1.w = clamp(vec4<f32>(v_59, v_59, v_59, v_59).w, 0.0f, 1.0f);
  let v_60 = dot((-(r7.xyzx)).xyz, r5.xyw);
  r2.x = clamp(vec4<f32>(v_60, v_60, v_60, v_60).x, 0.0f, 1.0f);
  let v_61 = dot(r3.xyz, r6.xyz);
  r2.y = clamp(vec4<f32>(v_61, v_61, v_61, v_61).y, 0.0f, 1.0f);
  let v_62 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_62.xy, r2.zw);
  let v_63 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_63.xy);
  let v_64 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_64.xy);
  let v_65 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_65.xy, r2.zw);
  r2.z = ((-(r5.zzzz)).z + 1.0f);
  let v_66 = fma(r5.zz, r2.xy, r2.zz);
  r2 = vec4<f32>(v_66.xy, r2.zw);
  let v_67 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r2 = vec4<f32>(r2.xy, v_67.xy);
  r0.y = (r2.z * 0.125f);
  r2.x = fma((-(r0.xxxx)).x, r2.x, 1.0f);
  r2.z = dot(r5.xyw, r3.xyz);
  r2.z = clamp(((r2.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r2.z = log2(r2.z);
  r2.z = (r2.z * r2.w);
  r2.z = exp2(r2.z);
  r2.y = (r2.y * r2.z);
  r0.y = (r0.y * r2.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r1.w * r0.x);
  r0.y = (r1.w * r2.x);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = fma(r0.z, 0.25f, -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_68 = fma(r4.xyz, r0.yyy, r0.xxx);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = (r1.xyz * r2.xyz);
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = (r0.www * r1.xyz);
  r0 = vec4<f32>(v_70.xy, r0.z, v_70.z);
  let v_71 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  let v_72 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_72.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_73 : bool) {
  if (v_73) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
