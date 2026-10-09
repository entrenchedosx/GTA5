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
    r6.z = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[22u].w == 0.0f)));
      let v_88 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[6u].xyz);
      r11 = vec4<f32>(v_88.xyz, r11.w);
      let v_89 = -(cb3_3.tint_symbol_3[6u].xyzx);
      let v_90 = (r0.xyz + v_89.xyz);
      r12 = vec4<f32>(v_90.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_3[14u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[22u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_3[22u].w);
      let v_91 = fma(cb3_3.tint_symbol_3[14u].xyz, r7.zzz, cb3_3.tint_symbol_3[6u].xyz);
      r12 = vec4<f32>(v_91.xyz, r12.w);
      let v_92 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_92.xyz, r12.w);
      let v_93 = bitcast<vec3<u32>>(r7.xxx);
      let v_94 = r11.xyz;
      let v_95 = select(r12.xyz, v_94, (v_93 != vec3<u32>()));
      r11 = vec4<f32>(v_95.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      let v_96 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_96.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_97 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_97.xyz, r11.w);
      r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[6u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_3[14u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[14u].w);
      r7.x = (r7.x / r7.z);
      let v_98 = -(cb3_3.tint_symbol_3[14u].xyzx);
      r7.z = dot(r11.xyz, v_98.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[30u].xxxx, cb3_3.tint_symbol_3[38u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r4.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_99 = abs(r8.wwww);
      r8.w = fma(v1.w, r9.w, v_99.w);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.x * r7.z);
      let v_100 = fma(r8.www, cb3_3.tint_symbol_3[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_100.xyz, r10.w);
      let v_101 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_101.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_102 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_102.xyz, r11.w);
      let v_103 = dot(r11.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_103, v_103, v_103, v_103).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
      let v_104 = dot(r11.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_104, v_104, v_104, v_104).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r7.x = (r8.x * r7.x);
      let v_105 = fma(r7.xxx, cb3_3.tint_symbol_3[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_105.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.z = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[23u].w == 0.0f)));
      let v_106 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[7u].xyz);
      r11 = vec4<f32>(v_106.xyz, r11.w);
      let v_107 = -(cb3_3.tint_symbol_3[7u].xyzx);
      let v_108 = (r0.xyz + v_107.xyz);
      r12 = vec4<f32>(v_108.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_3[15u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[23u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_3[23u].w);
      let v_109 = fma(cb3_3.tint_symbol_3[15u].xyz, r7.zzz, cb3_3.tint_symbol_3[7u].xyz);
      r12 = vec4<f32>(v_109.xyz, r12.w);
      let v_110 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_110.xyz, r12.w);
      let v_111 = bitcast<vec3<u32>>(r7.xxx);
      let v_112 = r11.xyz;
      let v_113 = select(r12.xyz, v_112, (v_111 != vec3<u32>()));
      r11 = vec4<f32>(v_113.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      let v_114 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_114.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_115 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_115.xyz, r11.w);
      r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[7u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_3[15u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[15u].w);
      r7.x = (r7.x / r7.z);
      let v_116 = -(cb3_3.tint_symbol_3[15u].xyzx);
      r7.z = dot(r11.xyz, v_116.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[31u].xxxx, cb3_3.tint_symbol_3[39u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r4.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_117 = abs(r8.wwww);
      r8.w = fma(v1.w, r9.w, v_117.w);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.x * r7.z);
      let v_118 = fma(r8.www, cb3_3.tint_symbol_3[23u].xyz, r10.xyz);
      r10 = vec4<f32>(v_118.xyz, r10.w);
      let v_119 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_119.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_120 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_120.xyz, r11.w);
      let v_121 = dot(r11.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_121, v_121, v_121, v_121).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
      let v_122 = dot(r11.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_122, v_122, v_122, v_122).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r7.x = (r8.x * r7.x);
      let v_123 = fma(r7.xxx, cb3_3.tint_symbol_3[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_123.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.z = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[24u].w == 0.0f)));
      let v_124 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[8u].xyz);
      r11 = vec4<f32>(v_124.xyz, r11.w);
      let v_125 = -(cb3_3.tint_symbol_3[8u].xyzx);
      let v_126 = (r0.xyz + v_125.xyz);
      r12 = vec4<f32>(v_126.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_3[16u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[24u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_3[24u].w);
      let v_127 = fma(cb3_3.tint_symbol_3[16u].xyz, r7.zzz, cb3_3.tint_symbol_3[8u].xyz);
      r12 = vec4<f32>(v_127.xyz, r12.w);
      let v_128 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_128.xyz, r12.w);
      let v_129 = bitcast<vec3<u32>>(r7.xxx);
      let v_130 = r11.xyz;
      let v_131 = select(r12.xyz, v_130, (v_129 != vec3<u32>()));
      r11 = vec4<f32>(v_131.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      let v_132 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_132.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_133 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_133.xyz, r11.w);
      r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[8u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_3[16u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[16u].w);
      r7.x = (r7.x / r7.z);
      let v_134 = -(cb3_3.tint_symbol_3[16u].xyzx);
      r7.z = dot(r11.xyz, v_134.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[32u].xxxx, cb3_3.tint_symbol_3[40u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r4.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_135 = abs(r8.wwww);
      r8.w = fma(v1.w, r9.w, v_135.w);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.x * r7.z);
      let v_136 = fma(r8.www, cb3_3.tint_symbol_3[24u].xyz, r10.xyz);
      r10 = vec4<f32>(v_136.xyz, r10.w);
      let v_137 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_137.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_138 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_138.xyz, r11.w);
      let v_139 = dot(r11.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_139, v_139, v_139, v_139).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
      let v_140 = dot(r11.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_140, v_140, v_140, v_140).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r7.x = (r8.x * r7.x);
      let v_141 = fma(r7.xxx, cb3_3.tint_symbol_3[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_141.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.z) != 0u)) {
    r6.z = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[25u].w == 0.0f)));
      let v_142 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[9u].xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      let v_143 = -(cb3_3.tint_symbol_3[9u].xyzx);
      let v_144 = (r0.xyz + v_143.xyz);
      r12 = vec4<f32>(v_144.xyz, r12.w);
      r7.z = dot(r12.xyz, cb3_3.tint_symbol_3[17u].xyz);
      r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[25u].wwww)).z, 0.0f, 1.0f);
      r7.z = (r7.z * cb3_3.tint_symbol_3[25u].w);
      let v_145 = fma(cb3_3.tint_symbol_3[17u].xyz, r7.zzz, cb3_3.tint_symbol_3[9u].xyz);
      r12 = vec4<f32>(v_145.xyz, r12.w);
      let v_146 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_146.xyz, r12.w);
      let v_147 = bitcast<vec3<u32>>(r7.xxx);
      let v_148 = r11.xyz;
      let v_149 = select(r12.xyz, v_148, (v_147 != vec3<u32>()));
      r11 = vec4<f32>(v_149.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      let v_150 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_150.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_151 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[9u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r7.z = ((-(cb3_3.tint_symbol_3[17u].wwww)).z + 1.0f);
      r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[17u].w);
      r7.x = (r7.x / r7.z);
      let v_152 = -(cb3_3.tint_symbol_3[17u].xyzx);
      r7.z = dot(r11.xyz, v_152.xyz);
      r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[33u].xxxx, cb3_3.tint_symbol_3[41u].xxxx).z, 0.0f, 1.0f);
      r8.w = dot(r11.xyz, r4.xyz);
      r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r8.wwww))).w + r9.w);
      let v_153 = abs(r8.wwww);
      r8.w = fma(v1.w, r9.w, v_153.w);
      r7.z = (r7.z * r8.w);
      r8.w = (r7.x * r7.z);
      let v_154 = fma(r8.www, cb3_3.tint_symbol_3[25u].xyz, r10.xyz);
      r10 = vec4<f32>(v_154.xyz, r10.w);
      let v_155 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_155.xyz, r11.w);
      r8.w = dot(r11.xyz, r11.xyz);
      r8.w = inverseSqrt(r8.w);
      let v_156 = (r8.www * r11.xyz);
      r11 = vec4<f32>(v_156.xyz, r11.w);
      let v_157 = dot(r11.xyz, r5.xyz);
      r8.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r8.w = ((-(r8.wwww)).w + 1.0f);
      r9.w = (r8.w * r8.w);
      r9.w = (r9.w * r9.w);
      r8.w = (r8.w * r9.w);
      r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
      let v_158 = dot(r11.xyz, r4.xyz);
      r9.w = clamp(vec4<f32>(v_158, v_158, v_158, v_158).w, 0.0f, 1.0f);
      r9.w = log2(r9.w);
      r9.w = (r8.y * r9.w);
      r9.w = exp2(r9.w);
      r8.w = (r8.w * r9.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r7.x = (r8.x * r7.x);
      let v_159 = fma(r7.xxx, cb3_3.tint_symbol_3[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_159.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.z) != 0u)) {
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.z = bitcast<f32>((bitcast<u32>(r6.z) | bitcast<u32>(r7.x)));
    if ((bitcast<u32>(r6.z) != 0u)) {
    } else {
      r6.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[26u].w == 0.0f)));
      let v_160 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[10u].xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      let v_161 = -(cb3_3.tint_symbol_3[10u].xyzx);
      let v_162 = (r0.xyz + v_161.xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[18u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[26u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[26u].w);
      let v_163 = fma(cb3_3.tint_symbol_3[18u].xyz, r7.xxx, cb3_3.tint_symbol_3[10u].xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      let v_164 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_164.xyz, r12.w);
      let v_165 = bitcast<vec3<u32>>(r6.zzz);
      let v_166 = r11.xyz;
      let v_167 = select(r12.xyz, v_166, (v_165 != vec3<u32>()));
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r6.z = dot(r11.xyz, r11.xyz);
      let v_168 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_169 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      r6.z = clamp(fma(-(r6.zzzz), cb3_3.tint_symbol_3[10u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[18u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.z, cb3_3.tint_symbol_3[18u].w);
      r6.z = (r6.z / r7.x);
      let v_170 = -(cb3_3.tint_symbol_3[18u].xyzx);
      r7.x = dot(r11.xyz, v_170.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[34u].xxxx, cb3_3.tint_symbol_3[42u].xxxx).x, 0.0f, 1.0f);
      r7.z = dot(r11.xyz, r4.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_171 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_171.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.z * r7.x);
      let v_172 = fma(r7.zzz, cb3_3.tint_symbol_3[26u].xyz, r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_174 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_175, v_175, v_175, v_175).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_176 = dot(r11.xyz, r4.xyz);
      r8.w = clamp(vec4<f32>(v_176, v_176, v_176, v_176).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.z = (r6.z * r7.x);
      r6.z = (r8.x * r6.z);
      let v_177 = fma(r6.zzz, cb3_3.tint_symbol_3[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_177.xyz, r9.w);
    }
  }
  r6.z = (r7.y * r7.y);
  r4.w = (r4.w * r4.w);
  o5.w = ((-(r7.yyyy)).w + 1.0f);
  let v_178 = (r10.xyz * r6.zzz);
  o7 = vec4<f32>(v_178.xyz, o7.w);
  let v_179 = (r9.xyz * r4.www);
  o8 = vec4<f32>(v_179.xyz, o8.w);
  if ((bitcast<u32>(r6.x) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r9 = vec4<f32>(vec3<f32>(), r9.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[19u].w == 0.0f)));
    let v_180 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[3u].xyz);
    r9 = vec4<f32>(v_180.xyz, r9.w);
    let v_181 = -(cb3_3.tint_symbol_3[3u].xyzx);
    let v_182 = (r0.xyz + v_181.xyz);
    r10 = vec4<f32>(v_182.xyz, r10.w);
    r7.z = dot(r10.xyz, cb3_3.tint_symbol_3[11u].xyz);
    r7.z = clamp(((r7.zzzz / cb3_3.tint_symbol_3[19u].wwww)).z, 0.0f, 1.0f);
    r7.z = (r7.z * cb3_3.tint_symbol_3[19u].w);
    let v_183 = fma(cb3_3.tint_symbol_3[11u].xyz, r7.zzz, cb3_3.tint_symbol_3[3u].xyz);
    r10 = vec4<f32>(v_183.xyz, r10.w);
    let v_184 = ((-(r0.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_184.xyz, r10.w);
    let v_185 = bitcast<vec3<u32>>(r7.xxx);
    let v_186 = r9.xyz;
    let v_187 = select(r10.xyz, v_186, (v_185 != vec3<u32>()));
    r9 = vec4<f32>(v_187.xyz, r9.w);
    r7.x = dot(r9.xyz, r9.xyz);
    let v_188 = (r9.xyz + vec3<f32>(0.00000099999999747524f));
    r9 = vec4<f32>(v_188.xyz, r9.w);
    r7.z = dot(r9.xyz, r9.xyz);
    r7.z = inverseSqrt(r7.z);
    let v_189 = (r7.zzz * r9.xyz);
    r9 = vec4<f32>(v_189.xyz, r9.w);
    r7.x = clamp(fma(-(r7.xxxx), cb3_3.tint_symbol_3[3u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
    r7.z = ((-(cb3_3.tint_symbol_3[11u].wwww)).z + 1.0f);
    r7.z = fma(r7.z, r7.x, cb3_3.tint_symbol_3[11u].w);
    r7.x = (r7.x / r7.z);
    let v_190 = -(cb3_3.tint_symbol_3[11u].xyzx);
    r7.z = dot(r9.xyz, v_190.xyz);
    r7.z = clamp(fma(r7.zzzz, cb3_3.tint_symbol_3[27u].xxxx, cb3_3.tint_symbol_3[35u].xxxx).z, 0.0f, 1.0f);
    let v_191 = -(r4.xyzx);
    r8.w = dot(r9.xyz, v_191.xyz);
    r9.w = clamp(r8.wwww.w, 0.0f, 1.0f);
    r9.w = ((-(abs(r8.wwww))).w + r9.w);
    let v_192 = abs(r8.wwww);
    r8.w = fma(v1.w, r9.w, v_192.w);
    r7.z = (r7.z * r8.w);
    r8.w = (r7.x * r7.z);
    let v_193 = (r8.www * cb3_3.tint_symbol_3[19u].xyz);
    r10 = vec4<f32>(v_193.xyz, r10.w);
    let v_194 = fma(r2.xyz, r3.www, r9.xyz);
    r9 = vec4<f32>(v_194.xyz, r9.w);
    r8.w = dot(r9.xyz, r9.xyz);
    r8.w = inverseSqrt(r8.w);
    let v_195 = (r8.www * r9.xyz);
    r9 = vec4<f32>(v_195.xyz, r9.w);
    let v_196 = dot(r9.xyz, r5.xyz);
    r8.w = clamp(vec4<f32>(v_196, v_196, v_196, v_196).w, 0.0f, 1.0f);
    r8.w = ((-(r8.wwww)).w + 1.0f);
    r9.w = (r8.w * r8.w);
    r9.w = (r9.w * r9.w);
    r8.w = (r8.w * r9.w);
    r8.w = fma(cb12_12.tint_symbol_4[0u].x, r8.w, r7.w);
    let v_197 = -(r4.xyzx);
    let v_198 = dot(r9.xyz, v_197.xyz);
    r9.x = clamp(vec4<f32>(v_198, v_198, v_198, v_198).x, 0.0f, 1.0f);
    r9.x = log2(r9.x);
    r9.x = (r8.y * r9.x);
    r9.x = exp2(r9.x);
    r8.w = (r8.w * r9.x);
    r7.z = (r7.z * r8.w);
    r7.x = (r7.x * r7.z);
    r7.x = (r8.x * r7.x);
    let v_199 = (r7.xxx * cb3_3.tint_symbol_3[19u].xyz);
    r9 = vec4<f32>(v_199.xyz, r9.w);
  }
  if ((bitcast<u32>(r6.y) != 0u)) {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.y = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    let v_200 = bitcast<u32>(r7.x);
    let v_201 = r6.y;
    r6.x = select(r6.x, v_201, (v_200 != 0u));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[20u].w == 0.0f)));
      let v_202 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[4u].xyz);
      r11 = vec4<f32>(v_202.xyz, r11.w);
      let v_203 = -(cb3_3.tint_symbol_3[4u].xyzx);
      let v_204 = (r0.xyz + v_203.xyz);
      r12 = vec4<f32>(v_204.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[12u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[20u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[20u].w);
      let v_205 = fma(cb3_3.tint_symbol_3[12u].xyz, r7.xxx, cb3_3.tint_symbol_3[4u].xyz);
      r12 = vec4<f32>(v_205.xyz, r12.w);
      let v_206 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_206.xyz, r12.w);
      let v_207 = bitcast<vec3<u32>>(r6.yyy);
      let v_208 = r11.xyz;
      let v_209 = select(r12.xyz, v_208, (v_207 != vec3<u32>()));
      r11 = vec4<f32>(v_209.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_210 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_210.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_211 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[12u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[12u].w);
      r6.y = (r6.y / r7.x);
      let v_212 = -(cb3_3.tint_symbol_3[12u].xyzx);
      r7.x = dot(r11.xyz, v_212.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[28u].xxxx, cb3_3.tint_symbol_3[36u].xxxx).x, 0.0f, 1.0f);
      let v_213 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_213.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_214 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_214.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_215 = fma(r7.zzz, cb3_3.tint_symbol_3[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_215.xyz, r10.w);
      let v_216 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_216.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_217 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_217.xyz, r11.w);
      let v_218 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_218, v_218, v_218, v_218).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_219 = -(r4.xyzx);
      let v_220 = dot(r11.xyz, v_219.xyz);
      r8.w = clamp(vec4<f32>(v_220, v_220, v_220, v_220).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_221 = fma(r6.yyy, cb3_3.tint_symbol_3[20u].xyz, r9.xyz);
      r9 = vec4<f32>(v_221.xyz, r9.w);
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
      let v_222 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[5u].xyz);
      r11 = vec4<f32>(v_222.xyz, r11.w);
      let v_223 = -(cb3_3.tint_symbol_3[5u].xyzx);
      let v_224 = (r0.xyz + v_223.xyz);
      r12 = vec4<f32>(v_224.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[13u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[21u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[21u].w);
      let v_225 = fma(cb3_3.tint_symbol_3[13u].xyz, r7.xxx, cb3_3.tint_symbol_3[5u].xyz);
      r12 = vec4<f32>(v_225.xyz, r12.w);
      let v_226 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_226.xyz, r12.w);
      let v_227 = bitcast<vec3<u32>>(r6.yyy);
      let v_228 = r11.xyz;
      let v_229 = select(r12.xyz, v_228, (v_227 != vec3<u32>()));
      r11 = vec4<f32>(v_229.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_230 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_230.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_231 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[13u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[13u].w);
      r6.y = (r6.y / r7.x);
      let v_232 = -(cb3_3.tint_symbol_3[13u].xyzx);
      r7.x = dot(r11.xyz, v_232.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[29u].xxxx, cb3_3.tint_symbol_3[37u].xxxx).x, 0.0f, 1.0f);
      let v_233 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_233.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_234 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_234.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_235 = fma(r7.zzz, cb3_3.tint_symbol_3[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_235.xyz, r10.w);
      let v_236 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_236.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_237 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_237.xyz, r11.w);
      let v_238 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_238, v_238, v_238, v_238).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_239 = -(r4.xyzx);
      let v_240 = dot(r11.xyz, v_239.xyz);
      r8.w = clamp(vec4<f32>(v_240, v_240, v_240, v_240).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_241 = fma(r6.yyy, cb3_3.tint_symbol_3[21u].xyz, r9.xyz);
      r9 = vec4<f32>(v_241.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[22u].w == 0.0f)));
      let v_242 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[6u].xyz);
      r11 = vec4<f32>(v_242.xyz, r11.w);
      let v_243 = -(cb3_3.tint_symbol_3[6u].xyzx);
      let v_244 = (r0.xyz + v_243.xyz);
      r12 = vec4<f32>(v_244.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[14u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[22u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[22u].w);
      let v_245 = fma(cb3_3.tint_symbol_3[14u].xyz, r7.xxx, cb3_3.tint_symbol_3[6u].xyz);
      r12 = vec4<f32>(v_245.xyz, r12.w);
      let v_246 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_246.xyz, r12.w);
      let v_247 = bitcast<vec3<u32>>(r6.yyy);
      let v_248 = r11.xyz;
      let v_249 = select(r12.xyz, v_248, (v_247 != vec3<u32>()));
      r11 = vec4<f32>(v_249.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_250 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_250.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_251 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[14u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[14u].w);
      r6.y = (r6.y / r7.x);
      let v_252 = -(cb3_3.tint_symbol_3[14u].xyzx);
      r7.x = dot(r11.xyz, v_252.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[30u].xxxx, cb3_3.tint_symbol_3[38u].xxxx).x, 0.0f, 1.0f);
      let v_253 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_253.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_254 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_254.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_255 = fma(r7.zzz, cb3_3.tint_symbol_3[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_255.xyz, r10.w);
      let v_256 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_256.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_257 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_257.xyz, r11.w);
      let v_258 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_258, v_258, v_258, v_258).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_259 = -(r4.xyzx);
      let v_260 = dot(r11.xyz, v_259.xyz);
      r8.w = clamp(vec4<f32>(v_260, v_260, v_260, v_260).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_261 = fma(r6.yyy, cb3_3.tint_symbol_3[22u].xyz, r9.xyz);
      r9 = vec4<f32>(v_261.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[23u].w == 0.0f)));
      let v_262 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[7u].xyz);
      r11 = vec4<f32>(v_262.xyz, r11.w);
      let v_263 = -(cb3_3.tint_symbol_3[7u].xyzx);
      let v_264 = (r0.xyz + v_263.xyz);
      r12 = vec4<f32>(v_264.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[15u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[23u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[23u].w);
      let v_265 = fma(cb3_3.tint_symbol_3[15u].xyz, r7.xxx, cb3_3.tint_symbol_3[7u].xyz);
      r12 = vec4<f32>(v_265.xyz, r12.w);
      let v_266 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_266.xyz, r12.w);
      let v_267 = bitcast<vec3<u32>>(r6.yyy);
      let v_268 = r11.xyz;
      let v_269 = select(r12.xyz, v_268, (v_267 != vec3<u32>()));
      r11 = vec4<f32>(v_269.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_270 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_270.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_271 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_271.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[15u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[15u].w);
      r6.y = (r6.y / r7.x);
      let v_272 = -(cb3_3.tint_symbol_3[15u].xyzx);
      r7.x = dot(r11.xyz, v_272.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[31u].xxxx, cb3_3.tint_symbol_3[39u].xxxx).x, 0.0f, 1.0f);
      let v_273 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_273.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_274 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_274.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_275 = fma(r7.zzz, cb3_3.tint_symbol_3[23u].xyz, r10.xyz);
      r10 = vec4<f32>(v_275.xyz, r10.w);
      let v_276 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_276.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_277 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_277.xyz, r11.w);
      let v_278 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_278, v_278, v_278, v_278).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_279 = -(r4.xyzx);
      let v_280 = dot(r11.xyz, v_279.xyz);
      r8.w = clamp(vec4<f32>(v_280, v_280, v_280, v_280).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_281 = fma(r6.yyy, cb3_3.tint_symbol_3[23u].xyz, r9.xyz);
      r9 = vec4<f32>(v_281.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[24u].w == 0.0f)));
      let v_282 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[8u].xyz);
      r11 = vec4<f32>(v_282.xyz, r11.w);
      let v_283 = -(cb3_3.tint_symbol_3[8u].xyzx);
      let v_284 = (r0.xyz + v_283.xyz);
      r12 = vec4<f32>(v_284.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[16u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[24u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[24u].w);
      let v_285 = fma(cb3_3.tint_symbol_3[16u].xyz, r7.xxx, cb3_3.tint_symbol_3[8u].xyz);
      r12 = vec4<f32>(v_285.xyz, r12.w);
      let v_286 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_286.xyz, r12.w);
      let v_287 = bitcast<vec3<u32>>(r6.yyy);
      let v_288 = r11.xyz;
      let v_289 = select(r12.xyz, v_288, (v_287 != vec3<u32>()));
      r11 = vec4<f32>(v_289.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_290 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_290.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_291 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_291.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[16u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[16u].w);
      r6.y = (r6.y / r7.x);
      let v_292 = -(cb3_3.tint_symbol_3[16u].xyzx);
      r7.x = dot(r11.xyz, v_292.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[32u].xxxx, cb3_3.tint_symbol_3[40u].xxxx).x, 0.0f, 1.0f);
      let v_293 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_293.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_294 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_294.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_295 = fma(r7.zzz, cb3_3.tint_symbol_3[24u].xyz, r10.xyz);
      r10 = vec4<f32>(v_295.xyz, r10.w);
      let v_296 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_296.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_297 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_297.xyz, r11.w);
      let v_298 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_298, v_298, v_298, v_298).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_299 = -(r4.xyzx);
      let v_300 = dot(r11.xyz, v_299.xyz);
      r8.w = clamp(vec4<f32>(v_300, v_300, v_300, v_300).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_301 = fma(r6.yyy, cb3_3.tint_symbol_3[24u].xyz, r9.xyz);
      r9 = vec4<f32>(v_301.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
    r6.x = bitcast<f32>(v_1.tint_symbol_5[0i].x);
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[25u].w == 0.0f)));
      let v_302 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[9u].xyz);
      r11 = vec4<f32>(v_302.xyz, r11.w);
      let v_303 = -(cb3_3.tint_symbol_3[9u].xyzx);
      let v_304 = (r0.xyz + v_303.xyz);
      r12 = vec4<f32>(v_304.xyz, r12.w);
      r7.x = dot(r12.xyz, cb3_3.tint_symbol_3[17u].xyz);
      r7.x = clamp(((r7.xxxx / cb3_3.tint_symbol_3[25u].wwww)).x, 0.0f, 1.0f);
      r7.x = (r7.x * cb3_3.tint_symbol_3[25u].w);
      let v_305 = fma(cb3_3.tint_symbol_3[17u].xyz, r7.xxx, cb3_3.tint_symbol_3[9u].xyz);
      r12 = vec4<f32>(v_305.xyz, r12.w);
      let v_306 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_306.xyz, r12.w);
      let v_307 = bitcast<vec3<u32>>(r6.yyy);
      let v_308 = r11.xyz;
      let v_309 = select(r12.xyz, v_308, (v_307 != vec3<u32>()));
      r11 = vec4<f32>(v_309.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      let v_310 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_310.xyz, r11.w);
      r7.x = dot(r11.xyz, r11.xyz);
      r7.x = inverseSqrt(r7.x);
      let v_311 = (r7.xxx * r11.xyz);
      r11 = vec4<f32>(v_311.xyz, r11.w);
      r6.y = clamp(fma(-(r6.yyyy), cb3_3.tint_symbol_3[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r7.x = ((-(cb3_3.tint_symbol_3[17u].wwww)).x + 1.0f);
      r7.x = fma(r7.x, r6.y, cb3_3.tint_symbol_3[17u].w);
      r6.y = (r6.y / r7.x);
      let v_312 = -(cb3_3.tint_symbol_3[17u].xyzx);
      r7.x = dot(r11.xyz, v_312.xyz);
      r7.x = clamp(fma(r7.xxxx, cb3_3.tint_symbol_3[33u].xxxx, cb3_3.tint_symbol_3[41u].xxxx).x, 0.0f, 1.0f);
      let v_313 = -(r4.xyzx);
      r7.z = dot(r11.xyz, v_313.xyz);
      r8.w = clamp(r7.zzzz.w, 0.0f, 1.0f);
      r8.w = ((-(abs(r7.zzzz))).w + r8.w);
      let v_314 = abs(r7.zzzz);
      r7.z = fma(v1.w, r8.w, v_314.z);
      r7.x = (r7.x * r7.z);
      r7.z = (r6.y * r7.x);
      let v_315 = fma(r7.zzz, cb3_3.tint_symbol_3[25u].xyz, r10.xyz);
      r10 = vec4<f32>(v_315.xyz, r10.w);
      let v_316 = fma(r2.xyz, r3.www, r11.xyz);
      r11 = vec4<f32>(v_316.xyz, r11.w);
      r7.z = dot(r11.xyz, r11.xyz);
      r7.z = inverseSqrt(r7.z);
      let v_317 = (r7.zzz * r11.xyz);
      r11 = vec4<f32>(v_317.xyz, r11.w);
      let v_318 = dot(r11.xyz, r5.xyz);
      r7.z = clamp(vec4<f32>(v_318, v_318, v_318, v_318).z, 0.0f, 1.0f);
      r7.z = ((-(r7.zzzz)).z + 1.0f);
      r8.w = (r7.z * r7.z);
      r8.w = (r8.w * r8.w);
      r7.z = (r7.z * r8.w);
      r7.z = fma(cb12_12.tint_symbol_4[0u].x, r7.z, r7.w);
      let v_319 = -(r4.xyzx);
      let v_320 = dot(r11.xyz, v_319.xyz);
      r8.w = clamp(vec4<f32>(v_320, v_320, v_320, v_320).w, 0.0f, 1.0f);
      r8.w = log2(r8.w);
      r8.w = (r8.w * r8.y);
      r8.w = exp2(r8.w);
      r7.z = (r7.z * r8.w);
      r7.x = (r7.x * r7.z);
      r6.y = (r6.y * r7.x);
      r6.y = (r8.x * r6.y);
      let v_321 = fma(r6.yyy, cb3_3.tint_symbol_3[25u].xyz, r9.xyz);
      r9 = vec4<f32>(v_321.xyz, r9.w);
    }
  }
  if ((bitcast<u32>(r6.x) != 0u)) {
  } else {
    r6.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_3[2u].x))));
    r6.x = bitcast<f32>((bitcast<u32>(r6.x) | bitcast<u32>(r6.y)));
    if ((bitcast<u32>(r6.x) != 0u)) {
    } else {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[26u].w == 0.0f)));
      let v_322 = ((-(r0.xyzx)).xyz + cb3_3.tint_symbol_3[10u].xyz);
      r11 = vec4<f32>(v_322.xyz, r11.w);
      let v_323 = -(cb3_3.tint_symbol_3[10u].xyzx);
      let v_324 = (r0.xyz + v_323.xyz);
      r12 = vec4<f32>(v_324.xyz, r12.w);
      r6.y = dot(r12.xyz, cb3_3.tint_symbol_3[18u].xyz);
      r6.y = clamp(((r6.yyyy / cb3_3.tint_symbol_3[26u].wwww)).y, 0.0f, 1.0f);
      r6.y = (r6.y * cb3_3.tint_symbol_3[26u].w);
      let v_325 = fma(cb3_3.tint_symbol_3[18u].xyz, r6.yyy, cb3_3.tint_symbol_3[10u].xyz);
      r12 = vec4<f32>(v_325.xyz, r12.w);
      let v_326 = ((-(r0.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_326.xyz, r12.w);
      let v_327 = bitcast<vec3<u32>>(r6.xxx);
      let v_328 = r11.xyz;
      let v_329 = select(r12.xyz, v_328, (v_327 != vec3<u32>()));
      r11 = vec4<f32>(v_329.xyz, r11.w);
      r6.x = dot(r11.xyz, r11.xyz);
      let v_330 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_330.xyz, r11.w);
      r6.y = dot(r11.xyz, r11.xyz);
      r6.y = inverseSqrt(r6.y);
      let v_331 = (r6.yyy * r11.xyz);
      r11 = vec4<f32>(v_331.xyz, r11.w);
      r6.x = clamp(fma(-(r6.xxxx), cb3_3.tint_symbol_3[10u].wwww, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
      r6.y = ((-(cb3_3.tint_symbol_3[18u].wwww)).y + 1.0f);
      r6.y = fma(r6.y, r6.x, cb3_3.tint_symbol_3[18u].w);
      r6.x = (r6.x / r6.y);
      let v_332 = -(cb3_3.tint_symbol_3[18u].xyzx);
      r6.y = dot(r11.xyz, v_332.xyz);
      r6.y = clamp(fma(r6.yyyy, cb3_3.tint_symbol_3[34u].xxxx, cb3_3.tint_symbol_3[42u].xxxx).y, 0.0f, 1.0f);
      let v_333 = -(r4.xyzx);
      r7.x = dot(r11.xyz, v_333.xyz);
      r7.z = clamp(r7.xxxx.z, 0.0f, 1.0f);
      r7.z = ((-(abs(r7.xxxx))).z + r7.z);
      let v_334 = abs(r7.xxxx);
      r7.x = fma(v1.w, r7.z, v_334.x);
      r6.y = (r6.y * r7.x);
      r7.x = (r6.x * r6.y);
      let v_335 = fma(r7.xxx, cb3_3.tint_symbol_3[26u].xyz, r10.xyz);
      r10 = vec4<f32>(v_335.xyz, r10.w);
      let v_336 = fma(r2.xyz, r3.www, r11.xyz);
      r2 = vec4<f32>(v_336.xyz, r2.w);
      r3.w = dot(r2.xyz, r2.xyz);
      r3.w = inverseSqrt(r3.w);
      let v_337 = (r2.xyz * r3.www);
      r2 = vec4<f32>(v_337.xyz, r2.w);
      let v_338 = dot(r2.xyz, r5.xyz);
      r3.w = clamp(vec4<f32>(v_338, v_338, v_338, v_338).w, 0.0f, 1.0f);
      r3.w = ((-(r3.wwww)).w + 1.0f);
      r5.x = (r3.w * r3.w);
      r5.x = (r5.x * r5.x);
      r3.w = (r3.w * r5.x);
      r3.w = fma(cb12_12.tint_symbol_4[0u].x, r3.w, r7.w);
      let v_339 = -(r4.xyzx);
      let v_340 = dot(r2.xyz, v_339.xyz);
      r2.x = clamp(vec4<f32>(v_340, v_340, v_340, v_340).x, 0.0f, 1.0f);
      r2.x = log2(r2.x);
      r2.x = (r2.x * r8.y);
      r2.x = exp2(r2.x);
      r2.x = (r2.x * r3.w);
      r2.x = (r6.y * r2.x);
      r2.x = (r6.x * r2.x);
      r2.x = (r8.x * r2.x);
      let v_341 = fma(r2.xxx, cb3_3.tint_symbol_3[26u].xyz, r9.xyz);
      r9 = vec4<f32>(v_341.xyz, r9.w);
    }
  }
  let v_342 = (r6.zzz * r10.xyz);
  o9 = vec4<f32>(v_342.xyz, o9.w);
  let v_343 = (r4.www * r9.xyz);
  o10 = vec4<f32>(v_343.xyz, o10.w);
  r2.x = fma(r3.z, r2.w, cb3_3.tint_symbol_3[43u].w);
  r2.x = (r2.x * cb3_3.tint_symbol_3[44u].w);
  r2.x = max(r2.x, 0.0f);
  let v_344 = fma(cb3_3.tint_symbol_3[47u].xyz, r2.xxx, cb3_3.tint_symbol_3[48u].xyz);
  r2 = vec4<f32>(r2.x, v_344.xyz);
  r3.w = ((-(cb2_2.tint_symbol_2[16u].zzzz)).w + 1.0f);
  let v_345 = fma(cb3_3.tint_symbol_3[45u].xyz, r2.xxx, cb3_3.tint_symbol_3[46u].xyz);
  r5 = vec4<f32>(v_345.xyz, r5.w);
  let v_346 = (r5.xyz * cb2_2.tint_symbol_2[16u].zzz);
  r5 = vec4<f32>(v_346.xyz, r5.w);
  let v_347 = fma(r2.yzw, r3.www, r5.xyz);
  r2 = vec4<f32>(r2.x, v_347.xyz);
  let v_348 = (r0.www * r2.yzw);
  r2 = vec4<f32>(r2.x, v_348.xyz);
  let v_349 = fma(cb3_3.tint_symbol_3[43u].xyz, r2.xxx, cb3_3.tint_symbol_3[44u].xyz);
  r5 = vec4<f32>(v_349.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_3[46u].w;
  r6.y = cb3_3.tint_symbol_3[47u].w;
  r6.z = cb3_3.tint_symbol_3[48u].w;
  let v_350 = dot(r6.xyz, r4.xyz);
  r2.x = clamp(vec4<f32>(v_350, v_350, v_350, v_350).x, 0.0f, 1.0f);
  let v_351 = fma(cb3_3.tint_symbol_3[49u].xyz, r2.xxx, r5.xyz);
  r4 = vec4<f32>(v_351.xyz, r4.w);
  let v_352 = fma(r4.xyz, r5.www, r2.yzw);
  r2 = vec4<f32>(v_352.xyz, r2.w);
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
  let v_353 = &(x0[0u]);
  *(v_353) = vec4<f32>((*(v_353)).x, vec3<f32>());
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
