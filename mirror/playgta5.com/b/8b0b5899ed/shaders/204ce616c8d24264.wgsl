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
  let v_37 = (r2.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[57u].zzzz)).w, 0.0f, 1.0f);
  let v_39 = ((-(cb5_5.tint_symbol_1[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_43, v_43, v_43, v_43), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_1[10u]);
  let v_44 = ((-(cb5_5.tint_symbol_1[11u].zxyz)).xyz + cb5_5.tint_symbol_1[13u].zxy);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_1[11u].zxy);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_46.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_47 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  let v_48 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_48.xyz, r0.w);
  let v_49 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_49.xyz, r2.w);
  let v_50 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_50.xyz, r2.w);
  let v_51 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_51.x, r3.y, v_51.yz);
  let v_52 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_55.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_56 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_56.xyz, r0.w);
  let v_57 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_58 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_59 = (cb5_5.tint_symbol_1[65u].xyz + v_58.yzw);
  r1 = vec4<f32>(r1.x, v_59.xyz);
  let v_60 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[65u].wwww)).w + 1.0f);
  let v_62 = -(r1.wwww);
  r0.w = (r0.w + v_62.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_63 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  let v_64 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_64.xyz, r0.w);
  let v_65 = log2(r0.xyz);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = (r0.xyz * cb5_5.tint_symbol_1[67u].yyy);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = exp2(r0.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = (v1.xy * cb5_5.tint_symbol_1[15u].ww);
  r1 = vec4<f32>(v_68.xy, r1.zw);
  let v_69 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_1[15u].xy);
  r1 = vec4<f32>(v_69.xy, r1.zw);
  let v_70 = fract(r1.xy);
  r1 = vec4<f32>(v_70.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  r0.w = (r1.w + -0.5f);
  let v_71 = clamp(fma(r0.wwww, cb5_5.tint_symbol_1[15u].zzzz, r0.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_71.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_72 = r0;
  o0 = vec4<f32>(v_72.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
