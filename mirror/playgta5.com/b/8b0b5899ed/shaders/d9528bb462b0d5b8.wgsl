diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  let v_2 = floor(v0.yx);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * vec2<f32>(0.3333333432674407959f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fract(r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy * vec2<f32>(3.0f, 9.0f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.x = (r0.x + r0.y);
  r0.y = (cb12_12.tint_symbol_3[17u].w + 1.0f);
  r0 = vec4<f32>(r0.xy, ((v2.xy / v2.ww)).xy);
  r1 = textureSample(t4, s4, r0.zwzz.xy);
  let v_6 = fma(r0.zw, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = -(r1.xxxx);
  r0.y = (r0.y + v_7.y);
  r0.y = (cb12_12.tint_symbol_3[17u].z / r0.y);
  r2.z = 1.0f;
  r1.x = dot(r2.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r1.y = dot(r2.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r1.z = dot(r2.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_8 = fma(r1.xyz, r0.yyy, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  let v_10 = -(cb1_1.tint_symbol[15u].xyzx);
  r1 = vec4<f32>(((v1.xyz + v_10.xyz)).xyz, r1.w);
  let v_11 = fma(r1.xyz, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = (r1.xyz * v3.xyz.yyy);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = fma(r1.xyz, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r0.z)));
  r0.z = (r0.y / r0.z);
  let v_14 = bitcast<u32>(r0.w);
  r0.z = select(r0.z, 1.0f, (v_14 != 0u));
  let v_15 = bitcast<vec3<u32>>(r0.www);
  let v_16 = r3.xyz;
  let v_17 = select(r2.xyz, v_16, (v_15 != vec3<u32>()));
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = ((-(r1.xyzx)).xyz + r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = (r0.xxx * r2.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(r3.xyz, vec3<f32>(0.01408450677990913391f), r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r1.xyz + v_10.xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = (r3.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r0.x)));
  r3.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r3.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r3.z = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_23 = (-(r3.xyzx)).xyz;
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r0.w = (r0.w * cb6_6.tint_symbol_2[17u].w);
  let v_24 = r3.xyzx;
  r0.w = textureSampleCompareLevel(t14, s14, v_24.xyz, r0.w);
  r1.w = 1.0f;
  r1.w = dot(r1, cb12_12.tint_symbol_3[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  let v_25 = ((-(r1.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r1.xyz);
  r4 = vec4<f32>(v_26.xyz, r4.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r1.y = ((-(cb12_12.tint_symbol_3[7u].xxxx)).y + 1.0f);
  r1.z = fma(r1.y, r1.x, cb12_12.tint_symbol_3[7u].x);
  r1.x = (r1.x / r1.z);
  r1.x = (r1.w * r1.x);
  r0.w = (r0.w * r1.x);
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
  let v_27 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_28 = (r4.xyz + v_27.xzw);
  r1 = vec4<f32>(v_28.x, r1.y, v_28.yz);
  let v_29 = (r1.xzw + cb6_6.tint_symbol_2[18u].xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r0.w = dot(r1.xzw, r1.xzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r0.w)));
  r5.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r5.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r5.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_30 = (-(r5.xxyz)).xzw;
  r1 = vec4<f32>(v_30.x, r1.y, v_30.yz);
  r2.w = dot(r1.xzw, r1.xzw);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
  let v_31 = r1.xzwx;
  r1.x = textureSampleCompareLevel(t14, s14, v_31.xyz, r2.w);
  r4.w = 1.0f;
  r1.z = dot(r4, cb12_12.tint_symbol_3[6u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  let v_32 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r4.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = clamp(fma(-(r1.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = fma(r1.y, r1.w, cb12_12.tint_symbol_3[7u].x);
  r1.w = (r1.w / r2.w);
  r1.z = (r1.z * r1.w);
  r1.x = (r1.x * r1.z);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.x = (r0.w + r0.x);
  let v_34 = (r4.xyz + v_27.xzw);
  r1 = vec4<f32>(v_34.x, r1.y, v_34.yz);
  let v_35 = (r1.xzw + cb6_6.tint_symbol_2[18u].xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  r0.w = dot(r1.xzw, r1.xzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r0.w)));
  r5.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r5.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r5.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_36 = (-(r5.xxyz)).xzw;
  r1 = vec4<f32>(v_36.x, r1.y, v_36.yz);
  r2.w = dot(r1.xzw, r1.xzw);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_2[17u].w);
  let v_37 = r1.xzwx;
  r1.x = textureSampleCompareLevel(t14, s14, v_37.xyz, r2.w);
  r4.w = 1.0f;
  r1.z = dot(r4, cb12_12.tint_symbol_3[6u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  let v_38 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r4.xyz);
  r4 = vec4<f32>(v_39.xyz, r4.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = clamp(fma(-(r1.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = fma(r1.y, r1.w, cb12_12.tint_symbol_3[7u].x);
  r1.w = (r1.w / r2.w);
  r1.z = (r1.z * r1.w);
  r1.x = (r1.x * r1.z);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.x = (r0.w + r0.x);
  r4.w = 1.0f;
  r0.w = dot(r4, cb12_12.tint_symbol_3[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_40 = ((-(r4.xxyz)).xzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_40.x, r1.y, v_40.yz);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r1.z = fma(r1.y, r1.x, cb12_12.tint_symbol_3[7u].x);
  r1.x = (r1.x / r1.z);
  r0.w = (r0.w * r1.x);
  let v_41 = (r4.xyz + v_27.xzw);
  r1 = vec4<f32>(v_41.x, r1.y, v_41.yz);
  let v_42 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r4.xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = (r1.xzw + cb6_6.tint_symbol_2[18u].xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r1.x)));
  r5.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r5.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r5.z = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_44 = (-(r5.xyzx)).xyz;
  r4 = vec4<f32>(v_44.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = sqrt(r1.z);
  r1.z = (r1.z * cb6_6.tint_symbol_2[17u].w);
  let v_45 = r4.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_45.xyz, r1.z);
  r0.w = (r0.w * r1.z);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.x = (r0.w + r0.x);
  r3.w = 1.0f;
  r0.w = dot(r3, cb12_12.tint_symbol_3[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_46 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_46.x, r1.y, v_46.yz);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r1.z = fma(r1.y, r1.x, cb12_12.tint_symbol_3[7u].x);
  r1.x = (r1.x / r1.z);
  r0.w = (r0.w * r1.x);
  let v_47 = (r3.xyz + v_27.xzw);
  r1 = vec4<f32>(v_47.x, r1.y, v_47.yz);
  let v_48 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r3.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = (r1.xzw + cb6_6.tint_symbol_2[18u].xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r1.x)));
  r5.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r5.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r5.z = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_50 = (-(r5.xyzx)).xyz;
  r4 = vec4<f32>(v_50.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = sqrt(r1.z);
  r1.z = (r1.z * cb6_6.tint_symbol_2[17u].w);
  let v_51 = r4.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_51.xyz, r1.z);
  r0.w = (r0.w * r1.z);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.x = (r0.w + r0.x);
  r3.w = 1.0f;
  r0.w = dot(r3, cb12_12.tint_symbol_3[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_52 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_52.x, r1.y, v_52.yz);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r1.z = fma(r1.y, r1.x, cb12_12.tint_symbol_3[7u].x);
  r1.x = (r1.x / r1.z);
  r0.w = (r0.w * r1.x);
  let v_53 = (r3.xyz + v_27.xzw);
  r1 = vec4<f32>(v_53.x, r1.y, v_53.yz);
  let v_54 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r3.xyz);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  let v_55 = fma(r2.xyz, vec3<f32>(0.12676055729389190674f), r3.xyz);
  r2 = vec4<f32>(v_55.xyz, r2.w);
  let v_56 = (r1.xzw + cb6_6.tint_symbol_2[18u].xyz);
  r4 = vec4<f32>(v_56.xyz, r4.w);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r1.x)));
  r5.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r5.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r5.z = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_57 = (-(r5.xyzx)).xyz;
  r4 = vec4<f32>(v_57.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = sqrt(r1.z);
  r1.z = (r1.z * cb6_6.tint_symbol_2[17u].w);
  let v_58 = r4.xyzx;
  r1.z = textureSampleCompareLevel(t14, s14, v_58.xyz, r1.z);
  r0.w = (r0.w * r1.z);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.x = (r0.w + r0.x);
  let v_59 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_59.x, r1.y, v_59.yz);
  r0.w = dot(r1.xzw, r1.xzw);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r1.x = fma(r1.y, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r1.x);
  r3.w = 1.0f;
  r1.x = dot(r3, cb12_12.tint_symbol_3[6u]);
  let v_60 = (r3.xyz + v_10.xyz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  let v_61 = (r3.xyz + cb6_6.tint_symbol_2[18u].xyz);
  r1 = vec4<f32>(v_61.x, r1.y, v_61.yz);
  r3.x = dot(r3.xyz, r3.xyz);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r3.x)));
  r4.x = dot(r1.xzw, cb6_6.tint_symbol_2[15u].xyz);
  r4.y = dot(r1.xzw, cb6_6.tint_symbol_2[16u].xyz);
  r4.z = dot(r1.xzw, cb6_6.tint_symbol_2[17u].xyz);
  let v_62 = (-(r4.xxyz)).xzw;
  r1 = vec4<f32>(v_62.x, r1.y, v_62.yz);
  r3.y = dot(r1.xzw, r1.xzw);
  r3.y = sqrt(r3.y);
  r3.y = (r3.y * cb6_6.tint_symbol_2[17u].w);
  let v_63 = r1.xzwx;
  r1.x = textureSampleCompareLevel(t14, s14, v_63.xyz, r3.y);
  r0.w = (r0.w * r1.x);
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r3.x)));
  r0.x = (r0.w + r0.x);
  let v_64 = ((-(r2.xxyz)).xzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(v_64.x, r1.y, v_64.yz);
  r0.w = dot(r1.xzw, r1.xzw);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r1.x = fma(r1.y, r0.w, cb12_12.tint_symbol_3[7u].x);
  r0.w = (r0.w / r1.x);
  r2.w = 1.0f;
  r1.x = dot(r2, cb12_12.tint_symbol_3[6u]);
  let v_65 = (r2.xyz + v_27.yzw);
  r1 = vec4<f32>(r1.x, v_65.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  let v_66 = (r1.yzw + cb6_6.tint_symbol_2[18u].xyz);
  r2 = vec4<f32>(v_66.xyz, r2.w);
  r1.x = dot(r1.yzw, r1.yzw);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r1.x)));
  r1.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
  r1.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
  r1.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
  let v_67 = (-(r1.xyzx)).xyz;
  r1 = vec4<f32>(v_67.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r1.w);
  r1.w = (r1.w * cb6_6.tint_symbol_2[17u].w);
  let v_68 = r1.xyzx;
  r1.x = textureSampleCompareLevel(t14, s14, v_68.xyz, r1.w);
  r0.w = (r0.w * r1.x);
  r0.y = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.y)));
  r0.x = (r0.y + r0.x);
  r0.x = (r0.z * r0.x);
  r0.x = (r0.x * 0.125f);
  r0 = vec4<f32>(r0.x, ((v2.zzz * v4.xyz)).xyz);
  let v_69 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_70.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_71 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_71, v1, v2, v3, v4);
  return o0;
}
