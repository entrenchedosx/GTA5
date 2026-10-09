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

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb92_struct {
  tint_symbol_1 : array<vec4<f32>, 92u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb92_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_1[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[30u].y < r0.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol_1[30u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r1 = textureSample(t6, s6, v1.xyxx.xy);
  r0.z = (r1.x * cb5_5.tint_symbol_1[33u].z);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(cb5_5.tint_symbol_1[30u].zzzz)).z + cb5_5.tint_symbol_1[30u].w);
  r0.y = fma(r0.y, r0.z, cb5_5.tint_symbol_1[30u].z);
  let v = fma(v1.xy, cb5_5.tint_symbol_1[31u].xy, cb5_5.tint_symbol_1[31u].zw);
  r0 = vec4<f32>(r0.xy, v.xy);
  let v_1 = fma(v1.xy, cb5_5.tint_symbol_1[32u].xy, cb5_5.tint_symbol_1[32u].zw);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r2 = textureSample(t13, s13, r0.zwzz.xy);
  r1 = textureSample(t13, s13, r1.xyxx.xy);
  let v_2 = (r1.xy + r2.xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = (r0.zw + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = (r0.zw * cb5_5.tint_symbol_1[33u].xy);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = fma(r0.zw, r0.yy, v1.xy);
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  let v_7 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[91u].w)));
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r2 = fma(cb5_5.tint_symbol_1[72u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), r0.yzyz);
    r3 = textureSample(t4, s4, r2.xyxx.xy);
    r4 = textureSample(t4, s4, r2.zwzz.xy);
    r5 = fma(cb5_5.tint_symbol_1[72u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), r0.yzyz);
    r6 = textureSample(t4, s4, r5.xyxx.xy);
    r7 = textureSample(t4, s4, r5.zwzz.xy);
    r8 = textureSample(t4, s4, r0.yzyy.xy);
    let v_8 = (r3.xyz + r4.xyz);
    r3 = vec4<f32>(v_8.xyz, r3.w);
    let v_9 = (r6.xyz + r3.xyz);
    r3 = vec4<f32>(v_9.xyz, r3.w);
    let v_10 = (r7.xyz + r3.xyz);
    r3 = vec4<f32>(v_10.xyz, r3.w);
    let v_11 = (r8.xyz * vec3<f32>(0.5f));
    r4 = vec4<f32>(v_11.xyz, r4.w);
    let v_12 = fma(r8.xyz, vec3<f32>(0.5f), r3.xyz);
    r3 = vec4<f32>(v_12.xyz, r3.w);
    r6 = textureSample(t9, s9, r2.xyxx.xy);
    r2 = textureSample(t9, s9, r2.zwzz.xy);
    r7 = textureSample(t9, s9, r5.xyxx.xy);
    r5 = textureSample(t9, s9, r5.zwzz.xy);
    r8 = textureSample(t9, s9, r0.yzyy.xy);
    let v_13 = (r2.xyz + r6.xyz);
    r2 = vec4<f32>(v_13.xyz, r2.w);
    let v_14 = (r7.xyz + r2.xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = (r5.xyz + r2.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = fma(r8.xyz, vec3<f32>(0.5f), r2.xyz);
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = fma(r8.xyz, vec3<f32>(0.5f), r4.xyz);
    r4 = vec4<f32>(v_17.xyz, r4.w);
    let v_18 = (r3.xyz * vec3<f32>(0.11111111193895339966f));
    r3 = vec4<f32>(v_18.xyz, r3.w);
    let v_19 = fma(r2.xyz, vec3<f32>(0.11111111193895339966f), r3.xyz);
    r2 = vec4<f32>(v_19.xyz, r2.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_1[4u].x == 0.0f))));
    let v_20 = bitcast<vec3<u32>>(r0.www);
    let v_21 = r8.xyz;
    let v_22 = select(r4.xyz, v_21, (v_20 != vec3<u32>()));
    r3 = vec4<f32>(v_22.xyz, r3.w);
    let v_23 = bitcast<vec3<u32>>(r0.www);
    let v_24 = r8.xyz;
    let v_25 = select(r2.xyz, v_24, (v_23 != vec3<u32>()));
    r2 = vec4<f32>(v_25.xyz, r2.w);
    let v_26 = -(cb5_5.tint_symbol_1[3u].xxxz);
    let v_27 = (r0.xx + v_26.xw);
    r0 = vec4<f32>(v_27.x, r0.yz, v_27.y);
    r4.x = (r0.w * cb5_5.tint_symbol_1[3u].w);
    r0.x = clamp(fma(-(r0.xxxx), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r4.x = clamp(r4.xxxx.x, 0.0f, 1.0f);
    r0.x = max(r0.x, r4.x);
    let v_28 = clamp(fma(r0.xxxx, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 0.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
    r4 = vec4<f32>(v_28.xyz, r4.w);
    r0.x = ((-(r4.xxxx)).x + 1.0f);
    r0.x = min(r0.x, r4.y);
    r0.w = (r0.x + r4.x);
    r1.w = ((-(r0.wwww)).w + 1.0f);
    r1.w = min(r1.w, r4.z);
    r0.w = (r0.w + r1.w);
    r0.w = ((-(r0.wwww)).w + 1.0f);
    let v_29 = (r0.xxx * r8.xyz);
    r4 = vec4<f32>(r4.x, v_29.xyz);
    let v_30 = fma(r1.xyz, r4.xxx, r4.yzw);
    r4 = vec4<f32>(v_30.xyz, r4.w);
    let v_31 = fma(r3.xyz, r1.www, r4.xyz);
    r3 = vec4<f32>(v_31.xyz, r3.w);
    let v_32 = fma(r2.xyz, r0.www, r3.xyz);
    r1 = vec4<f32>(v_32.xyz, r1.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_1[90u].z) != 0u)) {
    r2 = textureSample(t11, s11, r0.yzyy.xy);
    let v_33 = ((-(r1.xyzx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_33.xyz, r2.w);
    let v_34 = fma(r2.www, r2.xyz, r1.xyz);
    r1 = vec4<f32>(v_34.xyz, r1.w);
  }
  r2 = textureSample(t10, s10, r0.yzyy.xy);
  let v_35 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[75u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = textureSample(t15, s15, r0.yzyy.xy);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_36 = fma(cb5_5.tint_symbol_1[46u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_36.xyz, r1.w);
  }
  let v_37 = min(r1.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_38, v_38, v_38, v_38), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_1[10u]);
  let v_39 = ((-(cb5_5.tint_symbol_1[11u].zxyz)).xyz + cb5_5.tint_symbol_1[13u].zxy);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = fma(r0.www, r3.xyz, cb5_5.tint_symbol_1[11u].zxy);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = (r1.ww * r3.yz);
  r4 = vec4<f32>(v_41.xy, r4.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r3.x, r0.w);
  r1.z = fma(r3.x, r1.z, r4.x);
  r1.w = fma(r1.x, r3.x, r1.y);
  r1.w = fma(r3.x, r1.w, r4.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r3.y / r3.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_42 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = fma(r1.xxx, r0.xyz, r0.www);
  r3 = vec4<f32>(v_44.xyz, r3.w);
  let v_45 = fma(r0.xyz, r3.xyz, r4.xxx);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = fma(r1.xxx, r0.xyz, r1.yyy);
  r5 = vec4<f32>(v_46.xyz, r5.w);
  let v_47 = fma(r0.xyz, r5.xyz, r4.yyy);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  let v_48 = (r3.xyz / r0.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_50.xyz, r0.w);
  r2.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_51 = -(r2.wwww);
  let v_52 = (r0.xyz + v_51.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r2.www);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  r3.x = clamp(((r2.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_54 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_55 = (cb5_5.tint_symbol_1[65u].xyz + v_54.yzw);
  r3 = vec4<f32>(r3.x, v_55.xyz);
  let v_56 = fma(r3.xxx, r3.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r3 = vec4<f32>(v_56.xyz, r3.w);
  let v_57 = (r0.xyz * r3.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  r3.w = ((-(cb5_5.tint_symbol_1[65u].wwww)).w + 1.0f);
  let v_58 = -(r3.wwww);
  r2.w = (r2.w + v_58.w);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = max(r3.w, 0.00999999977648258209f);
  r2.w = clamp(((r2.wwww / r3.wwww)).w, 0.0f, 1.0f);
  let v_59 = fma((-(r0.xyzx)).xyz, r3.xyz, r0.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = clamp(fma(r2.wwww, r0.xyzx, r5.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_60.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.y = (r0.x * cb5_5.tint_symbol_1[24u].z);
  r0.y = clamp(((r0.yyyy / cb5_5.tint_symbol_1[23u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_61 = -(cb5_5.tint_symbol_1[24u].xxxx);
  r0.z = fma(r0.x, cb5_5.tint_symbol_1[24u].z, v_61.z);
  r2.w = (v_61.w + cb5_5.tint_symbol_1[24u].y);
  r0.z = clamp(((r0.zzzz / r2.wwww)).z, 0.0f, 1.0f);
  r2.w = (r0.z + r0.y);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  let v_62 = (r0.yy * cb5_5.tint_symbol_1[25u].xw);
  r3 = vec4<f32>(v_62.xy, r3.zw);
  r3.x = fma(r0.z, cb5_5.tint_symbol_1[25u].y, r3.x);
  r3.x = fma(r2.w, cb5_5.tint_symbol_1[24u].w, r3.x);
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[24u].z, r3.x);
  let v_63 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_1[15u].xy);
  r3 = vec4<f32>(r3.xy, v_63.xy);
  let v_64 = fract(r3.zw);
  r3 = vec4<f32>(r3.xy, v_64.xy);
  r5 = textureSample(t7, s7, r3.zwzz.xy);
  r3.y = fma(r2.w, cb5_5.tint_symbol_1[25u].z, r3.y);
  r3.z = (r5.y + -0.5f);
  r0.x = fma(r3.z, r3.y, r0.x);
  r3.y = (r0.z * cb5_5.tint_symbol_1[26u].x);
  r3.y = (r3.y * r3.z);
  r3.y = max(r3.y, 0.0f);
  r0.x = (r0.x + r3.y);
  let v_65 = (r2.xyz * v1.zzz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = max(r2.xyz, vec3<f32>());
  r2 = vec4<f32>(v_66.xyz, r2.w);
  let v_67 = fma(r1.xxx, r2.xyz, r0.www);
  r3 = vec4<f32>(r3.x, v_67.xyz);
  let v_68 = fma(r2.xyz, r3.yzw, r4.xxx);
  r3 = vec4<f32>(r3.x, v_68.xyz);
  let v_69 = fma(r1.xxx, r2.xyz, r1.yyy);
  r4 = vec4<f32>(v_69.x, r4.y, v_69.yz);
  let v_70 = fma(r2.xyz, r4.xzw, r4.yyy);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = (r3.yzw / r2.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = ((-(r1.wwww)).xyw + r2.xyz);
  r1 = vec4<f32>(v_72.xy, r1.z, v_72.z);
  let v_73 = clamp(((r1.zzzz * r1.xywx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_73.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.w = fma(r0.w, cb5_5.tint_symbol_1[24u].z, r3.x);
  r0.w = ((-(r0.zzzz)).w + r0.w);
  r0.w = max(r0.w, 0.0f);
  r0.x = fma(r0.w, cb5_5.tint_symbol_1[26u].y, r0.x);
  let v_74 = (r0.zzz * cb5_5.tint_symbol_1[29u].xyz);
  r1 = vec4<f32>(v_74.xyz, r1.w);
  let v_75 = fma(r0.yyy, cb5_5.tint_symbol_1[28u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_75.xyz);
  let v_76 = fma(r2.www, cb5_5.tint_symbol_1[27u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_76.xyz);
  let v_77 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_77.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_78 = r0;
  o0 = vec4<f32>(v_78.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
