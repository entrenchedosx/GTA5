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

struct cb1_struct_1 {
  tint_symbol_7 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct_1;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>) {
  r0.x = dot(cb11_11.tint_symbol_4[5u].xyz, v0);
  r0.x = clamp(((r0.xxxx + cb11_11.tint_symbol_4[5u].wwww)).x, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0.y = clamp(((cb11_11.tint_symbol_4[4u].zzzz * cb12_12.tint_symbol_7[0u].zzzz)).y, 0.0f, 1.0f);
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    r1.x = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[1u].w);
    r1.y = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_4[2u].w);
    let v_1 = (r1.xy + v1.yy);
    r0 = vec4<f32>(r0.xy, v_1.xy);
    let v_2 = (r0.zw + cb11_11.tint_symbol_4[3u].ww);
    r0 = vec4<f32>(r0.xy, v_2.xy);
    let v_3 = fract(r0.zw);
    r0 = vec4<f32>(r0.xy, v_3.xy);
    let v_4 = (r0.zw + vec2<f32>(-0.5f));
    r0 = vec4<f32>(r0.xy, v_4.xy);
    let v_5 = fma((-(abs(r0.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r0 = vec4<f32>(r0.xy, v_5.xy);
    let v_6 = (r0.zw * r0.zw);
    r1 = vec4<f32>(v_6.xy, r1.zw);
    let v_7 = fma((-(r0.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r0 = vec4<f32>(r0.xy, v_7.xy);
    let v_8 = (r0.zw * r1.xy);
    r0 = vec4<f32>(r0.xy, v_8.xy);
    let v_9 = fma(r0.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(r0.xy, v_9.xy);
    let v_10 = ((-(r0.wzww)).xy + vec2<f32>(1.0f));
    r1 = vec4<f32>(v_10.xy, r1.zw);
    r1.z = (r1.x * r1.y);
    let v_11 = (r0.zw * r1.xy);
    r1 = vec4<f32>(v_11.xy, r1.zw);
    r0.z = (r0.w * r0.z);
    let v_12 = (r1.xxx * cb11_11.tint_symbol_4[1u].xyz);
    r2 = vec4<f32>(v_12.xyz, r2.w);
    let v_13 = fma(r1.zzz, cb11_11.tint_symbol_4[0u].xyz, r2.xyz);
    r1 = vec4<f32>(v_13.x, r1.y, v_13.yz);
    let v_14 = fma(r1.yyy, cb11_11.tint_symbol_4[2u].xyz, r1.xzw);
    r1 = vec4<f32>(v_14.xyz, r1.w);
    let v_15 = fma(r0.zzz, cb11_11.tint_symbol_4[3u].xyz, r1.xyz);
    r1 = vec4<f32>(v_15.xyz, r1.w);
    r0.z = ((-(cb11_11.tint_symbol_4[11u].zzzz)).z + 1.0f);
    let v_16 = (r1.xyz * cb11_11.tint_symbol_4[11u].zzz);
    r1 = vec4<f32>(v_16.xyz, r1.w);
    let v_17 = fma(r0.zzz, cb11_11.tint_symbol_4[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_17.xyz, r1.w);
    let v_18 = fma(cb11_11.tint_symbol_4[8u].xyz, cb2_2.tint_symbol_2[16u].xxx, v1.yyy);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = (r2.xyz + cb11_11.tint_symbol_4[3u].www);
    r2 = vec4<f32>(v_19.xyz, r2.w);
    let v_20 = fract(r2.xyz);
    r2 = vec4<f32>(v_20.xyz, r2.w);
    let v_21 = (r2.xyz + vec3<f32>(-0.5f));
    r2 = vec4<f32>(v_21.xyz, r2.w);
    let v_22 = fma((-(abs(r2.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
    r2 = vec4<f32>(v_22.xyz, r2.w);
    let v_23 = (r2.xyz * r2.xyz);
    r3 = vec4<f32>(v_23.xyz, r3.w);
    let v_24 = fma((-(r2.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
    r2 = vec4<f32>(v_24.xyz, r2.w);
    let v_25 = (r2.xyz * r3.xyz);
    r2 = vec4<f32>(v_25.xyz, r2.w);
    r0.z = (r2.x + r2.x);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[6u].w)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_26 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
      r2 = vec4<f32>(v_26.xyz, r2.w);
      let v_27 = fma(r2.xyz, cb11_11.tint_symbol_4[8u].www, v0);
      r2 = vec4<f32>(v_27.xyz, r2.w);
      let v_28 = -(cb11_11.tint_symbol_4[6u].xyzx);
      let v_29 = (r2.xyz + v_28.xyz);
      r2 = vec4<f32>(v_29.xyz, r2.w);
      let v_30 = (r2.xyz * cb11_11.tint_symbol_4[7u].xyz);
      r2 = vec4<f32>(v_30.xyz, r2.w);
      r2 = textureSampleLevel(t2, s2, r2.xyzx.xyz, 0.0f);
    } else {
      r2 = vec4<f32>(vec3<f32>(), r2.w);
    }
    r0.w = ((-(cb11_11.tint_symbol_4[9u].xxxx)).w + 1.0f);
    r0.z = (r0.z * cb11_11.tint_symbol_4[9u].x);
    r0.z = fma(r0.z, 0.5f, r0.w);
    let v_31 = (r2.xyz * r0.zzz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = (r2.xyz * cb11_11.tint_symbol_4[11u].yyy);
    r2 = vec4<f32>(v_32.xyz, r2.w);
    let v_33 = fma(cb11_11.tint_symbol_4[11u].xxx, r1.xyz, r2.xyz);
    r1 = vec4<f32>(v_33.xyz, r1.w);
    r0.z = max(v1.z, v1.x);
    let v_34 = (r1.xyz * r0.zzz);
    r1 = vec4<f32>(v_34.xyz, r1.w);
    let v_35 = (r0.yyy * r1.xyz);
    r1 = vec4<f32>(v_35.xyz, r1.w);
    r2.x = dot(cb1_1.tint_symbol[0u].xyz, r1.xyz);
    r2.y = dot(cb1_1.tint_symbol[1u].xyz, r1.xyz);
    r2.z = dot(cb1_1.tint_symbol[2u].xyz, r1.xyz);
    let v_36 = (r2.xyz * cb11_11.tint_symbol_4[10u].yyy);
    r1 = vec4<f32>(v_36.xyz, r1.w);
    r0.z = dot(v0, v0);
    let v_37 = (abs(r1.xyzx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
    r2 = vec4<f32>(v_37.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    let v_38 = sqrt(r0.zw);
    r0 = vec4<f32>(r0.xy, v_38.xy);
    let v_39 = (r0.yy * cb11_11.tint_symbol_4[4u].xy);
    r2 = vec4<f32>(v_39.xy, r2.zw);
    r0.y = fma((-(cb11_11.tint_symbol_4[4u].xxxx)).y, r0.y, r0.w);
    r0.y = max(r0.y, 0.0f);
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
    let v_40 = fma(r1.xyz, r0.yyy, v0);
    r1 = vec4<f32>(v_40.xyz, r1.w);
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.y = (r0.z / r0.y);
    let v_41 = (r0.yyy * r1.xyz);
    r0 = vec4<f32>(r0.x, v_41.xyz);
  } else {
    r0 = vec4<f32>(r0.x, v0.xyz);
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  let v_42 = (v1.xxz * cb12_12.tint_symbol_7[0u].xxy);
  r1 = vec4<f32>(r1.x, v_42.xyz);
  let v_43 = (r1.yzw * cb9_9.tint_symbol_6[13u].xxy);
  r1 = vec4<f32>(r1.x, v_43.xyz);
  r2.x = (v1.y + cb9_9.tint_symbol_6[0u].w);
  r2.x = (abs(r2.xxxx).x * 6.28318500518798828125f);
  let v_44 = (cb9_9.tint_symbol_6[13u].zzw * cb12_12.tint_symbol_7[0u].zzw);
  r2 = vec4<f32>(r2.x, v_44.xyz);
  let v_45 = fma(cb2_2.tint_symbol_2[16u].xxx, r2.yzw, r2.xxx);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = fma(r2.xyz, r1.yzw, v0);
  r1 = vec4<f32>(r1.x, v_47.xyz);
  let v_48 = bitcast<vec3<u32>>(r1.xxx);
  let v_49 = select(v0, r1.yzw, (v_48 != vec3<u32>()));
  r1 = vec4<f32>(v_49.xyz, r1.w);
  r1.w = ((-(r0.xxxx)).w + 1.0f);
  let v_50 = (r0.yzw * r0.xxx);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  let v_51 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_51.xyz, r0.w);
  let v_52 = (cb1_1.tint_symbol[0u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r1 = vec4<f32>(v_52.xyz, r1.w);
  let v_53 = (cb1_1.tint_symbol[1u].xyz * cb9_9.tint_symbol_6[14u].zzz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = (cb1_1.tint_symbol[2u].xyz * cb9_9.tint_symbol_6[14u].www);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  let v_55 = (r0.xyz * cb9_9.tint_symbol_6[14u].xxy);
  r4 = vec4<f32>(v_55.xyz, r4.w);
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
  let v_56 = -(cb9_9.tint_symbol_6[0u].xyzx);
  let v_57 = (r6.xyz + v_56.xyz);
  r4 = vec4<f32>(v_57.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.w = ((-(r0.wwww)).w + 0.5625f);
  r1.w = (r1.w * 1.77777779102325439453f);
  r1.w = max(r1.w, 0.0f);
  r0.w = inverseSqrt(r0.w);
  let v_58 = (r0.ww * r4.xy);
  r4 = vec4<f32>(v_58.xy, r4.zw);
  let v_59 = (r1.ww * r4.xy);
  r4 = vec4<f32>(v_59.xy, r4.zw);
  let v_60 = fma(r4.xy, v1.xx, r6.xy);
  r6 = vec4<f32>(v_60.xy, r6.zw);
  let v_61 = -(cb1_1.tint_symbol[3u].xyzx);
  let v_62 = (r6.xyz + v_61.xyz);
  r4 = vec4<f32>(v_62.xyz, r4.w);
  let v_63 = (r4.xyz * cb9_9.tint_symbol_6[14u].zzw);
  r4 = vec4<f32>(v_63.xyz, r4.w);
  r6.x = dot(r4.xyz, r1.xyz);
  r6.y = dot(r4.xyz, r2.xyz);
  r6.z = dot(r4.xyz, r3.xyz);
  let v_64 = bitcast<vec3<u32>>(cb8_8.tint_symbol_5[0u].xxx);
  let v_65 = r6.xyz;
  let v_66 = select(r0.xyz, v_65, (v_64 != vec3<u32>()));
  r0 = vec4<f32>(v_66.xyz, r0.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].y) != 0u)) {
    let v_67 = (r0.xyz * cb9_9.tint_symbol_6[14u].xxy);
    r4 = vec4<f32>(v_67.xyz, r4.w);
    r4.w = 1.0f;
    r5.x = dot(r4, r5);
    r5.y = dot(r4, r7);
    r0.w = dot(r4, r8);
    let v_68 = -(cb9_9.tint_symbol_6[1u].xyxx);
    let v_69 = (r5.xy + v_68.xy);
    r4 = vec4<f32>(v_69.xy, r4.zw);
    r1.w = dot(cb9_9.tint_symbol_6[2u].xy, r4.xy);
    r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[2u].wwww)).w, 0.0f, 1.0f);
    let v_70 = fma(r1.ww, cb9_9.tint_symbol_6[2u].xy, cb9_9.tint_symbol_6[1u].xy);
    r4 = vec4<f32>(v_70.xy, r4.zw);
    let v_71 = ((-(r4.xyxx)).xy + r5.xy);
    r4 = vec4<f32>(v_71.xy, r4.zw);
    r1.w = dot(r4.xy, r4.xy);
    r2.w = ((-(r1.wwww)).w + cb9_9.tint_symbol_6[3u].y);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_6[3u].zzzz)).w, 0.0f, 1.0f);
    r3.w = (r2.w * cb9_9.tint_symbol_6[3u].x);
    r4.z = inverseSqrt(r1.w);
    let v_72 = (r4.zz * r4.xy);
    r4 = vec4<f32>(v_72.xy, r4.zw);
    let v_73 = (r3.ww * r4.xy);
    r4 = vec4<f32>(v_73.xy, r4.zw);
    let v_74 = fma(r4.xy, v1.xx, r5.xy);
    r4 = vec4<f32>(v_74.xy, r4.zw);
    r3.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[3u].w);
    r0.w = fma(r2.w, r3.w, r0.w);
    r2.w = (cb9_9.tint_symbol_6[3u].x * 0.5f);
    r2.w = (r2.w * r2.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r2.w)));
    r2.w = (cb9_9.tint_symbol_6[3u].w + -0.25f);
    let v_75 = bitcast<u32>(r1.w);
    let v_76 = r2.w;
    r4.z = select(r0.w, v_76, (v_75 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].z) != 0u)) {
      let v_77 = -(cb9_9.tint_symbol_6[4u].xyxx);
      let v_78 = (r4.xy + v_77.xy);
      r5 = vec4<f32>(v_78.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[5u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[5u].wwww)).w, 0.0f, 1.0f);
      let v_79 = fma(r0.ww, cb9_9.tint_symbol_6[5u].xy, cb9_9.tint_symbol_6[4u].xy);
      r5 = vec4<f32>(v_79.xy, r5.zw);
      let v_80 = -(r5.xyxx);
      let v_81 = (r4.xy + v_80.xy);
      r5 = vec4<f32>(v_81.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[6u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[6u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[6u].x);
      r3.w = inverseSqrt(r0.w);
      let v_82 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_82.xy, r5.zw);
      let v_83 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_83.xy, r5.zw);
      let v_84 = fma(r5.xy, v1.xx, r4.xy);
      r4 = vec4<f32>(v_84.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[6u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[6u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[6u].w + -0.25f);
      let v_85 = bitcast<u32>(r0.w);
      let v_86 = r2.w;
      r4.z = select(r1.w, v_86, (v_85 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[0u].w) != 0u)) {
      let v_87 = -(cb9_9.tint_symbol_6[7u].xyxx);
      let v_88 = (r4.xy + v_87.xy);
      r5 = vec4<f32>(v_88.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[8u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[8u].wwww)).w, 0.0f, 1.0f);
      let v_89 = fma(r0.ww, cb9_9.tint_symbol_6[8u].xy, cb9_9.tint_symbol_6[7u].xy);
      r5 = vec4<f32>(v_89.xy, r5.zw);
      let v_90 = -(r5.xyxx);
      let v_91 = (r4.xy + v_90.xy);
      r5 = vec4<f32>(v_91.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[9u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[9u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[9u].x);
      r3.w = inverseSqrt(r0.w);
      let v_92 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_92.xy, r5.zw);
      let v_93 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_93.xy, r5.zw);
      let v_94 = fma(r5.xy, v1.xx, r4.xy);
      r4 = vec4<f32>(v_94.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[9u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[9u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[9u].w + -0.25f);
      let v_95 = bitcast<u32>(r0.w);
      let v_96 = r2.w;
      r4.z = select(r1.w, v_96, (v_95 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_5[1u].x) != 0u)) {
      let v_97 = -(cb9_9.tint_symbol_6[10u].xyxx);
      let v_98 = (r4.xy + v_97.xy);
      r5 = vec4<f32>(v_98.xy, r5.zw);
      r0.w = dot(cb9_9.tint_symbol_6[11u].xy, r5.xy);
      r0.w = clamp(((r0.wwww * cb9_9.tint_symbol_6[11u].wwww)).w, 0.0f, 1.0f);
      let v_99 = fma(r0.ww, cb9_9.tint_symbol_6[11u].xy, cb9_9.tint_symbol_6[10u].xy);
      r5 = vec4<f32>(v_99.xy, r5.zw);
      let v_100 = -(r5.xyxx);
      let v_101 = (r4.xy + v_100.xy);
      r5 = vec4<f32>(v_101.xy, r5.zw);
      r0.w = dot(r5.xy, r5.xy);
      r1.w = ((-(r0.wwww)).w + cb9_9.tint_symbol_6[12u].y);
      r1.w = clamp(((r1.wwww * cb9_9.tint_symbol_6[12u].zzzz)).w, 0.0f, 1.0f);
      r2.w = (r1.w * cb9_9.tint_symbol_6[12u].x);
      r3.w = inverseSqrt(r0.w);
      let v_102 = (r3.ww * r5.xy);
      r5 = vec4<f32>(v_102.xy, r5.zw);
      let v_103 = (r2.ww * r5.xy);
      r5 = vec4<f32>(v_103.xy, r5.zw);
      let v_104 = fma(r5.xy, v1.xx, r4.xy);
      r4 = vec4<f32>(v_104.xy, r4.zw);
      r2.w = ((-(r4.zzzz)).w + cb9_9.tint_symbol_6[12u].w);
      r1.w = fma(r1.w, r2.w, r4.z);
      r2.w = (cb9_9.tint_symbol_6[12u].x * 0.5f);
      r2.w = (r2.w * r2.w);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r2.w)));
      r2.w = (cb9_9.tint_symbol_6[12u].w + -0.25f);
      let v_105 = bitcast<u32>(r0.w);
      let v_106 = r2.w;
      r4.z = select(r1.w, v_106, (v_105 != 0u));
    }
    let v_107 = (r4.xyz + v_61.xyz);
    r4 = vec4<f32>(v_107.xyz, r4.w);
    let v_108 = (r4.xyz * cb9_9.tint_symbol_6[14u].zzw);
    r4 = vec4<f32>(v_108.xyz, r4.w);
    r0.x = dot(r4.xyz, r1.xyz);
    r0.y = dot(r4.xyz, r2.xyz);
    r0.z = dot(r4.xyz, r3.xyz);
  }
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  let v_109 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_109.xyz, r2.w);
  let v_110 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_110.xy, r0.z, v_110.z);
  let v_111 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_111.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_112 = dot(-(cb3_3.tint_symbol_3[43u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_112, v_112, v_112).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.x) != 0u)) {
        o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
      } else {
        r0 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-3.0f, -4.0f, -5.0f, -9.0f))));
        r2.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -10.0f)));
        r0.w = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r2.x)));
        r2 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r0.wwww) != vec4<u32>()));
        r0.y = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.z)));
        let v_113 = bitcast<vec4<u32>>(r0.yyyy);
        r2 = select(r2, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_113 != vec4<u32>()));
        r3 = vec4<f32>(v1.xyz, r3.w);
        r3.w = 1.0f;
        let v_114 = bitcast<vec4<u32>>(r0.xxxx);
        let v_115 = r3;
        o1 = select(r2, v_115, (v_114 != vec4<u32>()));
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = r1;
  let v_116 = &(x0[0u]);
  *(v_116) = vec4<f32>((*(v_116)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1);
  return tint_symbol_9(o0, o1, o2, o3, v);
}
