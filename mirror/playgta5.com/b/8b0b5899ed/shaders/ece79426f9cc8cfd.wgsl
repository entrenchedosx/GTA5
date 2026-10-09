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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

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
  let v_4 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).xyz;
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[85u].w)));
  if ((bitcast<u32>(r1.w) != 0u)) {
  } else {
    r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
    r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_1[0u].w);
    r0.x = (r0.x + 1.0f);
    r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
    r2 = fma(cb5_5.tint_symbol_1[66u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), v1.xyxy);
    let v_6 = textureSample(t9, s9, r2.xyxx.xy).xyz;
    r0 = vec4<f32>(r0.x, v_6.xyz);
    let v_7 = textureSample(t9, s9, r2.zwzz.xy).xyz;
    r2 = vec4<f32>(v_7.xyz, r2.w);
    r3 = fma(cb5_5.tint_symbol_1[66u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), v1.xyxy);
    let v_8 = textureSample(t9, s9, r3.xyxx.xy).xyz;
    r4 = vec4<f32>(v_8.xyz, r4.w);
    let v_9 = textureSample(t9, s9, r3.zwzz.xy).xyz;
    r3 = vec4<f32>(v_9.xyz, r3.w);
    let v_10 = textureSample(t9, s9, v1.xyxx.xy).xyz;
    r5 = vec4<f32>(v_10.xyz, r5.w);
    let v_11 = (r0.yzw + r2.xyz);
    r0 = vec4<f32>(r0.x, v_11.xyz);
    let v_12 = (r4.xyz + r0.yzw);
    r0 = vec4<f32>(r0.x, v_12.xyz);
    let v_13 = (r3.xyz + r0.yzw);
    r0 = vec4<f32>(r0.x, v_13.xyz);
    let v_14 = fma(r5.xyz, vec3<f32>(0.5f), r0.yzw);
    r0 = vec4<f32>(r0.x, v_14.xyz);
    let v_15 = (r0.yzw * vec3<f32>(0.22222222387790679932f));
    r0 = vec4<f32>(r0.x, v_15.xyz);
    r1.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_1[4u].x == 0.0f))));
    let v_16 = bitcast<vec3<u32>>(r1.www);
    let v_17 = r5.xyz;
    let v_18 = select(r0.yzw, v_17, (v_16 != vec3<u32>()));
    r0 = vec4<f32>(r0.x, v_18.xyz);
    let v_19 = -(cb5_5.tint_symbol_1[3u].xzxx);
    let v_20 = (r0.xx + v_19.xy);
    r2 = vec4<f32>(v_20.xy, r2.zw);
    r0.x = (r2.y * cb5_5.tint_symbol_1[3u].w);
    r1.w = clamp(fma(-(r2.xxxx), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
    r0.x = max(r0.x, r1.w);
    r2 = clamp(fma(r0.xxxx, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 1000.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, -999.0f)), vec4<f32>(), vec4<f32>(1.0f));
    let v_21 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
    r3 = vec4<f32>(v_21.xy, r3.zw);
    let v_22 = min(r2.yz, r3.xy);
    let v_23 = r2;
    r2 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
    let v_24 = (r2.yyy * r5.xyz);
    r3 = vec4<f32>(v_24.xyz, r3.w);
    let v_25 = fma(r1.xyz, r2.xxx, r3.xyz);
    r3 = vec4<f32>(v_25.xyz, r3.w);
    let v_26 = fma(r0.yzw, r2.zzz, r3.xyz);
    r2 = vec4<f32>(v_26.xyz, r2.w);
    let v_27 = fma(r0.yzw, r2.www, r2.xyz);
    r1 = vec4<f32>(v_27.xyz, r1.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_1[84u].z) != 0u)) {
    r0 = textureSample(t11, s11, v1.xyxx.xy);
    let v_28 = ((-(r1.xyzx)).xyz + r0.xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = fma(r0.www, r2.xyz, r1.xyz);
    r1 = vec4<f32>(v_29.xyz, r1.w);
  } else {
    r0 = vec4<f32>();
  }
  let v_30 = textureSample(t14, s14, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = -(r2.xyzx);
  let v_32 = (r0.xyz + v_31.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = fma(r0.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = bitcast<vec3<u32>>(cb5_5.tint_symbol_1[84u].zzz);
  let v_35 = r0.xyz;
  let v_36 = select(r2.xyz, v_35, (v_34 != vec3<u32>()));
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = ((-(r1.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = fma(cb5_5.tint_symbol_1[58u].xxx, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_41 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_41.xyz, r0.w);
  }
  let v_42 = textureSample(t13, s13, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_42.xyz, r2.w);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_1[28u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[28u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_1[28u].zzzz)).w + cb5_5.tint_symbol_1[28u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_1[28u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_1[29u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[30u].w);
  let v_43 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = (r1.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[51u].zzzz)).w, 0.0f, 1.0f);
  let v_46 = ((-(cb5_5.tint_symbol_1[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[52u].xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_52.xyz, r1.w);
  let v_53 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_53.xyz, r1.w);
  let v_54 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_56.xyz, r0.w);
  let v_57 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_58 = (r0.xyz + v_57.xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_59.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_60 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_61.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_62 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_63 = (cb5_5.tint_symbol_1[59u].xyz + v_62.yzw);
  r1 = vec4<f32>(r1.x, v_63.xyz);
  let v_64 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_66 = -(r1.wwww);
  r0.w = (r0.w + v_66.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_67 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_68.xyz, r0.w);
  let v_69 = log2(r0.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = (r0.xyz * cb5_5.tint_symbol_1[61u].yyy);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  let v_71 = exp2(r0.xyz);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  r0.w = (v1.y + cb5_5.tint_symbol_1[57u].w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[57u].y);
  r0.w = sin(r0.wwww.w);
  r0.w = fma(r0.w, 0.5f, 0.5f);
  r1.x = fma(cb5_5.tint_symbol_1[57u].w, 0.5f, v1.y);
  r1.x = (r1.x * cb5_5.tint_symbol_1[57u].z);
  r1.x = sin(r1.xxxx.x);
  r1.x = fma(r1.x, 0.5f, 0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[57u].x);
  r0.w = fma(r0.w, cb5_5.tint_symbol_1[57u].x, r1.x);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_72 = (v1.xy * cb5_5.tint_symbol_1[10u].ww);
  r1 = vec4<f32>(v_72.xy, r1.zw);
  let v_73 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_1[10u].xy);
  r1 = vec4<f32>(v_73.xy, r1.zw);
  let v_74 = fract(r1.xy);
  r1 = vec4<f32>(v_74.xy, r1.zw);
  r1.x = textureSample(t7, s7, r1.xyxx.xy).w;
  r1.x = (r1.x + -0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[10u].z);
  let v_75 = clamp(fma(r0.xyzx, r0.wwww, r1.xxxx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_75.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_76 = r0;
  o0 = vec4<f32>(v_76.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
