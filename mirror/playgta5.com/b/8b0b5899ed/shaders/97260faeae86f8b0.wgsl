diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb76_struct {
  tint_symbol_2 : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

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
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x + cb5_5.tint_symbol_2[0u].w);
  r0.y = (cb5_5.tint_symbol_2[0u].z / r0.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_1 = -(cb5_5.tint_symbol_2[2u].xxxx);
  r0.z = (r0.y + v_1.z);
  r0.z = clamp(((r0.zzzz * cb5_5.tint_symbol_2[2u].yyyy)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_2[2u].z);
  r0.x = clamp(((r0.xxxx * r0.zzzz)).x, 0.0f, 1.0f);
  r1 = textureSample(t5, s5, v1.xyxx.xy);
  let v_2 = (r1.xyz * cb2_2.tint_symbol_1[17u].www);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  r3 = textureSample(t9, s9, v1.xyxx.xy);
  let v_3 = fma((-(r1.xyzx)).xyz, cb2_2.tint_symbol_1[17u].www, r3.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(r0.xxx, r1.xyz, r2.xyz);
  r0 = vec4<f32>(v_4.x, r0.y, v_4.yz);
  let v_5 = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = r1.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)));
  r1.x = f32(bitcast<u32>(r1.y));
  r1.x = (r1.x * 0.0039215688593685627f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r1.x)));
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r1.x) != 0u));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, ((v1.xy * vec2<f32>(58.16400146484375f, 47.130001068115234375f))).xy, v_9.w);
  let v_10 = fma(v1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = fma(v1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_11.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>(1.0f));
  r4.x = dot(r3.xyz, cb5_5.tint_symbol_2[21u].xyz);
  r4.y = dot(r3.xyz, cb5_5.tint_symbol_2[22u].xyz);
  r4.z = dot(r3.xyz, cb5_5.tint_symbol_2[23u].xyz);
  let v_12 = fma(r4.xyz, r0.yyy, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r4.x = dot(r3, cb5_5.tint_symbol_2[18u]);
  r4.y = dot(r3, cb5_5.tint_symbol_2[19u]);
  r0.y = dot(r3, cb5_5.tint_symbol_2[20u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.y == 0.0f)));
  let v_13 = bitcast<u32>(r1.w);
  r0.y = select(r0.y, 0.00000999999974737875f, (v_13 != 0u));
  let v_14 = (r4.xy / r0.yy);
  r2 = vec4<f32>(r2.xy, v_14.xy);
  let v_15 = ((-(r2.zwzz)).xy + r2.xy);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = (r2.xy * vec2<f32>(40.0f, -22.5f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r0.y = dot(r2.xy, r2.xy);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.y)));
  r0.y = inverseSqrt(r0.y);
  let v_17 = (r0.yy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_17.xy);
  let v_18 = bitcast<vec2<u32>>(r1.ww);
  let v_19 = r2.zw;
  let v_20 = select(r2.xy, v_19, (v_18 != vec2<u32>()));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = (r2.xy * cb5_5.tint_symbol_2[16u].xx);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = (r2.xy * vec2<f32>(0.01250000018626451492f, 0.02222222276031970978f));
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = (r0.xzw * r1.xxx);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = (r2.xy * cb5_5.tint_symbol_2[17u].yy);
  r2 = vec4<f32>(r2.xy, v_24.xy);
  let v_25 = fma(r0.xz, vec2<f32>(8.0f), r1.yz);
  let v_26 = r1;
  r1 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r4 = textureSample(t12, s12, r1.yzyy.xy);
  r0.y = (r4.x + -0.5f);
  let v_27 = (r0.yy * r2.zw);
  let v_28 = r1;
  r1 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  let v_29 = fma(r1.yz, vec2<f32>(0.5f), v1.xy);
  let v_30 = r1;
  r1 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
  let v_31 = cb5_5.tint_symbol_2[17u].x;
  let v_32 = max(v_31, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_32), 2147483647i, (v_32 >= 2147483648.0f)), 0i, !((v_31 == v_31))));
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  let v_33 = r3;
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r1.w = r1.x;
  r3.w = bitcast<f32>(v.tint_symbol_3[0i].x);
  loop {
    r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) >= bitcast<i32>(r0.y))));
    if ((bitcast<u32>(r5.w) != 0u)) {
      break;
    }
    r5.w = f32(bitcast<i32>(r3.w));
    let v_34 = fma(r2.zw, r5.ww, r1.yz);
    r6 = vec4<f32>(v_34.xy, r6.zw);
    let v_35 = (r6.xy * cb2_2.tint_symbol_1[18u].xy);
    r6 = vec4<f32>(v_35.xy, r6.zw);
    let v_36 = round(r6.xy);
    r6 = vec4<f32>(v_36.xy, r6.zw);
    let v_37 = (r6.xy + vec2<f32>(0.5f));
    r6 = vec4<f32>(v_37.xy, r6.zw);
    let v_38 = (r6.xy / cb2_2.tint_symbol_1[18u].xy);
    r6 = vec4<f32>(r6.xy, v_38.xy);
    let v_39 = r6.xy;
    let v_40 = max(v_39, vec2<f32>(-2147483648.0f));
    let v_41 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_40), vec2<i32>(2147483647i), (v_40 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_39 == v_39))));
    r4 = vec4<f32>(v_41.xy, r4.zw);
    r7 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w)));
    r4.x = f32(bitcast<u32>(r7.y));
    r4.x = (r4.x * 0.0039215688593685627f);
    r4.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r4.x)));
    r4.x = select(1.0f, 0.0f, (bitcast<u32>(r4.x) != 0u));
    r6 = textureSampleLevel(t9, s9, r6.zwzz.xy, 0.0f);
    let v_42 = fma(r6.xyz, r4.xxx, r5.xyz);
    r5 = vec4<f32>(v_42.xyz, r5.w);
    r1.w = (r1.w + r4.x);
    r3.w = bitcast<f32>((bitcast<i32>(r3.w) + 1i));
  }
  r0.y = max(r1.w, 0.10000000149011611938f);
  let v_43 = (r5.xyz / r0.yyy);
  r1 = vec4<f32>(r1.x, v_43.xyz);
  r0.y = dot(r2.xy, r2.xy);
  r0.y = (r0.y * 100000.0f);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * r1.x);
  let v_44 = ((-(r0.xzwx)).xyz + r1.yzw);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  let v_45 = fma(r0.yyy, r1.xyz, r0.xzw);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  r1 = textureSample(t14, s14, v1.xyxx.xy);
  let v_46 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = fma(cb5_5.tint_symbol_2[64u].xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  r1 = textureSample(t10, s10, v1.xyxx.xy);
  let v_48 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_48.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[75u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSample(t15, s15, v1.xyxx.xy);
    r0.w = (r2.x * r2.x);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_49 = fma(cb5_5.tint_symbol_2[46u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_49.xyz, r0.w);
  }
  r2 = textureSample(t13, s13, v1.xyxx.xy);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_2[34u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[34u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_2[34u].zzzz)).w + cb5_5.tint_symbol_2[34u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_2[34u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_2[35u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[36u].w);
  let v_50 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = (r1.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r1 = vec4<f32>(v_51.xyz, r1.w);
  let v_52 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_52.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[57u].zzzz)).w, 0.0f, 1.0f);
  let v_53 = ((-(cb5_5.tint_symbol_2[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_53.xyz, r1.w);
  let v_54 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_54.xyz, r1.w);
  let v_55 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_56.xyz, r0.w);
  let v_57 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_57, v_57, v_57, v_57), cb5_5.tint_symbol_2[14u].xxxx, cb5_5.tint_symbol_2[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_2[10u]) + cb5_5.tint_symbol_2[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_2[10u]);
  let v_58 = ((-(cb5_5.tint_symbol_2[11u].zxyz)).xyz + cb5_5.tint_symbol_2[13u].zxy);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_2[11u].zxy);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  let v_60 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_60.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_61 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_61.xyz, r0.w);
  let v_62 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_62.xyz, r0.w);
  let v_63 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_64.xyz, r2.w);
  let v_65 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_65.x, r3.y, v_65.yz);
  let v_66 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_68.xyz, r0.w);
  let v_69 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_69.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_70 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  let v_71 = fma(cb5_5.tint_symbol_2[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_71.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[66u].wwww)).x, 0.0f, 1.0f);
  let v_72 = -(cb5_5.tint_symbol_2[66u].xxyz);
  let v_73 = (cb5_5.tint_symbol_2[65u].xyz + v_72.yzw);
  r1 = vec4<f32>(r1.x, v_73.xyz);
  let v_74 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[66u].xyz);
  r1 = vec4<f32>(v_74.xyz, r1.w);
  let v_75 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[65u].wwww)).w + 1.0f);
  let v_76 = -(r1.wwww);
  r0.w = (r0.w + v_76.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_77 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_77.xyz, r0.w);
  let v_78 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = log2(r0.xyz);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = (r0.xyz * cb5_5.tint_symbol_2[67u].yyy);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = exp2(r0.xyz);
  r0 = vec4<f32>(v_81.xyz, r0.w);
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
  let v_82 = (v1.xy * cb5_5.tint_symbol_2[15u].ww);
  r1 = vec4<f32>(v_82.xy, r1.zw);
  let v_83 = fma(r1.xy, vec2<f32>(1.60000002384185791016f, 0.89999997615814208984f), cb5_5.tint_symbol_2[15u].xy);
  r1 = vec4<f32>(v_83.xy, r1.zw);
  let v_84 = fract(r1.xy);
  r1 = vec4<f32>(v_84.xy, r1.zw);
  r1 = textureSample(t7, s7, r1.xyxx.xy);
  r1.x = (r1.w + -0.5f);
  r1.x = (r1.x * cb5_5.tint_symbol_2[15u].z);
  let v_85 = clamp(fma(r0.xyzx, r0.wwww, r1.xxxx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_85.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_86 = r0;
  o0 = vec4<f32>(v_86.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
