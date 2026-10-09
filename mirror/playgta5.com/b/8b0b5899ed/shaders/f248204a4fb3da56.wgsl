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
  r5.z = textureSample(t3, s3, r6.zwzz.xy).w;
  r7.w = dot(r10.xyz, r10.xyz);
  r7.w = inverseSqrt(r7.w);
  let v_27 = (r7.ww * r10.xy);
  r10 = vec4<f32>(v_27.xy, r10.zw);
  r7.w = (cb12_12.tint_symbol_3[1u].y * 0.5f);
  let v_28 = -(r7.wwww);
  r5.z = fma(r5.z, cb12_12.tint_symbol_3[1u].y, v_28.z);
  let v_29 = fma(r5.zz, r10.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, v_29.xy);
  let v_30 = textureSample(t3, s3, r6.zwzz.xy).xy;
  r10 = vec4<f32>(v_30.xy, r10.zw);
  r11 = textureSample(t2, s2, r6.zwzz.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0.x = ((-(v6.yyyy)).x + v6.z);
    r0.x = fma(r5.w, r0.x, v6.y);
    r0.x = (r0.x * v6.x);
    let v_31 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r6.xy < vec2<f32>())));
    r5 = vec4<f32>(r5.xy, v_31.xy);
    let v_32 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r6.xy)));
    r6 = vec4<f32>(v_32.xy, r6.zw);
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r6.x)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r5.z)));
    r5.z = bitcast<f32>((bitcast<u32>(r6.y) | bitcast<u32>(r5.z)));
    let v_33 = bitcast<u32>(r5.z);
    r0.x = select(r0.x, 0.0f, (v_33 != 0u));
    let v_34 = fma(r10.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(r5.xy, v_34.xy);
    r6.x = dot(r5.zw, r5.zw);
    r6.x = ((-(r6.xxxx)).x + 1.0f);
    r6.x = sqrt(abs(r6.xxxx).x);
    let v_35 = (r9.xyz * r5.www);
    r6 = vec4<f32>(r6.x, v_35.xyz);
    let v_36 = fma(r5.zzz, r8.xzw, r6.yzw);
    r6 = vec4<f32>(r6.x, v_36.xyz);
    let v_37 = fma(r6.xxx, r7.xyz, r6.yzw);
    r4 = vec4<f32>(v_37.xyz, r4.w);
    r6.x = v8.w;
    r6.y = v1.w;
    r6.z = v5.w;
    r6.w = 1.0f;
    r6 = (r6 * r11);
    let v_38 = (r6.xyz * r6.xyz);
    r6 = vec4<f32>(v_38.xyz, r6.w);
    r5.z = dot(r10.xy, r10.xy);
    r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z >= 0.00200000009499490261f)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) & 1065353216u));
    let v_39 = (r5.zzz * r6.xyz);
    r0 = vec4<f32>(r0.x, v_39.xyz);
    r6.x = v6.w;
    r6.y = v10.w;
    r6.z = 1.0f;
    let v_40 = (r5.zzz * r6.xyz);
    r6 = vec4<f32>(v_40.xyz, r6.w);
    r3.w = (r5.z * cb12_12.tint_symbol_3[0u].z);
    r1.w = (r0.x * r6.w);
    let v_41 = (r6.xy * cb2_2.tint_symbol_1[15u].zy);
    r2 = vec4<f32>(v_41.xy, r2.zw);
    r5.y = (r6.z * cb12_12.tint_symbol_3[1u].x);
    r2.z = cb2_2.tint_symbol_1[16u].z;
    r2.w = cb12_12.tint_symbol_3[0u].y;
    let v_42 = r1;
    r3 = vec4<f32>(v_42.xyz, r3.w);
    r5.x = cb12_12.tint_symbol_3[0u].w;
    r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    let v_43 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
    r1 = vec4<f32>(v_43.xyz, r1.w);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = inverseSqrt(r0.x);
    let v_44 = (r0.xxx * r1.xyz);
    r6 = vec4<f32>(v_44.xyz, r6.w);
    let v_45 = -(cb3_3.tint_symbol_2[0u].xyzx);
    let v_46 = fma(r1.xyz, r0.xxx, v_45.xyz);
    r7 = vec4<f32>(v_46.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_47 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_47.xyz, r7.w);
    r3.w = clamp(r3.wwww.w, 0.0f, 1.0f);
    let v_48 = (r2.xy * r2.xy);
    r2 = vec4<f32>(v_48.xy, r2.zw);
    r4.w = (r2.w + -500.0f);
    r4.w = max(r4.w, 0.0f);
    let v_49 = -(r4.wwww);
    r2.w = (r2.w + v_49.w);
    r4.w = (r4.w * 558.0f);
    r2.w = fma(r2.w, 3.0f, r4.w);
    let v_50 = dot(r4.xyz, v_45.xyz);
    r4.w = clamp(vec4<f32>(v_50, v_50, v_50, v_50).w, 0.0f, 1.0f);
    let v_51 = dot(r6.xyz, r4.xyz);
    r8.x = clamp(vec4<f32>(v_51, v_51, v_51, v_51).x, 0.0f, 1.0f);
    let v_52 = dot(r7.xyz, v_45.xyz);
    r8.y = clamp(vec4<f32>(v_52, v_52, v_52, v_52).y, 0.0f, 1.0f);
    let v_53 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
    r5 = vec4<f32>(r5.xy, v_53.xy);
    let v_54 = (r5.zw * r5.zw);
    let v_55 = r8;
    r8 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
    let v_56 = (r8.yz * r8.yz);
    let v_57 = r8;
    r8 = vec4<f32>(v_57.x, v_56.xy, v_57.w);
    let v_58 = (r5.zw * r8.yz);
    r5 = vec4<f32>(r5.xy, v_58.xy);
    r6.w = ((-(r5.xxxx)).w + 1.0f);
    let v_59 = fma(r5.xx, r5.zw, r6.ww);
    r5 = vec4<f32>(r5.xy, v_59.xy);
    let v_60 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
    let v_61 = r8;
    r8 = vec4<f32>(v_61.x, v_60.xy, v_61.w);
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
    let v_62 = fma(r0.yzw, r4.www, r5.www);
    r7 = vec4<f32>(v_62.xyz, r7.w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r4.w) != 0u)) {
      r10 = vec4<f32>(vec3<f32>(), r10.w);
      r9 = vec4<f32>(vec3<f32>(), r9.w);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
      let v_63 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[3u].xyz);
      r9 = vec4<f32>(v_63.xyz, r9.w);
      let v_64 = -(cb3_3.tint_symbol_2[3u].xyzx);
      let v_65 = (r3.xyz + v_64.xyz);
      r10 = vec4<f32>(v_65.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
      let v_66 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
      r10 = vec4<f32>(v_66.xyz, r10.w);
      let v_67 = ((-(r3.xyzx)).xyz + r10.xyz);
      r10 = vec4<f32>(v_67.xyz, r10.w);
      let v_68 = bitcast<vec3<u32>>(r5.www);
      let v_69 = r9.xyz;
      let v_70 = select(r10.xyz, v_69, (v_68 != vec3<u32>()));
      r9 = vec4<f32>(v_70.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_71 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_71.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_72 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_72.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[11u].w);
      r5.w = (r5.w / r7.w);
      let v_73 = -(cb3_3.tint_symbol_2[11u].xyzx);
      r7.w = dot(r9.xyz, v_73.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
      let v_74 = dot(r9.xyz, r4.xyz);
      r8.y = clamp(vec4<f32>(v_74, v_74, v_74, v_74).y, 0.0f, 1.0f);
      r7.w = (r7.w * r8.y);
      r8.y = (r5.w * r7.w);
      let v_75 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
      r10 = vec4<f32>(v_75.xyz, r10.w);
      let v_76 = (r0.yzw * r10.xyz);
      r10 = vec4<f32>(v_76.xyz, r10.w);
      let v_77 = fma(r1.xyz, r0.xxx, r9.xyz);
      r9 = vec4<f32>(v_77.xyz, r9.w);
      r8.y = dot(r9.xyz, r9.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_78 = (r8.yyy * r9.xyz);
      r9 = vec4<f32>(v_78.xyz, r9.w);
      let v_79 = dot(r9.xyz, r6.xyz);
      r8.y = clamp(vec4<f32>(v_79, v_79, v_79, v_79).y, 0.0f, 1.0f);
      r8.y = ((-(r8.yyyy)).y + 1.0f);
      r8.w = (r8.y * r8.y);
      r8.w = (r8.w * r8.w);
      r8.y = (r8.w * r8.y);
      r8.y = fma(r5.x, r8.y, r6.w);
      let v_80 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_80, v_80, v_80, v_80).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.z);
      r8.w = exp2(r8.w);
      r8.y = (r8.w * r8.y);
      r7.w = (r7.w * r8.y);
      r5.w = (r5.w * r7.w);
      r5.w = (r2.w * r5.w);
      let v_81 = (r5.www * cb3_3.tint_symbol_2[19u].xyz);
      r9 = vec4<f32>(v_81.xyz, r9.w);
    }
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r5.w) != 0u)) {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r5.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      let v_82 = bitcast<u32>(r7.w);
      let v_83 = r5.w;
      r4.w = select(r4.w, v_83, (v_82 != 0u));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
        let v_84 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[4u].xyz);
        r11 = vec4<f32>(v_84.xyz, r11.w);
        let v_85 = -(cb3_3.tint_symbol_2[4u].xyzx);
        let v_86 = (r3.xyz + v_85.xyz);
        r12 = vec4<f32>(v_86.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
        let v_87 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
        r12 = vec4<f32>(v_87.xyz, r12.w);
        let v_88 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_88.xyz, r12.w);
        let v_89 = bitcast<vec3<u32>>(r5.www);
        let v_90 = r11.xyz;
        let v_91 = select(r12.xyz, v_90, (v_89 != vec3<u32>()));
        r11 = vec4<f32>(v_91.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_92 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_92.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_93 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_93.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[12u].w);
        r5.w = (r5.w / r7.w);
        let v_94 = -(cb3_3.tint_symbol_2[12u].xyzx);
        r7.w = dot(r11.xyz, v_94.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
        let v_95 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_95, v_95, v_95, v_95).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_96 = (r8.yyy * cb3_3.tint_symbol_2[20u].xyz);
        r12 = vec4<f32>(v_96.xyz, r12.w);
        let v_97 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_97.xyz, r10.w);
        let v_98 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_98.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_99 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_99.xyz, r11.w);
        let v_100 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_100, v_100, v_100, v_100).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_101 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_101, v_101, v_101, v_101).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_102 = fma(r5.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
        r9 = vec4<f32>(v_102.xyz, r9.w);
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
        let v_103 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[5u].xyz);
        r11 = vec4<f32>(v_103.xyz, r11.w);
        let v_104 = -(cb3_3.tint_symbol_2[5u].xyzx);
        let v_105 = (r3.xyz + v_104.xyz);
        r12 = vec4<f32>(v_105.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
        let v_106 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
        r12 = vec4<f32>(v_106.xyz, r12.w);
        let v_107 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_107.xyz, r12.w);
        let v_108 = bitcast<vec3<u32>>(r5.www);
        let v_109 = r11.xyz;
        let v_110 = select(r12.xyz, v_109, (v_108 != vec3<u32>()));
        r11 = vec4<f32>(v_110.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_111 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_111.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_112 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_112.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[13u].w);
        r5.w = (r5.w / r7.w);
        let v_113 = -(cb3_3.tint_symbol_2[13u].xyzx);
        r7.w = dot(r11.xyz, v_113.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
        let v_114 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_114, v_114, v_114, v_114).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_115 = (r8.yyy * cb3_3.tint_symbol_2[21u].xyz);
        r12 = vec4<f32>(v_115.xyz, r12.w);
        let v_116 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_116.xyz, r10.w);
        let v_117 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_117.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_118 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_118.xyz, r11.w);
        let v_119 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_119, v_119, v_119, v_119).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_120 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_120, v_120, v_120, v_120).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_121 = fma(r5.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
        r9 = vec4<f32>(v_121.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[22u].w == 0.0f)));
        let v_122 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[6u].xyz);
        r11 = vec4<f32>(v_122.xyz, r11.w);
        let v_123 = -(cb3_3.tint_symbol_2[6u].xyzx);
        let v_124 = (r3.xyz + v_123.xyz);
        r12 = vec4<f32>(v_124.xyz, r12.w);
        r5.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
        r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
        r5.w = (r5.w * cb3_3.tint_symbol_2[22u].w);
        let v_125 = fma(cb3_3.tint_symbol_2[14u].xyz, r5.www, cb3_3.tint_symbol_2[6u].xyz);
        r12 = vec4<f32>(v_125.xyz, r12.w);
        let v_126 = ((-(r3.xyzx)).xyz + r12.xyz);
        r3 = vec4<f32>(v_126.xyz, r3.w);
        let v_127 = bitcast<vec3<u32>>(r4.www);
        let v_128 = r11.xyz;
        let v_129 = select(r3.xyz, v_128, (v_127 != vec3<u32>()));
        r3 = vec4<f32>(v_129.xyz, r3.w);
        r4.w = dot(r3.xyz, r3.xyz);
        let v_130 = (r3.xyz + vec3<f32>(0.00000099999999747524f));
        r3 = vec4<f32>(v_130.xyz, r3.w);
        r5.w = dot(r3.xyz, r3.xyz);
        r5.w = inverseSqrt(r5.w);
        let v_131 = (r3.xyz * r5.www);
        r3 = vec4<f32>(v_131.xyz, r3.w);
        r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r5.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
        r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[14u].w);
        r4.w = (r4.w / r5.w);
        let v_132 = -(cb3_3.tint_symbol_2[14u].xyzx);
        r5.w = dot(r3.xyz, v_132.xyz);
        r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
        let v_133 = dot(r3.xyz, r4.xyz);
        r7.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
        r5.w = (r5.w * r7.w);
        r7.w = (r4.w * r5.w);
        let v_134 = (r7.www * cb3_3.tint_symbol_2[22u].xyz);
        r11 = vec4<f32>(v_134.xyz, r11.w);
        let v_135 = fma(r11.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_135.xyz, r10.w);
        let v_136 = fma(r1.xyz, r0.xxx, r3.xyz);
        r1 = vec4<f32>(v_136.xyz, r1.w);
        r0.x = dot(r1.xyz, r1.xyz);
        r0.x = inverseSqrt(r0.x);
        let v_137 = (r0.xxx * r1.xyz);
        r1 = vec4<f32>(v_137.xyz, r1.w);
        let v_138 = dot(r1.xyz, r6.xyz);
        r0.x = clamp(vec4<f32>(v_138, v_138, v_138, v_138).x, 0.0f, 1.0f);
        r0.x = ((-(r0.xxxx)).x + 1.0f);
        r3.x = (r0.x * r0.x);
        r3.x = (r3.x * r3.x);
        r0.x = (r0.x * r3.x);
        r0.x = fma(r5.x, r0.x, r6.w);
        let v_139 = dot(r1.xyz, r4.xyz);
        r1.x = clamp(vec4<f32>(v_139, v_139, v_139, v_139).x, 0.0f, 1.0f);
        r1.x = log2(r1.x);
        r1.x = (r1.x * r8.z);
        r1.x = exp2(r1.x);
        r0.x = (r0.x * r1.x);
        r0.x = (r5.w * r0.x);
        r0.x = (r4.w * r0.x);
        r0.x = (r2.w * r0.x);
        let v_140 = fma(r0.xxx, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
        r9 = vec4<f32>(v_140.xyz, r9.w);
      }
    }
    r0.x = (r5.z * r5.z);
    r1.x = (r3.w * r3.w);
    let v_141 = (r9.xyz * r1.xxx);
    r1 = vec4<f32>(v_141.xyz, r1.w);
    let v_142 = fma(r0.xxx, r10.xyz, r1.xyz);
    r1 = vec4<f32>(v_142.xyz, r1.w);
    let v_143 = fma(r7.xyz, cb3_3.tint_symbol_2[1u].xyz, r1.xyz);
    r1 = vec4<f32>(v_143.xyz, r1.w);
    r0.x = (r4.z + cb3_3.tint_symbol_2[43u].w);
    r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
    r0.x = max(r0.x, 0.0f);
    let v_144 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
    r3 = vec4<f32>(v_144.xyz, r3.w);
    r2.w = ((-(r2.zzzz)).w + 1.0f);
    let v_145 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
    r6 = vec4<f32>(v_145.xyz, r6.w);
    let v_146 = (r2.zzz * r6.xyz);
    r6 = vec4<f32>(v_146.xyz, r6.w);
    let v_147 = fma(r3.xyz, r2.www, r6.xyz);
    r3 = vec4<f32>(v_147.xyz, r3.w);
    let v_148 = (r2.yyy * r3.xyz);
    r2 = vec4<f32>(r2.x, v_148.xyz);
    let v_149 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
    r3 = vec4<f32>(v_149.xyz, r3.w);
    r6.x = cb3_3.tint_symbol_2[46u].w;
    r6.y = cb3_3.tint_symbol_2[47u].w;
    r6.z = cb3_3.tint_symbol_2[48u].w;
    let v_150 = dot(r6.xyz, r4.xyz);
    r0.x = clamp(vec4<f32>(v_150, v_150, v_150, v_150).x, 0.0f, 1.0f);
    let v_151 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r3.xyz);
    r3 = vec4<f32>(v_151.xyz, r3.w);
    let v_152 = fma(r3.xyz, r2.xxx, r2.yzw);
    r2 = vec4<f32>(v_152.xyz, r2.w);
    let v_153 = (r5.zzz * r2.xyz);
    r2 = vec4<f32>(v_153.xyz, r2.w);
    let v_154 = fma(r2.xyz, r0.yzw, r1.xyz);
    r1 = vec4<f32>(v_154.xyz, r1.w);
    r0.x = (r5.y * r8.x);
    let v_155 = fma(r0.yzw, r0.xxx, r1.xyz);
    r0 = vec4<f32>(v_155.xyz, r0.w);
    r1.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  } else {
    r0 = vec4<f32>(vec3<f32>(), r0.w);
    r1.w = 0.0f;
  }
  let v_156 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r1 = vec4<f32>(v_156.xyz, r1.w);
  o0 = r1;
}

@fragment
fn main(@builtin(position) v_157 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @builtin(sample_index) v11 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_157, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  return o0;
}
