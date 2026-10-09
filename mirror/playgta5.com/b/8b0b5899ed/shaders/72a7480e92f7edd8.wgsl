diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb19_struct {
  tint_symbol_2 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb19_struct;

struct cb21_struct {
  tint_symbol_3 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(30u) var s14 : sampler_comparison;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_depth_cube;

@group(1u) @binding(56u) var t24 : texture_depth_2d;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = -(cb1_1.tint_symbol[15u].xyzx);
  r0 = vec4<f32>(((v1.xyz + v_2.xyz)).xyz, r0.w);
  r1 = vec4<f32>(((v2.xy / v2.ww)).xy, r1.zw);
  r2 = textureSample(t4, s4, r1.xyxx.xy);
  r0.w = (cb12_12.tint_symbol_3[17u].w + 1.0f);
  r0.w = ((-(r2.xxxx)).w + r0.w);
  r0.w = (cb12_12.tint_symbol_3[17u].z / r0.w);
  let v_3 = fma(r1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_3[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_3[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_4 = (r0.www * r2.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  let v_5 = (r0.xyz * v3.xyz.xxx);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = (r0.xyz * v3.xyz.yyy);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r0.xyz, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  r5 = vec4<f32>(((v2.zzz * v4.xyz)).xyz, r5.w);
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = ((-(r1.yyyy)).y + r1.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.0f)));
  v_8((bitcast<u32>(r1.y) != 0u));
  r1.y = dot(r3.xyz, r3.xyz);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r1.y)));
  let v_9 = fma(r0.xyz, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r2.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = bitcast<vec3<u32>>(r1.zzz);
  let v_12 = r0.xyz;
  let v_13 = select(r2.xyz, v_12, (v_11 != vec3<u32>()));
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r0.w = (r1.x / r1.y);
  let v_14 = bitcast<u32>(r1.z);
  r0.w = select(r0.w, 1.0f, (v_14 != 0u));
  let v_15 = floor(v0.yx);
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = (r1.yz * vec2<f32>(0.3333333432674407959f));
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = fract(r1.yz);
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = (r1.yz * vec2<f32>(3.0f, 9.0f));
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r1.y = (r1.y + r1.z);
  let v_23 = ((-(r4.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r1.yyy * r0.xyz);
  r1 = vec4<f32>(r1.x, v_24.xyz);
  let v_25 = fma(r1.yzw, vec3<f32>(0.01408450677990913391f), r4.xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = ((-(r2.xxyz)).yzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(r1.x, v_26.xyz);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.x)));
  r3.z = sqrt(r3.x);
  r3.z = (1.0f / r3.z);
  let v_27 = (r1.yzw * r3.zzz);
  r1 = vec4<f32>(r1.x, v_27.xyz);
  r3.x = clamp(fma(-(r3.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r3.z = ((-(cb12_12.tint_symbol_3[7u].xxxx)).z + 1.0f);
  r3.w = fma(r3.z, r3.x, cb12_12.tint_symbol_3[7u].x);
  r3.x = (r3.x / r3.w);
  let v_28 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r1.y = dot(r1.yzw, v_28.xyz);
  r1.y = clamp(fma(r1.yyyy, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).y, 0.0f, 1.0f);
  r1.y = (r1.y * r3.x);
  r2.w = 1.0f;
  r1.z = dot(r2, cb12_12.tint_symbol_3[6u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r1.y = (r1.z * r1.y);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r3.y)));
  let v_29 = -(cb1_1.tint_symbol[15u].xyxz);
  let v_30 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_30.xy, r3.z, v_30.z);
  r1.z = dot(r3.xyw, r3.xyw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 3.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_31 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r2.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_32 = -(r2.wwww);
    let v_33 = (r6.xy / v_32.xy);
    r6 = vec4<f32>(v_33.xy, r6.zw);
    r2.w = dot(r4.xyz, r4.xyz);
    r2.w = sqrt(r2.w);
    r6.z = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_34 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_34.xyz, r4.w);
    let v_35 = r4.xyxx;
    r2.w = textureSampleCompareLevel(t24, s14, v_35.xy, r4.z);
  } else {
    let v_36 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_36.xy, r3.z, v_36.z);
    r4.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r4.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r4.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_37 = (-(r4.xyxz)).xyw;
    r3 = vec4<f32>(v_37.xy, r3.z, v_37.z);
    r4.x = dot(r3.xyw, r3.xyw);
    r4.x = sqrt(r4.x);
    r4.x = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_38 = r3.xywx;
    r2.w = textureSampleCompareLevel(t14, s14, v_38.xyz, r4.x);
  }
  r1.y = (r1.y * r2.w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r1.z)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
  let v_39 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_40.xy, r3.z, v_40.z);
  r1.z = dot(r3.xyw, r3.xyw);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  r4.y = sqrt(r1.z);
  r4.y = (1.0f / r4.y);
  let v_41 = (r3.xyw * r4.yyy);
  r3 = vec4<f32>(v_41.xy, r3.z, v_41.z);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r4.y = fma(r3.z, r1.z, cb12_12.tint_symbol_3[7u].x);
  r1.z = (r1.z / r4.y);
  r3.x = dot(r3.xyw, v_28.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r1.z = (r1.z * r3.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r1.z = (r1.z * r2.w);
  let v_42 = bitcast<u32>(r4.x);
  let v_43 = r1.z;
  r1.z = select(r1.y, v_43, (v_42 != 0u));
  let v_44 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_44.xy, r3.z, v_44.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_45 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_45.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_46 = -(r4.wwww);
    let v_47 = (r6.xy / v_46.xy);
    r6 = vec4<f32>(v_47.xy, r6.zw);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = sqrt(r4.x);
    r6.z = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_48 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_48.xyz, r4.w);
    let v_49 = r4.xyxx;
    r4.x = textureSampleCompareLevel(t24, s14, v_49.xy, r4.z);
  } else {
    let v_50 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_50.xy, r3.z, v_50.z);
    r6.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_51 = (-(r6.xyxz)).xyw;
    r3 = vec4<f32>(v_51.xy, r3.z, v_51.z);
    r4.y = dot(r3.xyw, r3.xyw);
    r4.y = sqrt(r4.y);
    r4.y = (r4.y * cb6_6.tint_symbol_2[17u].w);
    let v_52 = r3.xywx;
    r4.x = textureSampleCompareLevel(t14, s14, v_52.xyz, r4.y);
  }
  r1.z = (r1.z * r4.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_53 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_54.xy, r3.z, v_54.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
  r4.z = sqrt(r4.x);
  r4.z = (1.0f / r4.z);
  let v_55 = (r3.xyw * r4.zzz);
  r3 = vec4<f32>(v_55.xy, r3.z, v_55.z);
  r4.x = clamp(fma(-(r4.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.z = fma(r3.z, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.z);
  r3.x = dot(r3.xyw, v_28.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_56 = bitcast<u32>(r4.y);
  let v_57 = r2.w;
  r1.z = select(r1.z, v_57, (v_56 != 0u));
  let v_58 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_58.xy, r3.z, v_58.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_59 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_59.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_60 = -(r4.wwww);
    let v_61 = (r6.xy / v_60.xy);
    r6 = vec4<f32>(v_61.xy, r6.zw);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = sqrt(r4.x);
    r6.z = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_62 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_62.xyz, r4.w);
    let v_63 = r4.xyxx;
    r4.x = textureSampleCompareLevel(t24, s14, v_63.xy, r4.z);
  } else {
    let v_64 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_64.xy, r3.z, v_64.z);
    r6.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_65 = (-(r6.xyxz)).xyw;
    r3 = vec4<f32>(v_65.xy, r3.z, v_65.z);
    r4.y = dot(r3.xyw, r3.xyw);
    r4.y = sqrt(r4.y);
    r4.y = (r4.y * cb6_6.tint_symbol_2[17u].w);
    let v_66 = r3.xywx;
    r4.x = textureSampleCompareLevel(t14, s14, v_66.xyz, r4.y);
  }
  r1.z = (r1.z * r4.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_67 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_67.xyz, r2.w);
  let v_68 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_68.xy, r3.z, v_68.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
  r4.z = sqrt(r4.x);
  r4.z = (1.0f / r4.z);
  let v_69 = (r3.xyw * r4.zzz);
  r3 = vec4<f32>(v_69.xy, r3.z, v_69.z);
  r4.x = clamp(fma(-(r4.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.z = fma(r3.z, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.z);
  r3.x = dot(r3.xyw, v_28.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_70 = bitcast<u32>(r4.y);
  let v_71 = r2.w;
  r1.z = select(r1.z, v_71, (v_70 != 0u));
  let v_72 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_72.xy, r3.z, v_72.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_73 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_73.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_74 = -(r4.wwww);
    let v_75 = (r6.xy / v_74.xy);
    r6 = vec4<f32>(v_75.xy, r6.zw);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = sqrt(r4.x);
    r6.z = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_76 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_76.xyz, r4.w);
    let v_77 = r4.xyxx;
    r4.x = textureSampleCompareLevel(t24, s14, v_77.xy, r4.z);
  } else {
    let v_78 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_78.xy, r3.z, v_78.z);
    r6.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_79 = (-(r6.xyxz)).xyw;
    r3 = vec4<f32>(v_79.xy, r3.z, v_79.z);
    r4.y = dot(r3.xyw, r3.xyw);
    r4.y = sqrt(r4.y);
    r4.y = (r4.y * cb6_6.tint_symbol_2[17u].w);
    let v_80 = r3.xywx;
    r4.x = textureSampleCompareLevel(t14, s14, v_80.xyz, r4.y);
  }
  r1.z = (r1.z * r4.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_81 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_81.xyz, r2.w);
  let v_82 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_82.xy, r3.z, v_82.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
  r4.z = sqrt(r4.x);
  r4.z = (1.0f / r4.z);
  let v_83 = (r3.xyw * r4.zzz);
  r3 = vec4<f32>(v_83.xy, r3.z, v_83.z);
  r4.x = clamp(fma(-(r4.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.z = fma(r3.z, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.z);
  r3.x = dot(r3.xyw, v_28.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_84 = bitcast<u32>(r4.y);
  let v_85 = r2.w;
  r1.z = select(r1.z, v_85, (v_84 != 0u));
  let v_86 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_86.xy, r3.z, v_86.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_87 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_87.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_88 = -(r4.wwww);
    let v_89 = (r6.xy / v_88.xy);
    r6 = vec4<f32>(v_89.xy, r6.zw);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = sqrt(r4.x);
    r6.z = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_90 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_90.xyz, r4.w);
    let v_91 = r4.xyxx;
    r4.x = textureSampleCompareLevel(t24, s14, v_91.xy, r4.z);
  } else {
    let v_92 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_92.xy, r3.z, v_92.z);
    r6.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_93 = (-(r6.xyxz)).xyw;
    r3 = vec4<f32>(v_93.xy, r3.z, v_93.z);
    r4.y = dot(r3.xyw, r3.xyw);
    r4.y = sqrt(r4.y);
    r4.y = (r4.y * cb6_6.tint_symbol_2[17u].w);
    let v_94 = r3.xywx;
    r4.x = textureSampleCompareLevel(t14, s14, v_94.xyz, r4.y);
  }
  r1.z = (r1.z * r4.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_95 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_95.xyz, r2.w);
  let v_96 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_96.xy, r3.z, v_96.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
  r4.z = sqrt(r4.x);
  r4.z = (1.0f / r4.z);
  let v_97 = (r3.xyw * r4.zzz);
  r3 = vec4<f32>(v_97.xy, r3.z, v_97.z);
  r4.x = clamp(fma(-(r4.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.z = fma(r3.z, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.z);
  r3.x = dot(r3.xyw, v_28.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_98 = bitcast<u32>(r4.y);
  let v_99 = r2.w;
  r1.z = select(r1.z, v_99, (v_98 != 0u));
  let v_100 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_100.xy, r3.z, v_100.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_101 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_101.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_102 = -(r4.wwww);
    let v_103 = (r6.xy / v_102.xy);
    r6 = vec4<f32>(v_103.xy, r6.zw);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = sqrt(r4.x);
    r6.z = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_104 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_104.xyz, r4.w);
    let v_105 = r4.xyxx;
    r4.x = textureSampleCompareLevel(t24, s14, v_105.xy, r4.z);
  } else {
    let v_106 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_106.xy, r3.z, v_106.z);
    r6.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_107 = (-(r6.xyxz)).xyw;
    r3 = vec4<f32>(v_107.xy, r3.z, v_107.z);
    r4.y = dot(r3.xyw, r3.xyw);
    r4.y = sqrt(r4.y);
    r4.y = (r4.y * cb6_6.tint_symbol_2[17u].w);
    let v_108 = r3.xywx;
    r4.x = textureSampleCompareLevel(t14, s14, v_108.xyz, r4.y);
  }
  r1.z = (r1.z * r4.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_109 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_109.xyz, r2.w);
  let v_110 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_110.xy, r3.z, v_110.z);
  r4.x = dot(r3.xyw, r3.xyw);
  r4.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
  r4.z = sqrt(r4.x);
  r4.z = (1.0f / r4.z);
  let v_111 = (r3.xyw * r4.zzz);
  r3 = vec4<f32>(v_111.xy, r3.z, v_111.z);
  r4.x = clamp(fma(-(r4.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r4.z = fma(r3.z, r4.x, cb12_12.tint_symbol_3[7u].x);
  r4.x = (r4.x / r4.z);
  r3.x = dot(r3.xyw, v_28.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_112 = bitcast<u32>(r4.y);
  let v_113 = r2.w;
  r1.z = select(r1.z, v_113, (v_112 != 0u));
  let v_114 = (r2.xyz + v_29.xyw);
  r3 = vec4<f32>(v_114.xy, r3.z, v_114.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_115 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r4 = vec4<f32>(v_115.xyz, r4.w);
    r6.x = dot(r4.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r4.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r4.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_116 = -(r4.wwww);
    let v_117 = (r6.xy / v_116.xy);
    r6 = vec4<f32>(v_117.xy, r6.zw);
    r4.x = dot(r4.xyz, r4.xyz);
    r4.x = sqrt(r4.x);
    r6.z = (r4.x * cb6_6.tint_symbol_2[17u].w);
    let v_118 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r4 = vec4<f32>(v_118.xyz, r4.w);
    let v_119 = r4.xyxx;
    r4.x = textureSampleCompareLevel(t24, s14, v_119.xy, r4.z);
  } else {
    let v_120 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_120.xy, r3.z, v_120.z);
    r6.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r6.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_121 = (-(r6.xyxz)).xyw;
    r3 = vec4<f32>(v_121.xy, r3.z, v_121.z);
    r4.y = dot(r3.xyw, r3.xyw);
    r4.y = sqrt(r4.y);
    r4.y = (r4.y * cb6_6.tint_symbol_2[17u].w);
    let v_122 = r3.xywx;
    r4.x = textureSampleCompareLevel(t14, s14, v_122.xyz, r4.y);
  }
  r1.z = (r1.z * r4.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_123 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_123.xyz, r2.w);
  let v_124 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_124.xyz, r0.w);
  r3.x = dot(r0.xyz, r0.xyz);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.x)));
  r3.w = sqrt(r3.x);
  r3.w = (1.0f / r3.w);
  let v_125 = (r0.xyz * r3.www);
  r0 = vec4<f32>(v_125.xyz, r0.w);
  r3.x = clamp(fma(-(r3.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r3.z = fma(r3.z, r3.x, cb12_12.tint_symbol_3[7u].x);
  r3.x = (r3.x / r3.z);
  r0.x = dot(r0.xyz, v_28.xyz);
  r0.x = clamp(fma(r0.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r0.x = (r0.x * r3.x);
  r2.w = 1.0f;
  r0.y = dot(r2, cb12_12.tint_symbol_3[6u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.x = (r0.y * r0.x);
  let v_126 = bitcast<u32>(r3.y);
  let v_127 = r0.x;
  r0.x = select(r1.z, v_127, (v_126 != 0u));
  let v_128 = (r2.xyz + v_2.xyz);
  r2 = vec4<f32>(v_128.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_129 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_129.xyz, r3.w);
    r4.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r4.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_130 = -(r0.zzzz);
    let v_131 = (r4.xy / v_130.xy);
    r4 = vec4<f32>(v_131.xy, r4.zw);
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = sqrt(r0.z);
    r4.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_132 = fma(r4.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r3 = vec4<f32>(v_132.xyz, r3.w);
    let v_133 = r3.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_133.xy, r3.z);
  } else {
    let v_134 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_134.xyz, r2.w);
    r3.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r3.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r3.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_135 = (-(r3.xyzx)).xyz;
    r2 = vec4<f32>(v_135.xyz, r2.w);
    r1.z = dot(r2.xyz, r2.xyz);
    r1.z = sqrt(r1.z);
    r1.z = (r1.z * cb6_6.tint_symbol_2[17u].w);
    let v_136 = r2.xyzx;
    r0.z = textureSampleCompareLevel(t14, s14, v_136.xyz, r1.z);
  }
  r0.x = (r0.z * r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  r0.x = (r0.x + r1.y);
  r0.x = (r0.w * r0.x);
  r0.x = (r0.x * 0.125f);
  let v_137 = (r0.xxx * r5.xyz);
  r0 = vec4<f32>(v_137.xyz, r0.w);
  r0.w = clamp(((v3.xyz.zzzz / cb12_12.tint_symbol_3[14u].yyyy)).w, 0.0f, 1.0f);
  let v_138 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_138.xyz, r0.w);
  let v_139 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_139.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_8(v_140 : bool) {
  if (v_140) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_141 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_141, v1, v2, v3, v4);
  return o0;
}
