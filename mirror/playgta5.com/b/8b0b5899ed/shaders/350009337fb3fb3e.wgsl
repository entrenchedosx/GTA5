diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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
  r2 = vec4<f32>(r2.xy, vec2<f32>(1.0f));
  r1.x = dot(r2.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r1.y = dot(r2.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r1.z = dot(r2.xyz, cb12_12.tint_symbol_2[20u].xyz);
  let v_3 = (r0.xxx * r1.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r1.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.x = dot(r0.yzw, r0.yzw);
  let v_5 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = (r0.yzw * v3.xyz.xxx);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  let v_7 = -(r1.wwww);
  r2.x = (r0.x + v_7.x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.w)));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.0f)));
  v_8((bitcast<u32>(r2.x) != 0u));
  let v_9 = fma(r0.yzw, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r2.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  let v_10 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r4.x = sqrt(r3.w);
  r4.x = (1.0f / r4.x);
  let v_11 = (r3.xyz * r4.xxx);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r3.x = dot(r3.xyz, v_12.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r3.y = clamp(fma(-(r3.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.w)));
  r3.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r4.x = fma(r3.w, r3.y, cb12_12.tint_symbol_2[7u].x);
  r3.y = (r3.y / r4.x);
  r3.x = (r3.x * r3.y);
  r2.w = (r2.w * r3.x);
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.z)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r2.w)));
  r4.w = 1.0f;
  let v_13 = fma(r0.yzw, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = (r0.yzw * v3.xyz.yyy);
  r0 = vec4<f32>(r0.x, v_14.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r0.y)));
  r0.y = (r0.x / r0.y);
  let v_15 = bitcast<u32>(r0.z);
  r0.y = select(r0.y, 1.0f, (v_15 != 0u));
  let v_16 = bitcast<vec3<u32>>(r0.zzz);
  let v_17 = r3.xyz;
  let v_18 = select(r1.xyz, v_17, (v_16 != vec3<u32>()));
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = ((-(r2.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r1.xyz, vec3<f32>(0.125f), r2.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  r0.z = dot(r4, cb12_12.tint_symbol_2[6u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.0f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  let v_21 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r0.w);
  r2.w = (1.0f / r2.w);
  let v_22 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r0.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  r2.z = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.z);
  r2.x = (r2.x * r2.y);
  r0.z = (r0.z * r2.x);
  let v_23 = bitcast<u32>(r0.w);
  let v_24 = r0.z;
  r0.z = select(r1.w, v_24, (v_23 != 0u));
  let v_25 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_26 = (r4.xyz + v_25.xyz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  let v_27 = fma(r1.xyz, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_27.xyz, r4.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r0.w)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
  r4.w = 1.0f;
  r0.w = dot(r4, cb12_12.tint_symbol_2[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  let v_28 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r2.w);
  r3.x = (1.0f / r3.x);
  let v_29 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  r2.w = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.w);
  r2.x = (r2.x * r2.y);
  r0.w = (r0.w * r2.x);
  let v_30 = bitcast<u32>(r2.z);
  let v_31 = r0.w;
  r0.w = select(r0.z, v_31, (v_30 != 0u));
  r0.z = (r0.z + r1.w);
  let v_32 = (r4.xyz + v_25.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = fma(r1.xyz, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.w)));
  r4.w = 1.0f;
  r1.w = dot(r4, cb12_12.tint_symbol_2[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  let v_34 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r2.w);
  r3.x = (1.0f / r3.x);
  let v_35 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  r2.w = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.w);
  r2.x = (r2.x * r2.y);
  r1.w = (r1.w * r2.x);
  let v_36 = bitcast<u32>(r2.z);
  let v_37 = r1.w;
  r1.w = select(r0.w, v_37, (v_36 != 0u));
  r0.z = (r0.w + r0.z);
  let v_38 = (r4.xyz + v_25.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = fma(r1.xyz, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_39.xyz, r4.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r0.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r0.w)));
  r4.w = 1.0f;
  r1.w = dot(r4, cb12_12.tint_symbol_2[6u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  let v_40 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r2.w);
  r3.x = (1.0f / r3.x);
  let v_41 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  r2.w = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.w);
  r2.x = (r2.x * r2.y);
  r1.w = (r1.w * r2.x);
  let v_42 = bitcast<u32>(r2.z);
  let v_43 = r1.w;
  r1.w = select(r0.w, v_43, (v_42 != 0u));
  r0.z = (r0.w + r0.z);
  let v_44 = (r4.xyz + v_25.xyz);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = fma(r1.xyz, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r0.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r0.w)));
  r0.z = (r0.w + r0.z);
  let v_46 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r1.w);
  r2.w = (1.0f / r2.w);
  let v_47 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r1.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  r2.z = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.z);
  r2.x = (r2.x * r2.y);
  r4.w = 1.0f;
  r2.y = dot(r4, cb12_12.tint_symbol_2[6u]);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y >= 0.0f)));
  r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
  r2.x = (r2.y * r2.x);
  let v_48 = bitcast<u32>(r1.w);
  let v_49 = r2.x;
  r0.w = select(r0.w, v_49, (v_48 != 0u));
  let v_50 = (r4.xyz + v_25.xyz);
  r2 = vec4<f32>(v_50.xyz, r2.w);
  let v_51 = fma(r1.xyz, vec3<f32>(0.125f), r4.xyz);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  let v_52 = fma(r1.xyz, vec3<f32>(0.125f), r4.xyz);
  r1 = vec4<f32>(v_52.xyz, r1.w);
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r2.x)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.x)));
  r0.z = (r0.w + r0.z);
  let v_53 = ((-(r4.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r2.w);
  r3.x = (1.0f / r3.x);
  let v_54 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  r2.w = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.w);
  r2.x = (r2.x * r2.y);
  r4.w = 1.0f;
  r2.y = dot(r4, cb12_12.tint_symbol_2[6u]);
  let v_55 = (r4.xyz + v_25.xyz);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r2.w)));
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.y >= 0.0f)));
  r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
  r2.x = (r2.y * r2.x);
  let v_56 = bitcast<u32>(r2.z);
  let v_57 = r2.x;
  r0.w = select(r0.w, v_57, (v_56 != 0u));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.w)));
  r0.z = (r0.w + r0.z);
  let v_58 = ((-(r1.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r3.x = sqrt(r2.w);
  r3.x = (1.0f / r3.x);
  let v_59 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  r2.x = dot(r2.xyz, v_12.xyz);
  r2.x = clamp(fma(r2.xxxx, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).x, 0.0f, 1.0f);
  r2.y = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
  r2.w = fma(r3.w, r2.y, cb12_12.tint_symbol_2[7u].x);
  r2.y = (r2.y / r2.w);
  r2.x = (r2.x * r2.y);
  r1.w = 1.0f;
  r1.w = dot(r1, cb12_12.tint_symbol_2[6u]);
  let v_60 = (r1.xyz + v_25.xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= r1.x)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = (r1.x * r2.x);
  let v_61 = bitcast<u32>(r2.z);
  let v_62 = r1.x;
  r0.w = select(r0.w, v_62, (v_61 != 0u));
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
  r0.x = (r0.x + r0.z);
  r0.x = (r0.y * r0.x);
  r0.x = (r0.x * 0.125f);
  r0 = vec4<f32>(r0.x, ((v2.zzz * v4.xyz)).xyz);
  let v_63 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  r0.w = clamp(((v3.xyz.zzzz / cb12_12.tint_symbol_2[14u].yyyy)).w, 0.0f, 1.0f);
  let v_64 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  let v_65 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_65.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_8(v_66 : bool) {
  if (v_66) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
