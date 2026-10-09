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
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_4 = (r4.xyz * r4.xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  let v_5 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_5.xy, r4.zw);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_6 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r6 = vec4<f32>(v_6.xyz, r6.w);
  let v_7 = fract(r6.xyz);
  r6 = vec4<f32>(v_7.xyz, r6.w);
  let v_8 = fma((-(r6.yzyy)).xy, vec2<f32>(0.125f), r6.xy);
  r6 = vec4<f32>(v_8.xy, r6.zw);
  let v_9 = fma(r5.xyz, vec3<f32>(256.0f), r6.xyz);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = (r5.xyz + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_10.xyz, r5.w);
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_11 = (r0.xxx * r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  r0.x = min(r4.x, 1.0f);
  r0.y = fma(r4.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_12 = -(r0.yyyy);
  r2.w = fma(r4.y, 512.0f, v_12.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r2.w, 3.0f, r0.y);
  r0.w = inverseSqrt(r0.w);
  let v_13 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_13.xy, r4.z, v_13.z);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_14 = (r2.www * r2.xyz);
  r6 = vec4<f32>(v_14.xyz, r6.w);
  let v_15 = -(r6.xyzx);
  let v_16 = fma(r3.xyz, r0.www, v_15.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_17 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r7.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r7.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r7.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_19 = -(r7.xyzx);
  r0.z = dot(v_19.xyz, (-(r7.xyzx)).xyz);
  r0.z = sqrt(r0.z);
  let v_20 = ((-(r7.xyzx)).xyz / r0.zzz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
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
  r8 = vec4<f32>(v_26.xy, r8.zw);
  let v_27 = (-(r7.yzyy)).xy;
  r9 = vec4<f32>(v_27.xy, r9.zw);
  r9.z = 0.0f;
  r9.w = abs(r2.xxxx).w;
  r10 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r10.zw);
  r10.z = abs(r2.yyyy).z;
  let v_28 = bitcast<vec3<u32>>(r8.yyy);
  let v_29 = r9.zxw;
  let v_30 = select(r10.xyz, v_29, (v_28 != vec3<u32>()));
  r8 = vec4<f32>(r8.x, v_30.xyz);
  r7.y = 0.0f;
  r7.z = abs(r2.zzzz).z;
  let v_31 = bitcast<vec3<u32>>(r8.xxx);
  let v_32 = r7.xyz;
  let v_33 = select(r8.yzw, v_32, (v_31 != vec3<u32>()));
  r7 = vec4<f32>(v_33.xyz, r7.w);
  let v_34 = abs(r2.yyyy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r7.z == v_34.w)));
  let v_35 = bitcast<vec2<u32>>(r0.ww);
  let v_36 = select(vec2<f32>(1.0f, 0.0f), r9.zy, (v_35 != vec2<u32>()));
  let v_37 = r8;
  r8 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
  r0.w = dot(r7.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_38 = (r2.xyz / r0.www);
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
  r0.w = textureSampleCompareLevel(t14, s14, v_43.xyz, r0.z);
  let v_44 = (r7.xy * vec2<f32>(0.5f));
  let v_45 = r7;
  r7 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
  r7.y = 0.0f;
  let v_46 = (r2.xyz + r7.xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = fma(vec3<f32>(-0.5f), r8.xyz, r2.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = r7.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_48.xyz, r0.z);
  r0.w = (r0.w + r2.w);
  let v_49 = fma(vec3<f32>(0.5f), r8.xyz, r9.xyz);
  r7 = vec4<f32>(v_49.xyz, r7.w);
  let v_50 = r7.xyzx;
  r2.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r0.z);
  r0.w = (r0.w + r2.w);
  let v_51 = fma(vec3<f32>(0.5f), r8.xyz, r2.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = r2.xyzx;
  r0.z = textureSampleCompareLevel(t14, s14, v_52.xyz, r0.z);
  r0.z = (r0.z + r0.w);
  let v_53 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_55 = -(r2.xyzx);
  let v_56 = fma(v_54.xyz, cb12_12.tint_symbol_3[2u].zxy, v_55.xyz);
  r2 = vec4<f32>(v_56.xyz, r2.w);
  let v_57 = -(r4.xywx);
  r2.x = dot(r2.xyz, v_57.xyz);
  let v_58 = -(r4.xywx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_58.xyz);
  let v_59 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r0.w = dot(v_59.xyz, (-(r4.xywx)).xyz);
  let v_60 = -(r4.xywx);
  r2.z = dot(v_60.xyz, (-(r4.xywx)).xyz);
  r2.z = sqrt(r2.z);
  r0.w = (r0.w / r2.z);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = (r0.w * r2.z);
  r0.w = (1.0f / r0.w);
  let v_61 = (r0.ww * r2.xy);
  r2 = vec4<f32>(v_61.xy, r2.zw);
  let v_62 = fma(r2.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r2 = vec4<f32>(v_62.xy, r2.zw);
  r2 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
  let v_63 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_66.xyz, r2.w);
  let v_67 = dot(r5.xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_67, v_67, v_67, v_67).w, 0.0f, 1.0f);
  let v_68 = dot((-(r6.xyzx)).xyz, r5.xyz);
  r6.x = clamp(vec4<f32>(v_68, v_68, v_68, v_68).x, 0.0f, 1.0f);
  let v_69 = dot(r3.xyz, r4.xyw);
  r6.y = clamp(vec4<f32>(v_69, v_69, v_69, v_69).y, 0.0f, 1.0f);
  let v_70 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_70.xy, r4.zw);
  let v_71 = (r4.xy * r4.xy);
  r6 = vec4<f32>(v_71.xy, r6.zw);
  let v_72 = (r6.xy * r6.xy);
  r6 = vec4<f32>(v_72.xy, r6.zw);
  let v_73 = (r4.xy * r6.xy);
  r4 = vec4<f32>(v_73.xy, r4.zw);
  r2.w = ((-(r4.zzzz)).w + 1.0f);
  let v_74 = fma(r4.zz, r4.xy, r2.ww);
  r4 = vec4<f32>(v_74.xy, r4.zw);
  let v_75 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_75.xy);
  r0.y = (r4.z * 0.125f);
  r2.w = fma((-(r0.xxxx)).w, r4.x, 1.0f);
  r3.x = dot(r5.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r4.w);
  r3.x = exp2(r3.x);
  r3.x = (r4.y * r3.x);
  r0.y = (r0.y * r3.x);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.w * r0.x);
  r0.y = (r0.w * r2.w);
  r0.x = (r0.x * cb12_12.tint_symbol_3[8u].z);
  r0.z = fma(r0.z, 0.25f, -1.0f);
  r0.z = fma(cb12_12.tint_symbol_3[8u].y, r0.z, 1.0f);
  let v_76 = fma(r1.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_76.xy, r0.z, v_76.z);
  let v_77 = (r2.xyz * r0.xyw);
  r0 = vec4<f32>(v_77.xy, r0.z, v_77.z);
  let v_78 = (r1.xxx * r0.xyw);
  r0 = vec4<f32>(v_78.xy, r0.z, v_78.z);
  let v_79 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_80.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_81 : bool) {
  if (v_81) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
