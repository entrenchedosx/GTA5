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

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb19_struct;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[18u].x == 0.0f))));
  r1.z = bitcast<f32>(~(bitcast<u32>(r1.y)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
  v((bitcast<u32>(r1.z) != 0u));
  r2 = textureSample(t3, s3, v1.xyxx.xy);
  let v_1 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_1.xy);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb10_10.tint_symbol_3[0u].x, 0.00100000004749745131f);
  let v_2 = (r1.zw * r2.yy);
  r1 = vec4<f32>(r1.xy, v_2.xy);
  let v_3 = (r1.www * v6.xyz);
  r2 = vec4<f32>(r2.x, v_3.xyz);
  let v_4 = fma(r1.zzz, v5.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_4.xyz);
  let v_5 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_6 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_7 = (r3.xy * r3.xy);
  r1 = vec4<f32>(r1.xy, v_7.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  let v_8 = (r1.zw * cb10_10.tint_symbol_3[0u].wz);
  r4 = vec4<f32>(v_8.xy, r4.zw);
  r0.w = (r0.w * v3.w);
  r4.z = (v7.z * cb13_13.tint_symbol_1[16u].x);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  if ((bitcast<u32>(r4.z) != 0u)) {
    let v_9 = fract(v7.yx);
    let v_10 = r5;
    r5 = vec4<f32>(v_9.x, v_10.y, v_9.y, v_10.w);
    let v_11 = abs(v7.zzzz);
    let v_12 = abs(v7.wwww);
    r5.w = fma(r5.x, v_11.w, v_12.w);
    r5.x = fma(r5.x, v1.w, v2.w);
    r4.z = fract(cb13_13.tint_symbol_1[16u].z);
    r4.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r4.z)));
    r5.y = ((-(r5.zzzz)).y + 1.0f);
    let v_13 = bitcast<vec4<u32>>(r4.zzzz);
    let v_14 = r5.wywy;
    r6 = select(r5.zwzw, v_14, (v_13 != vec4<u32>()));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[16u].z >= 1.0f)));
    let v_15 = bitcast<vec2<u32>>(r4.ww);
    let v_16 = r5.xy;
    let v_17 = select(r5.zx, v_16, (v_15 != vec2<u32>()));
    r5 = vec4<f32>(v_17.xy, r5.zw);
    r5 = textureSampleLevel(t14, s14, r5.xyxx.xy, 0.0f);
    r7 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).zxyw;
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r5.w >= 0.50196081399917602539f)));
    r8.x = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r5.w)));
    let v_18 = bitcast<u32>(r2.w);
    let v_19 = r4.w;
    r4.w = select(r8.x, v_19, (v_18 != 0u));
    r8.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_1[16u].x)));
    r4.w = bitcast<f32>((bitcast<u32>(r4.w) & bitcast<u32>(r8.x)));
    let v_20 = bitcast<vec4<u32>>(r4.wwww);
    r5 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r5, (v_20 != vec4<u32>()));
    r4.w = fma(r5.w, 2.0f, -1.0f);
    r4.w = ((-(abs(r4.wwww))).w + 1.0f);
    r5.w = ((-(r7.xxxx)).w + 1.0f);
    r8.x = (r5.w * r5.w);
    r8.x = (r7.y * r8.x);
    r1.w = fma((-(r1.wwww)).w, cb10_10.tint_symbol_3[0u].z, cb13_13.tint_symbol_1[6u].w);
    r4.y = fma(r8.x, r1.w, r4.y);
    r1.z = fma((-(r1.zzzz)).z, cb10_10.tint_symbol_3[0u].w, cb13_13.tint_symbol_1[7u].w);
    r4.x = fma(r8.x, r1.z, r4.x);
    let v_21 = fma(r0.xyz, r4.www, r5.xyz);
    r5 = vec4<f32>(v_21.xyz, r5.w);
    let v_22 = bitcast<u32>(r2.w);
    r1.z = select(r7.z, 0.0f, (v_22 != 0u));
    let v_23 = -(r5.xyzx);
    let v_24 = fma(r5.xyz, cb13_13.tint_symbol_1[7u].xyz, v_23.xyz);
    r8 = vec4<f32>(v_24.xyz, r8.w);
    let v_25 = fma(r1.zzz, r8.xyz, r5.xyz);
    r5 = vec4<f32>(v_25.xyz, r5.w);
    let v_26 = (r7.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r8 = vec4<f32>(v_26.xyz, r8.w);
    let v_27 = fma(r5.xyz, r7.xxx, r8.xyz);
    r0 = vec4<f32>(v_27.xyz, r0.w);
    r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[16u].y == 0.0f))));
    if ((bitcast<u32>(r1.z) != 0u)) {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_28 = fract(cb13_13.tint_symbol_1[16u].ww);
      let v_29 = r8;
      r8 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
      let v_30 = (r8.ww * vec2<f32>(0.40000000596046447754f));
      let v_31 = r8;
      r8 = vec4<f32>(v_30.x, v_31.y, v_30.y, v_31.w);
      let v_32 = bitcast<vec4<u32>>(r4.zzzz);
      let v_33 = r8;
      r8 = select(r8.wzwz, v_33, (v_32 != vec4<u32>()));
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.z) == bitcast<i32>(r1.z))));
      r9 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r1.zzzz) != vec4<u32>()));
      r6 = fma(r9, r8, r6);
      r8 = textureSampleLevel(t15, s15, r6.xyxx.xy, 0.0f);
      r6 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).yzxw;
      r1.z = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
      r5.x = ((-(r7.wwww)).x + r6.w);
      r5.y = ((-(r7.wwww)).y + r8.w);
      r6.x = r7.y;
      r6.y = r8.x;
      r1.w = (r5.w * r6.x);
      let v_34 = -(r1.wwww);
      let v_35 = fma(r6.zy, r5.ww, v_34.zw);
      r4 = vec4<f32>(r4.xy, v_35.xy);
      let v_36 = fma(r1.zz, r5.xy, r4.zw);
      r1 = vec4<f32>(r1.xy, v_36.xy);
      let v_37 = (r1.zw * cb13_13.tint_symbol_1[16u].yy);
      r5 = vec4<f32>(v_37.xy, r5.zw);
      r1.z = dot(r5.xy, r5.xy);
      r1.z = ((-(r1.zzzz)).z + 1.0f);
      r1.z = max(r1.z, 0.0f);
      let v_38 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      r4 = vec4<f32>(r4.xy, v_38.xy);
      let v_39 = bitcast<vec2<u32>>(r4.ww);
      let v_40 = r5.yx;
      let v_41 = select(r5.xy, v_40, (v_39 != vec2<u32>()));
      r6 = vec4<f32>(v_41.xy, r6.zw);
      r5.z = (-(r5.xxxx)).z;
      let v_42 = bitcast<vec2<u32>>(r4.zz);
      let v_43 = r5.yz;
      let v_44 = select(r6.xy, v_43, (v_42 != vec2<u32>()));
      r4 = vec4<f32>(r4.xy, v_44.xy);
      let v_45 = (r4.www * v6.xyz);
      r5 = vec4<f32>(v_45.xyz, r5.w);
      let v_46 = fma(r4.zzz, v5.xyz, r5.xyz);
      r5 = vec4<f32>(v_46.xyz, r5.w);
      let v_47 = fma(r1.zzz, r2.xyz, r5.xyz);
      r5 = vec4<f32>(v_47.xyz, r5.w);
      r1.z = dot(r5.xyz, r5.xyz);
      r1.z = inverseSqrt(r1.z);
      let v_48 = (r1.zzz * r5.xyz);
      r2 = vec4<f32>(v_48.xyz, r2.w);
    }
  } else {
    r7.x = 1.0f;
  }
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = (r3.w * r7.x);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      let v_49 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_49.xy, r3.zw);
      r5 = textureSample(t2, s2, r3.xyzx.xyz).yzxw;
      let v_50 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r5 = vec4<f32>(v_50.xy, r5.zw);
    } else {
      let v_51 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_51.xy, r3.zw);
      r6 = textureSample(t2, s2, r3.xyzx.xyz);
      r1.w = select(3.0f, 2.0f, (bitcast<u32>(r2.w) != 0u));
      let v_52 = (r1.ww * v1.xy);
      r3 = vec4<f32>(v_52.xy, r3.zw);
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
      let v_53 = fma(r3.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r3 = vec4<f32>(v_53.xyz, r3.w);
      let v_54 = fma(r6.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r6 = vec4<f32>(v_54.xyz, r6.w);
      let v_55 = ((-(r3.xyzx)).xyz + r6.xyz);
      r6 = vec4<f32>(v_55.xyz, r6.w);
      let v_56 = fma(cb13_13.tint_symbol_1[5u].xxx, r6.xyz, r3.xyz);
      r5 = vec4<f32>(v_56.xyz, r5.w);
    }
    r3 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r2.wwww) != vec4<u32>()));
    let v_57 = (r3.yw + cb11_11.tint_symbol_2[0u].xy);
    r4 = vec4<f32>(r4.xy, v_57.xy);
    let v_58 = fma(cb13_13.tint_symbol_1[5u].xx, r4.zw, r3.xz);
    r3 = vec4<f32>(r3.xy, v_58.xy);
    r1.w = (r3.y + cb13_13.tint_symbol_1[3u].z);
    r1.w = fma(cb13_13.tint_symbol_1[5u].x, r1.w, r3.x);
    r3.x = fma(r5.z, 2.0f, -1.0f);
    r3.x = (r3.z * r3.x);
    r3.x = (r1.z * r3.x);
    r3.x = fma(r3.x, r1.w, 1.0f);
    let v_59 = (r0.xyz * r3.xxx);
    r0 = vec4<f32>(v_59.xyz, r0.w);
    let v_60 = (r5.yyy * v6.xyz);
    r3 = vec4<f32>(v_60.xyz, r3.w);
    let v_61 = fma(v5.xyz, r5.xxx, r3.xyz);
    r3 = vec4<f32>(v_61.xyz, r3.w);
    let v_62 = (r3.www * r3.xyz);
    r3 = vec4<f32>(v_62.xyz, r3.w);
    let v_63 = (r1.zzz * r3.xyz);
    r3 = vec4<f32>(v_63.xyz, r3.w);
    let v_64 = fma(r3.xyz, r1.www, r2.xyz);
    r3 = vec4<f32>(v_64.xyz, r3.w);
    r1.z = dot(r3.xyz, r3.xyz);
    r1.z = inverseSqrt(r1.z);
    let v_65 = (r1.zzz * r3.xyz);
    r2 = vec4<f32>(v_65.xyz, r2.w);
  }
  r1 = vec4<f32>(r1.xy, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy);
  let v_66 = clamp(((r1.zzzw * vec4<f32>(0.0f, 0.0f, 4.0f, 4.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_66.xy);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_67 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r3 = vec4<f32>(r3.x, v_67.xyz);
  let v_68 = (r1.zzz * r3.yzw);
  r3 = vec4<f32>(r3.x, v_68.xyz);
  let v_69 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
  r3 = vec4<f32>(v_69.xyz, r3.w);
  let v_70 = -(r3.xyzx);
  let v_71 = (r0.xyz + v_70.xyz);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  let v_72 = fma(cb13_13.tint_symbol_1[17u].yz, r1.ww, r4.yx);
  r1 = vec4<f32>(r1.xy, v_72.xy);
  let v_73 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r0 = vec4<f32>(v_73.xyz, r0.w);
  r3.x = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.w = (r1.w + r2.w);
  r1.w = fma(cb13_13.tint_symbol_1[4u].z, r1.w, r3.x);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_74 = (r2.www * v4.xyz);
  r3 = vec4<f32>(v_74.xyz, r3.w);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_75 = (r2.xyz * r3.www);
  r4 = vec4<f32>(v_75.xyz, r4.w);
  let v_76 = dot(r3.xyz, r4.xyz);
  r3.x = clamp(vec4<f32>(v_76, v_76, v_76, v_76).x, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 0.5f);
  r3.x = clamp(((r3.xxxx * vec4<f32>(2.5f))).x, 0.0f, 1.0f);
  r3.y = fma(r3.x, -2.0f, 3.0f);
  r3.x = (r3.x * r3.x);
  r3.x = (r3.x * r3.y);
  r3.y = (r2.z + 1.0f);
  r3.y = clamp(fma(r3.yyyy, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).y, 0.0f, 1.0f);
  r3.y = (r3.y * 1.42857146263122558594f);
  let v_77 = clamp(v8.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_77.xy);
  r3.x = (r3.z * r3.x);
  r3.x = (r3.y * r3.x);
  let v_78 = (r0.xyz * r3.xxx);
  r3 = vec4<f32>(v_78.xyz, r3.w);
  let v_79 = fma(r3.xyz, cb13_13.tint_symbol_1[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_79.xyz, o0.w);
  let v_80 = -(r2.xyzx);
  let v_81 = fma(v4.xyz, r2.www, v_80.xyz);
  r0 = vec4<f32>(v_81.xyz, r0.w);
  let v_82 = fma(r3.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_83 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_83.xyz, o1.w);
  r0.x = (r1.z * 0.001953125f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  r0.x = (r0.w * r1.x);
  r0.x = (r0.x * cb13_13.tint_symbol_1[18u].x);
  let v_84 = bitcast<u32>(r1.y);
  let v_85 = r0.x;
  o0.w = select(r0.w, v_85, (v_84 != 0u));
  o1.w = r0.w;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = r0.w;
  o3 = vec4<f32>();
}

fn v(v_86 : bool) {
  if (v_86) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_4(o0, o1, o2, o3);
}
