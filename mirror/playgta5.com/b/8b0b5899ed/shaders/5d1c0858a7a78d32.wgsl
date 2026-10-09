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
    r1 = fma(cb5_5.tint_symbol_2[72u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), v1.xyxy);
    r2 = textureSample(t4, s4, r1.xyxx.xy);
    r3 = textureSample(t4, s4, r1.zwzz.xy);
    r4 = fma(cb5_5.tint_symbol_2[72u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), v1.xyxy);
    r5 = textureSample(t4, s4, r4.xyxx.xy);
    r6 = textureSample(t4, s4, r4.zwzz.xy);
    r7 = textureSample(t4, s4, v1.xyxx.xy);
    let v_2 = (r2.xyz + r3.xyz);
    r2 = vec4<f32>(v_2.xyz, r2.w);
    let v_3 = (r5.xyz + r2.xyz);
    r2 = vec4<f32>(v_3.xyz, r2.w);
    let v_4 = (r6.xyz + r2.xyz);
    r2 = vec4<f32>(v_4.xyz, r2.w);
    let v_5 = (r7.xyz * vec3<f32>(0.5f));
    r3 = vec4<f32>(v_5.xyz, r3.w);
    let v_6 = fma(r7.xyz, vec3<f32>(0.5f), r2.xyz);
    r2 = vec4<f32>(v_6.xyz, r2.w);
    r5 = textureSample(t9, s9, r1.xyxx.xy);
    r1 = textureSample(t9, s9, r1.zwzz.xy);
    r6 = textureSample(t9, s9, r4.xyxx.xy);
    r4 = textureSample(t9, s9, r4.zwzz.xy);
    r7 = textureSample(t9, s9, v1.xyxx.xy);
    let v_7 = (r1.xyz + r5.xyz);
    r1 = vec4<f32>(v_7.xyz, r1.w);
    let v_8 = (r6.xyz + r1.xyz);
    r1 = vec4<f32>(v_8.xyz, r1.w);
    let v_9 = (r4.xyz + r1.xyz);
    r1 = vec4<f32>(v_9.xyz, r1.w);
    let v_10 = fma(r7.xyz, vec3<f32>(0.5f), r1.xyz);
    r1 = vec4<f32>(v_10.xyz, r1.w);
    let v_11 = fma(r7.xyz, vec3<f32>(0.5f), r3.xyz);
    r3 = vec4<f32>(v_11.xyz, r3.w);
    let v_12 = (r2.xyz * vec3<f32>(0.11111111193895339966f));
    r2 = vec4<f32>(v_12.xyz, r2.w);
    let v_13 = fma(r1.xyz, vec3<f32>(0.11111111193895339966f), r2.xyz);
    r1 = vec4<f32>(v_13.xyz, r1.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_2[4u].x == 0.0f))));
    let v_14 = bitcast<vec3<u32>>(r1.www);
    let v_15 = r7.xyz;
    let v_16 = select(r3.xyz, v_15, (v_14 != vec3<u32>()));
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = bitcast<vec3<u32>>(r1.www);
    let v_18 = r7.xyz;
    let v_19 = select(r1.xyz, v_18, (v_17 != vec3<u32>()));
    r1 = vec4<f32>(v_19.xyz, r1.w);
    let v_20 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_21 = (r0.xx + v_20.xy);
    r3 = vec4<f32>(v_21.xy, r3.zw);
    r4.x = (r3.y * cb5_5.tint_symbol_2[3u].w);
    r1.w = clamp(fma(-(r3.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.x = clamp(r4.xxxx.x, 0.0f, 1.0f);
    r1.w = max(r1.w, r4.x);
    let v_22 = clamp(fma(r1.wwww, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 0.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
    r3 = vec4<f32>(v_22.xyz, r3.w);
    r1.w = ((-(r3.xxxx)).w + 1.0f);
    r1.w = min(r1.w, r3.y);
    r2.w = (r1.w + r3.x);
    r3.y = ((-(r2.wwww)).y + 1.0f);
    r3.y = min(r3.y, r3.z);
    r2.w = (r2.w + r3.y);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    let v_23 = (r1.www * r7.xyz);
    r4 = vec4<f32>(v_23.xyz, r4.w);
    let v_24 = fma(r0.yzw, r3.xxx, r4.xyz);
    r3 = vec4<f32>(v_24.x, r3.y, v_24.yz);
    let v_25 = fma(r2.xyz, r3.yyy, r3.xzw);
    r2 = vec4<f32>(v_25.xyz, r2.w);
    let v_26 = fma(r1.xyz, r2.www, r2.xyz);
    r0 = vec4<f32>(r0.x, v_26.xyz);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[90u].z) != 0u)) {
    r1 = textureSample(t11, s11, v1.xyxx.xy);
    let v_27 = ((-(r0.yzwy)).xyz + r1.xyz);
    r2 = vec4<f32>(v_27.xyz, r2.w);
    let v_28 = fma(r1.www, r2.xyz, r0.yzw);
    r0 = vec4<f32>(r0.x, v_28.xyz);
  } else {
    r1 = vec4<f32>();
  }
  let v_29 = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = r2.xy;
  let v_31 = max(v_30, vec2<f32>(-2147483648.0f));
  let v_32 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_31), vec2<i32>(2147483647i), (v_31 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_30 == v_30))));
  r2 = vec4<f32>(v_32.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r2.x = f32(bitcast<u32>(r2.y));
  r2.x = (r2.x * 0.0039215688593685627f);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r2.x)));
  r2.x = select(1.0f, 0.0f, (bitcast<u32>(r2.x) != 0u));
  let v_33 = r2;
  r2 = vec4<f32>(v_33.x, ((v1.xy * vec2<f32>(58.16400146484375f, 47.130001068115234375f))).xy, v_33.w);
  let v_34 = fma(v1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_34.xy, r3.zw);
  let v_35 = fma(v1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r4 = vec4<f32>(v_35.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>(1.0f));
  r5.x = dot(r4.xyz, cb5_5.tint_symbol_2[21u].xyz);
  r5.y = dot(r4.xyz, cb5_5.tint_symbol_2[22u].xyz);
  r5.z = dot(r4.xyz, cb5_5.tint_symbol_2[23u].xyz);
  let v_36 = fma(r5.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  r5.x = dot(r4, cb5_5.tint_symbol_2[18u]);
  r5.y = dot(r4, cb5_5.tint_symbol_2[19u]);
  r0.x = dot(r4, cb5_5.tint_symbol_2[20u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_37 = bitcast<u32>(r2.w);
  r0.x = select(r0.x, 0.00000999999974737875f, (v_37 != 0u));
  let v_38 = (r5.xy / r0.xx);
  r3 = vec4<f32>(r3.xy, v_38.xy);
  let v_39 = ((-(r3.zwzz)).xy + r3.xy);
  r3 = vec4<f32>(v_39.xy, r3.zw);
  let v_40 = (r3.xy * vec2<f32>(40.0f, -22.5f));
  r3 = vec4<f32>(v_40.xy, r3.zw);
  r0.x = dot(r3.xy, r3.xy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = inverseSqrt(r0.x);
  let v_41 = (r0.xx * r3.xy);
  r3 = vec4<f32>(r3.xy, v_41.xy);
  let v_42 = bitcast<vec2<u32>>(r2.ww);
  let v_43 = r3.zw;
  let v_44 = select(r3.xy, v_43, (v_42 != vec2<u32>()));
  r3 = vec4<f32>(v_44.xy, r3.zw);
  let v_45 = (r3.xy * cb5_5.tint_symbol_2[16u].xx);
  r3 = vec4<f32>(v_45.xy, r3.zw);
  let v_46 = (r3.xy * vec2<f32>(0.01250000018626451492f, 0.02222222276031970978f));
  r3 = vec4<f32>(v_46.xy, r3.zw);
  let v_47 = (r0.yzw * r2.xxx);
  r4 = vec4<f32>(v_47.xyz, r4.w);
  let v_48 = (r3.xy * cb5_5.tint_symbol_2[17u].yy);
  r3 = vec4<f32>(r3.xy, v_48.xy);
  let v_49 = fma(r0.yz, vec2<f32>(8.0f), r2.yz);
  let v_50 = r2;
  r2 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r5 = textureSample(t12, s12, r2.yzyy.xy);
  r0.x = (r5.x + -0.5f);
  let v_51 = (r0.xx * r3.zw);
  let v_52 = r2;
  r2 = vec4<f32>(v_52.x, v_51.xy, v_52.w);
  let v_53 = fma(r2.yz, vec2<f32>(0.5f), v1.xy);
  let v_54 = r2;
  r2 = vec4<f32>(v_54.x, v_53.xy, v_54.w);
  let v_55 = cb5_5.tint_symbol_2[17u].x;
  let v_56 = max(v_55, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_56), 2147483647i, (v_56 >= 2147483648.0f)), 0i, !((v_55 == v_55))));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  let v_57 = r4;
  r6 = vec4<f32>(v_57.xyz, r6.w);
  r2.w = r2.x;
  r4.w = bitcast<f32>(v.tint_symbol_3[0i].x);
  loop {
    r6.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.w) >= bitcast<i32>(r0.x))));
    if ((bitcast<u32>(r6.w) != 0u)) {
      break;
    }
    r6.w = f32(bitcast<i32>(r4.w));
    let v_58 = fma(r3.zw, r6.ww, r2.yz);
    r7 = vec4<f32>(v_58.xy, r7.zw);
    let v_59 = (r7.xy * cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(v_59.xy, r7.zw);
    let v_60 = round(r7.xy);
    r7 = vec4<f32>(v_60.xy, r7.zw);
    let v_61 = (r7.xy + vec2<f32>(0.5f));
    r7 = vec4<f32>(v_61.xy, r7.zw);
    let v_62 = (r7.xy / cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(r7.xy, v_62.xy);
    let v_63 = r7.xy;
    let v_64 = max(v_63, vec2<f32>(-2147483648.0f));
    let v_65 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_64), vec2<i32>(2147483647i), (v_64 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_63 == v_63))));
    r5 = vec4<f32>(v_65.xy, r5.zw);
    r8 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
    r5.x = f32(bitcast<u32>(r8.y));
    r5.x = (r5.x * 0.0039215688593685627f);
    r5.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r5.x)));
    r5.x = select(1.0f, 0.0f, (bitcast<u32>(r5.x) != 0u));
    r7 = textureSampleLevel(t9, s9, r7.zwzz.xy, 0.0f);
    let v_66 = fma(r7.xyz, r5.xxx, r6.xyz);
    r6 = vec4<f32>(v_66.xyz, r6.w);
    r2.w = (r2.w + r5.x);
    r4.w = bitcast<f32>((bitcast<i32>(r4.w) + 1i));
  }
  r0.x = max(r2.w, 0.10000000149011611938f);
  let v_67 = (r6.xyz / r0.xxx);
  r2 = vec4<f32>(r2.x, v_67.xyz);
  r0.x = dot(r3.xy, r3.xy);
  r0.x = (r0.x * 100000.0f);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r2.x);
  let v_68 = ((-(r0.yzwy)).xyz + r2.yzw);
  r2 = vec4<f32>(v_68.xyz, r2.w);
  let v_69 = fma(r0.xxx, r2.xyz, r0.yzw);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  r2 = textureSample(t14, s14, v1.xyxx.xy);
  let v_70 = -(r2.xyzx);
  let v_71 = (r1.xyz + v_70.xyz);
  r1 = vec4<f32>(v_71.xyz, r1.w);
  let v_72 = fma(r1.www, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  let v_73 = bitcast<vec3<u32>>(cb5_5.tint_symbol_2[90u].zzz);
  let v_74 = r1.xyz;
  let v_75 = select(r2.xyz, v_74, (v_73 != vec3<u32>()));
  r1 = vec4<f32>(v_75.xyz, r1.w);
  let v_76 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_76.xyz, r1.w);
  let v_77 = fma(cb5_5.tint_symbol_2[64u].xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  r1 = textureSample(t10, s10, v1.xyxx.xy);
  let v_78 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_78.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[75u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSample(t15, s15, v1.xyxx.xy);
    r0.w = (r2.x * r2.x);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_79 = fma(cb5_5.tint_symbol_2[46u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_79.xyz, r0.w);
  }
  r2 = textureSample(t13, s13, v1.xyxx.xy);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_2[34u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[34u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_2[34u].zzzz)).w + cb5_5.tint_symbol_2[34u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_2[34u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_2[35u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[36u].w);
  let v_80 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = (r1.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r1 = vec4<f32>(v_81.xyz, r1.w);
  let v_82 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[57u].zzzz)).w, 0.0f, 1.0f);
  let v_83 = ((-(cb5_5.tint_symbol_2[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_83.xyz, r1.w);
  let v_84 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_84.xyz, r1.w);
  let v_85 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_87, v_87, v_87, v_87), cb5_5.tint_symbol_2[14u].xxxx, cb5_5.tint_symbol_2[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_2[10u]) + cb5_5.tint_symbol_2[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_2[10u]);
  let v_88 = ((-(cb5_5.tint_symbol_2[11u].zxyz)).xyz + cb5_5.tint_symbol_2[13u].zxy);
  r2 = vec4<f32>(v_88.xyz, r2.w);
  let v_89 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_2[11u].zxy);
  r2 = vec4<f32>(v_89.xyz, r2.w);
  let v_90 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_90.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_91 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  let v_94 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_94.xyz, r2.w);
  let v_95 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_95.x, r3.y, v_95.yz);
  let v_96 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_96.xyz, r0.w);
  let v_97 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_97.xyz, r0.w);
  let v_98 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_98.xyz, r0.w);
  let v_99 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_99.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_100 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  let v_101 = fma(cb5_5.tint_symbol_2[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[66u].wwww)).x, 0.0f, 1.0f);
  let v_102 = -(cb5_5.tint_symbol_2[66u].xxyz);
  let v_103 = (cb5_5.tint_symbol_2[65u].xyz + v_102.yzw);
  r1 = vec4<f32>(r1.x, v_103.xyz);
  let v_104 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[66u].xyz);
  r1 = vec4<f32>(v_104.xyz, r1.w);
  let v_105 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_105.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[65u].wwww)).w + 1.0f);
  let v_106 = -(r1.wwww);
  r0.w = (r0.w + v_106.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_107 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_107.xyz, r0.w);
  let v_108 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_108.xyz, r0.w);
  let v_109 = log2(r0.xyz);
  r0 = vec4<f32>(v_109.xyz, r0.w);
  let v_110 = (r0.xyz * cb5_5.tint_symbol_2[67u].yyy);
  r0 = vec4<f32>(v_110.xyz, r0.w);
  let v_111 = exp2(r0.xyz);
  r0 = vec4<f32>(v_111.xyz, r0.w);
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
  let v_112 = (v1.xy * cb5_5.tint_symbol_2[15u].ww);
  r1 = vec4<f32>(v_112.xy, r1.zw);
  let v_113 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_2[15u].xy);
  r1 = vec4<f32>(v_113.xy, r1.zw);
  let v_114 = fract(r1.xy);
  r1 = vec4<f32>(v_114.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  r1.x = (r1.w + -0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[15u].z);
  let v_115 = clamp(fma(r0.xyzx, r0.wwww, r1.xxxx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_115.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_116 = r0;
  o0 = vec4<f32>(v_116.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
