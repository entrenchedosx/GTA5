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

struct cb3_struct {
  tint_symbol_7 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(19u) var s3 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

@group(0u) @binding(35u) var t3 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec3<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec2<f32>) {
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
  r1.x = dot(r2.xyz, v3);
  r0.x = dot(r0.xyz, v3);
  let v_2 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + vec3<f32>(-0.0f, -0.0f, -1.0f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(cb12_12.tint_symbol_7[2u].xxx, r0.xyz, vec3<f32>(-0.0f, -0.0f, 1.0f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  o3 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f)).xyzx;
  r0.x = dot(cb11_11.tint_symbol_4[5u].xyz, r4.xyz);
  r0.x = clamp(((r0.xxxx + cb11_11.tint_symbol_4[5u].wwww)).x, -0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (-0.0f < r0.x)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0.y = clamp(((cb11_11.tint_symbol_4[4u].zzzz * cb12_12.tint_symbol_7[0u].zzzz)).y, -0.0f, 1.0f);
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    r1.x = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[1u].w);
    r1.y = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[2u].w);
    let v_7 = (r1.xy + v4.yy);
    r0 = vec4<f32>(r0.xy, v_7.xy);
    let v_8 = (r0.zw + cb11_11.tint_symbol_4[3u].ww);
    r0 = vec4<f32>(r0.xy, v_8.xy);
    let v_9 = fract(r0.zw);
    r0 = vec4<f32>(r0.xy, v_9.xy);
    let v_10 = (r0.zw + vec2<f32>(-0.5f));
    r0 = vec4<f32>(r0.xy, v_10.xy);
    let v_11 = fma((-(abs(r0.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r0 = vec4<f32>(r0.xy, v_11.xy);
    let v_12 = (r0.zw * r0.zw);
    r1 = vec4<f32>(v_12.xy, r1.zw);
    let v_13 = fma((-(r0.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r0 = vec4<f32>(r0.xy, v_13.xy);
    let v_14 = (r0.zw * r1.xy);
    r0 = vec4<f32>(r0.xy, v_14.xy);
    let v_15 = fma(r0.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(r0.xy, v_15.xy);
    let v_16 = ((-(r0.wzww)).xy + vec2<f32>(1.0f));
    r1 = vec4<f32>(v_16.xy, r1.zw);
    r1.z = (r1.x * r1.y);
    let v_17 = (r0.zw * r1.xy);
    r1 = vec4<f32>(v_17.xy, r1.zw);
    r0.z = (r0.w * r0.z);
    let v_18 = (r1.xxx * cb11_11.tint_symbol_4[1u].xyz);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = fma(r1.zzz, cb11_11.tint_symbol_4[0u].xyz, r2.xyz);
    r1 = vec4<f32>(v_19.x, r1.y, v_19.yz);
    let v_20 = fma(r1.yyy, cb11_11.tint_symbol_4[2u].xyz, r1.xzw);
    r1 = vec4<f32>(v_20.xyz, r1.w);
    let v_21 = fma(r0.zzz, cb11_11.tint_symbol_4[3u].xyz, r1.xyz);
    r1 = vec4<f32>(v_21.xyz, r1.w);
    r0.z = ((-(cb11_11.tint_symbol_4[11u].zzzz)).z + 1.0f);
    let v_22 = (r1.xyz * cb11_11.tint_symbol_4[11u].zzz);
    r1 = vec4<f32>(v_22.xyz, r1.w);
    let v_23 = fma(r0.zzz, cb11_11.tint_symbol_4[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_23.xyz, r1.w);
    let v_24 = fma(cb11_11.tint_symbol_4[8u].xyz, cb2_2.tint_symbol_2[16u].xxx, v4.yyy);
    r2 = vec4<f32>(v_24.xyz, r2.w);
    let v_25 = (r2.xyz + cb11_11.tint_symbol_4[3u].www);
    r2 = vec4<f32>(v_25.xyz, r2.w);
    let v_26 = fract(r2.xyz);
    r2 = vec4<f32>(v_26.xyz, r2.w);
    let v_27 = (r2.xyz + vec3<f32>(-0.5f));
    r2 = vec4<f32>(v_27.xyz, r2.w);
    let v_28 = fma((-(abs(r2.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
    r2 = vec4<f32>(v_28.xyz, r2.w);
    let v_29 = (r2.xyz * r2.xyz);
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = fma((-(r2.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
    r2 = vec4<f32>(v_30.xyz, r2.w);
    let v_31 = (r2.xyz * r3.xyz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    r0.z = (r2.x + r2.x);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (-0.0f < cb11_11.tint_symbol_4[6u].w)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_32 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
      r2 = vec4<f32>(v_32.xyz, r2.w);
      let v_33 = fma(r2.xyz, cb11_11.tint_symbol_4[8u].www, r4.xyz);
      r2 = vec4<f32>(v_33.xyz, r2.w);
      let v_34 = -(cb11_11.tint_symbol_4[6u].xyzx);
      let v_35 = (r2.xyz + v_34.xyz);
      r2 = vec4<f32>(v_35.xyz, r2.w);
      let v_36 = (r2.xyz * cb11_11.tint_symbol_4[7u].xyz);
      r2 = vec4<f32>(v_36.xyz, r2.w);
      r2 = textureSampleLevel(t3, s3, r2.xyzx.xyz, -0.0f);
    } else {
      r2 = vec4<f32>(vec3<f32>(), r2.w);
    }
    r0.w = ((-(cb11_11.tint_symbol_4[9u].xxxx)).w + 1.0f);
    r0.z = (r0.z * cb11_11.tint_symbol_4[9u].x);
    r0.z = fma(r0.z, 0.5f, r0.w);
    let v_37 = (r2.xyz * r0.zzz);
    r2 = vec4<f32>(v_37.xyz, r2.w);
    let v_38 = (r2.xyz * cb11_11.tint_symbol_4[11u].yyy);
    r2 = vec4<f32>(v_38.xyz, r2.w);
    let v_39 = fma(cb11_11.tint_symbol_4[11u].xxx, r1.xyz, r2.xyz);
    r1 = vec4<f32>(v_39.xyz, r1.w);
    r0.z = max(v4.z, v4.x);
    let v_40 = (r1.xyz * r0.zzz);
    r1 = vec4<f32>(v_40.xyz, r1.w);
    let v_41 = (r0.yyy * r1.xyz);
    r1 = vec4<f32>(v_41.xyz, r1.w);
    r2.x = dot(cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
    r2.y = dot(cb1_1.tint_symbol_1[1u].xyz, r1.xyz);
    r2.z = dot(cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
    let v_42 = (r2.xyz * cb11_11.tint_symbol_4[10u].yyy);
    r1 = vec4<f32>(v_42.xyz, r1.w);
    r0.z = dot(r4.xyz, r4.xyz);
    let v_43 = (abs(r1.xyzx).xyz + vec3<f32>(0.00100000004749745131f, -0.0f, -0.0f));
    r2 = vec4<f32>(v_43.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    let v_44 = sqrt(r0.zw);
    r0 = vec4<f32>(r0.xy, v_44.xy);
    let v_45 = (r0.yy * cb11_11.tint_symbol_4[4u].xy);
    r2 = vec4<f32>(v_45.xy, r2.zw);
    r0.y = fma((-(cb11_11.tint_symbol_4[4u].xxxx)).y, r0.y, r0.w);
    r0.y = max(r0.y, -0.0f);
    r0.y = (r0.y / r2.y);
    r0.y = (r0.y * -1.44269502162933349609f);
    r0.y = exp2(r0.y);
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    r0.y = fma(r2.y, r0.y, r2.x);
    r0.y = (r0.y / r0.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.x >= r0.w)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
    r1.w = ((-(r0.yyyy)).w + 1.0f);
    r0.y = fma(r1.w, r0.w, r0.y);
    let v_46 = fma(r1.xyz, r0.yyy, r4.xyz);
    r1 = vec4<f32>(v_46.xyz, r1.w);
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.y = (r0.z / r0.y);
    let v_47 = (r0.yyy * r1.xyz);
    r0 = vec4<f32>(r0.x, v_47.xyz);
  } else {
    let v_48 = r4;
    r0 = vec4<f32>(r0.x, v_48.xyz);
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  let v_49 = (v4.xxz * cb12_12.tint_symbol_7[0u].xxy);
  r1 = vec4<f32>(r1.x, v_49.xyz);
  let v_50 = (r1.yzw * cb9_9.tint_symbol_6[13u].xxy);
  r1 = vec4<f32>(r1.x, v_50.xyz);
  r2.x = (v4.y + cb9_9.tint_symbol_6[0u].w);
  r2.x = (abs(r2.xxxx).x * 6.28318500518798828125f);
  let v_51 = (cb9_9.tint_symbol_6[13u].zzw * cb12_12.tint_symbol_7[0u].zzw);
  r2 = vec4<f32>(r2.x, v_51.xyz);
  let v_52 = fma(cb2_2.tint_symbol_2[16u].xxx, r2.yzw, r2.xxx);
  r2 = vec4<f32>(v_52.xyz, r2.w);
  let v_53 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = fma(r2.xyz, r1.yzw, r4.xyz);
  r1 = vec4<f32>(r1.x, v_54.xyz);
  let v_55 = bitcast<vec3<u32>>(r1.xxx);
  let v_56 = r1.yzw;
  let v_57 = select(r4.xyz, v_56, (v_55 != vec3<u32>()));
  r1 = vec4<f32>(v_57.xyz, r1.w);
  r1.w = ((-(r0.xxxx)).w + 1.0f);
  let v_58 = (r0.yzw * r0.xxx);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = (cb1_1.tint_symbol_1[0u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = (cb1_1.tint_symbol_1[1u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r2 = vec4<f32>(v_61.xyz, r2.w);
  let v_62 = (cb1_1.tint_symbol_1[2u].xyz * cb9_9.tint_symbol_6[14u].www);
  r3 = vec4<f32>(v_62.xyz, r3.w);
  let v_63 = (r0.xyz * cb9_9.tint_symbol_6[14u].xxy);
  r4 = vec4<f32>(v_63.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = r1.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = cb1_1.tint_symbol_1[3u].x;
  r6.x = dot(r4, r5);
  r7.x = r1.y;
  r7.y = r2.y;
  r7.z = r3.y;
  r7.w = cb1_1.tint_symbol_1[3u].y;
  r6.y = dot(r4, r7);
  r8.x = r1.z;
  r8.y = r2.z;
  r8.z = r3.z;
  r8.w = cb1_1.tint_symbol_1[3u].z;
  r6.z = dot(r4, r8);
  let v_64 = -(cb9_9.tint_symbol_6[0u].xyzx);
  let v_65 = (r6.xyz + v_64.xyz);
  r4 = vec4<f32>(v_65.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.w = ((-(r0.wwww)).w + 0.5625f);
  r1.w = (r1.w * 1.77777779102325439453f);
  r1.w = max(r1.w, -0.0f);
  r0.w = inverseSqrt(r0.w);
  let v_66 = (r0.ww * r4.xy);
  r4 = vec4<f32>(v_66.xy, r4.zw);
  let v_67 = (r1.ww * r4.xy);
  r4 = vec4<f32>(v_67.xy, r4.zw);
  let v_68 = fma(r4.xy, v4.xx, r6.xy);
  r6 = vec4<f32>(v_68.xy, r6.zw);
  let v_69 = -(cb1_1.tint_symbol_1[3u].xyzx);
  let v_70 = (r6.xyz + v_69.xyz);
  r4 = vec4<f32>(v_70.xyz, r4.w);
  let v_71 = (r4.xyz * cb9_9.tint_symbol_6[14u].zzw);
  r4 = vec4<f32>(v_71.xyz, r4.w);
  r6.x = dot(r4.xyz, r1.xyz);
  r6.y = dot(r4.xyz, r2.xyz);
  r6.z = dot(r4.xyz, r3.xyz);
  let v_72 = bitcast<vec3<u32>>(cb8_8.tint_symbol_5[0u].xxx);
  let v_73 = r6.xyz;
  let v_74 = select(r0.xyz, v_73, (v_72 != vec3<u32>()));
  r0 = vec4<f32>(v_74.xyz, r0.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].y) != 0u)) {
    let v_75 = (r0.xyz * cb9_9.tint_symbol_6[14u].xxy);
    r4 = vec4<f32>(v_75.xyz, r4.w);
    r4.w = 1.0f;
    r5.x = dot(r4, r5);
    r5.y = dot(r4, r7);
    r0.w = dot(r4, r8);
    let v_76 = -(cb9_9.tint_symbol_6[1u].xyxx);
    let v_77 = (r5.xy + v_76.xy);
    r4 = vec4<f32>(v_77.xy, r4.zw);
    r1.w = dot(cb9_9.tint_symbol_6[2u].xy, r4.xy);
    r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[2u].wwww)).w, -0.0f, 1.0f);
    let v_78 = fma(r1.ww, cb9_9.tint_symbol_6[2u].xy, cb9_9.tint_symbol_6[1u].xy);
    r4 = vec4<f32>(v_78.xy, r4.zw);
    let v_79 = ((-(r4.xyxx)).xy + r5.xy);
    r4 = vec4<f32>(v_79.xy, r4.zw);
    r1.w = dot(r4.xy, r4.xy);
    r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_6[3u].y);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_6[3u].zzzz)).w, -0.0f, 1.0f);
    r3.w = (r2.w * cb9_9.tint_symbol_6[3u].x);
    r4.z = inverseSqrt(r1.w);
    let v_80 = (r4.zz * r4.xy);
    r4 = vec4<f32>(v_80.xy, r4.zw);
    let v_81 = (r3.ww * r4.xy);
    r4 = vec4<f32>(v_81.xy, r4.zw);
    let v_82 = fma(r4.xy, v4.xx, r5.xy);
    r4 = vec4<f32>(v_82.xy, r4.zw);
    r3.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[3u].w);
    r0.w = fma(r2.w, r3.w, r0.w);
    r2.w = (cb9_9.tint_symbol_6[3u].x * 0.5f);
    r2.w = (r2.w * r2.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
    r2.w = (cb9_9.tint_symbol_6[3u].w + -0.25f);
    let v_83 = bitcast<u32>(r1.w);
    let v_84 = r2.w;
    r4.z = select(r0.w, v_84, (v_83 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].z) != 0u)) {
      let v_85 = -(cb9_9.tint_symbol_6[4u].xyxx);
      let v_86 = (r4.xy + v_85.xy);
      r5 = vec4<f32>(v_86.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[5u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[5u].wwww)).w, -0.0f, 1.0f);
      let v_87 = fma(r0.ww, cb9_9.tint_symbol_6[5u].xy, cb9_9.tint_symbol_6[4u].xy);
      r5 = vec4<f32>(v_87.xy, r5.zw);
      let v_88 = -(r5.xyxx);
      let v_89 = (r4.xy + v_88.xy);
      r5 = vec4<f32>(v_89.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[6u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[6u].zzzz)).w, -0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[6u].x);
      r3.w = inverseSqrt(r0.w);
      let v_90 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_90.xy, r5.zw);
      let v_91 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_91.xy, r5.zw);
      let v_92 = fma(r5.xy, v4.xx, r4.xy);
      r4 = vec4<f32>(v_92.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[6u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[6u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[6u].w + -0.25f);
      let v_93 = bitcast<u32>(r0.w);
      let v_94 = r2.w;
      r4.z = select(r1.w, v_94, (v_93 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].w) != 0u)) {
      let v_95 = -(cb9_9.tint_symbol_6[7u].xyxx);
      let v_96 = (r4.xy + v_95.xy);
      r5 = vec4<f32>(v_96.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[8u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[8u].wwww)).w, -0.0f, 1.0f);
      let v_97 = fma(r0.ww, cb9_9.tint_symbol_6[8u].xy, cb9_9.tint_symbol_6[7u].xy);
      r5 = vec4<f32>(v_97.xy, r5.zw);
      let v_98 = -(r5.xyxx);
      let v_99 = (r4.xy + v_98.xy);
      r5 = vec4<f32>(v_99.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[9u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[9u].zzzz)).w, -0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[9u].x);
      r3.w = inverseSqrt(r0.w);
      let v_100 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_100.xy, r5.zw);
      let v_101 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_101.xy, r5.zw);
      let v_102 = fma(r5.xy, v4.xx, r4.xy);
      r4 = vec4<f32>(v_102.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[9u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[9u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[9u].w + -0.25f);
      let v_103 = bitcast<u32>(r0.w);
      let v_104 = r2.w;
      r4.z = select(r1.w, v_104, (v_103 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[1u].x) != 0u)) {
      let v_105 = -(cb9_9.tint_symbol_6[10u].xyxx);
      let v_106 = (r4.xy + v_105.xy);
      r5 = vec4<f32>(v_106.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[11u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[11u].wwww)).w, -0.0f, 1.0f);
      let v_107 = fma(r0.ww, cb9_9.tint_symbol_6[11u].xy, cb9_9.tint_symbol_6[10u].xy);
      r5 = vec4<f32>(v_107.xy, r5.zw);
      let v_108 = -(r5.xyxx);
      let v_109 = (r4.xy + v_108.xy);
      r5 = vec4<f32>(v_109.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[12u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[12u].zzzz)).w, -0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[12u].x);
      r3.w = inverseSqrt(r0.w);
      let v_110 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_110.xy, r5.zw);
      let v_111 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_111.xy, r5.zw);
      let v_112 = fma(r5.xy, v4.xx, r4.xy);
      r4 = vec4<f32>(v_112.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[12u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[12u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[12u].w + -0.25f);
      let v_113 = bitcast<u32>(r0.w);
      let v_114 = r2.w;
      r4.z = select(r1.w, v_114, (v_113 != 0u));
    }
    let v_115 = (r4.xyz + v_69.xyz);
    r4 = vec4<f32>(v_115.xyz, r4.w);
    let v_116 = (r4.xyz * cb9_9.tint_symbol_6[14u].zzw);
    r4 = vec4<f32>(v_116.xyz, r4.w);
    r0.x = dot(r4.xyz, r1.xyz);
    r0.y = dot(r4.xyz, r2.xyz);
    r0.z = dot(r4.xyz, r3.xyz);
  }
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r0.x = v5.z;
  r0.y = cb13_13.tint_symbol_3[0u].x;
  o1 = textureSampleLevel(t2, s2, r0.xyxx.xy, -0.0f);
  let v_117 = (v4.xyz * cb11_11.tint_symbol_4[12u].xyz);
  r0 = vec4<f32>(v_117.xyz, r0.w);
  r0.w = max(v4.z, v4.x);
  r1.x = fma((-(cb11_11.tint_symbol_4[4u].zzzz)).x, cb12_12.tint_symbol_7[0u].z, 1.0f);
  r0.w = fma((-(r0.wwww)).w, r1.x, 1.0f);
  let v_118 = -(cb11_11.tint_symbol_4[13u].zzzz);
  r0.w = fma(r0.w, cb11_11.tint_symbol_4[13u].x, v_118.w);
  r1.x = (v_118.x + 1.0f);
  r0.w = clamp(((r0.wwww / r1.xxxx)).w, -0.0f, 1.0f);
  r1.x = ((-(r0.wwww)).x + 1.0f);
  let v_119 = fma(r1.xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_119.xyz, r0.w);
  r0.w = ((-(cb11_11.tint_symbol_4[14u].wwww)).w + 1.0f);
  let v_120 = (cb11_11.tint_symbol_4[14u].www * cb11_11.tint_symbol_4[14u].xyz);
  r1 = vec4<f32>(v_120.xyz, r1.w);
  let v_121 = fma(r0.www, r0.xyz, r1.xyz);
  o4 = vec4<f32>(v_121.xyz, o4.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (-0.0f < cb11_11.tint_symbol_4[12u].w)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_4[12u].w < -0.0f)));
  let v_122 = -(bitcast<vec4<i32>>(r0.xxxx));
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) + v_122.x));
  o4.w = f32(bitcast<i32>(r0.x));
  o2 = vec4<f32>(v6.xy, o2.zw);
  o2.z = v4.w;
  o2.w = cb12_12.tint_symbol_7[2u].y;
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec2<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_8(o0, o1, o2, o3, o4);
}
