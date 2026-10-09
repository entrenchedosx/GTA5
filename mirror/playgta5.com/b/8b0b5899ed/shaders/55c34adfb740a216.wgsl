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

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

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
    r0 = vec4<f32>(v_28.xyz, r0.w);
    let v_29 = fma(r0.www, r0.xyz, r1.xyz);
    r1 = vec4<f32>(v_29.xyz, r1.w);
  }
  let v_30 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (r0.xyz * v1.www);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_32 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.www, r1.xyz);
    r1 = vec4<f32>(v_32.xyz, r1.w);
  }
  let v_33 = min(r1.xyz, vec3<f32>(65504.0f));
  r1 = vec4<f32>(v_33.xyz, r1.w);
  let v_34 = (r1.xyz * v1.zzz);
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = fma(r1.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = fma(r1.xyz, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = (r2.xyz / r1.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_42 = (r1.xyz + v_41.xyz);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = clamp(((r1.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_43.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_44 = ((-(r0.wwww)).xyz + r1.xyz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = fma(cb5_5.tint_symbol_1[61u].xxx, r1.xyz, r0.www);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  r1.w = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).w, 0.0f, 1.0f);
  let v_46 = -(cb5_5.tint_symbol_1[60u].xyzx);
  let v_47 = (cb5_5.tint_symbol_1[59u].xyz + v_46.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = fma(r1.www, r2.xyz, cb5_5.tint_symbol_1[60u].xyz);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  let v_49 = (r1.xyz * r2.xyz);
  r3 = vec4<f32>(v_49.xyz, r3.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_50 = -(r1.wwww);
  r0.w = (r0.w + v_50.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_51 = fma((-(r1.xyzx)).xyz, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_51.xyz, r1.w);
  let v_52 = clamp(fma(r0.wwww, r1.xyzx, r3.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_52.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = (r0.w * cb5_5.tint_symbol_1[18u].z);
  r1.x = clamp(((r1.xxxx / cb5_5.tint_symbol_1[17u].wwww)).x, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_53 = -(cb5_5.tint_symbol_1[18u].xxxx);
  r1.y = fma(r0.w, cb5_5.tint_symbol_1[18u].z, v_53.y);
  r1.z = (v_53.z + cb5_5.tint_symbol_1[18u].y);
  r1.y = clamp(((r1.yyyy / r1.zzzz)).y, 0.0f, 1.0f);
  r1.z = (r1.y + r1.x);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  let v_54 = (r1.xx * cb5_5.tint_symbol_1[19u].xw);
  r2 = vec4<f32>(v_54.xy, r2.zw);
  r1.w = fma(r1.y, cb5_5.tint_symbol_1[19u].y, r2.x);
  r1.w = fma(r1.z, cb5_5.tint_symbol_1[18u].w, r1.w);
  r0.w = fma(r0.w, cb5_5.tint_symbol_1[18u].z, r1.w);
  let v_55 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_1[10u].xy);
  let v_56 = r2;
  r2 = vec4<f32>(v_55.x, v_56.y, v_55.y, v_56.w);
  let v_57 = fract(r2.xz);
  let v_58 = r2;
  r2 = vec4<f32>(v_57.x, v_58.y, v_57.y, v_58.w);
  r2.x = textureSample(t7, s7, r2.xzxx.xy).y;
  r2.y = fma(r1.z, cb5_5.tint_symbol_1[19u].z, r2.y);
  r2.x = (r2.x + -0.5f);
  r0.w = fma(r2.x, r2.y, r0.w);
  r2.y = (r1.y * cb5_5.tint_symbol_1[20u].x);
  r2.x = (r2.y * r2.x);
  r2.x = max(r2.x, 0.0f);
  r0.w = (r0.w + r2.x);
  let v_59 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_63.xyz, r3.w);
  let v_64 = fma(r0.xyz, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  let v_65 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = (r0.xyz + v_41.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_67.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[18u].z, r1.w);
  r0.x = ((-(r1.yyyy)).x + r0.x);
  r0.x = max(r0.x, 0.0f);
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[20u].y, r0.w);
  let v_68 = (r1.yyy * cb5_5.tint_symbol_1[23u].xyz);
  r0 = vec4<f32>(r0.x, v_68.xyz);
  let v_69 = fma(r1.xxx, cb5_5.tint_symbol_1[22u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_69.xyz);
  let v_70 = fma(r1.zzz, cb5_5.tint_symbol_1[21u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_70.xyz);
  let v_71 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_71.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_72 = r0;
  o0 = vec4<f32>(v_72.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
