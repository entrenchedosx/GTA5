diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

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

struct cb5_struct {
  tint_symbol_4 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb5_struct;

struct cb15_struct {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

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
  r0 = textureSample(t0, s0, v0.xy.xyxx.xy);
  r0.z = dot(v1.xyz, v1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_1 = (r0.zzz * v1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r2.x = r0.y;
  r2.y = cb13_13.tint_symbol_4[3u].x;
  r3 = textureSample(t13, s13, r2.xyxx.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_4[3u].y == cb13_13.tint_symbol_4[3u].x))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2.z = cb13_13.tint_symbol_4[3u].y;
    r2 = textureSample(t13, s13, r2.xzxx.xy);
    r0.y = ((-(r0.xxxx)).y + 1.0f);
    let v_2 = (r0.yyy * r3.xyz);
    r4 = vec4<f32>(v_2.xyz, r4.w);
    let v_3 = fma(r2.xyz, r0.xxx, r4.xyz);
    r3 = vec4<f32>(v_3.xyz, r3.w);
  }
  let v_4 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r1.w = fma(r1.z, 0.5f, 0.5f);
  r2.x = fma(r1.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r2.y = (r1.w + 0.30000001192092895508f);
  let v_5 = (r0.xy * r2.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r3.xyz * r3.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = ((-(v2.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r1.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_9 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = (r3.yyy * cb6_6.tint_symbol_5[1u].xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = fma(r3.xxx, cb6_6.tint_symbol_5[0u].xyz, r4.xyz);
  r3 = vec4<f32>(v_11.xy, r3.z, v_11.z);
  let v_12 = fma(r3.zzz, cb6_6.tint_symbol_5[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(r3.xyz, cb6_6.tint_symbol_5[4u].xyz, cb6_6.tint_symbol_5[8u].xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = &(x0[0u]);
  let v_15 = r4;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = fma(r3.xyz, cb6_6.tint_symbol_5[5u].xyz, cb6_6.tint_symbol_5[9u].xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = &(x0[1u]);
  let v_18 = r5;
  *(v_17) = vec4<f32>(v_18.xyz, (*(v_17)).w);
  let v_19 = fma(r3.xyz, cb6_6.tint_symbol_5[6u].xyz, cb6_6.tint_symbol_5[10u].xyz);
  r6 = vec4<f32>(v_19.xyz, r6.w);
  let v_20 = &(x0[2u]);
  let v_21 = r6;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = fma(r3.xyz, cb6_6.tint_symbol_5[7u].xyz, cb6_6.tint_symbol_5[11u].xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = &(x0[3u]);
  let v_24 = r3;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  r2.w = fma((-(cb6_6.tint_symbol_5[14u].zzzz)).w, 1.5f, 1.0f);
  r2.w = (r2.w * 0.5f);
  let v_25 = abs(r6.yyyy);
  r3.z = max(v_25.z, abs(r6.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r2.w)));
  let v_26 = (bitcast<u32>(r3.z) != 0u);
  let v_27 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r3.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_27, v_26);
  let v_28 = abs(r5.yyyy);
  r3.w = max(v_28.w, abs(r5.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_29 = bitcast<u32>(r3.w);
  r3.z = select(r3.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_29 != 0u));
  let v_30 = abs(r4.yyyy);
  r3.w = max(v_30.w, abs(r4.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r2.w)));
  let v_31 = bitcast<u32>(r2.w);
  r2.w = select(r3.z, 0.0f, (v_31 != 0u));
  let v_32 = x0[bitcast<i32>(r2.w)];
  r4 = vec4<f32>(v_32.xyz, r4.w);
  r2.w = f32(bitcast<i32>(r2.w));
  r3.z = (r2.w + 0.5f);
  r3.z = (r3.z * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.wwww)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r2.w = dot(r5, cb6_6.tint_symbol_5[12u]);
  r3.w = dot(r5, cb6_6.tint_symbol_5[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r3.z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((r2.w == 0.0f))));
  r2.w = ((-(r2.wwww)).w + r4.z);
  let v_33 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_33.xy, r6.z, v_33.z);
  r6.z = dpdx(r2.w);
  let v_34 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_34.xyz, r7.w);
  r7.w = dpdy(r2.w);
  let v_35 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_35.xy, r4.zw);
  let v_36 = -(r4.xyxx);
  let v_37 = fma(r6.xz, r7.xz, v_36.xy);
  r8 = vec4<f32>(v_37.xy, r8.zw);
  r4.x = (1.0f / r8.x);
  r4.y = (r6.z * r7.y);
  let v_38 = -(r4.yyyy);
  r8.z = fma(r6.x, r7.w, v_38.z);
  let v_39 = (r4.xx * r8.yz);
  r4 = vec4<f32>(v_39.xy, r4.zw);
  let v_40 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_41.xy, r4.zw);
  r2.w = fma((-(r3.wwww)).w, r4.x, r2.w);
  r2.w = fma((-(r3.wwww)).w, r4.y, r2.w);
  let v_42 = bitcast<u32>(r3.z);
  let v_43 = r2.w;
  r2.w = select(r4.z, v_43, (v_42 != 0u));
  let v_44 = r5.xyxx;
  r2.w = textureSampleCompareLevel(t15, s15, v_44.xy, r2.w);
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_5[0u].wwww, cb6_6.tint_symbol_5[1u].wwww).w, 0.0f, 1.0f);
  let v_45 = abs(r3.yyyy);
  r3.x = max(v_45.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = fma(r1.w, r3.x, r2.w);
  r1.w = (r1.w * r1.w);
  r1.w = min(r1.w, 1.0f);
  r2.w = clamp(fma(v2.xyz.zzzz, cb6_6.tint_symbol_5[3u].xxxx, cb6_6.tint_symbol_5[3u].yyyy).w, 0.0f, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (r2.w * cb6_6.tint_symbol_5[3u].z);
  let v_46 = -(r1.wwww);
  r1.w = fma(r2.w, v_46.w, r1.w);
  let v_47 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_48 = dot(r1.xyz, v_47.xyz);
  r2.w = clamp(vec4<f32>(v_48, v_48, v_48, v_48).w, 0.0f, 1.0f);
  let v_49 = (r2.www * r2.xyz);
  r3 = vec4<f32>(v_49.xyz, r3.w);
  let v_50 = (r3.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_50.xyz, r3.w);
  r0.z = fma(v1.z, r0.z, cb3_3.tint_symbol_2[43u].w);
  r0.z = (r0.z * cb3_3.tint_symbol_2[44u].w);
  r0.z = max(r0.z, 0.0f);
  let v_51 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.zzz, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_52 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.zzz, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_52.xyz, r5.w);
  let v_53 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_53.xyz, r5.w);
  let v_54 = fma(r4.xyz, r2.www, r5.xyz);
  r4 = vec4<f32>(v_54.xyz, r4.w);
  let v_55 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.zzz, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_57 = dot(r6.xyz, r1.xyz);
  r0.y = clamp(vec4<f32>(v_57, v_57, v_57, v_57).y, 0.0f, 1.0f);
  let v_58 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.yyy, r5.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = fma(r1.xyz, r0.xxx, r4.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = (r2.xyz * r0.xyz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = fma(r3.xyz, r1.www, r0.xyz);
  r0 = vec4<f32>(v_61.xyz, r0.w);
  o0.w = (r0.w * cb2_2.tint_symbol_1[15u].x);
  let v_62 = (r0.xyz * cb13_13.tint_symbol_4[4u].xxx);
  o0 = vec4<f32>(v_62.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
