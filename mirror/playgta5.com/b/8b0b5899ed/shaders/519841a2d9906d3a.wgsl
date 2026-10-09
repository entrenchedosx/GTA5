diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb70_struct {
  tint_symbol_1 : array<vec4<f32>, 70u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb70_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

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
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).x;
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = (r1.x + cb5_5.tint_symbol_1[0u].w);
  r1.y = (cb5_5.tint_symbol_1[0u].z / r1.y);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_4 = -(cb5_5.tint_symbol_1[2u].xxxx);
  r1.y = (r1.y + v_4.y);
  r1.y = clamp(((r1.yyyy * cb5_5.tint_symbol_1[2u].yyyy)).y, 0.0f, 1.0f);
  r1.y = (r1.y * cb5_5.tint_symbol_1[2u].z);
  r1.x = clamp(((r1.xxxx * r1.yyyy)).x, 0.0f, 1.0f);
  let v_5 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).xyz;
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  let v_7 = textureSample(t9, s9, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma((-(r0.xyzx)).xyz, cb2_2.tint_symbol[17u].www, r2.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r1.xxx, r0.xyz, r1.yzw);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = textureSample(t14, s14, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(cb5_5.tint_symbol_1[58u].xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_15 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_15.xyz, r0.w);
  }
  let v_16 = textureSample(t13, s13, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_1[28u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[28u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_1[28u].zzzz)).w + cb5_5.tint_symbol_1[28u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_1[28u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_1[29u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[30u].w);
  let v_17 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r1.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[51u].zzzz)).w, 0.0f, 1.0f);
  let v_20 = ((-(cb5_5.tint_symbol_1[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[52u].xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  let v_22 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_32 = (r0.xyz + v_31.xyz);
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_33.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_34 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_36 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_37 = (cb5_5.tint_symbol_1[59u].xyz + v_36.yzw);
  r1 = vec4<f32>(r1.x, v_37.xyz);
  let v_38 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  let v_39 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_40 = -(r1.wwww);
  r0.w = (r0.w + v_40.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_41 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = log2(r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = (r0.xyz * cb5_5.tint_symbol_1[61u].yyy);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = exp2(r0.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
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
  let v_46 = (v1.xy * cb5_5.tint_symbol_1[10u].ww);
  r1 = vec4<f32>(v_46.xy, r1.zw);
  let v_47 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_1[10u].xy);
  r1 = vec4<f32>(v_47.xy, r1.zw);
  let v_48 = fract(r1.xy);
  r1 = vec4<f32>(v_48.xy, r1.zw);
  r1.x = textureSample(t7, s7, r1.xyxx.xy).w;
  r1.x = (r1.x + -0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[10u].z);
  let v_49 = clamp(fma(r0.xyzx, r0.wwww, r1.xxxx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_49.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_50 = r0;
  o0 = vec4<f32>(v_50.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
