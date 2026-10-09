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

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb4_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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
  r0.x = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).x, 1.5f, 1.0f);
  r0.x = (r0.x * 0.5f);
  let v_20 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.yx < r0.xx)));
  let v_21 = r0;
  r0 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  let v_22 = (bitcast<u32>(r0.y) != 0u);
  let v_23 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_23, v_22);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.x)));
  let v_24 = bitcast<u32>(r0.z);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_6[2i].x), (v_24 != 0u));
  let v_25 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 0.0f, (v_25 != 0u));
  r0.y = f32(bitcast<i32>(r0.x));
  let v_26 = x0[bitcast<i32>(r0.x)];
  r0 = vec4<f32>(v_26.x, r0.y, v_26.yz);
  r1.x = (r0.y + 0.5f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.yyyy)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.y = (r1.x * 0.25f);
  r0.y = fma(r0.z, 0.25f, r0.y);
  r0.x = (r0.x + 0.5f);
  r3.x = dpdx(r0.x);
  r0.z = dot(r2, cb6_6.tint_symbol_5[12u]);
  r2.x = dot(r2, cb6_6.tint_symbol_5[13u]);
  r2.y = ((-(r0.zzzz)).y + r0.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((r0.z == 0.0f))));
  r3.z = dpdx(r2.y);
  let v_27 = dpdx(r0.yy);
  r2 = vec4<f32>(r2.xy, v_27.xy);
  r4.y = fma(cb6_6.tint_symbol_5[14u].w, 0.25f, r0.y);
  r1.w = dpdy(r2.y);
  let v_28 = dpdy(r0.yxy);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  r4.x = (r0.x + cb6_6.tint_symbol_5[14u].z);
  let v_29 = (r1.yw * r2.zw);
  r0 = vec4<f32>(v_29.xy, r0.zw);
  r1.y = (r1.y * r3.z);
  let v_30 = -(r0.xyxx);
  let v_31 = fma(r3.xz, r1.xz, v_30.xy);
  r5 = vec4<f32>(v_31.xy, r5.zw);
  let v_32 = -(r1.yyyy);
  r5.z = fma(r3.x, r1.w, v_32.z);
  r0.x = (1.0f / r5.x);
  let v_33 = (r0.xx * r5.yz);
  r0 = vec4<f32>(v_33.xy, r0.zw);
  let v_34 = max(r0.xy, vec2<f32>());
  r0 = vec4<f32>(v_34.xy, r0.zw);
  let v_35 = min(r0.xy, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_35.xy, r0.zw);
  r0.x = fma((-(r2.xxxx)).x, r0.x, r2.y);
  r0.x = fma((-(r2.xxxx)).x, r0.y, r0.x);
  let v_36 = bitcast<u32>(r0.z);
  let v_37 = r0.x;
  r0.x = select(r0.w, v_37, (v_36 != 0u));
  let v_38 = r4.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_38.xy, r0.x);
  r0.y = ((-(cb2_2.tint_symbol_1[16u].zzzz)).y + 1.0f);
  r0.z = dot(v1.xyz, v1.xyz);
  r0.z = inverseSqrt(r0.z);
  r0.w = fma(v1.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  let v_39 = (r0.zzz * v1.xyz);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  r0.z = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_40 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = (r2.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = fma(r3.xyz, r0.yyy, r2.xyz);
  r0 = vec4<f32>(r0.x, v_44.xyz);
  r1.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  let v_45 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_45.xy, r2.zw);
  r1.w = (r1.w * r2.y);
  r2.x = (r2.x * r2.x);
  r1.w = (r1.w * r1.w);
  let v_46 = (r0.yzw * r1.www);
  r0 = vec4<f32>(r0.x, v_46.xyz);
  r3.x = cb3_3.tint_symbol_2[46u].w;
  r3.y = cb3_3.tint_symbol_2[47u].w;
  r3.z = cb3_3.tint_symbol_2[48u].w;
  let v_47 = dot(r3.xyz, r1.xyz);
  r1.w = clamp(vec4<f32>(v_47, v_47, v_47, v_47).w, 0.0f, 1.0f);
  let v_48 = -(cb3_3.tint_symbol_2[0u].xyzx);
  r1.x = dot(r1.xyz, v_48.xyz);
  let v_49 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.www, r4.xyz);
  r1 = vec4<f32>(r1.x, v_49.xyz);
  let v_50 = fma(r1.yzw, r2.xxx, r0.yzw);
  r0 = vec4<f32>(r0.x, v_50.xyz);
  r1.y = (cb5_5.tint_symbol_3[3u].z * cb11_11.tint_symbol_4[2u].z);
  let v_51 = ((-(cb11_11.tint_symbol_4[2u].zzzz)).zw + vec2<f32>(1.0f, 2.0f));
  r1 = vec4<f32>(r1.xy, v_51.xy);
  let v_52 = (r1.ww * v0.zw);
  r2 = vec4<f32>(v_52.xy, r2.zw);
  r2 = textureSample(t3, s3, r2.xyxx.xy);
  r1.w = ((-(r2.xxxx)).w + r2.z);
  r1.y = fma(r1.y, r1.w, r2.x);
  r1.w = fma(v3.z, r1.z, -1.0f);
  r1.w = fma(r1.z, r1.w, 1.0f);
  r1.z = (r1.z * v3.z);
  let v_53 = (r1.yz * cb11_11.tint_symbol_4[2u].xx);
  let v_54 = r1;
  r1 = vec4<f32>(v_54.x, v_53.xy, v_54.w);
  r2.x = (r1.w * r1.y);
  r3 = textureSample(t0, s0, v0.xyxx.xy);
  let v_55 = (r3.xyz * v3.xxx);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  r1.y = fma(r1.y, r1.w, r3.w);
  let v_56 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_56.xyz, r3.w);
  let v_57 = -(r3.xyzx);
  let v_58 = fma(cb11_11.tint_symbol_4[3u].xyz, cb11_11.tint_symbol_4[2u].yyy, v_57.xyz);
  r4 = vec4<f32>(v_58.xyz, r4.w);
  let v_59 = fma(r2.xxx, r4.xyz, r3.xyz);
  r2 = vec4<f32>(v_59.xy, r2.z, v_59.z);
  let v_60 = ((-(r2.xywx)).xyz + r2.zzz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  let v_61 = fma(r1.zzz, r3.xyz, r2.xyw);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = (r0.yzw * r2.xyz);
  r0 = vec4<f32>(r0.x, v_62.xyz);
  r1.z = clamp(r1.xxxx.z, 0.0f, 1.0f);
  r1.z = ((-(abs(r1.xxxx))).z + r1.z);
  let v_63 = abs(r1.xxxx);
  r1.x = fma(r1.y, r1.z, v_63.x);
  o0.w = (r1.y * cb2_2.tint_symbol_1[15u].x);
  let v_64 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  let v_65 = (r1.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_65.xyz, r1.w);
  let v_66 = fma(r1.xyz, r0.xxx, r0.yzw);
  o0 = vec4<f32>(v_66.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
