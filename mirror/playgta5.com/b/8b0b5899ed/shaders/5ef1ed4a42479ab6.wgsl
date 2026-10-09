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

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

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
    r2 = fma(cb5_5.tint_symbol_2[66u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), v1.xyxy);
    let v_6 = textureSample(t9, s9, r2.xyxx.xy).xyz;
    r3 = vec4<f32>(v_6.xyz, r3.w);
    let v_7 = textureSample(t9, s9, r2.zwzz.xy).xyz;
    r2 = vec4<f32>(v_7.xyz, r2.w);
    r4 = fma(cb5_5.tint_symbol_2[66u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), v1.xyxy);
    let v_8 = textureSample(t9, s9, r4.xyxx.xy).xyz;
    r5 = vec4<f32>(v_8.xyz, r5.w);
    let v_9 = textureSample(t9, s9, r4.zwzz.xy).xyz;
    r4 = vec4<f32>(v_9.xyz, r4.w);
    let v_10 = textureSample(t9, s9, v1.xyxx.xy).xyz;
    r6 = vec4<f32>(v_10.xyz, r6.w);
    let v_11 = (r2.xyz + r3.xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    let v_12 = (r5.xyz + r2.xyz);
    r2 = vec4<f32>(v_12.xyz, r2.w);
    let v_13 = (r4.xyz + r2.xyz);
    r2 = vec4<f32>(v_13.xyz, r2.w);
    let v_14 = fma(r6.xyz, vec3<f32>(0.5f), r2.xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = (r2.xyz * vec3<f32>(0.22222222387790679932f));
    r2 = vec4<f32>(v_15.xyz, r2.w);
    r2.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_2[4u].x == 0.0f))));
    let v_16 = bitcast<vec3<u32>>(r2.www);
    let v_17 = r6.xyz;
    let v_18 = select(r2.xyz, v_17, (v_16 != vec3<u32>()));
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_20 = (r1.xx + v_19.xy);
    r3 = vec4<f32>(v_20.xy, r3.zw);
    r4.x = (r3.y * cb5_5.tint_symbol_2[3u].w);
    r2.w = clamp(fma(-(r3.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.x = clamp(r4.xxxx.x, 0.0f, 1.0f);
    r2.w = max(r2.w, r4.x);
    r3 = clamp(fma(r2.wwww, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 1000.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, -999.0f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_21 = ((-(r3.xyxx)).xy + vec2<f32>(1.0f));
    r4 = vec4<f32>(v_21.xy, r4.zw);
    let v_22 = min(r3.yz, r4.xy);
    let v_23 = r3;
    r3 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
    let v_24 = (r3.yyy * r6.xyz);
    r4 = vec4<f32>(v_24.xyz, r4.w);
    let v_25 = fma(r1.yzw, r3.xxx, r4.xyz);
    r4 = vec4<f32>(v_25.xyz, r4.w);
    let v_26 = fma(r2.xyz, r3.zzz, r4.xyz);
    r3 = vec4<f32>(v_26.xyz, r3.w);
    let v_27 = fma(r2.xyz, r3.www, r3.xyz);
    r1 = vec4<f32>(r1.x, v_27.xyz);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[84u].z) != 0u)) {
    r2 = textureSample(t11, s11, v1.xyxx.xy);
    let v_28 = ((-(r1.yzwy)).xyz + r2.xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = fma(r2.www, r2.xyz, r1.yzw);
    r1 = vec4<f32>(r1.x, v_29.xyz);
  }
  r0.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).y);
  r0.x = f32(bitcast<u32>(r0.x));
  r0.x = (r0.x * 0.0039215688593685627f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.x)));
  r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r2 = fma(v1.xyxy, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_30 = r0;
  r0 = vec4<f32>(v_30.x, ((v1.xy * vec2<f32>(58.16400146484375f, 47.130001068115234375f))).xy, v_30.w);
  let v_31 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_31.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>(1.0f));
  r4.x = dot(r3.xyz, cb5_5.tint_symbol_2[15u].xyz);
  r4.y = dot(r3.xyz, cb5_5.tint_symbol_2[16u].xyz);
  r4.z = dot(r3.xyz, cb5_5.tint_symbol_2[17u].xyz);
  let v_32 = fma(r4.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  r4.x = dot(r3, cb5_5.tint_symbol_2[12u]);
  r4.y = dot(r3, cb5_5.tint_symbol_2[13u]);
  r0.w = dot(r3, cb5_5.tint_symbol_2[14u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  let v_33 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.00000999999974737875f, (v_33 != 0u));
  r3 = (r4.xyxy / r0.wwww);
  let v_34 = -(r3);
  r2 = (r2 + v_34);
  r2 = (r2 * vec4<f32>(40.0f, -22.5f, 40.0f, -22.5f));
  r0.w = dot(r2.zw, r2.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.w)));
  r0.w = inverseSqrt(r0.w);
  r3 = (r0.wwww * r2.zwzw);
  let v_35 = bitcast<vec4<u32>>(r1.xxxx);
  let v_36 = r3;
  r2 = select(r2, v_36, (v_35 != vec4<u32>()));
  r2 = (r2 * cb5_5.tint_symbol_2[11u].xxxx);
  r2 = (r2 * cb5_5.tint_symbol_2[11u].zwzw);
  r3 = (r2.zwzw * vec4<f32>(0.01250000018626451492f, 0.02222222276031970978f, 0.00208333344198763371f, 0.00370370363816618919f));
  let v_37 = fma(r1.yz, vec2<f32>(8.0f), r0.yz);
  let v_38 = r0;
  r0 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  r0.y = textureSample(t12, s12, r0.yzyy.xy).x;
  r0.y = (r0.y + -0.5f);
  r4 = (r0.yyyy * r3.zwzw);
  r4 = fma(r4, vec4<f32>(0.5f), v1.xyxy);
  let v_39 = fma(r2.zw, vec2<f32>(0.00208333344198763371f, 0.00370370363816618919f), r4.zw);
  let v_40 = r0;
  r0 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  let v_42 = r0;
  r0 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
  let v_43 = round(r0.yz);
  let v_44 = r0;
  r0 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
  let v_45 = (r0.yz + vec2<f32>(0.5f));
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.xy, v_46.w);
  let v_47 = (r0.yz / cb2_2.tint_symbol_1[18u].xy);
  r3 = vec4<f32>(r3.xy, v_47.xy);
  let v_48 = r0.yz;
  let v_49 = max(v_48, vec2<f32>(-2147483648.0f));
  let v_50 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_49), vec2<i32>(2147483647i), (v_49 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_48 == v_48))));
  r5 = vec4<f32>(v_50.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r0.y = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(v2)).y);
  r0.y = f32(bitcast<u32>(r0.y));
  r0.y = (r0.y * 0.0039215688593685627f);
  let v_51 = textureSample(t9, s9, r3.zwzz.xy).xyz;
  r5 = vec4<f32>(v_51.xyz, r5.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.y)));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r6 = fma(r2.zwzw, vec4<f32>(0.00416666688397526741f, 0.00740740727633237839f, 0.00625000009313225746f, 0.01111111138015985489f), r4.zwzw);
  r6 = (r6 * cb2_2.tint_symbol_1[18u].xyxy);
  r6 = round(r6);
  r6 = (r6 + vec4<f32>(0.5f));
  r7 = (r6 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_52 = r6.zwxy;
  let v_53 = max(v_52, vec4<f32>(-2147483648.0f));
  r6 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_53), vec4<i32>(2147483647i), (v_53 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_52 == v_52))));
  let v_54 = r6;
  r8 = vec4<f32>(v_54.zw, r8.zw);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r0.z = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(v2)).y);
  r0.z = f32(bitcast<u32>(r0.z));
  r0.z = (r0.z * 0.0039215688593685627f);
  let v_55 = textureSample(t9, s9, r7.xyxx.xy).xyz;
  r8 = vec4<f32>(v_55.xyz, r8.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.z)));
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r0.w = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v2)).y);
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = (r0.w * 0.0039215688593685627f);
  let v_56 = textureSample(t9, s9, r7.zwzz.xy).xyz;
  r6 = vec4<f32>(v_56.xyz, r6.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r0.w)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  r2 = fma(r2, vec4<f32>(0.00833333376795053482f, 0.01481481455266475677f, 0.01041666697710752487f, 0.01851851865649223328f), r4);
  r2 = (r2 * cb2_2.tint_symbol_1[18u].xyxy);
  r2 = round(r2);
  r2 = (r2 + vec4<f32>(0.5f));
  r4 = (r2 / cb2_2.tint_symbol_1[18u].xyxy);
  let v_57 = r2.zwxy;
  let v_58 = max(v_57, vec4<f32>(-2147483648.0f));
  r2 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_58), vec4<i32>(2147483647i), (v_58 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_57 == v_57))));
  let v_59 = r2;
  r7 = vec4<f32>(v_59.zw, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r1.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(v2)).y);
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = (r1.x * 0.0039215688593685627f);
  let v_60 = textureSample(t9, s9, r4.xyxx.xy).xyz;
  r7 = vec4<f32>(v_60.xyz, r7.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r1.x)));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v2)).y);
  r2.x = f32(bitcast<u32>(r2.x));
  r2.x = (r2.x * 0.0039215688593685627f);
  let v_61 = textureSample(t9, s9, r4.zwzz.xy).xyz;
  r2 = vec4<f32>(r2.x, v_61.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[50u].x < r2.x)));
  r2.x = select(1.0f, 0.0f, (bitcast<u32>(r2.x) != 0u));
  let v_62 = (r0.yyy * r5.xyz);
  r4 = vec4<f32>(v_62.xyz, r4.w);
  let v_63 = fma(r1.yzw, r0.xxx, r4.xyz);
  r4 = vec4<f32>(v_63.xyz, r4.w);
  r0.y = (r0.y + r0.x);
  let v_64 = fma(r8.xyz, r0.zzz, r4.xyz);
  r4 = vec4<f32>(v_64.xyz, r4.w);
  r0.y = (r0.z + r0.y);
  let v_65 = fma(r6.xyz, r0.www, r4.xyz);
  r4 = vec4<f32>(v_65.xyz, r4.w);
  r0.y = (r0.w + r0.y);
  let v_66 = fma(r7.xyz, r1.xxx, r4.xyz);
  r4 = vec4<f32>(v_66.xyz, r4.w);
  r0.y = (r1.x + r0.y);
  let v_67 = fma(r2.yzw, r2.xxx, r4.xyz);
  r2 = vec4<f32>(r2.x, v_67.xyz);
  r0.y = (r2.x + r0.y);
  r0.y = max(r0.y, 0.10000000149011611938f);
  let v_68 = (r2.yzw / r0.yyy);
  r0 = vec4<f32>(r0.x, v_68.xyz);
  r1.x = dot(r3.xy, r3.xy);
  r1.x = (r1.x * 100000.0f);
  r1.x = min(r1.x, 1.0f);
  r0.x = (r0.x * r1.x);
  let v_69 = ((-(r1.yyzw)).yzw + r0.yzw);
  r0 = vec4<f32>(r0.x, v_69.xyz);
  let v_70 = fma(r0.xxx, r0.yzw, r1.yzw);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  let v_71 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_71.xyz, r1.w);
  let v_72 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_73 = fma(cb5_5.tint_symbol_2[40u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_73.xyz, r0.w);
  }
  let v_74 = textureSample(t13, s13, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_74.xyz, r2.w);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_2[28u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[28u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_2[28u].zzzz)).w + cb5_5.tint_symbol_2[28u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_2[28u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_2[29u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[30u].w);
  let v_75 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = (r1.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r1 = vec4<f32>(v_76.xyz, r1.w);
  let v_77 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[51u].zzzz)).w, 0.0f, 1.0f);
  let v_78 = ((-(cb5_5.tint_symbol_2[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_78.xyz, r1.w);
  let v_79 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[52u].xyz);
  r1 = vec4<f32>(v_79.xyz, r1.w);
  let v_80 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_81.xyz, r0.w);
  let v_82 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_83.xyz, r0.w);
  let v_84 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[9u].xxx);
  r1 = vec4<f32>(v_84.xyz, r1.w);
  let v_85 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_2[9u].yyy);
  r1 = vec4<f32>(v_85.xyz, r1.w);
  let v_86 = fma(cb5_5.tint_symbol_2[8u].xxx, r0.xyz, cb5_5.tint_symbol_2[8u].yyy);
  r2 = vec4<f32>(v_86.xyz, r2.w);
  let v_87 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_2[9u].zzz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = -(cb5_5.tint_symbol_2[9u].wwww);
  let v_90 = (r0.xyz + v_89.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = clamp(((r0.xyzx * cb5_5.tint_symbol_2[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_91.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_92 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = fma(cb5_5.tint_symbol_2[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_93.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[60u].wwww)).x, 0.0f, 1.0f);
  let v_94 = -(cb5_5.tint_symbol_2[60u].xxyz);
  let v_95 = (cb5_5.tint_symbol_2[59u].xyz + v_94.yzw);
  r1 = vec4<f32>(r1.x, v_95.xyz);
  let v_96 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[60u].xyz);
  r1 = vec4<f32>(v_96.xyz, r1.w);
  let v_97 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_97.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[59u].wwww)).w + 1.0f);
  let v_98 = -(r1.wwww);
  r0.w = (r0.w + v_98.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_99 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = log2(r0.xyz);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = (r0.xyz * cb5_5.tint_symbol_2[61u].yyy);
  r0 = vec4<f32>(v_102.xyz, r0.w);
  let v_103 = exp2(r0.xyz);
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_104.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_105 = r0;
  o0 = vec4<f32>(v_105.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
