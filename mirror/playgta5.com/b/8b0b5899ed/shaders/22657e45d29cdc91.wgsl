diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb18_struct {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v8 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v = (r1.yx * r1.yx);
  r2 = vec4<f32>(v.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.8125f)));
  r2.w = fma((-(r1.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  r3 = textureSample(t5, s5, v1.xyxx.xy);
  r3.x = dot(cb13_13.tint_symbol_3[10u], r3);
  r4 = textureSample(t6, s6, v1.xyxx.xy);
  r3.y = dot(cb13_13.tint_symbol_3[11u], r4);
  r3.x = (r3.y + r3.x);
  r4 = textureSample(t7, s7, v1.xyxx.xy);
  r3.y = dot(cb13_13.tint_symbol_3[12u], r4);
  r4 = textureSample(t8, s8, v1.xyxx.xy);
  r3.z = dot(cb13_13.tint_symbol_3[13u], r4);
  r3.y = (r3.z + r3.y);
  r4 = textureSample(t3, s3, v1.xyxx.xy);
  r5 = textureSample(t9, s9, v1.xyxx.xy);
  let v_1 = ((-(r4.xxxy)).zw + r5.xy);
  r3 = vec4<f32>(r3.xy, v_1.xy);
  let v_2 = fma(r3.xx, r3.zw, r4.xy);
  let v_3 = r3;
  r3 = vec4<f32>(v_2.x, v_3.y, v_2.y, v_3.w);
  r4 = textureSample(t10, s10, v1.xyxx.xy);
  let v_4 = ((-(r3.xzxx)).xy + r4.xy);
  r4 = vec4<f32>(v_4.xy, r4.zw);
  let v_5 = fma(r3.yy, r4.xy, r3.xz);
  r3 = vec4<f32>(v_5.xy, r3.zw);
  let v_6 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r3.z = dot(r3.xy, r3.xy);
  r3.z = ((-(r3.zzzz)).z + 1.0f);
  r3.z = sqrt(abs(r3.zzzz).z);
  r3.w = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_7 = (r3.ww * r3.xy);
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = (r3.yyy * v6.xyz);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = fma(r3.xxx, v5.xyz, r4.xyz);
  r3 = vec4<f32>(v_9.xy, r3.z, v_9.z);
  let v_10 = fma(r3.zzz, v2.xyz, r3.xyw);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_11 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0.w = (r0.w * v3.w);
  let v_12 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(v_12.xy, r4.zw);
  r3.w = fma(r3.z, 0.5f, 0.5f);
  r4.z = fma(r3.w, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r3.w = (r3.w + 0.30000001192092895508f);
  r3.w = (r4.y * r3.w);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
  if ((bitcast<u32>(r4.y) != 0u)) {
    let v_13 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
    r1 = vec4<f32>(v_13.xy, r1.zw);
    r5 = textureSample(t2, s2, r1.xyzx.xyz).yzxw;
    let v_14 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(v_14.xy, r5.zw);
  } else {
    let v_15 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
    r1 = vec4<f32>(v_15.xy, r1.zw);
    r6 = textureSample(t2, s2, r1.xyzx.xyz);
    r4.y = select(3.0f, 2.0f, (bitcast<u32>(r2.z) != 0u));
    let v_16 = (r4.yy * v1.xy);
    r1 = vec4<f32>(v_16.xy, r1.zw);
    r7 = textureSample(t2, s2, r1.xyzx.xyz);
    let v_17 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
    r1 = vec4<f32>(v_17.xyz, r1.w);
    let v_18 = fma(r6.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
    r6 = vec4<f32>(v_18.xyz, r6.w);
    let v_19 = ((-(r1.xyzx)).xyz + r6.xyz);
    r6 = vec4<f32>(v_19.xyz, r6.w);
    let v_20 = fma(cb13_13.tint_symbol_3[5u].xxx, r6.xyz, r1.xyz);
    r5 = vec4<f32>(v_20.xyz, r5.w);
  }
  r6 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r2.zzzz) != vec4<u32>()));
  let v_21 = (r6.yw + cb11_11.tint_symbol_4[0u].xy);
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = fma(cb13_13.tint_symbol_3[5u].xx, r1.xy, r6.xz);
  r1 = vec4<f32>(v_22.xy, r1.zw);
  r1.z = (r6.y + cb13_13.tint_symbol_3[3u].z);
  r1.z = fma(cb13_13.tint_symbol_3[5u].x, r1.z, r6.x);
  r4.y = fma(r5.z, 2.0f, -1.0f);
  r1.x = (r1.x * r4.y);
  r1.x = (r1.w * r1.x);
  r1.x = fma(r1.x, r1.z, 1.0f);
  let v_23 = (r0.xyz * r1.xxx);
  r6 = vec4<f32>(v_23.xyz, r6.w);
  let v_24 = (r5.yyy * v6.xyz);
  r5 = vec4<f32>(r5.x, v_24.xyz);
  let v_25 = fma(v5.xyz, r5.xxx, r5.yzw);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = (r1.yyy * r5.xyz);
  r5 = vec4<f32>(v_26.xyz, r5.w);
  let v_27 = (r1.www * r5.xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = fma(r5.xyz, r1.zzz, r3.xyz);
  r1 = vec4<f32>(r1.x, v_28.xyz);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.x = inverseSqrt(r3.x);
  let v_29 = (r1.yzw * r3.xxx);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  let v_30 = r1;
  r1 = vec4<f32>(v_30.x, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, v_30.w);
  let v_31 = clamp(((r1.yyzy * vec4<f32>(0.0f, 4.0f, 4.0f, 0.0f))).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_32 = r1;
  r1 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
  let v_33 = (r6.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r6 = vec4<f32>(v_33.xyz, r6.w);
  let v_34 = (r1.yyy * r6.xyz);
  r6 = vec4<f32>(v_34.xyz, r6.w);
  let v_35 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yyy) & bitcast<vec3<u32>>(r6.xyz)));
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = -(r6.xyzx);
  let v_37 = fma(r0.xyz, r1.xxx, v_36.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = (r1.zz * cb13_13.tint_symbol_3[17u].yz);
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = fma(r2.xy, cb10_10.tint_symbol_5[0u].zw, r1.xy);
  r1 = vec4<f32>(v_39.xy, r1.zw);
  let v_40 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  r1.z = bitcast<f32>((bitcast<u32>(r2.z) & 1008981770u));
  r2.x = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.z) != 0u));
  r1.y = (r1.y + r2.x);
  r1.y = fma(cb13_13.tint_symbol_3[4u].z, r1.y, r1.z);
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_41 = (r1.zzz * v4.xyz);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = dot(r2.xyz, r5.xyz);
  r2.x = clamp(vec4<f32>(v_42, v_42, v_42, v_42).x, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 0.5f);
  r2.x = clamp(((r2.xxxx * vec4<f32>(2.5f))).x, 0.0f, 1.0f);
  r2.y = fma(r2.x, -2.0f, 3.0f);
  r2.x = (r2.x * r2.x);
  r2.x = (r2.x * r2.y);
  r1.w = fma(r1.w, r3.x, 1.0f);
  r1.w = clamp(fma(r1.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r1.w = (r1.w * 1.42857146263122558594f);
  let v_43 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_43.xyz, r3.w);
  r2.x = (r2.x * r3.x);
  r1.w = (r1.w * r2.x);
  let v_44 = (r0.xyz * r1.www);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = fma(r2.xyz, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_45.xyz, o0.w);
  let v_46 = -(r5.xyzx);
  let v_47 = fma(v4.xyz, r1.zzz, v_46.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  let v_48 = fma(r3.yyy, r0.xyz, r5.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  r1.z = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).z, 0.0f, 1.0f);
  r2.y = (r1.z * r3.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_49 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = (r0.xyz * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_50.xy, r3.z, v_50.z);
  let v_51 = floor(r3.xyw);
  r3 = vec4<f32>(v_51.xy, r3.z, v_51.z);
  let v_52 = -(r3.xywx);
  let v_53 = fma(r0.xyz, vec3<f32>(256.0f), v_52.xyz);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = floor(r0.xyz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_56 = (r3.xyw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_56.xyz, o1.w);
  r0.x = (r1.x * 0.001953125f);
  r2.x = fma(r4.z, r4.x, cb3_3.tint_symbol_1[45u].w);
  let v_57 = (r2.xy * vec2<f32>(0.5f));
  let v_58 = r0;
  r0 = vec4<f32>(v_58.x, v_57.xy, v_58.w);
  let v_59 = sqrt(r0.yz);
  o3 = vec4<f32>(v_59.xy, o3.zw);
  r0.y = (r3.z + 1.01960790157318115234f);
  let v_60 = bitcast<u32>(r2.w);
  let v_61 = r3.z;
  r0.y = select(r0.y, v_61, (v_60 != 0u));
  o3.w = (r0.y * 0.49607843160629272461f);
  o2.x = sqrt(r1.y);
  o2.y = sqrt(r0.x);
  o2.z = cb10_10.tint_symbol_5[0u].y;
  o2.w = 1.0f;
  o3.z = 0.0f;
}

struct tint_symbol_6 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3, v4, v5, v6, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
