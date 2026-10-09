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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1 = textureSample(t3, s3, v1.xyxx.xy);
  let v_2 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb10_10.tint_symbol_3[0u].x, 0.00100000004749745131f);
  let v_3 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.yyy * v6.xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(r1.xxx, v5.xyz, r2.xyz);
  r1 = vec4<f32>(v_5.xy, r1.z, v_5.z);
  let v_6 = fma(r1.zzz, v2.xyz, r1.xyw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_7 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_8 = (r2.xy * r2.xy);
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  let v_9 = (r3.xy * cb10_10.tint_symbol_3[0u].wz);
  r3 = vec4<f32>(r3.xy, v_9.xy);
  r0.w = (r0.w * v3.w);
  r4.x = (v7.z * cb13_13.tint_symbol_1[16u].x);
  r4.x = bitcast<f32>(select(0u, 4294967295u, !((r4.x == 0.0f))));
  if ((bitcast<u32>(r4.x) != 0u)) {
    let v_10 = fract(v7.yx);
    let v_11 = r4;
    r4 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
    let v_12 = abs(v7.zzzz);
    let v_13 = abs(v7.wwww);
    r4.w = fma(r4.x, v_12.w, v_13.w);
    r4.x = fma(r4.x, v1.w, v2.w);
    r5.x = fract(cb13_13.tint_symbol_1[16u].z);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r5.x)));
    r4.y = ((-(r4.zzzz)).y + 1.0f);
    let v_14 = bitcast<vec4<u32>>(r5.xxxx);
    let v_15 = r4.wywy;
    r6 = select(r4.zwzw, v_15, (v_14 != vec4<u32>()));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[16u].z >= 1.0f)));
    let v_16 = bitcast<vec2<u32>>(r4.ww);
    let v_17 = r4.xy;
    let v_18 = select(r4.zx, v_17, (v_16 != vec2<u32>()));
    r4 = vec4<f32>(v_18.xy, r4.zw);
    r4 = textureSampleLevel(t14, s14, r4.xyxx.xy, 0.0f);
    r7 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).zxyw;
    r5.y = bitcast<f32>(select(0u, 4294967295u, (r4.w >= 0.50196081399917602539f)));
    r5.z = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r4.w)));
    let v_19 = bitcast<u32>(r1.w);
    let v_20 = r5.y;
    r5.y = select(r5.z, v_20, (v_19 != 0u));
    r5.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_1[16u].x)));
    r5.y = bitcast<f32>((bitcast<u32>(r5.y) & bitcast<u32>(r5.z)));
    let v_21 = bitcast<vec4<u32>>(r5.yyyy);
    r4 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r4, (v_21 != vec4<u32>()));
    r4.w = fma(r4.w, 2.0f, -1.0f);
    r4.w = ((-(abs(r4.wwww))).w + 1.0f);
    r5.y = ((-(r7.xxxx)).y + 1.0f);
    r5.z = (r5.y * r5.y);
    r5.z = (r7.y * r5.z);
    r3.y = fma((-(r3.yyyy)).y, cb10_10.tint_symbol_3[0u].z, cb13_13.tint_symbol_1[6u].w);
    r3.w = fma(r5.z, r3.y, r3.w);
    r3.x = fma((-(r3.xxxx)).x, cb10_10.tint_symbol_3[0u].w, cb13_13.tint_symbol_1[7u].w);
    r3.z = fma(r5.z, r3.x, r3.z);
    let v_22 = fma(r0.xyz, r4.www, r4.xyz);
    r4 = vec4<f32>(v_22.xyz, r4.w);
    let v_23 = bitcast<u32>(r1.w);
    r3.x = select(r7.z, 0.0f, (v_23 != 0u));
    let v_24 = -(r4.xyzx);
    let v_25 = fma(r4.xyz, cb13_13.tint_symbol_1[7u].xyz, v_24.xyz);
    r8 = vec4<f32>(v_25.xyz, r8.w);
    let v_26 = fma(r3.xxx, r8.xyz, r4.xyz);
    r4 = vec4<f32>(v_26.xyz, r4.w);
    let v_27 = (r7.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r8 = vec4<f32>(v_27.xyz, r8.w);
    let v_28 = fma(r4.xyz, r7.xxx, r8.xyz);
    r0 = vec4<f32>(v_28.xyz, r0.w);
    r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[16u].y == 0.0f))));
    if ((bitcast<u32>(r3.x) != 0u)) {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_29 = fract(cb13_13.tint_symbol_1[16u].ww);
      let v_30 = r4;
      r4 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
      let v_31 = (r4.ww * vec2<f32>(0.40000000596046447754f));
      let v_32 = r4;
      r4 = vec4<f32>(v_31.x, v_32.y, v_31.y, v_32.w);
      let v_33 = bitcast<vec4<u32>>(r5.xxxx);
      let v_34 = r4;
      r4 = select(r4.wzwz, v_34, (v_33 != vec4<u32>()));
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.x) == bitcast<i32>(r3.x))));
      r8 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r3.xxxx) != vec4<u32>()));
      r4 = fma(r8, r4, r6);
      r6 = textureSampleLevel(t15, s15, r4.xyxx.xy, 0.0f);
      r4 = textureSampleLevel(t15, s15, r4.zwzz.xy, 0.0f).yzxw;
      r3.x = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
      r8.x = ((-(r7.wwww)).x + r4.w);
      r8.y = ((-(r7.wwww)).y + r6.w);
      r4.x = r7.y;
      r4.y = r6.x;
      r3.y = (r5.y * r4.x);
      let v_35 = -(r3.yyyy);
      let v_36 = fma(r4.zy, r5.yy, v_35.xy);
      r4 = vec4<f32>(v_36.xy, r4.zw);
      let v_37 = fma(r3.xx, r8.xy, r4.xy);
      r3 = vec4<f32>(v_37.xy, r3.zw);
      let v_38 = (r3.xy * cb13_13.tint_symbol_1[16u].yy);
      r4 = vec4<f32>(v_38.xy, r4.zw);
      r3.x = dot(r4.xy, r4.xy);
      r3.x = ((-(r3.xxxx)).x + 1.0f);
      r3.x = max(r3.x, 0.0f);
      let v_39 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      r5 = vec4<f32>(v_39.xy, r5.zw);
      let v_40 = bitcast<vec2<u32>>(r5.yy);
      let v_41 = r4.yx;
      let v_42 = select(r4.xy, v_41, (v_40 != vec2<u32>()));
      let v_43 = r5;
      r5 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
      r4.z = (-(r4.xxxx)).z;
      let v_44 = bitcast<vec2<u32>>(r5.xx);
      let v_45 = r4.yz;
      let v_46 = select(r5.yz, v_45, (v_44 != vec2<u32>()));
      r4 = vec4<f32>(v_46.xy, r4.zw);
      let v_47 = (r4.yyy * v6.xyz);
      r4 = vec4<f32>(r4.x, v_47.xyz);
      let v_48 = fma(r4.xxx, v5.xyz, r4.yzw);
      r4 = vec4<f32>(v_48.xyz, r4.w);
      let v_49 = fma(r3.xxx, r1.xyz, r4.xyz);
      r4 = vec4<f32>(v_49.xyz, r4.w);
      r3.x = dot(r4.xyz, r4.xyz);
      r3.x = inverseSqrt(r3.x);
      let v_50 = (r3.xxx * r4.xyz);
      r1 = vec4<f32>(v_50.xyz, r1.w);
    }
  } else {
    r7.x = 1.0f;
  }
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    r2.w = (r2.w * r7.x);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      let v_51 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_51.xy, r2.zw);
      r4 = textureSample(t2, s2, r2.xyzx.xyz).yzxw;
      let v_52 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r4 = vec4<f32>(v_52.xy, r4.zw);
    } else {
      let v_53 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r2 = vec4<f32>(v_53.xy, r2.zw);
      r5 = textureSample(t2, s2, r2.xyzx.xyz);
      r3.x = select(3.0f, 2.0f, (bitcast<u32>(r1.w) != 0u));
      let v_54 = (r3.xx * v1.xy);
      r2 = vec4<f32>(v_54.xy, r2.zw);
      r6 = textureSample(t2, s2, r2.xyzx.xyz);
      let v_55 = fma(r6.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r2 = vec4<f32>(v_55.xyz, r2.w);
      let v_56 = fma(r5.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r5 = vec4<f32>(v_56.xyz, r5.w);
      let v_57 = ((-(r2.xyzx)).xyz + r5.xyz);
      r5 = vec4<f32>(v_57.xyz, r5.w);
      let v_58 = fma(cb13_13.tint_symbol_1[5u].xxx, r5.xyz, r2.xyz);
      r4 = vec4<f32>(v_58.xyz, r4.w);
    }
    r5 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
    let v_59 = (r5.yw + cb11_11.tint_symbol_2[0u].xy);
    r2 = vec4<f32>(v_59.xy, r2.zw);
    let v_60 = fma(cb13_13.tint_symbol_1[5u].xx, r2.xy, r5.xz);
    r2 = vec4<f32>(v_60.xy, r2.zw);
    r2.z = (r5.y + cb13_13.tint_symbol_1[3u].z);
    r2.z = fma(cb13_13.tint_symbol_1[5u].x, r2.z, r5.x);
    r3.x = fma(r4.z, 2.0f, -1.0f);
    r2.x = (r2.x * r3.x);
    r2.x = (r2.w * r2.x);
    r2.x = fma(r2.x, r2.z, 1.0f);
    let v_61 = (r0.xyz * r2.xxx);
    r0 = vec4<f32>(v_61.xyz, r0.w);
    let v_62 = (r4.yyy * v6.xyz);
    r4 = vec4<f32>(r4.x, v_62.xyz);
    let v_63 = fma(v5.xyz, r4.xxx, r4.yzw);
    r4 = vec4<f32>(v_63.xyz, r4.w);
    let v_64 = (r2.yyy * r4.xyz);
    r4 = vec4<f32>(v_64.xyz, r4.w);
    let v_65 = (r2.www * r4.xyz);
    r2 = vec4<f32>(v_65.xy, r2.z, v_65.z);
    let v_66 = fma(r2.xyw, r2.zzz, r1.xyz);
    r2 = vec4<f32>(v_66.xyz, r2.w);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_67 = (r2.www * r2.xyz);
    r1 = vec4<f32>(v_67.xyz, r1.w);
  }
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r2.x = dot(v0.xy, vec2<f32>(0.5f));
  r2.x = fract(r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.5f)));
  let v_68 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.ww)));
  let v_69 = r2;
  r2 = vec4<f32>(v_69.x, v_68.xy, v_69.w);
  r2.x = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r2.x)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r2.x)));
  v_70((bitcast<u32>(r2.x) != 0u));
  r2 = vec4<f32>(((v1.zz + vec2<f32>(0.0f, -0.75f))).xy, r2.zw);
  let v_71 = clamp(((r2.xyxx * vec4<f32>(4.0f, 4.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_71.xy, r2.zw);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_72 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r4 = vec4<f32>(v_72.xyz, r4.w);
  let v_73 = (r2.xxx * r4.xyz);
  r4 = vec4<f32>(v_73.xyz, r4.w);
  let v_74 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.zzz) & bitcast<vec3<u32>>(r4.xyz)));
  r2 = vec4<f32>(v_74.x, r2.y, v_74.yz);
  let v_75 = -(r2.xzwx);
  let v_76 = (r0.xyz + v_75.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  let v_77 = fma(cb13_13.tint_symbol_1[17u].yz, r2.yy, r3.wz);
  r2 = vec4<f32>(v_77.xy, r2.zw);
  let v_78 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r0 = vec4<f32>(v_78.xyz, r0.w);
  r2.z = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r1.w + r2.y);
  r1.w = fma(cb13_13.tint_symbol_1[4u].z, r1.w, r2.z);
  r2.y = dot(v4.xyz, v4.xyz);
  r2.y = inverseSqrt(r2.y);
  let v_79 = (r2.yyy * v4.xyz);
  r3 = vec4<f32>(v_79.xyz, r3.w);
  r2.z = dot(r1.xyz, r1.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_80 = (r1.xyz * r2.zzz);
  r4 = vec4<f32>(v_80.xyz, r4.w);
  let v_81 = dot(r3.xyz, r4.xyz);
  r2.z = clamp(vec4<f32>(v_81, v_81, v_81, v_81).z, 0.0f, 1.0f);
  r2.z = ((-(r2.zzzz)).z + 0.5f);
  r2.z = clamp(((r2.zzzz * vec4<f32>(2.5f))).z, 0.0f, 1.0f);
  r2.w = fma(r2.z, -2.0f, 3.0f);
  r2.z = (r2.z * r2.z);
  r2.z = (r2.z * r2.w);
  r2.w = (r1.z + 1.0f);
  r2.w = clamp(fma(r2.wwww, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).w, 0.0f, 1.0f);
  r2.w = (r2.w * 1.42857146263122558594f);
  let v_82 = clamp(v8.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_82.xy, r3.zw);
  r2.z = (r2.z * r3.x);
  r2.z = (r2.w * r2.z);
  let v_83 = (r0.xyz * r2.zzz);
  r3 = vec4<f32>(v_83.x, r3.y, v_83.yz);
  let v_84 = fma(r3.xzw, cb13_13.tint_symbol_1[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_84.xyz, o0.w);
  let v_85 = -(r1.xyzx);
  let v_86 = fma(v4.xyz, r2.yyy, v_85.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(r3.yyy, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  let v_88 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_88.xyz, o1.w);
  r0.x = (r2.x * 0.001953125f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  r0.x = fma(r0.w, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o1.w = r0.w;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = 1.0f;
  o3 = vec4<f32>();
}

fn v_70(v_89 : bool) {
  if (v_89) {
    discard;
    return;
  }
}

struct tint_symbol_4 {
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
fn main(@builtin(position) v_90 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_90, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_4(o0, o1, o2, o3);
}
