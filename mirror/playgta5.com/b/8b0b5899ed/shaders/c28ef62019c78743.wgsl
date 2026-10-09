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

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb45_struct {
  tint_symbol_1 : array<vec4<f32>, 45u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb45_struct;

struct cb15_struct {
  tint_symbol_2 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

struct cb13_struct {
  tint_symbol_4 : array<vec4<f32>, 13u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb13_struct;

@group(0u) @binding(21u) var s5 : sampler;

@group(0u) @binding(22u) var s6 : sampler;

@group(0u) @binding(31u) var s15 : sampler_comparison;

@group(0u) @binding(37u) var t5 : texture_2d<f32>;

@group(0u) @binding(38u) var t6 : texture_2d<f32>;

@group(0u) @binding(47u) var t15 : texture_depth_2d;

var<private> icb0 : array<vec4<f32>, 10u> = array<vec4<f32>, 10u>(vec4<f32>(0.02027519047260284424f, -0.78676551580429077148f, 0.0f, 0.0f), vec4<f32>(-0.70158278942108154297f, -0.47476160526275634766f, 0.0f, 0.0f), vec4<f32>(0.54473602771759033203f, -0.06281875073909759521f, 0.0f, 0.0f), vec4<f32>(-0.12336549907922744751f, -0.12901020050048828125f, 0.0f, 0.0f), vec4<f32>(0.7202141880989074707f, -0.59987431764602661133f, 0.0f, 0.0f), vec4<f32>(0.5887699127197265625f, 0.80624562501907348633f, 0.0f, 0.0f), vec4<f32>(-0.55884128808975219727f, 0.33167970180511474609f, 0.0f, 0.0f), vec4<f32>(-0.33118340373039245605f, 0.88791167736053466797f, 0.0f, 0.0f), vec4<f32>(0.05035594850778579712f, 0.48651018738746643066f, 0.0f, 0.0f), vec4<f32>(0.9244028925895690918f, 0.36059340834617614746f, 0.0f, 0.0f));

var<private> v1 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_6;

fn main_inner(v0 : vec2<f32>, v_2 : i32) {
  let v_3 = 0i;
  v1.x = bitcast<f32>((v_2 - v_3));
  r0.x = f32(bitcast<u32>(v1.x));
  r0.x = (r0.x / cb9_9.tint_symbol_3[0u].x);
  let v_4 = -(r0.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v_4.y)));
  r0.z = fract(abs(r0.xxxx).z);
  let v_5 = -(r0.zzzz);
  let v_6 = bitcast<u32>(r0.y);
  r0.y = select(v_5.y, r0.z, (v_6 != 0u));
  r1.x = (r0.y * cb9_9.tint_symbol_3[0u].x);
  r1.y = floor(r0.x);
  let v_7 = (r1.xy * cb9_9.tint_symbol_3[0u].zw);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r1 = textureSampleLevel(t5, s5, r0.xyxx.xy, 0.0f);
  r0 = textureSampleLevel(t6, s6, r0.xyxx.xy, 0.0f);
  let v_8 = (r1.xyz + cb8_8.tint_symbol_4[10u].yzw);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.x = fract(r0.w);
  let v_9 = -(r1.xxxx);
  r0.w = (r0.w + v_9.w);
  r0.w = (r0.w * cb8_8.tint_symbol_4[10u].x);
  r1.y = (r0.w * 0.0039215688593685627f);
  let v_10 = (r1.xx * vec2<f32>(10.0f, 1000.0f));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = fract(r3.xy);
  r3 = vec4<f32>(v_11.xy, r3.zw);
  let v_12 = fma(cb8_8.tint_symbol_4[3u].zw, r3.xx, cb8_8.tint_symbol_4[3u].xy);
  let v_13 = r3;
  r3 = vec4<f32>(v_12.x, v_13.y, v_12.y, v_13.w);
  r1.z = fma(cb8_8.tint_symbol_4[6u].z, r3.y, cb8_8.tint_symbol_4[6u].y);
  r2.w = fma(r3.z, r1.z, r2.z);
  let v_14 = (v0 + vec2<f32>(-0.5f));
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb8_8.tint_symbol_4[6u].x)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_16 = (r0.xyz + cb8_8.tint_symbol_4[9u].xyz);
    r0 = vec4<f32>(v_16.xyz, r0.w);
    let v_17 = ((-(r2.ywxy)).xyz + cb1_1.tint_symbol[15u].yzx);
    r4 = vec4<f32>(v_17.xyz, r4.w);
    r1.z = dot(r0.xyz, r0.xyz);
    r1.z = inverseSqrt(r1.z);
    let v_18 = (r0.xyz * r1.zzz);
    r0 = vec4<f32>(v_18.xyz, r0.w);
    let v_19 = (r4.xyz * r0.zxy);
    r5 = vec4<f32>(v_19.xyz, r5.w);
    let v_20 = -(r5.xyzx);
    let v_21 = fma(r0.yzx, r4.yzx, v_20.xyz);
    r4 = vec4<f32>(v_21.xyz, r4.w);
    r1.z = dot(r4.xyz, r4.xyz);
    r1.z = inverseSqrt(r1.z);
    let v_22 = (r1.zzz * r4.xyz);
    r4 = vec4<f32>(v_22.xyz, r4.w);
    r1.z = (r3.x * r3.y);
    r4.w = ((-(v0.yyyy)).w + 0.69999998807907104492f);
    r4.w = (r3.z * r4.w);
    let v_23 = ((-(r0.xyzx)).xyz * r4.www);
    r5 = vec4<f32>(v_23.xyz, r5.w);
    let v_24 = fma(r1.zzz, r4.xyz, r5.xyz);
    r5 = vec4<f32>(v_24.xyz, r5.w);
  } else {
    r1.z = (r1.x * 100.0f);
    r1.z = fract(r1.z);
    r1.z = fma(cb8_8.tint_symbol_4[5u].w, r1.z, cb8_8.tint_symbol_4[5u].z);
    r1.z = (abs(r1.wwww).z * r1.z);
    let v_25 = r1.zzzz;
    r6.x = sin(v_25.x);
    r7.x = cos(v_25.x);
    r6 = (r6.xxxx * cb1_1.tint_symbol[14u].xyzx);
    let v_26 = (r6.zwy + r6.zwy);
    r7 = vec4<f32>(r7.x, v_26.xyz);
    let v_27 = (r6.xyz * r7.zwy);
    r8 = vec4<f32>(v_27.xyz, r8.w);
    let v_28 = (r7.yzw * r7.xxx);
    r9 = vec4<f32>(v_28.xyz, r9.w);
    let v_29 = (r8.zzy + r8.yxx);
    r8 = vec4<f32>(v_29.xyz, r8.w);
    let v_30 = -(r9.xxxx);
    r10.x = fma(r6.w, r7.w, v_30.x);
    r11.x = fma(r6.w, r7.w, r9.x);
    let v_31 = -(r9.yyzy);
    let v_32 = fma(r6.yz, r7.yz, v_31.yz);
    let v_33 = r11;
    r11 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
    let v_34 = fma(r6.zy, r7.zy, r9.zy);
    let v_35 = r10;
    r10 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
    let v_36 = ((-(r8.xyzx)).xyz + vec3<f32>(1.0f));
    r6 = vec4<f32>(v_36.xyz, r6.w);
    let v_37 = r2;
    r7 = vec4<f32>(v_37.xyw, r7.w);
    r7.w = r1.w;
    r7 = (-(r7) + cb1_1.tint_symbol[15u]);
    r1.z = dot(r7, r7);
    r1.z = inverseSqrt(r1.z);
    let v_38 = (r1.zzz * r7.yzx);
    r7 = vec4<f32>(v_38.xyz, r7.w);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (r7.y < 0.99999499320983886719f)));
    let v_39 = (r7.zxy * vec3<f32>(0.0f, 1.0f, 0.0f));
    r8 = vec4<f32>(v_39.xyz, r8.w);
    let v_40 = -(r8.xyzx);
    let v_41 = fma(r7.xyz, vec3<f32>(0.0f, 0.0f, 1.0f), v_40.xyz);
    r8 = vec4<f32>(v_41.xyz, r8.w);
    r4.w = dot(r8.yz, r8.yz);
    r4.w = inverseSqrt(r4.w);
    let v_42 = (r4.www * r8.xyz);
    r8 = vec4<f32>(v_42.xyz, r8.w);
    let v_43 = (r7.xyz * r8.xyz);
    r9 = vec4<f32>(v_43.xyz, r9.w);
    let v_44 = -(r9.xyzx);
    let v_45 = fma(r8.zxy, r7.yzx, v_44.xyz);
    r7 = vec4<f32>(v_45.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_46 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_46.xyz, r7.w);
    let v_47 = bitcast<vec2<u32>>(r1.zz);
    let v_48 = select(vec2<f32>(1.0f, 0.0f), r8.yz, (v_47 != vec2<u32>()));
    r8 = vec4<f32>(v_48.xy, r8.zw);
    let v_49 = bitcast<vec3<u32>>(r1.zzz);
    let v_50 = select(vec3<f32>(0.0f, 1.0f, 0.0f), r7.xyz, (v_49 != vec3<u32>()));
    r7 = vec4<f32>(v_50.xyz, r7.w);
    r10.w = r6.x;
    r0.x = dot(r7.yzx, r10.xyw);
    r11.w = r6.y;
    r0.y = dot(r7.xzy, r11.xyw);
    r6.x = r11.z;
    r6.y = r10.z;
    r0.z = dot(r7.xyz, r6.xyz);
    r4.x = dot(r8.yx, r10.xw);
    r4.y = dot(r8.xy, r11.xw);
    r4.z = dot(r8.xy, r6.xy);
    let v_51 = (r3.xz * r3.yw);
    r3 = vec4<f32>(v_51.xy, r3.zw);
    let v_52 = (r0.xyz * r3.yyy);
    r3 = vec4<f32>(r3.x, v_52.xyz);
    let v_53 = fma(r3.xxx, r4.xyz, r3.yzw);
    r5 = vec4<f32>(v_53.xyz, r5.w);
  }
  let v_54 = (r2.xyw + r5.xyz);
  r3 = vec4<f32>(v_54.xyz, r3.w);
  r5 = (r3.yyyy * cb1_1.tint_symbol[9u]);
  r5 = fma(r3.xxxx, cb1_1.tint_symbol[8u], r5);
  r5 = fma(r3.zzzz, cb1_1.tint_symbol[10u], r5);
  r5 = (r5 + cb1_1.tint_symbol[11u]);
  let v_55 = -(abs(r1.wwww));
  r0.w = fma(r0.w, 0.0039215688593685627f, v_55.w);
  r1.z = (r0.w * cb8_8.tint_symbol_4[2u].x);
  r1.y = (r0.w / r1.y);
  let v_56 = -(r1.zzzz);
  r1.y = fma(r1.y, cb8_8.tint_symbol_4[2u].x, v_56.y);
  r1.y = fma(cb8_8.tint_symbol_4[2u].y, r1.y, r1.z);
  r1.y = fract(r1.y);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb8_8.tint_symbol_4[2u].x)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r1.x = ((-(r1.yyyy)).x + r1.x);
  r1.x = fma(r1.x, r1.z, r1.y);
  r1.x = (r1.x * 0.99900001287460327148f);
  r1.y = (cb8_8.tint_symbol_4[1u].w + 1.0f);
  let v_57 = -(cb8_8.tint_symbol_4[1u].zzzz);
  r1.y = (r1.y + v_57.y);
  r1.x = fma(r1.x, r1.y, cb8_8.tint_symbol_4[1u].z);
  r1.y = floor(r1.x);
  r2.w = (r1.y / cb8_8.tint_symbol_4[1u].y);
  let v_58 = -(r2.wwww);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= v_58.w)));
  r4.w = fract(abs(r2.wwww).w);
  let v_59 = -(r4.wwww);
  let v_60 = bitcast<u32>(r3.w);
  r3.w = select(v_59.w, r4.w, (v_60 != 0u));
  r6.x = (r3.w * cb8_8.tint_symbol_4[1u].y);
  r6.y = floor(r2.w);
  let v_61 = (vec2<f32>(1.0f) / cb8_8.tint_symbol_4[1u].yx);
  r6 = vec4<f32>(r6.xy, v_61.xy);
  let v_62 = (r6.xy + v0);
  r6 = vec4<f32>(v_62.xy, r6.zw);
  let v_63 = (r6.zw * r6.xy);
  o1 = vec4<f32>(v_63.xy, o1.zw);
  r2.w = (r1.y + -1.0f);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= cb8_8.tint_symbol_4[1u].z)));
  r2.w = select(0.0f, -1.0f, (bitcast<u32>(r2.w) != 0u));
  r1.y = (r1.y + r2.w);
  r1.y = (r1.y / cb8_8.tint_symbol_4[1u].y);
  let v_64 = -(r1.yyyy);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.y >= v_64.w)));
  r3.w = fract(abs(r1.yyyy).w);
  let v_65 = -(r3.wwww);
  let v_66 = bitcast<u32>(r2.w);
  r2.w = select(v_65.w, r3.w, (v_66 != 0u));
  r6.x = (r2.w * cb8_8.tint_symbol_4[1u].y);
  r6.y = floor(r1.y);
  let v_67 = (r6.xy + v0);
  r6 = vec4<f32>(v_67.xy, r6.zw);
  let v_68 = (r6.zw * r6.xy);
  o0 = vec3<f32>(v_68.xy, o0.xyz.z).xyzx;
  r1.x = fract(r1.x);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  o0.z = fma(r1.y, r1.z, r1.x);
  let v_69 = ((-(r2.xyxx)).xy + cb1_1.tint_symbol[15u].xy);
  r1 = vec4<f32>(v_69.xy, r1.zw);
  r1.x = dot(r1.xy, r1.xy);
  r1.x = sqrt(r1.x);
  r1.y = (r1.x * cb8_8.tint_symbol_4[7u].x);
  r1.x = fma((-(r1.xxxx)).x, cb8_8.tint_symbol_4[7u].y, 1.0f);
  r1.z = (r1.x * r1.x);
  r1.x = clamp(((r1.xxxx * r1.zzzz)).x, 0.0f, 1.0f);
  r1.x = (r1.x * cb8_8.tint_symbol_4[4u].w);
  r1.z = (r1.y * r1.y);
  r1.y = clamp(((r1.yyyy * r1.zzzz)).y, 0.0f, 1.0f);
  r1.x = (r1.y * r1.x);
  let v_70 = -(cb8_8.tint_symbol_4[8u].xxxx);
  r1.y = (r2.z + v_70.y);
  let v_71 = abs(cb8_8.tint_symbol_4[8u].yyzy);
  let v_72 = clamp(((r1.yyyy * v_71)).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_73 = r1;
  r1 = vec4<f32>(v_73.x, v_72.xy, v_73.w);
  r1.x = (r1.y * r1.x);
  r1.y = ((-(r1.zzzz)).y + 1.0f);
  r1.x = (r1.y * r1.x);
  r0.w = clamp(((r0.wwww * cb8_8.tint_symbol_4[5u].xxxx)).w, 0.0f, 1.0f);
  r1.y = clamp(((abs(r1.wwww) * cb8_8.tint_symbol_4[5u].yyyy)).y, 0.0f, 1.0f);
  r0.w = (r0.w * r1.y);
  r0.w = (r0.w * r1.x);
  let v_74 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_74.xyz, r1.w);
  r2.w = dot(r1.xyz, r1.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_75 = (r1.xyz * r2.www);
  r1 = vec4<f32>(v_75.xyz, r1.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_1[2u].x))));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_1[19u].w == 0.0f)));
  let v_76 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_1[3u].xyz);
  r6 = vec4<f32>(v_76.xyz, r6.w);
  let v_77 = -(cb3_3.tint_symbol_1[3u].xyzx);
  let v_78 = (r2.xyz + v_77.xyz);
  r7 = vec4<f32>(v_78.xyz, r7.w);
  r4.w = dot(r7.xyz, cb3_3.tint_symbol_1[11u].xyz);
  r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_1[19u].wwww)).w, 0.0f, 1.0f);
  r4.w = (r4.w * cb3_3.tint_symbol_1[19u].w);
  let v_79 = fma(cb3_3.tint_symbol_1[11u].xyz, r4.www, cb3_3.tint_symbol_1[3u].xyz);
  r7 = vec4<f32>(v_79.xyz, r7.w);
  let v_80 = ((-(r2.xyzx)).xyz + r7.xyz);
  r7 = vec4<f32>(v_80.xyz, r7.w);
  let v_81 = bitcast<vec3<u32>>(r3.www);
  let v_82 = r6.xyz;
  let v_83 = select(r7.xyz, v_82, (v_81 != vec3<u32>()));
  r6 = vec4<f32>(v_83.xyz, r6.w);
  r3.w = dot(r6.xyz, r6.xyz);
  let v_84 = (r6.xyz + vec3<f32>(0.00000099999999747524f));
  r6 = vec4<f32>(v_84.xyz, r6.w);
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_85 = (r4.www * r6.xyz);
  r6 = vec4<f32>(v_85.xyz, r6.w);
  r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_1[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.w = ((-(cb3_3.tint_symbol_1[11u].wwww)).w + 1.0f);
  r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_1[11u].w);
  r3.w = (r3.w / r4.w);
  let v_86 = -(cb3_3.tint_symbol_1[11u].xyzx);
  r4.w = dot(r6.xyz, v_86.xyz);
  r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_1[27u].xxxx, cb3_3.tint_symbol_1[35u].xxxx).w, 0.0f, 1.0f);
  r6.x = dot(r6.xyz, r1.xyz);
  r6.y = clamp(r6.xxxx.y, 0.0f, 1.0f);
  r6.y = ((-(abs(r6.xxxx))).y + r6.y);
  let v_87 = abs(r6.xxxx);
  r6.x = fma(r0.w, r6.y, v_87.x);
  r4.w = (r4.w * r6.x);
  r3.w = (r3.w * r4.w);
  let v_88 = (r3.www * cb3_3.tint_symbol_1[19u].xyz);
  r6 = vec4<f32>(v_88.xyz, r6.w);
  let v_89 = bitcast<vec3<u32>>(r2.www);
  let v_90 = select(r6.xyz, vec3<f32>(), (v_89 != vec3<u32>()));
  r6 = vec4<f32>(v_90.xyz, r6.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_1[2u].x))));
  if ((bitcast<u32>(r3.w) != 0u)) {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_1[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_1[20u].w == 0.0f)));
    let v_91 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_1[4u].xyz);
    r7 = vec4<f32>(v_91.xyz, r7.w);
    let v_92 = -(cb3_3.tint_symbol_1[4u].xyzx);
    let v_93 = (r2.xyz + v_92.xyz);
    r8 = vec4<f32>(v_93.xyz, r8.w);
    r4.w = dot(r8.xyz, cb3_3.tint_symbol_1[12u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_1[20u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_1[20u].w);
    let v_94 = fma(cb3_3.tint_symbol_1[12u].xyz, r4.www, cb3_3.tint_symbol_1[4u].xyz);
    r8 = vec4<f32>(v_94.xyz, r8.w);
    let v_95 = ((-(r2.xyzx)).xyz + r8.xyz);
    r8 = vec4<f32>(v_95.xyz, r8.w);
    let v_96 = bitcast<vec3<u32>>(r3.www);
    let v_97 = r7.xyz;
    let v_98 = select(r8.xyz, v_97, (v_96 != vec3<u32>()));
    r7 = vec4<f32>(v_98.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    let v_99 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_99.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_100 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_100.xyz, r7.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_1[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_1[12u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_1[12u].w);
    r3.w = (r3.w / r4.w);
    let v_101 = -(cb3_3.tint_symbol_1[12u].xyzx);
    r4.w = dot(r7.xyz, v_101.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_1[28u].xxxx, cb3_3.tint_symbol_1[36u].xxxx).w, 0.0f, 1.0f);
    r6.w = dot(r7.xyz, r1.xyz);
    r7.x = clamp(r6.wwww.x, 0.0f, 1.0f);
    r7.x = ((-(abs(r6.wwww))).x + r7.x);
    let v_102 = abs(r6.wwww);
    r6.w = fma(r0.w, r7.x, v_102.w);
    r4.w = (r4.w * r6.w);
    r3.w = (r3.w * r4.w);
    let v_103 = fma(r3.www, cb3_3.tint_symbol_1[20u].xyz, r6.xyz);
    r7 = vec4<f32>(v_103.xyz, r7.w);
    let v_104 = bitcast<vec3<u32>>(r2.www);
    let v_105 = r6.xyz;
    let v_106 = select(r7.xyz, v_105, (v_104 != vec3<u32>()));
    r6 = vec4<f32>(v_106.xyz, r6.w);
  } else {
    r2.w = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_1[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_1[21u].w == 0.0f)));
    let v_107 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_1[5u].xyz);
    r7 = vec4<f32>(v_107.xyz, r7.w);
    let v_108 = -(cb3_3.tint_symbol_1[5u].xyzx);
    let v_109 = (r2.xyz + v_108.xyz);
    r8 = vec4<f32>(v_109.xyz, r8.w);
    r4.w = dot(r8.xyz, cb3_3.tint_symbol_1[13u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_1[21u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_1[21u].w);
    let v_110 = fma(cb3_3.tint_symbol_1[13u].xyz, r4.www, cb3_3.tint_symbol_1[5u].xyz);
    r8 = vec4<f32>(v_110.xyz, r8.w);
    let v_111 = ((-(r2.xyzx)).xyz + r8.xyz);
    r8 = vec4<f32>(v_111.xyz, r8.w);
    let v_112 = bitcast<vec3<u32>>(r3.www);
    let v_113 = r7.xyz;
    let v_114 = select(r8.xyz, v_113, (v_112 != vec3<u32>()));
    r7 = vec4<f32>(v_114.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    let v_115 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_115.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_116 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_116.xyz, r7.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_1[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_1[13u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_1[13u].w);
    r3.w = (r3.w / r4.w);
    let v_117 = -(cb3_3.tint_symbol_1[13u].xyzx);
    r4.w = dot(r7.xyz, v_117.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_1[29u].xxxx, cb3_3.tint_symbol_1[37u].xxxx).w, 0.0f, 1.0f);
    r6.w = dot(r7.xyz, r1.xyz);
    r7.x = clamp(r6.wwww.x, 0.0f, 1.0f);
    r7.x = ((-(abs(r6.wwww))).x + r7.x);
    let v_118 = abs(r6.wwww);
    r6.w = fma(r0.w, r7.x, v_118.w);
    r4.w = (r4.w * r6.w);
    r3.w = (r3.w * r4.w);
    let v_119 = fma(r3.www, cb3_3.tint_symbol_1[21u].xyz, r6.xyz);
    r7 = vec4<f32>(v_119.xyz, r7.w);
    let v_120 = bitcast<vec3<u32>>(r2.www);
    let v_121 = r6.xyz;
    let v_122 = select(r7.xyz, v_121, (v_120 != vec3<u32>()));
    r6 = vec4<f32>(v_122.xyz, r6.w);
  }
  if ((bitcast<u32>(r2.w) != 0u)) {
  } else {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_1[2u].x))));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.w)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_1[22u].w == 0.0f)));
    let v_123 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_1[6u].xyz);
    r7 = vec4<f32>(v_123.xyz, r7.w);
    let v_124 = -(cb3_3.tint_symbol_1[6u].xyzx);
    let v_125 = (r2.xyz + v_124.xyz);
    r8 = vec4<f32>(v_125.xyz, r8.w);
    r4.w = dot(r8.xyz, cb3_3.tint_symbol_1[14u].xyz);
    r4.w = clamp(((r4.wwww / cb3_3.tint_symbol_1[22u].wwww)).w, 0.0f, 1.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_1[22u].w);
    let v_126 = fma(cb3_3.tint_symbol_1[14u].xyz, r4.www, cb3_3.tint_symbol_1[6u].xyz);
    r8 = vec4<f32>(v_126.xyz, r8.w);
    let v_127 = ((-(r2.xyzx)).xyz + r8.xyz);
    r8 = vec4<f32>(v_127.xyz, r8.w);
    let v_128 = bitcast<vec3<u32>>(r3.www);
    let v_129 = r7.xyz;
    let v_130 = select(r8.xyz, v_129, (v_128 != vec3<u32>()));
    r7 = vec4<f32>(v_130.xyz, r7.w);
    r3.w = dot(r7.xyz, r7.xyz);
    let v_131 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_131.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_132 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_132.xyz, r7.w);
    r3.w = clamp(fma(-(r3.wwww), cb3_3.tint_symbol_1[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r4.w = ((-(cb3_3.tint_symbol_1[14u].wwww)).w + 1.0f);
    r4.w = fma(r4.w, r3.w, cb3_3.tint_symbol_1[14u].w);
    r3.w = (r3.w / r4.w);
    let v_133 = -(cb3_3.tint_symbol_1[14u].xyzx);
    r4.w = dot(r7.xyz, v_133.xyz);
    r4.w = clamp(fma(r4.wwww, cb3_3.tint_symbol_1[30u].xxxx, cb3_3.tint_symbol_1[38u].xxxx).w, 0.0f, 1.0f);
    r1.x = dot(r7.xyz, r1.xyz);
    r1.y = clamp(r1.xxxx.y, 0.0f, 1.0f);
    r1.y = ((-(abs(r1.xxxx))).y + r1.y);
    let v_134 = abs(r1.xxxx);
    r1.x = fma(r0.w, r1.y, v_134.x);
    r1.x = (r4.w * r1.x);
    r1.x = (r3.w * r1.x);
    let v_135 = fma(r1.xxx, cb3_3.tint_symbol_1[22u].xyz, r6.xyz);
    r1 = vec4<f32>(v_135.xyz, r1.w);
    let v_136 = bitcast<vec3<u32>>(r2.www);
    let v_137 = r6.xyz;
    let v_138 = select(r1.xyz, v_137, (v_136 != vec3<u32>()));
    r6 = vec4<f32>(v_138.xyz, r6.w);
  }
  let v_139 = (cb3_3.tint_symbol_1[43u].xyz + cb3_3.tint_symbol_1[44u].xyz);
  r1 = vec4<f32>(v_139.xyz, r1.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb8_8.tint_symbol_4[12u].x)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    let v_140 = (r3.yyy * cb1_1.tint_symbol[1u].xyz);
    r7 = vec4<f32>(v_140.xyz, r7.w);
    let v_141 = fma(r3.xxx, cb1_1.tint_symbol[0u].xyz, r7.xyz);
    r3 = vec4<f32>(v_141.xy, r3.z, v_141.z);
    let v_142 = fma(r3.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyw);
    r3 = vec4<f32>(v_142.xyz, r3.w);
    let v_143 = (r3.xyz + cb1_1.tint_symbol[3u].xyz);
    r3 = vec4<f32>(v_143.xyz, r3.w);
    let v_144 = (r2.xyz + r3.xyz);
    r7 = vec4<f32>(v_144.xyz, r7.w);
    let v_145 = -(r3.xyzx);
    let v_146 = (r2.xyz + v_145.xyz);
    r2 = vec4<f32>(v_146.xyz, r2.w);
    r2.x = dot(r2.xyz, r2.xyz);
    r2.x = sqrt(r2.x);
    r2.y = fma((-(cb6_6.tint_symbol_2[14u].zzzz)).y, 1.5f, 1.0f);
    let v_147 = (r2.xy * vec2<f32>(0.5f));
    r2 = vec4<f32>(v_147.xy, r2.zw);
    r2 = vec4<f32>(r2.xy, vec2<f32>());
    loop {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) >= 10i)));
      if ((bitcast<u32>(r3.x) != 0u)) {
        break;
      }
      let v_148 = (r0.xyz * icb0[bitcast<i32>(r2.w)].yyy);
      r3 = vec4<f32>(v_148.xyz, r3.w);
      let v_149 = fma(r4.xyz, icb0[bitcast<i32>(r2.w)].xxx, r3.xyz);
      r3 = vec4<f32>(v_149.xyz, r3.w);
      let v_150 = (r2.xxx * r3.xyz);
      r3 = vec4<f32>(v_150.xyz, r3.w);
      let v_151 = fma(r7.xyz, vec3<f32>(0.5f), r3.xyz);
      r3 = vec4<f32>(v_151.xyz, r3.w);
      let v_152 = -(cb1_1.tint_symbol[15u].xyzx);
      let v_153 = (r3.xyz + v_152.xyz);
      r3 = vec4<f32>(v_153.xyz, r3.w);
      let v_154 = (r3.yyy * cb6_6.tint_symbol_2[1u].xyz);
      r8 = vec4<f32>(v_154.xyz, r8.w);
      let v_155 = fma(r3.xxx, cb6_6.tint_symbol_2[0u].xyz, r8.xyz);
      r3 = vec4<f32>(v_155.xy, r3.z, v_155.z);
      let v_156 = fma(r3.zzz, cb6_6.tint_symbol_2[2u].xyz, r3.xyw);
      r3 = vec4<f32>(v_156.xyz, r3.w);
      let v_157 = fma(r3.xyz, cb6_6.tint_symbol_2[4u].xyz, cb6_6.tint_symbol_2[8u].xyz);
      r8 = vec4<f32>(v_157.xyz, r8.w);
      let v_158 = &(x0[0u]);
      let v_159 = r8;
      *(v_158) = vec4<f32>(v_159.xyz, (*(v_158)).w);
      let v_160 = fma(r3.xyz, cb6_6.tint_symbol_2[5u].xyz, cb6_6.tint_symbol_2[9u].xyz);
      r9 = vec4<f32>(v_160.xyz, r9.w);
      let v_161 = &(x0[1u]);
      let v_162 = r9;
      *(v_161) = vec4<f32>(v_162.xyz, (*(v_161)).w);
      let v_163 = fma(r3.xyz, cb6_6.tint_symbol_2[6u].xyz, cb6_6.tint_symbol_2[10u].xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = &(x0[2u]);
      let v_165 = r10;
      *(v_164) = vec4<f32>(v_165.xyz, (*(v_164)).w);
      let v_166 = fma(r3.xyz, cb6_6.tint_symbol_2[7u].xyz, cb6_6.tint_symbol_2[11u].xyz);
      r3 = vec4<f32>(v_166.xyz, r3.w);
      let v_167 = &(x0[3u]);
      let v_168 = r3;
      *(v_167) = vec4<f32>(v_168.xyz, (*(v_167)).w);
      let v_169 = abs(r10.yyyy);
      r3.x = max(v_169.x, abs(r10.xxxx).x);
      r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.y)));
      let v_170 = (bitcast<u32>(r3.x) != 0u);
      let v_171 = bitcast<f32>(v_1.tint_symbol_5[1i].x);
      r3.x = select(bitcast<f32>(v_1.tint_symbol_5[2i].x), v_171, v_170);
      let v_172 = abs(r9.yyyy);
      r3.y = max(v_172.y, abs(r9.xxxx).y);
      r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r2.y)));
      let v_173 = bitcast<u32>(r3.y);
      r3.x = select(r3.x, bitcast<f32>(v_1.tint_symbol_5[3i].x), (v_173 != 0u));
      let v_174 = abs(r8.yyyy);
      r3.y = max(v_174.y, abs(r8.xxxx).y);
      r3.y = bitcast<f32>(select(0u, 4294967295u, (r3.y < r2.y)));
      let v_175 = bitcast<u32>(r3.y);
      r3.x = select(r3.x, 0.0f, (v_175 != 0u));
      let v_176 = x0[bitcast<i32>(r3.x)];
      r3 = vec4<f32>(r3.x, v_176.xyz);
      r3.x = f32(bitcast<i32>(r3.x));
      r3.x = (r3.x + 0.5f);
      r3.x = (r3.x * 0.25f);
      r3.y = (r3.y + cb6_6.tint_symbol_2[14u].z);
      r3.x = fma(r3.z, 0.25f, r3.x);
      let v_177 = (r3.yw + vec2<f32>(0.5f, 0.0f));
      let v_178 = r8;
      r8 = vec4<f32>(v_177.x, v_178.y, v_177.y, v_178.w);
      r8.y = fma(cb6_6.tint_symbol_2[14u].w, 0.25f, r3.x);
      let v_179 = r8.xyxx;
      r3.x = textureSampleCompareLevel(t15, s15, v_179.xy, r8.z);
      r2.z = (r2.z + r3.x);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    r0.x = fma(r2.z, 0.10000000149011611938f, -1.0f);
    r0.x = fma(cb8_8.tint_symbol_4[12u].x, r0.x, 1.0f);
    let v_180 = (r0.xxx * cb3_3.tint_symbol_1[1u].xyz);
    r0 = vec4<f32>(v_180.xyz, r0.w);
  } else {
    let v_181 = cb3_3.tint_symbol_1[1u];
    r0 = vec4<f32>(v_181.xyz, r0.w);
  }
  let v_182 = (r1.xyz + r0.xyz);
  r0 = vec4<f32>(v_182.xyz, r0.w);
  let v_183 = (r6.xyz * cb8_8.tint_symbol_4[12u].yyy);
  r1 = vec4<f32>(v_183.xyz, r1.w);
  let v_184 = fma(r0.xyz, cb8_8.tint_symbol_4[0u].xxx, r1.xyz);
  o4 = vec4<f32>(v_184.xyz, o4.w);
  r0.x = (r0.w * cb8_8.tint_symbol_4[11u].z);
  r0.y = (r1.w * r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f >= r0.y)));
  x1[0u] = select(vec4<f32>(1.0f), vec4<f32>(-1.0f), (bitcast<vec4<u32>>(r0.yyyy) != vec4<u32>()));
  o1 = vec4<f32>(o1.xy, v0.xy);
  let v_185 = cb8_8.tint_symbol_4[4u];
  o3 = vec4<f32>(v_185.xyz, o3.w);
  o3.w = r0.x;
  o4.w = r5.w;
  o6 = r5;
  o2 = vec3<f32>(v0.xy, o2.xyz.z).xyzx;
  o2.z = 0.0f;
  o5 = vec4<f32>();
  o7[0u] = x1[0u].x;
  o7[1u] = x1[0u].y;
  o7[2u] = x1[0u].z;
  o7[3u] = x1[0u].w;
  v = vec4<f32>(o7[0u], o7[1u], o7[2u], o7[3u]);
}

struct tint_symbol_8 {
  @location(0u)
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
  @builtin(position)
  o6 : vec4<f32>,
  @builtin(clip_distances)
  o7 : array<f32, 4u>,
  @location(15u)
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec2<f32>, @builtin(instance_index) v_186 : u32) -> tint_symbol_8 {
  main_inner(v0, i32(v_186));
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6, o7, v);
}
