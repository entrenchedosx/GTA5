diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb76_struct {
  tint_symbol_1 : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x + cb5_5.tint_symbol_1[0u].w);
  r0.y = (cb5_5.tint_symbol_1[0u].z / r0.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v = -(cb5_5.tint_symbol_1[2u].xxxx);
  r0.z = (r0.y + v.z);
  r0.z = clamp(((r0.zzzz * cb5_5.tint_symbol_1[2u].yyyy)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_1[2u].z);
  r0.x = (r0.x * r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[30u].y < r0.y)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < cb5_5.tint_symbol_1[30u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r1 = textureSample(t6, s6, v1.xyxx.xy);
  r0.z = (r1.x * cb5_5.tint_symbol_1[33u].z);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(cb5_5.tint_symbol_1[30u].zzzz)).z + cb5_5.tint_symbol_1[30u].w);
  r0.y = fma(r0.y, r0.z, cb5_5.tint_symbol_1[30u].z);
  let v_1 = fma(v1.xy, cb5_5.tint_symbol_1[31u].xy, cb5_5.tint_symbol_1[31u].zw);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = fma(v1.xy, cb5_5.tint_symbol_1[32u].xy, cb5_5.tint_symbol_1[32u].zw);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r2 = textureSample(t13, s13, r0.zwzz.xy);
  r1 = textureSample(t13, s13, r1.xyxx.xy);
  let v_3 = (r1.xy + r2.xy);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = (r0.zw + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * cb5_5.tint_symbol_1[33u].xy);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = fma(r0.zw, r0.yy, v1.xy);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r1 = textureSample(t5, s5, r0.zwzz.xy);
  let v_7 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.x = clamp(max(r0.yyyy, r0.xxxx).x, 0.0f, 1.0f);
  r3 = textureSample(t9, s9, r0.zwzz.xy);
  let v_8 = fma((-(r1.xyzx)).xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.xxx, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r2 = textureSample(t10, s10, r0.zwzz.xy);
  let v_10 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[75u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = textureSample(t15, s15, r0.zwzz.xy);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_11 = fma(cb5_5.tint_symbol_1[46u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_11.xyz, r1.w);
  }
  let v_12 = (r2.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[57u].zzzz)).w, 0.0f, 1.0f);
  let v_14 = ((-(cb5_5.tint_symbol_1[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_18, v_18, v_18, v_18), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_1[10u]);
  let v_19 = ((-(cb5_5.tint_symbol_1[11u].zxyz)).xyz + cb5_5.tint_symbol_1[13u].zxy);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_1[11u].zxy);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_22 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_26.x, r3.y, v_26.yz);
  let v_27 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_31 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_33 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_34 = (cb5_5.tint_symbol_1[65u].xyz + v_33.yzw);
  r1 = vec4<f32>(r1.x, v_34.xyz);
  let v_35 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[65u].wwww)).w + 1.0f);
  let v_37 = -(r1.wwww);
  r0.w = (r0.w + v_37.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_38 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = log2(r0.xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  let v_41 = (r0.xyz * cb5_5.tint_symbol_1[67u].yyy);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = exp2(r0.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = (v1.xy * cb5_5.tint_symbol_1[15u].ww);
  r1 = vec4<f32>(v_43.xy, r1.zw);
  let v_44 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_1[15u].xy);
  r1 = vec4<f32>(v_44.xy, r1.zw);
  let v_45 = fract(r1.xy);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  r0.w = (r1.w + -0.5f);
  let v_46 = clamp(fma(r0.wwww, cb5_5.tint_symbol_1[15u].zzzz, r0.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_46.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_47 = r0;
  o0 = vec4<f32>(v_47.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
