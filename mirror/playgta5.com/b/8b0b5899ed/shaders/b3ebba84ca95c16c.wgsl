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
  let v_5 = (r0.xyz * v3.xyz.yyy);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r0.xyz, v3.xyz.xxx, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r4 = vec4<f32>(((v2.zzz * v4.xyz)).xyz, r4.w);
  r1.y = dot(r1.yzw, r1.yzw);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r1.y)));
  let v_7 = fma(r0.xyz, v3.xyz.yyy, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(r2.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = bitcast<vec3<u32>>(r1.zzz);
  let v_10 = r0.xyz;
  let v_11 = select(r2.xyz, v_10, (v_9 != vec3<u32>()));
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r0.w = (r1.x / r1.y);
  let v_12 = bitcast<u32>(r1.z);
  r0.w = select(r0.w, 1.0f, (v_12 != 0u));
  let v_13 = floor(v0.yx);
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  let v_15 = (r1.yz * vec2<f32>(0.3333333432674407959f));
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = fract(r1.yz);
  let v_18 = r1;
  r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  let v_19 = (r1.yz * vec2<f32>(3.0f, 9.0f));
  let v_20 = r1;
  r1 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r1.y = (r1.y + r1.z);
  let v_21 = ((-(r3.xyzx)).xyz + r0.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = (r1.yyy * r0.xyz);
  r1 = vec4<f32>(r1.x, v_22.xyz);
  let v_23 = fma(r1.yzw, vec3<f32>(0.01408450677990913391f), r3.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = ((-(r2.xxyz)).yzw + cb12_12.tint_symbol_3[0u].xyz);
  r1 = vec4<f32>(r1.x, v_24.xyz);
  r3.x = dot(r1.yzw, r1.yzw);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.x)));
  r3.z = sqrt(r3.x);
  r3.z = (1.0f / r3.z);
  let v_25 = (r1.yzw * r3.zzz);
  r1 = vec4<f32>(r1.x, v_25.xyz);
  r3.x = clamp(fma(-(r3.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r3.z = ((-(cb12_12.tint_symbol_3[7u].xxxx)).z + 1.0f);
  r3.w = fma(r3.z, r3.x, cb12_12.tint_symbol_3[7u].x);
  r3.x = (r3.x / r3.w);
  let v_26 = -(cb12_12.tint_symbol_3[1u].xyzx);
  r1.y = dot(r1.yzw, v_26.xyz);
  r1.y = clamp(fma(r1.yyyy, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).y, 0.0f, 1.0f);
  r1.y = (r1.y * r3.x);
  r2.w = 1.0f;
  r1.z = dot(r2, cb12_12.tint_symbol_3[6u]);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 0.0f)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r1.y = (r1.z * r1.y);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r3.y)));
  let v_27 = -(cb1_1.tint_symbol[15u].xyxz);
  let v_28 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_28.xy, r3.z, v_28.z);
  r1.z = dot(r3.xyw, r3.xyw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb6_6.tint_symbol_2[15u].w == 3.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_29 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_29.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r2.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_30 = -(r2.wwww);
    let v_31 = (r6.xy / v_30.xy);
    r6 = vec4<f32>(v_31.xy, r6.zw);
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = sqrt(r2.w);
    r6.z = (r2.w * cb6_6.tint_symbol_2[17u].w);
    let v_32 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_32.xyz, r5.w);
    let v_33 = r5.xyxx;
    r2.w = textureSampleCompareLevel(t24, s14, v_33.xy, r5.z);
  } else {
    let v_34 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_34.xy, r3.z, v_34.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_35 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_35.xy, r3.z, v_35.z);
    r4.w = dot(r3.xyw, r3.xyw);
    r4.w = sqrt(r4.w);
    r4.w = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_36 = r3.xywx;
    r2.w = textureSampleCompareLevel(t14, s14, v_36.xyz, r4.w);
  }
  r1.y = (r1.y * r2.w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r1.z)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.z)));
  let v_37 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_38.xy, r3.z, v_38.z);
  r1.z = dot(r3.xyw, r3.xyw);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  r5.x = sqrt(r1.z);
  r5.x = (1.0f / r5.x);
  let v_39 = (r3.xyw * r5.xxx);
  r3 = vec4<f32>(v_39.xy, r3.z, v_39.z);
  r1.z = clamp(fma(-(r1.zzzz), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r5.x = fma(r3.z, r1.z, cb12_12.tint_symbol_3[7u].x);
  r1.z = (r1.z / r5.x);
  r3.x = dot(r3.xyw, v_26.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r1.z = (r1.z * r3.x);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r1.z = (r1.z * r2.w);
  let v_40 = bitcast<u32>(r4.w);
  let v_41 = r1.z;
  r1.z = select(r1.y, v_41, (v_40 != 0u));
  let v_42 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_42.xy, r3.z, v_42.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_43 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_43.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_44 = -(r4.wwww);
    let v_45 = (r6.xy / v_44.xy);
    r6 = vec4<f32>(v_45.xy, r6.zw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r6.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_46 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_46.xyz, r5.w);
    let v_47 = r5.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_47.xy, r5.z);
  } else {
    let v_48 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_48.xy, r3.z, v_48.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_49 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_49.xy, r3.z, v_49.z);
    r5.x = dot(r3.xyw, r3.xyw);
    r5.x = sqrt(r5.x);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_50 = r3.xywx;
    r4.w = textureSampleCompareLevel(t14, s14, v_50.xyz, r5.x);
  }
  r1.z = (r1.z * r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_51 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_51.xyz, r2.w);
  let v_52 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_52.xy, r3.z, v_52.z);
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.w)));
  r5.y = sqrt(r4.w);
  r5.y = (1.0f / r5.y);
  let v_53 = (r3.xyw * r5.yyy);
  r3 = vec4<f32>(v_53.xy, r3.z, v_53.z);
  r4.w = clamp(fma(-(r4.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.y = fma(r3.z, r4.w, cb12_12.tint_symbol_3[7u].x);
  r4.w = (r4.w / r5.y);
  r3.x = dot(r3.xyw, v_26.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.w);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_54 = bitcast<u32>(r5.x);
  let v_55 = r2.w;
  r1.z = select(r1.z, v_55, (v_54 != 0u));
  let v_56 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_56.xy, r3.z, v_56.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_57 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_57.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_58 = -(r4.wwww);
    let v_59 = (r6.xy / v_58.xy);
    r6 = vec4<f32>(v_59.xy, r6.zw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r6.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_60 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_60.xyz, r5.w);
    let v_61 = r5.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_61.xy, r5.z);
  } else {
    let v_62 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_62.xy, r3.z, v_62.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_63 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_63.xy, r3.z, v_63.z);
    r5.x = dot(r3.xyw, r3.xyw);
    r5.x = sqrt(r5.x);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_64 = r3.xywx;
    r4.w = textureSampleCompareLevel(t14, s14, v_64.xyz, r5.x);
  }
  r1.z = (r1.z * r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_65 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_65.xyz, r2.w);
  let v_66 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_66.xy, r3.z, v_66.z);
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.w)));
  r5.y = sqrt(r4.w);
  r5.y = (1.0f / r5.y);
  let v_67 = (r3.xyw * r5.yyy);
  r3 = vec4<f32>(v_67.xy, r3.z, v_67.z);
  r4.w = clamp(fma(-(r4.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.y = fma(r3.z, r4.w, cb12_12.tint_symbol_3[7u].x);
  r4.w = (r4.w / r5.y);
  r3.x = dot(r3.xyw, v_26.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.w);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_68 = bitcast<u32>(r5.x);
  let v_69 = r2.w;
  r1.z = select(r1.z, v_69, (v_68 != 0u));
  let v_70 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_70.xy, r3.z, v_70.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_71 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_71.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_72 = -(r4.wwww);
    let v_73 = (r6.xy / v_72.xy);
    r6 = vec4<f32>(v_73.xy, r6.zw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r6.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_74 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_74.xyz, r5.w);
    let v_75 = r5.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_75.xy, r5.z);
  } else {
    let v_76 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_76.xy, r3.z, v_76.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_77 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_77.xy, r3.z, v_77.z);
    r5.x = dot(r3.xyw, r3.xyw);
    r5.x = sqrt(r5.x);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_78 = r3.xywx;
    r4.w = textureSampleCompareLevel(t14, s14, v_78.xyz, r5.x);
  }
  r1.z = (r1.z * r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_79 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_79.xyz, r2.w);
  let v_80 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_80.xy, r3.z, v_80.z);
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.w)));
  r5.y = sqrt(r4.w);
  r5.y = (1.0f / r5.y);
  let v_81 = (r3.xyw * r5.yyy);
  r3 = vec4<f32>(v_81.xy, r3.z, v_81.z);
  r4.w = clamp(fma(-(r4.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.y = fma(r3.z, r4.w, cb12_12.tint_symbol_3[7u].x);
  r4.w = (r4.w / r5.y);
  r3.x = dot(r3.xyw, v_26.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.w);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_82 = bitcast<u32>(r5.x);
  let v_83 = r2.w;
  r1.z = select(r1.z, v_83, (v_82 != 0u));
  let v_84 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_84.xy, r3.z, v_84.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_85 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_85.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_86 = -(r4.wwww);
    let v_87 = (r6.xy / v_86.xy);
    r6 = vec4<f32>(v_87.xy, r6.zw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r6.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_88 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_88.xyz, r5.w);
    let v_89 = r5.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_89.xy, r5.z);
  } else {
    let v_90 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_90.xy, r3.z, v_90.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_91 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_91.xy, r3.z, v_91.z);
    r5.x = dot(r3.xyw, r3.xyw);
    r5.x = sqrt(r5.x);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_92 = r3.xywx;
    r4.w = textureSampleCompareLevel(t14, s14, v_92.xyz, r5.x);
  }
  r1.z = (r1.z * r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_93 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  let v_94 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_94.xy, r3.z, v_94.z);
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.w)));
  r5.y = sqrt(r4.w);
  r5.y = (1.0f / r5.y);
  let v_95 = (r3.xyw * r5.yyy);
  r3 = vec4<f32>(v_95.xy, r3.z, v_95.z);
  r4.w = clamp(fma(-(r4.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.y = fma(r3.z, r4.w, cb12_12.tint_symbol_3[7u].x);
  r4.w = (r4.w / r5.y);
  r3.x = dot(r3.xyw, v_26.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.w);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_96 = bitcast<u32>(r5.x);
  let v_97 = r2.w;
  r1.z = select(r1.z, v_97, (v_96 != 0u));
  let v_98 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_98.xy, r3.z, v_98.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_99 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_99.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_100 = -(r4.wwww);
    let v_101 = (r6.xy / v_100.xy);
    r6 = vec4<f32>(v_101.xy, r6.zw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r6.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_102 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_102.xyz, r5.w);
    let v_103 = r5.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_103.xy, r5.z);
  } else {
    let v_104 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_104.xy, r3.z, v_104.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_105 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_105.xy, r3.z, v_105.z);
    r5.x = dot(r3.xyw, r3.xyw);
    r5.x = sqrt(r5.x);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_106 = r3.xywx;
    r4.w = textureSampleCompareLevel(t14, s14, v_106.xyz, r5.x);
  }
  r1.z = (r1.z * r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_107 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_107.xyz, r2.w);
  let v_108 = ((-(r2.xyxz)).xyw + cb12_12.tint_symbol_3[0u].xyz);
  r3 = vec4<f32>(v_108.xy, r3.z, v_108.z);
  r4.w = dot(r3.xyw, r3.xyw);
  r5.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.w)));
  r5.y = sqrt(r4.w);
  r5.y = (1.0f / r5.y);
  let v_109 = (r3.xyw * r5.yyy);
  r3 = vec4<f32>(v_109.xy, r3.z, v_109.z);
  r4.w = clamp(fma(-(r4.wwww), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r5.y = fma(r3.z, r4.w, cb12_12.tint_symbol_3[7u].x);
  r4.w = (r4.w / r5.y);
  r3.x = dot(r3.xyw, v_26.xyz);
  r3.x = clamp(fma(r3.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r3.x = (r3.x * r4.w);
  r2.w = 1.0f;
  r2.w = dot(r2, cb12_12.tint_symbol_3[6u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 0.0f)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r2.w = (r2.w * r3.x);
  let v_110 = bitcast<u32>(r5.x);
  let v_111 = r2.w;
  r1.z = select(r1.z, v_111, (v_110 != 0u));
  let v_112 = (r2.xyz + v_27.xyw);
  r3 = vec4<f32>(v_112.xy, r3.z, v_112.z);
  r2.w = dot(r3.xyw, r3.xyw);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_113 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r5 = vec4<f32>(v_113.xyz, r5.w);
    r6.x = dot(r5.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r6.y = dot(r5.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r4.w = dot(r5.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_114 = -(r4.wwww);
    let v_115 = (r6.xy / v_114.xy);
    r6 = vec4<f32>(v_115.xy, r6.zw);
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = sqrt(r4.w);
    r6.z = (r4.w * cb6_6.tint_symbol_2[17u].w);
    let v_116 = fma(r6.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r5 = vec4<f32>(v_116.xyz, r5.w);
    let v_117 = r5.xyxx;
    r4.w = textureSampleCompareLevel(t24, s14, v_117.xy, r5.z);
  } else {
    let v_118 = (r3.xyw + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_118.xy, r3.z, v_118.z);
    r5.x = dot(r3.xyw, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyw, cb6_6.tint_symbol_2[16u].xyz);
    r5.z = dot(r3.xyw, cb6_6.tint_symbol_2[17u].xyz);
    let v_119 = (-(r5.xyxz)).xyw;
    r3 = vec4<f32>(v_119.xy, r3.z, v_119.z);
    r5.x = dot(r3.xyw, r3.xyw);
    r5.x = sqrt(r5.x);
    r5.x = (r5.x * cb6_6.tint_symbol_2[17u].w);
    let v_120 = r3.xywx;
    r4.w = textureSampleCompareLevel(t14, s14, v_120.xyz, r5.x);
  }
  r1.z = (r1.z * r4.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r2.w)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r2.w)));
  r1.y = (r1.z + r1.y);
  let v_121 = fma(r0.xyz, vec3<f32>(0.12676055729389190674f), r2.xyz);
  r2 = vec4<f32>(v_121.xyz, r2.w);
  let v_122 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_122.xyz, r0.w);
  r3.x = dot(r0.xyz, r0.xyz);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.x)));
  r3.w = sqrt(r3.x);
  r3.w = (1.0f / r3.w);
  let v_123 = (r0.xyz * r3.www);
  r0 = vec4<f32>(v_123.xyz, r0.w);
  r3.x = clamp(fma(-(r3.xxxx), cb12_12.tint_symbol_3[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r3.z = fma(r3.z, r3.x, cb12_12.tint_symbol_3[7u].x);
  r3.x = (r3.x / r3.z);
  r0.x = dot(r0.xyz, v_26.xyz);
  r0.x = clamp(fma(r0.xxxx, cb12_12.tint_symbol_3[5u].wwww, cb12_12.tint_symbol_3[5u].zzzz).x, 0.0f, 1.0f);
  r0.x = (r0.x * r3.x);
  r2.w = 1.0f;
  r0.y = dot(r2, cb12_12.tint_symbol_3[6u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r0.x = (r0.y * r0.x);
  let v_124 = bitcast<u32>(r3.y);
  let v_125 = r0.x;
  r0.x = select(r1.z, v_125, (v_124 != 0u));
  let v_126 = (r2.xyz + v_2.xyz);
  r2 = vec4<f32>(v_126.xyz, r2.w);
  r0.y = dot(r2.xyz, r2.xyz);
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_127 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
    r3 = vec4<f32>(v_127.xyz, r3.w);
    r5.x = dot(r3.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r5.y = dot(r3.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r0.z = dot(r3.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_128 = -(r0.zzzz);
    let v_129 = (r5.xy / v_128.xy);
    r5 = vec4<f32>(v_129.xy, r5.zw);
    r0.z = dot(r3.xyz, r3.xyz);
    r0.z = sqrt(r0.z);
    r5.z = (r0.z * cb6_6.tint_symbol_2[17u].w);
    let v_130 = fma(r5.xyz, vec3<f32>(0.5f, -0.5f, 1.0f), vec3<f32>(0.5f, 0.5f, 0.00100000004749745131f));
    r3 = vec4<f32>(v_130.xyz, r3.w);
    let v_131 = r3.xyxx;
    r0.z = textureSampleCompareLevel(t24, s14, v_131.xy, r3.z);
  } else {
    let v_132 = (r2.xyz + cb6_6.tint_symbol_2[18u].xyz);
    r2 = vec4<f32>(v_132.xyz, r2.w);
    r3.x = dot(r2.xyz, cb6_6.tint_symbol_2[15u].xyz);
    r3.y = dot(r2.xyz, cb6_6.tint_symbol_2[16u].xyz);
    r3.z = dot(r2.xyz, cb6_6.tint_symbol_2[17u].xyz);
    let v_133 = (-(r3.xyzx)).xyz;
    r2 = vec4<f32>(v_133.xyz, r2.w);
    r1.z = dot(r2.xyz, r2.xyz);
    r1.z = sqrt(r1.z);
    r1.z = (r1.z * cb6_6.tint_symbol_2[17u].w);
    let v_134 = r2.xyzx;
    r0.z = textureSampleCompareLevel(t14, s14, v_134.xyz, r1.z);
  }
  r0.x = (r0.z * r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  r0.x = (r0.x + r1.y);
  r0.x = (r0.w * r0.x);
  r0.x = (r0.x * 0.125f);
  let v_135 = (r0.xxx * r4.xyz);
  r0 = vec4<f32>(v_135.xyz, r0.w);
  let v_136 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_136.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_137 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_137, v1, v2, v3, v4);
  return o0;
}
