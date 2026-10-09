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
  r0.w = dot(cb11_11.tint_symbol_2[5u].xyz, v0);
  r0.w = clamp(((r0.wwww + cb11_11.tint_symbol_2[5u].wwww)).w, 0.0f, 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = clamp(((cb11_11.tint_symbol_2[4u].zzzz * cb12_12.tint_symbol_5[2u].zzzz)).w, 0.0f, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.x = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[1u].w);
    r2.y = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[2u].w);
    let v_9 = (r2.xy + v2.yy);
    r2 = vec4<f32>(v_9.xy, r2.zw);
    let v_10 = (r2.xy + cb11_11.tint_symbol_2[3u].ww);
    r2 = vec4<f32>(v_10.xy, r2.zw);
    let v_11 = fract(r2.xy);
    r2 = vec4<f32>(v_11.xy, r2.zw);
    let v_12 = (r2.xy + vec2<f32>(-0.5f));
    r2 = vec4<f32>(v_12.xy, r2.zw);
    let v_13 = fma((-(abs(r2.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r2 = vec4<f32>(v_13.xy, r2.zw);
    let v_14 = (r2.xy * r2.xy);
    r2 = vec4<f32>(r2.xy, v_14.xy);
    let v_15 = fma((-(r2.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r2 = vec4<f32>(v_15.xy, r2.zw);
    let v_16 = (r2.xy * r2.zw);
    r2 = vec4<f32>(v_16.xy, r2.zw);
    let v_17 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r2 = vec4<f32>(v_17.xy, r2.zw);
    let v_18 = ((-(r2.yyyx)).zw + vec2<f32>(1.0f));
    r2 = vec4<f32>(r2.xy, v_18.xy);
    r3.x = (r2.z * r2.w);
    let v_19 = (r2.zw * r2.xy);
    r2 = vec4<f32>(r2.xy, v_19.xy);
    r2.x = (r2.y * r2.x);
    let v_20 = (r2.zzz * cb11_11.tint_symbol_2[1u].xyz);
    r3 = vec4<f32>(r3.x, v_20.xyz);
    let v_21 = fma(r3.xxx, cb11_11.tint_symbol_2[0u].xyz, r3.yzw);
    r3 = vec4<f32>(v_21.xyz, r3.w);
    let v_22 = fma(r2.www, cb11_11.tint_symbol_2[2u].xyz, r3.xyz);
    r2 = vec4<f32>(r2.x, v_22.xyz);
    let v_23 = fma(r2.xxx, cb11_11.tint_symbol_2[3u].xyz, r2.yzw);
    r2 = vec4<f32>(v_23.xyz, r2.w);
    r2.w = ((-(cb11_11.tint_symbol_2[11u].zzzz)).w + 1.0f);
    let v_24 = (r2.xyz * cb11_11.tint_symbol_2[11u].zzz);
    r2 = vec4<f32>(v_24.xyz, r2.w);
    let v_25 = fma(r2.www, cb11_11.tint_symbol_2[0u].xyz, r2.xyz);
    r2 = vec4<f32>(v_25.xyz, r2.w);
    let v_26 = fma(cb11_11.tint_symbol_2[8u].xyz, cb2_2.tint_symbol_1[16u].xxx, v2.yyy);
    r3 = vec4<f32>(v_26.xyz, r3.w);
    let v_27 = (r3.xyz + cb11_11.tint_symbol_2[3u].www);
    r3 = vec4<f32>(v_27.xyz, r3.w);
    let v_28 = fract(r3.xyz);
    r3 = vec4<f32>(v_28.xyz, r3.w);
    let v_29 = (r3.xyz + vec3<f32>(-0.5f));
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = fma((-(abs(r3.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
    r3 = vec4<f32>(v_30.xyz, r3.w);
    let v_31 = (r3.xyz * r3.xyz);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    let v_32 = fma((-(r3.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
    r3 = vec4<f32>(v_32.xyz, r3.w);
    let v_33 = (r3.xyz * r4.xyz);
    r3 = vec4<f32>(v_33.xyz, r3.w);
    r2.w = (r3.x + r3.x);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[6u].w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      let v_34 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
      r3 = vec4<f32>(v_34.xyz, r3.w);
      let v_35 = fma(r3.xyz, cb11_11.tint_symbol_2[8u].www, v0);
      r3 = vec4<f32>(v_35.xyz, r3.w);
      let v_36 = -(cb11_11.tint_symbol_2[6u].xyzx);
      let v_37 = (r3.xyz + v_36.xyz);
      r3 = vec4<f32>(v_37.xyz, r3.w);
      let v_38 = (r3.xyz * cb11_11.tint_symbol_2[7u].xyz);
      r3 = vec4<f32>(v_38.xyz, r3.w);
      r3 = textureSampleLevel(t2, s2, r3.xyzx.xyz, 0.0f);
    } else {
      r3 = vec4<f32>(vec3<f32>(), r3.w);
    }
    r3.w = ((-(cb11_11.tint_symbol_2[9u].xxxx)).w + 1.0f);
    r2.w = (r2.w * cb11_11.tint_symbol_2[9u].x);
    r2.w = fma(r2.w, 0.5f, r3.w);
    let v_39 = (r3.xyz * r2.www);
    r3 = vec4<f32>(v_39.xyz, r3.w);
    let v_40 = (r3.xyz * cb11_11.tint_symbol_2[11u].yyy);
    r3 = vec4<f32>(v_40.xyz, r3.w);
    let v_41 = fma(cb11_11.tint_symbol_2[11u].xxx, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_41.xyz, r2.w);
    r2.w = max(v2.z, v2.x);
    let v_42 = (r2.xyz * r2.www);
    r2 = vec4<f32>(v_42.xyz, r2.w);
    let v_43 = (r1.www * r2.xyz);
    r2 = vec4<f32>(v_43.xyz, r2.w);
    r3.x = dot(cb1_1.tint_symbol[0u].xyz, r2.xyz);
    r3.y = dot(cb1_1.tint_symbol[1u].xyz, r2.xyz);
    r3.z = dot(cb1_1.tint_symbol[2u].xyz, r2.xyz);
    let v_44 = (r3.xyz * cb11_11.tint_symbol_2[10u].yyy);
    r2 = vec4<f32>(v_44.xyz, r2.w);
    r2.w = dot(v0, v0);
    r2.w = sqrt(r2.w);
    let v_45 = (abs(r2.xyzx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
    r3 = vec4<f32>(v_45.xyz, r3.w);
    r3.x = dot(r3.xyz, r3.xyz);
    r3.x = sqrt(r3.x);
    let v_46 = (r1.ww * cb11_11.tint_symbol_2[4u].xy);
    let v_47 = r3;
    r3 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
    r1.w = fma((-(cb11_11.tint_symbol_2[4u].xxxx)).w, r1.w, r3.x);
    r1.w = max(r1.w, 0.0f);
    r1.w = (r1.w / r3.z);
    r1.w = (r1.w * -1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.w = fma(r3.z, r1.w, r3.y);
    r1.w = (r1.w / r3.x);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.y >= r3.x)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = ((-(r1.wwww)).y + 1.0f);
    r1.w = fma(r3.y, r3.x, r1.w);
    let v_48 = fma(r2.xyz, r1.www, v0);
    r2 = vec4<f32>(v_48.xyz, r2.w);
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r1.w);
    r1.w = (r2.w / r1.w);
    let v_49 = (r1.www * r2.xyz);
    r2 = vec4<f32>(v_49.xyz, r2.w);
  } else {
    r2 = vec4<f32>(v0.xyz, r2.w);
  }
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  let v_50 = (v2.xxz * cb12_12.tint_symbol_5[2u].xxy);
  r3 = vec4<f32>(v_50.xyz, r3.w);
  let v_51 = (r3.xyz * cb9_9.tint_symbol_4[13u].xxy);
  r3 = vec4<f32>(v_51.xyz, r3.w);
  r2.w = (v2.y + cb9_9.tint_symbol_4[0u].w);
  r2.w = (abs(r2.wwww).w * 6.28318500518798828125f);
  let v_52 = (cb9_9.tint_symbol_4[13u].zzw * cb12_12.tint_symbol_5[2u].zzw);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  let v_53 = fma(cb2_2.tint_symbol_1[16u].xxx, r4.xyz, r2.www);
  r4 = vec4<f32>(v_53.xyz, r4.w);
  let v_54 = sin(r4.xyzx.xyz);
  r4 = vec4<f32>(v_54.xyz, r4.w);
  let v_55 = fma(r4.xyz, r3.xyz, v0);
  r3 = vec4<f32>(v_55.xyz, r3.w);
  let v_56 = bitcast<vec3<u32>>(r1.www);
  let v_57 = select(v0, r3.xyz, (v_56 != vec3<u32>()));
  r3 = vec4<f32>(v_57.xyz, r3.w);
  r1.w = ((-(r0.wwww)).w + 1.0f);
  let v_58 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_58.xyz, r2.w);
  let v_59 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  let v_60 = (cb1_1.tint_symbol[0u].xyz * cb9_9.tint_symbol_4[14u].zzz);
  r3 = vec4<f32>(v_60.xyz, r3.w);
  let v_61 = (cb1_1.tint_symbol[1u].xyz * cb9_9.tint_symbol_4[14u].zzz);
  r4 = vec4<f32>(v_61.xyz, r4.w);
  let v_62 = (cb1_1.tint_symbol[2u].xyz * cb9_9.tint_symbol_4[14u].www);
  r5 = vec4<f32>(v_62.xyz, r5.w);
  let v_63 = (r2.xyz * cb9_9.tint_symbol_4[14u].xxy);
  r6 = vec4<f32>(v_63.xyz, r6.w);
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
  let v_64 = -(cb9_9.tint_symbol_4[0u].xyzx);
  let v_65 = (r8.xyz + v_64.xyz);
  r6 = vec4<f32>(v_65.xyz, r6.w);
  r0.w = dot(r6.xyz, r6.xyz);
  r1.w = ((-(r0.wwww)).w + 0.5625f);
  r1.w = (r1.w * 1.77777779102325439453f);
  r1.w = max(r1.w, 0.0f);
  r0.w = inverseSqrt(r0.w);
  let v_66 = (r0.ww * r6.xy);
  r6 = vec4<f32>(v_66.xy, r6.zw);
  let v_67 = (r1.ww * r6.xy);
  r6 = vec4<f32>(v_67.xy, r6.zw);
  let v_68 = fma(r6.xy, v2.xx, r8.xy);
  r8 = vec4<f32>(v_68.xy, r8.zw);
  let v_69 = -(cb1_1.tint_symbol[3u].xyzx);
  let v_70 = (r8.xyz + v_69.xyz);
  r6 = vec4<f32>(v_70.xyz, r6.w);
  let v_71 = (r6.xyz * cb9_9.tint_symbol_4[14u].zzw);
  r6 = vec4<f32>(v_71.xyz, r6.w);
  r8.x = dot(r6.xyz, r3.xyz);
  r8.y = dot(r6.xyz, r4.xyz);
  r8.z = dot(r6.xyz, r5.xyz);
  let v_72 = bitcast<vec3<u32>>(cb8_8.tint_symbol_3[0u].xxx);
  let v_73 = r8.xyz;
  let v_74 = select(r2.xyz, v_73, (v_72 != vec3<u32>()));
  r2 = vec4<f32>(v_74.xyz, r2.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].y) != 0u)) {
    let v_75 = (r2.xyz * cb9_9.tint_symbol_4[14u].xxy);
    r6 = vec4<f32>(v_75.xyz, r6.w);
    r6.w = 1.0f;
    r7.x = dot(r6, r7);
    r7.y = dot(r6, r9);
    r0.w = dot(r6, r10);
    let v_76 = -(cb9_9.tint_symbol_4[1u].xyxx);
    let v_77 = (r7.xy + v_76.xy);
    r6 = vec4<f32>(v_77.xy, r6.zw);
    r1.w = dot(cb9_9.tint_symbol_4[2u].xy, r6.xy);
    r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[2u].wwww)).w, 0.0f, 1.0f);
    let v_78 = fma(r1.ww, cb9_9.tint_symbol_4[2u].xy, cb9_9.tint_symbol_4[1u].xy);
    r6 = vec4<f32>(v_78.xy, r6.zw);
    let v_79 = ((-(r6.xyxx)).xy + r7.xy);
    r6 = vec4<f32>(v_79.xy, r6.zw);
    r1.w = dot(r6.xy, r6.xy);
    r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_4[3u].y);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_4[3u].zzzz)).w, 0.0f, 1.0f);
    r3.w = (r2.w * cb9_9.tint_symbol_4[3u].x);
    r4.w = inverseSqrt(r1.w);
    let v_80 = (r4.ww * r6.xy);
    r6 = vec4<f32>(v_80.xy, r6.zw);
    let v_81 = (r3.ww * r6.xy);
    r6 = vec4<f32>(v_81.xy, r6.zw);
    let v_82 = fma(r6.xy, v2.xx, r7.xy);
    r6 = vec4<f32>(v_82.xy, r6.zw);
    r3.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[3u].w);
    r0.w = fma(r2.w, r3.w, r0.w);
    r2.w = (cb9_9.tint_symbol_4[3u].x * 0.5f);
    r2.w = (r2.w * r2.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
    r2.w = (cb9_9.tint_symbol_4[3u].w + -0.25f);
    let v_83 = bitcast<u32>(r1.w);
    let v_84 = r2.w;
    r6.z = select(r0.w, v_84, (v_83 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].z) != 0u)) {
      let v_85 = -(cb9_9.tint_symbol_4[4u].xyxx);
      let v_86 = (r6.xy + v_85.xy);
      r7 = vec4<f32>(v_86.xy, r7.zw);
      r0.w = dot(cb9_9.tint_symbol_4[5u].xy, r7.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_4[5u].wwww)).w, 0.0f, 1.0f);
      let v_87 = fma(r0.ww, cb9_9.tint_symbol_4[5u].xy, cb9_9.tint_symbol_4[4u].xy);
      r7 = vec4<f32>(v_87.xy, r7.zw);
      let v_88 = -(r7.xyxx);
      let v_89 = (r6.xy + v_88.xy);
      r7 = vec4<f32>(v_89.xy, r7.zw);
      r0.w = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[6u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[6u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_4[6u].x);
      r3.w = inverseSqrt(r0.w);
      let v_90 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_90.xy, r7.zw);
      let v_91 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_91.xy, r7.zw);
      let v_92 = fma(r7.xy, v2.xx, r6.xy);
      r6 = vec4<f32>(v_92.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_4[6u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_4[6u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_4[6u].w + -0.25f);
      let v_93 = bitcast<u32>(r0.w);
      let v_94 = r2.w;
      r6.z = select(r1.w, v_94, (v_93 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_3[0u].w) != 0u)) {
      let v_95 = -(cb9_9.tint_symbol_4[7u].xyxx);
      let v_96 = (r6.xy + v_95.xy);
      r7 = vec4<f32>(v_96.xy, r7.zw);
      r0.w = dot(cb9_9.tint_symbol_4[8u].xy, r7.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_4[8u].wwww)).w, 0.0f, 1.0f);
      let v_97 = fma(r0.ww, cb9_9.tint_symbol_4[8u].xy, cb9_9.tint_symbol_4[7u].xy);
      r7 = vec4<f32>(v_97.xy, r7.zw);
      let v_98 = -(r7.xyxx);
      let v_99 = (r6.xy + v_98.xy);
      r7 = vec4<f32>(v_99.xy, r7.zw);
      r0.w = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[9u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[9u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_4[9u].x);
      r3.w = inverseSqrt(r0.w);
      let v_100 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_100.xy, r7.zw);
      let v_101 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_101.xy, r7.zw);
      let v_102 = fma(r7.xy, v2.xx, r6.xy);
      r6 = vec4<f32>(v_102.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_4[9u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_4[9u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_4[9u].w + -0.25f);
      let v_103 = bitcast<u32>(r0.w);
      let v_104 = r2.w;
      r6.z = select(r1.w, v_104, (v_103 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_3[1u].x) != 0u)) {
      let v_105 = -(cb9_9.tint_symbol_4[10u].xyxx);
      let v_106 = (r6.xy + v_105.xy);
      r7 = vec4<f32>(v_106.xy, r7.zw);
      r0.w = dot(cb9_9.tint_symbol_4[11u].xy, r7.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_4[11u].wwww)).w, 0.0f, 1.0f);
      let v_107 = fma(r0.ww, cb9_9.tint_symbol_4[11u].xy, cb9_9.tint_symbol_4[10u].xy);
      r7 = vec4<f32>(v_107.xy, r7.zw);
      let v_108 = -(r7.xyxx);
      let v_109 = (r6.xy + v_108.xy);
      r7 = vec4<f32>(v_109.xy, r7.zw);
      r0.w = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_4[12u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_4[12u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_4[12u].x);
      r3.w = inverseSqrt(r0.w);
      let v_110 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_110.xy, r7.zw);
      let v_111 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_111.xy, r7.zw);
      let v_112 = fma(r7.xy, v2.xx, r6.xy);
      r6 = vec4<f32>(v_112.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_4[12u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_4[12u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_4[12u].w + -0.25f);
      let v_113 = bitcast<u32>(r0.w);
      let v_114 = r2.w;
      r6.z = select(r1.w, v_114, (v_113 != 0u));
    }
    let v_115 = (r6.xyz + v_69.xyz);
    r6 = vec4<f32>(v_115.xyz, r6.w);
    let v_116 = (r6.xyz * cb9_9.tint_symbol_4[14u].zzw);
    r6 = vec4<f32>(v_116.xyz, r6.w);
    r2.x = dot(r6.xyz, r3.xyz);
    r2.y = dot(r6.xyz, r4.xyz);
    r2.z = dot(r6.xyz, r5.xyz);
  }
  r3 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r3);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r3);
  o0 = (r2 + cb1_1.tint_symbol[11u]);
  let v_117 = (v2.xyz * cb11_11.tint_symbol_2[12u].xyz);
  r2 = vec4<f32>(v_117.xyz, r2.w);
  r0.w = max(v2.z, v2.x);
  r1.w = fma((-(cb11_11.tint_symbol_2[4u].zzzz)).w, cb12_12.tint_symbol_5[2u].z, 1.0f);
  r0.w = fma((-(r0.wwww)).w, r1.w, 1.0f);
  let v_118 = -(cb11_11.tint_symbol_2[13u].zzzz);
  r0.w = fma(r0.w, cb11_11.tint_symbol_2[13u].x, v_118.w);
  r1.w = (v_118.w + 1.0f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  r1.w = ((-(r0.wwww)).w + 1.0f);
  let v_119 = fma(r1.www, r2.xyz, r0.www);
  r2 = vec4<f32>(v_119.xyz, r2.w);
  r0.w = ((-(cb11_11.tint_symbol_2[14u].wwww)).w + 1.0f);
  let v_120 = (cb11_11.tint_symbol_2[14u].www * cb11_11.tint_symbol_2[14u].xyz);
  r3 = vec4<f32>(v_120.xyz, r3.w);
  let v_121 = fma(r0.www, r2.xyz, r3.xyz);
  o5 = vec4<f32>(v_121.xyz, o5.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[12u].w)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[12u].w < 0.0f)));
  let v_122 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.w) + v_122.w));
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5);
}
