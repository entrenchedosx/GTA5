diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb4_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb7_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v = ((-(cb9_9.tint_symbol_3[3u].xyxx)).xy + cb9_9.tint_symbol_3[3u].zw);
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = (vec2<f32>(8.0f, 1.0f) / r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = clamp(((v1.xxxy + -(cb9_9.tint_symbol_3[3u].xxxy))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_2.xy);
  let v_3 = (r1.xy * r1.zw);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = trunc(r2.xy);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = -(r2.xyxx);
  let v_6 = fma(r1.zw, r1.xy, v_5.xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = r2.x;
  let v_8 = max(v_7, -2147483648.0f);
  r1.z = bitcast<f32>(select(select(i32(v_8), 2147483647i, (v_8 >= 2147483648.0f)), 0i, !((v_7 == v_7))));
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r1.zzzz) == vec4<i32>(0i, 1i, 2i, 3i))));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r1.zzzz) == vec4<i32>(4i, 5i, 6i, 7i))));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r1.z = dot(cb9_9.tint_symbol_3[0u], r2);
  r1.w = dot(cb9_9.tint_symbol_3[1u], r3);
  r1.z = (r1.w + r1.z);
  r1.z = trunc(r1.z);
  r1.z = (r1.z / cb9_9.tint_symbol_3[2u].z);
  r1.w = trunc(r1.z);
  r2.x = ((-(r1.wwww)).x + r1.z);
  r2.y = (r1.w / cb9_9.tint_symbol_3[2u].w);
  let v_9 = fma(r1.xy, cb9_9.tint_symbol_3[2u].xy, r2.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = dpdx(v1.xy);
  r1 = vec4<f32>(r1.xy, v_10.xy);
  let v_11 = (r1.zw * vec2<f32>(0.5f));
  r1 = vec4<f32>(r1.xy, v_11.xy);
  let v_12 = dpdy(v1.xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = r1.zw;
  let v_15 = r2.xy;
  r3 = textureSampleGrad(t7, s7, r1.xyxx.xy, v_14, v_15);
  let v_16 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v1.xy < cb9_9.tint_symbol_3[3u].xy)));
  r4 = vec4<f32>(v_16.xy, r4.zw);
  let v_17 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb9_9.tint_symbol_3[3u].zw < v1.xy)));
  r4 = vec4<f32>(r4.xy, v_17.xy);
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r2.z = dot(r4, r4);
  r2.z = min(r2.z, 1.0f);
  let v_18 = -(r3.xxxx);
  r2.w = fma(r2.z, v_18.w, r3.x);
  let v_19 = abs(r1.zwzz);
  let v_20 = max(v_19.xy, abs(r2.xyxx).xy);
  r3 = vec4<f32>(v_20.xy, r3.zw);
  r3.x = max(r3.y, r3.x);
  let v_21 = (r3.xx * cb9_9.tint_symbol_3[6u].xy);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  let v_22 = max(r3.xy, cb9_9.tint_symbol_3[6u].zw);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r3.x = ((-(r3.xxxx)).x + cb9_9.tint_symbol_3[5u].y);
  r3.y = (r3.y + cb9_9.tint_symbol_3[5u].y);
  r3.y = ((-(r3.xxxx)).y + r3.y);
  let v_23 = -(r3.xxxx);
  r2.w = (r2.w + v_23.w);
  r3.x = (1.0f / r3.y);
  r2.w = clamp(((r2.wwww * r3.xxxx)).w, 0.0f, 1.0f);
  r3.x = fma(r2.w, -2.0f, 3.0f);
  r2.w = (r2.w * r2.w);
  r2.w = (r2.w * r3.x);
  let v_24 = -(r0.xyzx);
  let v_25 = fma(cb9_9.tint_symbol_3[4u].www, cb9_9.tint_symbol_3[4u].xyz, v_24.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = fma(r2.www, r3.xyz, r0.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = (r3.xyz * cb11_11.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_28((bitcast<u32>(r3.x) != 0u));
  r3 = textureSample(t6, s6, v1.xyxx.xy);
  let v_29 = r1.zw;
  let v_30 = r2.xy;
  r1 = textureSampleGrad(t8, s8, r1.xyxx.xy, v_29, v_30);
  let v_31 = -(r1.xyxx);
  let v_32 = fma(r2.zz, v_31.xy, r1.xy);
  r1 = vec4<f32>(v_32.xy, r1.zw);
  let v_33 = (r1.xy + vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_33.xy, r1.zw);
  let v_34 = (r1.xy * cb9_9.tint_symbol_3[5u].xx);
  r1 = vec4<f32>(v_34.xy, r1.zw);
  let v_35 = fma(r1.xy, r2.ww, r3.xy);
  r1 = vec4<f32>(v_35.xy, r1.zw);
  let v_36 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_36.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb11_11.tint_symbol_2[3u].w, 0.00100000004749745131f);
  let v_37 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  let v_38 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_39.xy, r1.z, v_39.z);
  let v_40 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = inverseSqrt(r1.x);
  r1.y = (v3.x * cb2_2.tint_symbol[15u].z);
  r1.w = (v3.x * 0.20000000298023223877f);
  let v_41 = ((-(cb11_11.tint_symbol_2[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r2 = vec4<f32>(v_41.xy, r2.zw);
  r2.z = (r2.x * v3.z);
  let v_42 = (r2.yy * v1.zw);
  let v_43 = r2;
  r2 = vec4<f32>(v_43.x, v_42.x, v_43.z, v_42.y);
  r3 = textureSample(t3, s3, r2.ywyy.xy);
  r2.y = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_2[2u].z);
  r2.w = ((-(r3.xxxx)).w + r3.z);
  r3.x = fma(r2.y, r2.w, r3.x);
  let v_44 = (r3.xy * cb11_11.tint_symbol_2[2u].xx);
  let v_45 = r2;
  r2 = vec4<f32>(v_45.x, v_44.x, v_45.z, v_44.y);
  r3.x = fma(v3.z, r2.x, -1.0f);
  r2.x = fma(r2.x, r3.x, 1.0f);
  r2.y = (r2.x * r2.y);
  let v_46 = -(r0.xyxz);
  let v_47 = fma(cb11_11.tint_symbol_2[3u].xyz, cb11_11.tint_symbol_2[2u].yyy, v_46.xyw);
  r3 = vec4<f32>(v_47.xy, r3.z, v_47.z);
  let v_48 = fma(r2.yyy, r3.xyw, r0.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  r2.y = (r2.z * cb11_11.tint_symbol_2[2u].x);
  let v_49 = ((-(r0.xyzx)).xyz + r3.zzz);
  r3 = vec4<f32>(v_49.xyz, r3.w);
  let v_50 = fma(r2.yyy, r3.xyz, r0.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  r2.x = fma((-(r2.wwww)).x, r2.x, 1.0f);
  r1.w = (r1.w * r2.x);
  r1.x = fma(r1.z, r1.x, -0.34999999403953552246f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[3u].z);
  r1.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r1.x = (r1.z * r1.x);
  r1.x = (r1.y * r1.x);
  r1.y = fma((-(r1.wwww)).y, 0.5f, 1.0f);
  r1.x = (r1.y * r1.x);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_51 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_51.xyz, o0.w);
  o0.w = r0.w;
}

fn v_28(v_52 : bool) {
  if (v_52) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v5, v6);
  return o0;
}
