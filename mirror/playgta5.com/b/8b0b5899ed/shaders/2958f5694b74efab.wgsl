diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb86_struct {
  tint_symbol_1 : array<vec4<f32>, 86u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb86_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

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
    let v_22 = textureSample(t9, s9, r0.yzyy.xy).xyz;
    r2 = vec4<f32>(v_22.xyz, r2.w);
    let v_23 = textureSample(t4, s4, r0.yzyy.xy).xyz;
    r3 = vec4<f32>(v_23.xyz, r3.w);
    let v_24 = textureSample(t14, s14, r0.yzyy.xy).xyz;
    r4 = vec4<f32>(v_24.xyz, r4.w);
    let v_25 = -(cb5_5.tint_symbol_1[3u].xxxz);
    let v_26 = (r0.xx + v_25.xw);
    r0 = vec4<f32>(v_26.x, r0.yz, v_26.y);
    r5.x = (r0.w * cb5_5.tint_symbol_1[3u].w);
    r0.x = clamp(fma(-(r0.xxxx), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
    r0.x = max(r0.x, r5.x);
    r5 = clamp(fma(r0.xxxx, vec4<f32>(-10.0f, -3.33333325386047363281f, -1.66666662693023681641f, 1.66666662693023681641f), vec4<f32>(1.0f, 1.33333337306976318359f, 1.66666662693023681641f, -0.6666666865348815918f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_27 = ((-(r5.xxxy)).xw + vec2<f32>(1.0f));
    r0 = vec4<f32>(v_27.x, r0.yz, v_27.y);
    let v_28 = min(r0.xw, r5.yz);
    r0 = vec4<f32>(v_28.x, r0.yz, v_28.y);
    let v_29 = (r0.xxx * r2.xyz);
    r2 = vec4<f32>(v_29.xyz, r2.w);
    let v_30 = fma(r1.xyz, r5.xxx, r2.xyz);
    r2 = vec4<f32>(v_30.xyz, r2.w);
    let v_31 = fma(r3.xyz, r0.www, r2.xyz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = fma(r4.xyz, r5.www, r2.xyz);
    r1 = vec4<f32>(v_32.xyz, r1.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_1[84u].z) != 0u)) {
    r2 = textureSample(t11, s11, r0.yzyy.xy);
    let v_33 = ((-(r1.xyzx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_33.xyz, r2.w);
    let v_34 = fma(r2.www, r2.xyz, r1.xyz);
    r1 = vec4<f32>(v_34.xyz, r1.w);
  }
  let v_35 = textureSample(t10, s10, r0.yzyy.xy).xyz;
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t15, s15, r0.yzyy.xy).x;
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_37 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_37.xyz, r1.w);
  }
  let v_38 = (r2.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[51u].zzzz)).w, 0.0f, 1.0f);
  let v_40 = ((-(cb5_5.tint_symbol_1[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[52u].xyz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  let v_42 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  let v_49 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_52 = (r0.xyz + v_51.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_53.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_54 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_56 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_57 = (cb5_5.tint_symbol_1[59u].xyz + v_56.yzw);
  r1 = vec4<f32>(r1.x, v_57.xyz);
  let v_58 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_60 = -(r1.wwww);
  r0.w = (r0.w + v_60.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_61 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_61.xyz, r0.w);
  let v_62 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_62.xyz, r0.w);
  let v_63 = log2(r0.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  let v_64 = (r0.xyz * cb5_5.tint_symbol_1[61u].yyy);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  let v_65 = exp2(r0.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = (v1.xy * cb5_5.tint_symbol_1[10u].ww);
  r1 = vec4<f32>(v_66.xy, r1.zw);
  let v_67 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_1[10u].xy);
  r1 = vec4<f32>(v_67.xy, r1.zw);
  let v_68 = fract(r1.xy);
  r1 = vec4<f32>(v_68.xy, r1.zw);
  r0.w = textureSample(t7, s7, r1.xyxx.xy).w;
  r0.w = (r0.w + -0.5f);
  let v_69 = clamp(fma(r0.wwww, cb5_5.tint_symbol_1[10u].zzzz, r0.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_69.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_70 = r0;
  o0 = vec4<f32>(v_70.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
