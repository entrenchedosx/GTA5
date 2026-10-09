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

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb60_struct {
  tint_symbol_2 : array<vec4<f32>, 60u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb60_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  let v_1 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, cb6_6.tint_symbol_5[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_3.xy, r0.z, v_3.z);
  let v_4 = fma(r0.zzz, cb6_6.tint_symbol_5[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r0.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = &(x0[0u]);
  let v_7 = r1;
  *(v_6) = vec4<f32>(v_7.xyz, (*(v_6)).w);
  let v_8 = abs(r1.yyyy);
  r0.w = max(v_8.w, abs(r1.xxxx).w);
  let v_9 = fma(r0.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = &(x0[1u]);
  let v_11 = r1;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = abs(r1.yyyy);
  r1.x = max(v_12.x, abs(r1.xxxx).x);
  let v_13 = fma(r0.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  let v_14 = fma(r0.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = &(x0[2u]);
  let v_16 = r1;
  *(v_15) = vec4<f32>(v_16.yzw, (*(v_15)).w);
  let v_17 = abs(r1.zzzz);
  r1.y = max(v_17.y, abs(r1.yyyy).y);
  let v_18 = &(x0[3u]);
  let v_19 = r0;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = abs(r0.yyyy);
  r0.x = max(v_20.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.y = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).y, 1.5f, 1.0f);
  r0.y = (r0.y * 0.5f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.y)));
  let v_21 = (bitcast<u32>(r0.z) != 0u);
  let v_22 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r0.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_22, v_21);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.y)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.y)));
  let v_23 = bitcast<u32>(r1.x);
  r0.z = select(r0.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_23 != 0u));
  let v_24 = bitcast<u32>(r0.y);
  r0.y = select(r0.z, 0.0f, (v_24 != 0u));
  r0.z = f32(bitcast<i32>(r0.y));
  let v_25 = x0[bitcast<i32>(r0.y)];
  r1 = vec4<f32>(v_25.xyz, r1.w);
  r0.y = (r0.z + 0.5f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.zzzz)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.y = (r0.y * 0.25f);
  r3.y = fma(r1.y, 0.25f, r0.y);
  r3.x = (r1.x + 0.5f);
  let v_26 = dpdx(r3.xyy);
  r4 = vec4<f32>(v_26.xy, r4.z, v_26.z);
  r0.y = dot(r2, cb6_6.tint_symbol_5[12u]);
  r0.z = dot(r2, cb6_6.tint_symbol_5[13u]);
  r0.w = ((-(r0.yyyy)).w + r1.z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((r0.y == 0.0f))));
  r4.z = dpdx(r0.w);
  let v_27 = dpdy(r3.yxy);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  r2.w = dpdy(r0.w);
  let v_28 = (r2.yw * r4.yw);
  r1 = vec4<f32>(v_28.xy, r1.zw);
  let v_29 = -(r1.xyxx);
  let v_30 = fma(r4.xz, r2.xz, v_29.xy);
  r5 = vec4<f32>(v_30.xy, r5.zw);
  r1.x = (r2.y * r4.z);
  let v_31 = -(r1.xxxx);
  r5.z = fma(r4.x, r2.w, v_31.z);
  r1.x = (1.0f / r5.x);
  let v_32 = (r1.xx * r5.yz);
  r1 = vec4<f32>(v_32.xy, r1.zw);
  let v_33 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_33.xy, r1.zw);
  let v_34 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_34.xy, r1.zw);
  r0.w = fma((-(r0.zzzz)).w, r1.x, r0.w);
  r0.z = fma((-(r0.zzzz)).z, r1.y, r0.w);
  let v_35 = bitcast<u32>(r0.y);
  let v_36 = r0.z;
  r0.y = select(r1.z, v_36, (v_35 != 0u));
  let v_37 = r3.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_37.xy, r0.y);
  let v_38 = ((-(v2.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_38.xyz, r1.w);
  r0.z = dot(r1.xyz, cb1_1.tint_symbol[14u].xyz);
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.x = fma(r0.z, r0.x, r0.y);
  r0.x = (r0.x * r0.x);
  r0.x = min(r0.x, 1.0f);
  r0.y = clamp(fma(v2.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = (r0.y * cb6_6.tint_symbol_5[3u].z);
  let v_39 = -(r0.xxxx);
  r0.x = fma(r0.y, v_39.x, r0.x);
  r0.y = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb2_2.tint_symbol_1[15u].y);
  r0.y = (r0.y * r0.y);
  r0.z = ((-(cb2_2.tint_symbol_1[16u].zzzz)).z + 1.0f);
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = inverseSqrt(r0.w);
  r1.x = fma(v1.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  let v_40 = (r0.www * v1.xyz);
  r1 = vec4<f32>(r1.x, v_40.xyz);
  r0.w = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_41 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = (r2.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_43.xyz, r3.w);
  let v_44 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma(r3.xyz, r0.zzz, r2.xyz);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_46.xyz);
  r2.x = cb3_3.tint_symbol_2[46u].w;
  r2.y = cb3_3.tint_symbol_2[47u].w;
  r2.z = cb3_3.tint_symbol_2[48u].w;
  let v_47 = dot(r2.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_47, v_47, v_47, v_47).x, 0.0f, 1.0f);
  let v_48 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_49 = dot(r1.yzw, v_48.xyz);
  r1.y = clamp(vec4<f32>(v_49, v_49, v_49, v_49).y, 0.0f, 1.0f);
  let v_50 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r4.xyz);
  r1 = vec4<f32>(v_50.x, r1.y, v_50.yz);
  r2.x = (cb2_2.tint_symbol_1[15u].z * cb2_2.tint_symbol_1[15u].z);
  let v_51 = fma(r1.xzw, r2.xxx, r0.yzw);
  r0 = vec4<f32>(r0.x, v_51.xyz);
  r1.x = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[3u].z);
  let v_52 = ((-(cb11_11.tint_symbol_4[3u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r1 = vec4<f32>(r1.xy, v_52.xy);
  let v_53 = (r1.ww * v0.xy);
  r2 = vec4<f32>(v_53.xy, r2.zw);
  r2 = textureSample(t4, s4, r2.xyxx.xy);
  r1.w = ((-(r2.xxxx)).w + r2.z);
  r1.x = fma(r1.x, r1.w, r2.x);
  r1.w = fma(v3.z, r1.z, -1.0f);
  r1.w = fma(r1.z, r1.w, 1.0f);
  r1.z = (r1.z * v3.z);
  let v_54 = (r1.xz * cb11_11.tint_symbol_4[3u].xx);
  let v_55 = r1;
  r1 = vec4<f32>(v_54.x, v_55.y, v_54.y, v_55.w);
  r1.x = (r1.w * r1.x);
  r3 = textureSample(t0, s0, v0.xyxx.xy);
  let v_56 = (r3.xyz * cb11_11.tint_symbol_4[0u].yzw);
  r2 = vec4<f32>(v_56.xy, r2.z, v_56.z);
  r1.w = (r3.w * v3.w);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  let v_57 = (r2.xyw * r2.xyw);
  r2 = vec4<f32>(v_57.xy, r2.z, v_57.z);
  let v_58 = -(r2.xywx);
  let v_59 = fma(cb11_11.tint_symbol_4[4u].xyz, cb11_11.tint_symbol_4[3u].yyy, v_58.xyz);
  r3 = vec4<f32>(v_59.xyz, r3.w);
  let v_60 = fma(r1.xxx, r3.xyz, r2.xyw);
  r2 = vec4<f32>(v_60.xy, r2.z, v_60.z);
  let v_61 = ((-(r2.xywx)).xyz + r2.zzz);
  r3 = vec4<f32>(v_61.xyz, r3.w);
  let v_62 = fma(r1.zzz, r3.xyz, r2.xyw);
  r1 = vec4<f32>(v_62.x, r1.y, v_62.yz);
  let v_63 = (r0.yzw * r1.xzw);
  r0 = vec4<f32>(r0.x, v_63.xyz);
  let v_64 = (r1.yyy * r1.xzw);
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = (r2.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = fma(r2.xyz, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  r0.w = (v3.x * cb11_11.tint_symbol_4[2u].x);
  r0.w = (r0.w * cb11_11.tint_symbol_4[3u].z);
  r0.w = (r0.w * cb3_3.tint_symbol_2[59u].w);
  let v_67 = fma(r1.xzw, r0.www, r0.xyz);
  o0 = vec4<f32>(v_67.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
