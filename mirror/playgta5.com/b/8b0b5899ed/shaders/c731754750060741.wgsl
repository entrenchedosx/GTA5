diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb21_struct {
  tint_symbol_2 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = (cb12_12.tint_symbol_2[17u].w + 1.0f);
  let v = r0;
  r0 = vec4<f32>(v.x, ((v2.xy / v2.ww)).xy, v.w);
  r1 = textureSample(t4, s4, r0.yzyy.xy);
  let v_1 = fma(r0.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r2 = vec4<f32>(v_1.xy, r2.zw);
  let v_2 = -(r1.xxxx);
  r0.x = (r0.x + v_2.x);
  r0.x = (cb12_12.tint_symbol_2[17u].z / r0.x);
  r2.z = 1.0f;
  r1.x = dot(r2.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r1.y = dot(r2.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r1.z = dot(r2.xyz, cb12_12.tint_symbol_2[20u].xyz);
  let v_3 = fma(r1.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.x = dot(r1.xyz, r1.xyz);
  let v_5 = -(cb1_1.tint_symbol[15u].xyzx);
  r1 = vec4<f32>(((v1.xyz + v_5.xyz)).xyz, r1.w);
  let v_6 = (r1.xyz * v3.xyz.yyy);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.w)));
  r1.w = (r0.x / r1.w);
  let v_7 = bitcast<u32>(r2.x);
  r1.w = select(r1.w, 1.0f, (v_7 != 0u));
  let v_8 = fma(r1.xyz, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_8.xyz);
  let v_9 = bitcast<vec3<u32>>(r2.xxx);
  let v_10 = r2.yzw;
  let v_11 = select(r0.yzw, v_10, (v_9 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_11.xyz);
  let v_12 = fma(r1.xyz, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r1.xyz * v3.xyz.xxx);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  let v_14 = -(r2.xxyz);
  let v_15 = (r0.yzw + v_14.yzw);
  r0 = vec4<f32>(r0.x, v_15.xyz);
  let v_16 = fma(r0.yzw, vec3<f32>(0.125f), r2.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r1.y = dot(r2.xyz, r2.xyz);
  r1.y = clamp(fma(-(r1.yyyy), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  let v_18 = (r3.xyz + v_5.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r1.z = dot(r2.xyz, r2.xyz);
  let v_19 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xx >= r1.xz)));
  let v_20 = r1;
  r1 = vec4<f32>(v_19.x, v_20.y, v_19.y, v_20.w);
  let v_21 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = clamp(fma(-(r2.xxxx), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r2.y = ((-(cb12_12.tint_symbol_2[7u].xxxx)).y + 1.0f);
  r2.z = fma(r2.y, r2.x, cb12_12.tint_symbol_2[7u].x);
  r2.x = (r2.x / r2.z);
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.x)));
  r2.x = fma(r2.y, r1.y, cb12_12.tint_symbol_2[7u].x);
  r1.y = (r1.y / r2.x);
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.x = (r1.z + r1.x);
  let v_23 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_24 = (r3.xyz + v_23.xzw);
  r2 = vec4<f32>(v_24.x, r2.y, v_24.yz);
  r1.y = dot(r2.xzw, r2.xzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.y)));
  let v_25 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_25.x, r2.y, v_25.yz);
  let v_26 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r1.z = dot(r2.xzw, r2.xzw);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r2.x = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r2.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.x = (r1.y + r1.x);
  let v_27 = (r3.xyz + v_23.xzw);
  r2 = vec4<f32>(v_27.x, r2.y, v_27.yz);
  r1.y = dot(r2.xzw, r2.xzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.y)));
  let v_28 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_28.x, r2.y, v_28.yz);
  let v_29 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r1.z = dot(r2.xzw, r2.xzw);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r2.x = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r2.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.x = (r1.y + r1.x);
  let v_30 = (r3.xyz + v_23.xzw);
  r2 = vec4<f32>(v_30.x, r2.y, v_30.yz);
  r1.y = dot(r2.xzw, r2.xzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.y)));
  let v_31 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_31.x, r2.y, v_31.yz);
  let v_32 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  r1.z = dot(r2.xzw, r2.xzw);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r2.x = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r2.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.x = (r1.y + r1.x);
  let v_33 = (r3.xyz + v_23.xzw);
  r2 = vec4<f32>(v_33.x, r2.y, v_33.yz);
  r1.y = dot(r2.xzw, r2.xzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.y)));
  let v_34 = ((-(r3.xxyz)).xzw + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_34.x, r2.y, v_34.yz);
  let v_35 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  let v_36 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r0 = vec4<f32>(r0.x, v_36.xyz);
  r1.z = dot(r2.xzw, r2.xzw);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r2.x = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r2.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.x = (r1.y + r1.x);
  let v_37 = (r3.xyz + v_23.xzw);
  r2 = vec4<f32>(v_37.x, r2.y, v_37.yz);
  let v_38 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = clamp(fma(-(r1.yyyy), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r1.z = dot(r2.xzw, r2.xzw);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.z)));
  r2.x = fma(r2.y, r1.y, cb12_12.tint_symbol_2[7u].x);
  r1.y = (r1.y / r2.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
  r1.x = (r1.y + r1.x);
  let v_39 = (r0.yzw + v_23.xzw);
  r2 = vec4<f32>(v_39.x, r2.y, v_39.yz);
  let v_40 = ((-(r0.yyzw)).yzw + cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(r0.x, v_40.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = clamp(fma(-(r0.yyyy), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.z = dot(r2.xzw, r2.xzw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r0.z)));
  r0.z = fma(r2.y, r0.y, cb12_12.tint_symbol_2[7u].x);
  r0.y = (r0.y / r0.z);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  r0.x = (r0.x + r1.x);
  r0.x = (r1.w * r0.x);
  r0.x = (r0.x * 0.125f);
  r0 = vec4<f32>(r0.x, ((v2.zzz * v4.xyz)).xyz);
  let v_41 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  let v_42 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_42.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
