diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb15_struct {
  tint_symbol_3 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb6_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_7;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  let v_1 = (v2.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.yyy * cb6_6.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.xxx, cb6_6.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.zzz, cb6_6.tint_symbol_3[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r1.xyz, cb6_6.tint_symbol_3[4u].xyz, cb6_6.tint_symbol_3[8u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = &(x0[0u]);
  let v_7 = r2;
  *(v_6) = vec4<f32>(v_7.xyz, (*(v_6)).w);
  let v_8 = abs(r2.yyyy);
  r0.w = max(v_8.w, abs(r2.xxxx).w);
  let v_9 = fma(r1.xyz, cb6_6.tint_symbol_3[5u].xyz, cb6_6.tint_symbol_3[9u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = &(x0[1u]);
  let v_11 = r2;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = abs(r2.yyyy);
  r1.w = max(v_12.w, abs(r2.xxxx).w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_3[6u].xyz, cb6_6.tint_symbol_3[10u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r1.xyz, cb6_6.tint_symbol_3[7u].xyz, cb6_6.tint_symbol_3[11u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = &(x0[2u]);
  let v_16 = r2;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = abs(r2.yyyy);
  r2.x = max(v_17.x, abs(r2.xxxx).x);
  let v_18 = &(x0[3u]);
  let v_19 = r1;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = abs(r1.yyyy);
  r1.x = max(v_20.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.y = fma((-(cb6_6.tint_symbol_3[14u].zzzz)).y, 1.5f, 1.0f);
  r1.y = (r1.y * 0.5f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.y)));
  let v_21 = (bitcast<u32>(r1.z) != 0u);
  let v_22 = bitcast<f32>(v.tint_symbol_6[0i].x);
  r1.z = select(bitcast<f32>(v.tint_symbol_6[1i].x), v_22, v_21);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r1.y)));
  let v_23 = bitcast<u32>(r1.w);
  r1.y = select(r1.z, bitcast<f32>(v.tint_symbol_6[2i].x), (v_23 != 0u));
  let v_24 = bitcast<u32>(r0.w);
  r0.w = select(r1.y, 0.0f, (v_24 != 0u));
  r1.y = f32(bitcast<i32>(r0.w));
  let v_25 = x0[bitcast<i32>(r0.w)];
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.w = (r1.y + 0.5f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.yyyy)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r0.w = (r0.w * 0.25f);
  r0.w = fma(r2.y, 0.25f, r0.w);
  let v_26 = dpdy(r0.ww);
  let v_27 = r4;
  r4 = vec4<f32>(v_26.x, v_27.y, v_26.y, v_27.w);
  r1.y = (r2.x + 0.5f);
  r5.x = dpdx(r1.y);
  r1.z = dot(r3, cb6_6.tint_symbol_3[12u]);
  r1.w = dot(r3, cb6_6.tint_symbol_3[13u]);
  r2.x = ((-(r1.zzzz)).x + r2.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 0.0f))));
  r5.z = dpdx(r2.x);
  let v_28 = dpdx(r0.ww);
  let v_29 = r2;
  r2 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  r3.y = fma(cb6_6.tint_symbol_3[14u].w, 0.25f, r0.w);
  r4.w = dpdy(r2.x);
  r4.y = dpdy(r1.y);
  r3.x = (r1.y + cb6_6.tint_symbol_3[14u].z);
  let v_30 = (r2.yw * r4.yw);
  let v_31 = r2;
  r2 = vec4<f32>(v_31.x, v_30.x, v_31.z, v_30.y);
  r0.w = (r4.y * r5.z);
  let v_32 = -(r2.ywyy);
  let v_33 = fma(r5.xz, r4.xz, v_32.xy);
  r4 = vec4<f32>(v_33.xy, r4.zw);
  let v_34 = -(r0.wwww);
  r4.z = fma(r5.x, r4.w, v_34.z);
  r0.w = (1.0f / r4.x);
  let v_35 = (r0.ww * r4.yz);
  let v_36 = r2;
  r2 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  let v_37 = max(r2.yw, vec2<f32>());
  let v_38 = r2;
  r2 = vec4<f32>(v_38.x, v_37.x, v_38.z, v_37.y);
  let v_39 = min(r2.yw, vec2<f32>(0.5f));
  let v_40 = r2;
  r2 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  r0.w = fma((-(r1.wwww)).w, r2.y, r2.x);
  r0.w = fma((-(r1.wwww)).w, r2.w, r0.w);
  let v_41 = bitcast<u32>(r1.z);
  let v_42 = r0.w;
  r0.w = select(r2.z, v_42, (v_41 != 0u));
  let v_43 = r3.xyxx;
  r0.w = textureSampleCompareLevel(t15, s15, v_43.xy, r0.w);
  r1.y = clamp(fma(v1.zzzz, cb6_6.tint_symbol_3[0u].wwww, cb6_6.tint_symbol_3[1u].wwww).y, 0.0f, 1.0f);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r0.w = fma(r1.y, r1.x, r0.w);
  r0.w = (r0.w * r0.w);
  r0.w = min(r0.w, 1.0f);
  let v_44 = (cb3_3.tint_symbol_2[0u].zzz * cb4_4.tint_symbol_4[4u].xyz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = fma((-(r1.xyzx)).xyz, r0.www, cb4_4.tint_symbol_4[3u].xyz);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  r2 = textureSample(t3, s3, v3.xyxx.xy);
  let v_46 = (r2.xyz * r2.xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  let v_47 = (r1.xyz * r3.xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = (r1.xyz * cb4_4.tint_symbol_4[5u].yyy);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  r4 = vec4<f32>(((v1.xy / v1.zz)).xy, r4.zw);
  r5 = textureSample(t12, s12, r4.xyxx.xy);
  r4 = textureSample(t11, s11, r4.xyxx.xy);
  r1.w = (r4.x + (-(v1.zzzz)).w);
  r4.y = max(r1.w, 0.0f);
  let v_49 = (r5.xyz * cb2_2.tint_symbol_1[17u].www);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  let v_50 = (r2.xyz * r6.xyz);
  r2 = vec4<f32>(v_50.xyz, r2.w);
  let v_51 = (r2.xyz + r2.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = -(r2.xyzx);
  let v_53 = fma(r5.xyz, cb2_2.tint_symbol_1[17u].www, v_52.xyz);
  r5 = vec4<f32>(v_53.xyz, r5.w);
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_54 = (r0.xyz * r1.www);
  r6 = vec4<f32>(v_54.xyz, r6.w);
  let v_55 = fma(r0.xyz, r1.www, cb3_3.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  r4.x = (v1.w * v1.w);
  r4.z = (abs(r6.zzzz).z * r4.x);
  let v_56 = (r4.xy * r4.yz);
  let v_57 = r4;
  r4 = vec4<f32>(v_56.x, v_57.y, v_56.y, v_57.w);
  r1.w = min(r4.y, 1.0f);
  let v_58 = (r4.xz * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
  r4 = vec4<f32>(v_58.xy, r4.zw);
  let v_59 = exp2(r4.xy);
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = fma(r4.yyy, r5.xyz, r2.xyz);
  r2 = vec4<f32>(v_60.xyz, r2.w);
  let v_61 = fma((-(r1.xyzx)).xyz, cb4_4.tint_symbol_4[5u].yyy, r2.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = fma(r4.xxx, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_62.xyz, r1.w);
  r2 = (v5.xy.xyxy * cb10_10.tint_symbol_5[0u].yyyy);
  r2 = fma(-(r2), cb4_4.tint_symbol_4[1u].xxyy, v2.xyxy);
  let v_63 = (r2.xy * cb10_10.tint_symbol_5[0u].zz);
  r2 = vec4<f32>(v_63.xy, r2.zw);
  let v_64 = fma(r2.zw, cb10_10.tint_symbol_5[0u].zz, vec2<f32>(0.5f));
  r2 = vec4<f32>(r2.xy, v_64.xy);
  r3 = textureSample(t10, s10, r2.zwzz.xy).zwxy;
  r2 = textureSample(t10, s10, r2.xyxx.xy);
  let v_65 = r2;
  r3 = vec4<f32>(v_65.xy, r3.zw);
  r2 = fma(r3, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  r2 = (r2 * cb4_4.tint_symbol_4[1u].zzww);
  let v_66 = (r2.zw + r2.xy);
  r2 = vec4<f32>(v_66.xy, r2.zw);
  let v_67 = (r2.xy * cb10_10.tint_symbol_5[0u].xx);
  r2 = vec4<f32>(v_67.xy, r2.zw);
  let v_68 = fma(r2.xy, v2.ww, v4.xyz.xy);
  r2 = vec4<f32>(v_68.xy, r2.zw);
  r2.z = v4.z;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_69 = fma((-(r2.xyzx)).xyz, r2.www, vec3<f32>(0.0f, 0.0f, 1.0f));
  r3 = vec4<f32>(v_69.xyz, r3.w);
  let v_70 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_70.xyz, r2.w);
  let v_71 = fma(r3.xyz, vec3<f32>(0.8333333134651184082f), r2.xyz);
  r3 = vec4<f32>(v_71.xyz, r3.w);
  r2.w = dot(r6.xyz, r3.xyz);
  r2.w = (r2.w + r2.w);
  let v_72 = -(r2.wwww);
  let v_73 = fma(r3.xyz, v_72.xyz, r6.xyz);
  r3 = vec4<f32>(v_73.xyz, r3.w);
  r2.w = dot((-(r6.xyzx)).xyz, r2.xyz);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  let v_74 = (r3.xy * vec2<f32>(0.25f, 0.5f));
  r3 = vec4<f32>(v_74.xy, r3.zw);
  r3.z = (abs(r3.zzzz).z + 1.0f);
  let v_75 = (r3.xy / r3.zz);
  r3 = vec4<f32>(v_75.xy, r3.zw);
  let v_76 = ((-(r3.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_77 = r3;
  r3 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
  r4.x = ((-(r3.yyyy)).x + 1.0f);
  let v_78 = bitcast<u32>(r3.w);
  let v_79 = r4.x;
  r3.x = select(r3.y, v_79, (v_78 != 0u));
  r3 = textureSample(t1, s1, r3.xzxx.xy);
  let v_80 = ((-(r1.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_80.xyz, r3.w);
  r3.w = ((-(r2.wwww)).w + 1.0f);
  r4.x = fma(r3.w, 0.30000001192092895508f, r2.w);
  r4.y = 0.5f;
  r4 = textureSample(t6, s6, r4.xyxx.xy);
  let v_81 = fma(r4.xxx, r3.xyz, r1.xyz);
  r3 = vec4<f32>(v_81.xyz, r3.w);
  r2.w = dot(r0.xyz, r0.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_82 = (r0.xyz * r2.www);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = dot((-(r0.xyzx)).xyz, r2.xyz);
  r0.x = clamp(vec4<f32>(v_83, v_83, v_83, v_83).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_5[1u].x);
  r0.x = exp2(r0.x);
  r0.x = (r0.x * cb10_10.tint_symbol_5[0u].w);
  r0.x = (r0.w * r0.x);
  let v_84 = fma(cb4_4.tint_symbol_4[4u].xyz, r0.xxx, r3.xyz);
  r0 = vec4<f32>(v_84.xyz, r0.w);
  let v_85 = ((-(r1.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = fma(r1.www, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = ((-(r0.xyzx)).xyz + vec3<f32>(0.0f, 0.0f, 64.0f));
  r1 = vec4<f32>(v_87.xyz, r1.w);
  let v_88 = fma(cb4_4.tint_symbol_4[4u].www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_88.xyz, r0.w);
  let v_89 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_89.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5);
  return o0;
}
