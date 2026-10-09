enable clip_distances;
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

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb44_struct {
  tint_symbol_3 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb12_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb12_struct_1;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb15_struct {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct;

struct cb7_struct {
  tint_symbol_7 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_3d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v5 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v1.z)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.0f)));
  let v_1 = -(bitcast<vec4<i32>>(r0.xxxx));
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) + v_1.x));
  r0.x = f32(bitcast<i32>(r0.x));
  let v_2 = (r0.xxx * v1);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.y = (r1.y + r1.x);
  r0.x = fma(r0.x, v1.z, r0.y);
  r0.y = (r0.x + cb11_11.tint_symbol_4[3u].w);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r2.x = 0.0f;
  loop {
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= 3i)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      break;
    }
    r3 = (cb12_12.tint_symbol_7[2u].xzyw * icb0[bitcast<i32>(r2.x)].xxxx);
    r3 = fma(icb0[bitcast<i32>(r2.x)].yyyy, cb12_12.tint_symbol_7[3u].xzyw, r3);
    r3 = fma(icb0[bitcast<i32>(r2.x)].zzzz, cb12_12.tint_symbol_7[4u].xzyw, r3);
    let v_3 = abs(r0.yyyy);
    let v_4 = fma(cb2_2.tint_symbol_2[16u].xx, r3.xy, v_3.yz);
    let v_5 = r2;
    r2 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
    let v_6 = fract(r2.yz);
    let v_7 = r2;
    r2 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
    let v_8 = (r2.yz + vec2<f32>(-0.5f));
    let v_9 = r2;
    r2 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
    let v_10 = fma((-(abs(r2.yyzy))).yz, vec2<f32>(2.0f), vec2<f32>(1.0f));
    let v_11 = r2;
    r2 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
    let v_12 = (r2.yz * r2.yz);
    r3 = vec4<f32>(v_12.xy, r3.zw);
    let v_13 = fma((-(r2.yyzy)).yz, vec2<f32>(2.0f), vec2<f32>(3.0f));
    let v_14 = r2;
    r2 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
    let v_15 = (r2.yz * r3.xy);
    let v_16 = r2;
    r2 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
    let v_17 = fma(r2.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    let v_18 = r2;
    r2 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
    let v_19 = fma(r2.yz, r3.zw, r0.zw);
    r0 = vec4<f32>(r0.xy, v_19.xy);
    r2.x = bitcast<f32>((bitcast<i32>(r2.x) + 1i));
  }
  r0.y = ((-(cb11_11.tint_symbol_4[0u].wwww)).y + 1.0f);
  r0.w = (r0.w * cb11_11.tint_symbol_4[0u].w);
  r0.y = fma(r0.y, r0.z, r0.w);
  r0.y = (r0.y * v2.z);
  let v_20 = (r1.xy * r0.yy);
  r2 = vec4<f32>(v_20.xy, r2.zw);
  r2.z = 0.0f;
  r1.w = 0.0f;
  let v_21 = fma(r0.yyy, r1.wwz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  r1.x = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[1u].w);
  r1.y = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[2u].w);
  let v_22 = (r0.xx + r1.xy);
  r1 = vec4<f32>(r1.xy, v_22.xy);
  let v_23 = (r1.zw + cb11_11.tint_symbol_4[3u].ww);
  r1 = vec4<f32>(r1.xy, v_23.xy);
  let v_24 = fract(r1.zw);
  r1 = vec4<f32>(r1.xy, v_24.xy);
  let v_25 = (r1.zw + vec2<f32>(-0.5f));
  r1 = vec4<f32>(r1.xy, v_25.xy);
  let v_26 = fma((-(abs(r1.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_26.xy);
  let v_27 = (r1.zw * r1.zw);
  r2 = vec4<f32>(v_27.xy, r2.zw);
  let v_28 = fma((-(r1.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r1 = vec4<f32>(r1.xy, v_28.xy);
  let v_29 = (r1.zw * r2.xy);
  r1 = vec4<f32>(r1.xy, v_29.xy);
  let v_30 = fma(r1.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_30.xy);
  let v_31 = ((-(r1.wzww)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_31.xy, r2.zw);
  r2.z = (r2.x * r2.y);
  let v_32 = (r1.zw * r2.xy);
  r2 = vec4<f32>(v_32.xy, r2.zw);
  r1.z = (r1.w * r1.z);
  let v_33 = (r2.xxx * cb11_11.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_33.xyz, r3.w);
  let v_34 = fma(r2.zzz, cb11_11.tint_symbol_4[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_34.x, r2.y, v_34.yz);
  let v_35 = fma(r2.yyy, cb11_11.tint_symbol_4[2u].xyz, r2.xzw);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = fma(r1.zzz, cb11_11.tint_symbol_4[3u].xyz, r2.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  r1.z = ((-(cb11_11.tint_symbol_4[11u].zzzz)).z + 1.0f);
  let v_37 = (r2.xyz * cb11_11.tint_symbol_4[11u].zzz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = fma(r1.zzz, cb11_11.tint_symbol_4[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = fma(cb11_11.tint_symbol_4[8u].xyz, cb2_2.tint_symbol_2[16u].xxx, r0.xxx);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = (r3.xyz + cb11_11.tint_symbol_4[3u].www);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = fract(r3.xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  let v_42 = (r3.xyz + vec3<f32>(-0.5f));
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = fma((-(abs(r3.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_43.xyz, r3.w);
  let v_44 = (r3.xyz * r3.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma((-(r3.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_46.xyz, r3.w);
  r0.x = (r3.x + r3.x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].w)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_47 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(v_47.xyz, r3.w);
    let v_48 = fma(r3.xyz, cb11_11.tint_symbol_4[8u].www, v0);
    r3 = vec4<f32>(v_48.xyz, r3.w);
    let v_49 = -(cb11_11.tint_symbol_4[6u].xyzx);
    let v_50 = (r3.xyz + v_49.xyz);
    r3 = vec4<f32>(v_50.xyz, r3.w);
    let v_51 = (r3.xyz * cb11_11.tint_symbol_4[7u].xyz);
    r3 = vec4<f32>(v_51.xyz, r3.w);
    r3 = textureSampleLevel(t2, s2, r3.xyzx.xyz, 0.0f);
  } else {
    r3 = vec4<f32>(vec3<f32>(), r3.w);
  }
  r1.z = ((-(cb11_11.tint_symbol_4[9u].xxxx)).z + 1.0f);
  r0.x = (r0.x * cb11_11.tint_symbol_4[9u].x);
  r0.x = fma(r0.x, 0.5f, r1.z);
  let v_52 = (r3.xyz * r0.xxx);
  r3 = vec4<f32>(v_52.xyz, r3.w);
  let v_53 = (r3.xyz * cb11_11.tint_symbol_4[11u].yyy);
  r3 = vec4<f32>(v_53.xyz, r3.w);
  let v_54 = fma(cb11_11.tint_symbol_4[11u].xxx, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = ((-(cb12_12.tint_symbol_7[6u].xxxz)).zw + cb12_12.tint_symbol_7[6u].yw);
  r1 = vec4<f32>(r1.xy, v_55.xy);
  let v_56 = fma(v2.xx, r1.zw, cb12_12.tint_symbol_7[6u].xz);
  r1 = vec4<f32>(r1.xy, v_56.xy);
  let v_57 = (r1.zw * vec2<f32>(-1.44269502162933349609f));
  r1 = vec4<f32>(r1.xy, v_57.xy);
  let v_58 = exp2(r1.zw);
  r1 = vec4<f32>(r1.xy, v_58.xy);
  let v_59 = ((-(r1.zzzw)).zw + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_59.xy);
  let v_60 = ((-(r1.zzzw)).zw + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_60.xy);
  let v_61 = (r1.xy + v2.yy);
  r1 = vec4<f32>(v_61.xy, r1.zw);
  let v_62 = (r1.xy + cb11_11.tint_symbol_4[3u].ww);
  r1 = vec4<f32>(v_62.xy, r1.zw);
  let v_63 = fract(r1.xy);
  r1 = vec4<f32>(v_63.xy, r1.zw);
  let v_64 = (r1.xy + vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_64.xy, r1.zw);
  let v_65 = fma((-(abs(r1.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_65.xy, r1.zw);
  let v_66 = (r1.xy * r1.xy);
  r3 = vec4<f32>(v_66.xy, r3.zw);
  let v_67 = fma((-(r1.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r1 = vec4<f32>(v_67.xy, r1.zw);
  let v_68 = (r1.xy * r3.xy);
  r1 = vec4<f32>(v_68.xy, r1.zw);
  let v_69 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_69.xy, r1.zw);
  let v_70 = ((-(r1.yxyy)).xy + vec2<f32>(1.0f));
  r3 = vec4<f32>(v_70.xy, r3.zw);
  r0.x = (r3.x * r3.y);
  let v_71 = (r1.xy * r3.xy);
  r3 = vec4<f32>(v_71.xy, r3.zw);
  r1.x = (r1.y * r1.x);
  let v_72 = (r3.xxx * cb11_11.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_72.x, r3.y, v_72.yz);
  let v_73 = fma(r0.xxx, cb11_11.tint_symbol_4[0u].xyz, r3.xzw);
  r3 = vec4<f32>(v_73.x, r3.y, v_73.yz);
  let v_74 = fma(r3.yyy, cb11_11.tint_symbol_4[2u].xyz, r3.xzw);
  r3 = vec4<f32>(v_74.xyz, r3.w);
  let v_75 = fma(r1.xxx, cb11_11.tint_symbol_4[3u].xyz, r3.xyz);
  r3 = vec4<f32>(v_75.xyz, r3.w);
  let v_76 = -(cb11_11.tint_symbol_4[0u].xyzx);
  let v_77 = (r3.xyz + v_76.xyz);
  r3 = vec4<f32>(v_77.xyz, r3.w);
  let v_78 = (r1.www * r3.xyz);
  r1 = vec4<f32>(v_78.xy, r1.z, v_78.z);
  let v_79 = (r1.xyw * cb11_11.tint_symbol_4[10u].www);
  r1 = vec4<f32>(v_79.xy, r1.z, v_79.z);
  let v_80 = fma(cb11_11.tint_symbol_4[0u].xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_80.xy, r1.z, v_80.z);
  let v_81 = (r1.xyw * cb11_11.tint_symbol_4[11u].xxx);
  r1 = vec4<f32>(v_81.xy, r1.z, v_81.z);
  r0.x = ((-(v2.zzzz)).x + 1.0f);
  let v_82 = (r2.xyz * v2.zzz);
  r2 = vec4<f32>(v_82.xyz, r2.w);
  let v_83 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_83.xyz, r2.w);
  let v_84 = fma(r0.xxx, r1.xyw, r2.xyz);
  r1 = vec4<f32>(v_84.xy, r1.z, v_84.z);
  r2.x = dot(cb1_1.tint_symbol[0u].xyz, r1.xyw);
  r2.y = dot(cb1_1.tint_symbol[1u].xyz, r1.xyw);
  r2.z = dot(cb1_1.tint_symbol[2u].xyz, r1.xyw);
  let v_85 = (r2.xyz * cb11_11.tint_symbol_4[10u].yyy);
  r1 = vec4<f32>(v_85.xy, r1.z, v_85.z);
  r2 = vec4<f32>(vec2<f32>(), r2.zw);
  r2.z = cb12_12.tint_symbol_7[5u].x;
  let v_86 = ((-(r2.yyzy)).xyz + v0);
  r3 = vec4<f32>(v_86.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  let v_87 = (abs(r1.xywx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
  r4 = vec4<f32>(v_87.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  let v_88 = (r1.zz * cb11_11.tint_symbol_4[4u].xy);
  r4 = vec4<f32>(v_88.xy, r4.zw);
  r1.z = fma((-(cb11_11.tint_symbol_4[4u].xxxx)).z, r1.z, r2.w);
  r1.z = max(r1.z, 0.0f);
  r1.z = (r1.z / r4.y);
  r1.z = (r1.z * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = fma(r4.y, r1.z, r4.x);
  r1.z = (r1.z / r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r4.x >= r2.w)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r3.w = ((-(r1.zzzz)).w + 1.0f);
  r1.z = fma(r3.w, r2.w, r1.z);
  let v_89 = fma(r1.xyw, r1.zzz, r3.xyz);
  r1 = vec4<f32>(v_89.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r1.w);
  r0.x = (r0.x / r1.w);
  let v_90 = fma(r1.xyz, r0.xxx, r2.xyz);
  r1 = vec4<f32>(v_90.xyz, r1.w);
  let v_91 = fma(r0.yzw, cb11_11.tint_symbol_4[10u].zzz, r1.xyz);
  r0 = vec4<f32>(v_91.xyz, r0.w);
  let v_92 = (cb1_1.tint_symbol[0u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r1 = vec4<f32>(v_92.xyz, r1.w);
  let v_93 = (cb1_1.tint_symbol[1u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  let v_94 = (cb1_1.tint_symbol[2u].xyz * cb9_9.tint_symbol_6[14u].www);
  r3 = vec4<f32>(v_94.xyz, r3.w);
  let v_95 = (r0.xyz * cb9_9.tint_symbol_6[14u].xxy);
  r4 = vec4<f32>(v_95.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = cb1_1.tint_symbol[3u].x;
  r6.x = dot(r4, r5);
  r7.x = r1.y;
  r7.y = r2.y;
  r7.z = r3.y;
  r7.w = cb1_1.tint_symbol[3u].y;
  r6.y = dot(r4, r7);
  r8.x = r1.z;
  r8.y = r2.z;
  r8.z = r3.z;
  r8.w = cb1_1.tint_symbol[3u].z;
  r6.z = dot(r4, r8);
  let v_96 = -(cb9_9.tint_symbol_6[0u].xyzx);
  let v_97 = (r6.xyz + v_96.xyz);
  r4 = vec4<f32>(v_97.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.w = ((-(r0.wwww)).w + 0.5625f);
  r1.w = (r1.w * 1.77777779102325439453f);
  r1.w = max(r1.w, 0.0f);
  r0.w = inverseSqrt(r0.w);
  let v_98 = (r0.ww * r4.xy);
  r4 = vec4<f32>(v_98.xy, r4.zw);
  let v_99 = (r1.ww * r4.xy);
  r4 = vec4<f32>(v_99.xy, r4.zw);
  let v_100 = fma(r4.xy, v2.xx, r6.xy);
  r6 = vec4<f32>(v_100.xy, r6.zw);
  let v_101 = -(cb1_1.tint_symbol[3u].xyzx);
  let v_102 = (r6.xyz + v_101.xyz);
  r4 = vec4<f32>(v_102.xyz, r4.w);
  let v_103 = (r4.xyz * cb9_9.tint_symbol_6[14u].zzw);
  r4 = vec4<f32>(v_103.xyz, r4.w);
  r6.x = dot(r4.xyz, r1.xyz);
  r6.y = dot(r4.xyz, r2.xyz);
  r6.z = dot(r4.xyz, r3.xyz);
  let v_104 = bitcast<vec3<u32>>(cb8_8.tint_symbol_5[0u].xxx);
  let v_105 = r6.xyz;
  let v_106 = select(r0.xyz, v_105, (v_104 != vec3<u32>()));
  r0 = vec4<f32>(v_106.xyz, r0.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].y) != 0u)) {
    let v_107 = (r0.xyz * cb9_9.tint_symbol_6[14u].xxy);
    r4 = vec4<f32>(v_107.xyz, r4.w);
    r4.w = 1.0f;
    r5.x = dot(r4, r5);
    r5.y = dot(r4, r7);
    r0.w = dot(r4, r8);
    let v_108 = -(cb9_9.tint_symbol_6[1u].xyxx);
    let v_109 = (r5.xy + v_108.xy);
    r4 = vec4<f32>(v_109.xy, r4.zw);
    r1.w = dot(cb9_9.tint_symbol_6[2u].xy, r4.xy);
    r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[2u].wwww)).w, 0.0f, 1.0f);
    let v_110 = fma(r1.ww, cb9_9.tint_symbol_6[2u].xy, cb9_9.tint_symbol_6[1u].xy);
    r4 = vec4<f32>(v_110.xy, r4.zw);
    let v_111 = ((-(r4.xyxx)).xy + r5.xy);
    r4 = vec4<f32>(v_111.xy, r4.zw);
    r1.w = dot(r4.xy, r4.xy);
    r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_6[3u].y);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_6[3u].zzzz)).w, 0.0f, 1.0f);
    r3.w = (r2.w * cb9_9.tint_symbol_6[3u].x);
    r4.z = inverseSqrt(r1.w);
    let v_112 = (r4.zz * r4.xy);
    r4 = vec4<f32>(v_112.xy, r4.zw);
    let v_113 = (r3.ww * r4.xy);
    r4 = vec4<f32>(v_113.xy, r4.zw);
    let v_114 = fma(r4.xy, v2.xx, r5.xy);
    r4 = vec4<f32>(v_114.xy, r4.zw);
    r3.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[3u].w);
    r0.w = fma(r2.w, r3.w, r0.w);
    r2.w = (cb9_9.tint_symbol_6[3u].x * 0.5f);
    r2.w = (r2.w * r2.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
    r2.w = (cb9_9.tint_symbol_6[3u].w + -0.25f);
    let v_115 = bitcast<u32>(r1.w);
    let v_116 = r2.w;
    r4.z = select(r0.w, v_116, (v_115 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].z) != 0u)) {
      let v_117 = -(cb9_9.tint_symbol_6[4u].xyxx);
      let v_118 = (r4.xy + v_117.xy);
      r5 = vec4<f32>(v_118.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[5u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[5u].wwww)).w, 0.0f, 1.0f);
      let v_119 = fma(r0.ww, cb9_9.tint_symbol_6[5u].xy, cb9_9.tint_symbol_6[4u].xy);
      r5 = vec4<f32>(v_119.xy, r5.zw);
      let v_120 = -(r5.xyxx);
      let v_121 = (r4.xy + v_120.xy);
      r5 = vec4<f32>(v_121.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[6u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[6u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[6u].x);
      r3.w = inverseSqrt(r0.w);
      let v_122 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_122.xy, r5.zw);
      let v_123 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_123.xy, r5.zw);
      let v_124 = fma(r5.xy, v2.xx, r4.xy);
      r4 = vec4<f32>(v_124.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[6u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[6u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[6u].w + -0.25f);
      let v_125 = bitcast<u32>(r0.w);
      let v_126 = r2.w;
      r4.z = select(r1.w, v_126, (v_125 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].w) != 0u)) {
      let v_127 = -(cb9_9.tint_symbol_6[7u].xyxx);
      let v_128 = (r4.xy + v_127.xy);
      r5 = vec4<f32>(v_128.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[8u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[8u].wwww)).w, 0.0f, 1.0f);
      let v_129 = fma(r0.ww, cb9_9.tint_symbol_6[8u].xy, cb9_9.tint_symbol_6[7u].xy);
      r5 = vec4<f32>(v_129.xy, r5.zw);
      let v_130 = -(r5.xyxx);
      let v_131 = (r4.xy + v_130.xy);
      r5 = vec4<f32>(v_131.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[9u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[9u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[9u].x);
      r3.w = inverseSqrt(r0.w);
      let v_132 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_132.xy, r5.zw);
      let v_133 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_133.xy, r5.zw);
      let v_134 = fma(r5.xy, v2.xx, r4.xy);
      r4 = vec4<f32>(v_134.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[9u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[9u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[9u].w + -0.25f);
      let v_135 = bitcast<u32>(r0.w);
      let v_136 = r2.w;
      r4.z = select(r1.w, v_136, (v_135 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[1u].x) != 0u)) {
      let v_137 = -(cb9_9.tint_symbol_6[10u].xyxx);
      let v_138 = (r4.xy + v_137.xy);
      r5 = vec4<f32>(v_138.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[11u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[11u].wwww)).w, 0.0f, 1.0f);
      let v_139 = fma(r0.ww, cb9_9.tint_symbol_6[11u].xy, cb9_9.tint_symbol_6[10u].xy);
      r5 = vec4<f32>(v_139.xy, r5.zw);
      let v_140 = -(r5.xyxx);
      let v_141 = (r4.xy + v_140.xy);
      r5 = vec4<f32>(v_141.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[12u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[12u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[12u].x);
      r3.w = inverseSqrt(r0.w);
      let v_142 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_142.xy, r5.zw);
      let v_143 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_143.xy, r5.zw);
      let v_144 = fma(r5.xy, v2.xx, r4.xy);
      r4 = vec4<f32>(v_144.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[12u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[12u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[12u].w + -0.25f);
      let v_145 = bitcast<u32>(r0.w);
      let v_146 = r2.w;
      r4.z = select(r1.w, v_146, (v_145 != 0u));
    }
    let v_147 = (r4.xyz + v_101.xyz);
    r4 = vec4<f32>(v_147.xyz, r4.w);
    let v_148 = (r4.xyz * cb9_9.tint_symbol_6[14u].zzw);
    r4 = vec4<f32>(v_148.xyz, r4.w);
    r0.x = dot(r4.xyz, r1.xyz);
    r0.y = dot(r4.xyz, r2.xyz);
    r0.z = dot(r4.xyz, r3.xyz);
  }
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  let v_149 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_149.xyz, r2.w);
  let v_150 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_150.xy, r0.z, v_150.z);
  let v_151 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_151.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_152 = dot(-(cb3_3.tint_symbol_3[43u]), v2);
      o1 = vec4<f32>(vec3<f32>(v_152, v_152, v_152).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.x) != 0u)) {
        o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
      } else {
        let v_153 = (v1.yyy * cb1_1.tint_symbol[1u].xyz);
        r0 = vec4<f32>(v_153.xyz, r0.w);
        let v_154 = fma(v1.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
        r0 = vec4<f32>(v_154.xyz, r0.w);
        let v_155 = fma(v1.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
        r0 = vec4<f32>(v_155.xyz, r0.w);
        let v_156 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
        r2 = vec4<f32>(v_156.xyz, r2.w);
        let v_157 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
        r2 = vec4<f32>(v_157.xyz, r2.w);
        let v_158 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
        r2 = vec4<f32>(v_158.xyz, r2.w);
        let v_159 = (r0.xyz + vec3<f32>(1.0f));
        r0 = vec4<f32>(v_159.xyz, r0.w);
        let v_160 = (r0.xyz * vec3<f32>(0.5f));
        r0 = vec4<f32>(v_160.xyz, r0.w);
        let v_161 = (r2.xyz + vec3<f32>(1.0f));
        r2 = vec4<f32>(v_161.xyz, r2.w);
        let v_162 = (r2.xyz * vec3<f32>(0.5f));
        r2 = vec4<f32>(v_162.xyz, r2.w);
        r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-3.0f, -4.0f, -5.0f, -9.0f))));
        r4.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -10.0f)));
        r3.w = bitcast<f32>((bitcast<u32>(r3.w) | bitcast<u32>(r4.x)));
        r4 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r3.wwww) != vec4<u32>()));
        r2.w = 1.0f;
        let v_163 = bitcast<vec4<u32>>(r3.zzzz);
        let v_164 = r2;
        r2 = select(r4, v_164, (v_163 != vec4<u32>()));
        r0.w = 1.0f;
        let v_165 = bitcast<vec4<u32>>(r3.yyyy);
        let v_166 = r0;
        r0 = select(r2, v_166, (v_165 != vec4<u32>()));
        r2 = vec4<f32>(v2.xyz, r2.w);
        r2.w = 1.0f;
        let v_167 = bitcast<vec4<u32>>(r3.xxxx);
        let v_168 = r2;
        o1 = select(r0, v_168, (v_167 != vec4<u32>()));
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = r1;
  let v_169 = &(x0[0u]);
  *(v_169) = vec4<f32>((*(v_169)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_8 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v5);
  return tint_symbol_9(o0, o1, o2, o3, v);
}
