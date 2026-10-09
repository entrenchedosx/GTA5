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

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

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
  r0.y = (r0.y + v.y);
  r0.y = clamp(((r0.yyyy * cb5_5.tint_symbol_1[2u].yyyy)).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_1[2u].z);
  r0.x = clamp(((r0.xxxx * r0.yyyy)).x, 0.0f, 1.0f);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_1 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  r2 = textureSample(t9, s9, v1.xyxx.xy);
  let v_2 = fma((-(r1.xyzx)).xyz, cb2_2.tint_symbol[17u].www, r2.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = textureSample(t10, s10, v1.xyxx.xy);
  let v_4 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[75u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSample(t15, s15, v1.xyxx.xy);
    r0.w = (r2.x * r2.x);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_5 = fma(cb5_5.tint_symbol_1[46u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_5.xyz, r0.w);
  }
  r2 = textureSample(t13, s13, v1.xyxx.xy);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_1[34u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[34u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_1[34u].zzzz)).w + cb5_5.tint_symbol_1[34u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_1[34u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_1[35u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[36u].w);
  let v_6 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r1.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[57u].zzzz)).w, 0.0f, 1.0f);
  let v_9 = ((-(cb5_5.tint_symbol_1[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_13, v_13, v_13, v_13), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_1[10u]);
  let v_14 = ((-(cb5_5.tint_symbol_1[11u].zxyz)).xyz + cb5_5.tint_symbol_1[13u].zxy);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_1[11u].zxy);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_16.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_17 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_21.x, r3.y, v_21.yz);
  let v_22 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_26 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_28 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_29 = (cb5_5.tint_symbol_1[65u].xyz + v_28.yzw);
  r1 = vec4<f32>(r1.x, v_29.xyz);
  let v_30 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[65u].wwww)).w + 1.0f);
  let v_32 = -(r1.wwww);
  r0.w = (r0.w + v_32.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_33 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = log2(r0.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = (r0.xyz * cb5_5.tint_symbol_1[67u].yyy);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = exp2(r0.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_38.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_39 = r0;
  o0 = vec4<f32>(v_39.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
