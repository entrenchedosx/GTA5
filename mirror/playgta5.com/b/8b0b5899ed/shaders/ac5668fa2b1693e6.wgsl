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

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb15_struct {
  tint_symbol_2 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb15_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb15_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct_1;

struct cb9_struct {
  tint_symbol_5 : array<vec4<f32>, 9u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_3d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v4 : vec2<f32>, v5 : vec4<f32>) {
  let v = (v1.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v1.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v1.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = -(r2.xyzx);
  let v_8 = fma(r1.yzx, r0.zxy, v_7.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  o4 = ((r2.xyz * v5.www)).xyzx;
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < v1.z)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.0f)));
  let v_9 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.w) + v_9.w));
  r0.w = f32(bitcast<i32>(r0.w));
  let v_10 = (r0.www * v1);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r1.w = (r2.y + r2.x);
  r0.w = fma(r0.w, v1.z, r1.w);
  r1.w = (r0.w + cb11_11.tint_symbol_2[3u].w);
  r3 = vec4<f32>(vec3<f32>(), r3.w);
  loop {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.z) >= 3i)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      break;
    }
    r4 = (cb12_12.tint_symbol_5[2u].xzyw * icb0[bitcast<i32>(r3.z)].xxxx);
    r4 = fma(icb0[bitcast<i32>(r3.z)].yyyy, cb12_12.tint_symbol_5[3u].xzyw, r4);
    r4 = fma(icb0[bitcast<i32>(r3.z)].zzzz, cb12_12.tint_symbol_5[4u].xzyw, r4);
    let v_11 = abs(r1.wwww);
    let v_12 = fma(cb2_2.tint_symbol_1[16u].xx, r4.xy, v_11.xy);
    r4 = vec4<f32>(v_12.xy, r4.zw);
    let v_13 = fract(r4.xy);
    r4 = vec4<f32>(v_13.xy, r4.zw);
    let v_14 = (r4.xy + vec2<f32>(-0.5f));
    r4 = vec4<f32>(v_14.xy, r4.zw);
    let v_15 = fma((-(abs(r4.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r4 = vec4<f32>(v_15.xy, r4.zw);
    let v_16 = (r4.xy * r4.xy);
    r5 = vec4<f32>(v_16.xy, r5.zw);
    let v_17 = fma((-(r4.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r4 = vec4<f32>(v_17.xy, r4.zw);
    let v_18 = (r4.xy * r5.xy);
    r4 = vec4<f32>(v_18.xy, r4.zw);
    let v_19 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r4 = vec4<f32>(v_19.xy, r4.zw);
    let v_20 = fma(r4.xy, r4.zw, r3.xy);
    r3 = vec4<f32>(v_20.xy, r3.zw);
    r3.z = bitcast<f32>((bitcast<i32>(r3.z) + 1i));
  }
  r1.w = ((-(cb11_11.tint_symbol_2[0u].wwww)).w + 1.0f);
  r3.y = (r3.y * cb11_11.tint_symbol_2[0u].w);
  r1.w = fma(r1.w, r3.x, r3.y);
  r1.w = (r1.w * v2.z);
  let v_21 = (r2.xy * r1.ww);
  r3 = vec4<f32>(v_21.xy, r3.zw);
  r3.z = 0.0f;
  r2.w = 0.0f;
  let v_22 = fma(r1.www, r2.wwz, r3.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r3.x = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[1u].w);
  r3.y = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[2u].w);
  let v_23 = (r0.ww + r3.xy);
  r3 = vec4<f32>(r3.xy, v_23.xy);
  let v_24 = (r3.zw + cb11_11.tint_symbol_2[3u].ww);
  r3 = vec4<f32>(r3.xy, v_24.xy);
  let v_25 = fract(r3.zw);
  r3 = vec4<f32>(r3.xy, v_25.xy);
  let v_26 = (r3.zw + vec2<f32>(-0.5f));
  r3 = vec4<f32>(r3.xy, v_26.xy);
  let v_27 = fma((-(abs(r3.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_27.xy);
  let v_28 = (r3.zw * r3.zw);
  r4 = vec4<f32>(v_28.xy, r4.zw);
  let v_29 = fma((-(r3.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r3 = vec4<f32>(r3.xy, v_29.xy);
  let v_30 = (r3.zw * r4.xy);
  r3 = vec4<f32>(r3.xy, v_30.xy);
  let v_31 = fma(r3.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(r3.xy, v_31.xy);
  let v_32 = ((-(r3.wzww)).xy + vec2<f32>(1.0f));
  r4 = vec4<f32>(v_32.xy, r4.zw);
  r1.w = (r4.x * r4.y);
  let v_33 = (r3.zw * r4.xy);
  r4 = vec4<f32>(v_33.xy, r4.zw);
  r2.w = (r3.w * r3.z);
  let v_34 = (r4.xxx * cb11_11.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_34.x, r4.y, v_34.yz);
  let v_35 = fma(r1.www, cb11_11.tint_symbol_2[0u].xyz, r4.xzw);
  r4 = vec4<f32>(v_35.x, r4.y, v_35.yz);
  let v_36 = fma(r4.yyy, cb11_11.tint_symbol_2[2u].xyz, r4.xzw);
  r4 = vec4<f32>(v_36.xyz, r4.w);
  let v_37 = fma(r2.www, cb11_11.tint_symbol_2[3u].xyz, r4.xyz);
  r4 = vec4<f32>(v_37.xyz, r4.w);
  r1.w = ((-(cb11_11.tint_symbol_2[11u].zzzz)).w + 1.0f);
  let v_38 = (r4.xyz * cb11_11.tint_symbol_2[11u].zzz);
  r4 = vec4<f32>(v_38.xyz, r4.w);
  let v_39 = fma(r1.www, cb11_11.tint_symbol_2[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_39.xyz, r4.w);
  let v_40 = fma(cb11_11.tint_symbol_2[8u].xyz, cb2_2.tint_symbol_1[16u].xxx, r0.www);
  r5 = vec4<f32>(v_40.xyz, r5.w);
  let v_41 = (r5.xyz + cb11_11.tint_symbol_2[3u].www);
  r5 = vec4<f32>(v_41.xyz, r5.w);
  let v_42 = fract(r5.xyz);
  r5 = vec4<f32>(v_42.xyz, r5.w);
  let v_43 = (r5.xyz + vec3<f32>(-0.5f));
  r5 = vec4<f32>(v_43.xyz, r5.w);
  let v_44 = fma((-(abs(r5.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
  r5 = vec4<f32>(v_44.xyz, r5.w);
  let v_45 = (r5.xyz * r5.xyz);
  r6 = vec4<f32>(v_45.xyz, r6.w);
  let v_46 = fma((-(r5.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
  r5 = vec4<f32>(v_46.xyz, r5.w);
  let v_47 = (r5.xyz * r6.xyz);
  r5 = vec4<f32>(v_47.xyz, r5.w);
  r1.w = (r5.x + r5.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[6u].w)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_48 = fma(r5.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r5 = vec4<f32>(v_48.xyz, r5.w);
    let v_49 = fma(r5.xyz, cb11_11.tint_symbol_2[8u].www, v0);
    r5 = vec4<f32>(v_49.xyz, r5.w);
    let v_50 = -(cb11_11.tint_symbol_2[6u].xyzx);
    let v_51 = (r5.xyz + v_50.xyz);
    r5 = vec4<f32>(v_51.xyz, r5.w);
    let v_52 = (r5.xyz * cb11_11.tint_symbol_2[7u].xyz);
    r5 = vec4<f32>(v_52.xyz, r5.w);
    r5 = textureSampleLevel(t2, s2, r5.xyzx.xyz, 0.0f);
  } else {
    r5 = vec4<f32>(vec3<f32>(), r5.w);
  }
  r2.w = ((-(cb11_11.tint_symbol_2[9u].xxxx)).w + 1.0f);
  r1.w = (r1.w * cb11_11.tint_symbol_2[9u].x);
  r1.w = fma(r1.w, 0.5f, r2.w);
  let v_53 = (r5.xyz * r1.www);
  r5 = vec4<f32>(v_53.xyz, r5.w);
  let v_54 = (r5.xyz * cb11_11.tint_symbol_2[11u].yyy);
  r5 = vec4<f32>(v_54.xyz, r5.w);
  let v_55 = fma(cb11_11.tint_symbol_2[11u].xxx, r4.xyz, r5.xyz);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = ((-(cb12_12.tint_symbol_5[6u].zzzx)).zw + cb12_12.tint_symbol_5[6u].wy);
  r3 = vec4<f32>(r3.xy, v_56.xy);
  let v_57 = fma(v2.xx, r3.zw, cb12_12.tint_symbol_5[6u].zx);
  r3 = vec4<f32>(r3.xy, v_57.xy);
  let v_58 = (r3.zw * vec2<f32>(-1.44269502162933349609f));
  r3 = vec4<f32>(r3.xy, v_58.xy);
  let v_59 = exp2(r3.zw);
  r3 = vec4<f32>(r3.xy, v_59.xy);
  let v_60 = ((-(r3.zzzw)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_60.xy);
  let v_61 = (r3.xy + v2.yy);
  r3 = vec4<f32>(v_61.xy, r3.zw);
  let v_62 = (r3.xy + cb11_11.tint_symbol_2[3u].ww);
  r3 = vec4<f32>(v_62.xy, r3.zw);
  let v_63 = fract(r3.xy);
  r3 = vec4<f32>(v_63.xy, r3.zw);
  let v_64 = (r3.xy + vec2<f32>(-0.5f));
  r3 = vec4<f32>(v_64.xy, r3.zw);
  let v_65 = fma((-(abs(r3.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_65.xy, r3.zw);
  let v_66 = (r3.xy * r3.xy);
  r5 = vec4<f32>(r5.xy, v_66.xy);
  let v_67 = fma((-(r3.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r3 = vec4<f32>(v_67.xy, r3.zw);
  let v_68 = (r3.xy * r5.zw);
  r3 = vec4<f32>(v_68.xy, r3.zw);
  let v_69 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_69.xy, r3.zw);
  r5 = (-(r3.wzyx) + vec4<f32>(1.0f));
  r1.w = (r5.z * r5.w);
  let v_70 = (r3.xy * r5.zw);
  r5 = vec4<f32>(r5.xy, v_70.xy);
  r2.w = (r3.y * r3.x);
  let v_71 = (r5.zzz * cb11_11.tint_symbol_2[1u].xyz);
  r6 = vec4<f32>(v_71.xyz, r6.w);
  let v_72 = fma(r1.www, cb11_11.tint_symbol_2[0u].xyz, r6.xyz);
  r6 = vec4<f32>(v_72.xyz, r6.w);
  let v_73 = fma(r5.www, cb11_11.tint_symbol_2[2u].xyz, r6.xyz);
  r6 = vec4<f32>(v_73.xyz, r6.w);
  let v_74 = fma(r2.www, cb11_11.tint_symbol_2[3u].xyz, r6.xyz);
  r6 = vec4<f32>(v_74.xyz, r6.w);
  let v_75 = -(cb11_11.tint_symbol_2[0u].xyzx);
  let v_76 = (r6.xyz + v_75.xyz);
  r6 = vec4<f32>(v_76.xyz, r6.w);
  let v_77 = (r5.yyy * r6.xyz);
  r5 = vec4<f32>(r5.x, v_77.xyz);
  let v_78 = (r5.yzw * cb11_11.tint_symbol_2[10u].www);
  r5 = vec4<f32>(r5.x, v_78.xyz);
  let v_79 = fma(cb11_11.tint_symbol_2[0u].xyz, r5.xxx, r5.yzw);
  r5 = vec4<f32>(r5.x, v_79.xyz);
  let v_80 = (r5.yzw * cb11_11.tint_symbol_2[11u].xxx);
  r5 = vec4<f32>(r5.x, v_80.xyz);
  r1.w = ((-(v2.zzzz)).w + 1.0f);
  let v_81 = (r4.xyz * v2.zzz);
  r4 = vec4<f32>(v_81.xyz, r4.w);
  let v_82 = (r5.xxx * r4.xyz);
  r4 = vec4<f32>(v_82.xyz, r4.w);
  let v_83 = fma(r1.www, r5.yzw, r4.xyz);
  r4 = vec4<f32>(v_83.xyz, r4.w);
  r6.x = dot(cb1_1.tint_symbol[0u].xyz, r4.xyz);
  r6.y = dot(cb1_1.tint_symbol[1u].xyz, r4.xyz);
  r6.z = dot(cb1_1.tint_symbol[2u].xyz, r4.xyz);
  let v_84 = (r6.xyz * cb11_11.tint_symbol_2[10u].yyy);
  r4 = vec4<f32>(v_84.xyz, r4.w);
  r6 = vec4<f32>(vec2<f32>(), r6.zw);
  r6.z = cb12_12.tint_symbol_5[5u].x;
  let v_85 = ((-(r6.yyyz)).yzw + v0);
  r5 = vec4<f32>(r5.x, v_85.xyz);
  r1.w = dot(r5.yzw, r5.yzw);
  r1.w = sqrt(r1.w);
  let v_86 = (abs(r4.xyzx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
  r7 = vec4<f32>(v_86.xyz, r7.w);
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = sqrt(r2.w);
  let v_87 = (r5.xx * cb11_11.tint_symbol_2[4u].xy);
  r3 = vec4<f32>(v_87.xy, r3.zw);
  r4.w = fma((-(cb11_11.tint_symbol_2[4u].xxxx)).w, r5.x, r2.w);
  r4.w = max(r4.w, 0.0f);
  r4.w = (r4.w / r3.y);
  r4.w = (r4.w * -1.44269502162933349609f);
  r4.w = exp2(r4.w);
  r4.w = ((-(r4.wwww)).w + 1.0f);
  r3.y = fma(r3.y, r4.w, r3.x);
  r3.y = (r3.y / r2.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.x >= r2.w)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r3.x = ((-(r3.yyyy)).x + 1.0f);
  r2.w = fma(r3.x, r2.w, r3.y);
  let v_88 = fma(r4.xyz, r2.www, r5.yzw);
  r4 = vec4<f32>(v_88.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r1.w = (r1.w / r2.w);
  let v_89 = fma(r4.xyz, r1.www, r6.xyz);
  r4 = vec4<f32>(v_89.xyz, r4.w);
  let v_90 = fma(r2.xyz, cb11_11.tint_symbol_2[10u].zzz, r4.xyz);
  r2 = vec4<f32>(v_90.xyz, r2.w);
  let v_91 = (cb1_1.tint_symbol[0u].xyz * cb9_9.tint_symbol_4[14u].zzz);
  r4 = vec4<f32>(v_91.xyz, r4.w);
  let v_92 = (cb1_1.tint_symbol[1u].xyz * cb9_9.tint_symbol_4[14u].zzz);
  r5 = vec4<f32>(v_92.xyz, r5.w);
  let v_93 = (cb1_1.tint_symbol[2u].xyz * cb9_9.tint_symbol_4[14u].www);
  r6 = vec4<f32>(v_93.xyz, r6.w);
  let v_94 = (r2.xyz * cb9_9.tint_symbol_4[14u].xxy);
  r7 = vec4<f32>(v_94.xyz, r7.w);
  r7.w = 1.0f;
  r8.x = r4.x;
  r8.y = r5.x;
  r8.z = r6.x;
  r8.w = cb1_1.tint_symbol[3u].x;
  r9.x = dot(r7, r8);
  r10.x = r4.y;
  r10.y = r5.y;
  r10.z = r6.y;
  r10.w = cb1_1.tint_symbol[3u].y;
  r9.y = dot(r7, r10);
  r11.x = r4.z;
  r11.y = r5.z;
  r11.z = r6.z;
  r11.w = cb1_1.tint_symbol[3u].z;
  r9.z = dot(r7, r11);
  let v_95 = -(cb9_9.tint_symbol_4[0u].xyzx);
  let v_96 = (r9.xyz + v_95.xyz);
  r7 = vec4<f32>(v_96.xyz, r7.w);
  r1.w = dot(r7.xyz, r7.xyz);
  r2.w = ((-(r1.wwww)).w + 0.5625f);
  r2.w = (r2.w * 1.77777779102325439453f);
  r2.w = max(r2.w, 0.0f);
  r1.w = inverseSqrt(r1.w);
  let v_97 = (r1.ww * r7.xy);
  r3 = vec4<f32>(v_97.xy, r3.zw);
  let v_98 = (r2.ww * r3.xy);
  r3 = vec4<f32>(v_98.xy, r3.zw);
  let v_99 = fma(r3.xy, v2.xx, r9.xy);
  r9 = vec4<f32>(v_99.xy, r9.zw);
  let v_100 = -(cb1_1.tint_symbol[3u].xyzx);
  let v_101 = (r9.xyz + v_100.xyz);
  r7 = vec4<f32>(v_101.xyz, r7.w);
  let v_102 = (r7.xyz * cb9_9.tint_symbol_4[14u].zzw);
  r7 = vec4<f32>(v_102.xyz, r7.w);
  r9.x = dot(r7.xyz, r4.xyz);
  r9.y = dot(r7.xyz, r5.xyz);
  r9.z = dot(r7.xyz, r6.xyz);
  let v_103 = bitcast<vec3<u32>>(cb8_8.tint_symbol_3[0u].xxx);
  let v_104 = r9.xyz;
  let v_105 = select(r2.xyz, v_104, (v_103 != vec3<u32>()));
  r2 = vec4<f32>(v_105.xyz, r2.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].y) != 0u)) {
    let v_106 = (r2.xyz * cb9_9.tint_symbol_4[14u].xxy);
    r7 = vec4<f32>(v_106.xyz, r7.w);
    r7.w = 1.0f;
    r3.x = dot(r7, r8);
    r3.y = dot(r7, r10);
    r1.w = dot(r7, r11);
    let v_107 = -(cb9_9.tint_symbol_4[1u].xyxx);
    let v_108 = (r3.xy + v_107.xy);
    r7 = vec4<f32>(v_108.xy, r7.zw);
    r2.w = dot(cb9_9.tint_symbol_4[2u].xy, r7.xy);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_4[2u].wwww)).w, 0.0f, 1.0f);
    let v_109 = fma(r2.ww, cb9_9.tint_symbol_4[2u].xy, cb9_9.tint_symbol_4[1u].xy);
    r7 = vec4<f32>(v_109.xy, r7.zw);
    let v_110 = -(r7.xyxx);
    let v_111 = (r3.xy + v_110.xy);
    r7 = vec4<f32>(v_111.xy, r7.zw);
    r2.w = dot(r7.xy, r7.xy);
    r4.w = ((-(r2.wwww)).w + cb9_9.tint_symbol_4[3u].y);
    r4.w = clamp(((r4.wwww * cb9_9.tint_symbol_4[3u].zzzz)).w, 0.0f, 1.0f);
    r5.w = (r4.w * cb9_9.tint_symbol_4[3u].x);
    r6.w = inverseSqrt(r2.w);
    let v_112 = (r6.ww * r7.xy);
    r7 = vec4<f32>(v_112.xy, r7.zw);
    let v_113 = (r5.ww * r7.xy);
    r7 = vec4<f32>(v_113.xy, r7.zw);
    let v_114 = fma(r7.xy, v2.xx, r3.xy);
    r7 = vec4<f32>(v_114.xy, r7.zw);
    r3.x = ((-(r1.wwww)).x + cb9_9.tint_symbol_4[3u].w);
    r1.w = fma(r4.w, r3.x, r1.w);
    r3.x = (cb9_9.tint_symbol_4[3u].x * 0.5f);
    r3.x = (r3.x * r3.x);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r3.x)));
    r3.x = (cb9_9.tint_symbol_4[3u].w + -0.25f);
    let v_115 = bitcast<u32>(r2.w);
    let v_116 = r3.x;
    r7.z = select(r1.w, v_116, (v_115 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].z) != 0u)) {
      let v_117 = -(cb9_9.tint_symbol_4[4u].xyxx);
      let v_118 = (r7.xy + v_117.xy);
      r3 = vec4<f32>(v_118.xy, r3.zw);
      r1.w = dot(cb9_9.tint_symbol_4[5u].xy, r3.xy);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[5u].wwww)).w, 0.0f, 1.0f);
      let v_119 = fma(r1.ww, cb9_9.tint_symbol_4[5u].xy, cb9_9.tint_symbol_4[4u].xy);
      r3 = vec4<f32>(v_119.xy, r3.zw);
      let v_120 = ((-(r3.xyxx)).xy + r7.xy);
      r3 = vec4<f32>(v_120.xy, r3.zw);
      r1.w = dot(r3.xy, r3.xy);
      r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_4[6u].y);
      r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_4[6u].zzzz)).w, 0.0f, 1.0f);
      r4.w = (r2.w * cb9_9.tint_symbol_4[6u].x);
      r5.w = inverseSqrt(r1.w);
      let v_121 = (r3.xy * r5.ww);
      r3 = vec4<f32>(v_121.xy, r3.zw);
      let v_122 = (r3.xy * r4.ww);
      r3 = vec4<f32>(v_122.xy, r3.zw);
      let v_123 = fma(r3.xy, v2.xx, r7.xy);
      r7 = vec4<f32>(v_123.xy, r7.zw);
      r3.x = ((-(r7.zzzz)).x + cb9_9.tint_symbol_4[6u].w);
      r2.w = fma(r2.w, r3.x, r7.z);
      r3.x = (cb9_9.tint_symbol_4[6u].x * 0.5f);
      r3.x = (r3.x * r3.x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
      r3.x = (cb9_9.tint_symbol_4[6u].w + -0.25f);
      let v_124 = bitcast<u32>(r1.w);
      let v_125 = r3.x;
      r7.z = select(r2.w, v_125, (v_124 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].w) != 0u)) {
      let v_126 = -(cb9_9.tint_symbol_4[7u].xyxx);
      let v_127 = (r7.xy + v_126.xy);
      r3 = vec4<f32>(v_127.xy, r3.zw);
      r1.w = dot(cb9_9.tint_symbol_4[8u].xy, r3.xy);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[8u].wwww)).w, 0.0f, 1.0f);
      let v_128 = fma(r1.ww, cb9_9.tint_symbol_4[8u].xy, cb9_9.tint_symbol_4[7u].xy);
      r3 = vec4<f32>(v_128.xy, r3.zw);
      let v_129 = ((-(r3.xyxx)).xy + r7.xy);
      r3 = vec4<f32>(v_129.xy, r3.zw);
      r1.w = dot(r3.xy, r3.xy);
      r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_4[9u].y);
      r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_4[9u].zzzz)).w, 0.0f, 1.0f);
      r4.w = (r2.w * cb9_9.tint_symbol_4[9u].x);
      r5.w = inverseSqrt(r1.w);
      let v_130 = (r3.xy * r5.ww);
      r3 = vec4<f32>(v_130.xy, r3.zw);
      let v_131 = (r3.xy * r4.ww);
      r3 = vec4<f32>(v_131.xy, r3.zw);
      let v_132 = fma(r3.xy, v2.xx, r7.xy);
      r7 = vec4<f32>(v_132.xy, r7.zw);
      r3.x = ((-(r7.zzzz)).x + cb9_9.tint_symbol_4[9u].w);
      r2.w = fma(r2.w, r3.x, r7.z);
      r3.x = (cb9_9.tint_symbol_4[9u].x * 0.5f);
      r3.x = (r3.x * r3.x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
      r3.x = (cb9_9.tint_symbol_4[9u].w + -0.25f);
      let v_133 = bitcast<u32>(r1.w);
      let v_134 = r3.x;
      r7.z = select(r2.w, v_134, (v_133 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_3[1u].x) != 0u)) {
      let v_135 = -(cb9_9.tint_symbol_4[10u].xyxx);
      let v_136 = (r7.xy + v_135.xy);
      r3 = vec4<f32>(v_136.xy, r3.zw);
      r1.w = dot(cb9_9.tint_symbol_4[11u].xy, r3.xy);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[11u].wwww)).w, 0.0f, 1.0f);
      let v_137 = fma(r1.ww, cb9_9.tint_symbol_4[11u].xy, cb9_9.tint_symbol_4[10u].xy);
      r3 = vec4<f32>(v_137.xy, r3.zw);
      let v_138 = ((-(r3.xyxx)).xy + r7.xy);
      r3 = vec4<f32>(v_138.xy, r3.zw);
      r1.w = dot(r3.xy, r3.xy);
      r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_4[12u].y);
      r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_4[12u].zzzz)).w, 0.0f, 1.0f);
      r4.w = (r2.w * cb9_9.tint_symbol_4[12u].x);
      r5.w = inverseSqrt(r1.w);
      let v_139 = (r3.xy * r5.ww);
      r3 = vec4<f32>(v_139.xy, r3.zw);
      let v_140 = (r3.xy * r4.ww);
      r3 = vec4<f32>(v_140.xy, r3.zw);
      let v_141 = fma(r3.xy, v2.xx, r7.xy);
      r7 = vec4<f32>(v_141.xy, r7.zw);
      r3.x = ((-(r7.zzzz)).x + cb9_9.tint_symbol_4[12u].w);
      r2.w = fma(r2.w, r3.x, r7.z);
      r3.x = (cb9_9.tint_symbol_4[12u].x * 0.5f);
      r3.x = (r3.x * r3.x);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r3.x)));
      r3.x = (cb9_9.tint_symbol_4[12u].w + -0.25f);
      let v_142 = bitcast<u32>(r1.w);
      let v_143 = r3.x;
      r7.z = select(r2.w, v_143, (v_142 != 0u));
    }
    let v_144 = (r7.xyz + v_100.xyz);
    r7 = vec4<f32>(v_144.xyz, r7.w);
    let v_145 = (r7.xyz * cb9_9.tint_symbol_4[14u].zzw);
    r7 = vec4<f32>(v_145.xyz, r7.w);
    r2.x = dot(r7.xyz, r4.xyz);
    r2.y = dot(r7.xyz, r5.xyz);
    r2.z = dot(r7.xyz, r6.xyz);
  }
  r4 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r4 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r4);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r4);
  o0 = (r2 + cb1_1.tint_symbol[11u]);
  let v_146 = r2;
  r2 = vec4<f32>(0.0f, v_146.y, 0.0f, v_146.w);
  r2.y = (r0.w * cb11_11.tint_symbol_2[13u].y);
  let v_147 = fma(v2.zyz, cb11_11.tint_symbol_2[12u].xyz, r2.xyz);
  r2 = vec4<f32>(v_147.xyz, r2.w);
  let v_148 = (r3.zw * cb11_11.tint_symbol_2[13u].wx);
  r3 = vec4<f32>(v_148.xy, r3.zw);
  r0.w = (r3.y + r3.x);
  let v_149 = -(cb11_11.tint_symbol_2[13u].zzzz);
  r0.w = (r0.w + v_149.w);
  r1.w = (v_149.w + 1.0f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  r1.w = ((-(r0.wwww)).w + 1.0f);
  let v_150 = fma(r1.www, r2.xyz, r0.www);
  r2 = vec4<f32>(v_150.xyz, r2.w);
  r0.w = ((-(cb11_11.tint_symbol_2[14u].wwww)).w + 1.0f);
  let v_151 = (cb11_11.tint_symbol_2[14u].www * cb11_11.tint_symbol_2[14u].xyz);
  r3 = vec4<f32>(v_151.xyz, r3.w);
  let v_152 = fma(r0.www, r2.xyz, r3.xyz);
  o5 = vec4<f32>(v_152.xyz, o5.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[12u].w)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[12u].w < 0.0f)));
  let v_153 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.w) + v_153.w));
  o5.w = f32(bitcast<i32>(r0.w));
  o1 = vec4<f32>(v4.xy, o1.zw);
  o1.z = v2.w;
  o1.w = cb12_12.tint_symbol_5[8u].y;
  o2 = r0.xyz.xyzx;
  o3 = r1.xyz.xyzx;
}

struct tint_symbol_6 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5);
}
