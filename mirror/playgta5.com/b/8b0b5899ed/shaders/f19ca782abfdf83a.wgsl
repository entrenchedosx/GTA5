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

struct cb76_struct {
  tint_symbol_2 : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<u32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

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
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x + cb5_5.tint_symbol_2[0u].w);
  r0.y = (cb5_5.tint_symbol_2[0u].z / r0.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_1 = -(cb5_5.tint_symbol_2[2u].xxxx);
  r0.z = (r0.y + v_1.z);
  r0.z = clamp(((r0.zzzz * cb5_5.tint_symbol_2[2u].yyyy)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_2[2u].z);
  r0.x = (r0.x * r0.z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[30u].y < r0.y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < cb5_5.tint_symbol_2[30u].y)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r1 = textureSample(t6, s6, v1.xyxx.xy);
  r0.w = (r1.x * cb5_5.tint_symbol_2[33u].z);
  r0.z = (r0.z * r0.w);
  r0.w = ((-(cb5_5.tint_symbol_2[30u].zzzz)).w + cb5_5.tint_symbol_2[30u].w);
  r0.z = fma(r0.z, r0.w, cb5_5.tint_symbol_2[30u].z);
  let v_2 = fma(v1.xy, cb5_5.tint_symbol_2[31u].xy, cb5_5.tint_symbol_2[31u].zw);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(v1.xy, cb5_5.tint_symbol_2[32u].xy, cb5_5.tint_symbol_2[32u].zw);
  r1 = vec4<f32>(r1.xy, v_3.xy);
  r2 = textureSample(t13, s13, r1.xyxx.xy);
  r1 = textureSample(t13, s13, r1.zwzz.xy);
  let v_4 = (r1.xy + r2.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.xy + vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.xy * cb5_5.tint_symbol_2[33u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = fma(r1.xy, r0.zz, v1.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r2 = textureSample(t5, s5, r1.xyxx.xy);
  let v_8 = (r2.xyz * cb2_2.tint_symbol_1[17u].www);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r0.x = clamp(max(r0.zzzz, r0.xxxx).x, 0.0f, 1.0f);
  r4 = textureSample(t9, s9, r1.xyxx.xy);
  let v_9 = fma((-(r2.xyzx)).xyz, cb2_2.tint_symbol_1[17u].www, r4.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r0.xxx, r2.xyz, r3.xyz);
  r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
  let v_11 = (r1.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(r1.xy, v_11.xy);
  let v_12 = r1.zw;
  let v_13 = max(v_12, vec2<f32>(-2147483648.0f));
  let v_14 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_13), vec2<i32>(2147483647i), (v_13 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_12 == v_12))));
  r2 = vec4<f32>(v_14.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)));
  r1.z = f32(bitcast<u32>(r2.y));
  r1.z = (r1.z * 0.0039215688593685627f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r1.z)));
  r1.z = select(1.0f, 0.0f, (bitcast<u32>(r1.z) != 0u));
  let v_15 = (r1.xy * vec2<f32>(58.16400146484375f, 47.130001068115234375f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = fma(r1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_16.xy, r3.zw);
  r3.z = 1.0f;
  r4.x = dot(r3.xyz, cb5_5.tint_symbol_2[21u].xyz);
  r4.y = dot(r3.xyz, cb5_5.tint_symbol_2[22u].xyz);
  r4.z = dot(r3.xyz, cb5_5.tint_symbol_2[23u].xyz);
  let v_17 = fma(r4.xyz, r0.yyy, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = dot(r4, cb5_5.tint_symbol_2[18u]);
  r5.y = dot(r4, cb5_5.tint_symbol_2[19u]);
  r0.y = dot(r4, cb5_5.tint_symbol_2[20u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.y == 0.0f)));
  let v_18 = bitcast<u32>(r1.w);
  r0.y = select(r0.y, 0.00000999999974737875f, (v_18 != 0u));
  let v_19 = (r5.xy / r0.yy);
  r2 = vec4<f32>(r2.xy, v_19.xy);
  let v_20 = ((-(r2.zzzw)).zw + r3.xy);
  r2 = vec4<f32>(r2.xy, v_20.xy);
  let v_21 = (r2.zw * vec2<f32>(40.0f, -22.5f));
  r2 = vec4<f32>(r2.xy, v_21.xy);
  r0.y = dot(r2.zw, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.y)));
  r0.y = inverseSqrt(r0.y);
  let v_22 = (r0.yy * r2.zw);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  let v_23 = bitcast<vec2<u32>>(r1.ww);
  let v_24 = r3.xy;
  let v_25 = select(r2.zw, v_24, (v_23 != vec2<u32>()));
  r2 = vec4<f32>(r2.xy, v_25.xy);
  let v_26 = (r2.zw * cb5_5.tint_symbol_2[16u].xx);
  r2 = vec4<f32>(r2.xy, v_26.xy);
  let v_27 = (r2.zw * vec2<f32>(0.01250000018626451492f, 0.02222222276031970978f));
  r2 = vec4<f32>(r2.xy, v_27.xy);
  let v_28 = (r0.xzw * r1.zzz);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  let v_29 = (r2.zw * cb5_5.tint_symbol_2[17u].yy);
  r4 = vec4<f32>(v_29.xy, r4.zw);
  let v_30 = fma(r0.xz, vec2<f32>(8.0f), r2.xy);
  r2 = vec4<f32>(v_30.xy, r2.zw);
  r5 = textureSample(t12, s12, r2.xyxx.xy);
  r0.y = (r5.x + -0.5f);
  let v_31 = (r0.yy * r4.xy);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  let v_32 = fma(r2.xy, vec2<f32>(0.5f), r1.xy);
  r2 = vec4<f32>(v_32.xy, r2.zw);
  let v_33 = cb5_5.tint_symbol_2[17u].x;
  let v_34 = max(v_33, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_34), 2147483647i, (v_34 >= 2147483648.0f)), 0i, !((v_33 == v_33))));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  let v_35 = r3;
  r6 = vec4<f32>(v_35.xyz, r6.w);
  r1.w = r1.z;
  r3.w = bitcast<f32>(v.tint_symbol_3[0i].x);
  loop {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) >= bitcast<i32>(r0.y))));
    if ((bitcast<u32>(r4.z) != 0u)) {
      break;
    }
    r4.z = f32(bitcast<i32>(r3.w));
    let v_36 = fma(r4.xy, r4.zz, r2.xy);
    r4 = vec4<f32>(r4.xy, v_36.xy);
    let v_37 = (r4.zw * cb2_2.tint_symbol_1[18u].xy);
    r4 = vec4<f32>(r4.xy, v_37.xy);
    let v_38 = round(r4.zw);
    r4 = vec4<f32>(r4.xy, v_38.xy);
    let v_39 = (r4.zw + vec2<f32>(0.5f));
    r4 = vec4<f32>(r4.xy, v_39.xy);
    let v_40 = (r4.zw / cb2_2.tint_symbol_1[18u].xy);
    r7 = vec4<f32>(v_40.xy, r7.zw);
    let v_41 = r4.zw;
    let v_42 = max(v_41, vec2<f32>(-2147483648.0f));
    let v_43 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_42), vec2<i32>(2147483647i), (v_42 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_41 == v_41))));
    r5 = vec4<f32>(v_43.xy, r5.zw);
    r8 = bitcast<vec4<f32>>(textureLoad(t8, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w)));
    r4.z = f32(bitcast<u32>(r8.y));
    r4.z = (r4.z * 0.0039215688593685627f);
    r4.z = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_2[56u].x < r4.z)));
    r4.z = select(1.0f, 0.0f, (bitcast<u32>(r4.z) != 0u));
    r7 = textureSampleLevel(t9, s9, r7.xyxx.xy, 0.0f);
    let v_44 = fma(r7.xyz, r4.zzz, r6.xyz);
    r6 = vec4<f32>(v_44.xyz, r6.w);
    r1.w = (r1.w + r4.z);
    r3.w = bitcast<f32>((bitcast<i32>(r3.w) + 1i));
  }
  r0.y = max(r1.w, 0.10000000149011611938f);
  let v_45 = (r6.xyz / r0.yyy);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  r0.y = dot(r2.zw, r2.zw);
  r0.y = (r0.y * 100000.0f);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * r1.z);
  let v_46 = ((-(r0.xzwx)).xyz + r3.xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = fma(r0.yyy, r2.xyz, r0.xzw);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  r2 = textureSample(t10, s10, r1.xyxx.xy);
  let v_48 = (r2.xyz * v1.www);
  r2 = vec4<f32>(v_48.xyz, r2.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_2[75u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r1 = textureSample(t15, s15, r1.xyxx.xy);
    r0.w = (r1.x * r1.x);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_49 = fma(cb5_5.tint_symbol_2[46u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_49.xyz, r0.w);
  }
  let v_50 = (r2.xyz * cb5_5.tint_symbol_2[7u].yyy);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  let v_51 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_2[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_2[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_2[57u].zzzz)).w, 0.0f, 1.0f);
  let v_52 = ((-(cb5_5.tint_symbol_2[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_52.xyz, r1.w);
  let v_53 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_53.xyz, r1.w);
  let v_54 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  let v_55 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = v2.x;
  r0.w = clamp(fma(vec4<f32>(v_56, v_56, v_56, v_56), cb5_5.tint_symbol_2[14u].xxxx, cb5_5.tint_symbol_2[14u].yyyy).w, 0.0f, 1.0f);
  r1 = (-(cb5_5.tint_symbol_2[10u]) + cb5_5.tint_symbol_2[12u]);
  r1 = fma(r0.wwww, r1, cb5_5.tint_symbol_2[10u]);
  let v_57 = ((-(cb5_5.tint_symbol_2[11u].zxyz)).xyz + cb5_5.tint_symbol_2[13u].zxy);
  r2 = vec4<f32>(v_57.xyz, r2.w);
  let v_58 = fma(r0.www, r2.xyz, cb5_5.tint_symbol_2[11u].zxy);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = (r1.ww * r2.yz);
  r3 = vec4<f32>(v_59.xy, r3.zw);
  r0.w = (r1.y * r1.z);
  r1.z = fma(r1.x, r2.x, r0.w);
  r1.z = fma(r2.x, r1.z, r3.x);
  r1.w = fma(r1.x, r2.x, r1.y);
  r1.w = fma(r2.x, r1.w, r3.y);
  r1.z = (r1.z / r1.w);
  r1.w = (r2.y / r2.z);
  r1.z = ((-(r1.wwww)).z + r1.z);
  r1.z = (1.0f / r1.z);
  let v_60 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_60.xyz, r0.w);
  let v_61 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_61.xyz, r0.w);
  let v_62 = fma(r1.xxx, r0.xyz, r0.www);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = fma(r0.xyz, r2.xyz, r3.xxx);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = fma(r1.xxx, r0.xyz, r1.yyy);
  r3 = vec4<f32>(v_64.x, r3.y, v_64.yz);
  let v_65 = fma(r0.xyz, r3.xzw, r3.yyy);
  r0 = vec4<f32>(v_65.xyz, r0.w);
  let v_66 = (r2.xyz / r0.xyz);
  r0 = vec4<f32>(v_66.xyz, r0.w);
  let v_67 = ((-(r1.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  let v_68 = clamp(((r1.zzzz * r0.xyzx)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_68.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_69 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_69.xyz, r0.w);
  let v_70 = fma(cb5_5.tint_symbol_2[67u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_2[66u].wwww)).x, 0.0f, 1.0f);
  let v_71 = -(cb5_5.tint_symbol_2[66u].xxyz);
  let v_72 = (cb5_5.tint_symbol_2[65u].xyz + v_71.yzw);
  r1 = vec4<f32>(r1.x, v_72.xyz);
  let v_73 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_2[66u].xyz);
  r1 = vec4<f32>(v_73.xyz, r1.w);
  let v_74 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_74.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_2[65u].wwww)).w + 1.0f);
  let v_75 = -(r1.wwww);
  r0.w = (r0.w + v_75.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_76 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_76.xyz, r0.w);
  let v_77 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_77.xyz, r0.w);
  let v_78 = log2(r0.xyz);
  r0 = vec4<f32>(v_78.xyz, r0.w);
  let v_79 = (r0.xyz * cb5_5.tint_symbol_2[67u].yyy);
  r0 = vec4<f32>(v_79.xyz, r0.w);
  let v_80 = exp2(r0.xyz);
  r0 = vec4<f32>(v_80.xyz, r0.w);
  let v_81 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_81.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_82 = r0;
  o0 = vec4<f32>(v_82.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
