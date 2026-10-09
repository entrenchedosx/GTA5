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

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

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
    r2 = fma(cb5_5.tint_symbol_2[72u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), r0.yzyz);
    r3 = textureSample(t4, s4, r2.xyxx.xy);
    r4 = textureSample(t4, s4, r2.zwzz.xy);
    r5 = fma(cb5_5.tint_symbol_2[72u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), r0.yzyz);
    r6 = textureSample(t4, s4, r5.xyxx.xy);
    r7 = textureSample(t4, s4, r5.zwzz.xy);
    r8 = textureSample(t4, s4, r0.yzyy.xy);
    let v_9 = (r3.xyz + r4.xyz);
    r3 = vec4<f32>(v_9.xyz, r3.w);
    let v_10 = (r6.xyz + r3.xyz);
    r3 = vec4<f32>(v_10.xyz, r3.w);
    let v_11 = (r7.xyz + r3.xyz);
    r3 = vec4<f32>(v_11.xyz, r3.w);
    let v_12 = (r8.xyz * vec3<f32>(0.5f));
    r4 = vec4<f32>(v_12.xyz, r4.w);
    let v_13 = fma(r8.xyz, vec3<f32>(0.5f), r3.xyz);
    r3 = vec4<f32>(v_13.xyz, r3.w);
    r6 = textureSample(t9, s9, r2.xyxx.xy);
    r2 = textureSample(t9, s9, r2.zwzz.xy);
    r7 = textureSample(t9, s9, r5.xyxx.xy);
    r5 = textureSample(t9, s9, r5.zwzz.xy);
    r8 = textureSample(t9, s9, r0.yzyy.xy);
    let v_14 = (r2.xyz + r6.xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = (r7.xyz + r2.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = (r5.xyz + r2.xyz);
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = fma(r8.xyz, vec3<f32>(0.5f), r2.xyz);
    r2 = vec4<f32>(v_17.xyz, r2.w);
    let v_18 = fma(r8.xyz, vec3<f32>(0.5f), r4.xyz);
    r4 = vec4<f32>(v_18.xyz, r4.w);
    let v_19 = (r3.xyz * vec3<f32>(0.11111111193895339966f));
    r3 = vec4<f32>(v_19.xyz, r3.w);
    let v_20 = fma(r2.xyz, vec3<f32>(0.11111111193895339966f), r3.xyz);
    r2 = vec4<f32>(v_20.xyz, r2.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol_2[4u].x == 0.0f))));
    let v_21 = bitcast<vec3<u32>>(r0.www);
    let v_22 = r8.xyz;
    let v_23 = select(r4.xyz, v_22, (v_21 != vec3<u32>()));
    r3 = vec4<f32>(v_23.xyz, r3.w);
    let v_24 = bitcast<vec3<u32>>(r0.www);
    let v_25 = r8.xyz;
    let v_26 = select(r2.xyz, v_25, (v_24 != vec3<u32>()));
    r2 = vec4<f32>(v_26.xyz, r2.w);
    let v_27 = -(cb5_5.tint_symbol_2[3u].xzxx);
    let v_28 = (r0.xx + v_27.xy);
    r4 = vec4<f32>(v_28.xy, r4.zw);
    r5.x = (r4.y * cb5_5.tint_symbol_2[3u].w);
    r0.w = clamp(fma(-(r4.xxxx), cb5_5.tint_symbol_2[3u].yyyy, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r5.x = clamp(r5.xxxx.x, 0.0f, 1.0f);
    r0.w = max(r0.w, r5.x);
    let v_29 = clamp(fma(r0.wwww, vec4<f32>(-2.00400805473327636719f, -2.00400805473327636719f, -1000.0f, 0.0f), vec4<f32>(1.0f, 2.00200390815734863281f, 1000.0f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
    r4 = vec4<f32>(v_29.xyz, r4.w);
    r0.w = ((-(r4.xxxx)).w + 1.0f);
    r0.w = min(r0.w, r4.y);
    r1.w = (r0.w + r4.x);
    r2.w = ((-(r1.wwww)).w + 1.0f);
    r2.w = min(r2.w, r4.z);
    r1.w = (r1.w + r2.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    let v_30 = (r0.www * r8.xyz);
    r4 = vec4<f32>(r4.x, v_30.xyz);
    let v_31 = fma(r1.xyz, r4.xxx, r4.yzw);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    let v_32 = fma(r3.xyz, r2.www, r4.xyz);
    r3 = vec4<f32>(v_32.xyz, r3.w);
    let v_33 = fma(r2.xyz, r1.www, r3.xyz);
    r1 = vec4<f32>(v_33.xyz, r1.w);
  }
  if ((bitcast<u32>(cb5_5.tint_symbol_2[90u].z) != 0u)) {
    r2 = textureSample(t11, s11, r0.yzyy.xy);
    let v_34 = ((-(r1.xyzx)).xyz + r2.xyz);
    r2 = vec4<f32>(v_34.xyz, r2.w);
    let v_35 = fma(r2.www, r2.xyz, r1.xyz);
    r1 = vec4<f32>(v_35.xyz, r1.w);
  }
  let v_36 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  r2 = vec4<f32>(v_36.xy, r2.zw);
  let v_37 = r2.xy;
  let v_38 = max(v_37, vec2<f32>(-2147483648.0f));
  let v_39 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_38), vec2<i32>(2147483647i), (v_38 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_37 == v_37))));
  r2 = vec4<f32>(v_39.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r0.w = f32(bitcast<u32>(r2.y));
  r0.w = (r0.w * 0.0039215688593685627f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r0.w)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  let v_40 = (r0.yz * vec2<f32>(58.16400146484375f, 47.130001068115234375f));
  r2 = vec4<f32>(v_40.xy, r2.zw);
  let v_41 = fma(r0.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_41.xy, r3.zw);
  r3.z = 1.0f;
  r4.x = dot(r3.xyz, cb5_5.tint_symbol_2[21u].xyz);
  r4.y = dot(r3.xyz, cb5_5.tint_symbol_2[22u].xyz);
  r4.z = dot(r3.xyz, cb5_5.tint_symbol_2[23u].xyz);
  let v_42 = fma(r4.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = dot(r4, cb5_5.tint_symbol_2[18u]);
  r5.y = dot(r4, cb5_5.tint_symbol_2[19u]);
  r0.x = dot(r4, cb5_5.tint_symbol_2[20u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_43 = bitcast<u32>(r1.w);
  r0.x = select(r0.x, 0.00000999999974737875f, (v_43 != 0u));
  let v_44 = (r5.xy / r0.xx);
  r2 = vec4<f32>(r2.xy, v_44.xy);
  let v_45 = ((-(r2.zzzw)).zw + r3.xy);
  r2 = vec4<f32>(r2.xy, v_45.xy);
  let v_46 = (r2.zw * vec2<f32>(40.0f, -22.5f));
  r2 = vec4<f32>(r2.xy, v_46.xy);
  r0.x = dot(r2.zw, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = inverseSqrt(r0.x);
  let v_47 = (r0.xx * r2.zw);
  r3 = vec4<f32>(v_47.xy, r3.zw);
  let v_48 = bitcast<vec2<u32>>(r1.ww);
  let v_49 = r3.xy;
  let v_50 = select(r2.zw, v_49, (v_48 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_50.xy);
  let v_51 = (r2.zw * cb5_5.tint_symbol_2[16u].xx);
  r2 = vec4<f32>(r2.xy, v_51.xy);
  let v_52 = (r2.zw * vec2<f32>(0.01250000018626451492f, 0.02222222276031970978f));
  r2 = vec4<f32>(r2.xy, v_52.xy);
  let v_53 = (r0.www * r1.xyz);
  r3 = vec4<f32>(v_53.xyz, r3.w);
  let v_54 = (r2.zw * cb5_5.tint_symbol_2[17u].yy);
  r4 = vec4<f32>(v_54.xy, r4.zw);
  let v_55 = fma(r1.xy, vec2<f32>(8.0f), r2.xy);
  r2 = vec4<f32>(v_55.xy, r2.zw);
  r5 = textureSample(t12, s12, r2.xyxx.xy);
  r0.x = (r5.x + -0.5f);
  let v_56 = (r0.xx * r4.xy);
  r2 = vec4<f32>(v_56.xy, r2.zw);
  let v_57 = fma(r2.xy, vec2<f32>(0.5f), r0.yz);
  r2 = vec4<f32>(v_57.xy, r2.zw);
  let v_58 = cb5_5.tint_symbol_2[17u].x;
  let v_59 = max(v_58, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_59), 2147483647i, (v_59 >= 2147483648.0f)), 0i, !((v_58 == v_58))));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  let v_60 = r3;
  r6 = vec4<f32>(v_60.xyz, r6.w);
  r1.w = r0.w;
  r3.w = bitcast<f32>(v.tint_symbol_3[0i].x);
  loop {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) >= bitcast<i32>(r0.x))));
    if ((bitcast<u32>(r4.z) != 0u)) {
      break;
    }
    r4.z = f32(bitcast<i32>(r3.w));
    let v_61 = fma(r4.xy, r4.zz, r2.xy);
    r4 = vec4<f32>(r4.xy, v_61.xy);
    let v_62 = (r4.zw * cb2_2.tint_symbol_1[18u].xy);
    r4 = vec4<f32>(r4.xy, v_62.xy);
    let v_63 = round(r4.zw);
    r4 = vec4<f32>(r4.xy, v_63.xy);
    let v_64 = (r4.zw + vec2<f32>(0.5f));
    r4 = vec4<f32>(r4.xy, v_64.xy);
    let v_65 = (r4.zw / cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(v_65.xy, r7.zw);
    let v_66 = r4.zw;
    let v_67 = max(v_66, vec2<f32>(-2147483648.0f));
    let v_68 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_67), vec2<i32>(2147483647i), (v_67 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_66 == v_66))));
    r5 = vec4<f32>(v_68.xy, r5.zw);
    r8 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
    r4.z = f32(bitcast<u32>(r8.y));
    r4.z = (r4.z * 0.0039215688593685627f);
    r4.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r4.z)));
    r4.z = select(1.0f, 0.0f, (bitcast<u32>(r4.z) != 0u));
    r7 = textureSampleLevel(t9, s9, r7.xyxx.xy, 0.0f);
    let v_69 = fma(r7.xyz, r4.zzz, r6.xyz);
    r6 = vec4<f32>(v_69.xyz, r6.w);
    r1.w = (r1.w + r4.z);
    r3.w = bitcast<f32>((bitcast<i32>(r3.w) + 1i));
  }
  r0.x = max(r1.w, 0.10000000149011611938f);
  let v_70 = (r6.xyz / r0.xxx);
  r3 = vec4<f32>(v_70.xyz, r3.w);
  r0.x = dot(r2.zw, r2.zw);
  r0.x = (r0.x * 100000.0f);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * r0.w);
  let v_71 = ((-(r1.xyzx)).xyz + r3.xyz);
  r2 = vec4<f32>(v_71.xyz, r2.w);
  let v_72 = fma(r0.xxx, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_72.xyz, r1.w);
  r2 = textureSample(t10, s10, r0.yzyy.xy);
  let v_73 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_73.xyz, r2.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[75u].z)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = textureSample(t15, s15, r0.yzyy.xy);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    r0.x = (r0.x * r0.x);
    let v_74 = fma(cb5_5.tint_symbol_2[46u].xyz, r0.xxx, r1.xyz);
    r1 = vec4<f32>(v_74.xyz, r1.w);
  }
  let v_75 = (r2.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r0 = vec4<f32>(v_75.xyz, r0.w);
  let v_76 = fma(r0.xyz, vec3<f32>(0.25f), r1.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[57u].zzzz)).w, 0.0f, 1.0f);
  let v_77 = ((-(cb5_5.tint_symbol_2[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_77.xyz, r1.w);
  let v_78 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_78.xyz, r1.w);
  let v_79 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_81, v_81, v_81, v_81), cb5_5.tint_symbol_2[14u].xxxx, cb5_5.tint_symbol_2[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_2[10u]) + cb5_5.tint_symbol_2[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_2[10u]);
  let v_82 = ((-(cb5_5.tint_symbol_2[11u].zxyz)).xyz + cb5_5.tint_symbol_2[13u].zxy);
  r2 = vec4<f32>(v_82.xyz, r2.w);
  let v_83 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_2[11u].zxy);
  r2 = vec4<f32>(v_83.xyz, r2.w);
  let v_84 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_84.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_85 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  let v_86 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_86.xyz, r0.w);
  let v_87 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_87.xyz, r2.w);
  let v_88 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_88.xyz, r2.w);
  let v_89 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_89.x, r3.y, v_89.yz);
  let v_90 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  let v_91 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_92.xyz, r0.w);
  let v_93 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_93.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_94 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_94.xyz, r0.w);
  let v_95 = fma(cb5_5.tint_symbol_2[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_95.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[66u].wwww)).x, 0.0f, 1.0f);
  let v_96 = -(cb5_5.tint_symbol_2[66u].xxyz);
  let v_97 = (cb5_5.tint_symbol_2[65u].xyz + v_96.yzw);
  r1 = vec4<f32>(r1.x, v_97.xyz);
  let v_98 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[66u].xyz);
  r1 = vec4<f32>(v_98.xyz, r1.w);
  let v_99 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_99.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[65u].wwww)).w + 1.0f);
  let v_100 = -(r1.wwww);
  r0.w = (r0.w + v_100.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_101 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_101.xyz, r0.w);
  let v_102 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_102.xyz, r0.w);
  let v_103 = log2(r0.xyz);
  r0 = vec4<f32>(v_103.xyz, r0.w);
  let v_104 = (r0.xyz * cb5_5.tint_symbol_2[67u].yyy);
  r0 = vec4<f32>(v_104.xyz, r0.w);
  let v_105 = exp2(r0.xyz);
  r0 = vec4<f32>(v_105.xyz, r0.w);
  let v_106 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_106.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_107 = r0;
  o0 = vec4<f32>(v_107.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
