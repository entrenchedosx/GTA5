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

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_5[0u].y, 0.00100000004749745131f);
  let v_7 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  let v_10 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_11 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_12 = (r2.xy * r2.xy);
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  r3.z = fma((-(r2.zzzz)).z, 16.0f, 14.0f);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r3.zzzz).z)));
  r4.x = (r3.x * cb10_10.tint_symbol_5[1u].x);
  r4.y = (r3.y * cb10_10.tint_symbol_5[0u].w);
  r3.w = (r0.w * cb10_10.tint_symbol_5[0u].x);
  r3.w = (r3.w * cb2_2.tint_symbol[15u].w);
  r0.w = (r0.w * v3.w);
  let v_13 = (v3.xy * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(r4.xy, v_13.xy);
  r5.x = fma(r1.z, 0.5f, 0.5f);
  r5.y = fma(r5.x, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r5.x = (r5.x + 0.30000001192092895508f);
  r4.w = (r4.w * r5.x);
  r3.w = (r3.w * v3.z);
  r5.x = (v7.z * cb13_13.tint_symbol_3[16u].x);
  r5.x = bitcast<f32>(select(0u, 4294967295u, !((r5.x == 0.0f))));
  if ((bitcast<u32>(r5.x) != 0u)) {
    let v_14 = fract(v7.yx);
    let v_15 = r6;
    r6 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
    let v_16 = abs(v7.zzzz);
    let v_17 = abs(v7.wwww);
    r6.w = fma(r6.x, v_16.w, v_17.w);
    r6.x = fma(r6.x, v1.w, v2.w);
    r5.x = fract(cb13_13.tint_symbol_3[16u].z);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r5.x)));
    r6.y = ((-(r6.zzzz)).y + 1.0f);
    let v_18 = bitcast<vec4<u32>>(r5.xxxx);
    let v_19 = r6.wywy;
    r7 = select(r6.zwzw, v_19, (v_18 != vec4<u32>()));
    r5.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    let v_20 = bitcast<vec2<u32>>(r5.zz);
    let v_21 = r6.xy;
    let v_22 = select(r6.zx, v_21, (v_20 != vec2<u32>()));
    r5 = vec4<f32>(r5.xy, v_22.xy);
    r6 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f);
    r8 = textureSampleLevel(t15, s15, r7.zwzz.xy, 0.0f).zxyw;
    r5.z = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_23 = bitcast<u32>(r1.w);
    let v_24 = r5.z;
    r5.z = select(r5.w, v_24, (v_23 != 0u));
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_3[16u].x)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) & bitcast<u32>(r5.w)));
    let v_25 = bitcast<vec4<u32>>(r5.zzzz);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_25 != vec4<u32>()));
    r5.z = fma(r6.w, 2.0f, -1.0f);
    r5.z = ((-(abs(r5.zzzz))).z + 1.0f);
    r5.w = ((-(r8.xxxx)).w + 1.0f);
    r6.w = (r5.w * r5.w);
    r6.w = (r8.y * r6.w);
    r3.y = fma((-(r3.yyyy)).y, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_3[6u].w);
    r4.y = fma(r6.w, r3.y, r4.y);
    r3.x = fma((-(r3.xxxx)).x, cb10_10.tint_symbol_5[1u].x, cb13_13.tint_symbol_3[7u].w);
    r4.x = fma(r6.w, r3.x, r4.x);
    let v_26 = bitcast<vec3<u32>>(r1.www);
    let v_27 = select(vec3<f32>(1.0f), r0.xyz, (v_26 != vec3<u32>()));
    r9 = vec4<f32>(v_27.xyz, r9.w);
    let v_28 = (r6.xyz * r9.xyz);
    r6 = vec4<f32>(v_28.xyz, r6.w);
    let v_29 = fma(r0.xyz, r5.zzz, r6.xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = bitcast<u32>(r1.w);
    r3.x = select(r8.z, 0.0f, (v_30 != 0u));
    let v_31 = -(r6.xyzx);
    let v_32 = fma(r6.xyz, cb13_13.tint_symbol_3[7u].xyz, v_31.xyz);
    r9 = vec4<f32>(v_32.xyz, r9.w);
    let v_33 = fma(r3.xxx, r9.xyz, r6.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = (r8.yyy * cb13_13.tint_symbol_3[6u].xyz);
    r9 = vec4<f32>(v_34.xyz, r9.w);
    let v_35 = fma(r6.xyz, r8.xxx, r9.xyz);
    r0 = vec4<f32>(v_35.xyz, r0.w);
    r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[16u].y == 0.0f))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_36 = fract(cb13_13.tint_symbol_3[16u].ww);
      let v_37 = r6;
      r6 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
      let v_38 = (r6.ww * vec2<f32>(0.40000000596046447754f));
      let v_39 = r6;
      r6 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
      let v_40 = bitcast<vec4<u32>>(r5.xxxx);
      let v_41 = r6;
      r6 = select(r6.wzwz, v_41, (v_40 != vec4<u32>()));
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.x) == bitcast<i32>(r3.x))));
      r9 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r3.xxxx) != vec4<u32>()));
      r6 = fma(r9, r6, r7);
      r7 = textureSampleLevel(t15, s15, r6.xyxx.xy, 0.0f);
      r6 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).yzxw;
      r3.x = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
      r9.x = ((-(r8.wwww)).x + r6.w);
      r9.y = ((-(r8.wwww)).y + r7.w);
      r6.x = r8.y;
      r6.y = r7.x;
      r3.y = (r5.w * r6.x);
      let v_42 = -(r3.yyyy);
      let v_43 = fma(r6.zy, r5.ww, v_42.xz);
      let v_44 = r5;
      r5 = vec4<f32>(v_43.x, v_44.y, v_43.y, v_44.w);
      let v_45 = fma(r3.xx, r9.xy, r5.xz);
      r3 = vec4<f32>(v_45.xy, r3.zw);
      let v_46 = (r3.xy * cb13_13.tint_symbol_3[16u].yy);
      r6 = vec4<f32>(v_46.xy, r6.zw);
      r3.x = dot(r6.xy, r6.xy);
      r3.x = ((-(r3.xxxx)).x + 1.0f);
      r3.x = max(r3.x, 0.0f);
      let v_47 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      let v_48 = r5;
      r5 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
      let v_49 = bitcast<vec2<u32>>(r5.zz);
      let v_50 = r6.yx;
      let v_51 = select(r6.xy, v_50, (v_49 != vec2<u32>()));
      r5 = vec4<f32>(r5.xy, v_51.xy);
      r6.z = (-(r6.xxxx)).z;
      let v_52 = bitcast<vec2<u32>>(r5.xx);
      let v_53 = r6.yz;
      let v_54 = select(r5.zw, v_53, (v_52 != vec2<u32>()));
      let v_55 = r5;
      r5 = vec4<f32>(v_54.x, v_55.y, v_54.y, v_55.w);
      let v_56 = (r5.zzz * v6.xyz);
      r6 = vec4<f32>(v_56.xyz, r6.w);
      let v_57 = fma(r5.xxx, v5.xyz, r6.xyz);
      r5 = vec4<f32>(v_57.x, r5.y, v_57.yz);
      let v_58 = fma(r3.xxx, r1.xyz, r5.xzw);
      r5 = vec4<f32>(v_58.x, r5.y, v_58.yz);
      r3.x = dot(r5.xzw, r5.xzw);
      r3.x = inverseSqrt(r3.x);
      let v_59 = (r3.xxx * r5.xzw);
      r1 = vec4<f32>(v_59.xyz, r1.w);
    }
  } else {
    r8.x = 1.0f;
  }
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r2.w = (r2.w * r8.x);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      let v_60 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r2 = vec4<f32>(v_60.xy, r2.zw);
      r6 = textureSample(t2, s2, r2.xyzx.xyz).yzxw;
      let v_61 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r6 = vec4<f32>(v_61.xy, r6.zw);
    } else {
      let v_62 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r2 = vec4<f32>(v_62.xy, r2.zw);
      r7 = textureSample(t2, s2, r2.xyzx.xyz);
      r3.x = select(3.0f, 2.0f, (bitcast<u32>(r1.w) != 0u));
      let v_63 = (r3.xx * v1.xy);
      r2 = vec4<f32>(v_63.xy, r2.zw);
      r9 = textureSample(t2, s2, r2.xyzx.xyz);
      let v_64 = fma(r9.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r2 = vec4<f32>(v_64.xyz, r2.w);
      let v_65 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r5 = vec4<f32>(v_65.x, r5.y, v_65.yz);
      let v_66 = ((-(r2.xxyz)).xzw + r5.xzw);
      r5 = vec4<f32>(v_66.x, r5.y, v_66.yz);
      let v_67 = fma(cb13_13.tint_symbol_3[5u].xxx, r5.xzw, r2.xyz);
      r6 = vec4<f32>(v_67.xyz, r6.w);
    }
    r7 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
    let v_68 = (r7.yw + cb11_11.tint_symbol_4[0u].xy);
    r2 = vec4<f32>(v_68.xy, r2.zw);
    let v_69 = fma(cb13_13.tint_symbol_3[5u].xx, r2.xy, r7.xz);
    r2 = vec4<f32>(v_69.xy, r2.zw);
    r2.z = (r7.y + cb13_13.tint_symbol_3[3u].z);
    r2.z = fma(cb13_13.tint_symbol_3[5u].x, r2.z, r7.x);
    r3.x = fma(r6.z, 2.0f, -1.0f);
    r2.x = (r2.x * r3.x);
    r2.x = (r2.w * r2.x);
    r2.x = fma(r2.x, r2.z, 1.0f);
    let v_70 = (r0.xyz * r2.xxx);
    r0 = vec4<f32>(v_70.xyz, r0.w);
    let v_71 = (r6.yyy * v6.xyz);
    r5 = vec4<f32>(v_71.x, r5.y, v_71.yz);
    let v_72 = fma(v5.xyz, r6.xxx, r5.xzw);
    r5 = vec4<f32>(v_72.x, r5.y, v_72.yz);
    let v_73 = (r2.yyy * r5.xzw);
    r5 = vec4<f32>(v_73.x, r5.y, v_73.yz);
    let v_74 = (r2.www * r5.xzw);
    r2 = vec4<f32>(v_74.xy, r2.z, v_74.z);
    let v_75 = fma(r2.xyw, r2.zzz, r1.xyz);
    r2 = vec4<f32>(v_75.xyz, r2.w);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_76 = (r2.www * r2.xyz);
    r1 = vec4<f32>(v_76.xyz, r1.w);
  }
  r2 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r2.zw);
  let v_77 = clamp(((r2.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_77.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_78 = (r0.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r5 = vec4<f32>(v_78.x, r5.y, v_78.yz);
  let v_79 = (r2.xxx * r5.xzw);
  r5 = vec4<f32>(v_79.x, r5.y, v_79.yz);
  let v_80 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.zzz) & bitcast<vec3<u32>>(r5.xzw)));
  r2 = vec4<f32>(v_80.x, r2.y, v_80.yz);
  let v_81 = -(r2.xzwx);
  let v_82 = (r0.xyz + v_81.xyz);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = fma(cb13_13.tint_symbol_3[17u].yz, r2.yy, r4.yx);
  r2 = vec4<f32>(v_83.xy, r2.zw);
  let v_84 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_84.xyz, r0.w);
  r2.z = (r3.w * cb13_13.tint_symbol_3[4u].y);
  r2.w = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r1.w + r2.y);
  r1.w = fma(cb13_13.tint_symbol_3[4u].z, r1.w, r2.w);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_85 = (r2.yyy * v4.xyz);
  r3 = vec4<f32>(v_85.xy, r3.z, v_85.z);
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_86 = (r1.xyz * r2.www);
  r5 = vec4<f32>(v_86.x, r5.y, v_86.yz);
  let v_87 = dot(r3.xyw, r5.xzw);
  r2.w = clamp(vec4<f32>(v_87, v_87, v_87, v_87).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 0.5f);
  r2.w = clamp(((r2.wwww * vec4<f32>(2.5f))).w, 0.0f, 1.0f);
  r3.x = fma(r2.w, -2.0f, 3.0f);
  r2.w = (r2.w * r2.w);
  r2.w = (r2.w * r3.x);
  r3.x = (r1.z + 1.0f);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).x, 0.0f, 1.0f);
  r3.x = (r3.x * 1.42857146263122558594f);
  let v_88 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r5 = vec4<f32>(v_88.x, r5.y, v_88.yz);
  r2.w = (r2.w * r5.x);
  r2.w = (r3.x * r2.w);
  let v_89 = (r0.xyz * r2.www);
  r3 = vec4<f32>(v_89.xy, r3.z, v_89.z);
  let v_90 = fma(r3.xyw, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_90.xyz, o0.w);
  let v_91 = -(r1.xyzx);
  let v_92 = fma(v4.xyz, r2.yyy, v_91.xyz);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = fma(r5.zzz, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_93.xyz, r0.w);
  r1.x = ((-(r8.xxxx)).x + 1.0f);
  r1.y = ((-(r5.wwww)).y + cb13_13.tint_symbol_3[8u].y);
  r1.x = fma(r1.x, r1.y, r5.w);
  r1.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r3.y = (r1.y * r4.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_94 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_94.xyz, r0.w);
  let v_95 = (r0.xyz * vec3<f32>(256.0f));
  r4 = vec4<f32>(v_95.xy, r4.z, v_95.z);
  let v_96 = floor(r4.xyw);
  r4 = vec4<f32>(v_96.xy, r4.z, v_96.z);
  let v_97 = -(r4.xywx);
  let v_98 = fma(r0.xyz, vec3<f32>(256.0f), v_97.xyz);
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_99.xyz, r0.w);
  let v_100 = floor(r0.xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_101 = (r4.xyw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_101.xyz, o1.w);
  r0.x = (r2.x * 0.001953125f);
  r3.x = fma(r5.y, r4.z, cb3_3.tint_symbol_1[45u].w);
  let v_102 = (r3.xy * vec2<f32>(0.5f));
  let v_103 = r0;
  r0 = vec4<f32>(v_103.x, v_102.xy, v_103.w);
  let v_104 = sqrt(r0.yz);
  o3 = vec4<f32>(v_104.xy, o3.zw);
  o3.z = clamp(((r2.zzzz * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.y = (r1.x + 1.01960790157318115234f);
  let v_105 = bitcast<u32>(r3.z);
  let v_106 = r1.x;
  r0.y = select(r0.y, v_106, (v_105 != 0u));
  o3.w = (r0.y * 0.49607843160629272461f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  o2.z = cb10_10.tint_symbol_5[0u].z;
  o2.w = 1.0f;
}

fn v_5(v_107 : bool) {
  if (v_107) {
    discard;
    return;
  }
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
fn main(@builtin(position) v_108 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_108, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
