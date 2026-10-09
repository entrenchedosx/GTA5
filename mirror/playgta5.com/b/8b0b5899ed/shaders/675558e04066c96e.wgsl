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

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<u32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

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
    let v_22 = textureSample(t9, s9, r0.yzyy.xy).xyz;
    r3 = vec4<f32>(v_22.xyz, r3.w);
    let v_23 = textureSample(t4, s4, r0.yzyy.xy).xyz;
    r4 = vec4<f32>(v_23.xyz, r4.w);
    let v_24 = textureSample(t14, s14, r0.yzyy.xy).xyz;
    r5 = vec4<f32>(v_24.xyz, r5.w);
    let v_25 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_26 = (r0.xx + v_25.xy);
    r6 = vec4<f32>(v_26.xy, r6.zw);
    r7.x = (r6.y * cb5_5.tint_symbol_2[3u].w);
    r0.w = clamp(fma(-(r6.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r7.x = clamp(r7.xxxx.x, 0.0f, 1.0f);
    r0.w = max(r0.w, r7.x);
    r6 = clamp(fma(r0.wwww, vec4<f32>(-10.0f, -3.33333325386047363281f, -1.66666662693023681641f, 1.66666662693023681641f), vec4<f32>(1.0f, 1.33333337306976318359f, 1.66666662693023681641f, -0.6666666865348815918f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_27 = ((-(r6.xyxx)).xy + vec2<f32>(1.0f));
    r7 = vec4<f32>(v_27.xy, r7.zw);
    let v_28 = min(r6.yz, r7.xy);
    let v_29 = r6;
    r6 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
    let v_30 = (r3.xyz * r6.yyy);
    r3 = vec4<f32>(v_30.xyz, r3.w);
    let v_31 = fma(r2.xyz, r6.xxx, r3.xyz);
    r3 = vec4<f32>(v_31.xyz, r3.w);
    let v_32 = fma(r4.xyz, r6.zzz, r3.xyz);
    r3 = vec4<f32>(v_32.xyz, r3.w);
    let v_33 = fma(r5.xyz, r6.www, r3.xyz);
    r2 = vec4<f32>(v_33.xyz, r2.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[84u].z) != 0u)) {
    r3 = textureSample(t11, s11, r0.yzyy.xy);
    let v_34 = ((-(r2.xyzx)).xyz + r3.xyz);
    r3 = vec4<f32>(v_34.xyz, r3.w);
    let v_35 = fma(r3.www, r3.xyz, r2.xyz);
    r2 = vec4<f32>(v_35.xyz, r2.w);
  }
  r0.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).y);
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = (r0.w * 0.0039215688593685627f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.w)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_36 = fma(r0.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_36.xy, r1.zw);
  r1.z = 1.0f;
  r3.x = dot(r1.xyz, cb5_5.tint_symbol_2[15u].xyz);
  r3.y = dot(r1.xyz, cb5_5.tint_symbol_2[16u].xyz);
  r3.z = dot(r1.xyz, cb5_5.tint_symbol_2[17u].xyz);
  let v_37 = fma(r3.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_37.xyz, r3.w);
  r3.w = 1.0f;
  r4.x = dot(r3, cb5_5.tint_symbol_2[12u]);
  r4.y = dot(r3, cb5_5.tint_symbol_2[13u]);
  r0.x = dot(r3, cb5_5.tint_symbol_2[14u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_38 = bitcast<u32>(r1.z);
  r0.x = select(r0.x, 0.00000999999974737875f, (v_38 != 0u));
  r3 = (r4.xyxy / r0.xxxx);
  let v_39 = -(r3);
  r1 = (r1.xyxy + v_39);
  r1 = (r1 * vec4<f32>(40.0f, -22.5f, 40.0f, -22.5f));
  r0.x = dot(r1.zw, r1.zw);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = inverseSqrt(r0.x);
  r3 = (r0.xxxx * r1.zwzw);
  let v_40 = bitcast<vec4<u32>>(r2.wwww);
  let v_41 = r3;
  r1 = select(r1, v_41, (v_40 != vec4<u32>()));
  r1 = (r1 * cb5_5.tint_symbol_2[11u].xxxx);
  r1 = (r1 * cb5_5.tint_symbol_2[11u].zwzw);
  r3 = (r1.zwzw * vec4<f32>(0.01250000018626451492f, 0.02222222276031970978f, 0.00208333344198763371f, 0.00370370363816618919f));
  let v_42 = (r2.xy * vec2<f32>(8.0f));
  r4 = vec4<f32>(v_42.xy, r4.zw);
  let v_43 = fma(r0.yz, vec2<f32>(58.16400146484375f, 47.130001068115234375f), r4.xy);
  r4 = vec4<f32>(v_43.xy, r4.zw);
  r0.x = textureSample(t12, s12, r4.xyxx.xy).x;
  r0.x = (r0.x + -0.5f);
  r4 = (r0.xxxx * r3.zwzw);
  r4 = fma(r4, vec4<f32>(0.5f), r0.yzyz);
  let v_44 = fma(r1.zw, vec2<f32>(0.00208333344198763371f, 0.00370370363816618919f), r4.zw);
  r3 = vec4<f32>(r3.xy, v_44.xy);
  let v_45 = (r3.zw * cb2_2.tint_symbol_1[18u].xy);
  r3 = vec4<f32>(r3.xy, v_45.xy);
  let v_46 = round(r3.zw);
  r3 = vec4<f32>(r3.xy, v_46.xy);
  let v_47 = (r3.zw + vec2<f32>(0.5f));
  r3 = vec4<f32>(r3.xy, v_47.xy);
  let v_48 = (r3.zw / cb2_2.tint_symbol_1[18u].xy);
  r5 = vec4<f32>(v_48.xy, r5.zw);
  let v_49 = r3.zw;
  let v_50 = max(v_49, vec2<f32>(-2147483648.0f));
  let v_51 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_50), vec2<i32>(2147483647i), (v_50 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_49 == v_49))));
  r6 = vec4<f32>(v_51.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r0.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v2)).y);
  r0.x = f32(bitcast<u32>(r0.x));
  r0.x = (r0.x * 0.0039215688593685627f);
  let v_52 = textureSample(t9, s9, r5.xyxx.xy).xyz;
  r5 = vec4<f32>(v_52.xyz, r5.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.x)));
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r6 = fma(r1.zwzw, vec4<f32>(0.00416666688397526741f, 0.00740740727633237839f, 0.00625000009313225746f, 0.01111111138015985489f), r4.zwzw);
  r6 = (r6 * cb2_2.tint_symbol_1[18u].xyxy);
  r6 = round(r6);
  r6 = (r6 + vec4<f32>(0.5f));
  r7 = (r6 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_53 = r6.zwxy;
  let v_54 = max(v_53, vec4<f32>(-2147483648.0f));
  r6 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_54), vec4<i32>(2147483647i), (v_54 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_53 == v_53))));
  let v_55 = r6;
  r8 = vec4<f32>(v_55.zw, r8.zw);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r2.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(v2)).y);
  r2.w = f32(bitcast<u32>(r2.w));
  r2.w = (r2.w * 0.0039215688593685627f);
  let v_56 = textureSample(t9, s9, r7.xyxx.xy).xyz;
  r8 = vec4<f32>(v_56.xyz, r8.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r2.w)));
  r2.w = select(1.0f, 0.0f, (bitcast<u32>(r2.w) != 0u));
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r3.z = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v2)).y);
  r3.z = f32(bitcast<u32>(r3.z));
  r3.z = (r3.z * 0.0039215688593685627f);
  let v_57 = textureSample(t9, s9, r7.zwzz.xy).xyz;
  r6 = vec4<f32>(v_57.xyz, r6.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r3.z)));
  r3.z = select(1.0f, 0.0f, (bitcast<u32>(r3.z) != 0u));
  r1 = fma(r1, vec4<f32>(0.00833333376795053482f, 0.01481481455266475677f, 0.01041666697710752487f, 0.01851851865649223328f), r4);
  r1 = (r1 * cb2_2.tint_symbol_1[18u].xyxy);
  r1 = round(r1);
  r1 = (r1 + vec4<f32>(0.5f));
  r4 = (r1 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_58 = r1.zwxy;
  let v_59 = max(v_58, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_59), vec4<i32>(2147483647i), (v_59 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_58 == v_58))));
  let v_60 = r1;
  r7 = vec4<f32>(v_60.zw, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r3.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(v2)).y);
  r3.w = f32(bitcast<u32>(r3.w));
  r3.w = (r3.w * 0.0039215688593685627f);
  let v_61 = textureSample(t9, s9, r4.xyxx.xy).xyz;
  r7 = vec4<f32>(v_61.xyz, r7.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r3.w)));
  r3.w = select(1.0f, 0.0f, (bitcast<u32>(r3.w) != 0u));
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).y);
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = (r1.x * 0.0039215688593685627f);
  let v_62 = textureSample(t9, s9, r4.zwzz.xy).xyz;
  r1 = vec4<f32>(r1.x, v_62.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r1.x)));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_63 = (r0.xxx * r5.xyz);
  r4 = vec4<f32>(v_63.xyz, r4.w);
  let v_64 = fma(r2.xyz, r0.www, r4.xyz);
  r4 = vec4<f32>(v_64.xyz, r4.w);
  r0.x = (r0.x + r0.w);
  let v_65 = fma(r8.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_65.xyz, r4.w);
  r0.x = (r2.w + r0.x);
  let v_66 = fma(r6.xyz, r3.zzz, r4.xyz);
  r4 = vec4<f32>(v_66.xyz, r4.w);
  r0.x = (r3.z + r0.x);
  let v_67 = fma(r7.xyz, r3.www, r4.xyz);
  r4 = vec4<f32>(v_67.xyz, r4.w);
  r0.x = (r3.w + r0.x);
  let v_68 = fma(r1.yzw, r1.xxx, r4.xyz);
  r1 = vec4<f32>(r1.x, v_68.xyz);
  r0.x = (r1.x + r0.x);
  r0.x = max(r0.x, 0.10000000149011611938f);
  let v_69 = (r1.yzw / r0.xxx);
  r1 = vec4<f32>(v_69.xyz, r1.w);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = (r0.x * 100000.0f);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r0.w);
  let v_70 = ((-(r2.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_70.xyz, r1.w);
  let v_71 = fma(r0.xxx, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_71.xyz, r1.w);
  let v_72 = textureSample(t10, s10, r0.yzyy.xy).xyz;
  r2 = vec4<f32>(v_72.xyz, r2.w);
  let v_73 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[69u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t15, s15, r0.yzyy.xy).x;
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_74 = fma(cb5_5.tint_symbol_2[40u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_74.xyz, r1.w);
  }
  let v_75 = (r2.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[51u].zzzz)).w, 0.0f, 1.0f);
  let v_77 = ((-(cb5_5.tint_symbol_2[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_77.xyz, r1.w);
  let v_78 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[52u].xyz);
  r1 = vec4<f32>(v_78.xyz, r1.w);
  let v_79 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_81.xyz, r0.w);
  let v_82 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[9u].xxx);
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_2[9u].yyy);
  r1 = vec4<f32>(v_84.xyz, r1.w);
  let v_85 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[8u].yyy);
  r2 = vec4<f32>(v_85.xyz, r2.w);
  let v_86 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_2[9u].zzz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = -(cb5_5.tint_symbol_2[9u].wwww);
  let v_89 = (r0.xyz + v_88.xyz);
  r0 = vec4<f32>(v_89.xyz, r0.w);
  let v_90 = clamp(((r0.xyzx * cb5_5.tint_symbol_2[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_90.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_91 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = fma(cb5_5.tint_symbol_2[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[60u].wwww)).x, 0.0f, 1.0f);
  let v_93 = -(cb5_5.tint_symbol_2[60u].xxyz);
  let v_94 = (cb5_5.tint_symbol_2[59u].xyz + v_93.yzw);
  r1 = vec4<f32>(r1.x, v_94.xyz);
  let v_95 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[60u].xyz);
  r1 = vec4<f32>(v_95.xyz, r1.w);
  let v_96 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_96.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[59u].wwww)).w + 1.0f);
  let v_97 = -(r1.wwww);
  r0.w = (r0.w + v_97.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_98 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = log2(r0.xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = (r0.xyz * cb5_5.tint_symbol_2[61u].yyy);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = exp2(r0.xyz);
  r0 = vec4<f32>(v_102.xyz, r0.w);
  let v_103 = (v1.xy * cb5_5.tint_symbol_2[10u].ww);
  r1 = vec4<f32>(v_103.xy, r1.zw);
  let v_104 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_2[10u].xy);
  r1 = vec4<f32>(v_104.xy, r1.zw);
  let v_105 = fract(r1.xy);
  r1 = vec4<f32>(v_105.xy, r1.zw);
  r0.w = textureSample(t7, s7, r1.xyxx.xy).w;
  r0.w = (r0.w + -0.5f);
  let v_106 = clamp(fma(r0.wwww, cb5_5.tint_symbol_2[10u].zzzz, r0.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_106.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_107 = r0;
  o0 = vec4<f32>(v_107.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
