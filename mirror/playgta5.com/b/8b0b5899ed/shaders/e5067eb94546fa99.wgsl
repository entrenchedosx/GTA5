diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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
  r0.w = 1.0f;
  r1.x = (cb12_12.tint_symbol_2[17u].w + 1.0f);
  let v = r1;
  r1 = vec4<f32>(v.x, ((v2.xy / v2.ww)).xy, v.w);
  r2 = textureSample(t4, s4, r1.yzyy.xy);
  let v_1 = fma(r1.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_1.xy, r3.zw);
  let v_2 = -(r2.xxxx);
  r1.x = (r1.x + v_2.x);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  r3.z = 1.0f;
  r2.x = dot(r3.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r2.y = dot(r3.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r2.z = dot(r3.xyz, cb12_12.tint_symbol_2[20u].xyz);
  let v_3 = fma(r2.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = (r1.xxx * r2.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r1.x = dot(r2.xyz, r2.xyz);
  let v_5 = -(cb1_1.tint_symbol[15u].xyzx);
  r2 = vec4<f32>(((v1.xyz + v_5.xyz)).xyz, r2.w);
  let v_6 = (r2.xyz * v3.xyz.yyy);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r2.w = (r1.x / r2.w);
  let v_7 = bitcast<u32>(r3.x);
  r2.w = select(r2.w, 1.0f, (v_7 != 0u));
  let v_8 = fma(r2.xyz, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(r3.x, v_8.xyz);
  let v_9 = bitcast<vec3<u32>>(r3.xxx);
  let v_10 = r3.yzw;
  let v_11 = select(r1.yzw, v_10, (v_9 != vec3<u32>()));
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = fma(r2.xyz, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = (r2.xyz * v3.xyz.xxx);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.x)));
  let v_14 = -(r3.xxyz);
  let v_15 = (r1.yzw + v_14.yzw);
  r1 = vec4<f32>(r1.x, v_15.xyz);
  let v_16 = fma(r1.yzw, vec3<f32>(0.125f), r3.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = dot(r0, cb12_12.tint_symbol_2[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_17 = ((-(r0.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  r2.y = dot(r4.xyz, r4.xyz);
  r2.y = clamp(fma(-(r2.yyyy), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = ((-(cb12_12.tint_symbol_2[7u].xxxx)).z + 1.0f);
  r4.x = fma(r2.z, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r4.x);
  r0.w = (r0.w * r2.y);
  let v_18 = (r0.xyz + v_5.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = fma(r1.yzw, vec3<f32>(0.125f), r0.xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
  r3.w = 1.0f;
  r0.y = dot(r3, cb12_12.tint_symbol_2[6u]);
  let v_20 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.w = fma(r2.z, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  r0.y = (r0.y * r0.z);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r2.x)));
  r0.x = (r0.x + r0.y);
  let v_21 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_22 = (r5.xyz + v_21.yzw);
  r0 = vec4<f32>(r0.x, v_22.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.y)));
  r5.w = 1.0f;
  r0.z = dot(r5, cb12_12.tint_symbol_2[6u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_23 = ((-(r5.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma(r1.yzw, vec3<f32>(0.125f), r5.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.x = fma(r2.z, r0.w, cb12_12.tint_symbol_2[7u].x);
  r0.w = (r0.w / r2.x);
  r0.z = (r0.z * r0.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.x = (r0.y + r0.x);
  let v_25 = (r4.xyz + v_21.yzw);
  r0 = vec4<f32>(r0.x, v_25.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.y)));
  r4.w = 1.0f;
  r0.z = dot(r4, cb12_12.tint_symbol_2[6u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_26 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = fma(r1.yzw, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.x = fma(r2.z, r0.w, cb12_12.tint_symbol_2[7u].x);
  r0.w = (r0.w / r2.x);
  r0.z = (r0.z * r0.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.x = (r0.y + r0.x);
  r4.w = 1.0f;
  r0.y = dot(r4, cb12_12.tint_symbol_2[6u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  let v_28 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = fma(r2.z, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  r0.y = (r0.y * r0.z);
  let v_29 = (r4.xyz + v_5.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  let v_30 = fma(r1.yzw, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r0.x = (r0.y + r0.x);
  r4.w = 1.0f;
  r0.y = dot(r4, cb12_12.tint_symbol_2[6u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  let v_31 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = fma(r2.z, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  r0.y = (r0.y * r0.z);
  let v_32 = (r4.xyz + v_5.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r1.yzw, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = fma(r1.yzw, vec3<f32>(0.125f), r4.xyz);
  r5 = vec4<f32>(v_34.xyz, r5.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.z)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r0.x = (r0.y + r0.x);
  let v_35 = ((-(r4.xxyz)).yzw + cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(r0.x, v_35.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = clamp(fma(-(r0.yyyy), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.z = fma(r2.z, r0.y, cb12_12.tint_symbol_2[7u].x);
  r0.y = (r0.y / r0.z);
  r4.w = 1.0f;
  r0.z = dot(r4, cb12_12.tint_symbol_2[6u]);
  let v_36 = (r4.xyz + v_21.yzw);
  r1 = vec4<f32>(r1.x, v_36.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.w)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r0.y = (r0.z * r0.y);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.w)));
  r0.x = (r0.y + r0.x);
  let v_37 = ((-(r5.xxyz)).yzw + cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(r0.x, v_37.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = clamp(fma(-(r0.yyyy), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.z = fma(r2.z, r0.y, cb12_12.tint_symbol_2[7u].x);
  r0.y = (r0.y / r0.z);
  r5.w = 1.0f;
  r0.z = dot(r5, cb12_12.tint_symbol_2[6u]);
  let v_38 = (r5.xyz + v_21.yzw);
  r1 = vec4<f32>(r1.x, v_38.xyz);
  r0.w = dot(r1.yzw, r1.yzw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.w)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r0.y = (r0.z * r0.y);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.w)));
  r0.x = (r0.y + r0.x);
  r0.x = (r2.w * r0.x);
  r0.x = (r0.x * 0.125f);
  r0 = vec4<f32>(r0.x, ((v2.zzz * v4.xyz)).xyz);
  let v_39 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_40.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
