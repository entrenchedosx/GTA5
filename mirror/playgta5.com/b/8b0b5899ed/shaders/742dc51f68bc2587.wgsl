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

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

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
  let v_27 = min(r1.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r0.xyz, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_36 = (r0.xyz + v_35.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_37.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_38 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_40 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_41 = (cb5_5.tint_symbol_1[59u].xyz + v_40.yzw);
  r1 = vec4<f32>(r1.x, v_41.xyz);
  let v_42 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = (r0.xyz * r1.xyz);
  r3 = vec4<f32>(v_43.xyz, r3.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_44 = -(r1.wwww);
  r0.w = (r0.w + v_44.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_45 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = clamp(fma(r0.wwww, r0.xyzx, r3.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_46.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.y = (r0.x * cb5_5.tint_symbol_1[18u].z);
  r0.y = clamp(((r0.yyyy / cb5_5.tint_symbol_1[17u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_47 = -(cb5_5.tint_symbol_1[18u].xxxx);
  r0.z = fma(r0.x, cb5_5.tint_symbol_1[18u].z, v_47.z);
  r0.w = (v_47.w + cb5_5.tint_symbol_1[18u].y);
  r0.z = clamp(((r0.zzzz / r0.wwww)).z, 0.0f, 1.0f);
  r0.w = (r0.z + r0.y);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_48 = (r0.yy * cb5_5.tint_symbol_1[19u].xw);
  r1 = vec4<f32>(v_48.xy, r1.zw);
  r1.x = fma(r0.z, cb5_5.tint_symbol_1[19u].y, r1.x);
  r1.x = fma(r0.w, cb5_5.tint_symbol_1[18u].w, r1.x);
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[18u].z, r1.x);
  let v_49 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_1[10u].xy);
  r1 = vec4<f32>(r1.xy, v_49.xy);
  let v_50 = fract(r1.zw);
  r1 = vec4<f32>(r1.xy, v_50.xy);
  r1.z = textureSample(t7, s7, r1.zwzz.xy).y;
  r1.y = fma(r0.w, cb5_5.tint_symbol_1[19u].z, r1.y);
  r1.z = (r1.z + -0.5f);
  r0.x = fma(r1.z, r1.y, r0.x);
  r1.y = (r0.z * cb5_5.tint_symbol_1[20u].x);
  r1.y = (r1.y * r1.z);
  r1.y = max(r1.y, 0.0f);
  r0.x = (r0.x + r1.y);
  let v_51 = (r2.xyz * v1.zzz);
  r1 = vec4<f32>(r1.x, v_51.xyz);
  let v_52 = max(r1.yzw, vec3<f32>());
  r1 = vec4<f32>(r1.x, v_52.xyz);
  let v_53 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.yzw, cb5_5.tint_symbol_1[9u].xxx);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = fma(r1.yzw, r2.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.yzw, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = fma(r1.yzw, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r1 = vec4<f32>(r1.x, v_56.xyz);
  let v_57 = (r2.xyz / r1.yzw);
  r1 = vec4<f32>(r1.x, v_57.xyz);
  let v_58 = (r1.yzw + v_35.yzw);
  r1 = vec4<f32>(r1.x, v_58.xyz);
  let v_59 = clamp(((r1.yyzw * cb5_5.tint_symbol_1[8u].zzzz)).yzw, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(r1.x, v_59.xyz);
  r1.y = dot(r1.yzw, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = fma(r1.y, cb5_5.tint_symbol_1[18u].z, r1.x);
  r1.x = ((-(r0.zzzz)).x + r1.x);
  r1.x = max(r1.x, 0.0f);
  r0.x = fma(r1.x, cb5_5.tint_symbol_1[20u].y, r0.x);
  let v_60 = (r0.zzz * cb5_5.tint_symbol_1[23u].xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = fma(r0.yyy, cb5_5.tint_symbol_1[22u].xyz, r1.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = fma(r0.www, cb5_5.tint_symbol_1[21u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_62.xyz);
  let v_63 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_63.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_64 = r0;
  o0 = vec4<f32>(v_64.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
