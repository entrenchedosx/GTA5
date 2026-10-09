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

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb15_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb15_struct_1;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb15_struct_2 {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct_2;

struct cb5_struct {
  tint_symbol_5 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v4 : vec2<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  let v = (cb1_1.tint_symbol[14u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb1_1.tint_symbol[14u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (cb1_1.tint_symbol[12u].zxy * vec3<f32>(0.0f, -1.0f, 0.0f));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = -(r1.xyzx);
  let v_6 = fma(cb1_1.tint_symbol[12u].yzx, vec3<f32>(-1.0f, 0.0f, 0.0f), v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = inverseSqrt(r0.w);
  let v_7 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r2 = vec4<f32>(((v6.xzy * vec3<f32>(1.0f, -1.0f, 1.0f))).xyz, r2.w);
  let v_8 = fma(v0.xzy, vec3<f32>(1.0f, -1.0f, 1.0f), (-(r2.xyzx)).xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = (r2.yyy * vec3<f32>(0.0f, 0.0f, -1.0f));
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r2.xxx, r0.xyz, r3.xyz);
  r2 = vec4<f32>(v_10.xy, r2.z, v_10.z);
  let v_11 = fma(r2.zzz, r1.xyz, r2.xyw);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r2.xyz + v6.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r3 = vec4<f32>(((v1.zzz * vec3<f32>(0.0f, 0.0f, 1.0f))).xyz, r3.w);
  let v_13 = fma(v1.xxx, r0.xyz, r3.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(v1.yyy, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  let v_17 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = (r0.yzx * r1.zxy);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = -(r3.xyzx);
  let v_23 = fma(r1.yzx, r0.zxy, v_22.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  o4 = ((r3.xyz * v5.www)).xyzx;
  r0.w = dot(cb11_11.tint_symbol_2[5u].xyz, r2.xyz);
  r0.w = clamp(((r0.wwww + cb11_11.tint_symbol_2[5u].wwww)).w, 0.0f, 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = clamp(((cb11_11.tint_symbol_2[4u].zzzz * cb12_12.tint_symbol_5[2u].zzzz)).w, 0.0f, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r3.x = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[1u].w);
    r3.y = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[2u].w);
    let v_24 = (r3.xy + v2.yy);
    r3 = vec4<f32>(v_24.xy, r3.zw);
    let v_25 = (r3.xy + cb11_11.tint_symbol_2[3u].ww);
    r3 = vec4<f32>(v_25.xy, r3.zw);
    let v_26 = fract(r3.xy);
    r3 = vec4<f32>(v_26.xy, r3.zw);
    let v_27 = (r3.xy + vec2<f32>(-0.5f));
    r3 = vec4<f32>(v_27.xy, r3.zw);
    let v_28 = fma((-(abs(r3.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r3 = vec4<f32>(v_28.xy, r3.zw);
    let v_29 = (r3.xy * r3.xy);
    r3 = vec4<f32>(r3.xy, v_29.xy);
    let v_30 = fma((-(r3.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r3 = vec4<f32>(v_30.xy, r3.zw);
    let v_31 = (r3.xy * r3.zw);
    r3 = vec4<f32>(v_31.xy, r3.zw);
    let v_32 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r3 = vec4<f32>(v_32.xy, r3.zw);
    let v_33 = ((-(r3.yyyx)).zw + vec2<f32>(1.0f));
    r3 = vec4<f32>(r3.xy, v_33.xy);
    r2.w = (r3.z * r3.w);
    let v_34 = (r3.zw * r3.xy);
    r3 = vec4<f32>(r3.xy, v_34.xy);
    r3.x = (r3.y * r3.x);
    let v_35 = (r3.zzz * cb11_11.tint_symbol_2[1u].xyz);
    r4 = vec4<f32>(v_35.xyz, r4.w);
    let v_36 = fma(r2.www, cb11_11.tint_symbol_2[0u].xyz, r4.xyz);
    r4 = vec4<f32>(v_36.xyz, r4.w);
    let v_37 = fma(r3.www, cb11_11.tint_symbol_2[2u].xyz, r4.xyz);
    r3 = vec4<f32>(r3.x, v_37.xyz);
    let v_38 = fma(r3.xxx, cb11_11.tint_symbol_2[3u].xyz, r3.yzw);
    r3 = vec4<f32>(v_38.xyz, r3.w);
    r2.w = ((-(cb11_11.tint_symbol_2[11u].zzzz)).w + 1.0f);
    let v_39 = (r3.xyz * cb11_11.tint_symbol_2[11u].zzz);
    r3 = vec4<f32>(v_39.xyz, r3.w);
    let v_40 = fma(r2.www, cb11_11.tint_symbol_2[0u].xyz, r3.xyz);
    r3 = vec4<f32>(v_40.xyz, r3.w);
    let v_41 = fma(cb11_11.tint_symbol_2[8u].xyz, cb2_2.tint_symbol_1[16u].xxx, v2.yyy);
    r4 = vec4<f32>(v_41.xyz, r4.w);
    let v_42 = (r4.xyz + cb11_11.tint_symbol_2[3u].www);
    r4 = vec4<f32>(v_42.xyz, r4.w);
    let v_43 = fract(r4.xyz);
    r4 = vec4<f32>(v_43.xyz, r4.w);
    let v_44 = (r4.xyz + vec3<f32>(-0.5f));
    r4 = vec4<f32>(v_44.xyz, r4.w);
    let v_45 = fma((-(abs(r4.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
    r4 = vec4<f32>(v_45.xyz, r4.w);
    let v_46 = (r4.xyz * r4.xyz);
    r5 = vec4<f32>(v_46.xyz, r5.w);
    let v_47 = fma((-(r4.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
    r4 = vec4<f32>(v_47.xyz, r4.w);
    let v_48 = (r4.xyz * r5.xyz);
    r4 = vec4<f32>(v_48.xyz, r4.w);
    r2.w = (r4.x + r4.x);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[6u].w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      let v_49 = fma(r4.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
      r4 = vec4<f32>(v_49.xyz, r4.w);
      let v_50 = fma(r4.xyz, cb11_11.tint_symbol_2[8u].www, r2.xyz);
      r4 = vec4<f32>(v_50.xyz, r4.w);
      let v_51 = -(cb11_11.tint_symbol_2[6u].xyzx);
      let v_52 = (r4.xyz + v_51.xyz);
      r4 = vec4<f32>(v_52.xyz, r4.w);
      let v_53 = (r4.xyz * cb11_11.tint_symbol_2[7u].xyz);
      r4 = vec4<f32>(v_53.xyz, r4.w);
      r4 = textureSampleLevel(t2, s2, r4.xyzx.xyz, 0.0f);
    } else {
      r4 = vec4<f32>(vec3<f32>(), r4.w);
    }
    r3.w = ((-(cb11_11.tint_symbol_2[9u].xxxx)).w + 1.0f);
    r2.w = (r2.w * cb11_11.tint_symbol_2[9u].x);
    r2.w = fma(r2.w, 0.5f, r3.w);
    let v_54 = (r4.xyz * r2.www);
    r4 = vec4<f32>(v_54.xyz, r4.w);
    let v_55 = (r4.xyz * cb11_11.tint_symbol_2[11u].yyy);
    r4 = vec4<f32>(v_55.xyz, r4.w);
    let v_56 = fma(cb11_11.tint_symbol_2[11u].xxx, r3.xyz, r4.xyz);
    r3 = vec4<f32>(v_56.xyz, r3.w);
    r2.w = max(v2.z, v2.x);
    let v_57 = (r3.xyz * r2.www);
    r3 = vec4<f32>(v_57.xyz, r3.w);
    let v_58 = (r1.www * r3.xyz);
    r3 = vec4<f32>(v_58.xyz, r3.w);
    r4.x = dot(cb1_1.tint_symbol[0u].xyz, r3.xyz);
    r4.y = dot(cb1_1.tint_symbol[1u].xyz, r3.xyz);
    r4.z = dot(cb1_1.tint_symbol[2u].xyz, r3.xyz);
    let v_59 = (r4.xyz * cb11_11.tint_symbol_2[10u].yyy);
    r3 = vec4<f32>(v_59.xyz, r3.w);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = sqrt(r2.w);
    let v_60 = (abs(r3.xyzx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
    r4 = vec4<f32>(v_60.xyz, r4.w);
    r3.w = dot(r4.xyz, r4.xyz);
    r3.w = sqrt(r3.w);
    let v_61 = (r1.ww * cb11_11.tint_symbol_2[4u].xy);
    r4 = vec4<f32>(v_61.xy, r4.zw);
    r1.w = fma((-(cb11_11.tint_symbol_2[4u].xxxx)).w, r1.w, r3.w);
    r1.w = max(r1.w, 0.0f);
    r1.w = (r1.w / r4.y);
    r1.w = (r1.w * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.w = fma(r4.y, r1.w, r4.x);
    r1.w = (r1.w / r3.w);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r4.x >= r3.w)));
    r3.w = bitcast<f32>((bitcast<u32>(r3.w) & 1065353216u));
    r4.x = ((-(r1.wwww)).x + 1.0f);
    r1.w = fma(r4.x, r3.w, r1.w);
    let v_62 = fma(r3.xyz, r1.www, r2.xyz);
    r3 = vec4<f32>(v_62.xyz, r3.w);
    r1.w = dot(r3.xyz, r3.xyz);
    r1.w = sqrt(r1.w);
    r1.w = (r2.w / r1.w);
    let v_63 = (r1.www * r3.xyz);
    r3 = vec4<f32>(v_63.xyz, r3.w);
  } else {
    let v_64 = r2;
    r3 = vec4<f32>(v_64.xyz, r3.w);
  }
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  let v_65 = (v2.xxz * cb12_12.tint_symbol_5[2u].xxy);
  r4 = vec4<f32>(v_65.xyz, r4.w);
  let v_66 = (r4.xyz * cb9_9.tint_symbol_4[13u].xxy);
  r4 = vec4<f32>(v_66.xyz, r4.w);
  r2.w = (v2.y + cb9_9.tint_symbol_4[0u].w);
  r2.w = (abs(r2.wwww).w * 6.28318500518798828125f);
  let v_67 = (cb9_9.tint_symbol_4[13u].zzw * cb12_12.tint_symbol_5[2u].zzw);
  r5 = vec4<f32>(v_67.xyz, r5.w);
  let v_68 = fma(cb2_2.tint_symbol_1[16u].xxx, r5.xyz, r2.www);
  r5 = vec4<f32>(v_68.xyz, r5.w);
  let v_69 = sin(r5.xyzx.xyz);
  r5 = vec4<f32>(v_69.xyz, r5.w);
  let v_70 = fma(r5.xyz, r4.xyz, r2.xyz);
  r4 = vec4<f32>(v_70.xyz, r4.w);
  let v_71 = bitcast<vec3<u32>>(r1.www);
  let v_72 = r4.xyz;
  let v_73 = select(r2.xyz, v_72, (v_71 != vec3<u32>()));
  r2 = vec4<f32>(v_73.xyz, r2.w);
  r1.w = ((-(r0.wwww)).w + 1.0f);
  let v_74 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_74.xyz, r3.w);
  let v_75 = fma(r1.www, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_75.xyz, r2.w);
  let v_76 = (cb1_1.tint_symbol[0u].xyz * cb9_9.tint_symbol_4[14u].zzz);
  r3 = vec4<f32>(v_76.xyz, r3.w);
  let v_77 = (cb1_1.tint_symbol[1u].xyz * cb9_9.tint_symbol_4[14u].zzz);
  r4 = vec4<f32>(v_77.xyz, r4.w);
  let v_78 = (cb1_1.tint_symbol[2u].xyz * cb9_9.tint_symbol_4[14u].www);
  r5 = vec4<f32>(v_78.xyz, r5.w);
  let v_79 = (r2.xyz * cb9_9.tint_symbol_4[14u].xxy);
  r6 = vec4<f32>(v_79.xyz, r6.w);
  r6.w = 1.0f;
  r7.x = r3.x;
  r7.y = r4.x;
  r7.z = r5.x;
  r7.w = cb1_1.tint_symbol[3u].x;
  r8.x = dot(r6, r7);
  r9.x = r3.y;
  r9.y = r4.y;
  r9.z = r5.y;
  r9.w = cb1_1.tint_symbol[3u].y;
  r8.y = dot(r6, r9);
  r10.x = r3.z;
  r10.y = r4.z;
  r10.z = r5.z;
  r10.w = cb1_1.tint_symbol[3u].z;
  r8.z = dot(r6, r10);
  let v_80 = -(cb9_9.tint_symbol_4[0u].xyzx);
  let v_81 = (r8.xyz + v_80.xyz);
  r6 = vec4<f32>(v_81.xyz, r6.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.w = ((-(r0.wwww)).w + 0.5625f);
  r1.w = (r1.w * 1.77777779102325439453f);
  r1.w = max(r1.w, 0.0f);
  r0.w = inverseSqrt(r0.w);
  let v_82 = (r0.ww * r6.xy);
  r6 = vec4<f32>(v_82.xy, r6.zw);
  let v_83 = (r1.ww * r6.xy);
  r6 = vec4<f32>(v_83.xy, r6.zw);
  let v_84 = fma(r6.xy, v2.xx, r8.xy);
  r8 = vec4<f32>(v_84.xy, r8.zw);
  let v_85 = -(cb1_1.tint_symbol[3u].xyzx);
  let v_86 = (r8.xyz + v_85.xyz);
  r6 = vec4<f32>(v_86.xyz, r6.w);
  let v_87 = (r6.xyz * cb9_9.tint_symbol_4[14u].zzw);
  r6 = vec4<f32>(v_87.xyz, r6.w);
  r8.x = dot(r6.xyz, r3.xyz);
  r8.y = dot(r6.xyz, r4.xyz);
  r8.z = dot(r6.xyz, r5.xyz);
  let v_88 = bitcast<vec3<u32>>(cb8_8.tint_symbol_3[0u].xxx);
  let v_89 = r8.xyz;
  let v_90 = select(r2.xyz, v_89, (v_88 != vec3<u32>()));
  r2 = vec4<f32>(v_90.xyz, r2.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].y) != 0u)) {
    let v_91 = (r2.xyz * cb9_9.tint_symbol_4[14u].xxy);
    r6 = vec4<f32>(v_91.xyz, r6.w);
    r6.w = 1.0f;
    r7.x = dot(r6, r7);
    r7.y = dot(r6, r9);
    r0.w = dot(r6, r10);
    let v_92 = -(cb9_9.tint_symbol_4[1u].xyxx);
    let v_93 = (r7.xy + v_92.xy);
    r6 = vec4<f32>(v_93.xy, r6.zw);
    r1.w = dot(cb9_9.tint_symbol_4[2u].xy, r6.xy);
    r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[2u].wwww)).w, 0.0f, 1.0f);
    let v_94 = fma(r1.ww, cb9_9.tint_symbol_4[2u].xy, cb9_9.tint_symbol_4[1u].xy);
    r6 = vec4<f32>(v_94.xy, r6.zw);
    let v_95 = ((-(r6.xyxx)).xy + r7.xy);
    r6 = vec4<f32>(v_95.xy, r6.zw);
    r1.w = dot(r6.xy, r6.xy);
    r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_4[3u].y);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_4[3u].zzzz)).w, 0.0f, 1.0f);
    r3.w = (r2.w * cb9_9.tint_symbol_4[3u].x);
    r4.w = inverseSqrt(r1.w);
    let v_96 = (r4.ww * r6.xy);
    r6 = vec4<f32>(v_96.xy, r6.zw);
    let v_97 = (r3.ww * r6.xy);
    r6 = vec4<f32>(v_97.xy, r6.zw);
    let v_98 = fma(r6.xy, v2.xx, r7.xy);
    r6 = vec4<f32>(v_98.xy, r6.zw);
    r3.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[3u].w);
    r0.w = fma(r2.w, r3.w, r0.w);
    r2.w = (cb9_9.tint_symbol_4[3u].x * 0.5f);
    r2.w = (r2.w * r2.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
    r2.w = (cb9_9.tint_symbol_4[3u].w + -0.25f);
    let v_99 = bitcast<u32>(r1.w);
    let v_100 = r2.w;
    r6.z = select(r0.w, v_100, (v_99 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].z) != 0u)) {
      let v_101 = -(cb9_9.tint_symbol_4[4u].xyxx);
      let v_102 = (r6.xy + v_101.xy);
      r7 = vec4<f32>(v_102.xy, r7.zw);
      r0.w = dot(cb9_9.tint_symbol_4[5u].xy, r7.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_4[5u].wwww)).w, 0.0f, 1.0f);
      let v_103 = fma(r0.ww, cb9_9.tint_symbol_4[5u].xy, cb9_9.tint_symbol_4[4u].xy);
      r7 = vec4<f32>(v_103.xy, r7.zw);
      let v_104 = -(r7.xyxx);
      let v_105 = (r6.xy + v_104.xy);
      r7 = vec4<f32>(v_105.xy, r7.zw);
      r0.w = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[6u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[6u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_4[6u].x);
      r3.w = inverseSqrt(r0.w);
      let v_106 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_106.xy, r7.zw);
      let v_107 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_107.xy, r7.zw);
      let v_108 = fma(r7.xy, v2.xx, r6.xy);
      r6 = vec4<f32>(v_108.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_4[6u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_4[6u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_4[6u].w + -0.25f);
      let v_109 = bitcast<u32>(r0.w);
      let v_110 = r2.w;
      r6.z = select(r1.w, v_110, (v_109 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].w) != 0u)) {
      let v_111 = -(cb9_9.tint_symbol_4[7u].xyxx);
      let v_112 = (r6.xy + v_111.xy);
      r7 = vec4<f32>(v_112.xy, r7.zw);
      r0.w = dot(cb9_9.tint_symbol_4[8u].xy, r7.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_4[8u].wwww)).w, 0.0f, 1.0f);
      let v_113 = fma(r0.ww, cb9_9.tint_symbol_4[8u].xy, cb9_9.tint_symbol_4[7u].xy);
      r7 = vec4<f32>(v_113.xy, r7.zw);
      let v_114 = -(r7.xyxx);
      let v_115 = (r6.xy + v_114.xy);
      r7 = vec4<f32>(v_115.xy, r7.zw);
      r0.w = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[9u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[9u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_4[9u].x);
      r3.w = inverseSqrt(r0.w);
      let v_116 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_116.xy, r7.zw);
      let v_117 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_117.xy, r7.zw);
      let v_118 = fma(r7.xy, v2.xx, r6.xy);
      r6 = vec4<f32>(v_118.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_4[9u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_4[9u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_4[9u].w + -0.25f);
      let v_119 = bitcast<u32>(r0.w);
      let v_120 = r2.w;
      r6.z = select(r1.w, v_120, (v_119 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_3[1u].x) != 0u)) {
      let v_121 = -(cb9_9.tint_symbol_4[10u].xyxx);
      let v_122 = (r6.xy + v_121.xy);
      r7 = vec4<f32>(v_122.xy, r7.zw);
      r0.w = dot(cb9_9.tint_symbol_4[11u].xy, r7.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_4[11u].wwww)).w, 0.0f, 1.0f);
      let v_123 = fma(r0.ww, cb9_9.tint_symbol_4[11u].xy, cb9_9.tint_symbol_4[10u].xy);
      r7 = vec4<f32>(v_123.xy, r7.zw);
      let v_124 = -(r7.xyxx);
      let v_125 = (r6.xy + v_124.xy);
      r7 = vec4<f32>(v_125.xy, r7.zw);
      r0.w = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[12u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[12u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_4[12u].x);
      r3.w = inverseSqrt(r0.w);
      let v_126 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_126.xy, r7.zw);
      let v_127 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_127.xy, r7.zw);
      let v_128 = fma(r7.xy, v2.xx, r6.xy);
      r6 = vec4<f32>(v_128.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_4[12u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_4[12u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_4[12u].w + -0.25f);
      let v_129 = bitcast<u32>(r0.w);
      let v_130 = r2.w;
      r6.z = select(r1.w, v_130, (v_129 != 0u));
    }
    let v_131 = (r6.xyz + v_85.xyz);
    r6 = vec4<f32>(v_131.xyz, r6.w);
    let v_132 = (r6.xyz * cb9_9.tint_symbol_4[14u].zzw);
    r6 = vec4<f32>(v_132.xyz, r6.w);
    r2.x = dot(r6.xyz, r3.xyz);
    r2.y = dot(r6.xyz, r4.xyz);
    r2.z = dot(r6.xyz, r5.xyz);
  }
  r3 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r3);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r3);
  o0 = (r2 + cb1_1.tint_symbol[11u]);
  let v_133 = (v2.xyz * cb11_11.tint_symbol_2[12u].xyz);
  r2 = vec4<f32>(v_133.xyz, r2.w);
  r0.w = max(v2.z, v2.x);
  r1.w = fma((-(cb11_11.tint_symbol_2[4u].zzzz)).w, cb12_12.tint_symbol_5[2u].z, 1.0f);
  r0.w = fma((-(r0.wwww)).w, r1.w, 1.0f);
  let v_134 = -(cb11_11.tint_symbol_2[13u].zzzz);
  r0.w = fma(r0.w, cb11_11.tint_symbol_2[13u].x, v_134.w);
  r1.w = (v_134.w + 1.0f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  r1.w = ((-(r0.wwww)).w + 1.0f);
  let v_135 = fma(r1.www, r2.xyz, r0.www);
  r2 = vec4<f32>(v_135.xyz, r2.w);
  r0.w = ((-(cb11_11.tint_symbol_2[14u].wwww)).w + 1.0f);
  let v_136 = (cb11_11.tint_symbol_2[14u].www * cb11_11.tint_symbol_2[14u].xyz);
  r3 = vec4<f32>(v_136.xyz, r3.w);
  let v_137 = fma(r0.www, r2.xyz, r3.xyz);
  o5 = vec4<f32>(v_137.xyz, o5.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[12u].w)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[12u].w < 0.0f)));
  let v_138 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.w) + v_138.w));
  o5.w = f32(bitcast<i32>(r0.w));
  o1 = vec4<f32>(v4.xy, o1.zw);
  o1.z = v2.w;
  o1.w = cb12_12.tint_symbol_5[4u].y;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v4, v5, v6);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5);
}
