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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb86_struct {
  tint_symbol_2 : array<vec4<f32>, 86u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb86_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<u32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_2[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[24u].y < r0.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol_2[24u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.z = textureSample(t6, s6, v1.xyxx.xy).x;
  r0.z = (r0.z * cb5_5.tint_symbol_2[27u].z);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(cb5_5.tint_symbol_2[24u].zzzz)).z + cb5_5.tint_symbol_2[24u].w);
  r0.y = fma(r0.y, r0.z, cb5_5.tint_symbol_2[24u].z);
  let v_4 = fma(v1.xy, cb5_5.tint_symbol_2[25u].xy, cb5_5.tint_symbol_2[25u].zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = fma(v1.xy, cb5_5.tint_symbol_2[26u].xy, cb5_5.tint_symbol_2[26u].zw);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = textureSample(t13, s13, r0.zwzz.xy).xy;
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = textureSample(t13, s13, r1.xyxx.xy).xy;
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r0.zw + r1.xy);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = (r0.zw + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = (r0.zw * cb5_5.tint_symbol_2[27u].xy);
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = fma(r0.zw, r0.yy, v1.xy);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[85u].w)));
  let v_13 = bitcast<vec2<u32>>(r0.ww);
  let v_14 = select(v1.xy, r0.yz, (v_13 != vec2<u32>()));
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = r1.xy;
  let v_18 = max(v_17, vec2<f32>(-2147483648.0f));
  let v_19 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_18), vec2<i32>(2147483647i), (v_18 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_17 == v_17))));
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  let v_20 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).xyz;
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = (r2.xyz * cb2_2.tint_symbol_1[17u].www);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r3 = fma(cb5_5.tint_symbol_2[66u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), r0.yzyz);
    let v_22 = textureSample(t9, s9, r3.xyxx.xy).xyz;
    r4 = vec4<f32>(v_22.xyz, r4.w);
    let v_23 = textureSample(t9, s9, r3.zwzz.xy).xyz;
    r3 = vec4<f32>(v_23.xyz, r3.w);
    r5 = fma(cb5_5.tint_symbol_2[66u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), r0.yzyz);
    let v_24 = textureSample(t9, s9, r5.xyxx.xy).xyz;
    r6 = vec4<f32>(v_24.xyz, r6.w);
    let v_25 = textureSample(t9, s9, r5.zwzz.xy).xyz;
    r5 = vec4<f32>(v_25.xyz, r5.w);
    let v_26 = textureSample(t9, s9, r0.yzyy.xy).xyz;
    r7 = vec4<f32>(v_26.xyz, r7.w);
    let v_27 = (r3.xyz + r4.xyz);
    r3 = vec4<f32>(v_27.xyz, r3.w);
    let v_28 = (r6.xyz + r3.xyz);
    r3 = vec4<f32>(v_28.xyz, r3.w);
    let v_29 = (r5.xyz + r3.xyz);
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = fma(r7.xyz, vec3<f32>(0.5f), r3.xyz);
    r3 = vec4<f32>(v_30.xyz, r3.w);
    let v_31 = (r3.xyz * vec3<f32>(0.22222222387790679932f));
    r3 = vec4<f32>(v_31.xyz, r3.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_2[4u].x == 0.0f))));
    let v_32 = bitcast<vec3<u32>>(r0.www);
    let v_33 = r7.xyz;
    let v_34 = select(r3.xyz, v_33, (v_32 != vec3<u32>()));
    r3 = vec4<f32>(v_34.xyz, r3.w);
    let v_35 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_36 = (r0.xx + v_35.xy);
    r4 = vec4<f32>(v_36.xy, r4.zw);
    r5.x = (r4.y * cb5_5.tint_symbol_2[3u].w);
    r0.w = clamp(fma(-(r4.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
    r0.w = max(r0.w, r5.x);
    r4 = clamp(fma(r0.wwww, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 1000.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, -999.0f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_37 = ((-(r4.xyxx)).xy + vec2<f32>(1.0f));
    r5 = vec4<f32>(v_37.xy, r5.zw);
    let v_38 = min(r4.yz, r5.xy);
    let v_39 = r4;
    r4 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
    let v_40 = (r4.yyy * r7.xyz);
    r5 = vec4<f32>(v_40.xyz, r5.w);
    let v_41 = fma(r2.xyz, r4.xxx, r5.xyz);
    r5 = vec4<f32>(v_41.xyz, r5.w);
    let v_42 = fma(r3.xyz, r4.zzz, r5.xyz);
    r4 = vec4<f32>(v_42.xyz, r4.w);
    let v_43 = fma(r3.xyz, r4.www, r4.xyz);
    r2 = vec4<f32>(v_43.xyz, r2.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[84u].z) != 0u)) {
    r3 = textureSample(t11, s11, r0.yzyy.xy);
    let v_44 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_44.xyz, r3.w);
    let v_45 = fma(r3.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_45.xyz, r2.w);
  }
  r0.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).y);
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = (r0.w * 0.0039215688593685627f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.w)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_46 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_46.xy, r1.zw);
  r1.z = 1.0f;
  r3.x = dot(r1.xyz, cb5_5.tint_symbol_2[15u].xyz);
  r3.y = dot(r1.xyz, cb5_5.tint_symbol_2[16u].xyz);
  r3.z = dot(r1.xyz, cb5_5.tint_symbol_2[17u].xyz);
  let v_47 = fma(r3.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_47.xyz, r3.w);
  r3.w = 1.0f;
  r4.x = dot(r3, cb5_5.tint_symbol_2[12u]);
  r4.y = dot(r3, cb5_5.tint_symbol_2[13u]);
  r0.x = dot(r3, cb5_5.tint_symbol_2[14u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_48 = bitcast<u32>(r1.z);
  r0.x = select(r0.x, 0.00000999999974737875f, (v_48 != 0u));
  r3 = (r4.xyxy / r0.xxxx);
  let v_49 = -(r3);
  r1 = (r1.xyxy + v_49);
  r1 = (r1 * vec4<f32>(40.0f, -22.5f, 40.0f, -22.5f));
  r0.x = dot(r1.zw, r1.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = inverseSqrt(r0.x);
  r3 = (r0.xxxx * r1.zwzw);
  let v_50 = bitcast<vec4<u32>>(r2.wwww);
  let v_51 = r3;
  r1 = select(r1, v_51, (v_50 != vec4<u32>()));
  r1 = (r1 * cb5_5.tint_symbol_2[11u].xxxx);
  r1 = (r1 * cb5_5.tint_symbol_2[11u].zwzw);
  r3 = (r1.zwzw * vec4<f32>(0.01250000018626451492f, 0.02222222276031970978f, 0.00208333344198763371f, 0.00370370363816618919f));
  let v_52 = (r2.xy * vec2<f32>(8.0f));
  r4 = vec4<f32>(v_52.xy, r4.zw);
  let v_53 = fma(r0.yz, vec2<f32>(58.16400146484375f, 47.130001068115234375f), r4.xy);
  r4 = vec4<f32>(v_53.xy, r4.zw);
  r0.x = textureSample(t12, s12, r4.xyxx.xy).x;
  r0.x = (r0.x + -0.5f);
  r4 = (r0.xxxx * r3.zwzw);
  r4 = fma(r4, vec4<f32>(0.5f), r0.yzyz);
  let v_54 = fma(r1.zw, vec2<f32>(0.00208333344198763371f, 0.00370370363816618919f), r4.zw);
  r3 = vec4<f32>(r3.xy, v_54.xy);
  let v_55 = (r3.zw * cb2_2.tint_symbol_1[18u].xy);
  r3 = vec4<f32>(r3.xy, v_55.xy);
  let v_56 = round(r3.zw);
  r3 = vec4<f32>(r3.xy, v_56.xy);
  let v_57 = (r3.zw + vec2<f32>(0.5f));
  r3 = vec4<f32>(r3.xy, v_57.xy);
  let v_58 = (r3.zw / cb2_2.tint_symbol_1[18u].xy);
  r5 = vec4<f32>(v_58.xy, r5.zw);
  let v_59 = r3.zw;
  let v_60 = max(v_59, vec2<f32>(-2147483648.0f));
  let v_61 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_60), vec2<i32>(2147483647i), (v_60 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_59 == v_59))));
  r6 = vec4<f32>(v_61.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r0.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v2)).y);
  r0.x = f32(bitcast<u32>(r0.x));
  r0.x = (r0.x * 0.0039215688593685627f);
  let v_62 = textureSample(t9, s9, r5.xyxx.xy).xyz;
  r5 = vec4<f32>(v_62.xyz, r5.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.x)));
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r6 = fma(r1.zwzw, vec4<f32>(0.00416666688397526741f, 0.00740740727633237839f, 0.00625000009313225746f, 0.01111111138015985489f), r4.zwzw);
  r6 = (r6 * cb2_2.tint_symbol_1[18u].xyxy);
  r6 = round(r6);
  r6 = (r6 + vec4<f32>(0.5f));
  r7 = (r6 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_63 = r6.zwxy;
  let v_64 = max(v_63, vec4<f32>(-2147483648.0f));
  r6 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_64), vec4<i32>(2147483647i), (v_64 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_63 == v_63))));
  let v_65 = r6;
  r8 = vec4<f32>(v_65.zw, r8.zw);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r2.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(v2)).y);
  r2.w = f32(bitcast<u32>(r2.w));
  r2.w = (r2.w * 0.0039215688593685627f);
  let v_66 = textureSample(t9, s9, r7.xyxx.xy).xyz;
  r8 = vec4<f32>(v_66.xyz, r8.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r2.w)));
  r2.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r3.z = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v2)).y);
  r3.z = f32(bitcast<u32>(r3.z));
  r3.z = (r3.z * 0.0039215688593685627f);
  let v_67 = textureSample(t9, s9, r7.zwzz.xy).xyz;
  r6 = vec4<f32>(v_67.xyz, r6.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r3.z)));
  r3.z = select(1.0f, 0.0f, (bitcast<u32>(r3.z) != 0u));
  r1 = fma(r1, vec4<f32>(0.00833333376795053482f, 0.01481481455266475677f, 0.01041666697710752487f, 0.01851851865649223328f), r4);
  r1 = (r1 * cb2_2.tint_symbol_1[18u].xyxy);
  r1 = round(r1);
  r1 = (r1 + vec4<f32>(0.5f));
  r4 = (r1 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_68 = r1.zwxy;
  let v_69 = max(v_68, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_69), vec4<i32>(2147483647i), (v_69 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_68 == v_68))));
  let v_70 = r1;
  r7 = vec4<f32>(v_70.zw, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r3.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(v2)).y);
  r3.w = f32(bitcast<u32>(r3.w));
  r3.w = (r3.w * 0.0039215688593685627f);
  let v_71 = textureSample(t9, s9, r4.xyxx.xy).xyz;
  r7 = vec4<f32>(v_71.xyz, r7.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r3.w)));
  r3.w = select(1.0f, 0.0f, (bitcast<u32>(r3.w) != 0u));
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).y);
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = (r1.x * 0.0039215688593685627f);
  let v_72 = textureSample(t9, s9, r4.zwzz.xy).xyz;
  r1 = vec4<f32>(r1.x, v_72.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r1.x)));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_73 = (r0.xxx * r5.xyz);
  r4 = vec4<f32>(v_73.xyz, r4.w);
  let v_74 = fma(r2.xyz, r0.www, r4.xyz);
  r4 = vec4<f32>(v_74.xyz, r4.w);
  r0.x = (r0.x + r0.w);
  let v_75 = fma(r8.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_75.xyz, r4.w);
  r0.x = (r2.w + r0.x);
  let v_76 = fma(r6.xyz, r3.zzz, r4.xyz);
  r4 = vec4<f32>(v_76.xyz, r4.w);
  r0.x = (r3.z + r0.x);
  let v_77 = fma(r7.xyz, r3.www, r4.xyz);
  r4 = vec4<f32>(v_77.xyz, r4.w);
  r0.x = (r3.w + r0.x);
  let v_78 = fma(r1.yzw, r1.xxx, r4.xyz);
  r1 = vec4<f32>(r1.x, v_78.xyz);
  r0.x = (r1.x + r0.x);
  r0.x = max(r0.x, 0.10000000149011611938f);
  let v_79 = (r1.yzw / r0.xxx);
  r1 = vec4<f32>(v_79.xyz, r1.w);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = (r0.x * 100000.0f);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r0.w);
  let v_80 = ((-(r2.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_80.xyz, r1.w);
  let v_81 = fma(r0.xxx, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_81.xyz, r1.w);
  let v_82 = textureSample(t10, s10, r0.yzyy.xy).xyz;
  r2 = vec4<f32>(v_82.xyz, r2.w);
  let v_83 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_83.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[69u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t15, s15, r0.yzyy.xy).x;
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_84 = fma(cb5_5.tint_symbol_2[40u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_84.xyz, r1.w);
  }
  let v_85 = (r2.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[51u].zzzz)).w, 0.0f, 1.0f);
  let v_87 = ((-(cb5_5.tint_symbol_2[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_87.xyz, r1.w);
  let v_88 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[52u].xyz);
  r1 = vec4<f32>(v_88.xyz, r1.w);
  let v_89 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_89.xyz, r0.w);
  let v_90 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[9u].xxx);
  r1 = vec4<f32>(v_93.xyz, r1.w);
  let v_94 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_2[9u].yyy);
  r1 = vec4<f32>(v_94.xyz, r1.w);
  let v_95 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[8u].yyy);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  let v_96 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_2[9u].zzz);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  let v_97 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  let v_98 = -(cb5_5.tint_symbol_2[9u].wwww);
  let v_99 = (r0.xyz + v_98.xyz);
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = clamp(((r0.xyzx * cb5_5.tint_symbol_2[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_100.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_101 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = fma(cb5_5.tint_symbol_2[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_102.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[60u].wwww)).x, 0.0f, 1.0f);
  let v_103 = -(cb5_5.tint_symbol_2[60u].xxyz);
  let v_104 = (cb5_5.tint_symbol_2[59u].xyz + v_103.yzw);
  r1 = vec4<f32>(r1.x, v_104.xyz);
  let v_105 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[60u].xyz);
  r1 = vec4<f32>(v_105.xyz, r1.w);
  let v_106 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_106.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[59u].wwww)).w + 1.0f);
  let v_107 = -(r1.wwww);
  r0.w = (r0.w + v_107.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_108 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_108.xyz, r0.w);
  let v_109 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_109.xyz, r0.w);
  let v_110 = log2(r0.xyz);
  r0 = vec4<f32>(v_110.xyz, r0.w);
  let v_111 = (r0.xyz * cb5_5.tint_symbol_2[61u].yyy);
  r0 = vec4<f32>(v_111.xyz, r0.w);
  let v_112 = exp2(r0.xyz);
  r0 = vec4<f32>(v_112.xyz, r0.w);
  let v_113 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_113.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_114 = r0;
  o0 = vec4<f32>(v_114.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
