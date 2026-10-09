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

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb18_struct {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = (v0.xy * cb10_10.tint_symbol_4[16u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb10_10.tint_symbol_4[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb10_10.tint_symbol_4[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v_4 = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0 = textureSample(t8, s8, r0.xyxx.xy);
  let v_5 = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.x = dot(v5.xyz, (-(r0.xyzx)).xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb12_12.tint_symbol_3[0u].x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = vec4<f32>(r0.x, vec3<f32>());
    r1.w = 0.0f;
    r3.z = 0.0f;
    r4 = vec4<f32>(vec3<f32>(), r4.w);
    r5 = vec4<f32>(vec3<f32>(), r5.w);
    r2 = vec4<f32>();
  }
  let v_7 = (r1.xyz + (-(v1.xyzx)).xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r4.w = dot(v4.xyz, r1.xyz);
  let v_8 = -(v3.xyzx);
  r1.x = dot(v_8.xyz, r1.xyz);
  r6.x = (r4.w * v4.w);
  r6.y = (r1.x * v3.w);
  let v_9 = fma(r6.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = fma(r1.xy, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_10.xy, r6.zw);
  let v_11 = fma(v9.xy, r6.xy, r1.xy);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v9.z)));
  r1.z = (v9.w / v9.z);
  r4.w = floor(r1.z);
  let v_12 = -(r4.wwww);
  r1.z = (r1.z + v_12.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r4.w = (1.0f / v3.w);
  r4.w = (r4.w + r4.w);
  r4.w = (r4.w / v9.z);
  r1.z = fma(r6.y, r4.w, r1.z);
  let v_13 = bitcast<u32>(r1.x);
  let v_14 = r1.z;
  r6.z = select(r6.y, v_14, (v_13 != 0u));
  let v_15 = (r6.xz + v7.xy);
  let v_16 = r1;
  r1 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
  let v_17 = (r1.xz * v7.zw);
  let v_18 = r1;
  r1 = vec4<f32>(v_17.x, v_18.y, v_17.y, v_18.w);
  r7 = vec4<f32>(((v3.yzx * v4.zxy)).xyz, r7.w);
  let v_19 = fma(v4.yzx, v3.zxy, (-(r7.xyzx)).xyz);
  r7 = vec4<f32>(v_19.xyz, r7.w);
  r4.w = dot(r7.xyz, r7.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_20 = (r4.www * r7.xyz);
  r7 = vec4<f32>(v_20.xyz, r7.w);
  let v_21 = fma(v9.xy, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r6 = vec4<f32>(r6.xy, v_21.xy);
  let v_22 = (r6.zzz * v4.xyz);
  r8 = vec4<f32>(v_22.xyz, r8.w);
  let v_23 = (r6.www * v_8.xyz);
  r9 = vec4<f32>(v_23.xyz, r9.w);
  r10.x = dot(r8.xyz, v8.xyz);
  r10.y = dot(r9.xyz, v8.xyz);
  r10.z = dot(r7.xyz, v8.xyz);
  r11 = textureSample(t3, s3, r1.xzxx.xy);
  r4.w = dot(r10.xyz, r10.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_24 = (r4.ww * r10.xy);
  r6 = vec4<f32>(r6.xy, v_24.xy);
  r4.w = (cb12_12.tint_symbol_3[1u].y * 0.5f);
  let v_25 = -(r4.wwww);
  r4.w = fma(r11.w, cb12_12.tint_symbol_3[1u].y, v_25.w);
  let v_26 = fma(r4.ww, r6.zw, r1.xz);
  let v_27 = r1;
  r1 = vec4<f32>(v_26.x, v_27.y, v_26.y, v_27.w);
  r10 = textureSample(t3, s3, r1.xzxx.xy);
  r11 = textureSample(t2, s2, r1.xzxx.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0.x = ((-(v6.yyyy)).x + v6.z);
    r0.x = fma(r1.y, r0.x, v6.y);
    r0.x = (r0.x * v6.x);
    let v_28 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r6.xy < vec2<f32>())));
    r1 = vec4<f32>(v_28.xy, r1.zw);
    let v_29 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r6.xy)));
    r6 = vec4<f32>(v_29.xy, r6.zw);
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r6.x)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
    r1.x = bitcast<f32>((bitcast<u32>(r6.y) | bitcast<u32>(r1.x)));
    let v_30 = bitcast<u32>(r1.x);
    r0.x = select(r0.x, 0.0f, (v_30 != 0u));
    let v_31 = fma(r10.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r1 = vec4<f32>(v_31.xy, r1.zw);
    r1.z = dot(r1.xy, r1.xy);
    r1.z = ((-(r1.zzzz)).z + 1.0f);
    r1.z = sqrt(abs(r1.zzzz).z);
    let v_32 = (r9.xyz * r1.yyy);
    r6 = vec4<f32>(v_32.xyz, r6.w);
    let v_33 = fma(r1.xxx, r8.xyz, r6.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = fma(r1.zzz, r7.xyz, r6.xyz);
    r0 = vec4<f32>(r0.x, v_34.xyz);
    r6.x = v8.w;
    r6.y = v1.w;
    r6.z = v5.w;
    r6.w = 1.0f;
    r6 = (r6 * r11);
    r1.x = dot(r10.xy, r10.xy);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
    let v_35 = (r1.xxx * r6.xyz);
    r4 = vec4<f32>(v_35.xyz, r4.w);
    r6.x = v6.w;
    r6.y = 1.0f;
    let v_36 = (r1.xx * r6.xy);
    let v_37 = r1;
    r1 = vec4<f32>(v_37.x, v_36.xy, v_37.w);
    r5.z = (r1.x * cb12_12.tint_symbol_3[0u].z);
    r5.x = (r0.x * r6.w);
    r5.y = (r1.y * cb2_2.tint_symbol_1[15u].z);
    r2.y = (r1.z * cb12_12.tint_symbol_3[1u].x);
    r1.w = 1.0f;
    r2.x = cb12_12.tint_symbol_3[0u].y;
    r2.z = cb2_2.tint_symbol_1[16u].z;
    r3.z = cb12_12.tint_symbol_3[0u].w;
    r2.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r0.x = (r5.x * cb2_2.tint_symbol_1[15u].x);
    r1.x = (r1.w * r5.x);
    o1.w = (r1.x * cb2_2.tint_symbol_1[15u].x);
    let v_38 = fma(r0.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
    o1 = vec4<f32>(v_38.xyz, o1.w);
    let v_39 = (r2.xy * vec2<f32>(0.001953125f, 0.0625f));
    r3 = vec4<f32>(v_39.xy, r3.zw);
    o3.z = clamp(r3.yyyy.z, 0.0f, 1.0f);
    r0.y = (r0.w + -0.34999999403953552246f);
    r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
    r0.y = (r0.y * cb5_5.tint_symbol_2[3u].z);
    r0.z = ((-(r2.zzzz)).z + 1.0f);
    r0.y = (r0.z * r0.y);
    r0.y = (r5.y * r0.y);
    r0.z = fma((-(r5.zzzz)).z, 0.5f, 1.0f);
    r0.z = (r0.z * r0.y);
    r0.z = fma(r0.z, -0.5f, 1.0f);
    let v_40 = (r0.zzz * r4.xyz);
    o0 = vec4<f32>(v_40.xyz, o0.w);
    r0.z = clamp(((r5.zzzz + vec4<f32>(0.69999998807907104492f))).z, 0.0f, 1.0f);
    let v_41 = (r0.zz * vec2<f32>(0.5f, 0.48828125f));
    r1 = vec4<f32>(v_41.xy, r1.zw);
    r3.w = r5.z;
    r1.z = 0.97000002861022949219f;
    let v_42 = ((-(r3.wxzw)).xyz + r1.xyz);
    r1 = vec4<f32>(v_42.xyz, r1.w);
    let v_43 = max(r1.xyz, vec3<f32>());
    r1 = vec4<f32>(v_43.xyz, r1.w);
    let v_44 = fma(r1.xyz, r0.yyy, r3.wxz);
    r0 = vec4<f32>(r0.x, v_44.xyz);
    let v_45 = sqrt(r0.yz);
    o2 = vec4<f32>(v_45.xy, o2.zw);
    o0.w = r0.x;
    let v_46 = r0;
    o2 = vec4<f32>(o2.xy, v_46.wx);
    o3 = vec4<f32>(vec2<f32>(), o3.zw);
    o3.w = r0.x;
    return;
  } else {
    o0 = vec4<f32>();
    o1 = vec4<f32>();
    o2 = vec4<f32>();
    o3 = vec4<f32>();
    return;
  }
}

struct tint_symbol_7 {
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
fn main(@builtin(position) v_47 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v_47, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  return tint_symbol_7(o0, o1, o2, o3);
}
