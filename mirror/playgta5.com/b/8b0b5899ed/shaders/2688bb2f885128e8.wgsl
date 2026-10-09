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
  let v_3 = (r0.xxx * r1.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r1.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.x = dot(r0.yzw, r0.yzw);
  let v_5 = -(cb1_1.tint_symbol[15u].xxyz);
  r0 = vec4<f32>(r0.x, ((v1.xyz + v_5.yzw)).xyz);
  let v_6 = (r0.yzw * v3.xyz.xxx);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  let v_7 = -(r1.wwww);
  r2.x = (r0.x + v_7.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.0f)));
  v_8((bitcast<u32>(r2.x) != 0u));
  let v_9 = (r0.yzw * v3.xyz.yyy);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r2.x = dot(r2.xyz, r2.xyz);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r2.x)));
  r2.x = (r0.x / r2.x);
  let v_10 = bitcast<u32>(r2.y);
  r2.x = select(r2.x, 1.0f, (v_10 != 0u));
  let v_11 = fma(r0.yzw, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r0.yzw, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = bitcast<vec3<u32>>(r2.yyy);
  let v_14 = r3.xyz;
  let v_15 = select(r1.xyz, v_14, (v_13 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_15.xyz);
  let v_16 = ((-(r4.xxyz)).yzw + r0.yzw);
  r0 = vec4<f32>(r0.x, v_16.xyz);
  let v_17 = fma(r0.yzw, vec3<f32>(0.125f), r4.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_19 = (r3.xyz + v_18.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  let v_20 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xx >= r1.xw)));
  r1 = vec4<f32>(v_20.x, r1.yz, v_20.y);
  r3.w = 1.0f;
  r1.y = dot(r3, cb12_12.tint_symbol_2[6u]);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 0.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  let v_21 = ((-(r3.xxyz)).yzw + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(r2.x, v_21.xyz);
  let v_22 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r1.z = dot(r2.yzw, r2.yzw);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r2.y = ((-(cb12_12.tint_symbol_2[7u].xxxx)).y + 1.0f);
  r2.z = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r2.z);
  r1.y = (r1.y * r1.z);
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r4.w = 1.0f;
  r1.y = dot(r4, cb12_12.tint_symbol_2[6u]);
  let v_23 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 0.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  r2.z = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r2.z);
  r1.y = (r1.y * r1.z);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.w)));
  r1.x = (r1.x + r1.y);
  let v_24 = (r3.xyz + v_5.yzw);
  r1 = vec4<f32>(r1.x, v_24.xyz);
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.y)));
  r3.w = 1.0f;
  r1.z = dot(r3, cb12_12.tint_symbol_2[6u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  let v_25 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = clamp(fma(-(r1.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.z = fma(r2.y, r1.w, cb12_12.tint_symbol_2[7u].x);
  r1.w = (r1.w / r2.z);
  r1.z = (r1.z * r1.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.x = (r1.y + r1.x);
  let v_27 = (r3.xyz + v_5.yzw);
  r1 = vec4<f32>(r1.x, v_27.xyz);
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.y)));
  r3.w = 1.0f;
  r1.z = dot(r3, cb12_12.tint_symbol_2[6u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  let v_28 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = clamp(fma(-(r1.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.z = fma(r2.y, r1.w, cb12_12.tint_symbol_2[7u].x);
  r1.w = (r1.w / r2.z);
  r1.z = (r1.z * r1.w);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r1.x = (r1.y + r1.x);
  r3.w = 1.0f;
  r1.y = dot(r3, cb12_12.tint_symbol_2[6u]);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 0.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  let v_30 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r1.w = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r1.w);
  r1.y = (r1.y * r1.z);
  let v_31 = (r3.xyz + v_18.xyz);
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.z)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
  r1.x = (r1.y + r1.x);
  r3.w = 1.0f;
  r1.y = dot(r3, cb12_12.tint_symbol_2[6u]);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 0.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  let v_33 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r1.w = fma(r2.y, r1.z, cb12_12.tint_symbol_2[7u].x);
  r1.z = (r1.z / r1.w);
  r1.y = (r1.y * r1.z);
  let v_34 = (r3.xyz + v_18.xyz);
  r4 = vec4<f32>(v_34.xyz, r4.w);
  let v_35 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  let v_36 = fma(r0.yzw, vec3<f32>(0.125f), r3.xyz);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r0.y)));
  r0.y = (r0.y + r1.x);
  let v_37 = ((-(r3.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = fma(r2.y, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  r3.w = 1.0f;
  r0.w = dot(r3, cb12_12.tint_symbol_2[6u]);
  let v_38 = (r3.xyz + v_18.xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.x)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.z = (r0.w * r0.z);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r1.x)));
  r0.y = (r0.z + r0.y);
  let v_39 = ((-(r5.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = fma(r2.y, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  r5.w = 1.0f;
  r0.w = dot(r5, cb12_12.tint_symbol_2[6u]);
  let v_40 = (r5.xyz + v_18.xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.x)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.z = (r0.w * r0.z);
  r0.x = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.x)));
  r0.x = (r0.x + r0.y);
  r0.x = (r2.x * r0.x);
  r0.x = (r0.x * 0.125f);
  r0 = vec4<f32>(r0.x, ((v2.zzz * v4.xyz)).xyz);
  let v_41 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  r0.w = clamp(((v3.xyz.zzzz / cb12_12.tint_symbol_2[14u].yyyy)).w, 0.0f, 1.0f);
  let v_42 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_43.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_8(v_44 : bool) {
  if (v_44) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
