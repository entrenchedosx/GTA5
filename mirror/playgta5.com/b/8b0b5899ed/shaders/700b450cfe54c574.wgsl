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

struct cb76_struct {
  tint_symbol_1 : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

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
  let v_6 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_7, v_7, v_7, v_7), cb5_5.tint_symbol_1[14u].xxxx, cb5_5.tint_symbol_1[14u].yyyy).w, 0.0f, 1.0f);
  r2 = (-(cb5_5.tint_symbol_1[10u]) + cb5_5.tint_symbol_1[12u]);
  r2 = fma(r0.wwww, r2, cb5_5.tint_symbol_1[10u]);
  let v_8 = ((-(cb5_5.tint_symbol_1[11u].zxyz)).xyz + cb5_5.tint_symbol_1[13u].zxy);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(r0.www, r3.xyz, cb5_5.tint_symbol_1[11u].zxy);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r2.ww * r3.yz);
  r4 = vec4<f32>(v_10.xy, r4.zw);
  r0.w = (r2.y * r2.z);
  r1.w = fma(r2.x, r3.x, r0.w);
  r1.w = fma(r3.x, r1.w, r4.x);
  r2.z = fma(r2.x, r3.x, r2.y);
  r2.z = fma(r3.x, r2.z, r4.y);
  r1.w = (r1.w / r2.z);
  r2.z = (r3.y / r3.z);
  let v_11 = -(r2.zzzz);
  r1.w = (r1.w + v_11.w);
  r1.w = (1.0f / r1.w);
  let v_12 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(r2.xxx, r0.xyz, r0.www);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = fma(r0.xyz, r3.xyz, r4.xxx);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.xxx, r0.xyz, r2.yyy);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = fma(r0.xyz, r5.xyz, r4.yyy);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r3.xyz / r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = ((-(r2.zzzz)).xyz + r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = clamp(((r1.wwww * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r2.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_21 = -(r2.wwww);
  let v_22 = (r0.xyz + v_21.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = fma(cb5_5.tint_symbol_1[67u].xxx, r0.xyz, r2.www);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  r3.x = clamp(((r2.wwww / cb5_5.tint_symbol_1[66u].wwww)).x, 0.0f, 1.0f);
  let v_24 = -(cb5_5.tint_symbol_1[66u].xxyz);
  let v_25 = (cb5_5.tint_symbol_1[65u].xyz + v_24.yzw);
  r3 = vec4<f32>(r3.x, v_25.xyz);
  let v_26 = fma(r3.xxx, r3.yzw, cb5_5.tint_symbol_1[66u].xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = (r0.xyz * r3.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r3.w = ((-(cb5_5.tint_symbol_1[65u].wwww)).w + 1.0f);
  let v_28 = -(r3.wwww);
  r2.w = (r2.w + v_28.w);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = max(r3.w, 0.00999999977648258209f);
  r2.w = clamp(((r2.wwww / r3.wwww)).w, 0.0f, 1.0f);
  let v_29 = fma((-(r0.xyzx)).xyz, r3.xyz, r0.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = clamp(fma(r2.wwww, r0.xyzx, r5.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_30.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.y = (r0.x * cb5_5.tint_symbol_1[24u].z);
  r0.y = clamp(((r0.yyyy / cb5_5.tint_symbol_1[23u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_31 = -(cb5_5.tint_symbol_1[24u].xxxx);
  r0.z = fma(r0.x, cb5_5.tint_symbol_1[24u].z, v_31.z);
  r2.w = (v_31.w + cb5_5.tint_symbol_1[24u].y);
  r0.z = clamp(((r0.zzzz / r2.wwww)).z, 0.0f, 1.0f);
  r2.w = (r0.z + r0.y);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  let v_32 = (r0.yy * cb5_5.tint_symbol_1[25u].xw);
  r3 = vec4<f32>(v_32.xy, r3.zw);
  r3.x = fma(r0.z, cb5_5.tint_symbol_1[25u].y, r3.x);
  r3.x = fma(r2.w, cb5_5.tint_symbol_1[24u].w, r3.x);
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[24u].z, r3.x);
  let v_33 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_1[15u].xy);
  r3 = vec4<f32>(r3.xy, v_33.xy);
  let v_34 = fract(r3.zw);
  r3 = vec4<f32>(r3.xy, v_34.xy);
  r5 = textureSample(t7, s7, r3.zwzz.xy);
  r3.y = fma(r2.w, cb5_5.tint_symbol_1[25u].z, r3.y);
  r3.z = (r5.y + -0.5f);
  r0.x = fma(r3.z, r3.y, r0.x);
  r3.y = (r0.z * cb5_5.tint_symbol_1[26u].x);
  r3.y = (r3.y * r3.z);
  r3.y = max(r3.y, 0.0f);
  r0.x = (r0.x + r3.y);
  let v_35 = (r1.xyz * v1.zzz);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = fma(r2.xxx, r1.xyz, r0.www);
  r3 = vec4<f32>(r3.x, v_37.xyz);
  let v_38 = fma(r1.xyz, r3.yzw, r4.xxx);
  r3 = vec4<f32>(r3.x, v_38.xyz);
  let v_39 = fma(r2.xxx, r1.xyz, r2.yyy);
  r4 = vec4<f32>(v_39.x, r4.y, v_39.yz);
  let v_40 = fma(r1.xyz, r4.xzw, r4.yyy);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = (r3.yzw / r1.xyz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  let v_42 = ((-(r2.zzzz)).xyz + r1.xyz);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = clamp(((r1.wwww * r1.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_43.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.w = fma(r0.w, cb5_5.tint_symbol_1[24u].z, r3.x);
  r0.w = ((-(r0.zzzz)).w + r0.w);
  r0.w = max(r0.w, 0.0f);
  r0.x = fma(r0.w, cb5_5.tint_symbol_1[26u].y, r0.x);
  let v_44 = (r0.zzz * cb5_5.tint_symbol_1[29u].xyz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = fma(r0.yyy, cb5_5.tint_symbol_1[28u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_45.xyz);
  let v_46 = fma(r2.www, cb5_5.tint_symbol_1[27u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_46.xyz);
  let v_47 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_47.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_48 = r0;
  o0 = vec4<f32>(v_48.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
