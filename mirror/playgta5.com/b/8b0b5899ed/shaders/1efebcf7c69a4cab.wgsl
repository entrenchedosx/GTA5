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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[9u].xyz);
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.z);
  let v_2 = (r0.www * r3.xyz);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[10u].xyz);
  r5 = vec4<f32>(v_3.xyz, r5.w);
  r1.w = dot(r5.xyz, r5.xyz);
  r3.w = inverseSqrt(r1.w);
  let v_4 = (r3.www * r5.xyz);
  r6 = vec4<f32>(v_4.xyz, r6.w);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r4.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r5.w = fma(r4.w, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r5.w);
  let v_5 = -(cb12_12.tint_symbol_2[12u].xyzx);
  r5.w = dot(r4.xyz, v_5.xyz);
  r5.w = clamp(fma(r5.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r0.z = (r0.z * r5.w);
  r2.w = 1.0f;
  r2.x = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  r0.z = (r0.z * r2.x);
  r1.w = clamp(fma(-(r1.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.y = fma(r4.w, r1.w, cb12_12.tint_symbol_2[7u].x);
  r1.w = (r1.w / r2.y);
  let v_6 = -(cb12_12.tint_symbol_2[13u].xyzx);
  r2.y = dot(r6.xyz, v_6.xyz);
  r2.y = clamp(fma(r2.yyyy, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).y, 0.0f, 1.0f);
  r1.w = (r1.w * r2.y);
  r1.w = (r2.x * r1.w);
  r2.x = max(r0.z, r1.w);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.00000099999999747524f)));
  v_7((bitcast<u32>(r2.x) != 0u));
  r2 = textureSample(t7, s7, r0.xyxx.xy);
  let v_8 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r7 = textureSample(t9, s9, r0.xyxx.xy);
  let v_9 = (r7.xy * r7.xy);
  r7 = vec4<f32>(v_9.xy, r7.zw);
  r8 = textureSample(t8, s8, r0.xyxx.xy);
  let v_10 = (r8.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r9 = vec4<f32>(v_10.xyz, r9.w);
  let v_11 = fract(r9.xyz);
  r9 = vec4<f32>(v_11.xyz, r9.w);
  let v_12 = fma((-(r9.yzyy)).xy, vec2<f32>(0.125f), r9.xy);
  r9 = vec4<f32>(v_12.xy, r9.zw);
  let v_13 = fma(r8.xyz, vec3<f32>(256.0f), r9.xyz);
  r8 = vec4<f32>(v_13.xyz, r8.w);
  let v_14 = (r8.xyz + vec3<f32>(-128.0f));
  r8 = vec4<f32>(v_14.xyz, r8.w);
  r0.x = dot(r8.xyz, r8.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_15 = (r0.xxx * r8.xyz);
  r8 = vec4<f32>(v_15.xyz, r8.w);
  r0.x = min(r7.x, 1.0f);
  r0.y = fma(r7.y, 512.0f, -500.0f);
  r0.y = max(r0.y, 0.0f);
  let v_16 = -(r0.yyyy);
  r2.w = fma(r7.y, 512.0f, v_16.w);
  r0.y = (r0.y * 558.0f);
  r0.y = fma(r2.w, 3.0f, r0.y);
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_17 = (r1.xyz * r2.www);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = -(r1.xyzx);
  let v_19 = fma(r3.xyz, r0.www, v_18.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = -(r1.xyzx);
  let v_22 = fma(r5.xyz, r3.www, v_21.xyz);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  r0.w = dot(r5.xyz, r5.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_23 = (r0.www * r5.xyz);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = -(cb12_12.tint_symbol_2[12u].zxzy);
  let v_25 = (cb12_12.tint_symbol_2[2u].yzx * v_24.xyw);
  r7 = vec4<f32>(v_25.xy, r7.z, v_25.z);
  let v_26 = -(cb12_12.tint_symbol_2[12u].yzyx);
  let v_27 = -(r7.xyxw);
  let v_28 = fma(v_26.xyw, cb12_12.tint_symbol_2[2u].zxy, v_27.xyw);
  r7 = vec4<f32>(v_28.xy, r7.z, v_28.z);
  let v_29 = -(r4.xyzx);
  r7.x = dot(r7.xyw, v_29.xyz);
  let v_30 = -(r4.xyzx);
  r7.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_30.xyz);
  r0.w = dot(v_5.xyz, (-(r4.xyzx)).xyz);
  r2.w = fma((-(cb12_12.tint_symbol_2[5u].xxxx)).w, cb12_12.tint_symbol_2[5u].x, 1.0f);
  r2.w = sqrt(r2.w);
  r2.w = (cb12_12.tint_symbol_2[5u].x / r2.w);
  r2.w = (r2.w * 0.5f);
  r0.w = (r2.w / r0.w);
  let v_31 = clamp(fma(r7.xyxx, r0.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r9 = vec4<f32>(v_31.xy, r9.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[11u].x == 1.0f)));
  r3.w = ((-(r9.yyyy)).w + 1.0f);
  let v_32 = bitcast<u32>(r0.w);
  let v_33 = r3.w;
  r9.z = select(r9.y, v_33, (v_32 != 0u));
  r9 = textureSampleLevel(t2, s2, r9.xzxx.xy, 0.0f);
  let v_34 = fma(r9.xyz, r9.xyz, vec3<f32>(-1.0f));
  r7 = vec4<f32>(v_34.xy, r7.z, v_34.z);
  let v_35 = fma(cb12_12.tint_symbol_2[11u].yyy, r7.xyw, vec3<f32>(1.0f));
  r7 = vec4<f32>(v_35.xy, r7.z, v_35.z);
  let v_36 = (r7.xyw * cb12_12.tint_symbol_2[3u].xyz);
  r7 = vec4<f32>(v_36.xy, r7.z, v_36.z);
  let v_37 = (r7.xyw * cb12_12.tint_symbol_2[3u].www);
  r7 = vec4<f32>(v_37.xy, r7.z, v_37.z);
  let v_38 = -(cb12_12.tint_symbol_2[13u].zxyz);
  let v_39 = (cb12_12.tint_symbol_2[2u].yzx * v_38.xyz);
  r9 = vec4<f32>(v_39.xyz, r9.w);
  let v_40 = -(cb12_12.tint_symbol_2[13u].yzxy);
  let v_41 = -(r9.xyzx);
  let v_42 = fma(v_40.xyz, cb12_12.tint_symbol_2[2u].zxy, v_41.xyz);
  r9 = vec4<f32>(v_42.xyz, r9.w);
  let v_43 = -(r6.xyzx);
  r9.x = dot(r9.xyz, v_43.xyz);
  let v_44 = -(r6.xyzx);
  r9.y = dot(cb12_12.tint_symbol_2[2u].xyz, v_44.xyz);
  r3.w = dot(v_6.xyz, (-(r6.xyzx)).xyz);
  r2.w = (r2.w / r3.w);
  let v_45 = clamp(fma(r9.xyxx, r2.wwww, vec4<f32>(0.5f, 0.5f, 0.0f, 0.0f)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r9 = vec4<f32>(v_45.xy, r9.zw);
  r2.w = ((-(r9.yyyy)).w + 1.0f);
  let v_46 = bitcast<u32>(r0.w);
  let v_47 = r2.w;
  r9.z = select(r9.y, v_47, (v_46 != 0u));
  r9 = textureSampleLevel(t2, s2, r9.xzxx.xy, 0.0f);
  let v_48 = fma(r9.xyz, r9.xyz, vec3<f32>(-1.0f));
  r9 = vec4<f32>(v_48.xyz, r9.w);
  let v_49 = fma(cb12_12.tint_symbol_2[11u].yyy, r9.xyz, vec3<f32>(1.0f));
  r9 = vec4<f32>(v_49.xyz, r9.w);
  let v_50 = (r9.xyz * cb12_12.tint_symbol_2[3u].xyz);
  r9 = vec4<f32>(v_50.xyz, r9.w);
  let v_51 = (r9.xyz * cb12_12.tint_symbol_2[3u].www);
  r9 = vec4<f32>(v_51.xyz, r9.w);
  let v_52 = dot(r8.xyz, r4.xyz);
  r0.w = clamp(vec4<f32>(v_52, v_52, v_52, v_52).w, 0.0f, 1.0f);
  let v_53 = dot((-(r1.xyzx)).xyz, r8.xyz);
  r1.x = clamp(vec4<f32>(v_53, v_53, v_53, v_53).x, 0.0f, 1.0f);
  let v_54 = dot(r3.xyz, r4.xyz);
  r1.y = clamp(vec4<f32>(v_54, v_54, v_54, v_54).y, 0.0f, 1.0f);
  let v_55 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_55.xy, r4.zw);
  let v_56 = (r4.xy * r4.xy);
  r4 = vec4<f32>(r4.xy, v_56.xy);
  let v_57 = (r4.zw * r4.zw);
  r4 = vec4<f32>(r4.xy, v_57.xy);
  let v_58 = (r4.xy * r4.zw);
  r4 = vec4<f32>(v_58.xy, r4.zw);
  r1.y = ((-(r7.zzzz)).y + 1.0f);
  let v_59 = fma(r7.zz, r4.xy, r1.yy);
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = (r0.yy + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(r4.xy, v_60.xy);
  r0.y = (r4.z * 0.125f);
  r2.w = fma((-(r0.xxxx)).w, r4.x, 1.0f);
  r3.x = dot(r8.xyz, r3.xyz);
  r3.x = clamp(((r3.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r3.x = log2(r3.x);
  r3.x = (r3.x * r4.w);
  r3.x = exp2(r3.x);
  r3.x = (r4.y * r3.x);
  r3.x = (r0.y * r3.x);
  r3.x = (r0.x * r3.x);
  r3.x = (r0.w * r3.x);
  r0.w = (r0.w * r2.w);
  let v_61 = dot(r8.xyz, r6.xyz);
  r2.w = clamp(vec4<f32>(v_61, v_61, v_61, v_61).w, 0.0f, 1.0f);
  let v_62 = dot(r5.xyz, r6.xyz);
  r1.z = clamp(vec4<f32>(v_62, v_62, v_62, v_62).z, 0.0f, 1.0f);
  let v_63 = ((-(r1.xxzx)).xz + vec2<f32>(1.0f));
  let v_64 = r1;
  r1 = vec4<f32>(v_63.x, v_64.y, v_63.y, v_64.w);
  let v_65 = (r1.xz * r1.xz);
  let v_66 = r3;
  r3 = vec4<f32>(v_66.x, v_65.xy, v_66.w);
  let v_67 = (r3.yz * r3.yz);
  let v_68 = r3;
  r3 = vec4<f32>(v_68.x, v_67.xy, v_68.w);
  let v_69 = (r1.xz * r3.yz);
  let v_70 = r1;
  r1 = vec4<f32>(v_69.x, v_70.y, v_69.y, v_70.w);
  let v_71 = fma(r7.zz, r1.xz, r1.yy);
  r1 = vec4<f32>(v_71.xy, r1.zw);
  r1.x = fma((-(r0.xxxx)).x, r1.x, 1.0f);
  r1.z = dot(r8.xyz, r5.xyz);
  r1.z = clamp(((r1.zzzz + vec4<f32>(0.00000000999999993923f))).z, 0.0f, 1.0f);
  r1.z = log2(r1.z);
  r1.z = (r1.z * r4.w);
  r1.z = exp2(r1.z);
  r1.y = (r1.y * r1.z);
  r0.y = (r0.y * r1.y);
  r0.x = (r0.x * r0.y);
  r0.x = (r2.w * r0.x);
  r0.y = (r1.x * r2.w);
  r1.x = (r3.x * cb12_12.tint_symbol_2[8u].z);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_72 = fma(r2.xyz, r0.www, r1.xxx);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  let v_73 = (r7.xyw * r1.xyz);
  r1 = vec4<f32>(v_73.xyz, r1.w);
  let v_74 = fma(r2.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_74.xy, r0.z, v_74.z);
  let v_75 = (r9.xyz * r0.xyw);
  r0 = vec4<f32>(v_75.xy, r0.z, v_75.z);
  let v_76 = (r1.www * r0.xyw);
  r0 = vec4<f32>(v_76.xy, r0.z, v_76.z);
  let v_77 = fma(r1.xyz, r0.zzz, r0.xyw);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  let v_78 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_78.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_79 : bool) {
  if (v_79) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
