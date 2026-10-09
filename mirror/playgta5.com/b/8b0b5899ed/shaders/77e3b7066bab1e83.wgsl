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

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
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
  let v_6 = (r2.xy * r2.xy);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  r3.z = fma((-(r2.zzzz)).z, 16.0f, 14.0f);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r3.zzzz).z)));
  let v_7 = (r3.xy * cb10_10.tint_symbol_5[0u].wz);
  r4 = vec4<f32>(v_7.xy, r4.zw);
  r0.w = (r0.w * v3.w);
  let v_8 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(r4.xy, v_8.xy);
  r3.w = fma(r1.z, 0.5f, 0.5f);
  r5.x = fma(r3.w, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r3.w = (r3.w + 0.30000001192092895508f);
  r3.w = (r4.w * r3.w);
  r4.w = (v7.z * cb13_13.tint_symbol_3[16u].x);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    let v_9 = fract(v7.xy);
    r6 = vec4<f32>(v_9.xy, r6.zw);
    let v_10 = abs(v7.zzzz);
    let v_11 = abs(v7.wwww);
    r6.z = fma(r6.y, v_10.z, v_11.z);
    r4.w = fract(cb13_13.tint_symbol_3[16u].z);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r4.w)));
    r6.w = ((-(r6.xxxx)).w + 1.0f);
    let v_12 = bitcast<vec4<u32>>(r4.wwww);
    let v_13 = r6.zwzw;
    r6 = select(r6.xzxz, v_13, (v_12 != vec4<u32>()));
    r7 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).zxyw;
    r5.y = ((-(r7.xxxx)).y + 1.0f);
    r5.z = (r5.y * r5.y);
    r5.z = (r7.y * r5.z);
    r3.y = fma((-(r3.yyyy)).y, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_3[6u].w);
    r4.y = fma(r5.z, r3.y, r4.y);
    r3.x = fma((-(r3.xxxx)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_3[7u].w);
    r4.x = fma(r5.z, r3.x, r4.x);
    let v_14 = -(r0.xyzx);
    let v_15 = fma(r0.xyz, cb13_13.tint_symbol_3[7u].xyz, v_14.xyz);
    r8 = vec4<f32>(v_15.xyz, r8.w);
    let v_16 = fma(r7.zzz, r8.xyz, r0.xyz);
    r8 = vec4<f32>(v_16.xyz, r8.w);
    let v_17 = (r7.yyy * cb13_13.tint_symbol_3[6u].xyz);
    r9 = vec4<f32>(v_17.xyz, r9.w);
    let v_18 = fma(r8.xyz, r7.xxx, r9.xyz);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[16u].y == 0.0f))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_19 = fract(cb13_13.tint_symbol_3[16u].ww);
      let v_20 = r8;
      r8 = vec4<f32>(v_20.x, v_19.x, v_20.z, v_19.y);
      let v_21 = (r8.ww * vec2<f32>(0.40000000596046447754f));
      let v_22 = r8;
      r8 = vec4<f32>(v_21.x, v_22.y, v_21.y, v_22.w);
      let v_23 = bitcast<vec4<u32>>(r4.wwww);
      let v_24 = r8;
      r8 = select(r8.wzwz, v_24, (v_23 != vec4<u32>()));
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.w) == bitcast<i32>(r3.x))));
      r9 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r3.xxxx) != vec4<u32>()));
      r6 = fma(r9, r8, r6);
      r8 = textureSampleLevel(t15, s15, r6.xyxx.xy, 0.0f);
      r6 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).yzxw;
      r6.x = r7.y;
      r6.y = r8.x;
      r3.x = (r5.y * r6.x);
      let v_25 = -(r3.xxxx);
      let v_26 = fma(r6.zy, r5.yy, v_25.xy);
      r3 = vec4<f32>(v_26.xy, r3.zw);
      let v_27 = (r3.xy * cb13_13.tint_symbol_3[16u].yy);
      r6 = vec4<f32>(v_27.xy, r6.zw);
      r3.x = dot(r6.xy, r6.xy);
      r3.x = ((-(r3.xxxx)).x + 1.0f);
      r3.x = max(r3.x, 0.0f);
      let v_28 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      let v_29 = r5;
      r5 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
      let v_30 = bitcast<vec2<u32>>(r5.zz);
      let v_31 = r6.yx;
      let v_32 = select(r6.xy, v_31, (v_30 != vec2<u32>()));
      r5 = vec4<f32>(r5.xy, v_32.xy);
      r6.z = (-(r6.xxxx)).z;
      let v_33 = bitcast<vec2<u32>>(r5.yy);
      let v_34 = r6.yz;
      let v_35 = select(r5.zw, v_34, (v_33 != vec2<u32>()));
      let v_36 = r5;
      r5 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
      let v_37 = (r5.zzz * v6.xyz);
      r6 = vec4<f32>(v_37.xyz, r6.w);
      let v_38 = fma(r5.yyy, v5.xyz, r6.xyz);
      r5 = vec4<f32>(r5.x, v_38.xyz);
      let v_39 = fma(r3.xxx, r1.xyz, r5.yzw);
      r5 = vec4<f32>(r5.x, v_39.xyz);
      r3.x = dot(r5.yzw, r5.yzw);
      r3.x = inverseSqrt(r3.x);
      let v_40 = (r3.xxx * r5.yzw);
      r1 = vec4<f32>(v_40.xyz, r1.w);
    }
  } else {
    r7.x = 1.0f;
  }
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r2.w = (r2.w * r7.x);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      let v_41 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r2 = vec4<f32>(v_41.xy, r2.zw);
      r6 = textureSample(t2, s2, r2.xyzx.xyz).yzxw;
      let v_42 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r6 = vec4<f32>(v_42.xy, r6.zw);
    } else {
      let v_43 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r2 = vec4<f32>(v_43.xy, r2.zw);
      r8 = textureSample(t2, s2, r2.xyzx.xyz);
      r3.x = select(3.0f, 2.0f, (bitcast<u32>(r1.w) != 0u));
      let v_44 = (r3.xx * v1.xy);
      r2 = vec4<f32>(v_44.xy, r2.zw);
      r9 = textureSample(t2, s2, r2.xyzx.xyz);
      let v_45 = fma(r9.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r2 = vec4<f32>(v_45.xyz, r2.w);
      let v_46 = fma(r8.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r5 = vec4<f32>(r5.x, v_46.xyz);
      let v_47 = ((-(r2.xxyz)).yzw + r5.yzw);
      r5 = vec4<f32>(r5.x, v_47.xyz);
      let v_48 = fma(cb13_13.tint_symbol_3[5u].xxx, r5.yzw, r2.xyz);
      r6 = vec4<f32>(v_48.xyz, r6.w);
    }
    r8 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
    let v_49 = (r8.yw + cb11_11.tint_symbol_4[0u].xy);
    r2 = vec4<f32>(v_49.xy, r2.zw);
    let v_50 = fma(cb13_13.tint_symbol_3[5u].xx, r2.xy, r8.xz);
    r2 = vec4<f32>(v_50.xy, r2.zw);
    r2.z = (r8.y + cb13_13.tint_symbol_3[3u].z);
    r2.z = fma(cb13_13.tint_symbol_3[5u].x, r2.z, r8.x);
    r3.x = fma(r6.z, 2.0f, -1.0f);
    r2.x = (r2.x * r3.x);
    r2.x = (r2.w * r2.x);
    r2.x = fma(r2.x, r2.z, 1.0f);
    let v_51 = (r0.xyz * r2.xxx);
    r0 = vec4<f32>(v_51.xyz, r0.w);
    let v_52 = (r6.yyy * v6.xyz);
    r5 = vec4<f32>(r5.x, v_52.xyz);
    let v_53 = fma(v5.xyz, r6.xxx, r5.yzw);
    r5 = vec4<f32>(r5.x, v_53.xyz);
    let v_54 = (r2.yyy * r5.yzw);
    r5 = vec4<f32>(r5.x, v_54.xyz);
    let v_55 = (r2.www * r5.yzw);
    r2 = vec4<f32>(v_55.xy, r2.z, v_55.z);
    let v_56 = fma(r2.xyw, r2.zzz, r1.xyz);
    r2 = vec4<f32>(v_56.xyz, r2.w);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_57 = (r2.www * r2.xyz);
    r1 = vec4<f32>(v_57.xyz, r1.w);
  }
  r2 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r2.zw);
  let v_58 = clamp(((r2.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_58.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_59 = (r0.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r5 = vec4<f32>(r5.x, v_59.xyz);
  let v_60 = (r2.xxx * r5.yzw);
  r5 = vec4<f32>(r5.x, v_60.xyz);
  let v_61 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.zzz) & bitcast<vec3<u32>>(r5.yzw)));
  r2 = vec4<f32>(v_61.x, r2.y, v_61.yz);
  let v_62 = -(r2.xzwx);
  let v_63 = (r0.xyz + v_62.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  let v_64 = fma(cb13_13.tint_symbol_3[17u].yz, r2.yy, r4.yx);
  r2 = vec4<f32>(v_64.xy, r2.zw);
  let v_65 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  r2.z = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r1.w + r2.y);
  r1.w = fma(cb13_13.tint_symbol_3[4u].z, r1.w, r2.z);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_66 = (r2.yyy * v4.xyz);
  r4 = vec4<f32>(v_66.xy, r4.z, v_66.z);
  r2.z = dot(r1.xyz, r1.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_67 = (r1.xyz * r2.zzz);
  r5 = vec4<f32>(r5.x, v_67.xyz);
  let v_68 = dot(r4.xyw, r5.yzw);
  r2.z = clamp(vec4<f32>(v_68, v_68, v_68, v_68).z, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 0.5f);
  r2.z = clamp(((r2.zzzz * vec4<f32>(2.5f))).z, 0.0f, 1.0f);
  r2.w = fma(r2.z, -2.0f, 3.0f);
  r2.z = (r2.z * r2.z);
  r2.z = (r2.z * r2.w);
  r2.w = (r1.z + 1.0f);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r2.w = (r2.w * 1.42857146263122558594f);
  let v_69 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r4 = vec4<f32>(v_69.xy, r4.z, v_69.z);
  r2.z = (r2.z * r4.x);
  r2.z = (r2.w * r2.z);
  let v_70 = (r0.xyz * r2.zzz);
  r5 = vec4<f32>(r5.x, v_70.xyz);
  let v_71 = fma(r5.yzw, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_71.xyz, o0.w);
  let v_72 = -(r1.xyzx);
  let v_73 = fma(v4.xyz, r2.yyy, v_72.xyz);
  r0 = vec4<f32>(v_73.xyz, r0.w);
  let v_74 = fma(r4.yyy, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_74.xyz, r0.w);
  r1.x = ((-(r7.xxxx)).x + 1.0f);
  r1.y = ((-(r4.wwww)).y + cb13_13.tint_symbol_3[8u].y);
  r1.x = fma(r1.x, r1.y, r4.w);
  r1.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r3.y = (r1.y * r3.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_75 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = (r0.xyz * vec3<f32>(256.0f));
  r2 = vec4<f32>(r2.x, v_76.xyz);
  let v_77 = floor(r2.yzw);
  r2 = vec4<f32>(r2.x, v_77.xyz);
  let v_78 = -(r2.yzwy);
  let v_79 = fma(r0.xyz, vec3<f32>(256.0f), v_78.xyz);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = floor(r0.xyz);
  r0 = vec4<f32>(v_81.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_82 = (r2.yzw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_82.xyz, o1.w);
  r0.x = (r2.x * 0.001953125f);
  r3.x = fma(r5.x, r4.z, cb3_3.tint_symbol_1[45u].w);
  let v_83 = (r3.xy * vec2<f32>(0.5f));
  let v_84 = r0;
  r0 = vec4<f32>(v_84.x, v_83.xy, v_84.w);
  let v_85 = sqrt(r0.yz);
  o3 = vec4<f32>(v_85.xy, o3.zw);
  r0.y = (r1.x + 1.01960790157318115234f);
  let v_86 = bitcast<u32>(r3.z);
  let v_87 = r1.x;
  r0.y = select(r0.y, v_87, (v_86 != 0u));
  o3.w = (r0.y * 0.49607843160629272461f);
  o2.x = sqrt(r1.w);
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
