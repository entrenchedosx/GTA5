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

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v8 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  let v = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_1 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_3.xy, r1.z, v_3.z);
  let v_4 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_5 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_6 = (r2.yx * r2.yx);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  r3.z = fma((-(r2.zzzz)).z, 16.0f, 14.0f);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r3.zzzz).z)));
  r3.w = (r0.w * 255.0099945068359375f);
  r3.w = floor(r3.w);
  r4.x = (r3.w + -32.0f);
  r4.x = (r4.x * 0.0078125f);
  r4.y = cb13_13.tint_symbol_3[3u].x;
  r4 = textureSample(t13, s13, r4.xyxx.xy);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 32.0f)));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r3.w)));
  r3.w = bitcast<f32>((bitcast<u32>(r3.w) & bitcast<u32>(r4.w)));
  let v_7 = (r0.xyz * r4.xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  r4.w = 1.0f;
  let v_8 = bitcast<vec4<u32>>(r3.wwww);
  let v_9 = r4;
  r0 = select(r0, v_9, (v_8 != vec4<u32>()));
  r0.w = (r0.w * v3.w);
  let v_10 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(v_10.xy, r4.zw);
  r3.w = fma(r1.z, 0.5f, 0.5f);
  r4.z = fma(r3.w, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r3.w = (r3.w + 0.30000001192092895508f);
  r3.w = (r4.y * r3.w);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
  if ((bitcast<u32>(r4.y) != 0u)) {
    let v_11 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
    r2 = vec4<f32>(v_11.xy, r2.zw);
    r5 = textureSample(t2, s2, r2.xyzx.xyz).yzxw;
    let v_12 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(v_12.xy, r5.zw);
  } else {
    let v_13 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
    r2 = vec4<f32>(v_13.xy, r2.zw);
    r6 = textureSample(t2, s2, r2.xyzx.xyz);
    r4.y = select(3.0f, 2.0f, (bitcast<u32>(r1.w) != 0u));
    let v_14 = (r4.yy * v1.xy);
    r2 = vec4<f32>(v_14.xy, r2.zw);
    r7 = textureSample(t2, s2, r2.xyzx.xyz);
    let v_15 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = fma(r6.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
    r6 = vec4<f32>(v_16.xyz, r6.w);
    let v_17 = ((-(r2.xyzx)).xyz + r6.xyz);
    r6 = vec4<f32>(v_17.xyz, r6.w);
    let v_18 = fma(cb13_13.tint_symbol_3[5u].xxx, r6.xyz, r2.xyz);
    r5 = vec4<f32>(v_18.xyz, r5.w);
  }
  r6 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
  let v_19 = (r6.yw + cb11_11.tint_symbol_4[0u].xy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  let v_20 = fma(cb13_13.tint_symbol_3[5u].xx, r2.xy, r6.xz);
  r2 = vec4<f32>(v_20.xy, r2.zw);
  r2.z = (r6.y + cb13_13.tint_symbol_3[3u].z);
  r2.z = fma(cb13_13.tint_symbol_3[5u].x, r2.z, r6.x);
  r4.y = fma(r5.z, 2.0f, -1.0f);
  r2.x = (r2.x * r4.y);
  r2.x = (r2.w * r2.x);
  r2.x = fma(r2.x, r2.z, 1.0f);
  let v_21 = (r0.xyz * r2.xxx);
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = (r5.yyy * v6.xyz);
  r5 = vec4<f32>(r5.x, v_22.xyz);
  let v_23 = fma(v5.xyz, r5.xxx, r5.yzw);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = (r2.www * r5.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = fma(r5.xyz, r2.zzz, r1.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  r2.y = dot(r1.xyz, r1.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_27 = (r1.xyz * r2.yyy);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r1 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r1.zw);
  let v_28 = clamp(((r1.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_28.xy, r1.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_29 = (r6.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r6 = vec4<f32>(v_29.xyz, r6.w);
  let v_30 = (r1.xxx * r6.xyz);
  r6 = vec4<f32>(v_30.xyz, r6.w);
  let v_31 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.zzz) & bitcast<vec3<u32>>(r6.xyz)));
  r6 = vec4<f32>(v_31.xyz, r6.w);
  let v_32 = -(r6.xyzx);
  let v_33 = fma(r0.xyz, r2.xxx, v_32.xyz);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  let v_34 = (r1.yy * cb13_13.tint_symbol_3[17u].yz);
  r1 = vec4<f32>(v_34.xy, r1.zw);
  let v_35 = fma(r3.xy, cb10_10.tint_symbol_5[0u].zw, r1.xy);
  r1 = vec4<f32>(v_35.xy, r1.zw);
  let v_36 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  r2.x = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r1.y = (r1.w + r1.y);
  r1.y = fma(cb13_13.tint_symbol_3[4u].z, r1.y, r2.x);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_37 = (r1.www * v4.xyz);
  r2 = vec4<f32>(v_37.x, r2.y, v_37.yz);
  let v_38 = dot(r2.xzw, r5.xyz);
  r2.x = clamp(vec4<f32>(v_38, v_38, v_38, v_38).x, 0.0f, 1.0f);
  r2.x = ((-(r2.xxxx)).x + 0.5f);
  r2.x = clamp(((r2.xxxx * vec4<f32>(2.5f))).x, 0.0f, 1.0f);
  r2.z = fma(r2.x, -2.0f, 3.0f);
  r2.x = (r2.x * r2.x);
  r2.x = (r2.x * r2.z);
  r1.z = fma(r1.z, r2.y, 1.0f);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r1.z = (r1.z * 1.42857146263122558594f);
  let v_39 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r2 = vec4<f32>(r2.x, v_39.xyz);
  r2.x = (r2.y * r2.x);
  r1.z = (r1.z * r2.x);
  let v_40 = (r0.xyz * r1.zzz);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  let v_41 = fma(r6.xyz, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_41.xyz, o0.w);
  let v_42 = -(r5.xyzx);
  let v_43 = fma(v4.xyz, r1.www, v_42.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  let v_44 = fma(r2.zzz, r0.xyz, r5.xyz);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  r1.z = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).z, 0.0f, 1.0f);
  r2.y = (r1.z * r3.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_45 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = (r0.xyz * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_46.xy, r3.z, v_46.z);
  let v_47 = floor(r3.xyw);
  r3 = vec4<f32>(v_47.xy, r3.z, v_47.z);
  let v_48 = -(r3.xywx);
  let v_49 = fma(r0.xyz, vec3<f32>(256.0f), v_48.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = floor(r0.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_52 = (r3.xyw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_52.xyz, o1.w);
  r0.x = (r1.x * 0.001953125f);
  r2.x = fma(r4.z, r4.x, cb3_3.tint_symbol_1[45u].w);
  let v_53 = (r2.xy * vec2<f32>(0.5f));
  let v_54 = r0;
  r0 = vec4<f32>(v_54.x, v_53.xy, v_54.w);
  let v_55 = sqrt(r0.yz);
  o3 = vec4<f32>(v_55.xy, o3.zw);
  r0.y = (r2.w + 1.01960790157318115234f);
  let v_56 = bitcast<u32>(r3.z);
  let v_57 = r2.w;
  r0.y = select(r0.y, v_57, (v_56 != 0u));
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
