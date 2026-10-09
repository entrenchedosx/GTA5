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
  r4.z = (v7.z * cb13_13.tint_symbol_1[16u].x);
  r4.z = bitcast<f32>(select(0u, 4294967295u, !((r4.z == 0.0f))));
  if ((bitcast<u32>(r4.z) != 0u)) {
    let v_9 = fract(v7.xy);
    r5 = vec4<f32>(v_9.xy, r5.zw);
    let v_10 = abs(v7.zzzz);
    let v_11 = abs(v7.wwww);
    r5.z = fma(r5.y, v_10.z, v_11.z);
    r4.z = fract(cb13_13.tint_symbol_1[16u].z);
    r4.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r4.z)));
    r5.w = ((-(r5.xxxx)).w + 1.0f);
    let v_12 = bitcast<vec4<u32>>(r4.zzzz);
    let v_13 = r5.zwzw;
    r5 = select(r5.xzxz, v_13, (v_12 != vec4<u32>()));
    r6 = textureSampleLevel(t14, s14, v1.xyxx.xy, 0.0f).wxyz;
    r7 = textureSampleLevel(t15, s15, r5.zwzz.xy, 0.0f).zxyw;
    r4.w = ((-(r7.xxxx)).w + 1.0f);
    r7.w = (r4.w * r4.w);
    r7.w = (r7.y * r7.w);
    r1.w = fma((-(r1.wwww)).w, cb10_10.tint_symbol_3[0u].z, cb13_13.tint_symbol_1[6u].w);
    r4.y = fma(r7.w, r1.w, r4.y);
    r1.z = fma((-(r1.zzzz)).z, cb10_10.tint_symbol_3[0u].w, cb13_13.tint_symbol_1[7u].w);
    r4.x = fma(r7.w, r1.z, r4.x);
    let v_14 = fma(r0.xyz, r6.xxx, r6.yzw);
    r6 = vec4<f32>(r6.x, v_14.xyz);
    let v_15 = -(r6.yzwy);
    let v_16 = fma(r6.yzw, cb13_13.tint_symbol_1[7u].xyz, v_15.xyz);
    r8 = vec4<f32>(v_16.xyz, r8.w);
    let v_17 = fma(r7.zzz, r8.xyz, r6.yzw);
    r6 = vec4<f32>(r6.x, v_17.xyz);
    let v_18 = (r7.yyy * cb13_13.tint_symbol_1[6u].xyz);
    r8 = vec4<f32>(v_18.xyz, r8.w);
    let v_19 = fma(r6.yzw, r7.xxx, r8.xyz);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[16u].y == 0.0f))));
    if ((bitcast<u32>(r1.z) != 0u)) {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_20 = fract(cb13_13.tint_symbol_1[16u].ww);
      let v_21 = r8;
      r8 = vec4<f32>(v_21.x, v_20.x, v_21.z, v_20.y);
      let v_22 = (r8.ww * vec2<f32>(0.40000000596046447754f));
      let v_23 = r8;
      r8 = vec4<f32>(v_22.x, v_23.y, v_22.y, v_23.w);
      let v_24 = bitcast<vec4<u32>>(r4.zzzz);
      let v_25 = r8;
      r8 = select(r8.wzwz, v_25, (v_24 != vec4<u32>()));
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.z) == bitcast<i32>(r1.z))));
      r9 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r1.zzzz) != vec4<u32>()));
      r5 = fma(r9, r8, r5);
      r8 = textureSampleLevel(t15, s15, r5.xyxx.xy, 0.0f);
      r5 = textureSampleLevel(t15, s15, r5.zwzz.xy, 0.0f).yzxw;
      r5.x = r7.y;
      r5.y = r8.x;
      r1.z = (r4.w * r5.x);
      let v_26 = -(r1.zzzz);
      let v_27 = fma(r5.zy, r4.ww, v_26.zw);
      r1 = vec4<f32>(r1.xy, v_27.xy);
      let v_28 = (r1.zw * cb13_13.tint_symbol_1[16u].yy);
      r5 = vec4<f32>(v_28.xy, r5.zw);
      r1.z = dot(r5.xy, r5.xy);
      r1.z = ((-(r1.zzzz)).z + 1.0f);
      r1.z = max(r1.z, 0.0f);
      let v_29 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      r4 = vec4<f32>(r4.xy, v_29.xy);
      let v_30 = bitcast<vec2<u32>>(r4.ww);
      let v_31 = r5.yx;
      let v_32 = select(r5.xy, v_31, (v_30 != vec2<u32>()));
      let v_33 = r6;
      r6 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
      r5.z = (-(r5.xxxx)).z;
      let v_34 = bitcast<vec2<u32>>(r4.zz);
      let v_35 = r5.yz;
      let v_36 = select(r6.yz, v_35, (v_34 != vec2<u32>()));
      r4 = vec4<f32>(r4.xy, v_36.xy);
      let v_37 = (r4.www * v6.xyz);
      r5 = vec4<f32>(v_37.xyz, r5.w);
      let v_38 = fma(r4.zzz, v5.xyz, r5.xyz);
      r5 = vec4<f32>(v_38.xyz, r5.w);
      let v_39 = fma(r1.zzz, r2.xyz, r5.xyz);
      r5 = vec4<f32>(v_39.xyz, r5.w);
      r1.z = dot(r5.xyz, r5.xyz);
      r1.z = inverseSqrt(r1.z);
      let v_40 = (r1.zzz * r5.xyz);
      r2 = vec4<f32>(v_40.xyz, r2.w);
    }
  } else {
    r6.x = (r0.w * v3.w);
    r7.x = 1.0f;
  }
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_1[3u].z == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = (r3.w * r7.x);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.z) != 0u)) {
      let v_41 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_41.xy, r3.zw);
      r5 = textureSample(t2, s2, r3.xyzx.xyz).yzxw;
      let v_42 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r5 = vec4<f32>(v_42.xy, r5.zw);
    } else {
      let v_43 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
      r3 = vec4<f32>(v_43.xy, r3.zw);
      r7 = textureSample(t2, s2, r3.xyzx.xyz);
      r1.z = select(3.0f, 2.0f, (bitcast<u32>(r2.w) != 0u));
      let v_44 = (r1.zz * v1.xy);
      r3 = vec4<f32>(v_44.xy, r3.zw);
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
      let v_45 = fma(r3.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r3 = vec4<f32>(v_45.xyz, r3.w);
      let v_46 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r6 = vec4<f32>(r6.x, v_46.xyz);
      let v_47 = ((-(r3.xxyz)).yzw + r6.yzw);
      r6 = vec4<f32>(r6.x, v_47.xyz);
      let v_48 = fma(cb13_13.tint_symbol_1[5u].xxx, r6.yzw, r3.xyz);
      r5 = vec4<f32>(v_48.xyz, r5.w);
    }
    r3 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r2.wwww) != vec4<u32>()));
    let v_49 = (r3.yw + cb11_11.tint_symbol_2[0u].xy);
    r1 = vec4<f32>(r1.xy, v_49.xy);
    let v_50 = fma(cb13_13.tint_symbol_1[5u].xx, r1.zw, r3.xz);
    r1 = vec4<f32>(r1.xy, v_50.xy);
    r3.y = (r3.y + cb13_13.tint_symbol_1[3u].z);
    r3.x = fma(cb13_13.tint_symbol_1[5u].x, r3.y, r3.x);
    r3.y = fma(r5.z, 2.0f, -1.0f);
    r1.z = (r1.z * r3.y);
    r1.z = (r0.w * r1.z);
    r1.z = fma(r1.z, r3.x, 1.0f);
    let v_51 = (r0.xyz * r1.zzz);
    r0 = vec4<f32>(v_51.xyz, r0.w);
    let v_52 = (r5.yyy * v6.xyz);
    r3 = vec4<f32>(r3.x, v_52.xyz);
    let v_53 = fma(v5.xyz, r5.xxx, r3.yzw);
    r3 = vec4<f32>(r3.x, v_53.xyz);
    let v_54 = (r1.www * r3.yzw);
    r3 = vec4<f32>(r3.x, v_54.xyz);
    let v_55 = (r0.www * r3.yzw);
    r3 = vec4<f32>(r3.x, v_55.xyz);
    let v_56 = fma(r3.yzw, r3.xxx, r2.xyz);
    r3 = vec4<f32>(v_56.xyz, r3.w);
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = inverseSqrt(r0.w);
    let v_57 = (r0.www * r3.xyz);
    r2 = vec4<f32>(v_57.xyz, r2.w);
  }
  r1 = vec4<f32>(r1.xy, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy);
  let v_58 = clamp(((r1.zzzw * vec4<f32>(0.0f, 0.0f, 4.0f, 4.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_58.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_59 = (r0.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r3 = vec4<f32>(v_59.xyz, r3.w);
  let v_60 = (r1.zzz * r3.xyz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  let v_61 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.www) & bitcast<vec3<u32>>(r3.xyz)));
  r3 = vec4<f32>(v_61.xyz, r3.w);
  let v_62 = -(r3.xyzx);
  let v_63 = (r0.xyz + v_62.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  let v_64 = fma(cb13_13.tint_symbol_1[17u].yz, r1.ww, r4.yx);
  r1 = vec4<f32>(r1.xy, v_64.xy);
  let v_65 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  r0.w = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.w = (r1.w + r2.w);
  r0.w = fma(cb13_13.tint_symbol_1[4u].z, r1.w, r0.w);
  r1.w = dot(v4.xyz, v4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_66 = (r1.www * v4.xyz);
  r3 = vec4<f32>(v_66.xyz, r3.w);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_67 = (r2.www * r2.xyz);
  r4 = vec4<f32>(v_67.xyz, r4.w);
  let v_68 = dot(r3.xyz, r4.xyz);
  r2.w = clamp(vec4<f32>(v_68, v_68, v_68, v_68).w, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 0.5f);
  r2.w = clamp(((r2.wwww * vec4<f32>(2.5f))).w, 0.0f, 1.0f);
  r3.x = fma(r2.w, -2.0f, 3.0f);
  r2.w = (r2.w * r2.w);
  r2.w = (r2.w * r3.x);
  r3.x = (r2.z + 1.0f);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).x, 0.0f, 1.0f);
  r3.x = (r3.x * 1.42857146263122558594f);
  let v_69 = clamp(v8.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  let v_70 = r3;
  r3 = vec4<f32>(v_70.x, v_69.xy, v_70.w);
  r2.w = (r2.w * r3.y);
  r2.w = (r3.x * r2.w);
  let v_71 = (r0.xyz * r2.www);
  r3 = vec4<f32>(v_71.xy, r3.z, v_71.z);
  let v_72 = fma(r3.xyw, cb13_13.tint_symbol_1[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_72.xyz, o0.w);
  let v_73 = -(r2.xyzx);
  let v_74 = fma(v4.xyz, r1.www, v_73.xyz);
  r0 = vec4<f32>(v_74.xyz, r0.w);
  let v_75 = fma(r3.zzz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  r1.w = (r6.x * cb2_2.tint_symbol[15u].x);
  let v_76 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_76.xyz, o1.w);
  r0.x = (r1.z * 0.001953125f);
  let v_77 = sqrt(r0.wx);
  o2 = vec4<f32>(v_77.xy, o2.zw);
  r0.x = (r1.w * r1.x);
  r0.x = (r0.x * cb13_13.tint_symbol_1[18u].x);
  let v_78 = bitcast<u32>(r1.y);
  let v_79 = r0.x;
  o0.w = select(r1.w, v_79, (v_78 != 0u));
  o1.w = r1.w;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = r1.w;
  o3 = vec4<f32>();
}

fn v(v_80 : bool) {
  if (v_80) {
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
