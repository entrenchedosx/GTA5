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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb18_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb18_struct_1;

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

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>) {
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
    r2 = vec4<f32>();
    r3 = vec4<f32>();
    r4 = vec4<f32>();
    r5 = vec4<f32>(vec2<f32>(), r5.zw);
  }
  let v_7 = (r1.xyz + (-(v1.xyzx)).xyz);
  r6 = vec4<f32>(v_7.xyz, r6.w);
  r5.z = dot(v4.xyz, r6.xyz);
  let v_8 = -(v3.xyzx);
  r5.w = dot(v_8.xyz, r6.xyz);
  r6.x = (r5.z * v4.w);
  r6.y = (r5.w * v3.w);
  let v_9 = fma(r6.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r5 = vec4<f32>(r5.xy, v_9.xy);
  let v_10 = fma(r5.zw, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_10.xy, r6.zw);
  let v_11 = fma(v9.xy, r6.xy, r5.zw);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < v9.z)));
  r6.w = (v9.w / v9.z);
  r7.x = floor(r6.w);
  let v_12 = -(r7.xxxx);
  r6.w = (r6.w + v_12.w);
  r6.w = ((-(r6.wwww)).w + 1.0f);
  r7.x = (1.0f / v3.w);
  r7.x = (r7.x + r7.x);
  r7.x = (r7.x / v9.z);
  r6.w = fma(r6.y, r7.x, r6.w);
  let v_13 = bitcast<u32>(r5.z);
  let v_14 = r6.w;
  r6.z = select(r6.y, v_14, (v_13 != 0u));
  let v_15 = (r6.xz + v7.xy);
  r6 = vec4<f32>(r6.xy, v_15.xy);
  let v_16 = (r6.zw * v7.zw);
  r6 = vec4<f32>(r6.xy, v_16.xy);
  r7 = vec4<f32>(((v3.yzx * v4.zxy)).xyz, r7.w);
  let v_17 = fma(v4.yzx, v3.zxy, (-(r7.xyzx)).xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  r5.z = dot(r7.xyz, r7.xyz);
  r5.z = inverseSqrt(r5.z);
  let v_18 = (r5.zzz * r7.xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = fma(v9.xy, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_19.xy, r8.zw);
  let v_20 = (r8.xxx * v4.xyz);
  r8 = vec4<f32>(v_20.x, r8.y, v_20.yz);
  let v_21 = (r8.yyy * v_8.xyz);
  r9 = vec4<f32>(v_21.xyz, r9.w);
  r10.x = dot(r8.xzw, v8.xyz);
  r10.y = dot(r9.xyz, v8.xyz);
  r10.z = dot(r7.xyz, v8.xyz);
  r11 = textureSample(t3, s3, r6.zwzz.xy);
  r5.z = dot(r10.xyz, r10.xyz);
  r5.z = inverseSqrt(r5.z);
  let v_22 = (r5.zz * r10.xy);
  r10 = vec4<f32>(v_22.xy, r10.zw);
  r5.z = (cb12_12.tint_symbol_3[1u].y * 0.5f);
  let v_23 = -(r5.zzzz);
  r5.z = fma(r11.w, cb12_12.tint_symbol_3[1u].y, v_23.z);
  let v_24 = fma(r5.zz, r10.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, v_24.xy);
  r10 = textureSample(t3, s3, r6.zwzz.xy);
  r11 = textureSample(t2, s2, r6.zwzz.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0.x = ((-(v6.yyyy)).x + v6.z);
    r0.x = fma(r5.w, r0.x, v6.y);
    r0.x = (r0.x * v6.x);
    let v_25 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r6.xy < vec2<f32>())));
    r5 = vec4<f32>(r5.xy, v_25.xy);
    let v_26 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r6.xy)));
    r6 = vec4<f32>(v_26.xy, r6.zw);
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r6.x)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r5.z)));
    r5.z = bitcast<f32>((bitcast<u32>(r6.y) | bitcast<u32>(r5.z)));
    let v_27 = bitcast<u32>(r5.z);
    r0.x = select(r0.x, 0.0f, (v_27 != 0u));
    let v_28 = fma(r10.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(r5.xy, v_28.xy);
    r6.x = dot(r5.zw, r5.zw);
    r6.x = ((-(r6.xxxx)).x + 1.0f);
    r6.x = sqrt(abs(r6.xxxx).x);
    let v_29 = (r9.xyz * r5.www);
    r6 = vec4<f32>(r6.x, v_29.xyz);
    let v_30 = fma(r5.zzz, r8.xzw, r6.yzw);
    r6 = vec4<f32>(r6.x, v_30.xyz);
    let v_31 = fma(r6.xxx, r7.xyz, r6.yzw);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    r6.x = v8.w;
    r6.y = v1.w;
    r6.z = v5.w;
    r6.w = 1.0f;
    r6 = (r6 * r11);
    let v_32 = (r6.xyz * r6.xyz);
    r6 = vec4<f32>(v_32.xyz, r6.w);
    r5.z = dot(r10.xy, r10.xy);
    r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z >= 0.00200000009499490261f)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) & 1065353216u));
    let v_33 = (r5.zzz * r6.xyz);
    r0 = vec4<f32>(r0.x, v_33.xyz);
    r6.x = v6.w;
    r6.y = v10.w;
    r6.z = 1.0f;
    let v_34 = (r5.zzz * r6.xyz);
    r6 = vec4<f32>(v_34.xyz, r6.w);
    r3.w = (r5.z * cb12_12.tint_symbol_3[0u].z);
    r1.w = (r0.x * r6.w);
    let v_35 = (r6.xy * cb2_2.tint_symbol_1[15u].zy);
    r2 = vec4<f32>(v_35.xy, r2.zw);
    r5.x = (r6.z * cb12_12.tint_symbol_3[1u].x);
    r2.z = cb2_2.tint_symbol_1[16u].z;
    r2.w = cb12_12.tint_symbol_3[0u].y;
    let v_36 = r1;
    r3 = vec4<f32>(v_36.xyz, r3.w);
    r4.w = cb12_12.tint_symbol_3[0u].w;
    r5.y = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r5.y) != 0u)) {
    let v_37 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
    r1 = vec4<f32>(v_37.xyz, r1.w);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = inverseSqrt(r0.x);
    let v_38 = (r0.xxx * r1.xyz);
    r3 = vec4<f32>(v_38.xyz, r3.w);
    let v_39 = -(cb3_3.tint_symbol_2[0u].xyzx);
    let v_40 = fma(r1.xyz, r0.xxx, v_39.xyz);
    r1 = vec4<f32>(v_40.xyz, r1.w);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = inverseSqrt(r0.x);
    let v_41 = (r0.xxx * r1.xyz);
    r1 = vec4<f32>(v_41.xyz, r1.w);
    r3.w = clamp(r3.wwww.w, 0.0f, 1.0f);
    let v_42 = (r2.xy * r2.xy);
    r2 = vec4<f32>(v_42.xy, r2.zw);
    r0.x = (r2.w + -500.0f);
    r0.x = max(r0.x, 0.0f);
    r2.w = ((-(r0.xxxx)).w + r2.w);
    r0.x = (r0.x * 558.0f);
    r0.x = fma(r2.w, 3.0f, r0.x);
    let v_43 = dot(r4.xyz, v_39.xyz);
    r2.w = clamp(vec4<f32>(v_43, v_43, v_43, v_43).w, 0.0f, 1.0f);
    let v_44 = dot(r3.xyz, r4.xyz);
    r3.x = clamp(vec4<f32>(v_44, v_44, v_44, v_44).x, 0.0f, 1.0f);
    let v_45 = dot(r1.xyz, v_39.xyz);
    r3.y = clamp(vec4<f32>(v_45, v_45, v_45, v_45).y, 0.0f, 1.0f);
    let v_46 = ((-(r3.xxyx)).yz + vec2<f32>(1.0f));
    let v_47 = r3;
    r3 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
    let v_48 = (r3.yz * r3.yz);
    let v_49 = r5;
    r5 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
    let v_50 = (r5.yz * r5.yz);
    let v_51 = r5;
    r5 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
    let v_52 = (r3.yz * r5.yz);
    let v_53 = r3;
    r3 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
    r5.y = ((-(r4.wwww)).y + 1.0f);
    let v_54 = fma(r4.ww, r3.yz, r5.yy);
    let v_55 = r3;
    r3 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
    let v_56 = (r0.xx + vec2<f32>(2.0f, 0.00000000999999993923f));
    let v_57 = r5;
    r5 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
    r0.x = (r5.y * 0.125f);
    r3.y = fma((-(r3.wwww)).y, r3.y, 1.0f);
    r1.x = dot(r4.xyz, r1.xyz);
    r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
    r1.x = log2(r1.x);
    r1.x = (r1.x * r5.z);
    r1.x = exp2(r1.x);
    r1.x = (r3.z * r1.x);
    r0.x = (r0.x * r1.x);
    r0.x = (r3.w * r0.x);
    r0.x = (r2.w * r0.x);
    r1.x = (r2.w * r3.y);
    let v_58 = fma(r0.yzw, r1.xxx, r0.xxx);
    r1 = vec4<f32>(v_58.xyz, r1.w);
    r0.x = (r4.z + cb3_3.tint_symbol_2[43u].w);
    r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
    r0.x = max(r0.x, 0.0f);
    let v_59 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
    r5 = vec4<f32>(r5.x, v_59.xyz);
    r2.w = ((-(r2.zzzz)).w + 1.0f);
    let v_60 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
    r6 = vec4<f32>(v_60.xyz, r6.w);
    let v_61 = (r2.zzz * r6.xyz);
    r6 = vec4<f32>(v_61.xyz, r6.w);
    let v_62 = fma(r5.yzw, r2.www, r6.xyz);
    r5 = vec4<f32>(r5.x, v_62.xyz);
    let v_63 = (r2.yyy * r5.yzw);
    r2 = vec4<f32>(r2.x, v_63.xyz);
    let v_64 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
    r5 = vec4<f32>(r5.x, v_64.xyz);
    r6.x = cb3_3.tint_symbol_2[46u].w;
    r6.y = cb3_3.tint_symbol_2[47u].w;
    r6.z = cb3_3.tint_symbol_2[48u].w;
    let v_65 = dot(r6.xyz, r4.xyz);
    r0.x = clamp(vec4<f32>(v_65, v_65, v_65, v_65).x, 0.0f, 1.0f);
    let v_66 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r5.yzw);
    r4 = vec4<f32>(v_66.xyz, r4.w);
    let v_67 = fma(r4.xyz, r2.xxx, r2.yzw);
    r2 = vec4<f32>(v_67.xyz, r2.w);
    let v_68 = (r3.yyy * r2.xyz);
    r2 = vec4<f32>(v_68.xyz, r2.w);
    let v_69 = (r0.yzw * r2.xyz);
    r2 = vec4<f32>(v_69.xyz, r2.w);
    let v_70 = fma(r1.xyz, cb3_3.tint_symbol_2[1u].xyz, r2.xyz);
    r1 = vec4<f32>(v_70.xyz, r1.w);
    r0.x = (r3.x * r5.x);
    let v_71 = fma(r0.yzw, r0.xxx, r1.xyz);
    r0 = vec4<f32>(v_71.xyz, r0.w);
    r1.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  } else {
    r0 = vec4<f32>(vec3<f32>(), r0.w);
    r1.w = 0.0f;
  }
  let v_72 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  o0 = r1;
}

@fragment
fn main(@builtin(position) v_73 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_73, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return o0;
}
