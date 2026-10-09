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

struct cb19_struct {
  tint_symbol_3 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb19_struct;

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
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[18u].x == 0.0f))));
  r1.z = bitcast<f32>(~(bitcast<u32>(r1.y)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
  v_5((bitcast<u32>(r1.z) != 0u));
  r2 = textureSample(t3, s3, v1.xyxx.xy);
  let v_6 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_6.xy);
  r2.x = dot(r1.zw, r1.zw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb10_10.tint_symbol_5[0u].y, 0.00100000004749745131f);
  let v_7 = (r1.zw * r2.yy);
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = (r1.www * v6.xyz);
  r2 = vec4<f32>(r2.x, v_8.xyz);
  let v_9 = fma(r1.zzz, v5.xyz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_9.xyz);
  let v_10 = fma(r2.xxx, v2.xyz, r2.yzw);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r1.z = dot(r2.xyz, r2.xyz);
  r1.z = inverseSqrt(r1.z);
  let v_11 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  r3 = textureSample(t4, s4, v1.xyxx.xy);
  let v_12 = (r3.xy * r3.xy);
  r1 = vec4<f32>(r1.xy, v_12.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.z >= 0.8125f)));
  r4.x = fma((-(r3.zzzz)).x, 16.0f, 14.0f);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r4.xxxx).x)));
  r5.x = (r1.z * cb10_10.tint_symbol_5[1u].x);
  r5.y = (r1.w * cb10_10.tint_symbol_5[0u].w);
  r4.y = (r0.w * cb10_10.tint_symbol_5[0u].x);
  r4.y = (r4.y * cb2_2.tint_symbol[15u].w);
  r0.w = (r0.w * v3.w);
  let v_13 = (v3.xy * cb2_2.tint_symbol[15u].zy);
  r4 = vec4<f32>(r4.xy, v_13.xy);
  r5.z = fma(r2.z, 0.5f, 0.5f);
  r5.w = fma(r5.z, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r5.z = (r5.z + 0.30000001192092895508f);
  r4.w = (r4.w * r5.z);
  r4.y = (r4.y * v3.z);
  r5.z = (v7.z * cb13_13.tint_symbol_3[16u].x);
  r5.z = bitcast<f32>(select(0u, 4294967295u, !((r5.z == 0.0f))));
  if ((bitcast<u32>(r5.z) != 0u)) {
    let v_14 = fract(v7.yx);
    let v_15 = r6;
    r6 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
    let v_16 = abs(v7.zzzz);
    let v_17 = abs(v7.wwww);
    r6.w = fma(r6.x, v_16.w, v_17.w);
    r6.x = fma(r6.x, v1.w, v2.w);
    r5.z = fract(cb13_13.tint_symbol_3[16u].z);
    r5.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r5.z)));
    r6.y = ((-(r6.zzzz)).y + 1.0f);
    let v_18 = bitcast<vec4<u32>>(r5.zzzz);
    let v_19 = r6.wywy;
    r7 = select(r6.zwzw, v_19, (v_18 != vec4<u32>()));
    r6.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    let v_20 = bitcast<vec2<u32>>(r6.ww);
    let v_21 = r6.xy;
    let v_22 = select(r6.zx, v_21, (v_20 != vec2<u32>()));
    r6 = vec4<f32>(v_22.xy, r6.zw);
    r6 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f);
    r8 = textureSampleLevel(t15, s15, r7.zwzz.xy, 0.0f).zxyw;
    r9.x = bitcast<f32>(select(0u, 4294967295u, (r6.w >= 0.50196081399917602539f)));
    r9.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r6.w)));
    let v_23 = bitcast<u32>(r2.w);
    let v_24 = r9.x;
    r9.x = select(r9.y, v_24, (v_23 != 0u));
    r9.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_3[16u].x)));
    r9.x = bitcast<f32>((bitcast<u32>(r9.x) & bitcast<u32>(r9.y)));
    let v_25 = bitcast<vec4<u32>>(r9.xxxx);
    r6 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r6, (v_25 != vec4<u32>()));
    r6.w = fma(r6.w, 2.0f, -1.0f);
    r6.w = ((-(abs(r6.wwww))).w + 1.0f);
    r9.x = ((-(r8.xxxx)).x + 1.0f);
    r9.y = (r9.x * r9.x);
    r9.y = (r8.y * r9.y);
    r1.w = fma((-(r1.wwww)).w, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_3[6u].w);
    r5.y = fma(r9.y, r1.w, r5.y);
    r1.z = fma((-(r1.zzzz)).z, cb10_10.tint_symbol_5[1u].x, cb13_13.tint_symbol_3[7u].w);
    r5.x = fma(r9.y, r1.z, r5.x);
    let v_26 = bitcast<vec3<u32>>(r2.www);
    let v_27 = select(vec3<f32>(1.0f), r0.xyz, (v_26 != vec3<u32>()));
    r9 = vec4<f32>(r9.x, v_27.xyz);
    let v_28 = (r6.xyz * r9.yzw);
    r6 = vec4<f32>(v_28.xyz, r6.w);
    let v_29 = fma(r0.xyz, r6.www, r6.xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = bitcast<u32>(r2.w);
    r1.z = select(r8.z, 0.0f, (v_30 != 0u));
    let v_31 = -(r6.xxyz);
    let v_32 = fma(r6.xyz, cb13_13.tint_symbol_3[7u].xyz, v_31.yzw);
    r9 = vec4<f32>(r9.x, v_32.xyz);
    let v_33 = fma(r1.zzz, r9.yzw, r6.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = (r8.yyy * cb13_13.tint_symbol_3[6u].xyz);
    r9 = vec4<f32>(r9.x, v_34.xyz);
    let v_35 = fma(r6.xyz, r8.xxx, r9.yzw);
    r0 = vec4<f32>(v_35.xyz, r0.w);
    r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[16u].y == 0.0f))));
    if ((bitcast<u32>(r1.z) != 0u)) {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_36 = fract(cb13_13.tint_symbol_3[16u].ww);
      let v_37 = r6;
      r6 = vec4<f32>(v_37.x, v_36.x, v_37.z, v_36.y);
      let v_38 = (r6.ww * vec2<f32>(0.40000000596046447754f));
      let v_39 = r6;
      r6 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
      let v_40 = bitcast<vec4<u32>>(r5.zzzz);
      let v_41 = r6;
      r6 = select(r6.wzwz, v_41, (v_40 != vec4<u32>()));
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) == bitcast<i32>(r1.z))));
      r10 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r1.zzzz) != vec4<u32>()));
      r6 = fma(r10, r6, r7);
      r7 = textureSampleLevel(t15, s15, r6.xyxx.xy, 0.0f);
      r6 = textureSampleLevel(t15, s15, r6.zwzz.xy, 0.0f).yzxw;
      r1.z = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
      r10.x = ((-(r8.wwww)).x + r6.w);
      r10.y = ((-(r8.wwww)).y + r7.w);
      r6.x = r8.y;
      r6.y = r7.x;
      r1.w = (r9.x * r6.x);
      let v_42 = -(r1.wwww);
      let v_43 = fma(r6.zy, r9.xx, v_42.xy);
      r6 = vec4<f32>(v_43.xy, r6.zw);
      let v_44 = fma(r1.zz, r10.xy, r6.xy);
      r1 = vec4<f32>(r1.xy, v_44.xy);
      let v_45 = (r1.zw * cb13_13.tint_symbol_3[16u].yy);
      r6 = vec4<f32>(v_45.xy, r6.zw);
      r1.z = dot(r6.xy, r6.xy);
      r1.z = ((-(r1.zzzz)).z + 1.0f);
      r1.z = max(r1.z, 0.0f);
      let v_46 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      r7 = vec4<f32>(v_46.xy, r7.zw);
      let v_47 = bitcast<vec2<u32>>(r7.yy);
      let v_48 = r6.yx;
      let v_49 = select(r6.xy, v_48, (v_47 != vec2<u32>()));
      let v_50 = r7;
      r7 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
      r6.z = (-(r6.xxxx)).z;
      let v_51 = bitcast<vec2<u32>>(r7.xx);
      let v_52 = r6.yz;
      let v_53 = select(r7.yz, v_52, (v_51 != vec2<u32>()));
      r6 = vec4<f32>(v_53.xy, r6.zw);
      let v_54 = (r6.yyy * v6.xyz);
      r6 = vec4<f32>(r6.x, v_54.xyz);
      let v_55 = fma(r6.xxx, v5.xyz, r6.yzw);
      r6 = vec4<f32>(v_55.xyz, r6.w);
      let v_56 = fma(r1.zzz, r2.xyz, r6.xyz);
      r6 = vec4<f32>(v_56.xyz, r6.w);
      r1.z = dot(r6.xyz, r6.xyz);
      r1.z = inverseSqrt(r1.z);
      let v_57 = (r1.zzz * r6.xyz);
      r2 = vec4<f32>(v_57.xyz, r2.w);
    }
  } else {
    r8.x = 1.0f;
  }
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = (r3.w * r8.x);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      let v_58 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r3 = vec4<f32>(v_58.xy, r3.zw);
      r6 = textureSample(t2, s2, r3.xyzx.xyz).yzxw;
      let v_59 = fma(r6.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r6 = vec4<f32>(v_59.xy, r6.zw);
    } else {
      let v_60 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r3 = vec4<f32>(v_60.xy, r3.zw);
      r7 = textureSample(t2, s2, r3.xyzx.xyz);
      r1.w = select(3.0f, 2.0f, (bitcast<u32>(r2.w) != 0u));
      let v_61 = (r1.ww * v1.xy);
      r3 = vec4<f32>(v_61.xy, r3.zw);
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
      let v_62 = fma(r3.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r3 = vec4<f32>(v_62.xyz, r3.w);
      let v_63 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r7 = vec4<f32>(v_63.xyz, r7.w);
      let v_64 = ((-(r3.xyzx)).xyz + r7.xyz);
      r7 = vec4<f32>(v_64.xyz, r7.w);
      let v_65 = fma(cb13_13.tint_symbol_3[5u].xxx, r7.xyz, r3.xyz);
      r6 = vec4<f32>(v_65.xyz, r6.w);
    }
    r3 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r2.wwww) != vec4<u32>()));
    let v_66 = (r3.yw + cb11_11.tint_symbol_4[0u].xy);
    r7 = vec4<f32>(v_66.xy, r7.zw);
    let v_67 = fma(cb13_13.tint_symbol_3[5u].xx, r7.xy, r3.xz);
    r3 = vec4<f32>(r3.xy, v_67.xy);
    r1.w = (r3.y + cb13_13.tint_symbol_3[3u].z);
    r1.w = fma(cb13_13.tint_symbol_3[5u].x, r1.w, r3.x);
    r3.x = fma(r6.z, 2.0f, -1.0f);
    r3.x = (r3.z * r3.x);
    r3.x = (r1.z * r3.x);
    r3.x = fma(r3.x, r1.w, 1.0f);
    let v_68 = (r0.xyz * r3.xxx);
    r0 = vec4<f32>(v_68.xyz, r0.w);
    let v_69 = (r6.yyy * v6.xyz);
    r3 = vec4<f32>(v_69.xyz, r3.w);
    let v_70 = fma(v5.xyz, r6.xxx, r3.xyz);
    r3 = vec4<f32>(v_70.xyz, r3.w);
    let v_71 = (r3.www * r3.xyz);
    r3 = vec4<f32>(v_71.xyz, r3.w);
    let v_72 = (r1.zzz * r3.xyz);
    r3 = vec4<f32>(v_72.xyz, r3.w);
    let v_73 = fma(r3.xyz, r1.www, r2.xyz);
    r3 = vec4<f32>(v_73.xyz, r3.w);
    r1.z = dot(r3.xyz, r3.xyz);
    r1.z = inverseSqrt(r1.z);
    let v_74 = (r1.zzz * r3.xyz);
    r2 = vec4<f32>(v_74.xyz, r2.w);
  }
  r1 = vec4<f32>(r1.xy, ((v1.zz + vec2<f32>(0.0f, -0.75f))).xy);
  let v_75 = clamp(((r1.zzzw * vec4<f32>(0.0f, 0.0f, 4.0f, 4.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_75.xy);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 0i)));
  let v_76 = (r0.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r3 = vec4<f32>(r3.x, v_76.xyz);
  let v_77 = (r1.zzz * r3.yzw);
  r3 = vec4<f32>(r3.x, v_77.xyz);
  let v_78 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
  r3 = vec4<f32>(v_78.xyz, r3.w);
  let v_79 = -(r3.xyzx);
  let v_80 = (r0.xyz + v_79.xyz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = fma(cb13_13.tint_symbol_3[17u].yz, r1.ww, r5.yx);
  r1 = vec4<f32>(r1.xy, v_81.xy);
  let v_82 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  r3.x = (r4.y * cb13_13.tint_symbol_3[4u].y);
  r3.y = bitcast<f32>((bitcast<u32>(r2.w) & 1008981770u));
  r2.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r2.w) != 0u));
  r1.w = (r1.w + r2.w);
  r1.w = fma(cb13_13.tint_symbol_3[4u].z, r1.w, r3.y);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_83 = (r2.www * v4.xyz);
  r3 = vec4<f32>(r3.x, v_83.xyz);
  r4.y = dot(r2.xyz, r2.xyz);
  r4.y = inverseSqrt(r4.y);
  let v_84 = (r2.xyz * r4.yyy);
  r5 = vec4<f32>(v_84.xyz, r5.w);
  let v_85 = dot(r3.yzw, r5.xyz);
  r3.y = clamp(vec4<f32>(v_85, v_85, v_85, v_85).y, 0.0f, 1.0f);
  r3.y = ((-(r3.yyyy)).y + 0.5f);
  r3.y = clamp(((r3.yyyy * vec4<f32>(2.5f))).y, 0.0f, 1.0f);
  r3.z = fma(r3.y, -2.0f, 3.0f);
  r3.y = (r3.y * r3.y);
  r3.y = (r3.y * r3.z);
  r3.z = (r2.z + 1.0f);
  r3.z = clamp(fma(r3.zzzz, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).z, 0.0f, 1.0f);
  r3.z = (r3.z * 1.42857146263122558594f);
  let v_86 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r5 = vec4<f32>(v_86.xyz, r5.w);
  r3.y = (r3.y * r5.x);
  r3.y = (r3.z * r3.y);
  let v_87 = (r0.xyz * r3.yyy);
  r3 = vec4<f32>(r3.x, v_87.xyz);
  let v_88 = fma(r3.yzw, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_88.xyz, o0.w);
  let v_89 = -(r2.xyzx);
  let v_90 = fma(v4.xyz, r2.www, v_89.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = fma(r5.yyy, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  r2.x = ((-(r8.xxxx)).x + 1.0f);
  r2.y = ((-(r5.zzzz)).y + cb13_13.tint_symbol_3[8u].y);
  r2.x = fma(r2.x, r2.y, r5.z);
  r2.y = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).y, 0.0f, 1.0f);
  r5.y = (r2.y * r4.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_92 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = (r0.xyz * vec3<f32>(256.0f));
  r2 = vec4<f32>(r2.x, v_93.xyz);
  let v_94 = floor(r2.yzw);
  r2 = vec4<f32>(r2.x, v_94.xyz);
  let v_95 = -(r2.yzwy);
  let v_96 = fma(r0.xyz, vec3<f32>(256.0f), v_95.xyz);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  let v_97 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_97.xyz, r0.w);
  let v_98 = floor(r0.xyz);
  r0 = vec4<f32>(v_98.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_99 = (r2.yzw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_99.xyz, o1.w);
  r0.x = (r1.z * 0.001953125f);
  r5.x = fma(r5.w, r4.z, cb3_3.tint_symbol_1[45u].w);
  let v_100 = (r5.xy * vec2<f32>(0.5f));
  let v_101 = r0;
  r0 = vec4<f32>(v_101.x, v_100.xy, v_101.w);
  let v_102 = sqrt(r0.yz);
  o3 = vec4<f32>(v_102.xy, o3.zw);
  o3.z = clamp(((r3.xxxx * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.y = (r2.x + 1.01960790157318115234f);
  let v_103 = bitcast<u32>(r4.x);
  let v_104 = r2.x;
  r0.y = select(r0.y, v_104, (v_103 != 0u));
  o3.w = (r0.y * 0.49607843160629272461f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  r0.x = (r0.w * r1.x);
  r0.x = (r0.x * cb13_13.tint_symbol_3[18u].x);
  let v_105 = bitcast<u32>(r1.y);
  let v_106 = r0.x;
  o0.w = select(r0.w, v_106, (v_105 != 0u));
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
