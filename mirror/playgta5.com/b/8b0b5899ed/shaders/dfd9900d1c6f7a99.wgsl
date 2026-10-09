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
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_1 = (r1.xyz * cb2_2.tint_symbol_1[17u].www);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[91u].w)));
  if ((bitcast<u32>(r1.x) != 0u)) {
  } else {
    r1 = textureSample(t9, s9, v1.xyxx.xy);
    r2 = textureSample(t4, s4, v1.xyxx.xy);
    r3 = textureSample(t14, s14, v1.xyxx.xy);
    let v_2 = (r2.xyz * vec3<f32>(0.69999998807907104492f));
    r4 = vec4<f32>(v_2.xyz, r4.w);
    let v_3 = fma(r1.xyz, vec3<f32>(0.30000001192092895508f), r4.xyz);
    r4 = vec4<f32>(v_3.xyz, r4.w);
    let v_4 = (r3.xyz * vec3<f32>(0.5f));
    r3 = vec4<f32>(v_4.xyz, r3.w);
    let v_5 = fma(r2.xyz, vec3<f32>(0.5f), r3.xyz);
    r2 = vec4<f32>(v_5.xyz, r2.w);
    let v_6 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_7 = (r0.xx + v_6.xy);
    r3 = vec4<f32>(v_7.xy, r3.zw);
    r5.x = (r3.y * cb5_5.tint_symbol_2[3u].w);
    r1.w = clamp(fma(-(r3.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
    r1.w = max(r1.w, r5.x);
    let v_8 = clamp(fma(r1.wwww, vec4<f32>(-500.0f, -0.50658559799194335938f, -100.0f, 0.0f), vec4<f32>(1.0f, 0.50151973962783813477f, 100.0f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
    r3 = vec4<f32>(v_8.xyz, r3.w);
    r1.w = ((-(r3.xxxx)).w + 1.0f);
    r1.w = min(r1.w, r3.y);
    r2.w = (r1.w + r3.x);
    r3.y = ((-(r2.wwww)).y + 1.0f);
    r3.y = min(r3.y, r3.z);
    r2.w = (r2.w + r3.y);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    let v_9 = (r1.www * r1.xyz);
    r1 = vec4<f32>(v_9.xyz, r1.w);
    let v_10 = fma(r0.yzw, r3.xxx, r1.xyz);
    r1 = vec4<f32>(v_10.xyz, r1.w);
    let v_11 = fma(r4.xyz, r3.yyy, r1.xyz);
    r1 = vec4<f32>(v_11.xyz, r1.w);
    let v_12 = fma(r2.xyz, r2.www, r1.xyz);
    r0 = vec4<f32>(r0.x, v_12.xyz);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[90u].z) != 0u)) {
    r1 = textureSample(t11, s11, v1.xyxx.xy);
    let v_13 = ((-(r0.yzwy)).xyz + r1.xyz);
    r2 = vec4<f32>(v_13.xyz, r2.w);
    let v_14 = fma(r1.www, r2.xyz, r0.yzw);
    r0 = vec4<f32>(r0.x, v_14.xyz);
  } else {
    r1 = vec4<f32>();
  }
  let v_15 = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = r2.xy;
  let v_17 = max(v_16, vec2<f32>(-2147483648.0f));
  let v_18 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_17), vec2<i32>(2147483647i), (v_17 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_16 == v_16))));
  r2 = vec4<f32>(v_18.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r2.x = f32(bitcast<u32>(r2.y));
  r2.x = (r2.x * 0.0039215688593685627f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r2.x)));
  r2.x = select(1.0f, 0.0f, (bitcast<u32>(r2.x) != 0u));
  let v_19 = r2;
  r2 = vec4<f32>(v_19.x, ((v1.xy * vec2<f32>(58.16400146484375f, 47.130001068115234375f))).xy, v_19.w);
  let v_20 = fma(v1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_20.xy, r3.zw);
  let v_21 = fma(v1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r4 = vec4<f32>(v_21.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
  r5.x = dot(r4.xyz, cb5_5.tint_symbol_2[21u].xyz);
  r5.y = dot(r4.xyz, cb5_5.tint_symbol_2[22u].xyz);
  r5.z = dot(r4.xyz, cb5_5.tint_symbol_2[23u].xyz);
  let v_22 = fma(r5.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  r5.x = dot(r4, cb5_5.tint_symbol_2[18u]);
  r5.y = dot(r4, cb5_5.tint_symbol_2[19u]);
  r0.x = dot(r4, cb5_5.tint_symbol_2[20u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_23 = bitcast<u32>(r2.w);
  r0.x = select(r0.x, 0.00000999999974737875f, (v_23 != 0u));
  let v_24 = (r5.xy / r0.xx);
  r3 = vec4<f32>(r3.xy, v_24.xy);
  let v_25 = ((-(r3.zwzz)).xy + r3.xy);
  r3 = vec4<f32>(v_25.xy, r3.zw);
  let v_26 = (r3.xy * vec2<f32>(40.0f, -22.5f));
  r3 = vec4<f32>(v_26.xy, r3.zw);
  r0.x = dot(r3.xy, r3.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = inverseSqrt(r0.x);
  let v_27 = (r0.xx * r3.xy);
  r3 = vec4<f32>(r3.xy, v_27.xy);
  let v_28 = bitcast<vec2<u32>>(r2.ww);
  let v_29 = r3.zw;
  let v_30 = select(r3.xy, v_29, (v_28 != vec2<u32>()));
  r3 = vec4<f32>(v_30.xy, r3.zw);
  let v_31 = (r3.xy * cb5_5.tint_symbol_2[16u].xx);
  r3 = vec4<f32>(v_31.xy, r3.zw);
  let v_32 = (r3.xy * vec2<f32>(0.01250000018626451492f, 0.02222222276031970978f));
  r3 = vec4<f32>(v_32.xy, r3.zw);
  let v_33 = (r0.yzw * r2.xxx);
  r4 = vec4<f32>(v_33.xyz, r4.w);
  let v_34 = (r3.xy * cb5_5.tint_symbol_2[17u].yy);
  r3 = vec4<f32>(r3.xy, v_34.xy);
  let v_35 = fma(r0.yz, vec2<f32>(8.0f), r2.yz);
  let v_36 = r2;
  r2 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  r5 = textureSample(t12, s12, r2.yzyy.xy);
  r0.x = (r5.x + -0.5f);
  let v_37 = (r0.xx * r3.zw);
  let v_38 = r2;
  r2 = vec4<f32>(v_38.x, v_37.xy, v_38.w);
  let v_39 = fma(r2.yz, vec2<f32>(0.5f), v1.xy);
  let v_40 = r2;
  r2 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = cb5_5.tint_symbol_2[17u].x;
  let v_42 = max(v_41, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_42), 2147483647i, (v_42 >= 2147483648.0f)), 0i, !((v_41 == v_41))));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  let v_43 = r4;
  r6 = vec4<f32>(v_43.xyz, r6.w);
  r2.w = r2.x;
  r4.w = bitcast<f32>(v.tint_symbol_3[0i].x);
  loop {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.w) >= bitcast<i32>(r0.x))));
    if ((bitcast<u32>(r6.w) != 0u)) {
      break;
    }
    r6.w = f32(bitcast<i32>(r4.w));
    let v_44 = fma(r3.zw, r6.ww, r2.yz);
    r7 = vec4<f32>(v_44.xy, r7.zw);
    let v_45 = (r7.xy * cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(v_45.xy, r7.zw);
    let v_46 = round(r7.xy);
    r7 = vec4<f32>(v_46.xy, r7.zw);
    let v_47 = (r7.xy + vec2<f32>(0.5f));
    r7 = vec4<f32>(v_47.xy, r7.zw);
    let v_48 = (r7.xy / cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(r7.xy, v_48.xy);
    let v_49 = r7.xy;
    let v_50 = max(v_49, vec2<f32>(-2147483648.0f));
    let v_51 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_50), vec2<i32>(2147483647i), (v_50 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_49 == v_49))));
    r5 = vec4<f32>(v_51.xy, r5.zw);
    r8 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
    r5.x = f32(bitcast<u32>(r8.y));
    r5.x = (r5.x * 0.0039215688593685627f);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r5.x)));
    r5.x = select(1.0f, 0.0f, (bitcast<u32>(r5.x) != 0u));
    r7 = textureSampleLevel(t9, s9, r7.zwzz.xy, 0.0f);
    let v_52 = fma(r7.xyz, r5.xxx, r6.xyz);
    r6 = vec4<f32>(v_52.xyz, r6.w);
    r2.w = (r2.w + r5.x);
    r4.w = bitcast<f32>((bitcast<i32>(r4.w) + 1i));
  }
  r0.x = max(r2.w, 0.10000000149011611938f);
  let v_53 = (r6.xyz / r0.xxx);
  r2 = vec4<f32>(r2.x, v_53.xyz);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = (r0.x * 100000.0f);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r2.x);
  let v_54 = ((-(r0.yzwy)).xyz + r2.yzw);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = fma(r0.xxx, r2.xyz, r0.yzw);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  r2 = textureSample(t14, s14, v1.xyxx.xy);
  let v_56 = -(r2.xyzx);
  let v_57 = (r1.xyz + v_56.xyz);
  r1 = vec4<f32>(v_57.xyz, r1.w);
  let v_58 = fma(r1.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = bitcast<vec3<u32>>(cb5_5.tint_symbol_2[90u].zzz);
  let v_60 = r1.xyz;
  let v_61 = select(r2.xyz, v_60, (v_59 != vec3<u32>()));
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_62.xyz, r1.w);
  let v_63 = fma(cb5_5.tint_symbol_2[64u].xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_63.xyz, r0.w);
  r1 = textureSample(t10, s10, v1.xyxx.xy);
  let v_64 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_64.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[75u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSample(t15, s15, v1.xyxx.xy);
    r0.w = (r2.x * r2.x);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_65 = fma(cb5_5.tint_symbol_2[46u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_65.xyz, r0.w);
  }
  r2 = textureSample(t13, s13, v1.xyxx.xy);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_2[34u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[34u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_2[34u].zzzz)).w + cb5_5.tint_symbol_2[34u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_2[34u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_2[35u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[36u].w);
  let v_66 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = (r1.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r1 = vec4<f32>(v_67.xyz, r1.w);
  let v_68 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_68.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[57u].zzzz)).w, 0.0f, 1.0f);
  let v_69 = ((-(cb5_5.tint_symbol_2[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_69.xyz, r1.w);
  let v_70 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_70.xyz, r1.w);
  let v_71 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  let v_72 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_72.xyz, r0.w);
  let v_73 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_73, v_73, v_73, v_73), cb5_5.tint_symbol_2[14u].xxxx, cb5_5.tint_symbol_2[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_2[10u]) + cb5_5.tint_symbol_2[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_2[10u]);
  let v_74 = ((-(cb5_5.tint_symbol_2[11u].zxyz)).xyz + cb5_5.tint_symbol_2[13u].zxy);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  let v_75 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_2[11u].zxy);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_76.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_77 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  let v_78 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_80.xyz, r2.w);
  let v_81 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_81.x, r3.y, v_81.yz);
  let v_82 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  let v_83 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_83.xyz, r0.w);
  let v_84 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_84.xyz, r0.w);
  let v_85 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_85.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_86 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(cb5_5.tint_symbol_2[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[66u].wwww)).x, 0.0f, 1.0f);
  let v_88 = -(cb5_5.tint_symbol_2[66u].xxyz);
  let v_89 = (cb5_5.tint_symbol_2[65u].xyz + v_88.yzw);
  r1 = vec4<f32>(r1.x, v_89.xyz);
  let v_90 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[66u].xyz);
  r1 = vec4<f32>(v_90.xyz, r1.w);
  let v_91 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_91.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[65u].wwww)).w + 1.0f);
  let v_92 = -(r1.wwww);
  r0.w = (r0.w + v_92.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_93 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_93.xyz, r0.w);
  let v_94 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_94.xyz, r0.w);
  let v_95 = log2(r0.xyz);
  r0 = vec4<f32>(v_95.xyz, r0.w);
  let v_96 = (r0.xyz * cb5_5.tint_symbol_2[67u].yyy);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  let v_97 = exp2(r0.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  r0.w = (v1.y + cb5_5.tint_symbol_2[63u].w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[63u].y);
  r0.w = sin(r0.wwww.w);
  r0.w = fma(r0.w, 0.5f, 0.5f);
  r1.x = fma(cb5_5.tint_symbol_2[63u].w, 0.5f, v1.y);
  r1.x = (r1.x * cb5_5.tint_symbol_2[63u].z);
  r1.x = sin(r1.xxxx.x);
  r1.x = fma(r1.x, 0.5f, 0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[63u].x);
  r0.w = fma(r0.w, cb5_5.tint_symbol_2[63u].x, r1.x);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_98 = (v1.xy * cb5_5.tint_symbol_2[15u].ww);
  r1 = vec4<f32>(v_98.xy, r1.zw);
  let v_99 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_2[15u].xy);
  r1 = vec4<f32>(v_99.xy, r1.zw);
  let v_100 = fract(r1.xy);
  r1 = vec4<f32>(v_100.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  r1.x = (r1.w + -0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[15u].z);
  let v_101 = clamp(fma(r0.xyzx, r0.wwww, r1.xxxx).xyz, vec3<f32>(), vec3<f32>(1.0f));
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
