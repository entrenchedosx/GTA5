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

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb18_struct {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb18_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : u32) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = (v0.xy * cb10_10.tint_symbol_4[16u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = r0.xy;
  let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
  let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v11)).x;
  r1.x = ((-(r1.xxxx)).x + cb10_10.tint_symbol_4[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb10_10.tint_symbol_4[17u].z / r1.x);
  r1 = vec4<f32>(r1.x, ((v2.xyz / v2.www)).xyz);
  let v_8 = fma(r1.yzw, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v11)).xyz;
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r0.x = dot(v5.xyz, (-(r0.xyzx)).xyz);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb12_12.tint_symbol_3[0u].x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = vec4<f32>(r0.x, vec3<f32>());
    r1.w = 0.0f;
    r2 = vec4<f32>();
    r5 = vec4<f32>(vec2<f32>(), r5.zw);
    r3 = vec4<f32>();
    r4 = vec4<f32>();
  }
  let v_12 = (r1.xyz + (-(v1.xyzx)).xyz);
  r6 = vec4<f32>(v_12.xyz, r6.w);
  r5.z = dot(v4.xyz, r6.xyz);
  let v_13 = -(v3.xyzx);
  r5.w = dot(v_13.xyz, r6.xyz);
  r6.x = (r5.z * v4.w);
  r6.y = (r5.w * v3.w);
  let v_14 = fma(r6.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r5 = vec4<f32>(r5.xy, v_14.xy);
  let v_15 = fma(r5.zw, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_15.xy, r6.zw);
  let v_16 = fma(v9.xy, r6.xy, r5.zw);
  r6 = vec4<f32>(v_16.xy, r6.zw);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < v9.z)));
  r6.w = (v9.w / v9.z);
  r7.x = floor(r6.w);
  let v_17 = -(r7.xxxx);
  r6.w = (r6.w + v_17.w);
  r6.w = ((-(r6.wwww)).w + 1.0f);
  r7.x = (1.0f / v3.w);
  r7.x = (r7.x + r7.x);
  r7.x = (r7.x / v9.z);
  r6.w = fma(r6.y, r7.x, r6.w);
  let v_18 = bitcast<u32>(r5.z);
  let v_19 = r6.w;
  r6.z = select(r6.y, v_19, (v_18 != 0u));
  let v_20 = (r6.xz + v7.xy);
  r6 = vec4<f32>(r6.xy, v_20.xy);
  let v_21 = (r6.zw * v7.zw);
  r6 = vec4<f32>(r6.xy, v_21.xy);
  r7 = vec4<f32>(((v3.yzx * v4.zxy)).xyz, r7.w);
  let v_22 = fma(v4.yzx, v3.zxy, (-(r7.xyzx)).xyz);
  r7 = vec4<f32>(v_22.xyz, r7.w);
  r5.z = dot(r7.xyz, r7.xyz);
  r5.z = inverseSqrt(r5.z);
  let v_23 = (r5.zzz * r7.xyz);
  r7 = vec4<f32>(v_23.xyz, r7.w);
  let v_24 = fma(v9.xy, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_24.xy, r8.zw);
  let v_25 = (r8.xxx * v4.xyz);
  r8 = vec4<f32>(v_25.x, r8.y, v_25.yz);
  let v_26 = (r8.yyy * v_13.xyz);
  r9 = vec4<f32>(v_26.xyz, r9.w);
  r10.x = dot(r8.xzw, v8.xyz);
  r10.y = dot(r9.xyz, v8.xyz);
  r10.z = dot(r7.xyz, v8.xyz);
  let v_27 = textureSample(t3, s3, r6.zwzz.xy).xyw;
  r11 = vec4<f32>(v_27.xyz, r11.w);
  r5.z = dot(r10.xyz, r10.xyz);
  r5.z = inverseSqrt(r5.z);
  let v_28 = (r5.zz * r10.xy);
  r10 = vec4<f32>(v_28.xy, r10.zw);
  let v_29 = ((-(r10.xyxx)).xy * cb12_12.tint_symbol_3[1u].yy);
  r10 = vec4<f32>(v_29.xy, r10.zw);
  let v_30 = r6;
  r10 = vec4<f32>(r10.xy, v_30.zw);
  let v_31 = r11;
  let v_32 = r12;
  r12 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  r12.x = -1.0f;
  r12.w = (-(r11.zzzz)).w;
  r5.z = 0.0f;
  loop {
    r7.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= 8i)));
    if ((bitcast<u32>(r7.w) != 0u)) {
      break;
    }
    let v_33 = fma(r10.xy, vec2<f32>(0.125f), r10.zw);
    r13 = vec4<f32>(v_33.xy, r13.zw);
    let v_34 = textureSample(t3, s3, r13.xyxx.xy).xyw;
    r14 = vec4<f32>(v_34.xyz, r14.w);
    r7.w = bitcast<f32>(select(0u, 4294967295u, (r12.x < r12.w)));
    r15.x = (r12.x + 0.125f);
    let v_35 = bitcast<vec2<u32>>(r7.ww);
    let v_36 = r13.xy;
    let v_37 = select(r10.zw, v_36, (v_35 != vec2<u32>()));
    r10 = vec4<f32>(r10.xy, v_37.xy);
    let v_38 = (r14.xyz * vec3<f32>(1.0f, 1.0f, -1.0f));
    r15 = vec4<f32>(r15.x, v_38.xyz);
    let v_39 = bitcast<vec4<u32>>(r7.wwww);
    let v_40 = r15;
    r12 = select(r12, v_40, (v_39 != vec4<u32>()));
    r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
  }
  r10 = textureSample(t2, s2, r10.zwzz.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0.x = ((-(v6.yyyy)).x + v6.z);
    r0.x = fma(r5.w, r0.x, v6.y);
    r0.x = (r0.x * v6.x);
    let v_41 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r6.xy < vec2<f32>())));
    r5 = vec4<f32>(r5.xy, v_41.xy);
    let v_42 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r6.xy)));
    r6 = vec4<f32>(v_42.xy, r6.zw);
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r6.x)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r5.z)));
    r5.z = bitcast<f32>((bitcast<u32>(r6.y) | bitcast<u32>(r5.z)));
    let v_43 = bitcast<u32>(r5.z);
    r0.x = select(r0.x, 0.0f, (v_43 != 0u));
    let v_44 = fma(r12.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(r5.xy, v_44.xy);
    r6.x = dot(r5.zw, r5.zw);
    r6.x = ((-(r6.xxxx)).x + 1.0f);
    r6.x = sqrt(abs(r6.xxxx).x);
    let v_45 = (r9.xyz * r5.www);
    r6 = vec4<f32>(r6.x, v_45.xyz);
    let v_46 = fma(r5.zzz, r8.xzw, r6.yzw);
    r6 = vec4<f32>(r6.x, v_46.xyz);
    let v_47 = fma(r6.xxx, r7.xyz, r6.yzw);
    r4 = vec4<f32>(v_47.xyz, r4.w);
    r6.x = v8.w;
    r6.y = v1.w;
    r6.z = v5.w;
    r6.w = 1.0f;
    r6 = (r6 * r10);
    let v_48 = (r6.xyz * r6.xyz);
    r6 = vec4<f32>(v_48.xyz, r6.w);
    r5.z = dot(r12.yz, r12.yz);
    r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z >= 0.00200000009499490261f)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) & 1065353216u));
    let v_49 = (r5.zzz * r6.xyz);
    r0 = vec4<f32>(r0.x, v_49.xyz);
    r6.x = v6.w;
    r6.y = v10.w;
    r6.z = 1.0f;
    let v_50 = (r5.zzz * r6.xyz);
    r6 = vec4<f32>(v_50.xyz, r6.w);
    r3.w = (r5.z * cb12_12.tint_symbol_3[0u].z);
    r1.w = (r0.x * r6.w);
    let v_51 = (r6.xy * cb2_2.tint_symbol_1[15u].zy);
    r2 = vec4<f32>(v_51.xy, r2.zw);
    r5.y = (r6.z * cb12_12.tint_symbol_3[1u].x);
    r2.z = cb2_2.tint_symbol_1[16u].z;
    r2.w = cb12_12.tint_symbol_3[0u].y;
    let v_52 = r1;
    r3 = vec4<f32>(v_52.xyz, r3.w);
    r5.x = cb12_12.tint_symbol_3[0u].w;
    r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    let v_53 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
    r1 = vec4<f32>(v_53.xyz, r1.w);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = inverseSqrt(r0.x);
    let v_54 = (r0.xxx * r1.xyz);
    r6 = vec4<f32>(v_54.xyz, r6.w);
    let v_55 = -(cb3_3.tint_symbol_2[0u].xyzx);
    let v_56 = fma(r1.xyz, r0.xxx, v_55.xyz);
    r7 = vec4<f32>(v_56.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_57 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_57.xyz, r7.w);
    r3.w = clamp(r3.wwww.w, 0.0f, 1.0f);
    let v_58 = (r2.xy * r2.xy);
    r2 = vec4<f32>(v_58.xy, r2.zw);
    r4.w = (r2.w + -500.0f);
    r4.w = max(r4.w, 0.0f);
    let v_59 = -(r4.wwww);
    r2.w = (r2.w + v_59.w);
    r4.w = (r4.w * 558.0f);
    r2.w = fma(r2.w, 3.0f, r4.w);
    let v_60 = dot(r4.xyz, v_55.xyz);
    r4.w = clamp(vec4<f32>(v_60, v_60, v_60, v_60).w, 0.0f, 1.0f);
    let v_61 = dot(r6.xyz, r4.xyz);
    r8.x = clamp(vec4<f32>(v_61, v_61, v_61, v_61).x, 0.0f, 1.0f);
    let v_62 = dot(r7.xyz, v_55.xyz);
    r8.y = clamp(vec4<f32>(v_62, v_62, v_62, v_62).y, 0.0f, 1.0f);
    let v_63 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
    r5 = vec4<f32>(r5.xy, v_63.xy);
    let v_64 = (r5.zw * r5.zw);
    let v_65 = r8;
    r8 = vec4<f32>(v_65.x, v_64.xy, v_65.w);
    let v_66 = (r8.yz * r8.yz);
    let v_67 = r8;
    r8 = vec4<f32>(v_67.x, v_66.xy, v_67.w);
    let v_68 = (r5.zw * r8.yz);
    r5 = vec4<f32>(r5.xy, v_68.xy);
    r6.w = ((-(r5.xxxx)).w + 1.0f);
    let v_69 = fma(r5.xx, r5.zw, r6.ww);
    r5 = vec4<f32>(r5.xy, v_69.xy);
    let v_70 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
    let v_71 = r8;
    r8 = vec4<f32>(v_71.x, v_70.xy, v_71.w);
    r2.w = (r8.y * 0.125f);
    r5.z = fma((-(r3.wwww)).z, r5.z, 1.0f);
    r7.x = dot(r4.xyz, r7.xyz);
    r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r8.z);
    r7.x = exp2(r7.x);
    r5.w = (r5.w * r7.x);
    r5.w = (r2.w * r5.w);
    r5.w = (r3.w * r5.w);
    r5.w = (r4.w * r5.w);
    r4.w = (r4.w * r5.z);
    let v_72 = fma(r0.yzw, r4.www, r5.www);
    r7 = vec4<f32>(v_72.xyz, r7.w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r4.w) != 0u)) {
      r10 = vec4<f32>(vec3<f32>(), r10.w);
      r9 = vec4<f32>(vec3<f32>(), r9.w);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
      let v_73 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[3u].xyz);
      r9 = vec4<f32>(v_73.xyz, r9.w);
      let v_74 = -(cb3_3.tint_symbol_2[3u].xyzx);
      let v_75 = (r3.xyz + v_74.xyz);
      r10 = vec4<f32>(v_75.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
      let v_76 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
      r10 = vec4<f32>(v_76.xyz, r10.w);
      let v_77 = ((-(r3.xyzx)).xyz + r10.xyz);
      r10 = vec4<f32>(v_77.xyz, r10.w);
      let v_78 = bitcast<vec3<u32>>(r5.www);
      let v_79 = r9.xyz;
      let v_80 = select(r10.xyz, v_79, (v_78 != vec3<u32>()));
      r9 = vec4<f32>(v_80.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_81 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_81.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_82 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_82.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[11u].w);
      r5.w = (r5.w / r7.w);
      let v_83 = -(cb3_3.tint_symbol_2[11u].xyzx);
      r7.w = dot(r9.xyz, v_83.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
      let v_84 = dot(r9.xyz, r4.xyz);
      r8.y = clamp(vec4<f32>(v_84, v_84, v_84, v_84).y, 0.0f, 1.0f);
      r7.w = (r7.w * r8.y);
      r8.y = (r5.w * r7.w);
      let v_85 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
      r10 = vec4<f32>(v_85.xyz, r10.w);
      let v_86 = (r0.yzw * r10.xyz);
      r10 = vec4<f32>(v_86.xyz, r10.w);
      let v_87 = fma(r1.xyz, r0.xxx, r9.xyz);
      r9 = vec4<f32>(v_87.xyz, r9.w);
      r8.y = dot(r9.xyz, r9.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_88 = (r8.yyy * r9.xyz);
      r9 = vec4<f32>(v_88.xyz, r9.w);
      let v_89 = dot(r9.xyz, r6.xyz);
      r8.y = clamp(vec4<f32>(v_89, v_89, v_89, v_89).y, 0.0f, 1.0f);
      r8.y = ((-(r8.yyyy)).y + 1.0f);
      r8.w = (r8.y * r8.y);
      r8.w = (r8.w * r8.w);
      r8.y = (r8.w * r8.y);
      r8.y = fma(r5.x, r8.y, r6.w);
      let v_90 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_90, v_90, v_90, v_90).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.z);
      r8.w = exp2(r8.w);
      r8.y = (r8.w * r8.y);
      r7.w = (r7.w * r8.y);
      r5.w = (r5.w * r7.w);
      r5.w = (r2.w * r5.w);
      let v_91 = (r5.www * cb3_3.tint_symbol_2[19u].xyz);
      r9 = vec4<f32>(v_91.xyz, r9.w);
    }
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r5.w) != 0u)) {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r5.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      let v_92 = bitcast<u32>(r7.w);
      let v_93 = r5.w;
      r4.w = select(r4.w, v_93, (v_92 != 0u));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
        let v_94 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[4u].xyz);
        r11 = vec4<f32>(v_94.xyz, r11.w);
        let v_95 = -(cb3_3.tint_symbol_2[4u].xyzx);
        let v_96 = (r3.xyz + v_95.xyz);
        r12 = vec4<f32>(v_96.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
        let v_97 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
        r12 = vec4<f32>(v_97.xyz, r12.w);
        let v_98 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_98.xyz, r12.w);
        let v_99 = bitcast<vec3<u32>>(r5.www);
        let v_100 = r11.xyz;
        let v_101 = select(r12.xyz, v_100, (v_99 != vec3<u32>()));
        r11 = vec4<f32>(v_101.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_102 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_102.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_103 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_103.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[12u].w);
        r5.w = (r5.w / r7.w);
        let v_104 = -(cb3_3.tint_symbol_2[12u].xyzx);
        r7.w = dot(r11.xyz, v_104.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
        let v_105 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_105, v_105, v_105, v_105).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_106 = (r8.yyy * cb3_3.tint_symbol_2[20u].xyz);
        r12 = vec4<f32>(v_106.xyz, r12.w);
        let v_107 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_107.xyz, r10.w);
        let v_108 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_108.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_109 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_109.xyz, r11.w);
        let v_110 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_110, v_110, v_110, v_110).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_111 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_111, v_111, v_111, v_111).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_112 = fma(r5.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
        r9 = vec4<f32>(v_112.xyz, r9.w);
      }
    } else {
      r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
      r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[21u].w == 0.0f)));
        let v_113 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[5u].xyz);
        r11 = vec4<f32>(v_113.xyz, r11.w);
        let v_114 = -(cb3_3.tint_symbol_2[5u].xyzx);
        let v_115 = (r3.xyz + v_114.xyz);
        r12 = vec4<f32>(v_115.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
        let v_116 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
        r12 = vec4<f32>(v_116.xyz, r12.w);
        let v_117 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_117.xyz, r12.w);
        let v_118 = bitcast<vec3<u32>>(r5.www);
        let v_119 = r11.xyz;
        let v_120 = select(r12.xyz, v_119, (v_118 != vec3<u32>()));
        r11 = vec4<f32>(v_120.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_121 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_121.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_122 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_122.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[13u].w);
        r5.w = (r5.w / r7.w);
        let v_123 = -(cb3_3.tint_symbol_2[13u].xyzx);
        r7.w = dot(r11.xyz, v_123.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
        let v_124 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_124, v_124, v_124, v_124).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_125 = (r8.yyy * cb3_3.tint_symbol_2[21u].xyz);
        r12 = vec4<f32>(v_125.xyz, r12.w);
        let v_126 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_126.xyz, r10.w);
        let v_127 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_127.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_128 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_128.xyz, r11.w);
        let v_129 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_129, v_129, v_129, v_129).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_130 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_130, v_130, v_130, v_130).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_131 = fma(r5.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
        r9 = vec4<f32>(v_131.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
      r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
        let v_132 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[6u].xyz);
        r11 = vec4<f32>(v_132.xyz, r11.w);
        let v_133 = -(cb3_3.tint_symbol_2[6u].xyzx);
        let v_134 = (r3.xyz + v_133.xyz);
        r12 = vec4<f32>(v_134.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
        let v_135 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
        r12 = vec4<f32>(v_135.xyz, r12.w);
        let v_136 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_136.xyz, r12.w);
        let v_137 = bitcast<vec3<u32>>(r5.www);
        let v_138 = r11.xyz;
        let v_139 = select(r12.xyz, v_138, (v_137 != vec3<u32>()));
        r11 = vec4<f32>(v_139.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_140 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_140.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_141 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_141.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[14u].w);
        r5.w = (r5.w / r7.w);
        let v_142 = -(cb3_3.tint_symbol_2[14u].xyzx);
        r7.w = dot(r11.xyz, v_142.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
        let v_143 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_143, v_143, v_143, v_143).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_144 = (r8.yyy * cb3_3.tint_symbol_2[22u].xyz);
        r12 = vec4<f32>(v_144.xyz, r12.w);
        let v_145 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_145.xyz, r10.w);
        let v_146 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_146.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_147 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_147.xyz, r11.w);
        let v_148 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_148, v_148, v_148, v_148).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_149 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_149, v_149, v_149, v_149).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_150 = fma(r5.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
        r9 = vec4<f32>(v_150.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
      r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[23u].w == 0.0f)));
        let v_151 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[7u].xyz);
        r11 = vec4<f32>(v_151.xyz, r11.w);
        let v_152 = -(cb3_3.tint_symbol_2[7u].xyzx);
        let v_153 = (r3.xyz + v_152.xyz);
        r12 = vec4<f32>(v_153.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
        let v_154 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
        r12 = vec4<f32>(v_154.xyz, r12.w);
        let v_155 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_155.xyz, r12.w);
        let v_156 = bitcast<vec3<u32>>(r5.www);
        let v_157 = r11.xyz;
        let v_158 = select(r12.xyz, v_157, (v_156 != vec3<u32>()));
        r11 = vec4<f32>(v_158.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_159 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_159.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_160 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_160.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[15u].w);
        r5.w = (r5.w / r7.w);
        let v_161 = -(cb3_3.tint_symbol_2[15u].xyzx);
        r7.w = dot(r11.xyz, v_161.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
        let v_162 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_162, v_162, v_162, v_162).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_163 = (r8.yyy * cb3_3.tint_symbol_2[23u].xyz);
        r12 = vec4<f32>(v_163.xyz, r12.w);
        let v_164 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_164.xyz, r10.w);
        let v_165 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_165.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_166 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_166.xyz, r11.w);
        let v_167 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_167, v_167, v_167, v_167).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_168 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_169 = fma(r5.www, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
        r9 = vec4<f32>(v_169.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
      r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[24u].w == 0.0f)));
        let v_170 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[8u].xyz);
        r11 = vec4<f32>(v_170.xyz, r11.w);
        let v_171 = -(cb3_3.tint_symbol_2[8u].xyzx);
        let v_172 = (r3.xyz + v_171.xyz);
        r12 = vec4<f32>(v_172.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
        let v_173 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
        r12 = vec4<f32>(v_173.xyz, r12.w);
        let v_174 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_174.xyz, r12.w);
        let v_175 = bitcast<vec3<u32>>(r5.www);
        let v_176 = r11.xyz;
        let v_177 = select(r12.xyz, v_176, (v_175 != vec3<u32>()));
        r11 = vec4<f32>(v_177.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_178 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_178.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_179 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_179.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[16u].w);
        r5.w = (r5.w / r7.w);
        let v_180 = -(cb3_3.tint_symbol_2[16u].xyzx);
        r7.w = dot(r11.xyz, v_180.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
        let v_181 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_181, v_181, v_181, v_181).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_182 = (r8.yyy * cb3_3.tint_symbol_2[24u].xyz);
        r12 = vec4<f32>(v_182.xyz, r12.w);
        let v_183 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_183.xyz, r10.w);
        let v_184 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_184.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_185 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_185.xyz, r11.w);
        let v_186 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_186, v_186, v_186, v_186).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_187 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_187, v_187, v_187, v_187).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_188 = fma(r5.www, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
        r9 = vec4<f32>(v_188.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
      r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[25u].w == 0.0f)));
        let v_189 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[9u].xyz);
        r11 = vec4<f32>(v_189.xyz, r11.w);
        let v_190 = -(cb3_3.tint_symbol_2[9u].xyzx);
        let v_191 = (r3.xyz + v_190.xyz);
        r12 = vec4<f32>(v_191.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
        let v_192 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
        r12 = vec4<f32>(v_192.xyz, r12.w);
        let v_193 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_193.xyz, r12.w);
        let v_194 = bitcast<vec3<u32>>(r5.www);
        let v_195 = r11.xyz;
        let v_196 = select(r12.xyz, v_195, (v_194 != vec3<u32>()));
        r11 = vec4<f32>(v_196.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_197 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_197.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_198 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_198.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[17u].w);
        r5.w = (r5.w / r7.w);
        let v_199 = -(cb3_3.tint_symbol_2[17u].xyzx);
        r7.w = dot(r11.xyz, v_199.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
        let v_200 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_200, v_200, v_200, v_200).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_201 = (r8.yyy * cb3_3.tint_symbol_2[25u].xyz);
        r12 = vec4<f32>(v_201.xyz, r12.w);
        let v_202 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_202.xyz, r10.w);
        let v_203 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_203.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_204 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_204.xyz, r11.w);
        let v_205 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_205, v_205, v_205, v_205).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_206 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_206, v_206, v_206, v_206).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_207 = fma(r5.www, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
        r9 = vec4<f32>(v_207.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
        let v_208 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[10u].xyz);
        r11 = vec4<f32>(v_208.xyz, r11.w);
        let v_209 = -(cb3_3.tint_symbol_2[10u].xyzx);
        let v_210 = (r3.xyz + v_209.xyz);
        r12 = vec4<f32>(v_210.xyz, r12.w);
        r5.w = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
        r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
        r5.w = (r5.w * cb3_3.tint_symbol_2[26u].w);
        let v_211 = fma(cb3_3.tint_symbol_2[18u].xyz, r5.www, cb3_3.tint_symbol_2[10u].xyz);
        r12 = vec4<f32>(v_211.xyz, r12.w);
        let v_212 = ((-(r3.xyzx)).xyz + r12.xyz);
        r3 = vec4<f32>(v_212.xyz, r3.w);
        let v_213 = bitcast<vec3<u32>>(r4.www);
        let v_214 = r11.xyz;
        let v_215 = select(r3.xyz, v_214, (v_213 != vec3<u32>()));
        r3 = vec4<f32>(v_215.xyz, r3.w);
        r4.w = dot(r3.xyz, r3.xyz);
        let v_216 = (r3.xyz + vec3<f32>(0.00000099999999747524f));
        r3 = vec4<f32>(v_216.xyz, r3.w);
        r5.w = dot(r3.xyz, r3.xyz);
        r5.w = inverseSqrt(r5.w);
        let v_217 = (r3.xyz * r5.www);
        r3 = vec4<f32>(v_217.xyz, r3.w);
        r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r5.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
        r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[18u].w);
        r4.w = (r4.w / r5.w);
        let v_218 = -(cb3_3.tint_symbol_2[18u].xyzx);
        r5.w = dot(r3.xyz, v_218.xyz);
        r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
        let v_219 = dot(r3.xyz, r4.xyz);
        r7.w = clamp(vec4<f32>(v_219, v_219, v_219, v_219).w, 0.0f, 1.0f);
        r5.w = (r5.w * r7.w);
        r7.w = (r4.w * r5.w);
        let v_220 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
        r11 = vec4<f32>(v_220.xyz, r11.w);
        let v_221 = fma(r11.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_221.xyz, r10.w);
        let v_222 = fma(r1.xyz, r0.xxx, r3.xyz);
        r1 = vec4<f32>(v_222.xyz, r1.w);
        r0.x = dot(r1.xyz, r1.xyz);
        r0.x = inverseSqrt(r0.x);
        let v_223 = (r0.xxx * r1.xyz);
        r1 = vec4<f32>(v_223.xyz, r1.w);
        let v_224 = dot(r1.xyz, r6.xyz);
        r0.x = clamp(vec4<f32>(v_224, v_224, v_224, v_224).x, 0.0f, 1.0f);
        r0.x = ((-(r0.xxxx)).x + 1.0f);
        r3.x = (r0.x * r0.x);
        r3.x = (r3.x * r3.x);
        r0.x = (r0.x * r3.x);
        r0.x = fma(r5.x, r0.x, r6.w);
        let v_225 = dot(r1.xyz, r4.xyz);
        r1.x = clamp(vec4<f32>(v_225, v_225, v_225, v_225).x, 0.0f, 1.0f);
        r1.x = log2(r1.x);
        r1.x = (r1.x * r8.z);
        r1.x = exp2(r1.x);
        r0.x = (r0.x * r1.x);
        r0.x = (r5.w * r0.x);
        r0.x = (r4.w * r0.x);
        r0.x = (r2.w * r0.x);
        let v_226 = fma(r0.xxx, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
        r9 = vec4<f32>(v_226.xyz, r9.w);
      }
    }
    r0.x = (r5.z * r5.z);
    r1.x = (r3.w * r3.w);
    let v_227 = (r9.xyz * r1.xxx);
    r1 = vec4<f32>(v_227.xyz, r1.w);
    let v_228 = fma(r0.xxx, r10.xyz, r1.xyz);
    r1 = vec4<f32>(v_228.xyz, r1.w);
    let v_229 = fma(r7.xyz, cb3_3.tint_symbol_2[1u].xyz, r1.xyz);
    r1 = vec4<f32>(v_229.xyz, r1.w);
    r0.x = (r4.z + cb3_3.tint_symbol_2[43u].w);
    r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
    r0.x = max(r0.x, 0.0f);
    let v_230 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
    r3 = vec4<f32>(v_230.xyz, r3.w);
    r2.w = ((-(r2.zzzz)).w + 1.0f);
    let v_231 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
    r6 = vec4<f32>(v_231.xyz, r6.w);
    let v_232 = (r2.zzz * r6.xyz);
    r6 = vec4<f32>(v_232.xyz, r6.w);
    let v_233 = fma(r3.xyz, r2.www, r6.xyz);
    r3 = vec4<f32>(v_233.xyz, r3.w);
    let v_234 = (r2.yyy * r3.xyz);
    r2 = vec4<f32>(r2.x, v_234.xyz);
    let v_235 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
    r3 = vec4<f32>(v_235.xyz, r3.w);
    r6.x = cb3_3.tint_symbol_2[46u].w;
    r6.y = cb3_3.tint_symbol_2[47u].w;
    r6.z = cb3_3.tint_symbol_2[48u].w;
    let v_236 = dot(r6.xyz, r4.xyz);
    r0.x = clamp(vec4<f32>(v_236, v_236, v_236, v_236).x, 0.0f, 1.0f);
    let v_237 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r3.xyz);
    r3 = vec4<f32>(v_237.xyz, r3.w);
    let v_238 = fma(r3.xyz, r2.xxx, r2.yzw);
    r2 = vec4<f32>(v_238.xyz, r2.w);
    let v_239 = (r5.zzz * r2.xyz);
    r2 = vec4<f32>(v_239.xyz, r2.w);
    let v_240 = fma(r2.xyz, r0.yzw, r1.xyz);
    r1 = vec4<f32>(v_240.xyz, r1.w);
    r0.x = (r5.y * r8.x);
    let v_241 = fma(r0.yzw, r0.xxx, r1.xyz);
    r0 = vec4<f32>(v_241.xyz, r0.w);
    r1.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  } else {
    r0 = vec4<f32>(vec3<f32>(), r0.w);
    r1.w = 0.0f;
  }
  let v_242 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r1 = vec4<f32>(v_242.xyz, r1.w);
  o0 = r1;
}

@fragment
fn main(@builtin(position) v_243 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(sample_index) v11 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_243, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  return o0;
}
