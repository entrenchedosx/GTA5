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
  } else {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r9.y = bitcast<f32>((bitcast<u32>(r9.y) | bitcast<u32>(r9.z)));
    if ((bitcast<u32>(r9.y) != 0u)) {
    } else {
      r9.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
      let v_97 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
      r11 = vec4<f32>(v_97.xyz, r11.w);
      let v_98 = -(cb3_3.tint_symbol_4[6u].xyzx);
      let v_99 = (r2.xyz + v_98.xyz);
      r12 = vec4<f32>(v_99.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[14u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[22u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[22u].w);
      let v_100 = fma(cb3_3.tint_symbol_4[14u].xyz, r9.zzz, cb3_3.tint_symbol_4[6u].xyz);
      r12 = vec4<f32>(v_100.xyz, r12.w);
      let v_101 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_101.xyz, r12.w);
      let v_102 = bitcast<vec3<u32>>(r9.yyy);
      let v_103 = r11.xyz;
      let v_104 = select(r12.xyz, v_103, (v_102 != vec3<u32>()));
      r9 = vec4<f32>(r9.x, v_104.xyz);
      r10.w = dot(r9.yzw, r9.yzw);
      let v_105 = (r9.yzw + vec3<f32>(0.00000099999999747524f));
      r9 = vec4<f32>(r9.x, v_105.xyz);
      r11.x = dot(r9.yzw, r9.yzw);
      r11.x = inverseSqrt(r11.x);
      let v_106 = (r9.yzw * r11.xxx);
      r9 = vec4<f32>(r9.x, v_106.xyz);
      r10.w = clamp(fma(-(r10.wwww), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r11.x = ((-(cb3_3.tint_symbol_4[14u].wwww)).x + 1.0f);
      r11.x = fma(r11.x, r10.w, cb3_3.tint_symbol_4[14u].w);
      r10.w = (r10.w / r11.x);
      let v_107 = -(cb3_3.tint_symbol_4[14u].xyzx);
      r11.x = dot(r9.yzw, v_107.xyz);
      r11.x = clamp(fma(r11.xxxx, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).x, 0.0f, 1.0f);
      r11.y = dot(r9.yzw, r5.xyz);
      r11.z = clamp(r11.yyyy.z, 0.0f, 1.0f);
      r11.z = ((-(abs(r11.yyyy))).z + r11.z);
      let v_108 = abs(r11.yyyy);
      r11.y = fma(r0.z, r11.z, v_108.y);
      r11.x = (r11.x * r11.y);
      r11.y = (r10.w * r11.x);
      let v_109 = fma(r11.yyy, cb3_3.tint_symbol_4[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_109.xyz, r10.w);
      let v_110 = fma(r4.xyz, r1.www, r9.yzw);
      r9 = vec4<f32>(r9.x, v_110.xyz);
      r11.y = dot(r9.yzw, r9.yzw);
      r11.y = inverseSqrt(r11.y);
      let v_111 = (r9.yzw * r11.yyy);
      r9 = vec4<f32>(r9.x, v_111.xyz);
      let v_112 = dot(r9.yzw, r6.xyz);
      r11.y = clamp(vec4<f32>(v_112, v_112, v_112, v_112).y, 0.0f, 1.0f);
      r11.y = ((-(r11.yyyy)).y + 1.0f);
      r11.z = (r11.y * r11.y);
      r11.z = (r11.z * r11.z);
      r11.y = (r11.z * r11.y);
      r11.y = fma(cb12_12.tint_symbol_5[0u].x, r11.y, r7.w);
      let v_113 = dot(r9.yzw, r5.xyz);
      r9.y = clamp(vec4<f32>(v_113, v_113, v_113, v_113).y, 0.0f, 1.0f);
      r9.y = log2(r9.y);
      r9.y = (r8.w * r9.y);
      r9.y = exp2(r9.y);
      r9.y = (r9.y * r11.y);
      r9.y = (r11.x * r9.y);
      r9.y = (r10.w * r9.y);
      r9.y = (r8.z * r9.y);
      let v_114 = fma(r9.yyy, cb3_3.tint_symbol_4[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_114.xyz, r7.w);
    }
  }
  r9.y = (r8.x * r8.x);
  r2.w = (r2.w * r2.w);
  o5.w = ((-(r8.xxxx)).w + 1.0f);
  let v_115 = (r10.xyz * r9.yyy);
  o7 = vec4<f32>(v_115.xyz, o7.w);
  let v_116 = (r7.xyz * r2.www);
  o8 = vec4<f32>(v_116.xyz, o8.w);
  if ((bitcast<u32>(r6.w) != 0u)) {
    r10 = vec4<f32>(vec3<f32>(), r10.w);
    r7 = vec4<f32>(vec3<f32>(), r7.w);
  } else {
    r7.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[19u].w == 0.0f)));
    let v_117 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[3u].xyz);
    r10 = vec4<f32>(v_117.xyz, r10.w);
    let v_118 = -(cb3_3.tint_symbol_4[3u].xyzx);
    let v_119 = (r2.xyz + v_118.xyz);
    r11 = vec4<f32>(v_119.xyz, r11.w);
    r7.y = dot(r11.xyz, cb3_3.tint_symbol_4[11u].xyz);
    r7.y = clamp(((r7.yyyy / cb3_3.tint_symbol_4[19u].wwww)).y, 0.0f, 1.0f);
    r7.y = (r7.y * cb3_3.tint_symbol_4[19u].w);
    let v_120 = fma(cb3_3.tint_symbol_4[11u].xyz, r7.yyy, cb3_3.tint_symbol_4[3u].xyz);
    r11 = vec4<f32>(v_120.xyz, r11.w);
    let v_121 = ((-(r2.xyzx)).xyz + r11.xyz);
    r11 = vec4<f32>(v_121.xyz, r11.w);
    let v_122 = bitcast<vec3<u32>>(r7.xxx);
    let v_123 = r10.xyz;
    let v_124 = select(r11.xyz, v_123, (v_122 != vec3<u32>()));
    r7 = vec4<f32>(v_124.xyz, r7.w);
    r9.z = dot(r7.xyz, r7.xyz);
    let v_125 = (r7.xyz + vec3<f32>(0.00000099999999747524f));
    r7 = vec4<f32>(v_125.xyz, r7.w);
    r9.w = dot(r7.xyz, r7.xyz);
    r9.w = inverseSqrt(r9.w);
    let v_126 = (r7.xyz * r9.www);
    r7 = vec4<f32>(v_126.xyz, r7.w);
    r9.z = clamp(fma(-(r9.zzzz), cb3_3.tint_symbol_4[3u].wwww, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
    r9.w = ((-(cb3_3.tint_symbol_4[11u].wwww)).w + 1.0f);
    r9.w = fma(r9.w, r9.z, cb3_3.tint_symbol_4[11u].w);
    r9.z = (r9.z / r9.w);
    let v_127 = -(cb3_3.tint_symbol_4[11u].xyzx);
    r9.w = dot(r7.xyz, v_127.xyz);
    r9.w = clamp(fma(r9.wwww, cb3_3.tint_symbol_4[27u].xxxx, cb3_3.tint_symbol_4[35u].xxxx).w, 0.0f, 1.0f);
    let v_128 = -(r5.xyzx);
    r10.x = dot(r7.xyz, v_128.xyz);
    r10.y = clamp(r10.xxxx.y, 0.0f, 1.0f);
    r10.y = ((-(abs(r10.xxxx))).y + r10.y);
    let v_129 = abs(r10.xxxx);
    r10.x = fma(r0.z, r10.y, v_129.x);
    r9.w = (r9.w * r10.x);
    r10.x = (r9.z * r9.w);
    let v_130 = (r10.xxx * cb3_3.tint_symbol_4[19u].xyz);
    r10 = vec4<f32>(v_130.xyz, r10.w);
    let v_131 = fma(r4.xyz, r1.www, r7.xyz);
    r7 = vec4<f32>(v_131.xyz, r7.w);
    r10.w = dot(r7.xyz, r7.xyz);
    r10.w = inverseSqrt(r10.w);
    let v_132 = (r7.xyz * r10.www);
    r7 = vec4<f32>(v_132.xyz, r7.w);
    let v_133 = dot(r7.xyz, r6.xyz);
    r10.w = clamp(vec4<f32>(v_133, v_133, v_133, v_133).w, 0.0f, 1.0f);
    r10.w = ((-(r10.wwww)).w + 1.0f);
    r11.x = (r10.w * r10.w);
    r11.x = (r11.x * r11.x);
    r10.w = (r10.w * r11.x);
    r10.w = fma(cb12_12.tint_symbol_5[0u].x, r10.w, r7.w);
    let v_134 = -(r5.xyzx);
    let v_135 = dot(r7.xyz, v_134.xyz);
    r7.x = clamp(vec4<f32>(v_135, v_135, v_135, v_135).x, 0.0f, 1.0f);
    r7.x = log2(r7.x);
    r7.x = (r7.x * r8.w);
    r7.x = exp2(r7.x);
    r7.x = (r7.x * r10.w);
    r7.x = (r9.w * r7.x);
    r7.x = (r9.z * r7.x);
    r7.x = (r8.z * r7.x);
    let v_136 = (r7.xxx * cb3_3.tint_symbol_4[19u].xyz);
    r7 = vec4<f32>(v_136.xyz, r7.w);
  }
  if ((bitcast<u32>(r8.y) != 0u)) {
    r9.z = bitcast<f32>(select(0u, 4294967295u, (1i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r8.y = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    let v_137 = bitcast<u32>(r9.z);
    let v_138 = r8.y;
    r6.w = select(r6.w, v_138, (v_137 != 0u));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r8.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[20u].w == 0.0f)));
      let v_139 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[4u].xyz);
      r11 = vec4<f32>(v_139.xyz, r11.w);
      let v_140 = -(cb3_3.tint_symbol_4[4u].xyzx);
      let v_141 = (r2.xyz + v_140.xyz);
      r12 = vec4<f32>(v_141.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[12u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[20u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[20u].w);
      let v_142 = fma(cb3_3.tint_symbol_4[12u].xyz, r9.zzz, cb3_3.tint_symbol_4[4u].xyz);
      r12 = vec4<f32>(v_142.xyz, r12.w);
      let v_143 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_143.xyz, r12.w);
      let v_144 = bitcast<vec3<u32>>(r8.yyy);
      let v_145 = r11.xyz;
      let v_146 = select(r12.xyz, v_145, (v_144 != vec3<u32>()));
      r11 = vec4<f32>(v_146.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_147 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_147.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_148 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_148.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[4u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[12u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[12u].w);
      r8.y = (r8.y / r9.z);
      let v_149 = -(cb3_3.tint_symbol_4[12u].xyzx);
      r9.z = dot(r11.xyz, v_149.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[28u].xxxx, cb3_3.tint_symbol_4[36u].xxxx).z, 0.0f, 1.0f);
      let v_150 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_150.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_151 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_151.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_152 = fma(r9.www, cb3_3.tint_symbol_4[20u].xyz, r10.xyz);
      r10 = vec4<f32>(v_152.xyz, r10.w);
      let v_153 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_153.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_154 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_154.xyz, r11.w);
      let v_155 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_155, v_155, v_155, v_155).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_156 = -(r5.xyzx);
      let v_157 = dot(r11.xyz, v_156.xyz);
      r10.w = clamp(vec4<f32>(v_157, v_157, v_157, v_157).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_158 = fma(r8.yyy, cb3_3.tint_symbol_4[20u].xyz, r7.xyz);
      r7 = vec4<f32>(v_158.xyz, r7.w);
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
      let v_159 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[5u].xyz);
      r11 = vec4<f32>(v_159.xyz, r11.w);
      let v_160 = -(cb3_3.tint_symbol_4[5u].xyzx);
      let v_161 = (r2.xyz + v_160.xyz);
      r12 = vec4<f32>(v_161.xyz, r12.w);
      r9.z = dot(r12.xyz, cb3_3.tint_symbol_4[13u].xyz);
      r9.z = clamp(((r9.zzzz / cb3_3.tint_symbol_4[21u].wwww)).z, 0.0f, 1.0f);
      r9.z = (r9.z * cb3_3.tint_symbol_4[21u].w);
      let v_162 = fma(cb3_3.tint_symbol_4[13u].xyz, r9.zzz, cb3_3.tint_symbol_4[5u].xyz);
      r12 = vec4<f32>(v_162.xyz, r12.w);
      let v_163 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_163.xyz, r12.w);
      let v_164 = bitcast<vec3<u32>>(r8.yyy);
      let v_165 = r11.xyz;
      let v_166 = select(r12.xyz, v_165, (v_164 != vec3<u32>()));
      r11 = vec4<f32>(v_166.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      let v_167 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_167.xyz, r11.w);
      r9.z = dot(r11.xyz, r11.xyz);
      r9.z = inverseSqrt(r9.z);
      let v_168 = (r9.zzz * r11.xyz);
      r11 = vec4<f32>(v_168.xyz, r11.w);
      r8.y = clamp(fma(-(r8.yyyy), cb3_3.tint_symbol_4[5u].wwww, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
      r9.z = ((-(cb3_3.tint_symbol_4[13u].wwww)).z + 1.0f);
      r9.z = fma(r9.z, r8.y, cb3_3.tint_symbol_4[13u].w);
      r8.y = (r8.y / r9.z);
      let v_169 = -(cb3_3.tint_symbol_4[13u].xyzx);
      r9.z = dot(r11.xyz, v_169.xyz);
      r9.z = clamp(fma(r9.zzzz, cb3_3.tint_symbol_4[29u].xxxx, cb3_3.tint_symbol_4[37u].xxxx).z, 0.0f, 1.0f);
      let v_170 = -(r5.xyzx);
      r9.w = dot(r11.xyz, v_170.xyz);
      r10.w = clamp(r9.wwww.w, 0.0f, 1.0f);
      r10.w = ((-(abs(r9.wwww))).w + r10.w);
      let v_171 = abs(r9.wwww);
      r9.w = fma(r0.z, r10.w, v_171.w);
      r9.z = (r9.z * r9.w);
      r9.w = (r8.y * r9.z);
      let v_172 = fma(r9.www, cb3_3.tint_symbol_4[21u].xyz, r10.xyz);
      r10 = vec4<f32>(v_172.xyz, r10.w);
      let v_173 = fma(r4.xyz, r1.www, r11.xyz);
      r11 = vec4<f32>(v_173.xyz, r11.w);
      r9.w = dot(r11.xyz, r11.xyz);
      r9.w = inverseSqrt(r9.w);
      let v_174 = (r9.www * r11.xyz);
      r11 = vec4<f32>(v_174.xyz, r11.w);
      let v_175 = dot(r11.xyz, r6.xyz);
      r9.w = clamp(vec4<f32>(v_175, v_175, v_175, v_175).w, 0.0f, 1.0f);
      r9.w = ((-(r9.wwww)).w + 1.0f);
      r10.w = (r9.w * r9.w);
      r10.w = (r10.w * r10.w);
      r9.w = (r9.w * r10.w);
      r9.w = fma(cb12_12.tint_symbol_5[0u].x, r9.w, r7.w);
      let v_176 = -(r5.xyzx);
      let v_177 = dot(r11.xyz, v_176.xyz);
      r10.w = clamp(vec4<f32>(v_177, v_177, v_177, v_177).w, 0.0f, 1.0f);
      r10.w = log2(r10.w);
      r10.w = (r8.w * r10.w);
      r10.w = exp2(r10.w);
      r9.w = (r9.w * r10.w);
      r9.z = (r9.z * r9.w);
      r8.y = (r8.y * r9.z);
      r8.y = (r8.z * r8.y);
      let v_178 = fma(r8.yyy, cb3_3.tint_symbol_4[21u].xyz, r7.xyz);
      r7 = vec4<f32>(v_178.xyz, r7.w);
    }
  }
  if ((bitcast<u32>(r6.w) != 0u)) {
  } else {
    r8.y = bitcast<f32>(select(0u, 4294967295u, (3i >= bitcast<i32>(cb3_3.tint_symbol_4[2u].x))));
    r6.w = bitcast<f32>((bitcast<u32>(r6.w) | bitcast<u32>(r8.y)));
    if ((bitcast<u32>(r6.w) != 0u)) {
    } else {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[22u].w == 0.0f)));
      let v_179 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol_4[6u].xyz);
      r11 = vec4<f32>(v_179.xyz, r11.w);
      let v_180 = -(cb3_3.tint_symbol_4[6u].xyzx);
      let v_181 = (r2.xyz + v_180.xyz);
      r12 = vec4<f32>(v_181.xyz, r12.w);
      r8.y = dot(r12.xyz, cb3_3.tint_symbol_4[14u].xyz);
      r8.y = clamp(((r8.yyyy / cb3_3.tint_symbol_4[22u].wwww)).y, 0.0f, 1.0f);
      r8.y = (r8.y * cb3_3.tint_symbol_4[22u].w);
      let v_182 = fma(cb3_3.tint_symbol_4[14u].xyz, r8.yyy, cb3_3.tint_symbol_4[6u].xyz);
      r12 = vec4<f32>(v_182.xyz, r12.w);
      let v_183 = ((-(r2.xyzx)).xyz + r12.xyz);
      r12 = vec4<f32>(v_183.xyz, r12.w);
      let v_184 = bitcast<vec3<u32>>(r6.www);
      let v_185 = r11.xyz;
      let v_186 = select(r12.xyz, v_185, (v_184 != vec3<u32>()));
      r11 = vec4<f32>(v_186.xyz, r11.w);
      r6.w = dot(r11.xyz, r11.xyz);
      let v_187 = (r11.xyz + vec3<f32>(0.00000099999999747524f));
      r11 = vec4<f32>(v_187.xyz, r11.w);
      r8.y = dot(r11.xyz, r11.xyz);
      r8.y = inverseSqrt(r8.y);
      let v_188 = (r8.yyy * r11.xyz);
      r11 = vec4<f32>(v_188.xyz, r11.w);
      r6.w = clamp(fma(-(r6.wwww), cb3_3.tint_symbol_4[6u].wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
      r8.y = ((-(cb3_3.tint_symbol_4[14u].wwww)).y + 1.0f);
      r8.y = fma(r8.y, r6.w, cb3_3.tint_symbol_4[14u].w);
      r6.w = (r6.w / r8.y);
      let v_189 = -(cb3_3.tint_symbol_4[14u].xyzx);
      r8.y = dot(r11.xyz, v_189.xyz);
      r8.y = clamp(fma(r8.yyyy, cb3_3.tint_symbol_4[30u].xxxx, cb3_3.tint_symbol_4[38u].xxxx).y, 0.0f, 1.0f);
      let v_190 = -(r5.xyzx);
      r9.z = dot(r11.xyz, v_190.xyz);
      r9.w = clamp(r9.zzzz.w, 0.0f, 1.0f);
      r9.w = ((-(abs(r9.zzzz))).w + r9.w);
      let v_191 = abs(r9.zzzz);
      r9.z = fma(r0.z, r9.w, v_191.z);
      r8.y = (r8.y * r9.z);
      r9.z = (r6.w * r8.y);
      let v_192 = fma(r9.zzz, cb3_3.tint_symbol_4[22u].xyz, r10.xyz);
      r10 = vec4<f32>(v_192.xyz, r10.w);
      let v_193 = fma(r4.xyz, r1.www, r11.xyz);
      r4 = vec4<f32>(v_193.xyz, r4.w);
      r1.w = dot(r4.xyz, r4.xyz);
      r1.w = inverseSqrt(r1.w);
      let v_194 = (r1.www * r4.xyz);
      r4 = vec4<f32>(v_194.xyz, r4.w);
      let v_195 = dot(r4.xyz, r6.xyz);
      r1.w = clamp(vec4<f32>(v_195, v_195, v_195, v_195).w, 0.0f, 1.0f);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      r6.x = (r1.w * r1.w);
      r6.x = (r6.x * r6.x);
      r1.w = (r1.w * r6.x);
      r1.w = fma(cb12_12.tint_symbol_5[0u].x, r1.w, r7.w);
      let v_196 = -(r5.xyzx);
      let v_197 = dot(r4.xyz, v_196.xyz);
      r4.x = clamp(vec4<f32>(v_197, v_197, v_197, v_197).x, 0.0f, 1.0f);
      r4.x = log2(r4.x);
      r4.x = (r4.x * r8.w);
      r4.x = exp2(r4.x);
      r1.w = (r1.w * r4.x);
      r1.w = (r8.y * r1.w);
      r1.w = (r6.w * r1.w);
      r1.w = (r8.z * r1.w);
      let v_198 = fma(r1.www, cb3_3.tint_symbol_4[22u].xyz, r7.xyz);
      r7 = vec4<f32>(v_198.xyz, r7.w);
    }
  }
  let v_199 = (r9.yyy * r10.xyz);
  o9 = vec4<f32>(v_199.xyz, o9.w);
  let v_200 = (r2.www * r7.xyz);
  o10 = vec4<f32>(v_200.xyz, o10.w);
  r0.w = fma(r1.z, r0.w, cb3_3.tint_symbol_4[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_4[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_201 = fma(cb3_3.tint_symbol_4[47u].xyz, r0.www, cb3_3.tint_symbol_4[48u].xyz);
  r4 = vec4<f32>(v_201.xyz, r4.w);
  r1.w = ((-(cb2_2.tint_symbol_3[16u].zzzz)).w + 1.0f);
  let v_202 = fma(cb3_3.tint_symbol_4[45u].xyz, r0.www, cb3_3.tint_symbol_4[46u].xyz);
  r6 = vec4<f32>(v_202.xyz, r6.w);
  let v_203 = (r6.xyz * cb2_2.tint_symbol_3[16u].zzz);
  r6 = vec4<f32>(v_203.xyz, r6.w);
  let v_204 = fma(r4.xyz, r1.www, r6.xyz);
  r4 = vec4<f32>(v_204.xyz, r4.w);
  let v_205 = (r0.xxx * r4.xyz);
  r4 = vec4<f32>(v_205.xyz, r4.w);
  let v_206 = fma(cb3_3.tint_symbol_4[43u].xyz, r0.www, cb3_3.tint_symbol_4[44u].xyz);
  r6 = vec4<f32>(v_206.xyz, r6.w);
  r7.x = cb3_3.tint_symbol_4[46u].w;
  r7.y = cb3_3.tint_symbol_4[47u].w;
  r7.z = cb3_3.tint_symbol_4[48u].w;
  let v_207 = dot(r7.xyz, r5.xyz);
  r0.w = clamp(vec4<f32>(v_207, v_207, v_207, v_207).w, 0.0f, 1.0f);
  let v_208 = fma(cb3_3.tint_symbol_4[49u].xyz, r0.www, r6.xyz);
  r5 = vec4<f32>(v_208.xyz, r5.w);
  let v_209 = fma(r5.xyz, r4.www, r4.xyz);
  r4 = vec4<f32>(v_209.xyz, r4.w);
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
  let v_210 = &(x0[0u]);
  *(v_210) = vec4<f32>((*(v_210)).x, vec3<f32>());
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
