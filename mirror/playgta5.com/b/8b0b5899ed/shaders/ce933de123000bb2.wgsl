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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb1_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb15_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb15_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct_1;

struct cb5_struct {
  tint_symbol_7 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(19u) var s3 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

@group(0u) @binding(35u) var t3 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec3<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec2<f32>, v7 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r2);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r3);
  r3 = vec4<f32>(v0.xyz, r3.w);
  r3.w = 1.0f;
  r4.x = dot(r1, r3);
  r4.y = dot(r2, r3);
  r4.z = dot(r0, r3);
  r0.w = dot(r1.xyz, v3);
  r1.w = dot(r2.xyz, v3);
  r2.w = dot(r0.xyz, v3);
  r1.x = dot(r1.xyz, v7.xyz);
  r1.y = dot(r2.xyz, v7.xyz);
  r0.x = dot(r0.xyz, v7.xyz);
  let v_2 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_2.xyz, r2.w);
  let v_3 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r2.www, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r0.zwy * r1.zxy);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = -(r2.xyzx);
  let v_10 = fma(r1.yzx, r0.wyz, v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  o5 = ((r2.xyz * v7.www)).xyzx;
  r0.x = dot(cb11_11.tint_symbol_4[5u].xyz, r4.xyz);
  r0.x = clamp(((r0.xxxx + cb11_11.tint_symbol_4[5u].wwww)).x, 0.0f, 1.0f);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = clamp(((cb11_11.tint_symbol_4[4u].zzzz * cb12_12.tint_symbol_7[2u].zzzz)).w, 0.0f, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.x = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[1u].w);
    r2.y = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[2u].w);
    let v_11 = (r2.xy + v4.yy);
    r2 = vec4<f32>(v_11.xy, r2.zw);
    let v_12 = (r2.xy + cb11_11.tint_symbol_4[3u].ww);
    r2 = vec4<f32>(v_12.xy, r2.zw);
    let v_13 = fract(r2.xy);
    r2 = vec4<f32>(v_13.xy, r2.zw);
    let v_14 = (r2.xy + vec2<f32>(-0.5f));
    r2 = vec4<f32>(v_14.xy, r2.zw);
    let v_15 = fma((-(abs(r2.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r2 = vec4<f32>(v_15.xy, r2.zw);
    let v_16 = (r2.xy * r2.xy);
    r2 = vec4<f32>(r2.xy, v_16.xy);
    let v_17 = fma((-(r2.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r2 = vec4<f32>(v_17.xy, r2.zw);
    let v_18 = (r2.xy * r2.zw);
    r2 = vec4<f32>(v_18.xy, r2.zw);
    let v_19 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r2 = vec4<f32>(v_19.xy, r2.zw);
    let v_20 = ((-(r2.yyyx)).zw + vec2<f32>(1.0f));
    r2 = vec4<f32>(r2.xy, v_20.xy);
    r3.x = (r2.z * r2.w);
    let v_21 = (r2.zw * r2.xy);
    r2 = vec4<f32>(r2.xy, v_21.xy);
    r2.x = (r2.y * r2.x);
    let v_22 = (r2.zzz * cb11_11.tint_symbol_4[1u].xyz);
    r3 = vec4<f32>(r3.x, v_22.xyz);
    let v_23 = fma(r3.xxx, cb11_11.tint_symbol_4[0u].xyz, r3.yzw);
    r3 = vec4<f32>(v_23.xyz, r3.w);
    let v_24 = fma(r2.www, cb11_11.tint_symbol_4[2u].xyz, r3.xyz);
    r2 = vec4<f32>(r2.x, v_24.xyz);
    let v_25 = fma(r2.xxx, cb11_11.tint_symbol_4[3u].xyz, r2.yzw);
    r2 = vec4<f32>(v_25.xyz, r2.w);
    r2.w = ((-(cb11_11.tint_symbol_4[11u].zzzz)).w + 1.0f);
    let v_26 = (r2.xyz * cb11_11.tint_symbol_4[11u].zzz);
    r2 = vec4<f32>(v_26.xyz, r2.w);
    let v_27 = fma(r2.www, cb11_11.tint_symbol_4[0u].xyz, r2.xyz);
    r2 = vec4<f32>(v_27.xyz, r2.w);
    let v_28 = fma(cb11_11.tint_symbol_4[8u].xyz, cb2_2.tint_symbol_2[16u].xxx, v4.yyy);
    r3 = vec4<f32>(v_28.xyz, r3.w);
    let v_29 = (r3.xyz + cb11_11.tint_symbol_4[3u].www);
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = fract(r3.xyz);
    r3 = vec4<f32>(v_30.xyz, r3.w);
    let v_31 = (r3.xyz + vec3<f32>(-0.5f));
    r3 = vec4<f32>(v_31.xyz, r3.w);
    let v_32 = fma((-(abs(r3.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
    r3 = vec4<f32>(v_32.xyz, r3.w);
    let v_33 = (r3.xyz * r3.xyz);
    r5 = vec4<f32>(v_33.xyz, r5.w);
    let v_34 = fma((-(r3.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
    r3 = vec4<f32>(v_34.xyz, r3.w);
    let v_35 = (r3.xyz * r5.xyz);
    r3 = vec4<f32>(v_35.xyz, r3.w);
    r2.w = (r3.x + r3.x);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].w)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      let v_36 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
      r3 = vec4<f32>(v_36.xyz, r3.w);
      let v_37 = fma(r3.xyz, cb11_11.tint_symbol_4[8u].www, r4.xyz);
      r3 = vec4<f32>(v_37.xyz, r3.w);
      let v_38 = -(cb11_11.tint_symbol_4[6u].xyzx);
      let v_39 = (r3.xyz + v_38.xyz);
      r3 = vec4<f32>(v_39.xyz, r3.w);
      let v_40 = (r3.xyz * cb11_11.tint_symbol_4[7u].xyz);
      r3 = vec4<f32>(v_40.xyz, r3.w);
      r3 = textureSampleLevel(t3, s3, r3.xyzx.xyz, 0.0f);
    } else {
      r3 = vec4<f32>(vec3<f32>(), r3.w);
    }
    r3.w = ((-(cb11_11.tint_symbol_4[9u].xxxx)).w + 1.0f);
    r2.w = (r2.w * cb11_11.tint_symbol_4[9u].x);
    r2.w = fma(r2.w, 0.5f, r3.w);
    let v_41 = (r3.xyz * r2.www);
    r3 = vec4<f32>(v_41.xyz, r3.w);
    let v_42 = (r3.xyz * cb11_11.tint_symbol_4[11u].yyy);
    r3 = vec4<f32>(v_42.xyz, r3.w);
    let v_43 = fma(cb11_11.tint_symbol_4[11u].xxx, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_43.xyz, r2.w);
    r2.w = max(v4.z, v4.x);
    let v_44 = (r2.xyz * r2.www);
    r2 = vec4<f32>(v_44.xyz, r2.w);
    let v_45 = (r1.www * r2.xyz);
    r2 = vec4<f32>(v_45.xyz, r2.w);
    r3.x = dot(cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
    r3.y = dot(cb1_1.tint_symbol_1[1u].xyz, r2.xyz);
    r3.z = dot(cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
    let v_46 = (r3.xyz * cb11_11.tint_symbol_4[10u].yyy);
    r2 = vec4<f32>(v_46.xyz, r2.w);
    r2.w = dot(r4.xyz, r4.xyz);
    r2.w = sqrt(r2.w);
    let v_47 = (abs(r2.xyzx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
    r3 = vec4<f32>(v_47.xyz, r3.w);
    r3.x = dot(r3.xyz, r3.xyz);
    r3.x = sqrt(r3.x);
    let v_48 = (r1.ww * cb11_11.tint_symbol_4[4u].xy);
    let v_49 = r3;
    r3 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
    r1.w = fma((-(cb11_11.tint_symbol_4[4u].xxxx)).w, r1.w, r3.x);
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
    let v_50 = fma(r2.xyz, r1.www, r4.xyz);
    r2 = vec4<f32>(v_50.xyz, r2.w);
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r1.w);
    r1.w = (r2.w / r1.w);
    let v_51 = (r1.www * r2.xyz);
    r2 = vec4<f32>(v_51.xyz, r2.w);
  } else {
    let v_52 = r4;
    r2 = vec4<f32>(v_52.xyz, r2.w);
  }
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  let v_53 = (v4.xxz * cb12_12.tint_symbol_7[2u].xxy);
  r3 = vec4<f32>(v_53.xyz, r3.w);
  let v_54 = (r3.xyz * cb9_9.tint_symbol_6[13u].xxy);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  r2.w = (v4.y + cb9_9.tint_symbol_6[0u].w);
  r2.w = (abs(r2.wwww).w * 6.28318500518798828125f);
  let v_55 = (cb9_9.tint_symbol_6[13u].zzw * cb12_12.tint_symbol_7[2u].zzw);
  r5 = vec4<f32>(v_55.xyz, r5.w);
  let v_56 = fma(cb2_2.tint_symbol_2[16u].xxx, r5.xyz, r2.www);
  r5 = vec4<f32>(v_56.xyz, r5.w);
  let v_57 = sin(r5.xyzx.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = fma(r5.xyz, r3.xyz, r4.xyz);
  r3 = vec4<f32>(v_58.xyz, r3.w);
  let v_59 = bitcast<vec3<u32>>(r1.www);
  let v_60 = r3.xyz;
  let v_61 = select(r4.xyz, v_60, (v_59 != vec3<u32>()));
  r3 = vec4<f32>(v_61.xyz, r3.w);
  r1.w = ((-(r0.xxxx)).w + 1.0f);
  let v_62 = (r0.xxx * r2.xyz);
  r2 = vec4<f32>(v_62.xyz, r2.w);
  let v_63 = fma(r1.www, r3.xyz, r2.xyz);
  r2 = vec4<f32>(v_63.xyz, r2.w);
  let v_64 = (cb1_1.tint_symbol_1[0u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r3 = vec4<f32>(v_64.xyz, r3.w);
  let v_65 = (cb1_1.tint_symbol_1[1u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r4 = vec4<f32>(v_65.xyz, r4.w);
  let v_66 = (cb1_1.tint_symbol_1[2u].xyz * cb9_9.tint_symbol_6[14u].www);
  r5 = vec4<f32>(v_66.xyz, r5.w);
  let v_67 = (r2.xyz * cb9_9.tint_symbol_6[14u].xxy);
  r6 = vec4<f32>(v_67.xyz, r6.w);
  r6.w = 1.0f;
  r7.x = r3.x;
  r7.y = r4.x;
  r7.z = r5.x;
  r7.w = cb1_1.tint_symbol_1[3u].x;
  r8.x = dot(r6, r7);
  r9.x = r3.y;
  r9.y = r4.y;
  r9.z = r5.y;
  r9.w = cb1_1.tint_symbol_1[3u].y;
  r8.y = dot(r6, r9);
  r10.x = r3.z;
  r10.y = r4.z;
  r10.z = r5.z;
  r10.w = cb1_1.tint_symbol_1[3u].z;
  r8.z = dot(r6, r10);
  let v_68 = -(cb9_9.tint_symbol_6[0u].xyzx);
  let v_69 = (r8.xyz + v_68.xyz);
  r6 = vec4<f32>(v_69.xyz, r6.w);
  r0.x = dot(r6.xyz, r6.xyz);
  r1.w = ((-(r0.xxxx)).w + 0.5625f);
  r1.w = (r1.w * 1.77777779102325439453f);
  r1.w = max(r1.w, 0.0f);
  r0.x = inverseSqrt(r0.x);
  let v_70 = (r0.xx * r6.xy);
  r6 = vec4<f32>(v_70.xy, r6.zw);
  let v_71 = (r1.ww * r6.xy);
  r6 = vec4<f32>(v_71.xy, r6.zw);
  let v_72 = fma(r6.xy, v4.xx, r8.xy);
  r8 = vec4<f32>(v_72.xy, r8.zw);
  let v_73 = -(cb1_1.tint_symbol_1[3u].xyzx);
  let v_74 = (r8.xyz + v_73.xyz);
  r6 = vec4<f32>(v_74.xyz, r6.w);
  let v_75 = (r6.xyz * cb9_9.tint_symbol_6[14u].zzw);
  r6 = vec4<f32>(v_75.xyz, r6.w);
  r8.x = dot(r6.xyz, r3.xyz);
  r8.y = dot(r6.xyz, r4.xyz);
  r8.z = dot(r6.xyz, r5.xyz);
  let v_76 = bitcast<vec3<u32>>(cb8_8.tint_symbol_5[0u].xxx);
  let v_77 = r8.xyz;
  let v_78 = select(r2.xyz, v_77, (v_76 != vec3<u32>()));
  r2 = vec4<f32>(v_78.xyz, r2.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].y) != 0u)) {
    let v_79 = (r2.xyz * cb9_9.tint_symbol_6[14u].xxy);
    r6 = vec4<f32>(v_79.xyz, r6.w);
    r6.w = 1.0f;
    r7.x = dot(r6, r7);
    r7.y = dot(r6, r9);
    r0.x = dot(r6, r10);
    let v_80 = -(cb9_9.tint_symbol_6[1u].xyxx);
    let v_81 = (r7.xy + v_80.xy);
    r6 = vec4<f32>(v_81.xy, r6.zw);
    r1.w = dot(cb9_9.tint_symbol_6[2u].xy, r6.xy);
    r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[2u].wwww)).w, 0.0f, 1.0f);
    let v_82 = fma(r1.ww, cb9_9.tint_symbol_6[2u].xy, cb9_9.tint_symbol_6[1u].xy);
    r6 = vec4<f32>(v_82.xy, r6.zw);
    let v_83 = ((-(r6.xyxx)).xy + r7.xy);
    r6 = vec4<f32>(v_83.xy, r6.zw);
    r1.w = dot(r6.xy, r6.xy);
    r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_6[3u].y);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_6[3u].zzzz)).w, 0.0f, 1.0f);
    r3.w = (r2.w * cb9_9.tint_symbol_6[3u].x);
    r4.w = inverseSqrt(r1.w);
    let v_84 = (r4.ww * r6.xy);
    r6 = vec4<f32>(v_84.xy, r6.zw);
    let v_85 = (r3.ww * r6.xy);
    r6 = vec4<f32>(v_85.xy, r6.zw);
    let v_86 = fma(r6.xy, v4.xx, r7.xy);
    r6 = vec4<f32>(v_86.xy, r6.zw);
    r3.w = ((-(r0.xxxx)).w + cb9_9.tint_symbol_6[3u].w);
    r0.x = fma(r2.w, r3.w, r0.x);
    r2.w = (cb9_9.tint_symbol_6[3u].x * 0.5f);
    r2.w = (r2.w * r2.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
    r2.w = (cb9_9.tint_symbol_6[3u].w + -0.25f);
    let v_87 = bitcast<u32>(r1.w);
    let v_88 = r2.w;
    r6.z = select(r0.x, v_88, (v_87 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].z) != 0u)) {
      let v_89 = -(cb9_9.tint_symbol_6[4u].xyxx);
      let v_90 = (r6.xy + v_89.xy);
      r7 = vec4<f32>(v_90.xy, r7.zw);
      r0.x = dot(cb9_9.tint_symbol_6[5u].xy, r7.xy);
      r0.x = clamp(((r0.xxxx * cb9_9.tint_symbol_6[5u].wwww)).x, 0.0f, 1.0f);
      let v_91 = fma(r0.xx, cb9_9.tint_symbol_6[5u].xy, cb9_9.tint_symbol_6[4u].xy);
      r7 = vec4<f32>(v_91.xy, r7.zw);
      let v_92 = -(r7.xyxx);
      let v_93 = (r6.xy + v_92.xy);
      r7 = vec4<f32>(v_93.xy, r7.zw);
      r0.x = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.xxxx)).w + cb9_9.tint_symbol_6[6u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[6u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[6u].x);
      r3.w = inverseSqrt(r0.x);
      let v_94 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_94.xy, r7.zw);
      let v_95 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_95.xy, r7.zw);
      let v_96 = fma(r7.xy, v4.xx, r6.xy);
      r6 = vec4<f32>(v_96.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_6[6u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_6[6u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[6u].w + -0.25f);
      let v_97 = bitcast<u32>(r0.x);
      let v_98 = r2.w;
      r6.z = select(r1.w, v_98, (v_97 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].w) != 0u)) {
      let v_99 = -(cb9_9.tint_symbol_6[7u].xyxx);
      let v_100 = (r6.xy + v_99.xy);
      r7 = vec4<f32>(v_100.xy, r7.zw);
      r0.x = dot(cb9_9.tint_symbol_6[8u].xy, r7.xy);
      r0.x = clamp(((r0.xxxx * cb9_9.tint_symbol_6[8u].wwww)).x, 0.0f, 1.0f);
      let v_101 = fma(r0.xx, cb9_9.tint_symbol_6[8u].xy, cb9_9.tint_symbol_6[7u].xy);
      r7 = vec4<f32>(v_101.xy, r7.zw);
      let v_102 = -(r7.xyxx);
      let v_103 = (r6.xy + v_102.xy);
      r7 = vec4<f32>(v_103.xy, r7.zw);
      r0.x = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.xxxx)).w + cb9_9.tint_symbol_6[9u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[9u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[9u].x);
      r3.w = inverseSqrt(r0.x);
      let v_104 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_104.xy, r7.zw);
      let v_105 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_105.xy, r7.zw);
      let v_106 = fma(r7.xy, v4.xx, r6.xy);
      r6 = vec4<f32>(v_106.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_6[9u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_6[9u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[9u].w + -0.25f);
      let v_107 = bitcast<u32>(r0.x);
      let v_108 = r2.w;
      r6.z = select(r1.w, v_108, (v_107 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[1u].x) != 0u)) {
      let v_109 = -(cb9_9.tint_symbol_6[10u].xyxx);
      let v_110 = (r6.xy + v_109.xy);
      r7 = vec4<f32>(v_110.xy, r7.zw);
      r0.x = dot(cb9_9.tint_symbol_6[11u].xy, r7.xy);
      r0.x = clamp(((r0.xxxx * cb9_9.tint_symbol_6[11u].wwww)).x, 0.0f, 1.0f);
      let v_111 = fma(r0.xx, cb9_9.tint_symbol_6[11u].xy, cb9_9.tint_symbol_6[10u].xy);
      r7 = vec4<f32>(v_111.xy, r7.zw);
      let v_112 = -(r7.xyxx);
      let v_113 = (r6.xy + v_112.xy);
      r7 = vec4<f32>(v_113.xy, r7.zw);
      r0.x = dot(r7.xy, r7.xy);
      r1.w = ((-(r0.xxxx)).w + cb9_9.tint_symbol_6[12u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[12u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[12u].x);
      r3.w = inverseSqrt(r0.x);
      let v_114 = (r3.ww * r7.xy);
      r7 = vec4<f32>(v_114.xy, r7.zw);
      let v_115 = (r2.ww * r7.xy);
      r7 = vec4<f32>(v_115.xy, r7.zw);
      let v_116 = fma(r7.xy, v4.xx, r6.xy);
      r6 = vec4<f32>(v_116.xy, r6.zw);
      r2.w = ((-(r6.zzzz)).w + cb9_9.tint_symbol_6[12u].w);
      r1.w = fma(r1.w, r2.w, r6.z);
      r2.w = (cb9_9.tint_symbol_6[12u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[12u].w + -0.25f);
      let v_117 = bitcast<u32>(r0.x);
      let v_118 = r2.w;
      r6.z = select(r1.w, v_118, (v_117 != 0u));
    }
    let v_119 = (r6.xyz + v_73.xyz);
    r6 = vec4<f32>(v_119.xyz, r6.w);
    let v_120 = (r6.xyz * cb9_9.tint_symbol_6[14u].zzw);
    r6 = vec4<f32>(v_120.xyz, r6.w);
    r2.x = dot(r6.xyz, r3.xyz);
    r2.y = dot(r6.xyz, r4.xyz);
    r2.z = dot(r6.xyz, r5.xyz);
  }
  r3 = (r2.yyyy * cb1_1.tint_symbol_1[9u]);
  r3 = fma(r2.xxxx, cb1_1.tint_symbol_1[8u], r3);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol_1[10u], r3);
  o0 = (r2 + cb1_1.tint_symbol_1[11u]);
  r2.x = v5.z;
  r2.y = cb13_13.tint_symbol_3[0u].x;
  o1 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
  let v_121 = (v4.xyz * cb11_11.tint_symbol_4[12u].xyz);
  r2 = vec4<f32>(v_121.xyz, r2.w);
  r0.x = max(v4.z, v4.x);
  r1.w = fma((-(cb11_11.tint_symbol_4[4u].zzzz)).w, cb12_12.tint_symbol_7[2u].z, 1.0f);
  r0.x = fma((-(r0.xxxx)).x, r1.w, 1.0f);
  let v_122 = -(cb11_11.tint_symbol_4[13u].zzzz);
  r0.x = fma(r0.x, cb11_11.tint_symbol_4[13u].x, v_122.x);
  r1.w = (v_122.w + 1.0f);
  r0.x = clamp(((r0.xxxx / r1.wwww)).x, 0.0f, 1.0f);
  r1.w = ((-(r0.xxxx)).w + 1.0f);
  let v_123 = fma(r1.www, r2.xyz, r0.xxx);
  r2 = vec4<f32>(v_123.xyz, r2.w);
  r0.x = ((-(cb11_11.tint_symbol_4[14u].wwww)).x + 1.0f);
  let v_124 = (cb11_11.tint_symbol_4[14u].www * cb11_11.tint_symbol_4[14u].xyz);
  r3 = vec4<f32>(v_124.xyz, r3.w);
  let v_125 = fma(r0.xxx, r2.xyz, r3.xyz);
  o6 = vec4<f32>(v_125.xyz, o6.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[12u].w)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_4[12u].w < 0.0f)));
  let v_126 = -(bitcast<vec4<i32>>(r0.xxxx));
  r0.x = bitcast<f32>((bitcast<i32>(r1.w) + v_126.x));
  o6.w = f32(bitcast<i32>(r0.x));
  o2 = vec4<f32>(v6.xy, o2.zw);
  o2.z = v4.w;
  o2.w = cb12_12.tint_symbol_7[4u].y;
  o3 = r0.yzw.xyzx;
  o4 = r1.xyz.xyzx;
}

struct tint_symbol_8 {
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
  @location(6u)
  o6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec2<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, v6, v7);
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6);
}
