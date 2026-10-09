diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

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
  let v_10 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_12 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_12.xyz, r0.w);
  }
  let v_13 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r0.xyz, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_22 = (r0.xyz + v_21.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_23.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_24 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r1.w = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).w, 0.0f, 1.0f);
  let v_26 = -(cb5_5.tint_symbol_1[60u].xyzx);
  let v_27 = (cb5_5.tint_symbol_1[59u].xyz + v_26.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = fma(r1.www, r2.xyz, cb5_5.tint_symbol_1[60u].xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = (r0.xyz * r2.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_30 = -(r1.wwww);
  r0.w = (r0.w + v_30.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_31 = fma((-(r0.xyzx)).xyz, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = clamp(fma(r0.wwww, r0.xyzx, r3.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_32.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.y = (r0.x * cb5_5.tint_symbol_1[18u].z);
  r0.y = clamp(((r0.yyyy / cb5_5.tint_symbol_1[17u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_33 = -(cb5_5.tint_symbol_1[18u].xxxx);
  r0.z = fma(r0.x, cb5_5.tint_symbol_1[18u].z, v_33.z);
  r0.w = (v_33.w + cb5_5.tint_symbol_1[18u].y);
  r0.z = clamp(((r0.zzzz / r0.wwww)).z, 0.0f, 1.0f);
  r0.w = (r0.z + r0.y);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_34 = (r0.yy * cb5_5.tint_symbol_1[19u].xw);
  r2 = vec4<f32>(v_34.xy, r2.zw);
  r1.w = fma(r0.z, cb5_5.tint_symbol_1[19u].y, r2.x);
  r1.w = fma(r0.w, cb5_5.tint_symbol_1[18u].w, r1.w);
  r0.x = fma(r0.x, cb5_5.tint_symbol_1[18u].z, r1.w);
  let v_35 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_1[10u].xy);
  let v_36 = r2;
  r2 = vec4<f32>(v_35.x, v_36.y, v_35.y, v_36.w);
  let v_37 = fract(r2.xz);
  let v_38 = r2;
  r2 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  r2.x = textureSample(t7, s7, r2.xzxx.xy).y;
  r2.y = fma(r0.w, cb5_5.tint_symbol_1[19u].z, r2.y);
  r2.x = (r2.x + -0.5f);
  r0.x = fma(r2.x, r2.y, r0.x);
  r2.y = (r0.z * cb5_5.tint_symbol_1[20u].x);
  r2.x = (r2.y * r2.x);
  r2.x = max(r2.x, 0.0f);
  r0.x = (r0.x + r2.x);
  let v_39 = (r1.xyz * v1.zzz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_40.xyz, r1.w);
  let v_41 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = fma(r1.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = fma(cb5_5.tint_symbol_1[8u].xxx, r1.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r3 = vec4<f32>(v_43.xyz, r3.w);
  let v_44 = fma(r1.xyz, r3.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = (r2.xyz / r1.xyz);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = (r1.xyz + v_21.xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = clamp(((r1.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_47.xyz, r1.w);
  r1.x = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = fma(r1.x, cb5_5.tint_symbol_1[18u].z, r1.w);
  r1.x = ((-(r0.zzzz)).x + r1.x);
  r1.x = max(r1.x, 0.0f);
  r0.x = fma(r1.x, cb5_5.tint_symbol_1[20u].y, r0.x);
  let v_48 = (r0.zzz * cb5_5.tint_symbol_1[23u].xyz);
  r1 = vec4<f32>(v_48.xyz, r1.w);
  let v_49 = fma(r0.yyy, cb5_5.tint_symbol_1[22u].xyz, r1.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  let v_50 = fma(r0.www, cb5_5.tint_symbol_1[21u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_50.xyz);
  let v_51 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_51.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_52 = r0;
  o0 = vec4<f32>(v_52.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
