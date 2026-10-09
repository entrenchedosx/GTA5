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

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb92_struct {
  tint_symbol_2 : array<vec4<f32>, 92u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb92_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_4 {
  tint_symbol_3 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_4;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol_2[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol_2[0u].z / r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[30u].y < r0.x)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb5_5.tint_symbol_2[30u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r1 = textureSample(t6, s6, v1.xyxx.xy);
  r0.z = (r1.x * cb5_5.tint_symbol_2[33u].z);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(cb5_5.tint_symbol_2[30u].zzzz)).z + cb5_5.tint_symbol_2[30u].w);
  r0.y = fma(r0.y, r0.z, cb5_5.tint_symbol_2[30u].z);
  let v_1 = fma(v1.xy, cb5_5.tint_symbol_2[31u].xy, cb5_5.tint_symbol_2[31u].zw);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = fma(v1.xy, cb5_5.tint_symbol_2[32u].xy, cb5_5.tint_symbol_2[32u].zw);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r2 = textureSample(t13, s13, r0.zwzz.xy);
  r1 = textureSample(t13, s13, r1.xyxx.xy);
  let v_3 = (r1.xy + r2.xy);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = (r0.zw + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * cb5_5.tint_symbol_2[33u].xy);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = fma(r0.zw, r0.yy, v1.xy);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  let v_8 = (r1.xyz * cb2_2.tint_symbol_1[17u].www);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[91u].w)));
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r2 = textureSample(t9, s9, r0.yzyy.xy);
    r3 = textureSample(t4, s4, r0.yzyy.xy);
    r4 = textureSample(t14, s14, r0.yzyy.xy);
    let v_9 = (r3.xyz * vec3<f32>(0.69999998807907104492f));
    r5 = vec4<f32>(v_9.xyz, r5.w);
    let v_10 = fma(r2.xyz, vec3<f32>(0.30000001192092895508f), r5.xyz);
    r5 = vec4<f32>(v_10.xyz, r5.w);
    let v_11 = (r4.xyz * vec3<f32>(0.5f));
    r4 = vec4<f32>(v_11.xyz, r4.w);
    let v_12 = fma(r3.xyz, vec3<f32>(0.5f), r4.xyz);
    r3 = vec4<f32>(v_12.xyz, r3.w);
    let v_13 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_14 = (r0.xx + v_13.xy);
    r4 = vec4<f32>(v_14.xy, r4.zw);
    r6.x = (r4.y * cb5_5.tint_symbol_2[3u].w);
    r0.w = clamp(fma(-(r4.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r6.x = clamp(r6.xxxx.x, 0.0f, 1.0f);
    r0.w = max(r0.w, r6.x);
    let v_15 = clamp(fma(r0.wwww, vec4<f32>(-500.0f, -0.50658559799194335938f, -100.0f, 0.0f), vec4<f32>(1.0f, 0.50151973962783813477f, 100.0f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
    r4 = vec4<f32>(v_15.xyz, r4.w);
    r0.w = ((-(r4.xxxx)).w + 1.0f);
    r0.w = min(r0.w, r4.y);
    r1.w = (r0.w + r4.x);
    r2.w = ((-(r1.wwww)).w + 1.0f);
    r2.w = min(r2.w, r4.z);
    r1.w = (r1.w + r2.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_16 = (r0.www * r2.xyz);
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = fma(r1.xyz, r4.xxx, r2.xyz);
    r2 = vec4<f32>(v_17.xyz, r2.w);
    let v_18 = fma(r5.xyz, r2.www, r2.xyz);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = fma(r3.xyz, r1.www, r2.xyz);
    r1 = vec4<f32>(v_19.xyz, r1.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[90u].z) != 0u)) {
    r2 = textureSample(t11, s11, r0.yzyy.xy);
    let v_20 = ((-(r1.xyzx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_20.xyz, r2.w);
    let v_21 = fma(r2.www, r2.xyz, r1.xyz);
    r1 = vec4<f32>(v_21.xyz, r1.w);
  }
  let v_22 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = r2.xy;
  let v_24 = max(v_23, vec2<f32>(-2147483648.0f));
  let v_25 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_24), vec2<i32>(2147483647i), (v_24 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_23 == v_23))));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r0.w = f32(bitcast<u32>(r2.y));
  r0.w = (r0.w * 0.0039215688593685627f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r0.w)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_26 = (r0.yz * vec2<f32>(58.16400146484375f, 47.130001068115234375f));
  r2 = vec4<f32>(v_26.xy, r2.zw);
  let v_27 = fma(r0.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_27.xy, r3.zw);
  r3.z = 1.0f;
  r4.x = dot(r3.xyz, cb5_5.tint_symbol_2[21u].xyz);
  r4.y = dot(r3.xyz, cb5_5.tint_symbol_2[22u].xyz);
  r4.z = dot(r3.xyz, cb5_5.tint_symbol_2[23u].xyz);
  let v_28 = fma(r4.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = dot(r4, cb5_5.tint_symbol_2[18u]);
  r5.y = dot(r4, cb5_5.tint_symbol_2[19u]);
  r0.x = dot(r4, cb5_5.tint_symbol_2[20u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_29 = bitcast<u32>(r1.w);
  r0.x = select(r0.x, 0.00000999999974737875f, (v_29 != 0u));
  let v_30 = (r5.xy / r0.xx);
  r2 = vec4<f32>(r2.xy, v_30.xy);
  let v_31 = ((-(r2.zzzw)).zw + r3.xy);
  r2 = vec4<f32>(r2.xy, v_31.xy);
  let v_32 = (r2.zw * vec2<f32>(40.0f, -22.5f));
  r2 = vec4<f32>(r2.xy, v_32.xy);
  r0.x = dot(r2.zw, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = inverseSqrt(r0.x);
  let v_33 = (r0.xx * r2.zw);
  r3 = vec4<f32>(v_33.xy, r3.zw);
  let v_34 = bitcast<vec2<u32>>(r1.ww);
  let v_35 = r3.xy;
  let v_36 = select(r2.zw, v_35, (v_34 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_36.xy);
  let v_37 = (r2.zw * cb5_5.tint_symbol_2[16u].xx);
  r2 = vec4<f32>(r2.xy, v_37.xy);
  let v_38 = (r2.zw * vec2<f32>(0.01250000018626451492f, 0.02222222276031970978f));
  r2 = vec4<f32>(r2.xy, v_38.xy);
  let v_39 = (r0.www * r1.xyz);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = (r2.zw * cb5_5.tint_symbol_2[17u].yy);
  r4 = vec4<f32>(v_40.xy, r4.zw);
  let v_41 = fma(r1.xy, vec2<f32>(8.0f), r2.xy);
  r2 = vec4<f32>(v_41.xy, r2.zw);
  r5 = textureSample(t12, s12, r2.xyxx.xy);
  r0.x = (r5.x + -0.5f);
  let v_42 = (r0.xx * r4.xy);
  r2 = vec4<f32>(v_42.xy, r2.zw);
  let v_43 = fma(r2.xy, vec2<f32>(0.5f), r0.yz);
  r2 = vec4<f32>(v_43.xy, r2.zw);
  let v_44 = cb5_5.tint_symbol_2[17u].x;
  let v_45 = max(v_44, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_45), 2147483647i, (v_45 >= 2147483648.0f)), 0i, !((v_44 == v_44))));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  let v_46 = r3;
  r6 = vec4<f32>(v_46.xyz, r6.w);
  r1.w = r0.w;
  r3.w = bitcast<f32>(v.tint_symbol_3[0i].x);
  loop {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) >= bitcast<i32>(r0.x))));
    if ((bitcast<u32>(r4.z) != 0u)) {
      break;
    }
    r4.z = f32(bitcast<i32>(r3.w));
    let v_47 = fma(r4.xy, r4.zz, r2.xy);
    r4 = vec4<f32>(r4.xy, v_47.xy);
    let v_48 = (r4.zw * cb2_2.tint_symbol_1[18u].xy);
    r4 = vec4<f32>(r4.xy, v_48.xy);
    let v_49 = round(r4.zw);
    r4 = vec4<f32>(r4.xy, v_49.xy);
    let v_50 = (r4.zw + vec2<f32>(0.5f));
    r4 = vec4<f32>(r4.xy, v_50.xy);
    let v_51 = (r4.zw / cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(v_51.xy, r7.zw);
    let v_52 = r4.zw;
    let v_53 = max(v_52, vec2<f32>(-2147483648.0f));
    let v_54 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_53), vec2<i32>(2147483647i), (v_53 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_52 == v_52))));
    r5 = vec4<f32>(v_54.xy, r5.zw);
    r8 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
    r4.z = f32(bitcast<u32>(r8.y));
    r4.z = (r4.z * 0.0039215688593685627f);
    r4.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r4.z)));
    r4.z = select(1.0f, 0.0f, (bitcast<u32>(r4.z) != 0u));
    r7 = textureSampleLevel(t9, s9, r7.xyxx.xy, 0.0f);
    let v_55 = fma(r7.xyz, r4.zzz, r6.xyz);
    r6 = vec4<f32>(v_55.xyz, r6.w);
    r1.w = (r1.w + r4.z);
    r3.w = bitcast<f32>((bitcast<i32>(r3.w) + 1i));
  }
  r0.x = max(r1.w, 0.10000000149011611938f);
  let v_56 = (r6.xyz / r0.xxx);
  r3 = vec4<f32>(v_56.xyz, r3.w);
  r0.x = dot(r2.zw, r2.zw);
  r0.x = clamp(((r0.xxxx * vec4<f32>(100000.0f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.w);
  let v_57 = ((-(r1.xyzx)).xyz + r3.xyz);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  let v_58 = fma(r0.xxx, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  r2 = textureSample(t10, s10, r0.yzyy.xy);
  let v_59 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[75u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = textureSample(t15, s15, r0.yzyy.xy);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_60 = fma(cb5_5.tint_symbol_2[46u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_60.xyz, r1.w);
  }
  let v_61 = min(r1.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_61.xyz, r0.w);
  let v_62 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_62, v_62, v_62, v_62), cb5_5.tint_symbol_2[14u].xxxx, cb5_5.tint_symbol_2[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_2[10u]) + cb5_5.tint_symbol_2[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_2[10u]);
  let v_63 = ((-(cb5_5.tint_symbol_2[11u].zxyz)).xyz + cb5_5.tint_symbol_2[13u].zxy);
  r3 = vec4<f32>(v_63.xyz, r3.w);
  let v_64 = fma(r0.www, r3.xyz, cb5_5.tint_symbol_2[11u].zxy);
  r3 = vec4<f32>(v_64.xyz, r3.w);
  let v_65 = (r1.ww * r3.yz);
  r4 = vec4<f32>(v_65.xy, r4.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r3.x, r0.w);
  r1.z = fma(r3.x, r1.z, r4.x);
  r1.w = fma(r1.x, r3.x, r1.y);
  r1.w = fma(r3.x, r1.w, r4.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r3.y / r3.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_66 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = fma(r1.xxx, r0.xyz, r0.www);
  r3 = vec4<f32>(v_68.xyz, r3.w);
  let v_69 = fma(r0.xyz, r3.xyz, r4.xxx);
  r3 = vec4<f32>(v_69.xyz, r3.w);
  let v_70 = fma(r1.xxx, r0.xyz, r1.yyy);
  r5 = vec4<f32>(v_70.xyz, r5.w);
  let v_71 = fma(r0.xyz, r5.xyz, r4.yyy);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  let v_72 = (r3.xyz / r0.xyz);
  r0 = vec4<f32>(v_72.xyz, r0.w);
  let v_73 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_73.xyz, r0.w);
  let v_74 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_74.xyz, r0.w);
  r2.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_75 = -(r2.wwww);
  let v_76 = (r0.xyz + v_75.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  let v_77 = fma(cb5_5.tint_symbol_2[67u].xxx, r0.xyz, r2.www);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  r3.x = clamp(((r2.wwww / cb5_5.tint_symbol_2[66u].wwww)).x, 0.0f, 1.0f);
  let v_78 = -(cb5_5.tint_symbol_2[66u].xxyz);
  let v_79 = (cb5_5.tint_symbol_2[65u].xyz + v_78.yzw);
  r3 = vec4<f32>(r3.x, v_79.xyz);
  let v_80 = fma(r3.xxx, r3.yzw, cb5_5.tint_symbol_2[66u].xyz);
  r3 = vec4<f32>(v_80.xyz, r3.w);
  let v_81 = (r0.xyz * r3.xyz);
  r5 = vec4<f32>(v_81.xyz, r5.w);
  r3.w = ((-(cb5_5.tint_symbol_2[65u].wwww)).w + 1.0f);
  let v_82 = -(r3.wwww);
  r2.w = (r2.w + v_82.w);
  r3.w = ((-(r3.wwww)).w + 1.0f);
  r3.w = max(r3.w, 0.00999999977648258209f);
  r2.w = clamp(((r2.wwww / r3.wwww)).w, 0.0f, 1.0f);
  let v_83 = fma((-(r0.xyzx)).xyz, r3.xyz, r0.xyz);
  r0 = vec4<f32>(v_83.xyz, r0.w);
  let v_84 = clamp(fma(r2.wwww, r0.xyzx, r5.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_84.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.y = (r0.x * cb5_5.tint_symbol_2[24u].z);
  r0.y = clamp(((r0.yyyy / cb5_5.tint_symbol_2[23u].wwww)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  let v_85 = -(cb5_5.tint_symbol_2[24u].xxxx);
  r0.z = fma(r0.x, cb5_5.tint_symbol_2[24u].z, v_85.z);
  r2.w = (v_85.w + cb5_5.tint_symbol_2[24u].y);
  r0.z = clamp(((r0.zzzz / r2.wwww)).z, 0.0f, 1.0f);
  r2.w = (r0.z + r0.y);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  let v_86 = (r0.yy * cb5_5.tint_symbol_2[25u].xw);
  r3 = vec4<f32>(v_86.xy, r3.zw);
  r3.x = fma(r0.z, cb5_5.tint_symbol_2[25u].y, r3.x);
  r3.x = fma(r2.w, cb5_5.tint_symbol_2[24u].w, r3.x);
  r0.x = fma(r0.x, cb5_5.tint_symbol_2[24u].z, r3.x);
  let v_87 = fma(v1.xy, vec2<f32>(2.40000009536743164062f, 1.35000002384185791016f), cb5_5.tint_symbol_2[15u].xy);
  r3 = vec4<f32>(r3.xy, v_87.xy);
  let v_88 = fract(r3.zw);
  r3 = vec4<f32>(r3.xy, v_88.xy);
  r5 = textureSample(t7, s7, r3.zwzz.xy);
  r3.y = fma(r2.w, cb5_5.tint_symbol_2[25u].z, r3.y);
  r3.z = (r5.y + -0.5f);
  r0.x = fma(r3.z, r3.y, r0.x);
  r3.y = (r0.z * cb5_5.tint_symbol_2[26u].x);
  r3.y = (r3.y * r3.z);
  r3.y = max(r3.y, 0.0f);
  r0.x = (r0.x + r3.y);
  let v_89 = (r2.xyz * v1.zzz);
  r2 = vec4<f32>(v_89.xyz, r2.w);
  let v_90 = max(r2.xyz, vec3<f32>());
  r2 = vec4<f32>(v_90.xyz, r2.w);
  let v_91 = fma(r1.xxx, r2.xyz, r0.www);
  r3 = vec4<f32>(r3.x, v_91.xyz);
  let v_92 = fma(r2.xyz, r3.yzw, r4.xxx);
  r3 = vec4<f32>(r3.x, v_92.xyz);
  let v_93 = fma(r1.xxx, r2.xyz, r1.yyy);
  r4 = vec4<f32>(v_93.x, r4.y, v_93.yz);
  let v_94 = fma(r2.xyz, r4.xzw, r4.yyy);
  r2 = vec4<f32>(v_94.xyz, r2.w);
  let v_95 = (r3.yzw / r2.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  let v_96 = ((-(r1.wwww)).xyw + r2.xyz);
  r1 = vec4<f32>(v_96.xy, r1.z, v_96.z);
  let v_97 = clamp(((r1.zzzz * r1.xywx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_97.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.w = fma(r0.w, cb5_5.tint_symbol_2[24u].z, r3.x);
  r0.w = ((-(r0.zzzz)).w + r0.w);
  r0.w = max(r0.w, 0.0f);
  r0.x = fma(r0.w, cb5_5.tint_symbol_2[26u].y, r0.x);
  let v_98 = (r0.zzz * cb5_5.tint_symbol_2[29u].xyz);
  r1 = vec4<f32>(v_98.xyz, r1.w);
  let v_99 = fma(r0.yyy, cb5_5.tint_symbol_2[28u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_99.xyz);
  let v_100 = fma(r2.www, cb5_5.tint_symbol_2[27u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_100.xyz);
  let v_101 = clamp(((r0.xxxx * r0.yzwy)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_101.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_102 = r0;
  o0 = vec4<f32>(v_102.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
