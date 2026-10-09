diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb12_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb12_struct_1;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_3d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v4 : vec2<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v1.z)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.0f)));
  let v = -(bitcast<vec4<i32>>(r0.xxxx));
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) + v.x));
  r0.x = f32(bitcast<i32>(r0.x));
  let v_1 = (r0.xxx * v1);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r0.y = (r1.y + r1.x);
  r0.x = fma(r0.x, v1.z, r0.y);
  r0.y = (r0.x + cb11_11.tint_symbol_2[3u].w);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r2.x = 0.0f;
  loop {
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= 3i)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      break;
    }
    r3 = (cb12_12.tint_symbol_3[2u].xzyw * icb0[bitcast<i32>(r2.x)].xxxx);
    r3 = fma(icb0[bitcast<i32>(r2.x)].yyyy, cb12_12.tint_symbol_3[3u].xzyw, r3);
    r3 = fma(icb0[bitcast<i32>(r2.x)].zzzz, cb12_12.tint_symbol_3[4u].xzyw, r3);
    let v_2 = abs(r0.yyyy);
    let v_3 = fma(cb2_2.tint_symbol_1[16u].xx, r3.xy, v_2.yz);
    let v_4 = r2;
    r2 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
    let v_5 = fract(r2.yz);
    let v_6 = r2;
    r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
    let v_7 = (r2.yz + vec2<f32>(-0.5f));
    let v_8 = r2;
    r2 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
    let v_9 = fma((-(abs(r2.yyzy))).yz, vec2<f32>(2.0f), vec2<f32>(1.0f));
    let v_10 = r2;
    r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
    let v_11 = (r2.yz * r2.yz);
    r3 = vec4<f32>(v_11.xy, r3.zw);
    let v_12 = fma((-(r2.yyzy)).yz, vec2<f32>(2.0f), vec2<f32>(3.0f));
    let v_13 = r2;
    r2 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
    let v_14 = (r2.yz * r3.xy);
    let v_15 = r2;
    r2 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
    let v_16 = fma(r2.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    let v_17 = r2;
    r2 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
    let v_18 = fma(r2.yz, r3.zw, r0.zw);
    r0 = vec4<f32>(r0.xy, v_18.xy);
    r2.x = bitcast<f32>((bitcast<i32>(r2.x) + 1i));
  }
  r0.y = ((-(cb11_11.tint_symbol_2[0u].wwww)).y + 1.0f);
  r0.w = (r0.w * cb11_11.tint_symbol_2[0u].w);
  r0.y = fma(r0.y, r0.z, r0.w);
  r0.y = (r0.y * v2.z);
  let v_19 = (r1.xy * r0.yy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  r2.z = 0.0f;
  r1.w = 0.0f;
  let v_20 = fma(r0.yyy, r1.wwz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_20.xyz);
  r1.x = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[1u].w);
  r1.y = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[2u].w);
  let v_21 = (r0.xx + r1.xy);
  r1 = vec4<f32>(r1.xy, v_21.xy);
  let v_22 = (r1.zw + cb11_11.tint_symbol_2[3u].ww);
  r1 = vec4<f32>(r1.xy, v_22.xy);
  let v_23 = fract(r1.zw);
  r1 = vec4<f32>(r1.xy, v_23.xy);
  let v_24 = (r1.zw + vec2<f32>(-0.5f));
  r1 = vec4<f32>(r1.xy, v_24.xy);
  let v_25 = fma((-(abs(r1.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_25.xy);
  let v_26 = (r1.zw * r1.zw);
  r2 = vec4<f32>(v_26.xy, r2.zw);
  let v_27 = fma((-(r1.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r1 = vec4<f32>(r1.xy, v_27.xy);
  let v_28 = (r1.zw * r2.xy);
  r1 = vec4<f32>(r1.xy, v_28.xy);
  let v_29 = fma(r1.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(r1.xy, v_29.xy);
  let v_30 = ((-(r1.wzww)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_30.xy, r2.zw);
  r2.z = (r2.x * r2.y);
  let v_31 = (r1.zw * r2.xy);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  r1.z = (r1.w * r1.z);
  let v_32 = (r2.xxx * cb11_11.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r2.zzz, cb11_11.tint_symbol_2[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_33.x, r2.y, v_33.yz);
  let v_34 = fma(r2.yyy, cb11_11.tint_symbol_2[2u].xyz, r2.xzw);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma(r1.zzz, cb11_11.tint_symbol_2[3u].xyz, r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  r1.z = ((-(cb11_11.tint_symbol_2[11u].zzzz)).z + 1.0f);
  let v_36 = (r2.xyz * cb11_11.tint_symbol_2[11u].zzz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = fma(r1.zzz, cb11_11.tint_symbol_2[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  let v_38 = fma(cb11_11.tint_symbol_2[8u].xyz, cb2_2.tint_symbol_1[16u].xxx, r0.xxx);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = (r3.xyz + cb11_11.tint_symbol_2[3u].www);
  r3 = vec4<f32>(v_39.xyz, r3.w);
  let v_40 = fract(r3.xyz);
  r3 = vec4<f32>(v_40.xyz, r3.w);
  let v_41 = (r3.xyz + vec3<f32>(-0.5f));
  r3 = vec4<f32>(v_41.xyz, r3.w);
  let v_42 = fma((-(abs(r3.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = (r3.xyz * r3.xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = fma((-(r3.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
  r3 = vec4<f32>(v_44.xyz, r3.w);
  let v_45 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  r0.x = (r3.x + r3.x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[6u].w)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_46 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(v_46.xyz, r3.w);
    let v_47 = fma(r3.xyz, cb11_11.tint_symbol_2[8u].www, v0);
    r3 = vec4<f32>(v_47.xyz, r3.w);
    let v_48 = -(cb11_11.tint_symbol_2[6u].xyzx);
    let v_49 = (r3.xyz + v_48.xyz);
    r3 = vec4<f32>(v_49.xyz, r3.w);
    let v_50 = (r3.xyz * cb11_11.tint_symbol_2[7u].xyz);
    r3 = vec4<f32>(v_50.xyz, r3.w);
    r3 = textureSampleLevel(t2, s2, r3.xyzx.xyz, 0.0f);
  } else {
    r3 = vec4<f32>(vec3<f32>(), r3.w);
  }
  r1.z = ((-(cb11_11.tint_symbol_2[9u].xxxx)).z + 1.0f);
  r0.x = (r0.x * cb11_11.tint_symbol_2[9u].x);
  r0.x = fma(r0.x, 0.5f, r1.z);
  let v_51 = (r3.xyz * r0.xxx);
  r3 = vec4<f32>(v_51.xyz, r3.w);
  let v_52 = (r3.xyz * cb11_11.tint_symbol_2[11u].yyy);
  r3 = vec4<f32>(v_52.xyz, r3.w);
  let v_53 = fma(cb11_11.tint_symbol_2[11u].xxx, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = ((-(cb12_12.tint_symbol_3[6u].xxxz)).zw + cb12_12.tint_symbol_3[6u].yw);
  r1 = vec4<f32>(r1.xy, v_54.xy);
  let v_55 = fma(v2.xx, r1.zw, cb12_12.tint_symbol_3[6u].xz);
  r1 = vec4<f32>(r1.xy, v_55.xy);
  let v_56 = (r1.zw * vec2<f32>(-1.44269502162933349609f));
  r1 = vec4<f32>(r1.xy, v_56.xy);
  let v_57 = exp2(r1.zw);
  r1 = vec4<f32>(r1.xy, v_57.xy);
  let v_58 = ((-(r1.zzzw)).zw + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_58.xy);
  let v_59 = ((-(r1.zzzw)).zw + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_59.xy);
  let v_60 = (r1.xy + v2.yy);
  r1 = vec4<f32>(v_60.xy, r1.zw);
  let v_61 = (r1.xy + cb11_11.tint_symbol_2[3u].ww);
  r1 = vec4<f32>(v_61.xy, r1.zw);
  let v_62 = fract(r1.xy);
  r1 = vec4<f32>(v_62.xy, r1.zw);
  let v_63 = (r1.xy + vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_63.xy, r1.zw);
  let v_64 = fma((-(abs(r1.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_64.xy, r1.zw);
  let v_65 = (r1.xy * r1.xy);
  r3 = vec4<f32>(v_65.xy, r3.zw);
  let v_66 = fma((-(r1.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r1 = vec4<f32>(v_66.xy, r1.zw);
  let v_67 = (r1.xy * r3.xy);
  r1 = vec4<f32>(v_67.xy, r1.zw);
  let v_68 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_68.xy, r1.zw);
  let v_69 = ((-(r1.yxyy)).xy + vec2<f32>(1.0f));
  r3 = vec4<f32>(v_69.xy, r3.zw);
  r0.x = (r3.x * r3.y);
  let v_70 = (r1.xy * r3.xy);
  r3 = vec4<f32>(v_70.xy, r3.zw);
  r1.x = (r1.y * r1.x);
  let v_71 = (r3.xxx * cb11_11.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_71.x, r3.y, v_71.yz);
  let v_72 = fma(r0.xxx, cb11_11.tint_symbol_2[0u].xyz, r3.xzw);
  r3 = vec4<f32>(v_72.x, r3.y, v_72.yz);
  let v_73 = fma(r3.yyy, cb11_11.tint_symbol_2[2u].xyz, r3.xzw);
  r3 = vec4<f32>(v_73.xyz, r3.w);
  let v_74 = fma(r1.xxx, cb11_11.tint_symbol_2[3u].xyz, r3.xyz);
  r3 = vec4<f32>(v_74.xyz, r3.w);
  let v_75 = -(cb11_11.tint_symbol_2[0u].xyzx);
  let v_76 = (r3.xyz + v_75.xyz);
  r3 = vec4<f32>(v_76.xyz, r3.w);
  let v_77 = (r1.www * r3.xyz);
  r1 = vec4<f32>(v_77.xy, r1.z, v_77.z);
  let v_78 = (r1.xyw * cb11_11.tint_symbol_2[10u].www);
  r1 = vec4<f32>(v_78.xy, r1.z, v_78.z);
  let v_79 = fma(cb11_11.tint_symbol_2[0u].xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_79.xy, r1.z, v_79.z);
  let v_80 = (r1.xyw * cb11_11.tint_symbol_2[11u].xxx);
  r1 = vec4<f32>(v_80.xy, r1.z, v_80.z);
  r0.x = ((-(v2.zzzz)).x + 1.0f);
  let v_81 = (r2.xyz * v2.zzz);
  r2 = vec4<f32>(v_81.xyz, r2.w);
  let v_82 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_82.xyz, r2.w);
  let v_83 = fma(r0.xxx, r1.xyw, r2.xyz);
  r1 = vec4<f32>(v_83.xy, r1.z, v_83.z);
  r2.x = dot(cb1_1.tint_symbol[0u].xyz, r1.xyw);
  r2.y = dot(cb1_1.tint_symbol[1u].xyz, r1.xyw);
  r2.z = dot(cb1_1.tint_symbol[2u].xyz, r1.xyw);
  let v_84 = (r2.xyz * cb11_11.tint_symbol_2[10u].yyy);
  r1 = vec4<f32>(v_84.xy, r1.z, v_84.z);
  r2 = vec4<f32>(vec2<f32>(), r2.zw);
  r2.z = cb12_12.tint_symbol_3[5u].x;
  let v_85 = ((-(r2.yyzy)).xyz + v0);
  r3 = vec4<f32>(v_85.xyz, r3.w);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  let v_86 = (abs(r1.xywx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
  r4 = vec4<f32>(v_86.xyz, r4.w);
  r2.w = dot(r4.xyz, r4.xyz);
  r2.w = sqrt(r2.w);
  let v_87 = (r1.zz * cb11_11.tint_symbol_2[4u].xy);
  r4 = vec4<f32>(v_87.xy, r4.zw);
  r1.z = fma((-(cb11_11.tint_symbol_2[4u].xxxx)).z, r1.z, r2.w);
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
  let v_88 = fma(r1.xyw, r1.zzz, r3.xyz);
  r1 = vec4<f32>(v_88.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = sqrt(r1.w);
  r0.x = (r0.x / r1.w);
  let v_89 = fma(r1.xyz, r0.xxx, r2.xyz);
  r1 = vec4<f32>(v_89.xyz, r1.w);
  let v_90 = fma(r0.yzw, cb11_11.tint_symbol_2[10u].zzz, r1.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v4.xyxy;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v4);
  return tint_symbol_4(o0, o1);
}
