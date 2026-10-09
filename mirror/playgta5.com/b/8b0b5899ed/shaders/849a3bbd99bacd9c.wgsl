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

struct cb86_struct {
  tint_symbol_2 : array<vec4<f32>, 86u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb86_struct;

@group(1u) @binding(20u) var s4 : sampler;

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
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
  r1.x = ((-(r1.xxxx)).x + cb5_5.tint_symbol_2[0u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb5_5.tint_symbol_2[0u].z / r1.x);
  let v_4 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).xyz;
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = (r1.yzw * cb2_2.tint_symbol_1[17u].www);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[85u].w)));
  if ((bitcast<u32>(r2.x) != 0u)) {
  } else {
    let v_6 = textureSample(t9, s9, v1.xyxx.xy).xyz;
    r2 = vec4<f32>(v_6.xyz, r2.w);
    let v_7 = textureSample(t4, s4, v1.xyxx.xy).xyz;
    r3 = vec4<f32>(v_7.xyz, r3.w);
    let v_8 = textureSample(t14, s14, v1.xyxx.xy).xyz;
    r4 = vec4<f32>(v_8.xyz, r4.w);
    let v_9 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_10 = (r1.xx + v_9.xy);
    r5 = vec4<f32>(v_10.xy, r5.zw);
    r6.x = (r5.y * cb5_5.tint_symbol_2[3u].w);
    r2.w = clamp(fma(-(r5.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.x = clamp(r6.xxxx.x, 0.0f, 1.0f);
    r2.w = max(r2.w, r6.x);
    r5 = clamp(fma(r2.wwww, vec4<f32>(-10.0f, -3.33333325386047363281f, -1.66666662693023681641f, 1.66666662693023681641f), vec4<f32>(1.0f, 1.33333337306976318359f, 1.66666662693023681641f, -0.6666666865348815918f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_11 = ((-(r5.xyxx)).xy + vec2<f32>(1.0f));
    r6 = vec4<f32>(v_11.xy, r6.zw);
    let v_12 = min(r5.yz, r6.xy);
    let v_13 = r5;
    r5 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
    let v_14 = (r2.xyz * r5.yyy);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = fma(r1.yzw, r5.xxx, r2.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = fma(r3.xyz, r5.zzz, r2.xyz);
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = fma(r4.xyz, r5.www, r2.xyz);
    r1 = vec4<f32>(r1.x, v_17.xyz);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[84u].z) != 0u)) {
    r2 = textureSample(t11, s11, v1.xyxx.xy);
    let v_18 = ((-(r1.yzwy)).xyz + r2.xyz);
    r3 = vec4<f32>(v_18.xyz, r3.w);
    let v_19 = fma(r2.www, r3.xyz, r1.yzw);
    r1 = vec4<f32>(r1.x, v_19.xyz);
  } else {
    r2 = vec4<f32>();
  }
  r0.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).y);
  r0.x = f32(bitcast<u32>(r0.x));
  r0.x = (r0.x * 0.0039215688593685627f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.x)));
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r3 = fma(v1.xyxy, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_20 = r0;
  r0 = vec4<f32>(v_20.x, ((v1.xy * vec2<f32>(58.16400146484375f, 47.130001068115234375f))).xy, v_20.w);
  let v_21 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_21.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
  r5.x = dot(r4.xyz, cb5_5.tint_symbol_2[15u].xyz);
  r5.y = dot(r4.xyz, cb5_5.tint_symbol_2[16u].xyz);
  r5.z = dot(r4.xyz, cb5_5.tint_symbol_2[17u].xyz);
  let v_22 = fma(r5.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r5.x = dot(r4, cb5_5.tint_symbol_2[12u]);
  r5.y = dot(r4, cb5_5.tint_symbol_2[13u]);
  r0.w = dot(r4, cb5_5.tint_symbol_2[14u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  let v_23 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.00000999999974737875f, (v_23 != 0u));
  r4 = (r5.xyxy / r0.wwww);
  let v_24 = -(r4);
  r3 = (r3 + v_24);
  r3 = (r3 * vec4<f32>(40.0f, -22.5f, 40.0f, -22.5f));
  r0.w = dot(r3.zw, r3.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.w)));
  r0.w = inverseSqrt(r0.w);
  r4 = (r0.wwww * r3.zwzw);
  let v_25 = bitcast<vec4<u32>>(r1.xxxx);
  let v_26 = r4;
  r3 = select(r3, v_26, (v_25 != vec4<u32>()));
  r3 = (r3 * cb5_5.tint_symbol_2[11u].xxxx);
  r3 = (r3 * cb5_5.tint_symbol_2[11u].zwzw);
  r4 = (r3.zwzw * vec4<f32>(0.01250000018626451492f, 0.02222222276031970978f, 0.00208333344198763371f, 0.00370370363816618919f));
  let v_27 = fma(r1.yz, vec2<f32>(8.0f), r0.yz);
  let v_28 = r0;
  r0 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  r0.y = textureSample(t12, s12, r0.yzyy.xy).x;
  r0.y = (r0.y + -0.5f);
  r5 = (r0.yyyy * r4.zwzw);
  r5 = fma(r5, vec4<f32>(0.5f), v1.xyxy);
  let v_29 = fma(r3.zw, vec2<f32>(0.00208333344198763371f, 0.00370370363816618919f), r5.zw);
  let v_30 = r0;
  r0 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  let v_31 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  let v_32 = r0;
  r0 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  let v_33 = round(r0.yz);
  let v_34 = r0;
  r0 = vec4<f32>(v_34.x, v_33.xy, v_34.w);
  let v_35 = (r0.yz + vec2<f32>(0.5f));
  let v_36 = r0;
  r0 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  let v_37 = (r0.yz / cb2_2.tint_symbol_1[18u].xy);
  r4 = vec4<f32>(r4.xy, v_37.xy);
  let v_38 = r0.yz;
  let v_39 = max(v_38, vec2<f32>(-2147483648.0f));
  let v_40 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_39), vec2<i32>(2147483647i), (v_39 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_38 == v_38))));
  r6 = vec4<f32>(v_40.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r0.y = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v2)).y);
  r0.y = f32(bitcast<u32>(r0.y));
  r0.y = (r0.y * 0.0039215688593685627f);
  let v_41 = textureSample(t9, s9, r4.zwzz.xy).xyz;
  r6 = vec4<f32>(v_41.xyz, r6.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.y)));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r7 = fma(r3.zwzw, vec4<f32>(0.00416666688397526741f, 0.00740740727633237839f, 0.00625000009313225746f, 0.01111111138015985489f), r5.zwzw);
  r7 = (r7 * cb2_2.tint_symbol_1[18u].xyxy);
  r7 = round(r7);
  r7 = (r7 + vec4<f32>(0.5f));
  r8 = (r7 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_42 = r7.zwxy;
  let v_43 = max(v_42, vec4<f32>(-2147483648.0f));
  r7 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_43), vec4<i32>(2147483647i), (v_43 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_42 == v_42))));
  let v_44 = r7;
  r9 = vec4<f32>(v_44.zw, r9.zw);
  r9 = vec4<f32>(r9.xy, vec2<f32>());
  r0.z = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(v2)).y);
  r0.z = f32(bitcast<u32>(r0.z));
  r0.z = (r0.z * 0.0039215688593685627f);
  let v_45 = textureSample(t9, s9, r8.xyxx.xy).xyz;
  r9 = vec4<f32>(v_45.xyz, r9.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.z)));
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r0.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(v2)).y);
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = (r0.w * 0.0039215688593685627f);
  let v_46 = textureSample(t9, s9, r8.zwzz.xy).xyz;
  r7 = vec4<f32>(v_46.xyz, r7.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.w)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  r3 = fma(r3, vec4<f32>(0.00833333376795053482f, 0.01481481455266475677f, 0.01041666697710752487f, 0.01851851865649223328f), r5);
  r3 = (r3 * cb2_2.tint_symbol_1[18u].xyxy);
  r3 = round(r3);
  r3 = (r3 + vec4<f32>(0.5f));
  r5 = (r3 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_47 = r3.zwxy;
  let v_48 = max(v_47, vec4<f32>(-2147483648.0f));
  r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_48), vec4<i32>(2147483647i), (v_48 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_47 == v_47))));
  let v_49 = r3;
  r8 = vec4<f32>(v_49.zw, r8.zw);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r1.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(v2)).y);
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = (r1.x * 0.0039215688593685627f);
  let v_50 = textureSample(t9, s9, r5.xyxx.xy).xyz;
  r8 = vec4<f32>(v_50.xyz, r8.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r1.x)));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v2)).y);
  r3.x = f32(bitcast<u32>(r3.x));
  r3.x = (r3.x * 0.0039215688593685627f);
  let v_51 = textureSample(t9, s9, r5.zwzz.xy).xyz;
  r3 = vec4<f32>(r3.x, v_51.xyz);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r3.x)));
  r3.x = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  let v_52 = (r0.yyy * r6.xyz);
  r5 = vec4<f32>(v_52.xyz, r5.w);
  let v_53 = fma(r1.yzw, r0.xxx, r5.xyz);
  r5 = vec4<f32>(v_53.xyz, r5.w);
  r0.y = (r0.y + r0.x);
  let v_54 = fma(r9.xyz, r0.zzz, r5.xyz);
  r5 = vec4<f32>(v_54.xyz, r5.w);
  r0.y = (r0.z + r0.y);
  let v_55 = fma(r7.xyz, r0.www, r5.xyz);
  r5 = vec4<f32>(v_55.xyz, r5.w);
  r0.y = (r0.w + r0.y);
  let v_56 = fma(r8.xyz, r1.xxx, r5.xyz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  r0.y = (r1.x + r0.y);
  let v_57 = fma(r3.yzw, r3.xxx, r5.xyz);
  r3 = vec4<f32>(r3.x, v_57.xyz);
  r0.y = (r3.x + r0.y);
  r0.y = max(r0.y, 0.10000000149011611938f);
  let v_58 = (r3.yzw / r0.yyy);
  r0 = vec4<f32>(r0.x, v_58.xyz);
  r1.x = dot(r4.xy, r4.xy);
  r1.x = (r1.x * 100000.0f);
  r1.x = min(r1.x, 1.0f);
  r0.x = (r0.x * r1.x);
  let v_59 = ((-(r1.yyzw)).yzw + r0.yzw);
  r0 = vec4<f32>(r0.x, v_59.xyz);
  let v_60 = fma(r0.xxx, r0.yzw, r1.yzw);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = textureSample(t14, s14, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = ((-(r1.xyzx)).xyz + r2.xyz);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = fma(r2.www, r2.xyz, r1.xyz);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = bitcast<vec3<u32>>(cb5_5.tint_symbol_2[84u].zzz);
  let v_65 = r2.xyz;
  let v_66 = select(r1.xyz, v_65, (v_64 != vec3<u32>()));
  r1 = vec4<f32>(v_66.xyz, r1.w);
  let v_67 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_67.xyz, r1.w);
  let v_68 = fma(cb5_5.tint_symbol_2[58u].xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_68.xyz, r0.w);
  let v_69 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_70.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_71 = fma(cb5_5.tint_symbol_2[40u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_71.xyz, r0.w);
  }
  let v_72 = textureSample(t13, s13, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_72.xyz, r2.w);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_2[28u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[28u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_2[28u].zzzz)).w + cb5_5.tint_symbol_2[28u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_2[28u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_2[29u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[30u].w);
  let v_73 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_73.xyz, r0.w);
  let v_74 = (r1.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r1 = vec4<f32>(v_74.xyz, r1.w);
  let v_75 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[51u].zzzz)).w, 0.0f, 1.0f);
  let v_76 = ((-(cb5_5.tint_symbol_2[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_76.xyz, r1.w);
  let v_77 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[52u].xyz);
  r1 = vec4<f32>(v_77.xyz, r1.w);
  let v_78 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_81.xyz, r0.w);
  let v_82 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[9u].xxx);
  r1 = vec4<f32>(v_82.xyz, r1.w);
  let v_83 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_2[9u].yyy);
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[8u].yyy);
  r2 = vec4<f32>(v_84.xyz, r2.w);
  let v_85 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_2[9u].zzz);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = -(cb5_5.tint_symbol_2[9u].wwww);
  let v_88 = (r0.xyz + v_87.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = clamp(((r0.xyzx * cb5_5.tint_symbol_2[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_89.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_90 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = fma(cb5_5.tint_symbol_2[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[60u].wwww)).x, 0.0f, 1.0f);
  let v_92 = -(cb5_5.tint_symbol_2[60u].xxyz);
  let v_93 = (cb5_5.tint_symbol_2[59u].xyz + v_92.yzw);
  r1 = vec4<f32>(r1.x, v_93.xyz);
  let v_94 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[60u].xyz);
  r1 = vec4<f32>(v_94.xyz, r1.w);
  let v_95 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[59u].wwww)).w + 1.0f);
  let v_96 = -(r1.wwww);
  r0.w = (r0.w + v_96.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_97 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  let v_98 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = log2(r0.xyz);
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = (r0.xyz * cb5_5.tint_symbol_2[61u].yyy);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = exp2(r0.xyz);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  r0.w = (v1.y + cb5_5.tint_symbol_2[57u].w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[57u].y);
  r0.w = sin(r0.wwww.w);
  r0.w = fma(r0.w, 0.5f, 0.5f);
  r1.x = fma(cb5_5.tint_symbol_2[57u].w, 0.5f, v1.y);
  r1.x = (r1.x * cb5_5.tint_symbol_2[57u].z);
  r1.x = sin(r1.xxxx.x);
  r1.x = fma(r1.x, 0.5f, 0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[57u].x);
  r0.w = fma(r0.w, cb5_5.tint_symbol_2[57u].x, r1.x);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_102 = (v1.xy * cb5_5.tint_symbol_2[10u].ww);
  r1 = vec4<f32>(v_102.xy, r1.zw);
  let v_103 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_2[10u].xy);
  r1 = vec4<f32>(v_103.xy, r1.zw);
  let v_104 = fract(r1.xy);
  r1 = vec4<f32>(v_104.xy, r1.zw);
  r1.x = textureSample(t7, s7, r1.xyxx.xy).w;
  r1.x = (r1.x + -0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[10u].z);
  let v_105 = clamp(fma(r0.xyzx, r0.wwww, r1.xxxx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_105.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_106 = r0;
  o0 = vec4<f32>(v_106.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
