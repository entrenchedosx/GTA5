diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb19_struct {
  tint_symbol_2 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb19_struct;

struct cb21_struct {
  tint_symbol_3 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = -(cb1_1.tint_symbol[15u].xyzx);
  r0 = vec4<f32>(((v1.xyz + v_2.xyz)).xyz, r0.w);
  let v_3 = (r0.xyz * v3.xyz.xxx);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r1.x = (cb12_12.tint_symbol_3[17u].w + 1.0f);
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, ((v2.xy / v2.ww)).xy, v_4.w);
  r2 = textureSample(t4, s4, r1.yzyy.xy);
  let v_5 = fma(r1.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_5.xy, r3.zw);
  let v_6 = -(r2.xxxx);
  r1.x = (r1.x + v_6.x);
  r1.x = (cb12_12.tint_symbol_3[17u].z / r1.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>(1.0f));
  r2.x = dot(r3.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r2.y = dot(r3.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r2.z = dot(r3.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_7 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(r1.x, v_7.xyz);
  let v_8 = fma(r2.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.x = dot(r1.yzw, r1.yzw);
  r0.w = ((-(r0.wwww)).w + r1.x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  v_9((bitcast<u32>(r0.w) != 0u));
  let v_10 = floor(v0.yx);
  let v_11 = r1;
  r1 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = (r1.yz * vec2<f32>(0.3333333432674407959f));
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = fract(r1.yz);
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = (r1.yz * vec2<f32>(3.0f, 9.0f));
  let v_17 = r1;
  r1 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r0.w = (r1.y + r1.z);
  let v_18 = fma(r0.xyz, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_18.xyz);
  let v_19 = (r0.xyz * v3.xyz.yyy);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(r0.xyz, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r2.w = (r1.x / r2.w);
  let v_21 = bitcast<u32>(r3.x);
  r2.w = select(r2.w, 1.0f, (v_21 != 0u));
  let v_22 = bitcast<vec3<u32>>(r3.xxx);
  let v_23 = r1.yzw;
  let v_24 = select(r2.xyz, v_23, (v_22 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_24.xyz);
  let v_25 = ((-(r0.xxyz)).yzw + r1.yzw);
  r1 = vec4<f32>(r1.x, v_25.xyz);
  let v_26 = (r0.www * r1.yzw);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  let v_27 = fma(r2.xyz, vec3<f32>(0.01408450677990913391f), r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = (r0.xyz + v_2.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.x)));
  r4.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r4.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r4.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_30 = (-(r4.xyzx)).xyz;
  r3 = vec4<f32>(v_30.xyz, r3.w);
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = sqrt(r2.y);
  r2.y = (r2.y * cb6_6.tint_symbol_2[17u].w);
  let v_31 = r3.xyzx;
  r2.y = textureSampleCompareLevel(t14, s14, v_31.xyz, r2.y);
  r0.w = 1.0f;
  r0.w = dot(r0, cb12_12.tint_symbol_3[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_32 = ((-(r0.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r0.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = clamp(fma(-(r0.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r0.y = ((-(cb12_12.tint_symbol_3[7u].xxxx)).y + 1.0f);
  r0.z = fma(r0.y, r0.x, cb12_12.tint_symbol_3[7u].x);
  r0.x = (r0.x / r0.z);
  r0.x = (r0.w * r0.x);
  r0.x = (r2.y * r0.x);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r2.x)));
  let v_34 = (r4.xyz + v_2.xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.z)));
  r2.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_36 = (-(r2.xyzx)).xyz;
  r2 = vec4<f32>(v_36.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = (r0.w * cb6_6.tint_symbol_2[17u].w);
  let v_37 = r2.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_37.xyz, r0.w);
  r4.w = 1.0f;
  r2.x = dot(r4, cb12_12.tint_symbol_3[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  let v_38 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r4.xyz);
  r4 = vec4<f32>(v_39.xyz, r4.w);
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = clamp(fma(-(r2.yyyy), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = fma(r0.y, r2.y, cb12_12.tint_symbol_3[7u].x);
  r2.y = (r2.y / r2.z);
  r2.x = (r2.x * r2.y);
  r0.w = (r0.w * r2.x);
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  r0.x = (r0.z + r0.x);
  let v_40 = (r4.xyz + v_2.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.z)));
  r2.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_42 = (-(r2.xyzx)).xyz;
  r2 = vec4<f32>(v_42.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = (r0.w * cb6_6.tint_symbol_2[17u].w);
  let v_43 = r2.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_43.xyz, r0.w);
  r4.w = 1.0f;
  r2.x = dot(r4, cb12_12.tint_symbol_3[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  let v_44 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_44.xyz, r3.w);
  let v_45 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r4.xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  r2.y = dot(r3.xyz, r3.xyz);
  r2.y = clamp(fma(-(r2.yyyy), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = fma(r0.y, r2.y, cb12_12.tint_symbol_3[7u].x);
  r2.y = (r2.y / r2.z);
  r2.x = (r2.x * r2.y);
  r0.w = (r0.w * r2.x);
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  r0.x = (r0.z + r0.x);
  r4.w = 1.0f;
  r0.z = dot(r4, cb12_12.tint_symbol_3[6u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_46 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.x = fma(r0.y, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r2.x);
  r0.z = (r0.z * r0.w);
  let v_47 = (r4.xyz + v_2.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r4.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.w)));
  r2.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_50 = (-(r2.xyzx)).xyz;
  r2 = vec4<f32>(v_50.xyz, r2.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = sqrt(r4.x);
  r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
  let v_51 = r2.xyzx;
  r2.x = textureSampleCompareLevel(t14, s14, v_51.xyz, r4.x);
  r0.z = (r0.z * r2.x);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
  r0.x = (r0.z + r0.x);
  r0.z = dot(r3, cb12_12.tint_symbol_3[6u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_52 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r2 = vec4<f32>(v_52.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.x = fma(r0.y, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r2.x);
  r0.z = (r0.z * r0.w);
  let v_53 = (r3.xyz + v_2.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r3.xyz);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  let v_55 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.w)));
  r2.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_56 = (-(r2.xyzx)).xyz;
  r2 = vec4<f32>(v_56.xyz, r2.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = sqrt(r4.x);
  r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
  let v_57 = r2.xyzx;
  r2.x = textureSampleCompareLevel(t14, s14, v_57.xyz, r4.x);
  r0.z = (r0.z * r2.x);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
  r0.x = (r0.z + r0.x);
  r3.w = 1.0f;
  r0.z = dot(r3, cb12_12.tint_symbol_3[6u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_58 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.x = fma(r0.y, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r2.x);
  r0.z = (r0.z * r0.w);
  let v_59 = (r3.xyz + v_2.xyz);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  let v_60 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r3.xyz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  let v_61 = fma(r1.yzw, vec3<f32>(0.12676055729389190674f), r3.xyz);
  r4 = vec4<f32>(v_61.xyz, r4.w);
  let v_62 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r1 = vec4<f32>(r1.x, v_62.xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.w)));
  r2.x = dot(r1.yzw, cb6_6.tint_symbol_2[15u].xyz);
  r2.y = dot(r1.yzw, cb6_6.tint_symbol_2[16u].xyz);
  r2.z = dot(r1.yzw, cb6_6.tint_symbol_2[17u].xyz);
  let v_63 = (-(r2.xxyz)).yzw;
  r1 = vec4<f32>(r1.x, v_63.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = sqrt(r2.x);
  r2.x = (r2.x * cb6_6.tint_symbol_2[17u].w);
  let v_64 = r1.yzwy;
  r1.y = textureSampleCompareLevel(t14, s14, v_64.xyz, r2.x);
  r0.z = (r0.z * r1.y);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
  r0.x = (r0.z + r0.x);
  let v_65 = ((-(r3.xxyz)).yzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(r1.x, v_65.xyz);
  r0.z = dot(r1.yzw, r1.yzw);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = fma(r0.y, r0.z, cb12_12.tint_symbol_3[7u].x);
  r0.z = (r0.z / r0.w);
  r3.w = 1.0f;
  r0.w = dot(r3, cb12_12.tint_symbol_3[6u]);
  let v_66 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_67 = (r3.xyz + v_66.yzw);
  r1 = vec4<f32>(r1.x, v_67.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.z = (r0.w * r0.z);
  let v_68 = (r1.yzw + cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.w)));
  r3.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r3.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r3.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_69 = (-(r3.xxyz)).yzw;
  r1 = vec4<f32>(r1.x, v_69.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = sqrt(r2.x);
  r2.x = (r2.x * cb6_6.tint_symbol_2[17u].w);
  let v_70 = r1.yzwy;
  r1.y = textureSampleCompareLevel(t14, s14, v_70.xyz, r2.x);
  r0.z = (r0.z * r1.y);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
  r0.x = (r0.z + r0.x);
  let v_71 = ((-(r4.xxyz)).yzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(r1.x, v_71.xyz);
  r0.z = dot(r1.yzw, r1.yzw);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.y = fma(r0.y, r0.z, cb12_12.tint_symbol_3[7u].x);
  r0.y = (r0.z / r0.y);
  r4.w = 1.0f;
  r0.z = dot(r4, cb12_12.tint_symbol_3[6u]);
  let v_72 = (r4.xyz + v_66.yzw);
  r1 = vec4<f32>(r1.x, v_72.xyz);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r0.y = (r0.z * r0.y);
  let v_73 = (r1.yzw + cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  r0.z = dot(r1.yzw, r1.yzw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.z)));
  r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r1.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r1.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_74 = (-(r1.xyzx)).xyz;
  r1 = vec4<f32>(v_74.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = (r0.w * cb6_6.tint_symbol_2[17u].w);
  let v_75 = r1.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_75.xyz, r0.w);
  r0.y = (r0.w * r0.y);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r0.x = (r0.y + r0.x);
  r0.x = (r2.w * r0.x);
  r0.x = (r0.x * 0.125f);
  r0 = vec4<f32>(r0.x, ((v2.zzz * v4.xyz)).xyz);
  let v_76 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  r0.w = clamp(((v3.xyz.zzzz / cb12_12.tint_symbol_3[14u].yyyy)).w, 0.0f, 1.0f);
  let v_77 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  let v_78 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_78.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_9(v_79 : bool) {
  if (v_79) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_80 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_80, v1, v2, v3, v4);
  return o0;
}
