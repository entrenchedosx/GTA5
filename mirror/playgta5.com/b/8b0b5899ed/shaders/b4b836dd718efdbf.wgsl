diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

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

struct cb18_struct {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb4_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb4_struct_1;

struct cb1_struct {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r1 = textureSample(t4, s4, v7.xy.xyxx.xy);
  r0.z = (r0.w * r1.x);
  r1.x = r0.y;
  r1.y = cb13_13.tint_symbol_4[3u].x;
  r2 = textureSample(t13, s13, r1.xyxx.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_4[3u].y == cb13_13.tint_symbol_4[3u].x))));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r1.z = cb13_13.tint_symbol_4[3u].y;
    r1 = textureSample(t13, s13, r1.xzxx.xy);
    r0.y = ((-(r0.xxxx)).y + 1.0f);
    let v_2 = (r0.yyy * r2.xyz);
    r3 = vec4<f32>(v_2.xyz, r3.w);
    let v_3 = fma(r1.xyz, r0.xxx, r3.xyz);
    r2 = vec4<f32>(v_3.xyz, r2.w);
  }
  let v_4 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1 = textureSample(t3, s3, r0.xyxx.xy);
  r0.x = clamp(fma(r1.wwww, vec4<f32>(2.0f), cb8_8.tint_symbol_6[0u].xxxx).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.z);
  r0.x = (r0.x * cb2_2.tint_symbol_1[15u].x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.5f)));
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.xx)));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.y)));
  v_7((bitcast<u32>(r0.y) != 0u));
  r3 = textureSample(t5, s5, v1.xyz.xyxx.xy);
  let v_8 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.y = max(cb10_10.tint_symbol_5[3u].x, 0.00100000004749745131f);
  let v_10 = (r0.yz * r1.yy);
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = (r0.zzz * v6.xyz);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = fma(r0.yyy, v5.xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  let v_14 = fma(r0.www, v2.xyz, r1.yzw);
  r0 = vec4<f32>(r0.x, v_14.xyz);
  r1.y = dot(r0.yzw, r0.yzw);
  r1.y = inverseSqrt(r1.y);
  let v_15 = (r0.yzw * r1.yyy);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  r4 = textureSample(t6, s6, v1.xyz.xyxx.xy);
  let v_16 = (r4.yx * r4.yx);
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r4.z >= 0.8125f)));
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  let v_18 = (v3.xx * cb2_2.tint_symbol_1[15u].zy);
  r4 = vec4<f32>(v_18.xy, r4.zw);
  r1.w = fma(r3.z, 0.5f, 0.5f);
  r2.w = fma(r1.w, cb5_5.tint_symbol_3[3u].y, cb5_5.tint_symbol_3[3u].x);
  r1.w = (r1.w + 0.30000001192092895508f);
  r1.w = (r4.y * r1.w);
  let v_19 = (v1.xyz.zz + vec2<f32>(0.0f, -0.75f));
  let v_20 = r4;
  r4 = vec4<f32>(v_20.x, v_19.x, v_20.z, v_19.y);
  let v_21 = clamp(((r4.yyyw * vec4<f32>(0.0f, 4.0f, 0.0f, 4.0f))).yw, vec2<f32>(), vec2<f32>(1.0f));
  let v_22 = r4;
  r4 = vec4<f32>(v_22.x, v_21.x, v_22.z, v_21.y);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) == 0i)));
  let v_23 = (r2.xyz * cb13_13.tint_symbol_4[17u].xxx);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = (r4.yyy * r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.www) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_25.xyz, r5.w);
  let v_26 = -(r5.xyzx);
  let v_27 = (r2.xyz + v_26.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = (r4.ww * cb13_13.tint_symbol_4[17u].yz);
  let v_29 = r4;
  r4 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  let v_30 = fma(r0.yz, cb10_10.tint_symbol_5[3u].zw, r4.yw);
  let v_31 = r0;
  r0 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
  let v_32 = (r2.xyz * cb13_13.tint_symbol_4[4u].xxx);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r3.w = bitcast<f32>((bitcast<u32>(r1.z) & 1008981770u));
  r1.z = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.z) != 0u));
  r0.z = (r0.z + r1.z);
  r0.z = fma(cb13_13.tint_symbol_4[4u].z, r0.z, r3.w);
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_33 = (r1.zzz * v4.xyz);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  let v_34 = dot(r5.xyz, r3.xyz);
  r1.z = clamp(vec4<f32>(v_34, v_34, v_34, v_34).z, 0.0f, 1.0f);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = fma(r1.z, 0.40000000596046447754f, 0.5f);
  r0.w = fma(r0.w, r1.y, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * 1.42857146263122558594f);
  r1.y = clamp(v8.x, 0.0f, 1.0f);
  r1.y = (r1.y * r1.z);
  r0.w = (r0.w * r1.y);
  let v_35 = (r2.xyz * r0.www);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  let v_36 = fma(r6.xyz, cb13_13.tint_symbol_4[4u].yyy, r2.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_37 = (r0.www * v6.xyz);
  r6 = vec4<f32>(v_37.xyz, r6.w);
  let v_38 = (v1.xyz.xy * cb10_10.tint_symbol_5[2u].zw);
  let v_39 = r1;
  r1 = vec4<f32>(v_39.x, v_38.xy, v_39.w);
  let v_40 = (r1.yz * vec2<f32>(0.5f));
  let v_41 = r1;
  r1 = vec4<f32>(v_41.x, v_40.xy, v_41.w);
  r7 = textureSample(t3, s3, r1.yzyy.xy);
  let v_42 = fma(r7.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_43 = r1;
  r1 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
  let v_44 = (r1.yz * vec2<f32>(0.10000000149011611938f));
  let v_45 = r1;
  r1 = vec4<f32>(v_45.x, v_44.xy, v_45.w);
  let v_46 = fma(v2.xyz, r1.yyy, r6.xyz);
  r7 = vec4<f32>(v_46.xyz, r7.w);
  r0.w = dot(r7.xyz, r7.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_47 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  r0.w = dot(r5.xyz, r7.xyz);
  r1.y = dot(cb1_1.tint_symbol[14u].xyz, r7.xyz);
  let v_48 = fma(v2.xyz, r1.zzz, r6.xyz);
  r6 = vec4<f32>(v_48.xyz, r6.w);
  r1.z = dot(r6.xyz, r6.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_49 = (r1.zzz * r6.xyz);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  r1.z = dot(r5.xyz, r6.xyz);
  r3.w = dot(cb1_1.tint_symbol[14u].xyz, r6.xyz);
  r4.y = fma((-(r0.wwww)).y, r0.w, 1.0f);
  r4.w = fma((-(r1.yyyy)).w, r1.y, 1.0f);
  let v_50 = sqrt(r4.yw);
  let v_51 = r4;
  r4 = vec4<f32>(v_51.x, v_50.x, v_51.z, v_50.y);
  r0.w = (r0.w * r1.y);
  let v_52 = -(r0.wwww);
  r0.w = fma(r4.y, r4.w, v_52.w);
  r1.y = fma((-(r1.zzzz)).y, r1.z, 1.0f);
  r1.y = sqrt(r1.y);
  r4.y = fma((-(r3.wwww)).y, r3.w, 1.0f);
  r4.y = sqrt(r4.y);
  r1.z = (r1.z * r3.w);
  let v_53 = -(r1.zzzz);
  r1.y = fma(r1.y, r4.y, v_53.y);
  let v_54 = (cb10_10.tint_symbol_5[0u].zw + vec2<f32>(8.0f, 16.0f));
  let v_55 = r4;
  r4 = vec4<f32>(v_55.x, v_54.x, v_55.z, v_54.y);
  r0.w = log2(abs(r0.wwww).w);
  r0.w = (r0.w * r4.y);
  r0.w = exp2(r0.w);
  r1.y = log2(abs(r1.yyyy).y);
  r1.y = (r1.y * r4.w);
  r1.y = exp2(r1.y);
  r1.z = (r1.y * cb10_10.tint_symbol_5[0u].y);
  r0.w = fma(r0.w, cb10_10.tint_symbol_5[0u].x, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < 0.03125f)));
  r3.w = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r0.w = (r1.x * r0.w);
  let v_56 = bitcast<u32>(r1.z);
  r0.w = select(1.0f, r0.w, (v_56 != 0u));
  r0.z = (r0.w * r0.z);
  let v_57 = (r1.yyy * cb10_10.tint_symbol_5[1u].xyz);
  r1 = vec4<f32>(v_57.xyz, r1.w);
  let v_58 = (r3.www * r1.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = fma(r1.xyz, vec3<f32>(0.5f), r2.xyz);
  o0 = vec4<f32>(v_59.xyz, o0.w);
  r0.w = clamp(((cb2_2.tint_symbol_1[16u].zzzz + cb3_3.tint_symbol_2[49u].wwww)).w, 0.0f, 1.0f);
  r1.y = (r0.w * r1.w);
  let v_60 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_60.xyz, o1.w);
  r0.y = (r0.y * 0.001953125f);
  r1.x = fma(r2.w, r4.x, cb3_3.tint_symbol_2[45u].w);
  let v_61 = (r1.xy * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_61.xy, r1.zw);
  let v_62 = sqrt(r1.xy);
  o3 = vec4<f32>(v_62.xy, o3.zw);
  let v_63 = sqrt(r0.zy);
  o2 = vec4<f32>(v_63.xy, o2.zw);
  r0.x = fma(r0.x, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2.z = cb10_10.tint_symbol_5[3u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_7(v_64 : bool) {
  if (v_64) {
    discard;
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
fn main(@builtin(position) v_65 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v_65, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_7(o0, o1, o2, o3);
}
