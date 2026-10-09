diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb86_struct {
  tint_symbol_1 : array<vec4<f32>, 86u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb86_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

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
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x + cb5_5.tint_symbol_1[0u].w);
  r0.y = (cb5_5.tint_symbol_1[0u].z / r0.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_4 = -(cb5_5.tint_symbol_1[2u].xxxx);
  r0.z = (r0.y + v_4.z);
  r0.z = clamp(((r0.zzzz * cb5_5.tint_symbol_1[2u].yyyy)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_1[2u].z);
  r0.x = (r0.x * r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[24u].y < r0.y)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < cb5_5.tint_symbol_1[24u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.z = textureSample(t6, s6, v1.xyxx.xy).x;
  r0.z = (r0.z * cb5_5.tint_symbol_1[27u].z);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(cb5_5.tint_symbol_1[24u].zzzz)).z + cb5_5.tint_symbol_1[24u].w);
  r0.y = fma(r0.y, r0.z, cb5_5.tint_symbol_1[24u].z);
  let v_5 = fma(v1.xy, cb5_5.tint_symbol_1[25u].xy, cb5_5.tint_symbol_1[25u].zw);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = fma(v1.xy, cb5_5.tint_symbol_1[26u].xy, cb5_5.tint_symbol_1[26u].zw);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = textureSample(t13, s13, r0.zwzz.xy).xy;
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = textureSample(t13, s13, r1.xyxx.xy).xy;
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r0.zw + r1.xy);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = (r0.zw + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = (r0.zw * cb5_5.tint_symbol_1[27u].xy);
  r0 = vec4<f32>(r0.xy, v_11.xy);
  let v_12 = fma(r0.zw, r0.yy, v1.xy);
  r0 = vec4<f32>(r0.xy, v_12.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[85u].w)));
  let v_13 = bitcast<vec2<u32>>(r1.xx);
  let v_14 = select(v1.xy, r0.zw, (v_13 != vec2<u32>()));
  r0 = vec4<f32>(r0.xy, v_14.xy);
  let v_15 = (r0.zw * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = r1.xy;
  let v_17 = max(v_16, vec2<f32>(-2147483648.0f));
  let v_18 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_17), vec2<i32>(2147483647i), (v_17 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_16 == v_16))));
  r1 = vec4<f32>(v_18.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  let v_19 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v2)).xyz;
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = (r1.xyz * cb2_2.tint_symbol[17u].www);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.x = clamp(max(r0.yyyy, r0.xxxx).x, 0.0f, 1.0f);
  let v_21 = textureSample(t9, s9, r0.zwzz.xy).xyz;
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = fma((-(r1.xyzx)).xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = fma(r0.xxx, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = textureSample(t10, s10, r0.zwzz.xy).xyz;
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = textureSample(t15, s15, r0.zwzz.xy).x;
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_26 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_26.xyz, r1.w);
  }
  let v_27 = (r2.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[51u].zzzz)).w, 0.0f, 1.0f);
  let v_29 = ((-(cb5_5.tint_symbol_1[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[52u].xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_32.xyz, r0.w);
  let v_33 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_35.xyz, r1.w);
  let v_36 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_41 = (r0.xyz + v_40.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_43 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_45 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_46 = (cb5_5.tint_symbol_1[59u].xyz + v_45.yzw);
  r1 = vec4<f32>(r1.x, v_46.xyz);
  let v_47 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_49 = -(r1.wwww);
  r0.w = (r0.w + v_49.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_50 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = log2(r0.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  let v_53 = (r0.xyz * cb5_5.tint_symbol_1[61u].yyy);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = exp2(r0.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_55.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_56 = r0;
  o0 = vec4<f32>(v_56.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
