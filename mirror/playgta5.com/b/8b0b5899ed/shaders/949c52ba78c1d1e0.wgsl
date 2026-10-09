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

struct cb15_struct {
  tint_symbol_3 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb15_struct;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct;

struct cb15_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb15_struct_1;

struct cb9_struct {
  tint_symbol_6 : array<vec4<f32>, 9u>,
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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec3<f32>, v4 : vec4<f32>, v6 : vec2<f32>, v7 : vec4<f32>) {
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
  r3.x = dot(r1.xyz, v3);
  r3.y = dot(r2.xyz, v3);
  r3.z = dot(r0.xyz, v3);
  r0.w = dot(r1.xyz, v7.xyz);
  r1.x = dot(r2.xyz, v7.xyz);
  r0.x = dot(r0.xyz, v7.xyz);
  let v_2 = (r3.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  let v_3 = fma(r3.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = fma(r3.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.yzw);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r1.zwy * r0.zxy);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = -(r2.xyzx);
  let v_10 = fma(r0.yzx, r1.wyz, v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  o4 = ((r2.xyz * v7.www)).xyzx;
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r3.z)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r3.z < 0.0f)));
  let v_11 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.x) + v_11.w));
  r0.w = f32(bitcast<i32>(r0.w));
  let v_12 = (r3.xyz * r0.www);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r1.x = (r2.y + r2.x);
  r0.w = fma(r0.w, r3.z, r1.x);
  r1.x = (r0.w + cb11_11.tint_symbol_3[3u].w);
  r3 = vec4<f32>(vec3<f32>(), r3.w);
  loop {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.z) >= 3i)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      break;
    }
    r5 = (cb12_12.tint_symbol_6[2u].xzyw * icb0[bitcast<i32>(r3.z)].xxxx);
    r5 = fma(icb0[bitcast<i32>(r3.z)].yyyy, cb12_12.tint_symbol_6[3u].xzyw, r5);
    r5 = fma(icb0[bitcast<i32>(r3.z)].zzzz, cb12_12.tint_symbol_6[4u].xzyw, r5);
    let v_13 = abs(r1.xxxx);
    let v_14 = fma(cb2_2.tint_symbol_2[16u].xx, r5.xy, v_13.xy);
    r5 = vec4<f32>(v_14.xy, r5.zw);
    let v_15 = fract(r5.xy);
    r5 = vec4<f32>(v_15.xy, r5.zw);
    let v_16 = (r5.xy + vec2<f32>(-0.5f));
    r5 = vec4<f32>(v_16.xy, r5.zw);
    let v_17 = fma((-(abs(r5.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r5 = vec4<f32>(v_17.xy, r5.zw);
    let v_18 = (r5.xy * r5.xy);
    r6 = vec4<f32>(v_18.xy, r6.zw);
    let v_19 = fma((-(r5.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r5 = vec4<f32>(v_19.xy, r5.zw);
    let v_20 = (r5.xy * r6.xy);
    r5 = vec4<f32>(v_20.xy, r5.zw);
    let v_21 = fma(r5.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(v_21.xy, r5.zw);
    let v_22 = fma(r5.xy, r5.zw, r3.xy);
    r3 = vec4<f32>(v_22.xy, r3.zw);
    r3.z = bitcast<f32>((bitcast<i32>(r3.z) + 1i));
  }
  r1.x = ((-(cb11_11.tint_symbol_3[0u].wwww)).x + 1.0f);
  r3.y = (r3.y * cb11_11.tint_symbol_3[0u].w);
  r1.x = fma(r1.x, r3.x, r3.y);
  r1.x = (r1.x * v4.z);
  let v_23 = (r2.xy * r1.xx);
  r3 = vec4<f32>(v_23.xy, r3.zw);
  r3.z = 0.0f;
  r2.w = 0.0f;
  let v_24 = fma(r1.xxx, r2.wwz, r3.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r3.x = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_3[1u].w);
  r3.y = (cb2_2.tint_symbol_2[16u].x * cb11_11.tint_symbol_3[2u].w);
  let v_25 = (r0.ww + r3.xy);
  r3 = vec4<f32>(r3.xy, v_25.xy);
  let v_26 = (r3.zw + cb11_11.tint_symbol_3[3u].ww);
  r3 = vec4<f32>(r3.xy, v_26.xy);
  let v_27 = fract(r3.zw);
  r3 = vec4<f32>(r3.xy, v_27.xy);
  let v_28 = (r3.zw + vec2<f32>(-0.5f));
  r3 = vec4<f32>(r3.xy, v_28.xy);
  let v_29 = fma((-(abs(r3.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_29.xy);
  let v_30 = (r3.zw * r3.zw);
  r5 = vec4<f32>(v_30.xy, r5.zw);
  let v_31 = fma((-(r3.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r3 = vec4<f32>(r3.xy, v_31.xy);
  let v_32 = (r3.zw * r5.xy);
  r3 = vec4<f32>(r3.xy, v_32.xy);
  let v_33 = fma(r3.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(r3.xy, v_33.xy);
  let v_34 = ((-(r3.wzww)).xy + vec2<f32>(1.0f));
  r5 = vec4<f32>(v_34.xy, r5.zw);
  r1.x = (r5.x * r5.y);
  let v_35 = (r3.zw * r5.xy);
  r5 = vec4<f32>(v_35.xy, r5.zw);
  r2.w = (r3.w * r3.z);
  let v_36 = (r5.xxx * cb11_11.tint_symbol_3[1u].xyz);
  r5 = vec4<f32>(v_36.x, r5.y, v_36.yz);
  let v_37 = fma(r1.xxx, cb11_11.tint_symbol_3[0u].xyz, r5.xzw);
  r5 = vec4<f32>(v_37.x, r5.y, v_37.yz);
  let v_38 = fma(r5.yyy, cb11_11.tint_symbol_3[2u].xyz, r5.xzw);
  r5 = vec4<f32>(v_38.xyz, r5.w);
  let v_39 = fma(r2.www, cb11_11.tint_symbol_3[3u].xyz, r5.xyz);
  r5 = vec4<f32>(v_39.xyz, r5.w);
  r1.x = ((-(cb11_11.tint_symbol_3[11u].zzzz)).x + 1.0f);
  let v_40 = (r5.xyz * cb11_11.tint_symbol_3[11u].zzz);
  r5 = vec4<f32>(v_40.xyz, r5.w);
  let v_41 = fma(r1.xxx, cb11_11.tint_symbol_3[0u].xyz, r5.xyz);
  r5 = vec4<f32>(v_41.xyz, r5.w);
  let v_42 = fma(cb11_11.tint_symbol_3[8u].xyz, cb2_2.tint_symbol_2[16u].xxx, r0.www);
  r6 = vec4<f32>(v_42.xyz, r6.w);
  let v_43 = (r6.xyz + cb11_11.tint_symbol_3[3u].www);
  r6 = vec4<f32>(v_43.xyz, r6.w);
  let v_44 = fract(r6.xyz);
  r6 = vec4<f32>(v_44.xyz, r6.w);
  let v_45 = (r6.xyz + vec3<f32>(-0.5f));
  r6 = vec4<f32>(v_45.xyz, r6.w);
  let v_46 = fma((-(abs(r6.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
  r6 = vec4<f32>(v_46.xyz, r6.w);
  let v_47 = (r6.xyz * r6.xyz);
  r7 = vec4<f32>(v_47.xyz, r7.w);
  let v_48 = fma((-(r6.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
  r6 = vec4<f32>(v_48.xyz, r6.w);
  let v_49 = (r6.xyz * r7.xyz);
  r6 = vec4<f32>(v_49.xyz, r6.w);
  r1.x = (r6.x + r6.x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_3[6u].w)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_50 = fma(r6.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r6 = vec4<f32>(v_50.xyz, r6.w);
    let v_51 = fma(r6.xyz, cb11_11.tint_symbol_3[8u].www, r4.xyz);
    r6 = vec4<f32>(v_51.xyz, r6.w);
    let v_52 = -(cb11_11.tint_symbol_3[6u].xyzx);
    let v_53 = (r6.xyz + v_52.xyz);
    r6 = vec4<f32>(v_53.xyz, r6.w);
    let v_54 = (r6.xyz * cb11_11.tint_symbol_3[7u].xyz);
    r6 = vec4<f32>(v_54.xyz, r6.w);
    r6 = textureSampleLevel(t2, s2, r6.xyzx.xyz, 0.0f);
  } else {
    r6 = vec4<f32>(vec3<f32>(), r6.w);
  }
  r2.w = ((-(cb11_11.tint_symbol_3[9u].xxxx)).w + 1.0f);
  r1.x = (r1.x * cb11_11.tint_symbol_3[9u].x);
  r1.x = fma(r1.x, 0.5f, r2.w);
  let v_55 = (r6.xyz * r1.xxx);
  r6 = vec4<f32>(v_55.xyz, r6.w);
  let v_56 = (r6.xyz * cb11_11.tint_symbol_3[11u].yyy);
  r6 = vec4<f32>(v_56.xyz, r6.w);
  let v_57 = fma(cb11_11.tint_symbol_3[11u].xxx, r5.xyz, r6.xyz);
  r5 = vec4<f32>(v_57.xyz, r5.w);
  let v_58 = ((-(cb12_12.tint_symbol_6[6u].zzzx)).zw + cb12_12.tint_symbol_6[6u].wy);
  r3 = vec4<f32>(r3.xy, v_58.xy);
  let v_59 = fma(v4.xx, r3.zw, cb12_12.tint_symbol_6[6u].zx);
  r3 = vec4<f32>(r3.xy, v_59.xy);
  let v_60 = (r3.zw * vec2<f32>(-1.44269502162933349609f));
  r3 = vec4<f32>(r3.xy, v_60.xy);
  let v_61 = exp2(r3.zw);
  r3 = vec4<f32>(r3.xy, v_61.xy);
  let v_62 = ((-(r3.zzzw)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_62.xy);
  let v_63 = (r3.xy + v4.yy);
  r3 = vec4<f32>(v_63.xy, r3.zw);
  let v_64 = (r3.xy + cb11_11.tint_symbol_3[3u].ww);
  r3 = vec4<f32>(v_64.xy, r3.zw);
  let v_65 = fract(r3.xy);
  r3 = vec4<f32>(v_65.xy, r3.zw);
  let v_66 = (r3.xy + vec2<f32>(-0.5f));
  r3 = vec4<f32>(v_66.xy, r3.zw);
  let v_67 = fma((-(abs(r3.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_67.xy, r3.zw);
  let v_68 = (r3.xy * r3.xy);
  r6 = vec4<f32>(r6.xy, v_68.xy);
  let v_69 = fma((-(r3.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r3 = vec4<f32>(v_69.xy, r3.zw);
  let v_70 = (r3.xy * r6.zw);
  r3 = vec4<f32>(v_70.xy, r3.zw);
  let v_71 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_71.xy, r3.zw);
  r6 = (-(r3.wzyx) + vec4<f32>(1.0f));
  r1.x = (r6.z * r6.w);
  let v_72 = (r3.xy * r6.zw);
  r6 = vec4<f32>(r6.xy, v_72.xy);
  r2.w = (r3.y * r3.x);
  let v_73 = (r6.zzz * cb11_11.tint_symbol_3[1u].xyz);
  r7 = vec4<f32>(v_73.xyz, r7.w);
  let v_74 = fma(r1.xxx, cb11_11.tint_symbol_3[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_74.xyz, r7.w);
  let v_75 = fma(r6.www, cb11_11.tint_symbol_3[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_75.xyz, r7.w);
  let v_76 = fma(r2.www, cb11_11.tint_symbol_3[3u].xyz, r7.xyz);
  r7 = vec4<f32>(v_76.xyz, r7.w);
  let v_77 = -(cb11_11.tint_symbol_3[0u].xyzx);
  let v_78 = (r7.xyz + v_77.xyz);
  r7 = vec4<f32>(v_78.xyz, r7.w);
  let v_79 = (r6.yyy * r7.xyz);
  r6 = vec4<f32>(r6.x, v_79.xyz);
  let v_80 = (r6.yzw * cb11_11.tint_symbol_3[10u].www);
  r6 = vec4<f32>(r6.x, v_80.xyz);
  let v_81 = fma(cb11_11.tint_symbol_3[0u].xyz, r6.xxx, r6.yzw);
  r6 = vec4<f32>(r6.x, v_81.xyz);
  let v_82 = (r6.yzw * cb11_11.tint_symbol_3[11u].xxx);
  r6 = vec4<f32>(r6.x, v_82.xyz);
  r1.x = ((-(v4.zzzz)).x + 1.0f);
  let v_83 = (r5.xyz * v4.zzz);
  r5 = vec4<f32>(v_83.xyz, r5.w);
  let v_84 = (r6.xxx * r5.xyz);
  r5 = vec4<f32>(v_84.xyz, r5.w);
  let v_85 = fma(r1.xxx, r6.yzw, r5.xyz);
  r5 = vec4<f32>(v_85.xyz, r5.w);
  r7.x = dot(cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r7.y = dot(cb1_1.tint_symbol_1[1u].xyz, r5.xyz);
  r7.z = dot(cb1_1.tint_symbol_1[2u].xyz, r5.xyz);
  let v_86 = (r7.xyz * cb11_11.tint_symbol_3[10u].yyy);
  r5 = vec4<f32>(v_86.xyz, r5.w);
  r7 = vec4<f32>(vec2<f32>(), r7.z, 1.0f);
  r7.z = cb12_12.tint_symbol_6[5u].x;
  let v_87 = -(r7.yyzy);
  let v_88 = (r4.xyz + v_87.xyz);
  r4 = vec4<f32>(v_88.xyz, r4.w);
  r1.x = dot(r4.xyz, r4.xyz);
  r1.x = sqrt(r1.x);
  let v_89 = (abs(r5.xxyz).yzw + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
  r6 = vec4<f32>(r6.x, v_89.xyz);
  r2.w = dot(r6.yzw, r6.yzw);
  r2.w = sqrt(r2.w);
  let v_90 = (r6.xx * cb11_11.tint_symbol_3[4u].xy);
  r3 = vec4<f32>(v_90.xy, r3.zw);
  r4.w = fma((-(cb11_11.tint_symbol_3[4u].xxxx)).w, r6.x, r2.w);
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
  let v_91 = fma(r5.xyz, r2.www, r4.xyz);
  r4 = vec4<f32>(v_91.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  r1.x = (r1.x / r2.w);
  let v_92 = fma(r4.xyz, r1.xxx, r7.xyz);
  r4 = vec4<f32>(v_92.xyz, r4.w);
  let v_93 = fma(r2.xyz, cb11_11.tint_symbol_3[10u].zzz, r4.xyz);
  r2 = vec4<f32>(v_93.xyz, r2.w);
  let v_94 = (cb1_1.tint_symbol_1[0u].xyz * cb9_9.tint_symbol_5[14u].zzz);
  r4 = vec4<f32>(v_94.xyz, r4.w);
  let v_95 = (cb1_1.tint_symbol_1[1u].xyz * cb9_9.tint_symbol_5[14u].zzz);
  r5 = vec4<f32>(v_95.xyz, r5.w);
  let v_96 = (cb1_1.tint_symbol_1[2u].xyz * cb9_9.tint_symbol_5[14u].www);
  r6 = vec4<f32>(v_96.xyz, r6.w);
  let v_97 = (r2.xyz * cb9_9.tint_symbol_5[14u].xxy);
  r7 = vec4<f32>(v_97.xyz, r7.w);
  r8.x = r4.x;
  r8.y = r5.x;
  r8.z = r6.x;
  r8.w = cb1_1.tint_symbol_1[3u].x;
  r9.x = dot(r7, r8);
  r10.x = r4.y;
  r10.y = r5.y;
  r10.z = r6.y;
  r10.w = cb1_1.tint_symbol_1[3u].y;
  r9.y = dot(r7, r10);
  r11.x = r4.z;
  r11.y = r5.z;
  r11.z = r6.z;
  r11.w = cb1_1.tint_symbol_1[3u].z;
  r9.z = dot(r7, r11);
  let v_98 = -(cb9_9.tint_symbol_5[0u].xyzx);
  let v_99 = (r9.xyz + v_98.xyz);
  r7 = vec4<f32>(v_99.xyz, r7.w);
  r1.x = dot(r7.xyz, r7.xyz);
  r2.w = ((-(r1.xxxx)).w + 0.5625f);
  r2.w = (r2.w * 1.77777779102325439453f);
  r2.w = max(r2.w, 0.0f);
  r1.x = inverseSqrt(r1.x);
  let v_100 = (r1.xx * r7.xy);
  r3 = vec4<f32>(v_100.xy, r3.zw);
  let v_101 = (r2.ww * r3.xy);
  r3 = vec4<f32>(v_101.xy, r3.zw);
  let v_102 = fma(r3.xy, v4.xx, r9.xy);
  r9 = vec4<f32>(v_102.xy, r9.zw);
  let v_103 = -(cb1_1.tint_symbol_1[3u].xyzx);
  let v_104 = (r9.xyz + v_103.xyz);
  r7 = vec4<f32>(v_104.xyz, r7.w);
  let v_105 = (r7.xyz * cb9_9.tint_symbol_5[14u].zzw);
  r7 = vec4<f32>(v_105.xyz, r7.w);
  r9.x = dot(r7.xyz, r4.xyz);
  r9.y = dot(r7.xyz, r5.xyz);
  r9.z = dot(r7.xyz, r6.xyz);
  let v_106 = bitcast<vec3<u32>>(cb8_8.tint_symbol_4[0u].xxx);
  let v_107 = r9.xyz;
  let v_108 = select(r2.xyz, v_107, (v_106 != vec3<u32>()));
  r2 = vec4<f32>(v_108.xyz, r2.w);
  if ((bitcast<u32>(cb8_8.tint_symbol_4[0u].y) != 0u)) {
    let v_109 = (r2.xyz * cb9_9.tint_symbol_5[14u].xxy);
    r7 = vec4<f32>(v_109.xyz, r7.w);
    r7.w = 1.0f;
    r3.x = dot(r7, r8);
    r3.y = dot(r7, r10);
    r1.x = dot(r7, r11);
    let v_110 = -(cb9_9.tint_symbol_5[1u].xyxx);
    let v_111 = (r3.xy + v_110.xy);
    r7 = vec4<f32>(v_111.xy, r7.zw);
    r2.w = dot(cb9_9.tint_symbol_5[2u].xy, r7.xy);
    r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_5[2u].wwww)).w, 0.0f, 1.0f);
    let v_112 = fma(r2.ww, cb9_9.tint_symbol_5[2u].xy, cb9_9.tint_symbol_5[1u].xy);
    r7 = vec4<f32>(v_112.xy, r7.zw);
    let v_113 = -(r7.xyxx);
    let v_114 = (r3.xy + v_113.xy);
    r7 = vec4<f32>(v_114.xy, r7.zw);
    r2.w = dot(r7.xy, r7.xy);
    r4.w = ((-(r2.wwww)).w + cb9_9.tint_symbol_5[3u].y);
    r4.w = clamp(((r4.wwww * cb9_9.tint_symbol_5[3u].zzzz)).w, 0.0f, 1.0f);
    r5.w = (r4.w * cb9_9.tint_symbol_5[3u].x);
    r6.w = inverseSqrt(r2.w);
    let v_115 = (r6.ww * r7.xy);
    r7 = vec4<f32>(v_115.xy, r7.zw);
    let v_116 = (r5.ww * r7.xy);
    r7 = vec4<f32>(v_116.xy, r7.zw);
    let v_117 = fma(r7.xy, v4.xx, r3.xy);
    r7 = vec4<f32>(v_117.xy, r7.zw);
    r3.x = ((-(r1.xxxx)).x + cb9_9.tint_symbol_5[3u].w);
    r1.x = fma(r4.w, r3.x, r1.x);
    r3.x = (cb9_9.tint_symbol_5[3u].x * 0.5f);
    r3.x = (r3.x * r3.x);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r3.x)));
    r3.x = (cb9_9.tint_symbol_5[3u].w + -0.25f);
    let v_118 = bitcast<u32>(r2.w);
    let v_119 = r3.x;
    r7.z = select(r1.x, v_119, (v_118 != 0u));
    if ((bitcast<u32>(cb8_8.tint_symbol_4[0u].z) != 0u)) {
      let v_120 = -(cb9_9.tint_symbol_5[4u].xyxx);
      let v_121 = (r7.xy + v_120.xy);
      r3 = vec4<f32>(v_121.xy, r3.zw);
      r1.x = dot(cb9_9.tint_symbol_5[5u].xy, r3.xy);
      r1.x = clamp(((r1.xxxx * cb9_9.tint_symbol_5[5u].wwww)).x, 0.0f, 1.0f);
      let v_122 = fma(r1.xx, cb9_9.tint_symbol_5[5u].xy, cb9_9.tint_symbol_5[4u].xy);
      r3 = vec4<f32>(v_122.xy, r3.zw);
      let v_123 = ((-(r3.xyxx)).xy + r7.xy);
      r3 = vec4<f32>(v_123.xy, r3.zw);
      r1.x = dot(r3.xy, r3.xy);
      r2.w = ((-(r1.xxxx)).w + cb9_9.tint_symbol_5[6u].y);
      r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_5[6u].zzzz)).w, 0.0f, 1.0f);
      r4.w = (r2.w * cb9_9.tint_symbol_5[6u].x);
      r5.w = inverseSqrt(r1.x);
      let v_124 = (r3.xy * r5.ww);
      r3 = vec4<f32>(v_124.xy, r3.zw);
      let v_125 = (r3.xy * r4.ww);
      r3 = vec4<f32>(v_125.xy, r3.zw);
      let v_126 = fma(r3.xy, v4.xx, r7.xy);
      r7 = vec4<f32>(v_126.xy, r7.zw);
      r3.x = ((-(r7.zzzz)).x + cb9_9.tint_symbol_5[6u].w);
      r2.w = fma(r2.w, r3.x, r7.z);
      r3.x = (cb9_9.tint_symbol_5[6u].x * 0.5f);
      r3.x = (r3.x * r3.x);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r3.x)));
      r3.x = (cb9_9.tint_symbol_5[6u].w + -0.25f);
      let v_127 = bitcast<u32>(r1.x);
      let v_128 = r3.x;
      r7.z = select(r2.w, v_128, (v_127 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_4[0u].w) != 0u)) {
      let v_129 = -(cb9_9.tint_symbol_5[7u].xyxx);
      let v_130 = (r7.xy + v_129.xy);
      r3 = vec4<f32>(v_130.xy, r3.zw);
      r1.x = dot(cb9_9.tint_symbol_5[8u].xy, r3.xy);
      r1.x = clamp(((r1.xxxx * cb9_9.tint_symbol_5[8u].wwww)).x, 0.0f, 1.0f);
      let v_131 = fma(r1.xx, cb9_9.tint_symbol_5[8u].xy, cb9_9.tint_symbol_5[7u].xy);
      r3 = vec4<f32>(v_131.xy, r3.zw);
      let v_132 = ((-(r3.xyxx)).xy + r7.xy);
      r3 = vec4<f32>(v_132.xy, r3.zw);
      r1.x = dot(r3.xy, r3.xy);
      r2.w = ((-(r1.xxxx)).w + cb9_9.tint_symbol_5[9u].y);
      r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_5[9u].zzzz)).w, 0.0f, 1.0f);
      r4.w = (r2.w * cb9_9.tint_symbol_5[9u].x);
      r5.w = inverseSqrt(r1.x);
      let v_133 = (r3.xy * r5.ww);
      r3 = vec4<f32>(v_133.xy, r3.zw);
      let v_134 = (r3.xy * r4.ww);
      r3 = vec4<f32>(v_134.xy, r3.zw);
      let v_135 = fma(r3.xy, v4.xx, r7.xy);
      r7 = vec4<f32>(v_135.xy, r7.zw);
      r3.x = ((-(r7.zzzz)).x + cb9_9.tint_symbol_5[9u].w);
      r2.w = fma(r2.w, r3.x, r7.z);
      r3.x = (cb9_9.tint_symbol_5[9u].x * 0.5f);
      r3.x = (r3.x * r3.x);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r3.x)));
      r3.x = (cb9_9.tint_symbol_5[9u].w + -0.25f);
      let v_136 = bitcast<u32>(r1.x);
      let v_137 = r3.x;
      r7.z = select(r2.w, v_137, (v_136 != 0u));
    }
    if ((bitcast<u32>(cb8_8.tint_symbol_4[1u].x) != 0u)) {
      let v_138 = -(cb9_9.tint_symbol_5[10u].xyxx);
      let v_139 = (r7.xy + v_138.xy);
      r3 = vec4<f32>(v_139.xy, r3.zw);
      r1.x = dot(cb9_9.tint_symbol_5[11u].xy, r3.xy);
      r1.x = clamp(((r1.xxxx * cb9_9.tint_symbol_5[11u].wwww)).x, 0.0f, 1.0f);
      let v_140 = fma(r1.xx, cb9_9.tint_symbol_5[11u].xy, cb9_9.tint_symbol_5[10u].xy);
      r3 = vec4<f32>(v_140.xy, r3.zw);
      let v_141 = ((-(r3.xyxx)).xy + r7.xy);
      r3 = vec4<f32>(v_141.xy, r3.zw);
      r1.x = dot(r3.xy, r3.xy);
      r2.w = ((-(r1.xxxx)).w + cb9_9.tint_symbol_5[12u].y);
      r2.w = clamp(((r2.wwww * cb9_9.tint_symbol_5[12u].zzzz)).w, 0.0f, 1.0f);
      r4.w = (r2.w * cb9_9.tint_symbol_5[12u].x);
      r5.w = inverseSqrt(r1.x);
      let v_142 = (r3.xy * r5.ww);
      r3 = vec4<f32>(v_142.xy, r3.zw);
      let v_143 = (r3.xy * r4.ww);
      r3 = vec4<f32>(v_143.xy, r3.zw);
      let v_144 = fma(r3.xy, v4.xx, r7.xy);
      r7 = vec4<f32>(v_144.xy, r7.zw);
      r3.x = ((-(r7.zzzz)).x + cb9_9.tint_symbol_5[12u].w);
      r2.w = fma(r2.w, r3.x, r7.z);
      r3.x = (cb9_9.tint_symbol_5[12u].x * 0.5f);
      r3.x = (r3.x * r3.x);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r3.x)));
      r3.x = (cb9_9.tint_symbol_5[12u].w + -0.25f);
      let v_145 = bitcast<u32>(r1.x);
      let v_146 = r3.x;
      r7.z = select(r2.w, v_146, (v_145 != 0u));
    }
    let v_147 = (r7.xyz + v_103.xyz);
    r7 = vec4<f32>(v_147.xyz, r7.w);
    let v_148 = (r7.xyz * cb9_9.tint_symbol_5[14u].zzw);
    r7 = vec4<f32>(v_148.xyz, r7.w);
    r2.x = dot(r7.xyz, r4.xyz);
    r2.y = dot(r7.xyz, r5.xyz);
    r2.z = dot(r7.xyz, r6.xyz);
  }
  r4 = (r2.yyyy * cb1_1.tint_symbol_1[9u]);
  r4 = fma(r2.xxxx, cb1_1.tint_symbol_1[8u], r4);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol_1[10u], r4);
  o0 = (r2 + cb1_1.tint_symbol_1[11u]);
  let v_149 = r2;
  r2 = vec4<f32>(0.0f, v_149.y, 0.0f, v_149.w);
  r2.y = (r0.w * cb11_11.tint_symbol_3[13u].y);
  let v_150 = fma(v4.zyz, cb11_11.tint_symbol_3[12u].xyz, r2.xyz);
  r2 = vec4<f32>(v_150.xyz, r2.w);
  let v_151 = (r3.zw * cb11_11.tint_symbol_3[13u].wx);
  r3 = vec4<f32>(v_151.xy, r3.zw);
  r0.w = (r3.y + r3.x);
  let v_152 = -(cb11_11.tint_symbol_3[13u].zzzz);
  r0.w = (r0.w + v_152.w);
  r1.x = (v_152.x + 1.0f);
  r0.w = clamp(((r0.wwww / r1.xxxx)).w, 0.0f, 1.0f);
  r1.x = ((-(r0.wwww)).x + 1.0f);
  let v_153 = fma(r1.xxx, r2.xyz, r0.www);
  r2 = vec4<f32>(v_153.xyz, r2.w);
  r0.w = ((-(cb11_11.tint_symbol_3[14u].wwww)).w + 1.0f);
  let v_154 = (cb11_11.tint_symbol_3[14u].www * cb11_11.tint_symbol_3[14u].xyz);
  r3 = vec4<f32>(v_154.xyz, r3.w);
  let v_155 = fma(r0.www, r2.xyz, r3.xyz);
  o5 = vec4<f32>(v_155.xyz, o5.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_3[12u].w)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_3[12u].w < 0.0f)));
  let v_156 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r1.x) + v_156.w));
  o5.w = f32(bitcast<i32>(r0.w));
  o1 = vec4<f32>(v6.xy, o1.zw);
  o1.z = v4.w;
  o1.w = cb12_12.tint_symbol_6[8u].y;
  o2 = r1.yzw.xyzx;
  o3 = r0.xyz.xyzx;
}

struct tint_symbol_7 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec3<f32>, @location(4u) v4 : vec4<f32>, @location(6u) v6 : vec2<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v3, v4, v6, v7);
  return tint_symbol_7(o0, o1, o2, o3, o4, o5);
}
