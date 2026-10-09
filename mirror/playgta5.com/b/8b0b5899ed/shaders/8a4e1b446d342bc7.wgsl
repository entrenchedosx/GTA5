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

var<private> r12 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_3 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb1_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct_1;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

var<private> o10 : vec4<f32>;

var<private> o11 : vec4<f32>;

var<private> o12 : vec4<f32>;

var<private> o13 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_6;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  let v_2 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  let v_6 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = (v3.yyy * cb1_1.tint_symbol[1u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  let v_8 = fma(v3.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fma(v3.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_10 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r0.w = dot(r3.xyz, r2.xyz);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  let v_11 = -(bitcast<vec4<i32>>(r2.wwww));
  r0.w = bitcast<f32>((bitcast<i32>(r0.w) + v_11.w));
  r0.w = f32(bitcast<i32>(r0.w));
  let v_12 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  r0.w = clamp(((cb2_2.tint_symbol_2[16u].zzzz + cb3_3.tint_symbol_3[49u].wwww)).w, 0.0f, 1.0f);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_13 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  r0.w = (r0.w * cb2_2.tint_symbol_2[15u].y);
  r3.w = dot(r2.xyz, r2.xyz);
  r3.w = inverseSqrt(r3.w);
  let v_14 = (r2.xyz * r3.www);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = -(cb3_3.tint_symbol_3[0u].xyzx);
  let v_16 = fma(r2.xyz, r3.www, v_15.xyz);
  r6 = vec4<f32>(v_16.xyz, r6.w);
  r4.w = dot(r6.xyz, r6.xyz);
  r4.w = inverseSqrt(r4.w);
  let v_17 = (r4.www * r6.xyz);
  r6 = vec4<f32>(v_17.xyz, r6.w);
  r4.w = clamp(cb12_12.tint_symbol_4[0u].z, 0.0f, 1.0f);
  r5.w = (cb2_2.tint_symbol_2[15u].z * cb2_2.tint_symbol_2[15u].z);
  r0.w = (r0.w * r0.w);
  r6.w = (cb12_12.tint_symbol_4[0u].y + -500.0f);
  r6.w = max(r6.w, 0.0f);
  r7.x = ((-(r6.wwww)).x + cb12_12.tint_symbol_4[0u].y);
  r6.w = (r6.w * 558.0f);
  r6.w = fma(r7.x, 3.0f, r6.w);
  r7.x = dot(r4.xyz, v_15.xyz);
  r7.y = clamp(r7.xxxx.y, 0.0f, 1.0f);
  r7.y = ((-(abs(r7.xxxx))).y + r7.y);
  let v_18 = abs(r7.xxxx);
  r7.x = fma(v1.w, r7.y, v_18.x);
  let v_19 = dot(r5.xyz, r4.xyz);
  r8.x = clamp(vec4<f32>(v_19, v_19, v_19, v_19).x, 0.0f, 1.0f);
  let v_20 = dot(r6.xyz, v_15.xyz);
  r8.y = clamp(vec4<f32>(v_20, v_20, v_20, v_20).y, 0.0f, 1.0f);
  let v_21 = ((-(r8.xxyx)).yz + vec2<f32>(1.0f));
  let v_22 = r7;
  r7 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = (r7.yz * r7.yz);
  r8 = vec4<f32>(v_23.xy, r8.zw);
  let v_24 = (r8.xy * r8.xy);
  r8 = vec4<f32>(v_24.xy, r8.zw);
  let v_25 = (r7.yz * r8.xy);
  let v_26 = r7;
  r7 = vec4<f32>(v_26.x, v_25.xy, v_26.w);
  r7.w = ((-(cb12_12.tint_symbol_4[0u].xxxx)).w + 1.0f);
  let v_27 = fma(cb12_12.tint_symbol_4[0u].xx, r7.yz, r7.ww);
  let v_28 = r7;
  r7 = vec4<f32>(v_28.x, v_27.xy, v_28.w);
  let v_29 = (r6.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(v_29.xy, r8.zw);
  r8.x = (r8.x * 0.125f);
  r8.z = max(r7.y, v1.w);
  r7.y = (r7.y + -1.0f);
  r7.y = fma(r8.z, r7.y, 1.0f);
  r7.y = fma((-(r4.wwww)).y, r7.y, 1.0f);
  r6.x = dot(r4.xyz, r6.xyz);
  r6.x = clamp(((r6.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r6.x = log2(r6.x);
  r6.x = (r6.x * r8.y);
  r6.x = exp2(r6.x);
  r6.x = (r7.z * r6.x);
  r6.x = (r8.x * r6.x);
  r6.x = (r4.w * r6.x);
  r6.x = (r7.x * r6.x);
  r6.y = (r7.y * r7.x);
  let v_30 = (r6.yyy * cb3_3.tint_symbol_3[1u].xyz);
  o5 = vec4<f32>(v_30.xyz, o5.w);
  let v_31 = (r6.xxx * cb3_3.tint_symbol_3[1u].xyz);
  o6 = vec4<f32>(v_31.xyz, o6.w);
  r6.x = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
  if ((bitcast<u32>(r6.x) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[19u].w == 0.0f)));
    let v_32 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[3u].xyz);
    r9 = vec4<f32>(v_32.xyz, r9.w);
    let v_33 = -(cb3_3.tint_symbol_3[3u].xyzx);
    let v_34 = (r0.xyz + v_33.xyz);
    r10 = vec4<f32>(v_34.xyz, r10.w);
    r6.z = dot(r10.xyz, cb3_3.tint_symbol_3[11u].xyz);
    r6.z = clamp(((r6.zzzz / cb3_3.tint_symbol_3[19u].wwww)).z, 0.0f, 1.0f);
    r6.z = (r6.z * cb3_3.tint_symbol_3[19u].w);
    let v_35 = fma(cb3_3.tint_symbol_3[11u].xyz, r6.zzz, cb3_3.tint_symbol_3[3u].xyz);
    r10 = vec4<f32>(v_35.xyz, r10.w);
    let v_36 = ((-(r0.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_36.xyz, r10.w);
    let v_37 = bitcast<vec3<u32>>(r6.yyy);
    let v_38 = r9.xyz;
    let v_39 = select(r10.xyz, v_38, (v_37 != vec3<u32>()));
    r9 = vec4<f32>(v_39.xyz, r9.w);
    r6.y = dot(r9.xyz, r9.xyz);
    let v_40 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_40.xyz, r9.w);
    r6.z = dot(r9.xyz, r9.xyz);
    r6.z = inverseSqrt(r6.z);
    let v_41 = (r6.zzz * r9.xyz);
    r9 = vec4<f32>(v_41.xyz, r9.w);
    r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r6.z = ((-(cb3_3.tint_symbol_3[11u].wwww)).z + 1.0f);
    r6.z = fma(r6.z, r6.y, cb3_3.tint_symbol_3[11u].w);
    r6.y = (r6.y / r6.z);
    let v_42 = -(cb3_3.tint_symbol_3[11u].xyzx);
    r6.z = dot(r9.xyz, v_42.xyz);
    r6.z = clamp(fma(r6.zzzz, cb3_3.tint_symbol_3[27u].xxxx, cb3_3.tint_symbol_3[35u].xxxx).z, 0.0f, 1.0f);
    r7.x = dot(r9.xyz, r4.xyz);
    r7.z = clamp(r7.xxxx.z, 0.0f, 1.0f);
    r7.z = ((-(abs(r7.xxxx))).z + r7.z);
    let v_43 = abs(r7.xxxx);
    r7.x = fma(v1.w, r7.z, v_43.x);
    r6.z = (r6.z * r7.x);
    r7.x = (r6.y * r6.z);
    let v_44 = (r7.xxx * cb3_3.tint_symbol_3[19u].xyz);
    r10 = vec4<f32>(v_44.xyz, r10.w);
    let v_45 = fma(r2.xyz, r3.www, r9.xyz);
    r9 = vec4<f32>(v_45.xyz, r9.w);
    r7.x = dot(r9.xyz, r9.xyz);
    r7.x = inverseSqrt(r7.x);
    let v_46 = (r7.xxx * r9.xyz);
    r9 = vec4<f32>(v_46.xyz, r9.w);
    let v_47 = dot(r9.xyz, r5.xyz);
    r7.x = clamp(vec4<f32>(v_47, v_47, v_47, v_47).x, 0.0f, 1.0f);
    r7.x = ((-(r7.xxxx)).x + 1.0f);
    r7.z = (r7.x * r7.x);
    r7.z = (r7.z * r7.z);
    r7.x = (r7.z * r7.x);
    r7.x = fma(cb12_12.tint_symbol_4[0u].x, r7.x, r7.w);
    let v_48 = dot(r9.xyz, r4.xyz);
    r7.z = clamp(vec4<f32>(v_48, v_48, v_48, v_48).z, 0.0f, 1.0f);
    r7.z = log2(r7.z);
    r7.z = (r7.z * r8.y);
    r7.z = exp2(r7.z);
    r7.x = (r7.z * r7.x);
    r6.z = (r6.z * r7.x);
    r6.y = (r6.y * r6.z);
    r6.y = (r8.x * r6.y);
    let v_49 = (r6.yyy * cb3_3.tint_symbol_3[19u].xyz);
    r9 = vec4<f32>(v_49.xyz, r9.w);
  }
  r6.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
  if ((bitcast<u32>(r6.y) != 0u)) {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r7.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    let v_50 = bitcast<u32>(r6.z);
    let v_51 = r7.x;
    r6.z = select(r6.x, v_51, (v_50 != 0u));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[20u].w == 0.0f)));
      let v_52 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[4u].xyz);
      r11 = vec4<f32>(v_52.xyz, r11.w);
      let v_53 = -(cb3_3.tint_symbol_3[4u].xyzx);
      let v_54 = (r0.xyz + v_53.xyz);
      r12 = vec4<f32>(v_54.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_3[12u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[20u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_3[20u].w);
      let v_55 = fma(cb3_3.tint_symbol_3[12u].xyz, r7.zzz, cb3_3.tint_symbol_3[4u].xyz);
      r12 = vec4<f32>(v_55.xyz, r12.w);
      let v_56 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_56.xyz, r12.w);
      let v_57 = bitcast<vec3<u32>>(r7.xxx);
      let v_58 = r11.xyz;
      let v_59 = select(r12.xyz, v_58, (v_57 != vec3<u32>()));
      r11 = vec4<f32>(v_59.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      let v_60 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_60.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_61 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_61.xyz, r11.w);
      r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[4u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_3[12u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[12u].w);
      r7.x = (r7.x / r7.z);
      let v_62 = -(cb3_3.tint_symbol_3[12u].xyzx);
      r7.z = dot(r11.xyz, v_62.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[28u].xxxx, cb3_3.tint_symbol_3[36u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r4.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_63 = abs(r8.wwww);
      r8.w = fma(v1.w, r9.w, v_63.w);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.x * r7.z);
      let v_64 = fma(r8.www, cb3_3.tint_symbol_3[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_64.xyz, r10.w);
      let v_65 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_65.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_66 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_66.xyz, r11.w);
      let v_67 = dot(r11.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_67, v_67, v_67, v_67).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
      let v_68 = dot(r11.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_68, v_68, v_68, v_68).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r7.x = (r8.x * r7.x);
      let v_69 = fma(r7.xxx, cb3_3.tint_symbol_3[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_69.xyz, r9.w);
    }
  } else {
    r6.z = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.z = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[21u].w == 0.0f)));
      let v_70 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[5u].xyz);
      r11 = vec4<f32>(v_70.xyz, r11.w);
      let v_71 = -(cb3_3.tint_symbol_3[5u].xyzx);
      let v_72 = (r0.xyz + v_71.xyz);
      r12 = vec4<f32>(v_72.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_3[13u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[21u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_3[21u].w);
      let v_73 = fma(cb3_3.tint_symbol_3[13u].xyz, r7.zzz, cb3_3.tint_symbol_3[5u].xyz);
      r12 = vec4<f32>(v_73.xyz, r12.w);
      let v_74 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_74.xyz, r12.w);
      let v_75 = bitcast<vec3<u32>>(r7.xxx);
      let v_76 = r11.xyz;
      let v_77 = select(r12.xyz, v_76, (v_75 != vec3<u32>()));
      r11 = vec4<f32>(v_77.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      let v_78 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_78.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_79 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_79.xyz, r11.w);
      r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[5u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_3[13u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[13u].w);
      r7.x = (r7.x / r7.z);
      let v_80 = -(cb3_3.tint_symbol_3[13u].xyzx);
      r7.z = dot(r11.xyz, v_80.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[29u].xxxx, cb3_3.tint_symbol_3[37u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r4.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_81 = abs(r8.wwww);
      r8.w = fma(v1.w, r9.w, v_81.w);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.x * r7.z);
      let v_82 = fma(r8.www, cb3_3.tint_symbol_3[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_82.xyz, r10.w);
      let v_83 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_83.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_84 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_84.xyz, r11.w);
      let v_85 = dot(r11.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_85, v_85, v_85, v_85).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
      let v_86 = dot(r11.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_86, v_86, v_86, v_86).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r7.x = (r8.x * r7.x);
      let v_87 = fma(r7.xxx, cb3_3.tint_symbol_3[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_87.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.z) != 0u)) {
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[22u].w == 0.0f)));
      let v_88 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[6u].xyz);
      r11 = vec4<f32>(v_88.xyz, r11.w);
      let v_89 = -(cb3_3.tint_symbol_3[6u].xyzx);
      let v_90 = (r0.xyz + v_89.xyz);
      r12 = vec4<f32>(v_90.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[14u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[22u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[22u].w);
      let v_91 = fma(cb3_3.tint_symbol_3[14u].xyz, r7.xxx, cb3_3.tint_symbol_3[6u].xyz);
      r12 = vec4<f32>(v_91.xyz, r12.w);
      let v_92 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_92.xyz, r12.w);
      let v_93 = bitcast<vec3<u32>>(r6.zzz);
      let v_94 = r11.xyz;
      let v_95 = select(r12.xyz, v_94, (v_93 != vec3<u32>()));
      r11 = vec4<f32>(v_95.xyz, r11.w);
      r6.z = dot(r11.xyz, r11.xyz);
      let v_96 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_96.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_97 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_97.xyz, r11.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_3[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[14u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.z, cb3_3.tint_symbol_3[14u].w);
      r6.z = (r6.z / r7.x);
      let v_98 = -(cb3_3.tint_symbol_3[14u].xyzx);
      r7.x = dot(r11.xyz, v_98.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[30u].xxxx, cb3_3.tint_symbol_3[38u].xxxx).x, 0.0f, 1.0f);
      r7.z = dot(r11.xyz, r4.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_99 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_99.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.z * r7.x);
      let v_100 = fma(r7.zzz, cb3_3.tint_symbol_3[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_100.xyz, r10.w);
      let v_101 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_101.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_102 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_102.xyz, r11.w);
      let v_103 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_103, v_103, v_103, v_103).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_104 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_104, v_104, v_104, v_104).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.z = (r6.z * r7.x);
      r6.z = (r8.x * r6.z);
      let v_105 = fma(r6.zzz, cb3_3.tint_symbol_3[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_105.xyz, r9.w);
    }
  }
  r6.z = (r7.y * r7.y);
  r4.w = (r4.w * r4.w);
  o5.w = ((-(r7.yyyy)).w + 1.0f);
  let v_106 = (r10.xyz * r6.zzz);
  o7 = vec4<f32>(v_106.xyz, o7.w);
  let v_107 = (r9.xyz * r4.www);
  o8 = vec4<f32>(v_107.xyz, o8.w);
  if ((bitcast<u32>(r6.x) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[19u].w == 0.0f)));
    let v_108 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[3u].xyz);
    r9 = vec4<f32>(v_108.xyz, r9.w);
    let v_109 = -(cb3_3.tint_symbol_3[3u].xyzx);
    let v_110 = (r0.xyz + v_109.xyz);
    r10 = vec4<f32>(v_110.xyz, r10.w);
    r7.z = dot(r10.xyz, cb3_3.tint_symbol_3[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_3[19u].w);
    let v_111 = fma(cb3_3.tint_symbol_3[11u].xyz, r7.zzz, cb3_3.tint_symbol_3[3u].xyz);
    r10 = vec4<f32>(v_111.xyz, r10.w);
    let v_112 = ((-(r0.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_112.xyz, r10.w);
    let v_113 = bitcast<vec3<u32>>(r7.xxx);
    let v_114 = r9.xyz;
    let v_115 = select(r10.xyz, v_114, (v_113 != vec3<u32>()));
    r9 = vec4<f32>(v_115.xyz, r9.w);
    r7.x = dot(r9.xyz, r9.xyz);
    let v_116 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_116.xyz, r9.w);
    r7.z = dot(r9.xyz, r9.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_117 = (r7.zzz * r9.xyz);
    r9 = vec4<f32>(v_117.xyz, r9.w);
    r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_3[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[11u].w);
    r7.x = (r7.x / r7.z);
    let v_118 = -(cb3_3.tint_symbol_3[11u].xyzx);
    r7.z = dot(r9.xyz, v_118.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[27u].xxxx, cb3_3.tint_symbol_3[35u].xxxx).z, 0.0f, 1.0f);
    let v_119 = -(r4.xyzx);
    r8.w = dot(r9.xyz, v_119.xyz);
    r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
    r9.w = ((-(abs(r8.wwww))).w + r9.w);
    let v_120 = abs(r8.wwww);
    r8.w = fma(v1.w, r9.w, v_120.w);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.x * r7.z);
    let v_121 = (r8.www * cb3_3.tint_symbol_3[19u].xyz);
    r10 = vec4<f32>(v_121.xyz, r10.w);
    let v_122 = fma(r2.xyz, r3.www, r9.xyz);
    r9 = vec4<f32>(v_122.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_123 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_123.xyz, r9.w);
    let v_124 = dot(r9.xyz, r5.xyz);
    r8.w = clamp(vec4<f32>(v_124, v_124, v_124, v_124).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
    let v_125 = -(r4.xyzx);
    let v_126 = dot(r9.xyz, v_125.xyz);
    r9.x = clamp(vec4<f32>(v_126, v_126, v_126, v_126).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.y * r9.x);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r7.z = (r7.z * r8.w);
    r7.x = (r7.x * r7.z);
    r7.x = (r8.x * r7.x);
    let v_127 = (r7.xxx * cb3_3.tint_symbol_3[19u].xyz);
    r9 = vec4<f32>(v_127.xyz, r9.w);
  }
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    let v_128 = bitcast<u32>(r7.x);
    let v_129 = r6.y;
    r6.x = select(r6.x, v_129, (v_128 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[20u].w == 0.0f)));
      let v_130 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[4u].xyz);
      r11 = vec4<f32>(v_130.xyz, r11.w);
      let v_131 = -(cb3_3.tint_symbol_3[4u].xyzx);
      let v_132 = (r0.xyz + v_131.xyz);
      r12 = vec4<f32>(v_132.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[12u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[20u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[20u].w);
      let v_133 = fma(cb3_3.tint_symbol_3[12u].xyz, r7.xxx, cb3_3.tint_symbol_3[4u].xyz);
      r12 = vec4<f32>(v_133.xyz, r12.w);
      let v_134 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_134.xyz, r12.w);
      let v_135 = bitcast<vec3<u32>>(r6.yyy);
      let v_136 = r11.xyz;
      let v_137 = select(r12.xyz, v_136, (v_135 != vec3<u32>()));
      r11 = vec4<f32>(v_137.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_138 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_138.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_139 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_139.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[12u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[12u].w);
      r6.y = (r6.y / r7.x);
      let v_140 = -(cb3_3.tint_symbol_3[12u].xyzx);
      r7.x = dot(r11.xyz, v_140.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[28u].xxxx, cb3_3.tint_symbol_3[36u].xxxx).x, 0.0f, 1.0f);
      let v_141 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_141.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_142 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_142.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_143 = fma(r7.zzz, cb3_3.tint_symbol_3[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_143.xyz, r10.w);
      let v_144 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_144.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_145 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_145.xyz, r11.w);
      let v_146 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_146, v_146, v_146, v_146).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_147 = -(r4.xyzx);
      let v_148 = dot(r11.xyz, v_147.xyz);
      r8.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_149 = fma(r6.yyy, cb3_3.tint_symbol_3[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_149.xyz, r9.w);
    }
  } else {
    r6.x = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[21u].w == 0.0f)));
      let v_150 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[5u].xyz);
      r11 = vec4<f32>(v_150.xyz, r11.w);
      let v_151 = -(cb3_3.tint_symbol_3[5u].xyzx);
      let v_152 = (r0.xyz + v_151.xyz);
      r12 = vec4<f32>(v_152.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[13u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[21u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[21u].w);
      let v_153 = fma(cb3_3.tint_symbol_3[13u].xyz, r7.xxx, cb3_3.tint_symbol_3[5u].xyz);
      r12 = vec4<f32>(v_153.xyz, r12.w);
      let v_154 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_154.xyz, r12.w);
      let v_155 = bitcast<vec3<u32>>(r6.yyy);
      let v_156 = r11.xyz;
      let v_157 = select(r12.xyz, v_156, (v_155 != vec3<u32>()));
      r11 = vec4<f32>(v_157.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_158 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_159 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[13u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[13u].w);
      r6.y = (r6.y / r7.x);
      let v_160 = -(cb3_3.tint_symbol_3[13u].xyzx);
      r7.x = dot(r11.xyz, v_160.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[29u].xxxx, cb3_3.tint_symbol_3[37u].xxxx).x, 0.0f, 1.0f);
      let v_161 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_161.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_162 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_162.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_163 = fma(r7.zzz, cb3_3.tint_symbol_3[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_165 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_166, v_166, v_166, v_166).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_167 = -(r4.xyzx);
      let v_168 = dot(r11.xyz, v_167.xyz);
      r8.w = clamp(vec4<f32>(v_168, v_168, v_168, v_168).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_169 = fma(r6.yyy, cb3_3.tint_symbol_3[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_169.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[22u].w == 0.0f)));
      let v_170 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[6u].xyz);
      r11 = vec4<f32>(v_170.xyz, r11.w);
      let v_171 = -(cb3_3.tint_symbol_3[6u].xyzx);
      let v_172 = (r0.xyz + v_171.xyz);
      r12 = vec4<f32>(v_172.xyz, r12.w);
      r6.y = dot(r12.xyz, cb3_3.tint_symbol_3[14u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_3[22u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_3[22u].w);
      let v_173 = fma(cb3_3.tint_symbol_3[14u].xyz, r6.yyy, cb3_3.tint_symbol_3[6u].xyz);
      r12 = vec4<f32>(v_173.xyz, r12.w);
      let v_174 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_174.xyz, r12.w);
      let v_175 = bitcast<vec3<u32>>(r6.xxx);
      let v_176 = r11.xyz;
      let v_177 = select(r12.xyz, v_176, (v_175 != vec3<u32>()));
      r11 = vec4<f32>(v_177.xyz, r11.w);
      r6.x = dot(r11.xyz, r11.xyz);
      let v_178 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_178.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_179 = (r6.yyy * r11.xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      r6.x = clamp(fma(-(r6.xxxx), cb3_3.tint_symbol_3[6u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_3[14u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r6.x, cb3_3.tint_symbol_3[14u].w);
      r6.x = (r6.x / r6.y);
      let v_180 = -(cb3_3.tint_symbol_3[14u].xyzx);
      r6.y = dot(r11.xyz, v_180.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_3[30u].xxxx, cb3_3.tint_symbol_3[38u].xxxx).y, 0.0f, 1.0f);
      let v_181 = -(r4.xyzx);
      r7.x = dot(r11.xyz, v_181.xyz);
      r7.z = clamp(r7.xxxx.z, 0.0f, 1.0f);
      r7.z = ((-(abs(r7.xxxx))).z + r7.z);
      let v_182 = abs(r7.xxxx);
      r7.x = fma(v1.w, r7.z, v_182.x);
      r6.y = (r6.y * r7.x);
      r7.x = (r6.x * r6.y);
      let v_183 = fma(r7.xxx, cb3_3.tint_symbol_3[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_183.xyz, r10.w);
      let v_184 = fma(r2.xyz, r3.www, r11.xyz);
      r2 = vec4<f32>(v_184.xyz, r2.w);
      r3.w = dot(r2.xyz, r2.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_185 = (r2.xyz * r3.www);
      r2 = vec4<f32>(v_185.xyz, r2.w);
      let v_186 = dot(r2.xyz, r5.xyz);
      r3.w = clamp(vec4<f32>(v_186, v_186, v_186, v_186).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r5.x = (r3.w * r3.w);
      r5.x = (r5.x * r5.x);
      r3.w = (r3.w * r5.x);
      r3.w = fma(cb12_12.tint_symbol_4[0u].x, r3.w, r7.w);
      let v_187 = -(r4.xyzx);
      let v_188 = dot(r2.xyz, v_187.xyz);
      r2.x = clamp(vec4<f32>(v_188, v_188, v_188, v_188).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r3.w);
      r2.x = (r6.y * r2.x);
      r2.x = (r6.x * r2.x);
      r2.x = (r8.x * r2.x);
      let v_189 = fma(r2.xxx, cb3_3.tint_symbol_3[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_189.xyz, r9.w);
    }
  }
  let v_190 = (r6.zzz * r10.xyz);
  o9 = vec4<f32>(v_190.xyz, o9.w);
  let v_191 = (r4.www * r9.xyz);
  o10 = vec4<f32>(v_191.xyz, o10.w);
  r2.x = fma(r3.z, r2.w, cb3_3.tint_symbol_3[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_3[44u].w);
  r2.x = max(r2.x, 0.0f);
  let v_192 = fma(cb3_3.tint_symbol_3[47u].xyz, r2.xxx, cb3_3.tint_symbol_3[48u].xyz);
  r2 = vec4<f32>(r2.x, v_192.xyz);
  r3.w = ((-(cb2_2.tint_symbol_2[16u].zzzz)).w + 1.0f);
  let v_193 = fma(cb3_3.tint_symbol_3[45u].xyz, r2.xxx, cb3_3.tint_symbol_3[46u].xyz);
  r5 = vec4<f32>(v_193.xyz, r5.w);
  let v_194 = (r5.xyz * cb2_2.tint_symbol_2[16u].zzz);
  r5 = vec4<f32>(v_194.xyz, r5.w);
  let v_195 = fma(r2.yzw, r3.www, r5.xyz);
  r2 = vec4<f32>(r2.x, v_195.xyz);
  let v_196 = (r0.www * r2.yzw);
  r2 = vec4<f32>(r2.x, v_196.xyz);
  let v_197 = fma(cb3_3.tint_symbol_3[43u].xyz, r2.xxx, cb3_3.tint_symbol_3[44u].xyz);
  r5 = vec4<f32>(v_197.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_3[46u].w;
  r6.y = cb3_3.tint_symbol_3[47u].w;
  r6.z = cb3_3.tint_symbol_3[48u].w;
  let v_198 = dot(r6.xyz, r4.xyz);
  r2.x = clamp(vec4<f32>(v_198, v_198, v_198, v_198).x, 0.0f, 1.0f);
  let v_199 = fma(cb3_3.tint_symbol_3[49u].xyz, r2.xxx, r5.xyz);
  r4 = vec4<f32>(v_199.xyz, r4.w);
  let v_200 = fma(r4.xyz, r5.www, r2.yzw);
  r2 = vec4<f32>(v_200.xyz, r2.w);
  o11 = ((r7.yyy * r2.xyz)).xyzx;
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o0 = vec4<f32>();
  o1 = vec4<f32>();
  o2 = vec4<f32>(v2.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o6.w = r6.w;
  o7.w = r5.w;
  o8.w = r0.w;
  o9.w = v1.w;
  o10.w = r8.z;
  o12 = r1;
  let v_201 = &(x0[0u]);
  *(v_201) = vec4<f32>((*(v_201)).x, vec3<f32>());
  o3 = r0.xyz.xyzx;
  o4 = r3.xyz.xyzx;
  o13[0u] = x0[0u].x;
  o13[1u] = x0[0u].y;
  o13[2u] = x0[0u].z;
  o13[3u] = x0[0u].w;
  v = vec4<f32>(o13[0u], o13[1u], o13[2u], o13[3u]);
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
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
  @location(10u)
  o10 : vec4<f32>,
  @location(11u)
  o11 : vec4<f32>,
  @builtin(position)
  o12 : vec4<f32>,
  @builtin(clip_distances)
  o13 : array<f32, 4u>,
  @location(15u)
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_8(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, v);
}
