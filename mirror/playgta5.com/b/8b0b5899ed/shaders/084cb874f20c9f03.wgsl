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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_4 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct_1;

struct cb11_struct {
  tint_symbol_6 : array<vec4<f32>, 11u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb11_struct;

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

struct tint_symbol_8 {
  tint_symbol_7 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_8;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>, v4 : vec3<f32>) {
  r0 = vec4<f32>(((v1.wz * vec2<f32>(255.0f))).xy, r0.zw);
  let v_2 = round(r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = max(r0.xy, vec2<f32>());
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(v_3), vec2<u32>(4294967295u), (v_3 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r0.z = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz);
  r0.z = sqrt(r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_5 = (cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz / r0.zzz);
    r1 = vec4<f32>(v_5.xyz, r1.w);
    let v_6 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz / r0.zzz);
    r2 = vec4<f32>(v_6.xyz, r2.w);
    let v_7 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz / r0.zzz);
    r3 = vec4<f32>(v_7.xyz, r3.w);
  } else {
    let v_8 = cb4_4.tint_symbol[bitcast<i32>(r0.x)];
    r1 = vec4<f32>(v_8.xyz, r1.w);
    let v_9 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))];
    r2 = vec4<f32>(v_9.xyz, r2.w);
    let v_10 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))];
    r3 = vec4<f32>(v_10.xyz, r3.w);
  }
  r1.w = cb4_4.tint_symbol[bitcast<i32>(r0.x)].w;
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r0.w = dot(r1, r4);
  r2.w = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].w;
  r1.w = dot(r2, r4);
  r3.w = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].w;
  r0.x = dot(r3, r4);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v1.y))));
  r1.x = dot(r1.xyz, v4);
  r1.y = dot(r2.xyz, v4);
  r1.z = dot(r3.xyz, v4);
  let v_11 = bitcast<vec3<u32>>(r2.www);
  let v_12 = select(v4, r1.xyz, (v_11 != vec3<u32>()));
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = -(r0.zzzz);
  r2.x = fma(v1.x, r0.z, v_13.x);
  r0.z = fma(v1.y, r2.x, r0.z);
  let v_14 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = (r2.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r3 = (r1.wwww * cb1_1.tint_symbol_1[9u]);
  r3 = fma(r0.wwww, cb1_1.tint_symbol_1[8u], r3);
  r3 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r3);
  r3 = (r3 + cb1_1.tint_symbol_1[11u]);
  let v_18 = ((-(r2.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_19.xyz, r5.w);
  let v_20 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r1 = vec4<f32>(v_20.xy, r1.z, v_20.z);
  let v_21 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_22 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  r0.x = dot(r1.xyz, r4.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v_23 = -(bitcast<vec4<i32>>(r0.wwww));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + v_23.x));
  r0.x = f32(bitcast<i32>(r0.x));
  let v_24 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_24.xyz, r1.w);
  r0.x = clamp(((cb2_2.tint_symbol_3[16u].zzzz + cb3_3.tint_symbol_4[49u].wwww)).x, 0.0f, 1.0f);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_25 = (r0.www * r1.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  r0.x = (r0.x * cb2_2.tint_symbol_3[15u].y);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_26 = (r1.www * r4.xyz);
  r6 = vec4<f32>(v_26.xyz, r6.w);
  let v_27 = -(cb3_3.tint_symbol_4[0u].xyzx);
  let v_28 = fma(r4.xyz, r1.www, v_27.xyz);
  r7 = vec4<f32>(v_28.xyz, r7.w);
  r2.w = dot(r7.xyz, r7.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_29 = (r2.www * r7.xyz);
  r7 = vec4<f32>(v_29.xyz, r7.w);
  r2.w = clamp(cb12_12.tint_symbol_5[0u].z, 0.0f, 1.0f);
  r4.w = (cb2_2.tint_symbol_3[15u].z * cb2_2.tint_symbol_3[15u].z);
  r0.x = (r0.x * r0.x);
  r5.w = (cb12_12.tint_symbol_5[0u].y + -500.0f);
  r5.w = max(r5.w, 0.0f);
  r6.w = ((-(r5.wwww)).w + cb12_12.tint_symbol_5[0u].y);
  r5.w = (r5.w * 558.0f);
  r5.w = fma(r6.w, 3.0f, r5.w);
  r6.w = dot(r5.xyz, v_27.xyz);
  r7.w = clamp(r6.wwww.w, 0.0f, 1.0f);
  r7.w = ((-(abs(r6.wwww))).w + r7.w);
  let v_30 = abs(r6.wwww);
  r6.w = fma(r0.z, r7.w, v_30.w);
  let v_31 = dot(r6.xyz, r5.xyz);
  r8.x = clamp(vec4<f32>(v_31, v_31, v_31, v_31).x, 0.0f, 1.0f);
  let v_32 = dot(r7.xyz, v_27.xyz);
  r8.y = clamp(vec4<f32>(v_32, v_32, v_32, v_32).y, 0.0f, 1.0f);
  let v_33 = ((-(r8.xyxx)).xy + vec2<f32>(1.0f));
  r8 = vec4<f32>(v_33.xy, r8.zw);
  let v_34 = (r8.xy * r8.xy);
  r8 = vec4<f32>(r8.xy, v_34.xy);
  let v_35 = (r8.zw * r8.zw);
  r8 = vec4<f32>(r8.xy, v_35.xy);
  let v_36 = (r8.xy * r8.zw);
  r8 = vec4<f32>(v_36.xy, r8.zw);
  r7.w = ((-(cb12_12.tint_symbol_5[0u].xxxx)).w + 1.0f);
  let v_37 = fma(cb12_12.tint_symbol_5[0u].xx, r8.xy, r7.ww);
  r8 = vec4<f32>(v_37.xy, r8.zw);
  let v_38 = (r5.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r8 = vec4<f32>(r8.xy, v_38.xy);
  r8.z = (r8.z * 0.125f);
  r9.x = max(r0.z, r8.x);
  r8.x = (r8.x + -1.0f);
  r8.x = fma(r9.x, r8.x, 1.0f);
  r8.x = fma((-(r2.wwww)).x, r8.x, 1.0f);
  r7.x = dot(r5.xyz, r7.xyz);
  r7.x = clamp(((r7.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r7.x = log2(r7.x);
  r7.x = (r7.x * r8.w);
  r7.x = exp2(r7.x);
  r7.x = (r8.y * r7.x);
  r7.x = (r8.z * r7.x);
  r7.x = (r2.w * r7.x);
  r7.x = (r6.w * r7.x);
  r6.w = (r6.w * r8.x);
  let v_39 = (r6.www * cb3_3.tint_symbol_4[1u].xyz);
  o5 = vec4<f32>(v_39.xyz, o5.w);
  let v_40 = (r7.xxx * cb3_3.tint_symbol_4[1u].xyz);
  o6 = vec4<f32>(v_40.xyz, o6.w);
  r6.w = bitcast<f32>(select(0u, 4294967295u, (0i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
    let v_41 = ((-(r2.xxyz)).yzw + cb3_3.tint_symbol_4[3u].xyz);
    r9 = vec4<f32>(r9.x, v_41.xyz);
    let v_42 = -(cb3_3.tint_symbol_4[3u].xyzx);
    let v_43 = (r2.xyz + v_42.xyz);
    r10 = vec4<f32>(v_43.xyz, r10.w);
    r7.y = dot(r10.xyz, cb3_3.tint_symbol_4[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_4[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_4[19u].w);
    let v_44 = fma(cb3_3.tint_symbol_4[11u].xyz, r7.yyy, cb3_3.tint_symbol_4[3u].xyz);
    r10 = vec4<f32>(v_44.xyz, r10.w);
    let v_45 = ((-(r2.xyzx)).xyz + r10.xyz);
    r10 = vec4<f32>(v_45.xyz, r10.w);
    let v_46 = bitcast<vec3<u32>>(r7.xxx);
    let v_47 = r9.yzw;
    let v_48 = select(r10.xyz, v_47, (v_46 != vec3<u32>()));
    r7 = vec4<f32>(v_48.xyz, r7.w);
    r8.y = dot(r7.xyz, r7.xyz);
    let v_49 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_49.xyz, r7.w);
    r9.y = dot(r7.xyz, r7.xyz);
    r9.y = inverseSqrt(r9.y);
    let v_50 = (r7.xyz * r9.yyy);
    r7 = vec4<f32>(v_50.xyz, r7.w);
    r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
    r9.y = ((-(cb3_3.tint_symbol_4[11u].wwww)).y + 1.0f);
    r9.y = fma(r9.y, r8.y, cb3_3.tint_symbol_4[11u].w);
    r8.y = (r8.y / r9.y);
    let v_51 = -(cb3_3.tint_symbol_4[11u].xyzx);
    r9.y = dot(r7.xyz, v_51.xyz);
    r9.y = clamp(fma(r9.yyyy, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).y, 0.0f, 1.0f);
    r9.z = dot(r7.xyz, r5.xyz);
    r9.w = clamp(r9.zzzz.w, 0.0f, 1.0f);
    r9.w = ((-(abs(r9.zzzz))).w + r9.w);
    let v_52 = abs(r9.zzzz);
    r9.z = fma(r0.z, r9.w, v_52.z);
    r9.y = (r9.y * r9.z);
    r9.z = (r8.y * r9.y);
    let v_53 = (r9.zzz * cb3_3.tint_symbol_4[19u].xyz);
    r10 = vec4<f32>(v_53.xyz, r10.w);
    let v_54 = fma(r4.xyz, r1.www, r7.xyz);
    r7 = vec4<f32>(v_54.xyz, r7.w);
    r9.z = dot(r7.xyz, r7.xyz);
    r9.z = inverseSqrt(r9.z);
    let v_55 = (r7.xyz * r9.zzz);
    r7 = vec4<f32>(v_55.xyz, r7.w);
    let v_56 = dot(r7.xyz, r6.xyz);
    r9.z = clamp(vec4<f32>(v_56, v_56, v_56, v_56).z, 0.0f, 1.0f);
    r9.z = ((-(r9.zzzz)).z + 1.0f);
    r9.w = (r9.z * r9.z);
    r9.w = (r9.w * r9.w);
    r9.z = (r9.w * r9.z);
    r9.z = fma(cb12_12.tint_symbol_5[0u].x, r9.z, r7.w);
    let v_57 = dot(r7.xyz, r5.xyz);
    r7.x = clamp(vec4<f32>(v_57, v_57, v_57, v_57).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r9.z);
    r7.x = (r9.y * r7.x);
    r7.x = (r8.y * r7.x);
    r7.x = (r8.z * r7.x);
    let v_58 = (r7.xxx * cb3_3.tint_symbol_4[19u].xyz);
    r7 = vec4<f32>(v_58.xyz, r7.w);
  }
  r8.y = bitcast<f32>(select(0u, 4294967295u, (0i < bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
  if ((bitcast<u32>(r8.y) != 0u)) {
    r9.y = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.z = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    let v_59 = bitcast<u32>(r9.y);
    let v_60 = r9.z;
    r9.y = select(r6.w, v_60, (v_59 != 0u));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
      let v_61 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[4u].xyz);
      r11 = vec4<f32>(v_61.xyz, r11.w);
      let v_62 = -(cb3_3.tint_symbol_4[4u].xyzx);
      let v_63 = (r2.xyz + v_62.xyz);
      r12 = vec4<f32>(v_63.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_4[12u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[20u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_4[20u].w);
      let v_64 = fma(cb3_3.tint_symbol_4[12u].xyz, r9.www, cb3_3.tint_symbol_4[4u].xyz);
      r12 = vec4<f32>(v_64.xyz, r12.w);
      let v_65 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_65.xyz, r12.w);
      let v_66 = bitcast<vec3<u32>>(r9.zzz);
      let v_67 = r11.xyz;
      let v_68 = select(r12.xyz, v_67, (v_66 != vec3<u32>()));
      r11 = vec4<f32>(v_68.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      let v_69 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_69.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_70 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_70.xyz, r11.w);
      r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_4[12u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[12u].w);
      r9.z = (r9.z / r9.w);
      let v_71 = -(cb3_3.tint_symbol_4[12u].xyzx);
      r9.w = dot(r11.xyz, v_71.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).w, 0.0f, 1.0f);
      r10.w = dot(r11.xyz, r5.xyz);
      r11.w = clamp(r10.wwww.w, 0.0f, 1.0f);
      r11.w = ((-(abs(r10.wwww))).w + r11.w);
      let v_72 = abs(r10.wwww);
      r10.w = fma(r0.z, r11.w, v_72.w);
      r9.w = (r9.w * r10.w);
      r10.w = (r9.z * r9.w);
      let v_73 = fma(r10.www, cb3_3.tint_symbol_4[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_73.xyz, r10.w);
      let v_74 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_74.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_75 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_75.xyz, r11.w);
      let v_76 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_76, v_76, v_76, v_76).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
      let v_77 = dot(r11.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_77, v_77, v_77, v_77).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r9.z = (r8.z * r9.z);
      let v_78 = fma(r9.zzz, cb3_3.tint_symbol_4[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_78.xyz, r7.w);
    }
  } else {
    r9.y = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  }
  if ((bitcast<u32>(r9.y) != 0u)) {
    r9.y = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[21u].w == 0.0f)));
      let v_79 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[5u].xyz);
      r11 = vec4<f32>(v_79.xyz, r11.w);
      let v_80 = -(cb3_3.tint_symbol_4[5u].xyzx);
      let v_81 = (r2.xyz + v_80.xyz);
      r12 = vec4<f32>(v_81.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_4[13u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[21u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_4[21u].w);
      let v_82 = fma(cb3_3.tint_symbol_4[13u].xyz, r9.www, cb3_3.tint_symbol_4[5u].xyz);
      r12 = vec4<f32>(v_82.xyz, r12.w);
      let v_83 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_83.xyz, r12.w);
      let v_84 = bitcast<vec3<u32>>(r9.zzz);
      let v_85 = r11.xyz;
      let v_86 = select(r12.xyz, v_85, (v_84 != vec3<u32>()));
      r11 = vec4<f32>(v_86.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      let v_87 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_87.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_88 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_88.xyz, r11.w);
      r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_4[13u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[13u].w);
      r9.z = (r9.z / r9.w);
      let v_89 = -(cb3_3.tint_symbol_4[13u].xyzx);
      r9.w = dot(r11.xyz, v_89.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).w, 0.0f, 1.0f);
      r10.w = dot(r11.xyz, r5.xyz);
      r11.w = clamp(r10.wwww.w, 0.0f, 1.0f);
      r11.w = ((-(abs(r10.wwww))).w + r11.w);
      let v_90 = abs(r10.wwww);
      r10.w = fma(r0.z, r11.w, v_90.w);
      r9.w = (r9.w * r10.w);
      r10.w = (r9.z * r9.w);
      let v_91 = fma(r10.www, cb3_3.tint_symbol_4[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_91.xyz, r10.w);
      let v_92 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_92.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_93 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_93.xyz, r11.w);
      let v_94 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_94, v_94, v_94, v_94).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
      let v_95 = dot(r11.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_95, v_95, v_95, v_95).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r9.z = (r8.z * r9.z);
      let v_96 = fma(r9.zzz, cb3_3.tint_symbol_4[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_96.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r9.y) != 0u)) {
    r9.y = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
      let v_97 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
      r11 = vec4<f32>(v_97.xyz, r11.w);
      let v_98 = -(cb3_3.tint_symbol_4[6u].xyzx);
      let v_99 = (r2.xyz + v_98.xyz);
      r12 = vec4<f32>(v_99.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_4[14u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[22u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_4[22u].w);
      let v_100 = fma(cb3_3.tint_symbol_4[14u].xyz, r9.www, cb3_3.tint_symbol_4[6u].xyz);
      r12 = vec4<f32>(v_100.xyz, r12.w);
      let v_101 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_101.xyz, r12.w);
      let v_102 = bitcast<vec3<u32>>(r9.zzz);
      let v_103 = r11.xyz;
      let v_104 = select(r12.xyz, v_103, (v_102 != vec3<u32>()));
      r11 = vec4<f32>(v_104.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      let v_105 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_105.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_106 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_106.xyz, r11.w);
      r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_4[14u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[14u].w);
      r9.z = (r9.z / r9.w);
      let v_107 = -(cb3_3.tint_symbol_4[14u].xyzx);
      r9.w = dot(r11.xyz, v_107.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).w, 0.0f, 1.0f);
      r10.w = dot(r11.xyz, r5.xyz);
      r11.w = clamp(r10.wwww.w, 0.0f, 1.0f);
      r11.w = ((-(abs(r10.wwww))).w + r11.w);
      let v_108 = abs(r10.wwww);
      r10.w = fma(r0.z, r11.w, v_108.w);
      r9.w = (r9.w * r10.w);
      r10.w = (r9.z * r9.w);
      let v_109 = fma(r10.www, cb3_3.tint_symbol_4[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_109.xyz, r10.w);
      let v_110 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_110.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_111 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_111.xyz, r11.w);
      let v_112 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_112, v_112, v_112, v_112).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
      let v_113 = dot(r11.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_113, v_113, v_113, v_113).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r9.z = (r8.z * r9.z);
      let v_114 = fma(r9.zzz, cb3_3.tint_symbol_4[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_114.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r9.y) != 0u)) {
    r9.y = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[23u].w == 0.0f)));
      let v_115 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[7u].xyz);
      r11 = vec4<f32>(v_115.xyz, r11.w);
      let v_116 = -(cb3_3.tint_symbol_4[7u].xyzx);
      let v_117 = (r2.xyz + v_116.xyz);
      r12 = vec4<f32>(v_117.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_4[15u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[23u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_4[23u].w);
      let v_118 = fma(cb3_3.tint_symbol_4[15u].xyz, r9.www, cb3_3.tint_symbol_4[7u].xyz);
      r12 = vec4<f32>(v_118.xyz, r12.w);
      let v_119 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_119.xyz, r12.w);
      let v_120 = bitcast<vec3<u32>>(r9.zzz);
      let v_121 = r11.xyz;
      let v_122 = select(r12.xyz, v_121, (v_120 != vec3<u32>()));
      r11 = vec4<f32>(v_122.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      let v_123 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_123.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_124 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_124.xyz, r11.w);
      r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[7u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_4[15u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[15u].w);
      r9.z = (r9.z / r9.w);
      let v_125 = -(cb3_3.tint_symbol_4[15u].xyzx);
      r9.w = dot(r11.xyz, v_125.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[31u].xxxx, cb3_3.tint_symbol_4[39u].xxxx).w, 0.0f, 1.0f);
      r10.w = dot(r11.xyz, r5.xyz);
      r11.w = clamp(r10.wwww.w, 0.0f, 1.0f);
      r11.w = ((-(abs(r10.wwww))).w + r11.w);
      let v_126 = abs(r10.wwww);
      r10.w = fma(r0.z, r11.w, v_126.w);
      r9.w = (r9.w * r10.w);
      r10.w = (r9.z * r9.w);
      let v_127 = fma(r10.www, cb3_3.tint_symbol_4[23u].xyz, r10.xyz);
      r10 = vec4<f32>(v_127.xyz, r10.w);
      let v_128 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_128.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_129 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_129.xyz, r11.w);
      let v_130 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_130, v_130, v_130, v_130).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
      let v_131 = dot(r11.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_131, v_131, v_131, v_131).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r9.z = (r8.z * r9.z);
      let v_132 = fma(r9.zzz, cb3_3.tint_symbol_4[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_132.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r9.y) != 0u)) {
    r9.y = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[24u].w == 0.0f)));
      let v_133 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[8u].xyz);
      r11 = vec4<f32>(v_133.xyz, r11.w);
      let v_134 = -(cb3_3.tint_symbol_4[8u].xyzx);
      let v_135 = (r2.xyz + v_134.xyz);
      r12 = vec4<f32>(v_135.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_4[16u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[24u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_4[24u].w);
      let v_136 = fma(cb3_3.tint_symbol_4[16u].xyz, r9.www, cb3_3.tint_symbol_4[8u].xyz);
      r12 = vec4<f32>(v_136.xyz, r12.w);
      let v_137 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_137.xyz, r12.w);
      let v_138 = bitcast<vec3<u32>>(r9.zzz);
      let v_139 = r11.xyz;
      let v_140 = select(r12.xyz, v_139, (v_138 != vec3<u32>()));
      r11 = vec4<f32>(v_140.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      let v_141 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_141.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_142 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_142.xyz, r11.w);
      r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[8u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_4[16u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[16u].w);
      r9.z = (r9.z / r9.w);
      let v_143 = -(cb3_3.tint_symbol_4[16u].xyzx);
      r9.w = dot(r11.xyz, v_143.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[32u].xxxx, cb3_3.tint_symbol_4[40u].xxxx).w, 0.0f, 1.0f);
      r10.w = dot(r11.xyz, r5.xyz);
      r11.w = clamp(r10.wwww.w, 0.0f, 1.0f);
      r11.w = ((-(abs(r10.wwww))).w + r11.w);
      let v_144 = abs(r10.wwww);
      r10.w = fma(r0.z, r11.w, v_144.w);
      r9.w = (r9.w * r10.w);
      r10.w = (r9.z * r9.w);
      let v_145 = fma(r10.www, cb3_3.tint_symbol_4[24u].xyz, r10.xyz);
      r10 = vec4<f32>(v_145.xyz, r10.w);
      let v_146 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_146.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_147 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_147.xyz, r11.w);
      let v_148 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_148, v_148, v_148, v_148).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
      let v_149 = dot(r11.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_149, v_149, v_149, v_149).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r9.z = (r8.z * r9.z);
      let v_150 = fma(r9.zzz, cb3_3.tint_symbol_4[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_150.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r9.y) != 0u)) {
    r9.y = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[25u].w == 0.0f)));
      let v_151 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[9u].xyz);
      r11 = vec4<f32>(v_151.xyz, r11.w);
      let v_152 = -(cb3_3.tint_symbol_4[9u].xyzx);
      let v_153 = (r2.xyz + v_152.xyz);
      r12 = vec4<f32>(v_153.xyz, r12.w);
      r9.w = dot(r12.xyz, cb3_3.tint_symbol_4[17u].xyz);
      r9.w = clamp(((r9.wwww / cb3_3.tint_symbol_4[25u].wwww)).w, 0.0f, 1.0f);
      r9.w = (r9.w * cb3_3.tint_symbol_4[25u].w);
      let v_154 = fma(cb3_3.tint_symbol_4[17u].xyz, r9.www, cb3_3.tint_symbol_4[9u].xyz);
      r12 = vec4<f32>(v_154.xyz, r12.w);
      let v_155 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_155.xyz, r12.w);
      let v_156 = bitcast<vec3<u32>>(r9.zzz);
      let v_157 = r11.xyz;
      let v_158 = select(r12.xyz, v_157, (v_156 != vec3<u32>()));
      r11 = vec4<f32>(v_158.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      let v_159 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_159.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_160 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_160.xyz, r11.w);
      r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[9u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
      r9.w = ((-(cb3_3.tint_symbol_4[17u].wwww)).w + 1.0f);
      r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[17u].w);
      r9.z = (r9.z / r9.w);
      let v_161 = -(cb3_3.tint_symbol_4[17u].xyzx);
      r9.w = dot(r11.xyz, v_161.xyz);
      r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[33u].xxxx, cb3_3.tint_symbol_4[41u].xxxx).w, 0.0f, 1.0f);
      r10.w = dot(r11.xyz, r5.xyz);
      r11.w = clamp(r10.wwww.w, 0.0f, 1.0f);
      r11.w = ((-(abs(r10.wwww))).w + r11.w);
      let v_162 = abs(r10.wwww);
      r10.w = fma(r0.z, r11.w, v_162.w);
      r9.w = (r9.w * r10.w);
      r10.w = (r9.z * r9.w);
      let v_163 = fma(r10.www, cb3_3.tint_symbol_4[25u].xyz, r10.xyz);
      r10 = vec4<f32>(v_163.xyz, r10.w);
      let v_164 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_164.xyz, r11.w);
      r10.w = dot(r11.xyz, r11.xyz);
      r10.w = inverseSqrt(r10.w);
      let v_165 = (r10.www * r11.xyz);
      r11 = vec4<f32>(v_165.xyz, r11.w);
      let v_166 = dot(r11.xyz, r6.xyz);
      r10.w = clamp(vec4<f32>(v_166, v_166, v_166, v_166).w, 0.0f, 1.0f);
      r10.w = ((-(r10.wwww)).w + 1.0f);
      r11.w = (r10.w * r10.w);
      r11.w = (r11.w * r11.w);
      r10.w = (r10.w * r11.w);
      r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
      let v_167 = dot(r11.xyz, r5.xyz);
      r11.x = clamp(vec4<f32>(v_167, v_167, v_167, v_167).x, 0.0f, 1.0f);
      r11.x = log2(r11.x);
      r11.x = (r8.w * r11.x);
      r11.x = exp2(r11.x);
      r10.w = (r10.w * r11.x);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r9.z = (r8.z * r9.z);
      let v_168 = fma(r9.zzz, cb3_3.tint_symbol_4[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_168.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r9.y) != 0u)) {
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[26u].w == 0.0f)));
      let v_169 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[10u].xyz);
      r11 = vec4<f32>(v_169.xyz, r11.w);
      let v_170 = -(cb3_3.tint_symbol_4[10u].xyzx);
      let v_171 = (r2.xyz + v_170.xyz);
      r12 = vec4<f32>(v_171.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[18u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[26u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[26u].w);
      let v_172 = fma(cb3_3.tint_symbol_4[18u].xyz, r9.zzz, cb3_3.tint_symbol_4[10u].xyz);
      r12 = vec4<f32>(v_172.xyz, r12.w);
      let v_173 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_173.xyz, r12.w);
      let v_174 = bitcast<vec3<u32>>(r9.yyy);
      let v_175 = r11.xyz;
      let v_176 = select(r12.xyz, v_175, (v_174 != vec3<u32>()));
      r9 = vec4<f32>(r9.x, v_176.xyz);
      r10.w = dot(r9.yzw, r9.yzw);
      let v_177 = (r9.yzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(r9.x, v_177.xyz);
      r11.x = dot(r9.yzw, r9.yzw);
      r11.x = inverseSqrt(r11.x);
      let v_178 = (r9.yzw * r11.xxx);
      r9 = vec4<f32>(r9.x, v_178.xyz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_4[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_4[18u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_4[18u].w);
      r10.w = (r10.w / r11.x);
      let v_179 = -(cb3_3.tint_symbol_4[18u].xyzx);
      r11.x = dot(r9.yzw, v_179.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_4[34u].xxxx, cb3_3.tint_symbol_4[42u].xxxx).x, 0.0f, 1.0f);
      r11.y = dot(r9.yzw, r5.xyz);
      r11.z = clamp(r11.yyyy.z, 0.0f, 1.0f);
      r11.z = ((-(abs(r11.yyyy))).z + r11.z);
      let v_180 = abs(r11.yyyy);
      r11.y = fma(r0.z, r11.z, v_180.y);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_181 = fma(r11.yyy, cb3_3.tint_symbol_4[26u].xyz, r10.xyz);
      r10 = vec4<f32>(v_181.xyz, r10.w);
      let v_182 = fma(r4.xyz, r1.www, r9.yzw);
      r9 = vec4<f32>(r9.x, v_182.xyz);
      r11.y = dot(r9.yzw, r9.yzw);
      r11.y = inverseSqrt(r11.y);
      let v_183 = (r9.yzw * r11.yyy);
      r9 = vec4<f32>(r9.x, v_183.xyz);
      let v_184 = dot(r9.yzw, r6.xyz);
      r11.y = clamp(vec4<f32>(v_184, v_184, v_184, v_184).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(cb12_12.tint_symbol_5[0u].x, r11.y, r7.w);
      let v_185 = dot(r9.yzw, r5.xyz);
      r9.y = clamp(vec4<f32>(v_185, v_185, v_185, v_185).y, 0.0f, 1.0f);
      r9.y = log2(r9.y);
      r9.y = (r8.w * r9.y);
      r9.y = exp2(r9.y);
      r9.y = (r9.y * r11.y);
      r9.y = (r11.x * r9.y);
      r9.y = (r10.w * r9.y);
      r9.y = (r8.z * r9.y);
      let v_186 = fma(r9.yyy, cb3_3.tint_symbol_4[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_186.xyz, r7.w);
    }
  }
  r9.y = (r8.x * r8.x);
  r2.w = (r2.w * r2.w);
  o5.w = ((-(r8.xxxx)).w + 1.0f);
  let v_187 = (r10.xyz * r9.yyy);
  o7 = vec4<f32>(v_187.xyz, o7.w);
  let v_188 = (r7.xyz * r2.www);
  o8 = vec4<f32>(v_188.xyz, o8.w);
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
    let v_189 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[3u].xyz);
    r10 = vec4<f32>(v_189.xyz, r10.w);
    let v_190 = -(cb3_3.tint_symbol_4[3u].xyzx);
    let v_191 = (r2.xyz + v_190.xyz);
    r11 = vec4<f32>(v_191.xyz, r11.w);
    r7.y = dot(r11.xyz, cb3_3.tint_symbol_4[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_4[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_4[19u].w);
    let v_192 = fma(cb3_3.tint_symbol_4[11u].xyz, r7.yyy, cb3_3.tint_symbol_4[3u].xyz);
    r11 = vec4<f32>(v_192.xyz, r11.w);
    let v_193 = ((-(r2.xyzx)).xyz + r11.xyz);
    r11 = vec4<f32>(v_193.xyz, r11.w);
    let v_194 = bitcast<vec3<u32>>(r7.xxx);
    let v_195 = r10.xyz;
    let v_196 = select(r11.xyz, v_195, (v_194 != vec3<u32>()));
    r7 = vec4<f32>(v_196.xyz, r7.w);
    r9.z = dot(r7.xyz, r7.xyz);
    let v_197 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_197.xyz, r7.w);
    r9.w = dot(r7.xyz, r7.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_198 = (r7.xyz * r9.www);
    r7 = vec4<f32>(v_198.xyz, r7.w);
    r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r9.w = ((-(cb3_3.tint_symbol_4[11u].wwww)).w + 1.0f);
    r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[11u].w);
    r9.z = (r9.z / r9.w);
    let v_199 = -(cb3_3.tint_symbol_4[11u].xyzx);
    r9.w = dot(r7.xyz, v_199.xyz);
    r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).w, 0.0f, 1.0f);
    let v_200 = -(r5.xyzx);
    r10.x = dot(r7.xyz, v_200.xyz);
    r10.y = clamp(r10.xxxx.y, 0.0f, 1.0f);
    r10.y = ((-(abs(r10.xxxx))).y + r10.y);
    let v_201 = abs(r10.xxxx);
    r10.x = fma(r0.z, r10.y, v_201.x);
    r9.w = (r9.w * r10.x);
    r10.x = (r9.z * r9.w);
    let v_202 = (r10.xxx * cb3_3.tint_symbol_4[19u].xyz);
    r10 = vec4<f32>(v_202.xyz, r10.w);
    let v_203 = fma(r4.xyz, r1.www, r7.xyz);
    r7 = vec4<f32>(v_203.xyz, r7.w);
    r10.w = dot(r7.xyz, r7.xyz);
    r10.w = inverseSqrt(r10.w);
    let v_204 = (r7.xyz * r10.www);
    r7 = vec4<f32>(v_204.xyz, r7.w);
    let v_205 = dot(r7.xyz, r6.xyz);
    r10.w = clamp(vec4<f32>(v_205, v_205, v_205, v_205).w, 0.0f, 1.0f);
    r10.w = ((-(r10.wwww)).w + 1.0f);
    r11.x = (r10.w * r10.w);
    r11.x = (r11.x * r11.x);
    r10.w = (r10.w * r11.x);
    r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
    let v_206 = -(r5.xyzx);
    let v_207 = dot(r7.xyz, v_206.xyz);
    r7.x = clamp(vec4<f32>(v_207, v_207, v_207, v_207).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r10.w);
    r7.x = (r9.w * r7.x);
    r7.x = (r9.z * r7.x);
    r7.x = (r8.z * r7.x);
    let v_208 = (r7.xxx * cb3_3.tint_symbol_4[19u].xyz);
    r7 = vec4<f32>(v_208.xyz, r7.w);
  }
  if ((bitcast<u32>(r8.y) != 0u)) {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    let v_209 = bitcast<u32>(r9.z);
    let v_210 = r8.y;
    r6.w = select(r6.w, v_210, (v_209 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
      let v_211 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[4u].xyz);
      r11 = vec4<f32>(v_211.xyz, r11.w);
      let v_212 = -(cb3_3.tint_symbol_4[4u].xyzx);
      let v_213 = (r2.xyz + v_212.xyz);
      r12 = vec4<f32>(v_213.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[12u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[20u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[20u].w);
      let v_214 = fma(cb3_3.tint_symbol_4[12u].xyz, r9.zzz, cb3_3.tint_symbol_4[4u].xyz);
      r12 = vec4<f32>(v_214.xyz, r12.w);
      let v_215 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_215.xyz, r12.w);
      let v_216 = bitcast<vec3<u32>>(r8.yyy);
      let v_217 = r11.xyz;
      let v_218 = select(r12.xyz, v_217, (v_216 != vec3<u32>()));
      r11 = vec4<f32>(v_218.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_219 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_219.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_220 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_220.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[12u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[12u].w);
      r8.y = (r8.y / r9.z);
      let v_221 = -(cb3_3.tint_symbol_4[12u].xyzx);
      r9.z = dot(r11.xyz, v_221.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).z, 0.0f, 1.0f);
      let v_222 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_222.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_223 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_223.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_224 = fma(r9.www, cb3_3.tint_symbol_4[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_224.xyz, r10.w);
      let v_225 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_225.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_226 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_226.xyz, r11.w);
      let v_227 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_227, v_227, v_227, v_227).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_228 = -(r5.xyzx);
      let v_229 = dot(r11.xyz, v_228.xyz);
      r10.w = clamp(vec4<f32>(v_229, v_229, v_229, v_229).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_230 = fma(r8.yyy, cb3_3.tint_symbol_4[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_230.xyz, r7.w);
    }
  } else {
    r6.w = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (2i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[21u].w == 0.0f)));
      let v_231 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[5u].xyz);
      r11 = vec4<f32>(v_231.xyz, r11.w);
      let v_232 = -(cb3_3.tint_symbol_4[5u].xyzx);
      let v_233 = (r2.xyz + v_232.xyz);
      r12 = vec4<f32>(v_233.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[13u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[21u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[21u].w);
      let v_234 = fma(cb3_3.tint_symbol_4[13u].xyz, r9.zzz, cb3_3.tint_symbol_4[5u].xyz);
      r12 = vec4<f32>(v_234.xyz, r12.w);
      let v_235 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_235.xyz, r12.w);
      let v_236 = bitcast<vec3<u32>>(r8.yyy);
      let v_237 = r11.xyz;
      let v_238 = select(r12.xyz, v_237, (v_236 != vec3<u32>()));
      r11 = vec4<f32>(v_238.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_239 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_239.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_240 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_240.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[13u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[13u].w);
      r8.y = (r8.y / r9.z);
      let v_241 = -(cb3_3.tint_symbol_4[13u].xyzx);
      r9.z = dot(r11.xyz, v_241.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).z, 0.0f, 1.0f);
      let v_242 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_242.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_243 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_243.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_244 = fma(r9.www, cb3_3.tint_symbol_4[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_244.xyz, r10.w);
      let v_245 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_245.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_246 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_246.xyz, r11.w);
      let v_247 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_247, v_247, v_247, v_247).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_248 = -(r5.xyzx);
      let v_249 = dot(r11.xyz, v_248.xyz);
      r10.w = clamp(vec4<f32>(v_249, v_249, v_249, v_249).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_250 = fma(r8.yyy, cb3_3.tint_symbol_4[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_250.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
      let v_251 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
      r11 = vec4<f32>(v_251.xyz, r11.w);
      let v_252 = -(cb3_3.tint_symbol_4[6u].xyzx);
      let v_253 = (r2.xyz + v_252.xyz);
      r12 = vec4<f32>(v_253.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[14u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[22u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[22u].w);
      let v_254 = fma(cb3_3.tint_symbol_4[14u].xyz, r9.zzz, cb3_3.tint_symbol_4[6u].xyz);
      r12 = vec4<f32>(v_254.xyz, r12.w);
      let v_255 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_255.xyz, r12.w);
      let v_256 = bitcast<vec3<u32>>(r8.yyy);
      let v_257 = r11.xyz;
      let v_258 = select(r12.xyz, v_257, (v_256 != vec3<u32>()));
      r11 = vec4<f32>(v_258.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_259 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_259.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_260 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_260.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[14u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[14u].w);
      r8.y = (r8.y / r9.z);
      let v_261 = -(cb3_3.tint_symbol_4[14u].xyzx);
      r9.z = dot(r11.xyz, v_261.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).z, 0.0f, 1.0f);
      let v_262 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_262.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_263 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_263.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_264 = fma(r9.www, cb3_3.tint_symbol_4[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_264.xyz, r10.w);
      let v_265 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_265.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_266 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_266.xyz, r11.w);
      let v_267 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_267, v_267, v_267, v_267).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_268 = -(r5.xyzx);
      let v_269 = dot(r11.xyz, v_268.xyz);
      r10.w = clamp(vec4<f32>(v_269, v_269, v_269, v_269).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_270 = fma(r8.yyy, cb3_3.tint_symbol_4[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_270.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (4i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[23u].w == 0.0f)));
      let v_271 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[7u].xyz);
      r11 = vec4<f32>(v_271.xyz, r11.w);
      let v_272 = -(cb3_3.tint_symbol_4[7u].xyzx);
      let v_273 = (r2.xyz + v_272.xyz);
      r12 = vec4<f32>(v_273.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[15u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[23u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[23u].w);
      let v_274 = fma(cb3_3.tint_symbol_4[15u].xyz, r9.zzz, cb3_3.tint_symbol_4[7u].xyz);
      r12 = vec4<f32>(v_274.xyz, r12.w);
      let v_275 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_275.xyz, r12.w);
      let v_276 = bitcast<vec3<u32>>(r8.yyy);
      let v_277 = r11.xyz;
      let v_278 = select(r12.xyz, v_277, (v_276 != vec3<u32>()));
      r11 = vec4<f32>(v_278.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_279 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_279.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_280 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_280.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[7u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[15u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[15u].w);
      r8.y = (r8.y / r9.z);
      let v_281 = -(cb3_3.tint_symbol_4[15u].xyzx);
      r9.z = dot(r11.xyz, v_281.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[31u].xxxx, cb3_3.tint_symbol_4[39u].xxxx).z, 0.0f, 1.0f);
      let v_282 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_282.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_283 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_283.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_284 = fma(r9.www, cb3_3.tint_symbol_4[23u].xyz, r10.xyz);
      r10 = vec4<f32>(v_284.xyz, r10.w);
      let v_285 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_285.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_286 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_286.xyz, r11.w);
      let v_287 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_287, v_287, v_287, v_287).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_288 = -(r5.xyzx);
      let v_289 = dot(r11.xyz, v_288.xyz);
      r10.w = clamp(vec4<f32>(v_289, v_289, v_289, v_289).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_290 = fma(r8.yyy, cb3_3.tint_symbol_4[23u].xyz, r7.xyz);
      r7 = vec4<f32>(v_290.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (5i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[24u].w == 0.0f)));
      let v_291 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[8u].xyz);
      r11 = vec4<f32>(v_291.xyz, r11.w);
      let v_292 = -(cb3_3.tint_symbol_4[8u].xyzx);
      let v_293 = (r2.xyz + v_292.xyz);
      r12 = vec4<f32>(v_293.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[16u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[24u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[24u].w);
      let v_294 = fma(cb3_3.tint_symbol_4[16u].xyz, r9.zzz, cb3_3.tint_symbol_4[8u].xyz);
      r12 = vec4<f32>(v_294.xyz, r12.w);
      let v_295 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_295.xyz, r12.w);
      let v_296 = bitcast<vec3<u32>>(r8.yyy);
      let v_297 = r11.xyz;
      let v_298 = select(r12.xyz, v_297, (v_296 != vec3<u32>()));
      r11 = vec4<f32>(v_298.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_299 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_299.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_300 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_300.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[8u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[16u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[16u].w);
      r8.y = (r8.y / r9.z);
      let v_301 = -(cb3_3.tint_symbol_4[16u].xyzx);
      r9.z = dot(r11.xyz, v_301.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[32u].xxxx, cb3_3.tint_symbol_4[40u].xxxx).z, 0.0f, 1.0f);
      let v_302 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_302.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_303 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_303.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_304 = fma(r9.www, cb3_3.tint_symbol_4[24u].xyz, r10.xyz);
      r10 = vec4<f32>(v_304.xyz, r10.w);
      let v_305 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_305.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_306 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_306.xyz, r11.w);
      let v_307 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_307, v_307, v_307, v_307).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_308 = -(r5.xyzx);
      let v_309 = dot(r11.xyz, v_308.xyz);
      r10.w = clamp(vec4<f32>(v_309, v_309, v_309, v_309).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_310 = fma(r8.yyy, cb3_3.tint_symbol_4[24u].xyz, r7.xyz);
      r7 = vec4<f32>(v_310.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
    r6.w = bitcast<f32>(v_1.tint_symbol_7[0i].x);
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (6i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[25u].w == 0.0f)));
      let v_311 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[9u].xyz);
      r11 = vec4<f32>(v_311.xyz, r11.w);
      let v_312 = -(cb3_3.tint_symbol_4[9u].xyzx);
      let v_313 = (r2.xyz + v_312.xyz);
      r12 = vec4<f32>(v_313.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[17u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[25u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[25u].w);
      let v_314 = fma(cb3_3.tint_symbol_4[17u].xyz, r9.zzz, cb3_3.tint_symbol_4[9u].xyz);
      r12 = vec4<f32>(v_314.xyz, r12.w);
      let v_315 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_315.xyz, r12.w);
      let v_316 = bitcast<vec3<u32>>(r8.yyy);
      let v_317 = r11.xyz;
      let v_318 = select(r12.xyz, v_317, (v_316 != vec3<u32>()));
      r11 = vec4<f32>(v_318.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_319 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_319.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_320 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_320.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[9u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[17u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[17u].w);
      r8.y = (r8.y / r9.z);
      let v_321 = -(cb3_3.tint_symbol_4[17u].xyzx);
      r9.z = dot(r11.xyz, v_321.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[33u].xxxx, cb3_3.tint_symbol_4[41u].xxxx).z, 0.0f, 1.0f);
      let v_322 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_322.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_323 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_323.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_324 = fma(r9.www, cb3_3.tint_symbol_4[25u].xyz, r10.xyz);
      r10 = vec4<f32>(v_324.xyz, r10.w);
      let v_325 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_325.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_326 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_326.xyz, r11.w);
      let v_327 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_327, v_327, v_327, v_327).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_328 = -(r5.xyzx);
      let v_329 = dot(r11.xyz, v_328.xyz);
      r10.w = clamp(vec4<f32>(v_329, v_329, v_329, v_329).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_330 = fma(r8.yyy, cb3_3.tint_symbol_4[25u].xyz, r7.xyz);
      r7 = vec4<f32>(v_330.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (7i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[26u].w == 0.0f)));
      let v_331 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[10u].xyz);
      r11 = vec4<f32>(v_331.xyz, r11.w);
      let v_332 = -(cb3_3.tint_symbol_4[10u].xyzx);
      let v_333 = (r2.xyz + v_332.xyz);
      r12 = vec4<f32>(v_333.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_4[18u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_4[26u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_4[26u].w);
      let v_334 = fma(cb3_3.tint_symbol_4[18u].xyz, r8.yyy, cb3_3.tint_symbol_4[10u].xyz);
      r12 = vec4<f32>(v_334.xyz, r12.w);
      let v_335 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_335.xyz, r12.w);
      let v_336 = bitcast<vec3<u32>>(r6.www);
      let v_337 = r11.xyz;
      let v_338 = select(r12.xyz, v_337, (v_336 != vec3<u32>()));
      r11 = vec4<f32>(v_338.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_339 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_339.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_340 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_340.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_4[10u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_4[18u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r6.w, cb3_3.tint_symbol_4[18u].w);
      r6.w = (r6.w / r8.y);
      let v_341 = -(cb3_3.tint_symbol_4[18u].xyzx);
      r8.y = dot(r11.xyz, v_341.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_4[34u].xxxx, cb3_3.tint_symbol_4[42u].xxxx).y, 0.0f, 1.0f);
      let v_342 = -(r5.xyzx);
      r9.z = dot(r11.xyz, v_342.xyz);
      r9.w = clamp(r9.zzzz.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r9.zzzz))).w + r9.w);
      let v_343 = abs(r9.zzzz);
      r9.z = fma(r0.z, r9.w, v_343.z);
      r8.y = (r8.y * r9.z);
      r9.z = (r6.w * r8.y);
      let v_344 = fma(r9.zzz, cb3_3.tint_symbol_4[26u].xyz, r10.xyz);
      r10 = vec4<f32>(v_344.xyz, r10.w);
      let v_345 = fma(r4.xyz, r1.www, r11.xyz);
      r4 = vec4<f32>(v_345.xyz, r4.w);
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_346 = (r1.www * r4.xyz);
      r4 = vec4<f32>(v_346.xyz, r4.w);
      let v_347 = dot(r4.xyz, r6.xyz);
      r1.w = clamp(vec4<f32>(v_347, v_347, v_347, v_347).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r6.x = (r1.w * r1.w);
      r6.x = (r6.x * r6.x);
      r1.w = (r1.w * r6.x);
      r1.w = fma(cb12_12.tint_symbol_5[0u].x, r1.w, r7.w);
      let v_348 = -(r5.xyzx);
      let v_349 = dot(r4.xyz, v_348.xyz);
      r4.x = clamp(vec4<f32>(v_349, v_349, v_349, v_349).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r1.w = (r1.w * r4.x);
      r1.w = (r8.y * r1.w);
      r1.w = (r6.w * r1.w);
      r1.w = (r8.z * r1.w);
      let v_350 = fma(r1.www, cb3_3.tint_symbol_4[26u].xyz, r7.xyz);
      r7 = vec4<f32>(v_350.xyz, r7.w);
    }
  }
  let v_351 = (r9.yyy * r10.xyz);
  o9 = vec4<f32>(v_351.xyz, o9.w);
  let v_352 = (r2.www * r7.xyz);
  o10 = vec4<f32>(v_352.xyz, o10.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_4[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_4[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_353 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.www, cb3_3.tint_symbol_4[48u].xyz);
  r4 = vec4<f32>(v_353.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_3[16u].zzzz)).w + 1.0f);
  let v_354 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.www, cb3_3.tint_symbol_4[46u].xyz);
  r6 = vec4<f32>(v_354.xyz, r6.w);
  let v_355 = (r6.xyz * cb2_2.tint_symbol_3[16u].zzz);
  r6 = vec4<f32>(v_355.xyz, r6.w);
  let v_356 = fma(r4.xyz, r1.www, r6.xyz);
  r4 = vec4<f32>(v_356.xyz, r4.w);
  let v_357 = (r0.xxx * r4.xyz);
  r4 = vec4<f32>(v_357.xyz, r4.w);
  let v_358 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.www, cb3_3.tint_symbol_4[44u].xyz);
  r6 = vec4<f32>(v_358.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_4[46u].w;
  r7.y = cb3_3.tint_symbol_4[47u].w;
  r7.z = cb3_3.tint_symbol_4[48u].w;
  let v_359 = dot(r7.xyz, r5.xyz);
  r0.w = clamp(vec4<f32>(v_359, v_359, v_359, v_359).w, 0.0f, 1.0f);
  let v_360 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.www, r6.xyz);
  r5 = vec4<f32>(v_360.xyz, r5.w);
  let v_361 = fma(r5.xyz, r4.www, r4.xyz);
  r4 = vec4<f32>(v_361.xyz, r4.w);
  o11 = ((r8.xxx * r4.xyz)).xyzx;
  x0[0u].x = dot(r3, cb0_0.tint_symbol_2[0u]);
  o0 = vec4<f32>();
  o1 = cb10_10.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 7i))];
  o2 = vec4<f32>(v2.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, v3.xy);
  o6.w = r5.w;
  o7.w = r4.w;
  o8.w = r0.x;
  o9.w = r0.z;
  o10.w = r9.x;
  o12 = r3;
  let v_362 = &(x0[0u]);
  *(v_362) = vec4<f32>((*(v_362)).x, vec3<f32>());
  o3 = r2.xyz.xyzx;
  o4 = r1.xyz.xyzx;
  o13[0u] = x0[0u].x;
  o13[1u] = x0[0u].y;
  o13[2u] = x0[0u].z;
  o13[3u] = x0[0u].w;
  v = vec4<f32>(o13[0u], o13[1u], o13[2u], o13[3u]);
}

struct tint_symbol_10 {
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
  tint_symbol_9 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>) -> tint_symbol_10 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_10(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, v);
}
