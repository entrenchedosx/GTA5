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
  r2.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_5 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_5.xy, r4.z, v_5.z);
  let v_6 = fract(r4.xyw);
  r4 = vec4<f32>(v_6.xy, r4.z, v_6.z);
  let v_7 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_7.xy, r4.zw);
  let v_8 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_8.xy, r4.z, v_8.z);
  let v_9 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_9.xy, r4.z, v_9.z);
  r0.x = dot(r4.xyw, r4.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_10 = (r0.xxx * r4.xyw);
  r4 = vec4<f32>(v_10.xy, r4.z, v_10.z);
  r0.x = min(r2.w, 1.0f);
  r0.y = inverseSqrt(r0.w);
  let v_11 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_12 = (r0.yyy * r2.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fma(r2.xyz, r0.zzz, cb6_6.tint_symbol_2[18u].xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  r2.x = dot(r0.yzw, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r0.yzw, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r0.yzw, cb6_6.tint_symbol_2[17u].xyz);
  let v_14 = -(r2.xyzx);
  r0.y = dot(v_14.xyz, (-(r2.xyzx)).xyz);
  r0.y = sqrt(r0.y);
  let v_15 = ((-(r2.xyzx)).xyz / r0.yyy);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r0.y = (r0.y * cb6_6.tint_symbol_2[17u].w);
  let v_16 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>() < r2.xyz)));
  r6 = vec4<f32>(v_16.xyz, r6.w);
  let v_17 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>())));
  r7 = vec4<f32>(v_17.xyz, r7.w);
  let v_18 = -(bitcast<vec4<i32>>(r6.xyzx));
  let v_19 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + v_18.xyz));
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = vec3<f32>(bitcast<vec3<i32>>(r6.zxy));
  r6 = vec4<f32>(v_20.xyz, r6.w);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (abs(r2.zzxx) >= abs(r2.xyyz))));
  let v_21 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r7.yw) & bitcast<vec2<u32>>(r7.xz)));
  r0 = vec4<f32>(r0.xy, v_21.xy);
  let v_22 = (-(r6.yzyy)).xy;
  r7 = vec4<f32>(v_22.xy, r7.zw);
  r7.z = 0.0f;
  r7.w = abs(r2.xxxx).w;
  r8 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r8.zw);
  r8.z = abs(r2.yyyy).z;
  let v_23 = bitcast<vec3<u32>>(r0.www);
  let v_24 = r7.zxw;
  let v_25 = select(r8.xyz, v_24, (v_23 != vec3<u32>()));
  r8 = vec4<f32>(v_25.xyz, r8.w);
  r6.y = 0.0f;
  r6.z = abs(r2.zzzz).z;
  let v_26 = bitcast<vec3<u32>>(r0.zzz);
  let v_27 = r6.xyz;
  let v_28 = select(r8.xyz, v_27, (v_26 != vec3<u32>()));
  r6 = vec4<f32>(v_28.xyz, r6.w);
  let v_29 = abs(r2.yyyy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r6.z == v_29.z)));
  let v_30 = bitcast<vec2<u32>>(r0.zz);
  let v_31 = select(vec2<f32>(1.0f, 0.0f), r7.zy, (v_30 != vec2<u32>()));
  let v_32 = r7;
  r7 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  r0.z = dot(r6.zz, cb6_6.tint_symbol_2[47u].zz);
  let v_33 = (r2.xyz / r0.zzz);
  r2 = vec4<f32>(v_33.xyz, r2.w);
  let v_34 = (r6.xy * vec2<f32>(-0.5f));
  let v_35 = r8;
  r8 = vec4<f32>(v_34.x, v_35.y, v_34.y, v_35.w);
  r8.y = 0.0f;
  let v_36 = (r2.xyz + r8.xyz);
  r8 = vec4<f32>(v_36.xyz, r8.w);
  r7.x = 0.0f;
  let v_37 = fma(vec3<f32>(-0.5f), r7.xyz, r8.xyz);
  r9 = vec4<f32>(v_37.xyz, r9.w);
  let v_38 = r9.xyzx;
  r0.z = textureSampleCompareLevel(t14, s14, v_38.xyz, r0.y);
  let v_39 = (r6.xy * vec2<f32>(0.5f));
  let v_40 = r6;
  r6 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  r6.y = 0.0f;
  let v_41 = (r2.xyz + r6.xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = fma(vec3<f32>(-0.5f), r7.xyz, r2.xyz);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  let v_43 = r6.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_43.xyz, r0.y);
  r0.z = (r0.w + r0.z);
  let v_44 = fma(vec3<f32>(0.5f), r7.xyz, r8.xyz);
  r6 = vec4<f32>(v_44.xyz, r6.w);
  let v_45 = r6.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_45.xyz, r0.y);
  r0.z = (r0.w + r0.z);
  let v_46 = fma(vec3<f32>(0.5f), r7.xyz, r2.xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = r2.xyzx;
  r0.y = textureSampleCompareLevel(t14, s14, v_47.xyz, r0.y);
  r0.y = (r0.y + r0.z);
  let v_48 = ((-(cb12_12.tint_symbol_3[1u].zxyz)).xyz * cb12_12.tint_symbol_3[2u].yzx);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  let v_49 = -(cb12_12.tint_symbol_3[1u].yzxy);
  let v_50 = -(r2.xyzx);
  let v_51 = fma(v_49.xyz, cb12_12.tint_symbol_3[2u].zxy, v_50.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = -(r3.xyzx);
  r2.x = dot(r2.xyz, v_52.xyz);
  let v_53 = -(r3.xyzx);
  r2.y = dot(cb12_12.tint_symbol_3[2u].xyz, v_53.xyz);
  let v_54 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r0.z = dot(v_54.xyz, (-(r3.xyzx)).xyz);
  let v_55 = -(r3.xyzx);
  r0.w = dot(v_55.xyz, (-(r3.xyzx)).xyz);
  r0.w = sqrt(r0.w);
  r0.z = (r0.z / r0.w);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = (r0.z * r0.w);
  r0.z = (1.0f / r0.z);
  let v_56 = (r0.zz * r2.xy);
  r0 = vec4<f32>(r0.xy, v_56.xy);
  let v_57 = fma(r0.zw, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_57.xy);
  r2 = textureSampleLevel(t2, s2, r0.zwzz.xy, 0.0f);
  let v_58 = fma(r2.xyz, r2.xyz, vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = fma(cb12_12.tint_symbol_3[11u].yyy, r2.xyz, vec3<f32>(1.0f));
  r2 = vec4<f32>(v_59.xyz, r2.w);
  let v_60 = (r2.xyz * cb12_12.tint_symbol_3[3u].xyz);
  r2 = vec4<f32>(v_60.xyz, r2.w);
  let v_61 = (r2.xyz * cb12_12.tint_symbol_3[3u].www);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = dot(r4.xyw, r3.xyz);
  r0.z = clamp(vec4<f32>(v_62, v_62, v_62, v_62).z, 0.0f, 1.0f);
  let v_63 = dot((-(r5.xyzx)).xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_63, v_63, v_63, v_63).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.w = (r0.w * r0.w);
  r2.w = (r2.w * r2.w);
  r0.w = (r0.w * r2.w);
  r2.w = ((-(r4.zzzz)).w + 1.0f);
  r0.w = fma(r4.z, r0.w, r2.w);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  r0.x = (r0.x * r0.z);
  r0.y = fma(r0.y, 0.25f, -1.0f);
  r0.y = fma(cb12_12.tint_symbol_3[8u].y, r0.y, 1.0f);
  let v_64 = (r0.xxx * r1.yzw);
  r0 = vec4<f32>(v_64.x, r0.y, v_64.yz);
  let v_65 = (r2.xyz * r0.xzw);
  r0 = vec4<f32>(v_65.x, r0.y, v_65.yz);
  let v_66 = (r1.xxx * r0.xzw);
  r0 = vec4<f32>(v_66.x, r0.y, v_66.yz);
  let v_67 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_68.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_3(v_69 : bool) {
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
