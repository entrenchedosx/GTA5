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
  r2 = vec4<f32>(v_12.xy, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  r3.x = (r2.x * cb10_10.tint_symbol_5[1u].x);
  r3.y = (r2.y * cb10_10.tint_symbol_5[0u].w);
  r3.z = (r0.w * v3.w);
  r3.w = (v7.z * cb13_13.tint_symbol_3[16u].x);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.w == 0.0f))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    let v_13 = fract(v7.yx);
    let v_14 = r4;
    r4 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
    let v_15 = abs(v7.zzzz);
    let v_16 = abs(v7.wwww);
    r4.w = fma(r4.x, v_15.w, v_16.w);
    r4.x = fma(r4.x, v1.w, v2.w);
    r3.w = fract(cb13_13.tint_symbol_3[16u].z);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f < r3.w)));
    r4.y = ((-(r4.zzzz)).y + 1.0f);
    let v_17 = bitcast<vec4<u32>>(r3.wwww);
    let v_18 = r4.wywy;
    r5 = select(r4.zwzw, v_18, (v_17 != vec4<u32>()));
    r4.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[16u].z >= 1.0f)));
    let v_19 = bitcast<vec2<u32>>(r4.ww);
    let v_20 = r4.xy;
    let v_21 = select(r4.zx, v_20, (v_19 != vec2<u32>()));
    r4 = vec4<f32>(v_21.xy, r4.zw);
    r4 = textureSampleLevel(t6, s6, r4.xyxx.xy, 0.0f);
    r6 = textureSampleLevel(t15, s15, r5.zwzz.xy, 0.0f).zxyw;
    r7.x = bitcast<f32>(select(0u, 4294967295u, (r4.w >= 0.50196081399917602539f)));
    r7.y = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r4.w)));
    let v_22 = bitcast<u32>(r1.w);
    let v_23 = r7.x;
    r7.x = select(r7.y, v_23, (v_22 != 0u));
    r7.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb13_13.tint_symbol_3[16u].x)));
    r7.x = bitcast<f32>((bitcast<u32>(r7.x) & bitcast<u32>(r7.y)));
    let v_24 = bitcast<vec4<u32>>(r7.xxxx);
    r4 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.5f), r4, (v_24 != vec4<u32>()));
    r4.w = fma(r4.w, 2.0f, -1.0f);
    r4.w = ((-(abs(r4.wwww))).w + 1.0f);
    r7.x = ((-(r6.xxxx)).x + 1.0f);
    r7.y = (r7.x * r7.x);
    r7.y = (r6.y * r7.y);
    r2.y = fma((-(r2.yyyy)).y, cb10_10.tint_symbol_5[0u].w, cb13_13.tint_symbol_3[6u].w);
    r3.y = fma(r7.y, r2.y, r3.y);
    r2.x = fma((-(r2.xxxx)).x, cb10_10.tint_symbol_5[1u].x, cb13_13.tint_symbol_3[7u].w);
    r3.x = fma(r7.y, r2.x, r3.x);
    let v_25 = bitcast<vec3<u32>>(r1.www);
    let v_26 = select(vec3<f32>(1.0f), r0.xyz, (v_25 != vec3<u32>()));
    r7 = vec4<f32>(r7.x, v_26.xyz);
    let v_27 = (r4.xyz * r7.yzw);
    r4 = vec4<f32>(v_27.xyz, r4.w);
    let v_28 = fma(r0.xyz, r4.www, r4.xyz);
    r4 = vec4<f32>(v_28.xyz, r4.w);
    let v_29 = bitcast<u32>(r1.w);
    r2.x = select(r6.z, 0.0f, (v_29 != 0u));
    let v_30 = -(r4.xxyz);
    let v_31 = fma(r4.xyz, cb13_13.tint_symbol_3[7u].xyz, v_30.yzw);
    r7 = vec4<f32>(r7.x, v_31.xyz);
    let v_32 = fma(r2.xxx, r7.yzw, r4.xyz);
    r4 = vec4<f32>(v_32.xyz, r4.w);
    let v_33 = (r6.yyy * cb13_13.tint_symbol_3[6u].xyz);
    r7 = vec4<f32>(r7.x, v_33.xyz);
    let v_34 = fma(r4.xyz, r6.xxx, r7.yzw);
    r0 = vec4<f32>(v_34.xyz, r0.w);
    r2.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[16u].y == 0.0f))));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r2.x = bitcast<f32>(select(0u, 4294967295u, (0.15000000596046447754f < v7.z)));
      let v_35 = fract(cb13_13.tint_symbol_3[16u].ww);
      let v_36 = r4;
      r4 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
      let v_37 = (r4.ww * vec2<f32>(0.40000000596046447754f));
      let v_38 = r4;
      r4 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
      let v_39 = bitcast<vec4<u32>>(r3.wwww);
      let v_40 = r4;
      r4 = select(r4.wzwz, v_40, (v_39 != vec4<u32>()));
      r2.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) == bitcast<i32>(r2.x))));
      r8 = select(vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f), (bitcast<vec4<u32>>(r2.xxxx) != vec4<u32>()));
      r4 = fma(r8, r4, r5);
      r5 = textureSampleLevel(t15, s15, r4.xyxx.xy, 0.0f);
      r4 = textureSampleLevel(t15, s15, r4.zwzz.xy, 0.0f).yzxw;
      r2.x = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
      r8.x = ((-(r6.wwww)).x + r4.w);
      r8.y = ((-(r6.wwww)).y + r5.w);
      r4.x = r6.y;
      r4.y = r5.x;
      r2.y = (r7.x * r4.x);
      let v_41 = -(r2.yyyy);
      let v_42 = fma(r4.zy, r7.xx, v_41.xy);
      r4 = vec4<f32>(v_42.xy, r4.zw);
      let v_43 = fma(r2.xx, r8.xy, r4.xy);
      r2 = vec4<f32>(v_43.xy, r2.zw);
      let v_44 = (r2.xy * cb13_13.tint_symbol_3[16u].yy);
      r4 = vec4<f32>(v_44.xy, r4.zw);
      r2.x = dot(r4.xy, r4.xy);
      r2.x = ((-(r2.xxxx)).x + 1.0f);
      r2.x = max(r2.x, 0.0f);
      let v_45 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v7.zw < vec2<f32>())));
      r5 = vec4<f32>(v_45.xy, r5.zw);
      let v_46 = bitcast<vec2<u32>>(r5.yy);
      let v_47 = r4.yx;
      let v_48 = select(r4.xy, v_47, (v_46 != vec2<u32>()));
      let v_49 = r5;
      r5 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
      r4.z = (-(r4.xxxx)).z;
      let v_50 = bitcast<vec2<u32>>(r5.xx);
      let v_51 = r4.yz;
      let v_52 = select(r5.yz, v_51, (v_50 != vec2<u32>()));
      r4 = vec4<f32>(v_52.xy, r4.zw);
      let v_53 = (r4.yyy * v6.xyz);
      r4 = vec4<f32>(r4.x, v_53.xyz);
      let v_54 = fma(r4.xxx, v5.xyz, r4.yzw);
      r4 = vec4<f32>(v_54.xyz, r4.w);
      let v_55 = fma(r2.xxx, r1.xyz, r4.xyz);
      r4 = vec4<f32>(v_55.xyz, r4.w);
      r2.x = dot(r4.xyz, r4.xyz);
      r2.x = inverseSqrt(r2.x);
      let v_56 = (r2.xxx * r4.xyz);
      r4 = vec4<f32>(v_56.xyz, r4.w);
    } else {
      let v_57 = r1;
      r4 = vec4<f32>(v_57.xyz, r4.w);
    }
  } else {
    let v_58 = r1;
    r4 = vec4<f32>(v_58.xyz, r4.w);
    r6.x = 1.0f;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = (r2.w * r6.x);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.y) != 0u)) {
      let v_59 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r5 = vec4<f32>(v_59.xy, r5.zw);
      r5.z = r2.z;
      r5 = textureSample(t2, s2, r5.xyzx.xyz).yzxw;
      let v_60 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r5 = vec4<f32>(v_60.xy, r5.zw);
    } else {
      let v_61 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r7 = vec4<f32>(v_61.xy, r7.zw);
      r7.z = r2.z;
      r8 = textureSample(t2, s2, r7.xyzx.xyz);
      r1.y = select(3.0f, 2.0f, (bitcast<u32>(r1.w) != 0u));
      let v_62 = (r1.yy * v1.xy);
      r7 = vec4<f32>(v_62.xy, r7.zw);
      r7 = textureSample(t2, s2, r7.xyzx.xyz);
      let v_63 = fma(r7.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r2 = vec4<f32>(v_63.xy, r2.z, v_63.z);
      let v_64 = fma(r8.yzx, vec3<f32>(2.0f, 2.0f, 1.0f), vec3<f32>(-1.0f, -1.0f, 0.0f));
      r6 = vec4<f32>(r6.x, v_64.xyz);
      let v_65 = ((-(r2.xxyw)).yzw + r6.yzw);
      r6 = vec4<f32>(r6.x, v_65.xyz);
      let v_66 = fma(cb13_13.tint_symbol_3[5u].xxx, r6.yzw, r2.xyw);
      r5 = vec4<f32>(v_66.xyz, r5.w);
    }
    r7 = select(vec4<f32>(1.0f, -1.0f, 1.5f, -1.5f), vec4<f32>(2.0f, -2.0f, 2.0f, -2.0f), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
    let v_67 = (r7.yw + cb11_11.tint_symbol_4[0u].xy);
    r2 = vec4<f32>(v_67.xy, r2.zw);
    let v_68 = fma(cb13_13.tint_symbol_3[5u].xx, r2.xy, r7.xz);
    r2 = vec4<f32>(v_68.xy, r2.zw);
    r1.y = (r7.y + cb13_13.tint_symbol_3[3u].z);
    r1.y = fma(cb13_13.tint_symbol_3[5u].x, r1.y, r7.x);
    r2.w = fma(r5.z, 2.0f, -1.0f);
    r2.x = (r2.x * r2.w);
    r2.x = (r1.x * r2.x);
    r2.x = fma(r2.x, r1.y, 1.0f);
    let v_69 = (r0.xyz * r2.xxx);
    r0 = vec4<f32>(v_69.xyz, r0.w);
    let v_70 = (r5.yyy * v6.xyz);
    r5 = vec4<f32>(r5.x, v_70.xyz);
    let v_71 = fma(v5.xyz, r5.xxx, r5.yzw);
    r5 = vec4<f32>(v_71.xyz, r5.w);
    let v_72 = (r2.yyy * r5.xyz);
    r2 = vec4<f32>(v_72.xy, r2.z, v_72.z);
    let v_73 = (r1.xxx * r2.xyw);
    r2 = vec4<f32>(v_73.xy, r2.z, v_73.z);
    let v_74 = fma(r2.xyw, r1.yyy, r4.xyz);
    r2 = vec4<f32>(v_74.xy, r2.z, v_74.z);
    r1.x = dot(r2.xyw, r2.xyw);
    r1.x = inverseSqrt(r1.x);
    let v_75 = (r1.xxx * r2.xyw);
    r4 = vec4<f32>(v_75.xyz, r4.w);
  }
  r1.x = (r3.z * cb2_2.tint_symbol[15u].x);
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  let v_76 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r1.xx)));
  r2 = vec4<f32>(v_76.xy, r2.zw);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r2.x)));
  r1.y = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r1.y)));
  v_5((bitcast<u32>(r1.y) != 0u));
  r1.y = fma((-(r2.zzzz)).y, 16.0f, 14.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (1.0f >= abs(r1.yyyy).y)));
  r0.w = (r0.w * cb10_10.tint_symbol_5[0u].x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].w);
  let v_77 = (v3.xy * cb2_2.tint_symbol[15u].zy);
  r2 = vec4<f32>(v_77.xy, r2.zw);
  r1.z = fma(r1.z, 0.5f, 0.5f);
  r2.z = fma(r1.z, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r1.z = (r1.z + 0.30000001192092895508f);
  r1.z = (r2.y * r1.z);
  r0.w = (r0.w * v3.z);
  let v_78 = (v1.zz + vec2<f32>(0.0f, -0.75f));
  let v_79 = r2;
  r2 = vec4<f32>(v_79.x, v_78.x, v_79.z, v_78.y);
  let v_80 = clamp(((r2.yyyw * vec4<f32>(0.0f, 4.0f, 0.0f, 4.0f))).yw, vec2<f32>(), vec2<f32>(1.0f));
  let v_81 = r2;
  r2 = vec4<f32>(v_81.x, v_80.x, v_81.z, v_80.y);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) == 0i)));
  let v_82 = (r0.xyz * cb13_13.tint_symbol_3[17u].xxx);
  r5 = vec4<f32>(v_82.xyz, r5.w);
  let v_83 = (r2.yyy * r5.xyz);
  r5 = vec4<f32>(v_83.xyz, r5.w);
  let v_84 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.zzz) & bitcast<vec3<u32>>(r5.xyz)));
  r5 = vec4<f32>(v_84.xyz, r5.w);
  let v_85 = -(r5.xyzx);
  let v_86 = (r0.xyz + v_85.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(cb13_13.tint_symbol_3[17u].yz, r2.ww, r3.yx);
  let v_88 = r2;
  r2 = vec4<f32>(v_88.x, v_87.x, v_88.z, v_87.y);
  r0 = (r0 * cb13_13.tint_symbol_3[4u].xxxy);
  r3.x = bitcast<f32>((bitcast<u32>(r1.w) & 1008981770u));
  r1.w = select(0.0f, -0.00999999977648258209f, (bitcast<u32>(r1.w) != 0u));
  r1.w = (r1.w + r2.w);
  r1.w = fma(cb13_13.tint_symbol_3[4u].z, r1.w, r3.x);
  r2.w = dot(v4.xyz, v4.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_89 = (r2.www * v4.xyz);
  r3 = vec4<f32>(v_89.xyz, r3.w);
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_90 = (r3.www * r4.xyz);
  r5 = vec4<f32>(v_90.xyz, r5.w);
  let v_91 = dot(r3.xyz, r5.xyz);
  r3.x = clamp(vec4<f32>(v_91, v_91, v_91, v_91).x, 0.0f, 1.0f);
  r3.x = ((-(r3.xxxx)).x + 0.5f);
  r3.x = clamp(((r3.xxxx * vec4<f32>(2.5f))).x, 0.0f, 1.0f);
  r3.y = fma(r3.x, -2.0f, 3.0f);
  r3.x = (r3.x * r3.x);
  r3.x = (r3.x * r3.y);
  r3.y = (r4.z + 1.0f);
  r3.y = clamp(fma(r3.yyyy, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).y, 0.0f, 1.0f);
  r3.y = (r3.y * 1.42857146263122558594f);
  let v_92 = clamp(v8.xyz, vec3<f32>(), vec3<f32>(1.0f));
  r5 = vec4<f32>(v_92.xyz, r5.w);
  r3.x = (r3.x * r5.x);
  r3.x = (r3.y * r3.x);
  let v_93 = (r0.xyz * r3.xxx);
  r3 = vec4<f32>(v_93.xyz, r3.w);
  let v_94 = fma(r3.xyz, cb13_13.tint_symbol_3[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_94.xyz, o0.w);
  let v_95 = -(r4.xyzx);
  let v_96 = fma(v4.xyz, r2.www, v_95.xyz);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  let v_97 = fma(r5.yyy, r0.xyz, r4.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  r2.w = ((-(r6.xxxx)).w + 1.0f);
  r3.x = ((-(r5.zzzz)).x + cb13_13.tint_symbol_3[8u].y);
  r2.w = fma(r2.w, r3.x, r5.z);
  r3.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r3.y = (r1.z * r3.x);
  let v_98 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = (r0.xyz * vec3<f32>(256.0f));
  r4 = vec4<f32>(v_99.xyz, r4.w);
  let v_100 = floor(r4.xyz);
  r4 = vec4<f32>(v_100.xyz, r4.w);
  let v_101 = -(r4.xyzx);
  let v_102 = fma(r0.xyz, vec3<f32>(256.0f), v_101.xyz);
  r0 = vec4<f32>(v_102.xyz, r0.w);
  let v_103 = (r0.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = floor(r0.xyz);
  r0 = vec4<f32>(v_104.xyz, r0.w);
  r0.x = dot(r0.yxz, vec3<f32>(4.0f, 32.0f, 1.0f));
  o1.w = (r0.x * 0.0039215688593685627f);
  let v_105 = (r4.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_105.xyz, o1.w);
  r0.x = (r2.y * 0.001953125f);
  r3.x = fma(r2.z, r2.x, cb3_3.tint_symbol_1[45u].w);
  let v_106 = (r3.xy * vec2<f32>(0.5f));
  let v_107 = r0;
  r0 = vec4<f32>(v_107.x, v_106.xy, v_107.w);
  let v_108 = sqrt(r0.yz);
  o3 = vec4<f32>(v_108.xy, o3.zw);
  o3.z = clamp(((r0.wwww * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.y = (r2.w + 1.01960790157318115234f);
  let v_109 = bitcast<u32>(r1.y);
  let v_110 = r2.w;
  r0.y = select(r0.y, v_110, (v_109 != 0u));
  o3.w = (r0.y * 0.49607843160629272461f);
  o2.x = sqrt(r1.w);
  o2.y = sqrt(r0.x);
  r0.x = fma(r1.x, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2.z = cb10_10.tint_symbol_5[0u].z;
  o2.w = 1.0f;
}

fn v_5(v_111 : bool) {
  if (v_111) {
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
fn main(@builtin(position) v_112 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v_112, v1, v2, v3, v4, v5, v6, v7, v8);
  return tint_symbol_6(o0, o1, o2, o3);
}
