diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v = (r0.xyz * cb2_2.tint_symbol[17u].www);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[91u].w)));
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r1 = textureSample(t3, s3, v1.xyxx.xy);
    r0.w = ((-(r1.xxxx)).w + cb5_5.tint_symbol_1[0u].w);
    r0.w = (r0.w + 1.0f);
    r0.w = (cb5_5.tint_symbol_1[0u].z / r0.w);
    r1 = textureSample(t9, s9, v1.xyxx.xy);
    r2 = textureSample(t4, s4, v1.xyxx.xy);
    r3 = textureSample(t14, s14, v1.xyxx.xy);
    let v_1 = (r2.xyz * vec3<f32>(0.69999998807907104492f));
    r4 = vec4<f32>(v_1.xyz, r4.w);
    let v_2 = fma(r1.xyz, vec3<f32>(0.30000001192092895508f), r4.xyz);
    r4 = vec4<f32>(v_2.xyz, r4.w);
    let v_3 = (r3.xyz * vec3<f32>(0.5f));
    r3 = vec4<f32>(v_3.xyz, r3.w);
    let v_4 = fma(r2.xyz, vec3<f32>(0.5f), r3.xyz);
    r2 = vec4<f32>(v_4.xyz, r2.w);
    let v_5 = -(cb5_5.tint_symbol_1[3u].xzxx);
    let v_6 = (r0.ww + v_5.xy);
    r3 = vec4<f32>(v_6.xy, r3.zw);
    r5.x = (r3.y * cb5_5.tint_symbol_1[3u].w);
    r0.w = clamp(fma(-(r3.xxxx), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
    r0.w = max(r0.w, r5.x);
    let v_7 = clamp(fma(r0.wwww, vec4<f32>(-500.0f, -0.50658559799194335938f, -100.0f, 0.0f), vec4<f32>(1.0f, 0.50151973962783813477f, 100.0f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
    r3 = vec4<f32>(v_7.xyz, r3.w);
    r0.w = ((-(r3.xxxx)).w + 1.0f);
    r0.w = min(r0.w, r3.y);
    r1.w = (r0.w + r3.x);
    r2.w = ((-(r1.wwww)).w + 1.0f);
    r2.w = min(r2.w, r3.z);
    r1.w = (r1.w + r2.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_8 = (r0.www * r1.xyz);
    r1 = vec4<f32>(v_8.xyz, r1.w);
    let v_9 = fma(r0.xyz, r3.xxx, r1.xyz);
    r1 = vec4<f32>(v_9.xyz, r1.w);
    let v_10 = fma(r4.xyz, r2.www, r1.xyz);
    r1 = vec4<f32>(v_10.xyz, r1.w);
    let v_11 = fma(r2.xyz, r1.www, r1.xyz);
    r0 = vec4<f32>(v_11.xyz, r0.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_1[90u].z) != 0u)) {
    r1 = textureSample(t11, s11, v1.xyxx.xy);
    let v_12 = ((-(r0.xyzx)).xyz + r1.xyz);
    r1 = vec4<f32>(v_12.xyz, r1.w);
    let v_13 = fma(r1.www, r1.xyz, r0.xyz);
    r0 = vec4<f32>(v_13.xyz, r0.w);
  }
  r1 = textureSample(t10, s10, v1.xyxx.xy);
  let v_14 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[75u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSample(t15, s15, v1.xyxx.xy);
    r0.w = (r2.x * r2.x);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_15 = fma(cb5_5.tint_symbol_1[46u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_15.xyz, r0.w);
  }
  r2 = textureSample(t13, s13, v1.xyxx.xy);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_1[34u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[34u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_1[34u].zzzz)).w + cb5_5.tint_symbol_1[34u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_1[34u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_1[35u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[36u].w);
  let v_16 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r1.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[57u].zzzz)).w, 0.0f, 1.0f);
  let v_19 = ((-(cb5_5.tint_symbol_1[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_23, v_23, v_23, v_23), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_1[10u]);
  let v_24 = ((-(cb5_5.tint_symbol_1[11u].zxyz)).xyz + cb5_5.tint_symbol_1[13u].zxy);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_1[11u].zxy);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_26.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_27 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_30.xyz, r2.w);
  let v_31 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_31.x, r3.y, v_31.yz);
  let v_32 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_35.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_36 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_38 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_39 = (cb5_5.tint_symbol_1[65u].xyz + v_38.yzw);
  r1 = vec4<f32>(r1.x, v_39.xyz);
  let v_40 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[65u].wwww)).w + 1.0f);
  let v_42 = -(r1.wwww);
  r0.w = (r0.w + v_42.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_43 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = log2(r0.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = (r0.xyz * cb5_5.tint_symbol_1[67u].yyy);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  let v_47 = exp2(r0.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  let v_48 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_48.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_49 = r0;
  o0 = vec4<f32>(v_49.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
