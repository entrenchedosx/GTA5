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

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

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

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t4, s4, v1.xyxx.xy);
  let v = (r1.xy * r1.xy);
  r2 = vec4<f32>(v.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.8125f)));
  r2.w = fma((-(r1.zzzz)).w, 16.0f, 14.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r2.wwww).w)));
  let v_1 = (r2.xy * cb10_10.tint_symbol_5[0u].wz);
  r3 = vec4<f32>(v_1.xy, r3.zw);
  r4 = textureSample(t6, s6, v1.xyxx.xy);
  r3.z = dot(cb13_13.tint_symbol_3[10u], r4);
  r4 = textureSample(t7, s7, v1.xyxx.xy);
  r3.w = dot(cb13_13.tint_symbol_3[11u], r4);
  r3.z = (r3.w + r3.z);
  r4 = textureSample(t8, s8, v1.xyxx.xy);
  r3.w = dot(cb13_13.tint_symbol_3[12u], r4);
  r4 = textureSample(t9, s9, v1.xyxx.xy);
  r4.x = dot(cb13_13.tint_symbol_3[13u], r4);
  r3.w = (r3.w + r4.x);
  r4 = textureSample(t3, s3, v1.xyxx.xy);
  r5 = textureSample(t10, s10, v1.xyxx.xy);
  let v_2 = ((-(r4.xxxy)).zw + r5.xy);
  r4 = vec4<f32>(r4.xy, v_2.xy);
  let v_3 = fma(r3.zz, r4.zw, r4.xy);
  r4 = vec4<f32>(v_3.xy, r4.zw);
  r5 = textureSample(t11, s11, v1.xyxx.xy);
  let v_4 = ((-(r4.xxxy)).zw + r5.xy);
  r4 = vec4<f32>(r4.xy, v_4.xy);
  let v_5 = fma(r3.ww, r4.zw, r4.xy);
  r3 = vec4<f32>(r3.xy, v_5.xy);
  let v_6 = fma(r3.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(r3.xy, v_6.xy);
  r4.x = dot(r3.zw, r3.zw);
  r4.x = ((-(r4.xxxx)).x + 1.0f);
  r4.x = sqrt(abs(r4.xxxx).x);
  r4.y = max(cb10_10.tint_symbol_5[0u].x, 0.00100000004749745131f);
  let v_7 = (r3.zw * r4.yy);
  r3 = vec4<f32>(r3.xy, v_7.xy);
  let v_8 = (r3.www * v6.xyz);
  r4 = vec4<f32>(r4.x, v_8.xyz);
  let v_9 = fma(r3.zzz, v5.xyz, r4.yzw);
  r4 = vec4<f32>(r4.x, v_9.xyz);
  let v_10 = fma(r4.xxx, v2.xyz, r4.yzw);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = inverseSqrt(r3.z);
  let v_11 = (r3.zzz * r4.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v4.w))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r5 = textureSample(t5, s5, v1.xyxx.xy);
    let v_12 = -(r0.xyzx);
    let v_13 = fma(r5.xyz, cb13_13.tint_symbol_3[9u].xyz, v_12.xyz);
    r5 = vec4<f32>(v_13.xyz, r5.w);
    let v_14 = fma(v4.www, r5.xyz, r0.xyz);
    r0 = vec4<f32>(v_14.xyz, r0.w);
  }
  r0.w = (r0.w * v3.w);
  let v_15 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r3 = vec4<f32>(r3.xy, v_15.xy);
  r4.w = fma(r4.z, 0.5f, 0.5f);
  r5.x = fma(r4.w, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r4.w = (r4.w + 0.30000001192092895508f);
  r3.w = (r3.w * r4.w);
  r4.w = (v7.z * cb13_13.tint_symbol_3[16u].x);
  r4.w = bitcast<f32>(select(0u, 4294967295u, !((r4.w == 0.0f))));
  if ((bitcast<u32>(r4.w) != 0u)) {
    let v_16 = fract(v7.yx);
    let v_17 = r6;
    r6 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
    let v_18 = abs(v7.zzzz);
    let v_19 = abs(v7.wwww);
    r6.w = fma(r6.x, v_18.w, v_19.w);
    r6.x = fma(r6.x, v1.w, v2.w);
    r4.w = fract(cb13_13.tint_symbol_3[16u].z);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r4.w)));
    r6.y = ((-(r6.zzzz)).y + 1.0f);
    let v_20 = bitcast<vec4<u32>>(r4.wwww);
    let v_21 = r6.wywy;
    r7 = select(r6.zwzw, v_21, (v_20 != vec4<u32>()));
    r5.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    let v_22 = bitcast<vec2<u32>>(r5.yy);
    let v_23 = r6.xy;
    let v_24 = select(r6.zx, v_23, (v_22 != vec2<u32>()));
    let v_25 = r5;
    r5 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
    r6 = textureSampleLevel(t14, s14, r5.yzyy.xy, 0.0f);
    r8 = textureSampleLevel(t15, s15, r7.zwzz.xy, 0.0f).zxyw;
    r5.y = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r5.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_26 = bitcast<u32>(r2.z);
    let v_27 = r5.y;
    r5.y = select(r5.z, v_27, (v_26 != 0u));
    r5.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_3[16u].x)));
    r5.y = bitcast<f32>((bitcast<u32>(r5.y) & bitcast<u32>(r5.z)));
    let v_28 = bitcast<vec4<u32>>(r5.yyyy);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_28 != vec4<u32>()));
    r5.y = fma(r6.w, 2.0f, -1.0f);
    r5.y = ((-(abs(r5.yyyy))).y + 1.0f);
    r5.z = ((-(r8.xxxx)).z + 1.0f);
    r5.w = (r5.z * r5.z);
    r5.w = (r8.y * r5.w);
    r2.y = fma((-(r2.yyyy)).y, cb10_10.tint_symbol_5[0u].z, cb13_13.tint_symbol_3[6u].w);
    r3.y = fma(r5.w, r2.y, r3.y);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_3[7u].w);
    r3.x = fma(r5.w, r2.x, r3.x);
    let v_29 = fma(r0.xyz, r5.yyy, r6.xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = bitcast<u32>(r2.z);
    r2.x = select(r8.z, 0.0f, (v_30 != 0u));
    let v_31 = -(r6.xyzx);
    let v_32 = fma(r6.xyz, cb13_13.tint_symbol_3[7u].xyz, v_31.xyz);
    r9 = vec4<f32>(v_32.xyz, r9.w);
    let v_33 = fma(r2.xxx, r9.xyz, r6.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = (r8.yyy * cb13_13.tint_symbol_3[6u].xyz);
    r9 = vec4<f32>(v_34.xyz, r9.w);
    let v_35 = fma(r6.xyz, r8.xxx, r9.xyz);
    r0 = vec4<f32>(v_35.xyz, r0.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[16u].y == 0.0f))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r2.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_36 = fract(cb13_13.tint_symbol_3[16u].ww);
      let v_37 = r6;
      r6 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
      let v_38 = (r6.ww * vec2<f32>(0.40000000596046447754f));
      let v_39 = r6;
      r6 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
      let v_40 = bitcast<vec4<u32>>(r4.wwww);
      let v_41 = r6;
      r6 = select(r6.wzwz, v_41, (v_40 != vec4<u32>()));
      r2.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.w) == bitcast<i32>(r2.x))));
      r9 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r2.xxxx) != vec4<u32>()));
      r6 = fma(r9, r6, r7);
      r7 = textureSampleLevel(t15, s15, r6.xyxx.xy, 0.0f);
      r6 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).yzxw;
      r2.x = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
      r9.x = ((-(r8.wwww)).x + r6.w);
      r9.y = ((-(r8.wwww)).y + r7.w);
      r6.x = r8.y;
      r6.y = r7.x;
      r2.y = (r5.z * r6.x);
      let v_42 = -(r2.yyyy);
      let v_43 = fma(r6.zy, r5.zz, v_42.yz);
      let v_44 = r5;
      r5 = vec4<f32>(v_44.x, v_43.xy, v_44.w);
      let v_45 = fma(r2.xx, r9.xy, r5.yz);
      r2 = vec4<f32>(v_45.xy, r2.zw);
      let v_46 = (r2.xy * cb13_13.tint_symbol_3[16u].yy);
      r6 = vec4<f32>(v_46.xy, r6.zw);
      r2.x = dot(r6.xy, r6.xy);
      r2.x = ((-(r2.xxxx)).x + 1.0f);
      r2.x = max(r2.x, 0.0f);
      let v_47 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      let v_48 = r5;
      r5 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
      let v_49 = bitcast<vec2<u32>>(r5.zz);
      let v_50 = r6.yx;
      let v_51 = select(r6.xy, v_50, (v_49 != vec2<u32>()));
      r5 = vec4<f32>(r5.xy, v_51.xy);
      r6.z = (-(r6.xxxx)).z;
      let v_52 = bitcast<vec2<u32>>(r5.yy);
      let v_53 = r6.yz;
      let v_54 = select(r5.zw, v_53, (v_52 != vec2<u32>()));
      let v_55 = r5;
      r5 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
      let v_56 = (r5.zzz * v6.xyz);
      r6 = vec4<f32>(v_56.xyz, r6.w);
      let v_57 = fma(r5.yyy, v5.xyz, r6.xyz);
      r5 = vec4<f32>(r5.x, v_57.xyz);
      let v_58 = fma(r2.xxx, r4.xyz, r5.yzw);
      r5 = vec4<f32>(r5.x, v_58.xyz);
      r2.x = dot(r5.yzw, r5.yzw);
      r2.x = inverseSqrt(r2.x);
      let v_59 = (r2.xxx * r5.yzw);
      r4 = vec4<f32>(v_59.xyz, r4.w);
    }
  } else {
    r8.x = 1.0f;
  }
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r1.w = (r1.w * r8.x);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_60 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r1 = vec4<f32>(v_60.xy, r1.zw);
      r6 = textureSample(t2, s2, r1.xyzx.xyz).yzxw;
      let v_61 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r6 = vec4<f32>(v_61.xy, r6.zw);
    } else {
      let v_62 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r1 = vec4<f32>(v_62.xy, r1.zw);
      r7 = textureSample(t2, s2, r1.xyzx.xyz);
      r2.x = select(3.0f, 2.0f, (bitcast<u32>(r2.z) != 0u));
      let v_63 = (r2.xx * v1.xy);
      r1 = vec4<f32>(v_63.xy, r1.zw);
      r9 = textureSample(t2, s2, r1.xyzx.xyz);
      let v_64 = fma(r9.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r1 = vec4<f32>(v_64.xyz, r1.w);
      let v_65 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r5 = vec4<f32>(r5.x, v_65.xyz);
      let v_66 = ((-(r1.xxyz)).yzw + r5.yzw);
      r5 = vec4<f32>(r5.x, v_66.xyz);
      let v_67 = fma(cb13_13.tint_symbol_3[5u].xxx, r5.yzw, r1.xyz);
      r6 = vec4<f32>(v_67.xyz, r6.w);
    }
    r7 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r2.zzzz) != vec4<u32>()));
    let v_68 = (r7.yw + cb11_11.tint_symbol_4[0u].xy);
    r1 = vec4<f32>(v_68.xy, r1.zw);
    let v_69 = fma(cb13_13.tint_symbol_3[5u].xx, r1.xy, r7.xz);
    r1 = vec4<f32>(v_69.xy, r1.zw);
    r1.z = (r7.y + cb13_13.tint_symbol_3[3u].z);
    r1.z = fma(cb13_13.tint_symbol_3[5u].x, r1.z, r7.x);
    r2.x = fma(r6.z, 2.0f, -1.0f);
    r1.x = (r1.x * r2.x);
    r1.x = (r1.w * r1.x);
    r1.x = fma(r1.x, r1.z, 1.0f);
    let v_70 = (r0.xyz * r1.xxx);
    r0 = vec4<f32>(v_70.xyz, r0.w);
    let v_71 = (r6.yyy * v6.xyz);
    r5 = vec4<f32>(r5.x, v_71.xyz);
    let v_72 = fma(v5.xyz, r6.xxx, r5.yzw);
    r5 = vec4<f32>(r5.x, v_72.xyz);
    let v_73 = (r1.yyy * r5.yzw);
    r5 = vec4<f32>(r5.x, v_73.xyz);
    let v_74 = (r1.www * r5.yzw);
    r1 = vec4<f32>(v_74.xy, r1.z, v_74.z);
    let v_75 = fma(r1.xyw, r1.zzz, r4.xyz);
    r1 = vec4<f32>(v_75.xyz, r1.w);
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = inverseSqrt(r1.w);
    let v_76 = (r1.www * r1.xyz);
    r4 = vec4<f32>(v_76.xyz, r4.w);
  }
  r1 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r1.zw);
  let v_77 = clamp(((r1.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_77.xy, r1.zw);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) == 0i)));
  let v_78 = (r0.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r5 = vec4<f32>(r5.x, v_78.xyz);
  let v_79 = (r1.xxx * r5.yzw);
  r5 = vec4<f32>(r5.x, v_79.xyz);
  let v_80 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.zzz) & bitcast<vec3<u32>>(r5.yzw)));
  r1 = vec4<f32>(v_80.x, r1.y, v_80.yz);
  let v_81 = -(r1.xzwx);
  let v_82 = (r0.xyz + v_81.xyz);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = fma(cb13_13.tint_symbol_3[17u].yz, r1.yy, r3.yx);
  r1 = vec4<f32>(v_83.xy, r1.zw);
  let v_84 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_84.xyz, r0.w);
  r1.z = bitcast<f32>((bitcast<u32>(r2.z) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.z) != 0u));
  r1.y = (r1.w + r1.y);
  r1.y = fma(cb13_13.tint_symbol_3[4u].z, r1.y, r1.z);
  r1.z = dot(v4.xyz, v4.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_85 = (r1.zzz * v4.xyz);
  r2 = vec4<f32>(v_85.xyz, r2.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_86 = (r1.www * r4.xyz);
  r5 = vec4<f32>(r5.x, v_86.xyz);
  let v_87 = dot(r2.xyz, r5.yzw);
  r1.w = clamp(vec4<f32>(v_87, v_87, v_87, v_87).w, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 0.5f);
  r1.w = clamp(((r1.wwww * vec4<f32>(2.5f))).w, 0.0f, 1.0f);
  r2.x = fma(r1.w, -2.0f, 3.0f);
  r1.w = (r1.w * r1.w);
  r1.w = (r1.w * r2.x);
  r2.x = (r4.z + 1.0f);
  r2.x = clamp(fma(r2.xxxx, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).x, 0.0f, 1.0f);
  r2.x = (r2.x * 1.42857146263122558594f);
  let v_88 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r5 = vec4<f32>(r5.x, v_88.xyz);
  r1.w = (r1.w * r5.y);
  r1.w = (r2.x * r1.w);
  let v_89 = (r0.xyz * r1.www);
  r2 = vec4<f32>(v_89.xyz, r2.w);
  let v_90 = fma(r2.xyz, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_90.xyz, o0.w);
  let v_91 = -(r4.xyzx);
  let v_92 = fma(v4.xyz, r1.zzz, v_91.xyz);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = fma(r5.zzz, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_93.xyz, r0.w);
  r1.z = ((-(r8.xxxx)).z + 1.0f);
  r1.w = ((-(r5.wwww)).w + cb13_13.tint_symbol_3[8u].y);
  r1.z = fma(r1.z, r1.w, r5.w);
  r1.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r2.y = (r1.w * r3.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_94 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_94.xyz, r0.w);
  let v_95 = (r0.xyz * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_95.xy, r3.z, v_95.z);
  let v_96 = floor(r3.xyw);
  r3 = vec4<f32>(v_96.xy, r3.z, v_96.z);
  let v_97 = -(r3.xywx);
  let v_98 = fma(r0.xyz, vec3<f32>(256.0f), v_97.xyz);
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = floor(r0.xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_101 = (r3.xyw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_101.xyz, o1.w);
  r0.x = (r1.x * 0.001953125f);
  r2.x = fma(r5.x, r3.z, cb3_3.tint_symbol_1[45u].w);
  let v_102 = (r2.xy * vec2<f32>(0.5f));
  let v_103 = r0;
  r0 = vec4<f32>(v_103.x, v_102.xy, v_103.w);
  let v_104 = sqrt(r0.yz);
  o3 = vec4<f32>(v_104.xy, o3.zw);
  r0.y = (r1.z + 1.01960790157318115234f);
  let v_105 = bitcast<u32>(r2.w);
  let v_106 = r1.z;
  r0.y = select(r0.y, v_106, (v_105 != 0u));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
