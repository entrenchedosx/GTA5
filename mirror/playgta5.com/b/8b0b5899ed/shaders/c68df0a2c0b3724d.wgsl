diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb86_struct {
  tint_symbol_1 : array<vec4<f32>, 86u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb86_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_1[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[24u].y < r0.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol_1[24u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.z = textureSample(t6, s6, v1.xyxx.xy).x;
  r0.z = (r0.z * cb5_5.tint_symbol_1[27u].z);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(cb5_5.tint_symbol_1[24u].zzzz)).z + cb5_5.tint_symbol_1[24u].w);
  r0.y = fma(r0.y, r0.z, cb5_5.tint_symbol_1[24u].z);
  let v_4 = fma(v1.xy, cb5_5.tint_symbol_1[25u].xy, cb5_5.tint_symbol_1[25u].zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = fma(v1.xy, cb5_5.tint_symbol_1[26u].xy, cb5_5.tint_symbol_1[26u].zw);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = textureSample(t13, s13, r0.zwzz.xy).xy;
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = textureSample(t13, s13, r1.xyxx.xy).xy;
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r0.zw + r1.xy);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = (r0.zw + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = (r0.zw * cb5_5.tint_symbol_1[27u].xy);
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = fma(r0.zw, r0.yy, v1.xy);
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[85u].w)));
  let v_13 = bitcast<vec2<u32>>(r0.ww);
  let v_14 = select(v1.xy, r0.yz, (v_13 != vec2<u32>()));
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = (r0.yz * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = r1.xy;
  let v_18 = max(v_17, vec2<f32>(-2147483648.0f));
  let v_19 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_18), vec2<i32>(2147483647i), (v_18 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_17 == v_17))));
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  let v_20 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).xyz;
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r2 = fma(cb5_5.tint_symbol_1[66u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), r0.yzyz);
    let v_22 = textureSample(t9, s9, r2.xyxx.xy).xyz;
    r3 = vec4<f32>(v_22.xyz, r3.w);
    let v_23 = textureSample(t9, s9, r2.zwzz.xy).xyz;
    r2 = vec4<f32>(v_23.xyz, r2.w);
    r4 = fma(cb5_5.tint_symbol_1[66u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), r0.yzyz);
    let v_24 = textureSample(t9, s9, r4.xyxx.xy).xyz;
    r5 = vec4<f32>(v_24.xyz, r5.w);
    let v_25 = textureSample(t9, s9, r4.zwzz.xy).xyz;
    r4 = vec4<f32>(v_25.xyz, r4.w);
    let v_26 = textureSample(t9, s9, r0.yzyy.xy).xyz;
    r6 = vec4<f32>(v_26.xyz, r6.w);
    let v_27 = (r2.xyz + r3.xyz);
    r2 = vec4<f32>(v_27.xyz, r2.w);
    let v_28 = (r5.xyz + r2.xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = (r4.xyz + r2.xyz);
    r2 = vec4<f32>(v_29.xyz, r2.w);
    let v_30 = fma(r6.xyz, vec3<f32>(0.5f), r2.xyz);
    r2 = vec4<f32>(v_30.xyz, r2.w);
    let v_31 = (r2.xyz * vec3<f32>(0.22222222387790679932f));
    r2 = vec4<f32>(v_31.xyz, r2.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_1[4u].x == 0.0f))));
    let v_32 = bitcast<vec3<u32>>(r0.www);
    let v_33 = r6.xyz;
    let v_34 = select(r2.xyz, v_33, (v_32 != vec3<u32>()));
    r2 = vec4<f32>(v_34.xyz, r2.w);
    let v_35 = -(cb5_5.tint_symbol_1[3u].xxxz);
    let v_36 = (r0.xx + v_35.xw);
    r0 = vec4<f32>(v_36.x, r0.yz, v_36.y);
    r3.x = (r0.w * cb5_5.tint_symbol_1[3u].w);
    r0.x = clamp(fma(-(r0.xxxx), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r3.x = clamp(r3.xxxx.x, 0.0f, 1.0f);
    r0.x = max(r0.x, r3.x);
    r3 = clamp(fma(r0.xxxx, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 1000.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, -999.0f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_37 = ((-(r3.xxxy)).xw + vec2<f32>(1.0f));
    r0 = vec4<f32>(v_37.x, r0.yz, v_37.y);
    let v_38 = min(r0.xw, r3.yz);
    r0 = vec4<f32>(v_38.x, r0.yz, v_38.y);
    let v_39 = (r0.xxx * r6.xyz);
    r4 = vec4<f32>(v_39.xyz, r4.w);
    let v_40 = fma(r1.xyz, r3.xxx, r4.xyz);
    r3 = vec4<f32>(v_40.xyz, r3.w);
    let v_41 = fma(r2.xyz, r0.www, r3.xyz);
    r3 = vec4<f32>(v_41.xyz, r3.w);
    let v_42 = fma(r2.xyz, r3.www, r3.xyz);
    r1 = vec4<f32>(v_42.xyz, r1.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_1[84u].z) != 0u)) {
    r2 = textureSample(t11, s11, r0.yzyy.xy);
    let v_43 = ((-(r1.xyzx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_43.xyz, r2.w);
    let v_44 = fma(r2.www, r2.xyz, r1.xyz);
    r1 = vec4<f32>(v_44.xyz, r1.w);
  }
  let v_45 = textureSample(t10, s10, r0.yzyy.xy).xyz;
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t15, s15, r0.yzyy.xy).x;
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_47 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_47.xyz, r1.w);
  }
  let v_48 = min(r1.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_51.xyz, r1.w);
  let v_52 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_52.xyz, r1.w);
  let v_53 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_53.xyz, r3.w);
  let v_54 = fma(r0.xyz, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_57 = (r0.xyz + v_56.xyz);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  let v_58 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_58.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_59 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_61 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_62 = (cb5_5.tint_symbol_1[59u].xyz + v_61.yzw);
  r1 = vec4<f32>(r1.x, v_62.xyz);
  let v_63 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_63.xyz, r1.w);
  let v_64 = (r0.xyz * r1.xyz);
  r3 = vec4<f32>(v_64.xyz, r3.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_65 = -(r1.wwww);
  r0.w = (r0.w + v_65.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_66 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = clamp(fma(r0.wwww, r0.xyzx, r3.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_67.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.y = (r0.x * cb5_5.tint_symbol_1[18u].z);
  r0.y = clamp(((r0.yyyy / cb5_5.tint_symbol_1[17u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_68 = -(cb5_5.tint_symbol_1[18u].xxxx);
  r0.z = fma(r0.x, cb5_5.tint_symbol_1[18u].z, v_68.z);
  r0.w = (v_68.w + cb5_5.tint_symbol_1[18u].y);
  r0.z = clamp(((r0.zzzz / r0.wwww)).z, 0.0f, 1.0f);
  r0.w = (r0.z + r0.y);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_69 = (r0.yy * cb5_5.tint_symbol_1[19u].xw);
  r1 = vec4<f32>(v_69.xy, r1.zw);
  r1.x = fma(r0.z, cb5_5.tint_symbol_1[19u].y, r1.x);
  r1.x = fma(r0.w, cb5_5.tint_symbol_1[18u].w, r1.x);
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[18u].z, r1.x);
  let v_70 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_1[10u].xy);
  r1 = vec4<f32>(r1.xy, v_70.xy);
  let v_71 = fract(r1.zw);
  r1 = vec4<f32>(r1.xy, v_71.xy);
  r1.z = textureSample(t7, s7, r1.zwzz.xy).y;
  r1.y = fma(r0.w, cb5_5.tint_symbol_1[19u].z, r1.y);
  r1.z = (r1.z + -0.5f);
  r0.x = fma(r1.z, r1.y, r0.x);
  r1.y = (r0.z * cb5_5.tint_symbol_1[20u].x);
  r1.y = (r1.y * r1.z);
  r1.y = max(r1.y, 0.0f);
  r0.x = (r0.x + r1.y);
  let v_72 = (r2.xyz * v1.zzz);
  r1 = vec4<f32>(r1.x, v_72.xyz);
  let v_73 = max(r1.yzw, vec3<f32>());
  r1 = vec4<f32>(r1.x, v_73.xyz);
  let v_74 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.yzw, cb5_5.tint_symbol_1[9u].xxx);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = fma(r1.yzw, r2.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.yzw, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_76.xyz, r3.w);
  let v_77 = fma(r1.yzw, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r1 = vec4<f32>(r1.x, v_77.xyz);
  let v_78 = (r2.xyz / r1.yzw);
  r1 = vec4<f32>(r1.x, v_78.xyz);
  let v_79 = (r1.yzw + v_56.yzw);
  r1 = vec4<f32>(r1.x, v_79.xyz);
  let v_80 = clamp(((r1.yyzw * cb5_5.tint_symbol_1[8u].zzzz)).yzw, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(r1.x, v_80.xyz);
  r1.y = dot(r1.yzw, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = fma(r1.y, cb5_5.tint_symbol_1[18u].z, r1.x);
  r1.x = ((-(r0.zzzz)).x + r1.x);
  r1.x = max(r1.x, 0.0f);
  r0.x = fma(r1.x, cb5_5.tint_symbol_1[20u].y, r0.x);
  let v_81 = (r0.zzz * cb5_5.tint_symbol_1[23u].xyz);
  r1 = vec4<f32>(v_81.xyz, r1.w);
  let v_82 = fma(r0.yyy, cb5_5.tint_symbol_1[22u].xyz, r1.xyz);
  r1 = vec4<f32>(v_82.xyz, r1.w);
  let v_83 = fma(r0.www, cb5_5.tint_symbol_1[21u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_83.xyz);
  let v_84 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_84.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_85 = r0;
  o0 = vec4<f32>(v_85.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
