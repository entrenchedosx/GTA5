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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb18_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb18_struct_1;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = (v0.xy * cb10_10.tint_symbol_4[16u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb10_10.tint_symbol_4[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb10_10.tint_symbol_4[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v_4 = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0 = textureSample(t8, s8, r0.xyxx.xy);
  let v_5 = fma(r0.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
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
  let v_7 = (r1.xyz + (-(v1.xyzx)).xyz);
  r6 = vec4<f32>(v_7.xyz, r6.w);
  r5.z = dot(v4.xyz, r6.xyz);
  let v_8 = -(v3.xyzx);
  r5.w = dot(v_8.xyz, r6.xyz);
  r6.x = (r5.z * v4.w);
  r6.y = (r5.w * v3.w);
  let v_9 = fma(r6.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
  r5 = vec4<f32>(r5.xy, v_9.xy);
  let v_10 = fma(r5.zw, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r6 = vec4<f32>(v_10.xy, r6.zw);
  let v_11 = fma(v9.xy, r6.xy, r5.zw);
  r6 = vec4<f32>(v_11.xy, r6.zw);
  r5.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < v9.z)));
  r6.w = (v9.w / v9.z);
  r7.x = floor(r6.w);
  let v_12 = -(r7.xxxx);
  r6.w = (r6.w + v_12.w);
  r6.w = ((-(r6.wwww)).w + 1.0f);
  r7.x = (1.0f / v3.w);
  r7.x = (r7.x + r7.x);
  r7.x = (r7.x / v9.z);
  r6.w = fma(r6.y, r7.x, r6.w);
  let v_13 = bitcast<u32>(r5.z);
  let v_14 = r6.w;
  r6.z = select(r6.y, v_14, (v_13 != 0u));
  let v_15 = (r6.xz + v7.xy);
  r6 = vec4<f32>(r6.xy, v_15.xy);
  let v_16 = (r6.zw * v7.zw);
  r6 = vec4<f32>(r6.xy, v_16.xy);
  r7 = vec4<f32>(((v3.yzx * v4.zxy)).xyz, r7.w);
  let v_17 = fma(v4.yzx, v3.zxy, (-(r7.xyzx)).xyz);
  r7 = vec4<f32>(v_17.xyz, r7.w);
  r5.z = dot(r7.xyz, r7.xyz);
  r5.z = inverseSqrt(r5.z);
  let v_18 = (r5.zzz * r7.xyz);
  r7 = vec4<f32>(v_18.xyz, r7.w);
  let v_19 = fma(v9.xy, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r8 = vec4<f32>(v_19.xy, r8.zw);
  let v_20 = (r8.xxx * v4.xyz);
  r8 = vec4<f32>(v_20.x, r8.y, v_20.yz);
  let v_21 = (r8.yyy * v_8.xyz);
  r9 = vec4<f32>(v_21.xyz, r9.w);
  r10.x = dot(r8.xzw, v8.xyz);
  r10.y = dot(r9.xyz, v8.xyz);
  r10.z = dot(r7.xyz, v8.xyz);
  r11 = textureSample(t3, s3, r6.zwzz.xy);
  r5.z = dot(r10.xyz, r10.xyz);
  r5.z = inverseSqrt(r5.z);
  let v_22 = (r5.zz * r10.xy);
  r10 = vec4<f32>(v_22.xy, r10.zw);
  r5.z = (cb12_12.tint_symbol_3[1u].y * 0.5f);
  let v_23 = -(r5.zzzz);
  r5.z = fma(r11.w, cb12_12.tint_symbol_3[1u].y, v_23.z);
  let v_24 = fma(r5.zz, r10.xy, r6.zw);
  r6 = vec4<f32>(r6.xy, v_24.xy);
  r10 = textureSample(t3, s3, r6.zwzz.xy);
  r11 = textureSample(t2, s2, r6.zwzz.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
  } else {
    r0.x = ((-(v6.yyyy)).x + v6.z);
    r0.x = fma(r5.w, r0.x, v6.y);
    r0.x = (r0.x * v6.x);
    let v_25 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r6.xy < vec2<f32>())));
    r5 = vec4<f32>(r5.xy, v_25.xy);
    let v_26 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(1.0f) < r6.xy)));
    r6 = vec4<f32>(v_26.xy, r6.zw);
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) | bitcast<u32>(r6.x)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.w) | bitcast<u32>(r5.z)));
    r5.z = bitcast<f32>((bitcast<u32>(r6.y) | bitcast<u32>(r5.z)));
    let v_27 = bitcast<u32>(r5.z);
    r0.x = select(r0.x, 0.0f, (v_27 != 0u));
    let v_28 = fma(r10.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r5 = vec4<f32>(r5.xy, v_28.xy);
    r6.x = dot(r5.zw, r5.zw);
    r6.x = ((-(r6.xxxx)).x + 1.0f);
    r6.x = sqrt(abs(r6.xxxx).x);
    let v_29 = (r9.xyz * r5.www);
    r6 = vec4<f32>(r6.x, v_29.xyz);
    let v_30 = fma(r5.zzz, r8.xzw, r6.yzw);
    r6 = vec4<f32>(r6.x, v_30.xyz);
    let v_31 = fma(r6.xxx, r7.xyz, r6.yzw);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    r6.x = v8.w;
    r6.y = v1.w;
    r6.z = v5.w;
    r6.w = 1.0f;
    r6 = (r6 * r11);
    let v_32 = (r6.xyz * r6.xyz);
    r6 = vec4<f32>(v_32.xyz, r6.w);
    r5.z = dot(r10.xy, r10.xy);
    r5.z = bitcast<f32>(select(0u, 4294967295u, (r5.z >= 0.00200000009499490261f)));
    r5.z = bitcast<f32>((bitcast<u32>(r5.z) & 1065353216u));
    let v_33 = (r5.zzz * r6.xyz);
    r0 = vec4<f32>(r0.x, v_33.xyz);
    r6.x = v6.w;
    r6.y = v10.w;
    r6.z = 1.0f;
    let v_34 = (r5.zzz * r6.xyz);
    r6 = vec4<f32>(v_34.xyz, r6.w);
    r3.w = (r5.z * cb12_12.tint_symbol_3[0u].z);
    r1.w = (r0.x * r6.w);
    let v_35 = (r6.xy * cb2_2.tint_symbol_1[15u].zy);
    r2 = vec4<f32>(v_35.xy, r2.zw);
    r5.y = (r6.z * cb12_12.tint_symbol_3[1u].x);
    r2.z = cb2_2.tint_symbol_1[16u].z;
    r2.w = cb12_12.tint_symbol_3[0u].y;
    let v_36 = r1;
    r3 = vec4<f32>(v_36.xyz, r3.w);
    r5.x = cb12_12.tint_symbol_3[0u].w;
    r4.w = bitcast<f32>(v.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r4.w) != 0u)) {
    let v_37 = ((-(r3.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
    r1 = vec4<f32>(v_37.xyz, r1.w);
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = inverseSqrt(r0.x);
    let v_38 = (r0.xxx * r1.xyz);
    r6 = vec4<f32>(v_38.xyz, r6.w);
    let v_39 = -(cb3_3.tint_symbol_2[0u].xyzx);
    let v_40 = fma(r1.xyz, r0.xxx, v_39.xyz);
    r7 = vec4<f32>(v_40.xyz, r7.w);
    r4.w = dot(r7.xyz, r7.xyz);
    r4.w = inverseSqrt(r4.w);
    let v_41 = (r4.www * r7.xyz);
    r7 = vec4<f32>(v_41.xyz, r7.w);
    r3.w = clamp(r3.wwww.w, 0.0f, 1.0f);
    let v_42 = (r2.xy * r2.xy);
    r2 = vec4<f32>(v_42.xy, r2.zw);
    r4.w = (r2.w + -500.0f);
    r4.w = max(r4.w, 0.0f);
    let v_43 = -(r4.wwww);
    r2.w = (r2.w + v_43.w);
    r4.w = (r4.w * 558.0f);
    r2.w = fma(r2.w, 3.0f, r4.w);
    let v_44 = dot(r4.xyz, v_39.xyz);
    r4.w = clamp(vec4<f32>(v_44, v_44, v_44, v_44).w, 0.0f, 1.0f);
    let v_45 = dot(r6.xyz, r4.xyz);
    r8.x = clamp(vec4<f32>(v_45, v_45, v_45, v_45).x, 0.0f, 1.0f);
    let v_46 = dot(r7.xyz, v_39.xyz);
    r8.y = clamp(vec4<f32>(v_46, v_46, v_46, v_46).y, 0.0f, 1.0f);
    let v_47 = ((-(r8.xxxy)).zw + vec2<f32>(1.0f));
    r5 = vec4<f32>(r5.xy, v_47.xy);
    let v_48 = (r5.zw * r5.zw);
    let v_49 = r8;
    r8 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
    let v_50 = (r8.yz * r8.yz);
    let v_51 = r8;
    r8 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
    let v_52 = (r5.zw * r8.yz);
    r5 = vec4<f32>(r5.xy, v_52.xy);
    r6.w = ((-(r5.xxxx)).w + 1.0f);
    let v_53 = fma(r5.xx, r5.zw, r6.ww);
    r5 = vec4<f32>(r5.xy, v_53.xy);
    let v_54 = (r2.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
    let v_55 = r8;
    r8 = vec4<f32>(v_55.x, v_54.xy, v_55.w);
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
    let v_56 = fma(r0.yzw, r4.www, r5.www);
    r7 = vec4<f32>(v_56.xyz, r7.w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r4.w) != 0u)) {
      r10 = vec4<f32>(vec3<f32>(), r10.w);
      r9 = vec4<f32>(vec3<f32>(), r9.w);
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[19u].w == 0.0f)));
      let v_57 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[3u].xyz);
      r9 = vec4<f32>(v_57.xyz, r9.w);
      let v_58 = -(cb3_3.tint_symbol_2[3u].xyzx);
      let v_59 = (r3.xyz + v_58.xyz);
      r10 = vec4<f32>(v_59.xyz, r10.w);
      r7.w = dot(r10.xyz, cb3_3.tint_symbol_2[11u].xyz);
      r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[19u].wwww)).w, 0.0f, 1.0f);
      r7.w = (r7.w * cb3_3.tint_symbol_2[19u].w);
      let v_60 = fma(cb3_3.tint_symbol_2[11u].xyz, r7.www, cb3_3.tint_symbol_2[3u].xyz);
      r10 = vec4<f32>(v_60.xyz, r10.w);
      let v_61 = ((-(r3.xyzx)).xyz + r10.xyz);
      r10 = vec4<f32>(v_61.xyz, r10.w);
      let v_62 = bitcast<vec3<u32>>(r5.www);
      let v_63 = r9.xyz;
      let v_64 = select(r10.xyz, v_63, (v_62 != vec3<u32>()));
      r9 = vec4<f32>(v_64.xyz, r9.w);
      r5.w = dot(r9.xyz, r9.xyz);
      let v_65 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(v_65.xyz, r9.w);
      r7.w = dot(r9.xyz, r9.xyz);
      r7.w = inverseSqrt(r7.w);
      let v_66 = (r7.www * r9.xyz);
      r9 = vec4<f32>(v_66.xyz, r9.w);
      r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[3u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r7.w = ((-(cb3_3.tint_symbol_2[11u].wwww)).w + 1.0f);
      r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[11u].w);
      r5.w = (r5.w / r7.w);
      let v_67 = -(cb3_3.tint_symbol_2[11u].xyzx);
      r7.w = dot(r9.xyz, v_67.xyz);
      r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[27u].xxxx, cb3_3.tint_symbol_2[35u].xxxx).w, 0.0f, 1.0f);
      let v_68 = dot(r9.xyz, r4.xyz);
      r8.y = clamp(vec4<f32>(v_68, v_68, v_68, v_68).y, 0.0f, 1.0f);
      r7.w = (r7.w * r8.y);
      r8.y = (r5.w * r7.w);
      let v_69 = (r8.yyy * cb3_3.tint_symbol_2[19u].xyz);
      r10 = vec4<f32>(v_69.xyz, r10.w);
      let v_70 = (r0.yzw * r10.xyz);
      r10 = vec4<f32>(v_70.xyz, r10.w);
      let v_71 = fma(r1.xyz, r0.xxx, r9.xyz);
      r9 = vec4<f32>(v_71.xyz, r9.w);
      r8.y = dot(r9.xyz, r9.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_72 = (r8.yyy * r9.xyz);
      r9 = vec4<f32>(v_72.xyz, r9.w);
      let v_73 = dot(r9.xyz, r6.xyz);
      r8.y = clamp(vec4<f32>(v_73, v_73, v_73, v_73).y, 0.0f, 1.0f);
      r8.y = ((-(r8.yyyy)).y + 1.0f);
      r8.w = (r8.y * r8.y);
      r8.w = (r8.w * r8.w);
      r8.y = (r8.w * r8.y);
      r8.y = fma(r5.x, r8.y, r6.w);
      let v_74 = dot(r9.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_74, v_74, v_74, v_74).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.z);
      r8.w = exp2(r8.w);
      r8.y = (r8.w * r8.y);
      r7.w = (r7.w * r8.y);
      r5.w = (r5.w * r7.w);
      r5.w = (r2.w * r5.w);
      let v_75 = (r5.www * cb3_3.tint_symbol_2[19u].xyz);
      r9 = vec4<f32>(v_75.xyz, r9.w);
    }
    r5.w = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
    if ((bitcast<u32>(r5.w) != 0u)) {
      r7.w = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r5.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      let v_76 = bitcast<u32>(r7.w);
      let v_77 = r5.w;
      r4.w = select(r4.w, v_77, (v_76 != 0u));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r5.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[20u].w == 0.0f)));
        let v_78 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[4u].xyz);
        r11 = vec4<f32>(v_78.xyz, r11.w);
        let v_79 = -(cb3_3.tint_symbol_2[4u].xyzx);
        let v_80 = (r3.xyz + v_79.xyz);
        r12 = vec4<f32>(v_80.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[12u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[20u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[20u].w);
        let v_81 = fma(cb3_3.tint_symbol_2[12u].xyz, r7.www, cb3_3.tint_symbol_2[4u].xyz);
        r12 = vec4<f32>(v_81.xyz, r12.w);
        let v_82 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_82.xyz, r12.w);
        let v_83 = bitcast<vec3<u32>>(r5.www);
        let v_84 = r11.xyz;
        let v_85 = select(r12.xyz, v_84, (v_83 != vec3<u32>()));
        r11 = vec4<f32>(v_85.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_86 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_86.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_87 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_87.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[4u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[12u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[12u].w);
        r5.w = (r5.w / r7.w);
        let v_88 = -(cb3_3.tint_symbol_2[12u].xyzx);
        r7.w = dot(r11.xyz, v_88.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[28u].xxxx, cb3_3.tint_symbol_2[36u].xxxx).w, 0.0f, 1.0f);
        let v_89 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_89, v_89, v_89, v_89).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_90 = (r8.yyy * cb3_3.tint_symbol_2[20u].xyz);
        r12 = vec4<f32>(v_90.xyz, r12.w);
        let v_91 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_91.xyz, r10.w);
        let v_92 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_92.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_93 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_93.xyz, r11.w);
        let v_94 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_94, v_94, v_94, v_94).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_95 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_95, v_95, v_95, v_95).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_96 = fma(r5.www, cb3_3.tint_symbol_2[20u].xyz, r9.xyz);
        r9 = vec4<f32>(v_96.xyz, r9.w);
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
        let v_97 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[5u].xyz);
        r11 = vec4<f32>(v_97.xyz, r11.w);
        let v_98 = -(cb3_3.tint_symbol_2[5u].xyzx);
        let v_99 = (r3.xyz + v_98.xyz);
        r12 = vec4<f32>(v_99.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[13u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[21u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[21u].w);
        let v_100 = fma(cb3_3.tint_symbol_2[13u].xyz, r7.www, cb3_3.tint_symbol_2[5u].xyz);
        r12 = vec4<f32>(v_100.xyz, r12.w);
        let v_101 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_101.xyz, r12.w);
        let v_102 = bitcast<vec3<u32>>(r5.www);
        let v_103 = r11.xyz;
        let v_104 = select(r12.xyz, v_103, (v_102 != vec3<u32>()));
        r11 = vec4<f32>(v_104.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_105 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_105.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_106 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_106.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[5u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[13u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[13u].w);
        r5.w = (r5.w / r7.w);
        let v_107 = -(cb3_3.tint_symbol_2[13u].xyzx);
        r7.w = dot(r11.xyz, v_107.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[29u].xxxx, cb3_3.tint_symbol_2[37u].xxxx).w, 0.0f, 1.0f);
        let v_108 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_108, v_108, v_108, v_108).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_109 = (r8.yyy * cb3_3.tint_symbol_2[21u].xyz);
        r12 = vec4<f32>(v_109.xyz, r12.w);
        let v_110 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_110.xyz, r10.w);
        let v_111 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_111.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_112 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_112.xyz, r11.w);
        let v_113 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_114 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_114, v_114, v_114, v_114).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_115 = fma(r5.www, cb3_3.tint_symbol_2[21u].xyz, r9.xyz);
        r9 = vec4<f32>(v_115.xyz, r9.w);
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
        let v_116 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[6u].xyz);
        r11 = vec4<f32>(v_116.xyz, r11.w);
        let v_117 = -(cb3_3.tint_symbol_2[6u].xyzx);
        let v_118 = (r3.xyz + v_117.xyz);
        r12 = vec4<f32>(v_118.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[14u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[22u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[22u].w);
        let v_119 = fma(cb3_3.tint_symbol_2[14u].xyz, r7.www, cb3_3.tint_symbol_2[6u].xyz);
        r12 = vec4<f32>(v_119.xyz, r12.w);
        let v_120 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_120.xyz, r12.w);
        let v_121 = bitcast<vec3<u32>>(r5.www);
        let v_122 = r11.xyz;
        let v_123 = select(r12.xyz, v_122, (v_121 != vec3<u32>()));
        r11 = vec4<f32>(v_123.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_124 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_124.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_125 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_125.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[14u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[14u].w);
        r5.w = (r5.w / r7.w);
        let v_126 = -(cb3_3.tint_symbol_2[14u].xyzx);
        r7.w = dot(r11.xyz, v_126.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[30u].xxxx, cb3_3.tint_symbol_2[38u].xxxx).w, 0.0f, 1.0f);
        let v_127 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_127, v_127, v_127, v_127).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_128 = (r8.yyy * cb3_3.tint_symbol_2[22u].xyz);
        r12 = vec4<f32>(v_128.xyz, r12.w);
        let v_129 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_129.xyz, r10.w);
        let v_130 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_130.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_131 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_131.xyz, r11.w);
        let v_132 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_132, v_132, v_132, v_132).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_133 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_134 = fma(r5.www, cb3_3.tint_symbol_2[22u].xyz, r9.xyz);
        r9 = vec4<f32>(v_134.xyz, r9.w);
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
        let v_135 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[7u].xyz);
        r11 = vec4<f32>(v_135.xyz, r11.w);
        let v_136 = -(cb3_3.tint_symbol_2[7u].xyzx);
        let v_137 = (r3.xyz + v_136.xyz);
        r12 = vec4<f32>(v_137.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[15u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[23u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[23u].w);
        let v_138 = fma(cb3_3.tint_symbol_2[15u].xyz, r7.www, cb3_3.tint_symbol_2[7u].xyz);
        r12 = vec4<f32>(v_138.xyz, r12.w);
        let v_139 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_139.xyz, r12.w);
        let v_140 = bitcast<vec3<u32>>(r5.www);
        let v_141 = r11.xyz;
        let v_142 = select(r12.xyz, v_141, (v_140 != vec3<u32>()));
        r11 = vec4<f32>(v_142.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_143 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_143.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_144 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_144.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[7u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[15u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[15u].w);
        r5.w = (r5.w / r7.w);
        let v_145 = -(cb3_3.tint_symbol_2[15u].xyzx);
        r7.w = dot(r11.xyz, v_145.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[31u].xxxx, cb3_3.tint_symbol_2[39u].xxxx).w, 0.0f, 1.0f);
        let v_146 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_146, v_146, v_146, v_146).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_147 = (r8.yyy * cb3_3.tint_symbol_2[23u].xyz);
        r12 = vec4<f32>(v_147.xyz, r12.w);
        let v_148 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_148.xyz, r10.w);
        let v_149 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_149.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_150 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_150.xyz, r11.w);
        let v_151 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_151, v_151, v_151, v_151).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_152 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_152, v_152, v_152, v_152).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_153 = fma(r5.www, cb3_3.tint_symbol_2[23u].xyz, r9.xyz);
        r9 = vec4<f32>(v_153.xyz, r9.w);
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
        let v_154 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[8u].xyz);
        r11 = vec4<f32>(v_154.xyz, r11.w);
        let v_155 = -(cb3_3.tint_symbol_2[8u].xyzx);
        let v_156 = (r3.xyz + v_155.xyz);
        r12 = vec4<f32>(v_156.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[16u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[24u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[24u].w);
        let v_157 = fma(cb3_3.tint_symbol_2[16u].xyz, r7.www, cb3_3.tint_symbol_2[8u].xyz);
        r12 = vec4<f32>(v_157.xyz, r12.w);
        let v_158 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_158.xyz, r12.w);
        let v_159 = bitcast<vec3<u32>>(r5.www);
        let v_160 = r11.xyz;
        let v_161 = select(r12.xyz, v_160, (v_159 != vec3<u32>()));
        r11 = vec4<f32>(v_161.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_162 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_162.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_163 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_163.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[8u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[16u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[16u].w);
        r5.w = (r5.w / r7.w);
        let v_164 = -(cb3_3.tint_symbol_2[16u].xyzx);
        r7.w = dot(r11.xyz, v_164.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[32u].xxxx, cb3_3.tint_symbol_2[40u].xxxx).w, 0.0f, 1.0f);
        let v_165 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_165, v_165, v_165, v_165).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_166 = (r8.yyy * cb3_3.tint_symbol_2[24u].xyz);
        r12 = vec4<f32>(v_166.xyz, r12.w);
        let v_167 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_167.xyz, r10.w);
        let v_168 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_168.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_169 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_169.xyz, r11.w);
        let v_170 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_170, v_170, v_170, v_170).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_171 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_171, v_171, v_171, v_171).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_172 = fma(r5.www, cb3_3.tint_symbol_2[24u].xyz, r9.xyz);
        r9 = vec4<f32>(v_172.xyz, r9.w);
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
        let v_173 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[9u].xyz);
        r11 = vec4<f32>(v_173.xyz, r11.w);
        let v_174 = -(cb3_3.tint_symbol_2[9u].xyzx);
        let v_175 = (r3.xyz + v_174.xyz);
        r12 = vec4<f32>(v_175.xyz, r12.w);
        r7.w = dot(r12.xyz, cb3_3.tint_symbol_2[17u].xyz);
        r7.w = clamp(((r7.wwww / cb3_3.tint_symbol_2[25u].wwww)).w, 0.0f, 1.0f);
        r7.w = (r7.w * cb3_3.tint_symbol_2[25u].w);
        let v_176 = fma(cb3_3.tint_symbol_2[17u].xyz, r7.www, cb3_3.tint_symbol_2[9u].xyz);
        r12 = vec4<f32>(v_176.xyz, r12.w);
        let v_177 = ((-(r3.xyzx)).xyz + r12.xyz);
        r12 = vec4<f32>(v_177.xyz, r12.w);
        let v_178 = bitcast<vec3<u32>>(r5.www);
        let v_179 = r11.xyz;
        let v_180 = select(r12.xyz, v_179, (v_178 != vec3<u32>()));
        r11 = vec4<f32>(v_180.xyz, r11.w);
        r5.w = dot(r11.xyz, r11.xyz);
        let v_181 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
        r11 = vec4<f32>(v_181.xyz, r11.w);
        r7.w = dot(r11.xyz, r11.xyz);
        r7.w = inverseSqrt(r7.w);
        let v_182 = (r7.www * r11.xyz);
        r11 = vec4<f32>(v_182.xyz, r11.w);
        r5.w = clamp(fma(-(r5.wwww), cb3_3.tint_symbol_2[9u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r7.w = ((-(cb3_3.tint_symbol_2[17u].wwww)).w + 1.0f);
        r7.w = fma(r7.w, r5.w, cb3_3.tint_symbol_2[17u].w);
        r5.w = (r5.w / r7.w);
        let v_183 = -(cb3_3.tint_symbol_2[17u].xyzx);
        r7.w = dot(r11.xyz, v_183.xyz);
        r7.w = clamp(fma(r7.wwww, cb3_3.tint_symbol_2[33u].xxxx, cb3_3.tint_symbol_2[41u].xxxx).w, 0.0f, 1.0f);
        let v_184 = dot(r11.xyz, r4.xyz);
        r8.y = clamp(vec4<f32>(v_184, v_184, v_184, v_184).y, 0.0f, 1.0f);
        r7.w = (r7.w * r8.y);
        r8.y = (r5.w * r7.w);
        let v_185 = (r8.yyy * cb3_3.tint_symbol_2[25u].xyz);
        r12 = vec4<f32>(v_185.xyz, r12.w);
        let v_186 = fma(r12.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_186.xyz, r10.w);
        let v_187 = fma(r1.xyz, r0.xxx, r11.xyz);
        r11 = vec4<f32>(v_187.xyz, r11.w);
        r8.y = dot(r11.xyz, r11.xyz);
        r8.y = inverseSqrt(r8.y);
        let v_188 = (r8.yyy * r11.xyz);
        r11 = vec4<f32>(v_188.xyz, r11.w);
        let v_189 = dot(r11.xyz, r6.xyz);
        r8.y = clamp(vec4<f32>(v_189, v_189, v_189, v_189).y, 0.0f, 1.0f);
        r8.y = ((-(r8.yyyy)).y + 1.0f);
        r8.w = (r8.y * r8.y);
        r8.w = (r8.w * r8.w);
        r8.y = (r8.w * r8.y);
        r8.y = fma(r5.x, r8.y, r6.w);
        let v_190 = dot(r11.xyz, r4.xyz);
        r8.w = clamp(vec4<f32>(v_190, v_190, v_190, v_190).w, 0.0f, 1.0f);
        r8.w = log2(r8.w);
        r8.w = (r8.w * r8.z);
        r8.w = exp2(r8.w);
        r8.y = (r8.w * r8.y);
        r7.w = (r7.w * r8.y);
        r5.w = (r5.w * r7.w);
        r5.w = (r2.w * r5.w);
        let v_191 = fma(r5.www, cb3_3.tint_symbol_2[25u].xyz, r9.xyz);
        r9 = vec4<f32>(v_191.xyz, r9.w);
      }
    }
    if ((bitcast<u32>(r4.w) != 0u)) {
    } else {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_2[2u].x))));
      r4.w = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r5.w)));
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[26u].w == 0.0f)));
        let v_192 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[10u].xyz);
        r11 = vec4<f32>(v_192.xyz, r11.w);
        let v_193 = -(cb3_3.tint_symbol_2[10u].xyzx);
        let v_194 = (r3.xyz + v_193.xyz);
        r12 = vec4<f32>(v_194.xyz, r12.w);
        r5.w = dot(r12.xyz, cb3_3.tint_symbol_2[18u].xyz);
        r5.w = clamp(((r5.wwww / cb3_3.tint_symbol_2[26u].wwww)).w, 0.0f, 1.0f);
        r5.w = (r5.w * cb3_3.tint_symbol_2[26u].w);
        let v_195 = fma(cb3_3.tint_symbol_2[18u].xyz, r5.www, cb3_3.tint_symbol_2[10u].xyz);
        r12 = vec4<f32>(v_195.xyz, r12.w);
        let v_196 = ((-(r3.xyzx)).xyz + r12.xyz);
        r3 = vec4<f32>(v_196.xyz, r3.w);
        let v_197 = bitcast<vec3<u32>>(r4.www);
        let v_198 = r11.xyz;
        let v_199 = select(r3.xyz, v_198, (v_197 != vec3<u32>()));
        r3 = vec4<f32>(v_199.xyz, r3.w);
        r4.w = dot(r3.xyz, r3.xyz);
        let v_200 = (r3.xyz + vec3<f32>(0.00000099999999747524f));
        r3 = vec4<f32>(v_200.xyz, r3.w);
        r5.w = dot(r3.xyz, r3.xyz);
        r5.w = inverseSqrt(r5.w);
        let v_201 = (r3.xyz * r5.www);
        r3 = vec4<f32>(v_201.xyz, r3.w);
        r4.w = clamp(fma(-(r4.wwww), cb3_3.tint_symbol_2[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
        r5.w = ((-(cb3_3.tint_symbol_2[18u].wwww)).w + 1.0f);
        r5.w = fma(r5.w, r4.w, cb3_3.tint_symbol_2[18u].w);
        r4.w = (r4.w / r5.w);
        let v_202 = -(cb3_3.tint_symbol_2[18u].xyzx);
        r5.w = dot(r3.xyz, v_202.xyz);
        r5.w = clamp(fma(r5.wwww, cb3_3.tint_symbol_2[34u].xxxx, cb3_3.tint_symbol_2[42u].xxxx).w, 0.0f, 1.0f);
        let v_203 = dot(r3.xyz, r4.xyz);
        r7.w = clamp(vec4<f32>(v_203, v_203, v_203, v_203).w, 0.0f, 1.0f);
        r5.w = (r5.w * r7.w);
        r7.w = (r4.w * r5.w);
        let v_204 = (r7.www * cb3_3.tint_symbol_2[26u].xyz);
        r11 = vec4<f32>(v_204.xyz, r11.w);
        let v_205 = fma(r11.xyz, r0.yzw, r10.xyz);
        r10 = vec4<f32>(v_205.xyz, r10.w);
        let v_206 = fma(r1.xyz, r0.xxx, r3.xyz);
        r1 = vec4<f32>(v_206.xyz, r1.w);
        r0.x = dot(r1.xyz, r1.xyz);
        r0.x = inverseSqrt(r0.x);
        let v_207 = (r0.xxx * r1.xyz);
        r1 = vec4<f32>(v_207.xyz, r1.w);
        let v_208 = dot(r1.xyz, r6.xyz);
        r0.x = clamp(vec4<f32>(v_208, v_208, v_208, v_208).x, 0.0f, 1.0f);
        r0.x = ((-(r0.xxxx)).x + 1.0f);
        r3.x = (r0.x * r0.x);
        r3.x = (r3.x * r3.x);
        r0.x = (r0.x * r3.x);
        r0.x = fma(r5.x, r0.x, r6.w);
        let v_209 = dot(r1.xyz, r4.xyz);
        r1.x = clamp(vec4<f32>(v_209, v_209, v_209, v_209).x, 0.0f, 1.0f);
        r1.x = log2(r1.x);
        r1.x = (r1.x * r8.z);
        r1.x = exp2(r1.x);
        r0.x = (r0.x * r1.x);
        r0.x = (r5.w * r0.x);
        r0.x = (r4.w * r0.x);
        r0.x = (r2.w * r0.x);
        let v_210 = fma(r0.xxx, cb3_3.tint_symbol_2[26u].xyz, r9.xyz);
        r9 = vec4<f32>(v_210.xyz, r9.w);
      }
    }
    r0.x = (r5.z * r5.z);
    r1.x = (r3.w * r3.w);
    let v_211 = (r9.xyz * r1.xxx);
    r1 = vec4<f32>(v_211.xyz, r1.w);
    let v_212 = fma(r0.xxx, r10.xyz, r1.xyz);
    r1 = vec4<f32>(v_212.xyz, r1.w);
    let v_213 = fma(r7.xyz, cb3_3.tint_symbol_2[1u].xyz, r1.xyz);
    r1 = vec4<f32>(v_213.xyz, r1.w);
    r0.x = (r4.z + cb3_3.tint_symbol_2[43u].w);
    r0.x = (r0.x * cb3_3.tint_symbol_2[44u].w);
    r0.x = max(r0.x, 0.0f);
    let v_214 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.xxx, cb3_3.tint_symbol_2[48u].xyz);
    r3 = vec4<f32>(v_214.xyz, r3.w);
    r2.w = ((-(r2.zzzz)).w + 1.0f);
    let v_215 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.xxx, cb3_3.tint_symbol_2[46u].xyz);
    r6 = vec4<f32>(v_215.xyz, r6.w);
    let v_216 = (r2.zzz * r6.xyz);
    r6 = vec4<f32>(v_216.xyz, r6.w);
    let v_217 = fma(r3.xyz, r2.www, r6.xyz);
    r3 = vec4<f32>(v_217.xyz, r3.w);
    let v_218 = (r2.yyy * r3.xyz);
    r2 = vec4<f32>(r2.x, v_218.xyz);
    let v_219 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.xxx, cb3_3.tint_symbol_2[44u].xyz);
    r3 = vec4<f32>(v_219.xyz, r3.w);
    r6.x = cb3_3.tint_symbol_2[46u].w;
    r6.y = cb3_3.tint_symbol_2[47u].w;
    r6.z = cb3_3.tint_symbol_2[48u].w;
    let v_220 = dot(r6.xyz, r4.xyz);
    r0.x = clamp(vec4<f32>(v_220, v_220, v_220, v_220).x, 0.0f, 1.0f);
    let v_221 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r3.xyz);
    r3 = vec4<f32>(v_221.xyz, r3.w);
    let v_222 = fma(r3.xyz, r2.xxx, r2.yzw);
    r2 = vec4<f32>(v_222.xyz, r2.w);
    let v_223 = (r5.zzz * r2.xyz);
    r2 = vec4<f32>(v_223.xyz, r2.w);
    let v_224 = fma(r2.xyz, r0.yzw, r1.xyz);
    r1 = vec4<f32>(v_224.xyz, r1.w);
    r0.x = (r5.y * r8.x);
    let v_225 = fma(r0.yzw, r0.xxx, r1.xyz);
    r0 = vec4<f32>(v_225.xyz, r0.w);
    r1.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  } else {
    r0 = vec4<f32>(vec3<f32>(), r0.w);
    r1.w = 0.0f;
  }
  let v_226 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r1 = vec4<f32>(v_226.xyz, r1.w);
  o0 = r1;
}

@fragment
fn main(@builtin(position) v_227 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_227, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return o0;
}
